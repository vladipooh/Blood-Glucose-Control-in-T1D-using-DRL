import logging
import time
import os

import gym
pathos = True
try:
    from pathos.multiprocessing import ProcessPool as Pool
except ImportError:
    print('You could install pathos to enable parallel simulation.')
    pathos = False

logger = logging.getLogger(__name__)


class SimObj(object):
    def __init__(self,
                 env,
                 controller,
                 sim_time,
                 animate=True,
                 path=None):
        self.env = env
        self.controller = controller
        self.sim_time = sim_time
        self.animate = animate
        self._ctrller_kwargs = None
        self.path = path

    def simulate(self):
        if isinstance(self.env,gym.Env):
           obs = self.env.reset()
           reward=0
           done= False
           info = {'info':0}
        else:  
           obs, reward, done, info = self.env.reset()
        tic = time.time()
        steps=0
        done=False
        rewards=0
        while self.env.time < self.env.scenario.start_time + self.sim_time and not done:
            if self.animate:
                self.env.render()
            print("reward=", reward,"step=",steps)
            action = self.controller.policy(obs, reward, done, **info)
            obs, reward, done, info = self.env.step(action)
            steps = steps +1
            rewards +=reward
        toc = time.time()
        logger.info('Simulation took {} seconds.'.format(toc - tic))
        print('el=',steps,'rewards=',rewards,'mean reward=',(rewards/steps))
        return steps,rewards
    def results(self):
        return self.env.show_history()

    def save_results(self):
        df = self.results()
        if not os.path.isdir(self.path):
            os.makedirs(self.path)
        filename = os.path.join(self.path, str(self.env.patient.name) + '.csv')
        df.to_csv(filename)

    def reset(self):
        self.env.reset()
        self.controller.reset()


def sim(sim_object):
    print("Process ID: {}".format(os.getpid()))
    print('Simulation starts ...')
    sim_object.simulate()
    sim_object.save_results()
    print('Simulation Completed!')
    return sim_object.results()


def batch_sim(sim_instances, parallel=False):
    tic = time.time()
    if parallel and pathos:
        with Pool() as p:
            results = p.map(sim, sim_instances)
    else:
        if parallel and not pathos:
            print('Simulation is using single process even though parallel=True.')
        results = [sim(s) for s in sim_instances]
    toc = time.time()
    print('Simulation took {} sec.'.format(toc - tic))
    return results
