??"
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
A
BroadcastArgs
s0"T
s1"T
r0"T"
Ttype0:
2	
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
@
Softplus
features"T
activations"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
j
global_stepVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameglobal_step
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_output_shapes
: *
dtype0	
?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*e
shared_nameVTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/kernel
?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/kernel/Read/ReadVariableOpReadVariableOpTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/kernel*
_output_shapes
:	?*
dtype0
?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*c
shared_nameTRActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/bias
?
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/bias/Read/ReadVariableOpReadVariableOpRActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/bias*
_output_shapes	
:?*
dtype0
?
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*g
shared_nameXVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/kernel
?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/kernel/Read/ReadVariableOpReadVariableOpVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/kernel*
_output_shapes
:	?d*
dtype0
?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*e
shared_nameVTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/bias
?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/bias/Read/ReadVariableOpReadVariableOpTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/bias*
_output_shapes
:d*
dtype0
?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*h
shared_nameYWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/kernel
?
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/kernel*
_output_shapes
:	d?*
dtype0
?
aActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*r
shared_namecaActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/recurrent_kernel
?
uActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpaActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*f
shared_nameWUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/bias
?
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/bias/Read/ReadVariableOpReadVariableOpUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/bias*
_output_shapes	
:?*
dtype0
?
YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*j
shared_name[YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/kernel
?
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/kernel/Read/ReadVariableOpReadVariableOpYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/kernel* 
_output_shapes
:
??*
dtype0
?
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*t
shared_nameecActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/recurrent_kernel
?
wActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOpcActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*h
shared_nameYWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/bias
?
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/bias/Read/ReadVariableOpReadVariableOpWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/bias*
_output_shapes	
:?*
dtype0
?
CActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*T
shared_nameECActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/bias
?
WActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/bias/Read/ReadVariableOpReadVariableOpCActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/bias*
_output_shapes
:*
dtype0
?
QActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*b
shared_nameSQActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/kernel
?
eActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/kernel/Read/ReadVariableOpReadVariableOpQActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/kernel*
_output_shapes
:	?*
dtype0
?
OActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*`
shared_nameQOActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/bias
?
cActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/bias/Read/ReadVariableOpReadVariableOpOActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/bias*
_output_shapes
:*
dtype0
?
>ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*O
shared_name@>ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/kernel
?
RValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/kernel/Read/ReadVariableOpReadVariableOp>ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/kernel*
_output_shapes
:	?*
dtype0
?
<ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*M
shared_name><ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/bias
?
PValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/bias/Read/ReadVariableOpReadVariableOp<ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/bias*
_output_shapes	
:?*
dtype0
?
>ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*O
shared_name@>ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_3/kernel
?
RValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_3/kernel/Read/ReadVariableOpReadVariableOp>ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_3/kernel*
_output_shapes
:	?d*
dtype0
?
<ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*M
shared_name><ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_3/bias
?
PValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_3/bias/Read/ReadVariableOpReadVariableOp<ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_3/bias*
_output_shapes
:d*
dtype0
?
CValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*T
shared_nameECValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/kernel
?
WValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/kernel/Read/ReadVariableOpReadVariableOpCValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/kernel*
_output_shapes
:	d?*
dtype0
?
MValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*^
shared_nameOMValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/recurrent_kernel
?
aValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOpMValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
AValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*R
shared_nameCAValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/bias
?
UValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/bias/Read/ReadVariableOpReadVariableOpAValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/bias*
_output_shapes	
:?*
dtype0
?
CValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*T
shared_nameECValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/kernel
?
WValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/kernel/Read/ReadVariableOpReadVariableOpCValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/kernel* 
_output_shapes
:
??*
dtype0
?
MValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*^
shared_nameOMValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/recurrent_kernel
?
aValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOpMValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
AValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*R
shared_nameCAValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/bias
?
UValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/bias/Read/ReadVariableOpReadVariableOpAValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/bias*
_output_shapes	
:?*
dtype0
?
ValueRnnNetwork/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*/
shared_name ValueRnnNetwork/dense_4/kernel
?
2ValueRnnNetwork/dense_4/kernel/Read/ReadVariableOpReadVariableOpValueRnnNetwork/dense_4/kernel*
_output_shapes
:	?*
dtype0
?
ValueRnnNetwork/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameValueRnnNetwork/dense_4/bias
?
0ValueRnnNetwork/dense_4/bias/Read/ReadVariableOpReadVariableOpValueRnnNetwork/dense_4/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?j
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?j
value?iB?i B?i
k
policy_state_spec

train_step
metadata
model_variables
_all_assets

signatures

actor_network_state
FD
VARIABLE_VALUEglobal_step%train_step/.ATTRIBUTES/VARIABLE_VALUE
 
?
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
 24

!0
"1
#2
 

$0
%1
??
VARIABLE_VALUETActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/kernel,model_variables/0/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/bias,model_variables/1/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/kernel,model_variables/2/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUETActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/bias,model_variables/3/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/kernel,model_variables/4/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEaActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/recurrent_kernel,model_variables/5/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/bias,model_variables/6/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/kernel,model_variables/7/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/recurrent_kernel,model_variables/8/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/bias,model_variables/9/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUECActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/bias-model_variables/10/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEQActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/kernel-model_variables/11/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEOActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/bias-model_variables/12/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUE>ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/kernel-model_variables/13/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE<ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/bias-model_variables/14/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUE>ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_3/kernel-model_variables/15/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE<ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_3/bias-model_variables/16/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUECValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/kernel-model_variables/17/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEMValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/recurrent_kernel-model_variables/18/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/bias-model_variables/19/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUECValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/kernel-model_variables/20/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEMValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/recurrent_kernel-model_variables/21/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/bias-model_variables/22/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEValueRnnNetwork/dense_4/kernel-model_variables/23/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEValueRnnNetwork/dense_4/bias-model_variables/24/.ATTRIBUTES/VARIABLE_VALUE

&ref
&1

'ref
'1

(ref
(1
 
 

actor_network_state

	&state
&1
W
)_actor_network
&_policy_state_spec
*_policy_step_spec
+_value_network
?
_state_spec
,_lstm_encoder
-_projection_networks
.	variables
/regularization_losses
0trainable_variables
1	keras_api

	&state
&1
?
2_state_spec
3_lstm_encoder
4_postprocessing_layers
5	variables
6regularization_losses
7trainable_variables
8	keras_api
?
_state_spec
9_input_encoder
:_lstm_network
;_output_encoder
<	variables
=regularization_losses
>trainable_variables
?	keras_api
z
@_means_projection_layer
	A_bias
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
^
0
	1

2
3
4
5
6
7
8
9
10
11
12
 
^
0
	1

2
3
4
5
6
7
8
9
10
11
12
?
.	variables
Flayer_metrics
Glayer_regularization_losses
/regularization_losses
0trainable_variables
Hnon_trainable_variables

Ilayers
Jmetrics

K0
L1
?
2_state_spec
M_input_encoder
N_lstm_network
O_output_encoder
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
h

kernel
 bias
T	variables
Uregularization_losses
Vtrainable_variables
W	keras_api
V
0
1
2
3
4
5
6
7
8
9
10
 11
 
V
0
1
2
3
4
5
6
7
8
9
10
 11
?
5	variables
Xlayer_metrics
Ylayer_regularization_losses
6regularization_losses
7trainable_variables
Znon_trainable_variables

[layers
\metrics
n
]_postprocessing_layers
^	variables
_regularization_losses
`trainable_variables
a	keras_api
\
bcell
c	variables
dregularization_losses
etrainable_variables
f	keras_api
 
F
0
	1

2
3
4
5
6
7
8
9
 
F
0
	1

2
3
4
5
6
7
8
9
?
<	variables
glayer_metrics
hlayer_regularization_losses
=regularization_losses
>trainable_variables
inon_trainable_variables

jlayers
kmetrics
h

kernel
bias
l	variables
mregularization_losses
ntrainable_variables
o	keras_api
\
bias
p	variables
qregularization_losses
rtrainable_variables
s	keras_api

0
1
2
 

0
1
2
?
B	variables
tlayer_metrics
ulayer_regularization_losses
Cregularization_losses
Dtrainable_variables
vnon_trainable_variables

wlayers
xmetrics
 
 
 

,0
-1
 
 
 
n
y_postprocessing_layers
z	variables
{regularization_losses
|trainable_variables
}	keras_api
_
~cell
	variables
?regularization_losses
?trainable_variables
?	keras_api
 
F
0
1
2
3
4
5
6
7
8
9
 
F
0
1
2
3
4
5
6
7
8
9
?
P	variables
?layer_metrics
 ?layer_regularization_losses
Qregularization_losses
Rtrainable_variables
?non_trainable_variables
?layers
?metrics

0
 1
 

0
 1
?
T	variables
?layer_metrics
 ?layer_regularization_losses
Uregularization_losses
Vtrainable_variables
?non_trainable_variables
?layers
?metrics
 
 
 

30
41
 

?0
?1
?2

0
	1

2
3
 

0
	1

2
3
?
^	variables
?layer_metrics
 ?layer_regularization_losses
_regularization_losses
`trainable_variables
?non_trainable_variables
?layers
?metrics
b

?cells
?	variables
?regularization_losses
?trainable_variables
?	keras_api
*
0
1
2
3
4
5
 
*
0
1
2
3
4
5
?
c	variables
?layer_metrics
 ?layer_regularization_losses
dregularization_losses
etrainable_variables
?non_trainable_variables
?layers
?metrics
 
 
 

90
:1
 

0
1
 

0
1
?
l	variables
?layer_metrics
 ?layer_regularization_losses
mregularization_losses
ntrainable_variables
?non_trainable_variables
?layers
?metrics

0
 

0
?
p	variables
?layer_metrics
 ?layer_regularization_losses
qregularization_losses
rtrainable_variables
?non_trainable_variables
?layers
?metrics
 
 
 

@0
A1
 

?0
?1
?2

0
1
2
3
 

0
1
2
3
?
z	variables
?layer_metrics
 ?layer_regularization_losses
{regularization_losses
|trainable_variables
?non_trainable_variables
?layers
?metrics
b

?cells
?	variables
?regularization_losses
?trainable_variables
?	keras_api
*
0
1
2
3
4
5
 
*
0
1
2
3
4
5
?
	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
 
 
 

M0
N1
 
 
 
 
 
 
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

kernel
	bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l


kernel
bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
 
 
 

?0
?1
?2
 

?0
?1
*
0
1
2
3
4
5
 
*
0
1
2
3
4
5
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
 
 
 

b0
 
 
 
 
 
 
 
 
 
 
 
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

kernel
bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

kernel
bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
 
 
 

?0
?1
?2
 

?0
?1
*
0
1
2
3
4
5
 
*
0
1
2
3
4
5
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
 
 
 

~0
 
 
 
 
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics

0
	1
 

0
	1
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics


0
1
 


0
1
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
?

kernel
recurrent_kernel
bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?

kernel
recurrent_kernel
bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
 
 
 

?0
?1
 
 
 
 
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics

0
1
 

0
1
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics

0
1
 

0
1
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
?

kernel
recurrent_kernel
bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?

kernel
recurrent_kernel
bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

0
1
2
 

0
1
2
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics

0
1
2
 

0
1
2
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

0
1
2
 

0
1
2
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics

0
1
2
 

0
1
2
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
l
action_0/discountPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
w
action_0/observationPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
j
action_0/rewardPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
m
action_0/step_typePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
 action_1/actor_network_state/0/0Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
 action_1/actor_network_state/0/1Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
 action_1/actor_network_state/1/0Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
 action_1/actor_network_state/1/1Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallaction_0/discountaction_0/observationaction_0/rewardaction_0/step_type action_1/actor_network_state/0/0 action_1/actor_network_state/0/1 action_1/actor_network_state/1/0 action_1/actor_network_state/1/1TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/kernelRActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/biasVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/kernelTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/biasWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/kernelaActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/recurrent_kernelUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/biasYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/kernelcActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/recurrent_kernelWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/biasQActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/kernelOActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/biasCActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/bias* 
Tin
2*
Tout	
2*
_collective_manager_ids
 *w
_output_shapese
c:?????????:??????????:??????????:??????????:??????????*/
_read_only_resource_inputs
	
*4
config_proto$"

CPU

GPU2	 *0,1J 8? *-
f(R&
$__inference_signature_wrapper_300449
]
get_initial_state_batch_sizePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
PartitionedCallPartitionedCallget_initial_state_batch_size*
Tin
2*
Tout
2*
_collective_manager_ids
 *d
_output_shapesR
P:??????????:??????????:??????????:??????????* 
_read_only_resource_inputs
 *4
config_proto$"

CPU

GPU2	 *0,1J 8? *-
f(R&
$__inference_signature_wrapper_300462
?
PartitionedCall_1PartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *4
config_proto$"

CPU

GPU2	 *0,1J 8? *-
f(R&
$__inference_signature_wrapper_300474
?
StatefulPartitionedCall_1StatefulPartitionedCallglobal_step*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *4
config_proto$"

CPU

GPU2	 *0,1J 8? *-
f(R&
$__inference_signature_wrapper_300470
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameglobal_step/Read/ReadVariableOphActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/kernel/Read/ReadVariableOpfActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/bias/Read/ReadVariableOpjActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/kernel/Read/ReadVariableOphActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/bias/Read/ReadVariableOpkActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/kernel/Read/ReadVariableOpuActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/recurrent_kernel/Read/ReadVariableOpiActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/bias/Read/ReadVariableOpmActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/kernel/Read/ReadVariableOpwActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpkActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/bias/Read/ReadVariableOpWActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/bias/Read/ReadVariableOpeActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/kernel/Read/ReadVariableOpcActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/bias/Read/ReadVariableOpRValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/kernel/Read/ReadVariableOpPValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/bias/Read/ReadVariableOpRValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_3/kernel/Read/ReadVariableOpPValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_3/bias/Read/ReadVariableOpWValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/kernel/Read/ReadVariableOpaValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/recurrent_kernel/Read/ReadVariableOpUValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/bias/Read/ReadVariableOpWValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/kernel/Read/ReadVariableOpaValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/recurrent_kernel/Read/ReadVariableOpUValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/bias/Read/ReadVariableOp2ValueRnnNetwork/dense_4/kernel/Read/ReadVariableOp0ValueRnnNetwork/dense_4/bias/Read/ReadVariableOpConst*'
Tin 
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *4
config_proto$"

CPU

GPU2	 *0,1J 8? *(
f#R!
__inference__traced_save_300592
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameglobal_stepTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/kernelRActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/biasVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/kernelTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/biasWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/kernelaActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/recurrent_kernelUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/biasYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/kernelcActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/recurrent_kernelWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/biasCActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/biasQActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/kernelOActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/bias>ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/kernel<ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/bias>ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_3/kernel<ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_3/biasCValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/kernelMValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/recurrent_kernelAValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/biasCValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/kernelMValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/recurrent_kernelAValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/biasValueRnnNetwork/dense_4/kernelValueRnnNetwork/dense_4/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *4
config_proto$"

CPU

GPU2	 *0,1J 8? *+
f&R$
"__inference__traced_restore_300680??
?	
z
*__inference_function_with_signature_116529

batch_size
identity

identity_1

identity_2

identity_3?
PartitionedCallPartitionedCall
batch_size*
Tin
2*
Tout
2*
_collective_manager_ids
 *d
_output_shapesR
P:??????????:??????????:??????????:??????????* 
_read_only_resource_inputs
 *4
config_proto$"

CPU

GPU2	 *0,1J 8? *-
f(R&
$__inference_get_initial_state_1165202
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identityq

Identity_1IdentityPartitionedCall:output:1*
T0*(
_output_shapes
:??????????2

Identity_1q

Identity_2IdentityPartitionedCall:output:2*
T0*(
_output_shapes
:??????????2

Identity_2q

Identity_3IdentityPartitionedCall:output:3*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
?
?
*__inference_function_with_signature_116441
	step_type

reward
discount
observation
actor_network_state_0_0
actor_network_state_0_1
actor_network_state_1_0
actor_network_state_1_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11
identity

identity_1

identity_2

identity_3

identity_4??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationactor_network_state_0_0actor_network_state_0_1actor_network_state_1_0actor_network_state_1_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11* 
Tin
2*
Tout	
2*
_collective_manager_ids
 *w
_output_shapese
c:?????????:??????????:??????????:??????????:??????????*/
_read_only_resource_inputs
	
*4
config_proto$"

CPU

GPU2	 *0,1J 8? *"
fR
__inference_action_1164042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_3?

Identity_4Identity StatefulPartitionedCall:output:4^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:??????????:??????????:??????????:??????????:::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:?????????
%
_user_specified_name0/step_type:MI
#
_output_shapes
:?????????
"
_user_specified_name
0/reward:OK
#
_output_shapes
:?????????
$
_user_specified_name
0/discount:VR
'
_output_shapes
:?????????
'
_user_specified_name0/observation:c_
(
_output_shapes
:??????????
3
_user_specified_name1/actor_network_state/0/0:c_
(
_output_shapes
:??????????
3
_user_specified_name1/actor_network_state/0/1:c_
(
_output_shapes
:??????????
3
_user_specified_name1/actor_network_state/1/0:c_
(
_output_shapes
:??????????
3
_user_specified_name1/actor_network_state/1/1
??
?
__inference_action_117217
	step_type

reward
discount
observation
actor_network_state_0_0
actor_network_state_0_1
actor_network_state_1_0
actor_network_state_1_1p
lactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_matmul_readvariableop_resourceq
mactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasadd_readvariableop_resourcer
nactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_matmul_readvariableop_resources
oactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_matmul_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_matmul_1_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_biasadd_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_matmul_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_matmul_1_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_biasadd_readvariableop_resourcem
iactordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resourcen
jactordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resourceb
^actordistributionrnnnetwork_normalprojectionnetwork_bias_layer_biasadd_readvariableop_resource
identity

identity_1

identity_2

identity_3

identity_4??dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp?eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp?yActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOp?xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp?zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp?{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp?zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp?|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp?UActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp?aActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp?`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOpF
ShapeShapediscount*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice^
packedPackstrided_slice:output:0*
N*
T0*
_output_shapes
:2
packedm
shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2packed:output:0shape_as_tensor:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constp
zerosFillconcat:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosq
shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2packed:output:0shape_as_tensor_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1c
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constx
zeros_1Fillconcat_1:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1q
shape_as_tensor_2Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_2/axis?
concat_2ConcatV2packed:output:0shape_as_tensor_2:output:0concat_2/axis:output:0*
N*
T0*
_output_shapes
:2

concat_2c
zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_2/Constx
zeros_2Fillconcat_2:output:0zeros_2/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_2q
shape_as_tensor_3Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_3`
concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_3/axis?
concat_3ConcatV2packed:output:0shape_as_tensor_3:output:0concat_3/axis:output:0*
N*
T0*
_output_shapes
:2

concat_3c
zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_3/Constx
zeros_3Fillconcat_3:output:0zeros_3/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_3T
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/yb
EqualEqual	step_typeEqual/y:output:0*
T0*#
_output_shapes
:?????????2
EqualN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_1R
subSubRank:output:0Rank_1:output:0*
T0*
_output_shapes
: 2
subK
Shape_1Shape	Equal:z:0*
T0
*
_output_shapes
:2	
Shape_1{
ones/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
ones/Reshape/shaper
ones/ReshapeReshapesub:z:0ones/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones/ReshapeZ

ones/ConstConst*
_output_shapes
: *
dtype0*
value	B :2

ones/Conste
onesFillones/Reshape:output:0ones/Const:output:0*
T0*
_output_shapes
:2
ones`
concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_4/axis?
concat_4ConcatV2Shape_1:output:0ones:output:0concat_4/axis:output:0*
N*
T0*
_output_shapes
:2

concat_4m
ReshapeReshape	Equal:z:0concat_4:output:0*
T0
*'
_output_shapes
:?????????2	
Reshape?
SelectV2SelectV2Reshape:output:0zeros:output:0actor_network_state_0_0*
T0*(
_output_shapes
:??????????2

SelectV2?

SelectV2_1SelectV2Reshape:output:0zeros_1:output:0actor_network_state_0_1*
T0*(
_output_shapes
:??????????2

SelectV2_1?

SelectV2_2SelectV2Reshape:output:0zeros_2:output:0actor_network_state_1_0*
T0*(
_output_shapes
:??????????2

SelectV2_2?

SelectV2_3SelectV2Reshape:output:0zeros_3:output:0actor_network_state_1_1*
T0*(
_output_shapes
:??????????2

SelectV2_3J
Shape_2Shapediscount*
T0*
_output_shapes
:2	
Shape_2x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_2:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1d
packed_1Packstrided_slice_1:output:0*
N*
T0*
_output_shapes
:2

packed_1q
shape_as_tensor_4Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_4`
concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_5/axis?
concat_5ConcatV2packed_1:output:0shape_as_tensor_4:output:0concat_5/axis:output:0*
N*
T0*
_output_shapes
:2

concat_5c
zeros_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_4/Constx
zeros_4Fillconcat_5:output:0zeros_4/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_4q
shape_as_tensor_5Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_5`
concat_6/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_6/axis?
concat_6ConcatV2packed_1:output:0shape_as_tensor_5:output:0concat_6/axis:output:0*
N*
T0*
_output_shapes
:2

concat_6c
zeros_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_5/Constx
zeros_5Fillconcat_6:output:0zeros_5/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_5q
shape_as_tensor_6Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_6`
concat_7/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_7/axis?
concat_7ConcatV2packed_1:output:0shape_as_tensor_6:output:0concat_7/axis:output:0*
N*
T0*
_output_shapes
:2

concat_7c
zeros_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_6/Constx
zeros_6Fillconcat_7:output:0zeros_6/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_6q
shape_as_tensor_7Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_7`
concat_8/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_8/axis?
concat_8ConcatV2packed_1:output:0shape_as_tensor_7:output:0concat_8/axis:output:0*
N*
T0*
_output_shapes
:2

concat_8c
zeros_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_7/Constx
zeros_7Fillconcat_8:output:0zeros_7/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_7X
	Equal_1/yConst*
_output_shapes
: *
dtype0*
value	B : 2
	Equal_1/yh
Equal_1Equal	step_typeEqual_1/y:output:0*
T0*#
_output_shapes
:?????????2	
Equal_1R
Rank_2Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_2R
Rank_3Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_3X
sub_1SubRank_2:output:0Rank_3:output:0*
T0*
_output_shapes
: 2
sub_1M
Shape_3ShapeEqual_1:z:0*
T0
*
_output_shapes
:2	
Shape_3
ones_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
ones_1/Reshape/shapez
ones_1/ReshapeReshape	sub_1:z:0ones_1/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones_1/Reshape^
ones_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ones_1/Constm
ones_1Fillones_1/Reshape:output:0ones_1/Const:output:0*
T0*
_output_shapes
:2
ones_1`
concat_9/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_9/axis?
concat_9ConcatV2Shape_3:output:0ones_1:output:0concat_9/axis:output:0*
N*
T0*
_output_shapes
:2

concat_9s
	Reshape_1ReshapeEqual_1:z:0concat_9:output:0*
T0
*'
_output_shapes
:?????????2
	Reshape_1?

SelectV2_4SelectV2Reshape_1:output:0zeros_4:output:0SelectV2:output:0*
T0*(
_output_shapes
:??????????2

SelectV2_4?

SelectV2_5SelectV2Reshape_1:output:0zeros_5:output:0SelectV2_1:output:0*
T0*(
_output_shapes
:??????????2

SelectV2_5?

SelectV2_6SelectV2Reshape_1:output:0zeros_6:output:0SelectV2_2:output:0*
T0*(
_output_shapes
:??????????2

SelectV2_6?

SelectV2_7SelectV2Reshape_1:output:0zeros_7:output:0SelectV2_3:output:0*
T0*(
_output_shapes
:??????????2

SelectV2_7?
FActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2H
FActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dim?
BActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims
ExpandDimsobservationOActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2D
BActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims?
HActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2J
HActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dim?
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1
ExpandDims	step_typeQActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?????????2F
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1?
[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/ShapeShapeKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2]
[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Shape?
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shape?
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/ReshapeReshapeKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2_
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Const?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/ReshapeReshapefActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:?????????2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Reshape?
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOplactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMulMatMul`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Reshape:output:0kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul?
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpmactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02f
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAddBiasAdd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul:product:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/ReluRelu^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu?
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpReadVariableOpnactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02g
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp?
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMulMatMul`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu:activations:0mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul?
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOpoactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAddBiasAdd`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul:product:0nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/ReluRelu`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/Relu?
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack?
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1?
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2?
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_sliceStridedSlicedActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Shape:output:0tActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2g
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice?
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/ShapeShapebActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/Relu:activations:0*
T0*
_output_shapes
:*
out_type0	2_
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Shape?
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack?
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2q
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1?
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2q
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2?
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1StridedSlicefActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Shape:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack:output:0xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1:output:0xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
end_mask2i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1?
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axis?
^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concatConcatV2nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice:output:0pActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axis:output:0*
N*
T0	*
_output_shapes
:2`
^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat?
_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/ReshapeReshapebActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/Relu:activations:0gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat:output:0*
T0*
Tshape0	*+
_output_shapes
:?????????d2a
_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Reshape?
>ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/yConst*
_output_shapes
: *
dtype0*
value	B : 2@
>ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/y?
<ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/maskEqualMActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1:output:0GActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/y:output:0*
T0*'
_output_shapes
:?????????2>
<ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask?
KActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/RankConst*
_output_shapes
: *
dtype0*
value	B :2M
KActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Rank?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/startConst*
_output_shapes
: *
dtype0*
value	B :2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/start?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/delta?
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/rangeRange[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/start:output:0TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Rank:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/delta:output:0*
_output_shapes
:2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range?
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB"       2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axis?
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concatConcatV2_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0:output:0UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axis:output:0*
N*
T0*
_output_shapes
:2O
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat?
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose	TransposehActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Reshape:output:0VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat:output:0*
T0*+
_output_shapes
:?????????d2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose?
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ShapeShapeTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose:y:0*
T0*
_output_shapes
:2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Shape?
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack?
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1?
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_sliceStridedSliceUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Shape:output:0cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack:output:0eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1:output:0eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/perm?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1	Transpose@ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask:z:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/perm:output:0*
T0
*'
_output_shapes
:?????????2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/y?
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/y:output:0*
T0*
_output_shapes
: 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/y?
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/LessLessTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul:z:0\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/y:output:0*
T0*
_output_shapes
: 2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Const?
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zerosFill\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/y?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/y?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/LessLessVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Const?
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1Fill^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul/y?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Less/y?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/LessLessVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Less?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed/1?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Const?
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2Fill^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Const:output:0*
T0*(
_output_shapes
:??????????2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul/y?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul/y:output:0*
T0*
_output_shapes
: 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Less/y?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/LessLessVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Less/y:output:0*
T0*
_output_shapes
: 2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Less?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed/1?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed/1:output:0*
N*
T0*
_output_shapes
:2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Const?
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3Fill^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Const:output:0*
T0*(
_output_shapes
:??????????2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3?
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/SqueezeSqueezeTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose:y:0*
T0*'
_output_shapes
:?????????d*
squeeze_dims
 2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze?
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1SqueezeVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1:y:0*
T0
*#
_output_shapes
:?????????*
squeeze_dims
 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1?
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/SelectSelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros:output:0SelectV2_4:output:0*
T0*(
_output_shapes
:??????????2O
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select?
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1SelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1:output:0SelectV2_5:output:0*
T0*(
_output_shapes
:??????????2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1?
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_2SelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2:output:0SelectV2_6:output:0*
T0*(
_output_shapes
:??????????2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_2?
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_3SelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3:output:0SelectV2_7:output:0*
T0*(
_output_shapes
:??????????2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_3?
xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02z
xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp?
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMulMatMulWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze:output:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2k
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul?
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02|
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp?
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1MatMulVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select:output:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1?
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/addAddV2sActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul:product:0uActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add?
yActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02{
yActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOp?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAddBiasAddjActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add:z:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Const?
rActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2t
rActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split/split_dim?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/splitSplit{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split/split_dim:output:0sActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/SigmoidSigmoidqActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid?
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_1SigmoidqActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2n
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_1?
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mulMulpActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_1:y:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1:output:0*
T0*(
_output_shapes
:??????????2h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul?
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/TanhTanhqActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_1MulnActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid:y:0kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_1?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add_1AddV2jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul:z:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add_1?
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_2SigmoidqActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2n
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_2?
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh_1TanhlActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2k
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh_1?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_2MulpActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_2:y:0mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_2?
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02|
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp?
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMulMatMullActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_2:z:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul?
|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02~
|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp?
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1MatMulXActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_2:output:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/addAddV2uActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul:product:0wActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add?
{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02}
{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp?
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAddBiasAddlActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add:z:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2n
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Const?
tActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2v
tActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split/split_dim?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/splitSplit}ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split/split_dim:output:0uActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split?
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/SigmoidSigmoidsActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:??????????2n
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid?
nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_1SigmoidsActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:??????????2p
nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_1?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mulMulrActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_1:y:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_3:output:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul?
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/TanhTanhsActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:??????????2k
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_1MulpActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid:y:0mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_1?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add_1AddV2lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul:z:0nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add_1?
nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_2SigmoidsActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:??????????2p
nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_2?
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh_1TanhnActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh_1?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_2MulrActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_2:y:0oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_2?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dim?
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims
ExpandDimsnActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_2:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims?
?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/SqueezeSqueezeZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims:output:0*
T0*(
_output_shapes
:??????????*
squeeze_dims
2A
?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/Squeeze?
`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOpReadVariableOpiactordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02b
`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp?
QActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMulMatMulHActorDistributionRnnNetwork/ActorDistributionRnnNetwork/Squeeze:output:0hActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2S
QActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul?
aActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpReadVariableOpjactordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02c
aActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp?
RActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAddBiasAdd[ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul:product:0iActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2T
RActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd?
AActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2C
AActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape/shape?
;ActorDistributionRnnNetwork/NormalProjectionNetwork/ReshapeReshape[ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd:output:0JActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2=
;ActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape?
8ActorDistributionRnnNetwork/NormalProjectionNetwork/TanhTanhDActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape:output:0*
T0*'
_output_shapes
:?????????2:
8ActorDistributionRnnNetwork/NormalProjectionNetwork/Tanh?
9ActorDistributionRnnNetwork/NormalProjectionNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2;
9ActorDistributionRnnNetwork/NormalProjectionNetwork/mul/x?
7ActorDistributionRnnNetwork/NormalProjectionNetwork/mulMulBActorDistributionRnnNetwork/NormalProjectionNetwork/mul/x:output:0<ActorDistributionRnnNetwork/NormalProjectionNetwork/Tanh:y:0*
T0*'
_output_shapes
:?????????29
7ActorDistributionRnnNetwork/NormalProjectionNetwork/mul?
9ActorDistributionRnnNetwork/NormalProjectionNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2;
9ActorDistributionRnnNetwork/NormalProjectionNetwork/add/x?
7ActorDistributionRnnNetwork/NormalProjectionNetwork/addAddV2BActorDistributionRnnNetwork/NormalProjectionNetwork/add/x:output:0;ActorDistributionRnnNetwork/NormalProjectionNetwork/mul:z:0*
T0*'
_output_shapes
:?????????29
7ActorDistributionRnnNetwork/NormalProjectionNetwork/add?
>ActorDistributionRnnNetwork/NormalProjectionNetwork/zeros_like	ZerosLike;ActorDistributionRnnNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:?????????2@
>ActorDistributionRnnNetwork/NormalProjectionNetwork/zeros_like?
UActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpReadVariableOp^actordistributionrnnnetwork_normalprojectionnetwork_bias_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02W
UActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp?
FActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAddBiasAddBActorDistributionRnnNetwork/NormalProjectionNetwork/zeros_like:y:0]ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2H
FActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd?
CActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2E
CActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1/shape?
=ActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1ReshapeOActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd:output:0LActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2?
=ActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1?
<ActorDistributionRnnNetwork/NormalProjectionNetwork/SoftplusSoftplusFActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2>
<ActorDistributionRnnNetwork/NormalProjectionNetwork/Softplus?
jActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ConstConst*
_output_shapes
: *
dtype0*
value	B :2l
jActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Const?
pActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shapeConst*
_output_shapes
:*
dtype0*
valueB:2r
pActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shape?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/ShapeShapeJActorDistributionRnnNetwork/NormalProjectionNetwork/Softplus:activations:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2?	
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_sliceStridedSlice?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1Pack?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice:output:0*
N*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concatConcatV2?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis:output:0*
N*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_sliceStridedSlice?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice?
jActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ShapeShape;ActorDistributionRnnNetwork/NormalProjectionNetwork/add:z:0*
T0*
_output_shapes
:2l
jActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape?
xActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2z
xActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack?
zActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2|
zActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1?
zActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2|
zActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2?
rActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_sliceStridedSlicesActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2t
rActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice?
rActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgsBroadcastArgs?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice:output:0{ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice:output:0*
_output_shapes
:2t
rActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs?
VActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2X
VActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const?
PActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zerosFillwActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs:r0:0_ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2R
PActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros?
OActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/onesConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2Q
OActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/ones?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shape?
OActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeroConst*
_output_shapes
: *
dtype0*
value	B : 2Q
OActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zero?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ShapeShapeYActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros:output:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgsBroadcastArgs?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape:output:0?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1:output:0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentity?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs:r0:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape?	
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentity?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shapeIdentity?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/ConstConst*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shapeIdentity?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const:output:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape?
[ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2]
[ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis?
VActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concatConcatV2?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape:output:0?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape:output:0dActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis:output:0*
N*
T0*
_output_shapes
:2X
VActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat?
XActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/IdentityIdentity;ActorDistributionRnnNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:?????????2Z
XActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity?
[ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2]
[ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const?
UActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zerosFill_ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat:output:0dActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2W
UActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros?
SActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addAddV2aActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity:output:0^ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros:output:0*
T0*'
_output_shapes
:?????????2U
SActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addm
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/atolm
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/rtol?
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shape?
Deterministic_1/sample/ShapeShapeWActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0*
T0*
_output_shapes
:2
Deterministic_1/sample/Shape?
'Deterministic_1/sample/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2)
'Deterministic_1/sample/BroadcastArgs/s1?
$Deterministic_1/sample/BroadcastArgsBroadcastArgs%Deterministic_1/sample/Shape:output:00Deterministic_1/sample/BroadcastArgs/s1:output:0*
_output_shapes
:2&
$Deterministic_1/sample/BroadcastArgs
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const?
&Deterministic_1/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:2(
&Deterministic_1/sample/concat/values_0?
"Deterministic_1/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"Deterministic_1/sample/concat/axis?
Deterministic_1/sample/concatConcatV2/Deterministic_1/sample/concat/values_0:output:0)Deterministic_1/sample/BroadcastArgs:r0:0%Deterministic_1/sample/Const:output:0+Deterministic_1/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Deterministic_1/sample/concat?
"Deterministic_1/sample/BroadcastToBroadcastToWActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0&Deterministic_1/sample/concat:output:0*
T0*4
_output_shapes"
 :??????????????????2$
"Deterministic_1/sample/BroadcastTo?
Deterministic_1/sample/Shape_1Shape+Deterministic_1/sample/BroadcastTo:output:0*
T0*
_output_shapes
:2 
Deterministic_1/sample/Shape_1?
*Deterministic_1/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*Deterministic_1/sample/strided_slice/stack?
,Deterministic_1/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,Deterministic_1/sample/strided_slice/stack_1?
,Deterministic_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,Deterministic_1/sample/strided_slice/stack_2?
$Deterministic_1/sample/strided_sliceStridedSlice'Deterministic_1/sample/Shape_1:output:03Deterministic_1/sample/strided_slice/stack:output:05Deterministic_1/sample/strided_slice/stack_1:output:05Deterministic_1/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2&
$Deterministic_1/sample/strided_slice?
$Deterministic_1/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$Deterministic_1/sample/concat_1/axis?
Deterministic_1/sample/concat_1ConcatV2,Deterministic_1/sample/sample_shape:output:0-Deterministic_1/sample/strided_slice:output:0-Deterministic_1/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
Deterministic_1/sample/concat_1?
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0(Deterministic_1/sample/concat_1:output:0*
T0*'
_output_shapes
:?????????2 
Deterministic_1/sample/Reshapew
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????2
clip_by_value?
IdentityIdentityclip_by_value:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentitylActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_2:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2IdentitylActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add_1:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3IdentitynActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_2:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3?

Identity_4IdentitynActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add_1:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:??????????:??????????:??????????:??????????:::::::::::::2?
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpdActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2?
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpcActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2?
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpfActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp2?
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpeActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp2?
yActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpyActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOp2?
xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOpxActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp2?
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOpzActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp2?
{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp2?
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOpzActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp2?
|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp2?
UActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpUActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp2?
aActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpaActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp2?
`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp:N J
#
_output_shapes
:?????????
#
_user_specified_name	step_type:KG
#
_output_shapes
:?????????
 
_user_specified_namereward:MI
#
_output_shapes
:?????????
"
_user_specified_name
discount:TP
'
_output_shapes
:?????????
%
_user_specified_nameobservation:a]
(
_output_shapes
:??????????
1
_user_specified_nameactor_network_state/0/0:a]
(
_output_shapes
:??????????
1
_user_specified_nameactor_network_state/0/1:a]
(
_output_shapes
:??????????
1
_user_specified_nameactor_network_state/1/0:a]
(
_output_shapes
:??????????
1
_user_specified_nameactor_network_state/1/1
??
?
__inference_action_116404
	time_step
time_step_1
time_step_2
time_step_3
policy_state
policy_state_1
policy_state_2
policy_state_3p
lactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_matmul_readvariableop_resourceq
mactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasadd_readvariableop_resourcer
nactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_matmul_readvariableop_resources
oactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_matmul_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_matmul_1_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_biasadd_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_matmul_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_matmul_1_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_biasadd_readvariableop_resourcem
iactordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resourcen
jactordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resourceb
^actordistributionrnnnetwork_normalprojectionnetwork_bias_layer_biasadd_readvariableop_resource
identity

identity_1

identity_2

identity_3

identity_4??dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp?eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp?yActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOp?xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp?zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp?{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp?zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp?|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp?UActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp?aActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp?`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOpI
ShapeShapetime_step_2*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice^
packedPackstrided_slice:output:0*
N*
T0*
_output_shapes
:2
packedm
shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2packed:output:0shape_as_tensor:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constp
zerosFillconcat:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosq
shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2packed:output:0shape_as_tensor_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1c
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constx
zeros_1Fillconcat_1:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1q
shape_as_tensor_2Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_2/axis?
concat_2ConcatV2packed:output:0shape_as_tensor_2:output:0concat_2/axis:output:0*
N*
T0*
_output_shapes
:2

concat_2c
zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_2/Constx
zeros_2Fillconcat_2:output:0zeros_2/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_2q
shape_as_tensor_3Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_3`
concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_3/axis?
concat_3ConcatV2packed:output:0shape_as_tensor_3:output:0concat_3/axis:output:0*
N*
T0*
_output_shapes
:2

concat_3c
zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_3/Constx
zeros_3Fillconcat_3:output:0zeros_3/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_3T
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/yb
EqualEqual	time_stepEqual/y:output:0*
T0*#
_output_shapes
:?????????2
EqualN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_1R
subSubRank:output:0Rank_1:output:0*
T0*
_output_shapes
: 2
subK
Shape_1Shape	Equal:z:0*
T0
*
_output_shapes
:2	
Shape_1{
ones/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
ones/Reshape/shaper
ones/ReshapeReshapesub:z:0ones/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones/ReshapeZ

ones/ConstConst*
_output_shapes
: *
dtype0*
value	B :2

ones/Conste
onesFillones/Reshape:output:0ones/Const:output:0*
T0*
_output_shapes
:2
ones`
concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_4/axis?
concat_4ConcatV2Shape_1:output:0ones:output:0concat_4/axis:output:0*
N*
T0*
_output_shapes
:2

concat_4m
ReshapeReshape	Equal:z:0concat_4:output:0*
T0
*'
_output_shapes
:?????????2	
Reshape?
SelectV2SelectV2Reshape:output:0zeros:output:0policy_state*
T0*(
_output_shapes
:??????????2

SelectV2?

SelectV2_1SelectV2Reshape:output:0zeros_1:output:0policy_state_1*
T0*(
_output_shapes
:??????????2

SelectV2_1?

SelectV2_2SelectV2Reshape:output:0zeros_2:output:0policy_state_2*
T0*(
_output_shapes
:??????????2

SelectV2_2?

SelectV2_3SelectV2Reshape:output:0zeros_3:output:0policy_state_3*
T0*(
_output_shapes
:??????????2

SelectV2_3M
Shape_2Shapetime_step_2*
T0*
_output_shapes
:2	
Shape_2x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_2:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1d
packed_1Packstrided_slice_1:output:0*
N*
T0*
_output_shapes
:2

packed_1q
shape_as_tensor_4Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_4`
concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_5/axis?
concat_5ConcatV2packed_1:output:0shape_as_tensor_4:output:0concat_5/axis:output:0*
N*
T0*
_output_shapes
:2

concat_5c
zeros_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_4/Constx
zeros_4Fillconcat_5:output:0zeros_4/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_4q
shape_as_tensor_5Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_5`
concat_6/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_6/axis?
concat_6ConcatV2packed_1:output:0shape_as_tensor_5:output:0concat_6/axis:output:0*
N*
T0*
_output_shapes
:2

concat_6c
zeros_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_5/Constx
zeros_5Fillconcat_6:output:0zeros_5/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_5q
shape_as_tensor_6Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_6`
concat_7/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_7/axis?
concat_7ConcatV2packed_1:output:0shape_as_tensor_6:output:0concat_7/axis:output:0*
N*
T0*
_output_shapes
:2

concat_7c
zeros_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_6/Constx
zeros_6Fillconcat_7:output:0zeros_6/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_6q
shape_as_tensor_7Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_7`
concat_8/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_8/axis?
concat_8ConcatV2packed_1:output:0shape_as_tensor_7:output:0concat_8/axis:output:0*
N*
T0*
_output_shapes
:2

concat_8c
zeros_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_7/Constx
zeros_7Fillconcat_8:output:0zeros_7/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_7X
	Equal_1/yConst*
_output_shapes
: *
dtype0*
value	B : 2
	Equal_1/yh
Equal_1Equal	time_stepEqual_1/y:output:0*
T0*#
_output_shapes
:?????????2	
Equal_1R
Rank_2Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_2R
Rank_3Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_3X
sub_1SubRank_2:output:0Rank_3:output:0*
T0*
_output_shapes
: 2
sub_1M
Shape_3ShapeEqual_1:z:0*
T0
*
_output_shapes
:2	
Shape_3
ones_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
ones_1/Reshape/shapez
ones_1/ReshapeReshape	sub_1:z:0ones_1/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones_1/Reshape^
ones_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ones_1/Constm
ones_1Fillones_1/Reshape:output:0ones_1/Const:output:0*
T0*
_output_shapes
:2
ones_1`
concat_9/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_9/axis?
concat_9ConcatV2Shape_3:output:0ones_1:output:0concat_9/axis:output:0*
N*
T0*
_output_shapes
:2

concat_9s
	Reshape_1ReshapeEqual_1:z:0concat_9:output:0*
T0
*'
_output_shapes
:?????????2
	Reshape_1?

SelectV2_4SelectV2Reshape_1:output:0zeros_4:output:0SelectV2:output:0*
T0*(
_output_shapes
:??????????2

SelectV2_4?

SelectV2_5SelectV2Reshape_1:output:0zeros_5:output:0SelectV2_1:output:0*
T0*(
_output_shapes
:??????????2

SelectV2_5?

SelectV2_6SelectV2Reshape_1:output:0zeros_6:output:0SelectV2_2:output:0*
T0*(
_output_shapes
:??????????2

SelectV2_6?

SelectV2_7SelectV2Reshape_1:output:0zeros_7:output:0SelectV2_3:output:0*
T0*(
_output_shapes
:??????????2

SelectV2_7?
FActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2H
FActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dim?
BActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims
ExpandDimstime_step_3OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2D
BActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims?
HActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2J
HActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dim?
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1
ExpandDims	time_stepQActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?????????2F
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1?
[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/ShapeShapeKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2]
[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Shape?
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shape?
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/ReshapeReshapeKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2_
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Const?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/ReshapeReshapefActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:?????????2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Reshape?
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOplactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMulMatMul`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Reshape:output:0kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul?
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpmactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02f
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAddBiasAdd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul:product:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/ReluRelu^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu?
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpReadVariableOpnactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02g
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp?
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMulMatMul`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu:activations:0mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul?
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOpoactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAddBiasAdd`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul:product:0nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/ReluRelu`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/Relu?
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack?
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1?
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2?
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_sliceStridedSlicedActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Shape:output:0tActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2g
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice?
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/ShapeShapebActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/Relu:activations:0*
T0*
_output_shapes
:*
out_type0	2_
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Shape?
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack?
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2q
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1?
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2q
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2?
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1StridedSlicefActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Shape:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack:output:0xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1:output:0xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
end_mask2i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1?
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axis?
^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concatConcatV2nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice:output:0pActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axis:output:0*
N*
T0	*
_output_shapes
:2`
^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat?
_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/ReshapeReshapebActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/Relu:activations:0gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat:output:0*
T0*
Tshape0	*+
_output_shapes
:?????????d2a
_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Reshape?
>ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/yConst*
_output_shapes
: *
dtype0*
value	B : 2@
>ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/y?
<ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/maskEqualMActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1:output:0GActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/y:output:0*
T0*'
_output_shapes
:?????????2>
<ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask?
KActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/RankConst*
_output_shapes
: *
dtype0*
value	B :2M
KActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Rank?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/startConst*
_output_shapes
: *
dtype0*
value	B :2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/start?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/delta?
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/rangeRange[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/start:output:0TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Rank:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/delta:output:0*
_output_shapes
:2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range?
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB"       2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axis?
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concatConcatV2_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0:output:0UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axis:output:0*
N*
T0*
_output_shapes
:2O
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat?
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose	TransposehActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Reshape:output:0VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat:output:0*
T0*+
_output_shapes
:?????????d2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose?
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ShapeShapeTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose:y:0*
T0*
_output_shapes
:2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Shape?
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack?
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1?
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_sliceStridedSliceUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Shape:output:0cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack:output:0eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1:output:0eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/perm?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1	Transpose@ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask:z:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/perm:output:0*
T0
*'
_output_shapes
:?????????2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/y?
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/y:output:0*
T0*
_output_shapes
: 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/y?
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/LessLessTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul:z:0\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/y:output:0*
T0*
_output_shapes
: 2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Const?
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zerosFill\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/y?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/y?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/LessLessVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Const?
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1Fill^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul/y?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Less/y?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/LessLessVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Less?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed/1?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Const?
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2Fill^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Const:output:0*
T0*(
_output_shapes
:??????????2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul/y?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul/y:output:0*
T0*
_output_shapes
: 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Less/y?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/LessLessVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Less/y:output:0*
T0*
_output_shapes
: 2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Less?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed/1?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed/1:output:0*
N*
T0*
_output_shapes
:2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Const?
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3Fill^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Const:output:0*
T0*(
_output_shapes
:??????????2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3?
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/SqueezeSqueezeTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose:y:0*
T0*'
_output_shapes
:?????????d*
squeeze_dims
 2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze?
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1SqueezeVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1:y:0*
T0
*#
_output_shapes
:?????????*
squeeze_dims
 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1?
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/SelectSelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros:output:0SelectV2_4:output:0*
T0*(
_output_shapes
:??????????2O
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select?
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1SelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1:output:0SelectV2_5:output:0*
T0*(
_output_shapes
:??????????2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1?
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_2SelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2:output:0SelectV2_6:output:0*
T0*(
_output_shapes
:??????????2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_2?
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_3SelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3:output:0SelectV2_7:output:0*
T0*(
_output_shapes
:??????????2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_3?
xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02z
xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp?
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMulMatMulWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze:output:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2k
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul?
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02|
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp?
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1MatMulVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select:output:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1?
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/addAddV2sActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul:product:0uActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add?
yActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02{
yActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOp?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAddBiasAddjActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add:z:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Const?
rActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2t
rActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split/split_dim?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/splitSplit{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split/split_dim:output:0sActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/SigmoidSigmoidqActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid?
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_1SigmoidqActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2n
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_1?
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mulMulpActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_1:y:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1:output:0*
T0*(
_output_shapes
:??????????2h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul?
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/TanhTanhqActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_1MulnActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid:y:0kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_1?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add_1AddV2jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul:z:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add_1?
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_2SigmoidqActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2n
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_2?
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh_1TanhlActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2k
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh_1?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_2MulpActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_2:y:0mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_2?
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02|
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp?
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMulMatMullActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_2:z:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul?
|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02~
|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp?
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1MatMulXActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_2:output:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/addAddV2uActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul:product:0wActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add?
{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02}
{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp?
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAddBiasAddlActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add:z:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2n
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Const?
tActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2v
tActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split/split_dim?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/splitSplit}ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split/split_dim:output:0uActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split?
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/SigmoidSigmoidsActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:??????????2n
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid?
nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_1SigmoidsActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:??????????2p
nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_1?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mulMulrActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_1:y:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_3:output:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul?
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/TanhTanhsActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:??????????2k
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_1MulpActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid:y:0mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_1?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add_1AddV2lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul:z:0nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add_1?
nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_2SigmoidsActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:??????????2p
nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_2?
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh_1TanhnActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh_1?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_2MulrActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_2:y:0oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_2?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dim?
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims
ExpandDimsnActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_2:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims?
?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/SqueezeSqueezeZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims:output:0*
T0*(
_output_shapes
:??????????*
squeeze_dims
2A
?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/Squeeze?
`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOpReadVariableOpiactordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02b
`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp?
QActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMulMatMulHActorDistributionRnnNetwork/ActorDistributionRnnNetwork/Squeeze:output:0hActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2S
QActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul?
aActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpReadVariableOpjactordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02c
aActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp?
RActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAddBiasAdd[ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul:product:0iActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2T
RActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd?
AActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2C
AActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape/shape?
;ActorDistributionRnnNetwork/NormalProjectionNetwork/ReshapeReshape[ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd:output:0JActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2=
;ActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape?
8ActorDistributionRnnNetwork/NormalProjectionNetwork/TanhTanhDActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape:output:0*
T0*'
_output_shapes
:?????????2:
8ActorDistributionRnnNetwork/NormalProjectionNetwork/Tanh?
9ActorDistributionRnnNetwork/NormalProjectionNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2;
9ActorDistributionRnnNetwork/NormalProjectionNetwork/mul/x?
7ActorDistributionRnnNetwork/NormalProjectionNetwork/mulMulBActorDistributionRnnNetwork/NormalProjectionNetwork/mul/x:output:0<ActorDistributionRnnNetwork/NormalProjectionNetwork/Tanh:y:0*
T0*'
_output_shapes
:?????????29
7ActorDistributionRnnNetwork/NormalProjectionNetwork/mul?
9ActorDistributionRnnNetwork/NormalProjectionNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2;
9ActorDistributionRnnNetwork/NormalProjectionNetwork/add/x?
7ActorDistributionRnnNetwork/NormalProjectionNetwork/addAddV2BActorDistributionRnnNetwork/NormalProjectionNetwork/add/x:output:0;ActorDistributionRnnNetwork/NormalProjectionNetwork/mul:z:0*
T0*'
_output_shapes
:?????????29
7ActorDistributionRnnNetwork/NormalProjectionNetwork/add?
>ActorDistributionRnnNetwork/NormalProjectionNetwork/zeros_like	ZerosLike;ActorDistributionRnnNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:?????????2@
>ActorDistributionRnnNetwork/NormalProjectionNetwork/zeros_like?
UActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpReadVariableOp^actordistributionrnnnetwork_normalprojectionnetwork_bias_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02W
UActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp?
FActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAddBiasAddBActorDistributionRnnNetwork/NormalProjectionNetwork/zeros_like:y:0]ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2H
FActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd?
CActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2E
CActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1/shape?
=ActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1ReshapeOActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd:output:0LActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2?
=ActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1?
<ActorDistributionRnnNetwork/NormalProjectionNetwork/SoftplusSoftplusFActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2>
<ActorDistributionRnnNetwork/NormalProjectionNetwork/Softplus?
jActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ConstConst*
_output_shapes
: *
dtype0*
value	B :2l
jActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Const?
pActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shapeConst*
_output_shapes
:*
dtype0*
valueB:2r
pActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shape?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/ShapeShapeJActorDistributionRnnNetwork/NormalProjectionNetwork/Softplus:activations:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2?	
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_sliceStridedSlice?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1Pack?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice:output:0*
N*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concatConcatV2?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis:output:0*
N*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_sliceStridedSlice?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice?
jActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ShapeShape;ActorDistributionRnnNetwork/NormalProjectionNetwork/add:z:0*
T0*
_output_shapes
:2l
jActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape?
xActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2z
xActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack?
zActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2|
zActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1?
zActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2|
zActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2?
rActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_sliceStridedSlicesActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2t
rActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice?
rActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgsBroadcastArgs?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice:output:0{ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice:output:0*
_output_shapes
:2t
rActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs?
VActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2X
VActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const?
PActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zerosFillwActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs:r0:0_ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2R
PActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros?
OActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/onesConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2Q
OActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/ones?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shape?
OActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeroConst*
_output_shapes
: *
dtype0*
value	B : 2Q
OActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zero?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ShapeShapeYActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros:output:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgsBroadcastArgs?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape:output:0?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1:output:0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentity?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs:r0:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape?	
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentity?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shapeIdentity?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/ConstConst*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shapeIdentity?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const:output:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape?
[ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2]
[ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis?
VActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concatConcatV2?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape:output:0?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape:output:0dActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis:output:0*
N*
T0*
_output_shapes
:2X
VActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat?
XActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/IdentityIdentity;ActorDistributionRnnNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:?????????2Z
XActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity?
[ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2]
[ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const?
UActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zerosFill_ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat:output:0dActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2W
UActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros?
SActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addAddV2aActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity:output:0^ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros:output:0*
T0*'
_output_shapes
:?????????2U
SActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addm
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/atolm
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/rtol?
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shape?
Deterministic_1/sample/ShapeShapeWActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0*
T0*
_output_shapes
:2
Deterministic_1/sample/Shape?
'Deterministic_1/sample/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2)
'Deterministic_1/sample/BroadcastArgs/s1?
$Deterministic_1/sample/BroadcastArgsBroadcastArgs%Deterministic_1/sample/Shape:output:00Deterministic_1/sample/BroadcastArgs/s1:output:0*
_output_shapes
:2&
$Deterministic_1/sample/BroadcastArgs
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const?
&Deterministic_1/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:2(
&Deterministic_1/sample/concat/values_0?
"Deterministic_1/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"Deterministic_1/sample/concat/axis?
Deterministic_1/sample/concatConcatV2/Deterministic_1/sample/concat/values_0:output:0)Deterministic_1/sample/BroadcastArgs:r0:0%Deterministic_1/sample/Const:output:0+Deterministic_1/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Deterministic_1/sample/concat?
"Deterministic_1/sample/BroadcastToBroadcastToWActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0&Deterministic_1/sample/concat:output:0*
T0*4
_output_shapes"
 :??????????????????2$
"Deterministic_1/sample/BroadcastTo?
Deterministic_1/sample/Shape_1Shape+Deterministic_1/sample/BroadcastTo:output:0*
T0*
_output_shapes
:2 
Deterministic_1/sample/Shape_1?
*Deterministic_1/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*Deterministic_1/sample/strided_slice/stack?
,Deterministic_1/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,Deterministic_1/sample/strided_slice/stack_1?
,Deterministic_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,Deterministic_1/sample/strided_slice/stack_2?
$Deterministic_1/sample/strided_sliceStridedSlice'Deterministic_1/sample/Shape_1:output:03Deterministic_1/sample/strided_slice/stack:output:05Deterministic_1/sample/strided_slice/stack_1:output:05Deterministic_1/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2&
$Deterministic_1/sample/strided_slice?
$Deterministic_1/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$Deterministic_1/sample/concat_1/axis?
Deterministic_1/sample/concat_1ConcatV2,Deterministic_1/sample/sample_shape:output:0-Deterministic_1/sample/strided_slice:output:0-Deterministic_1/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
Deterministic_1/sample/concat_1?
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0(Deterministic_1/sample/concat_1:output:0*
T0*'
_output_shapes
:?????????2 
Deterministic_1/sample/Reshapew
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????2
clip_by_value?
IdentityIdentityclip_by_value:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentitylActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_2:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2IdentitylActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add_1:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3IdentitynActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_2:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3?

Identity_4IdentitynActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add_1:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:??????????:??????????:??????????:??????????:::::::::::::2?
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpdActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2?
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpcActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2?
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpfActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp2?
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpeActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp2?
yActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpyActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOp2?
xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOpxActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp2?
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOpzActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp2?
{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp2?
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOpzActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp2?
|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp2?
UActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpUActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp2?
aActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpaActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp2?
`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp:N J
#
_output_shapes
:?????????
#
_user_specified_name	time_step:NJ
#
_output_shapes
:?????????
#
_user_specified_name	time_step:NJ
#
_output_shapes
:?????????
#
_user_specified_name	time_step:RN
'
_output_shapes
:?????????
#
_user_specified_name	time_step:VR
(
_output_shapes
:??????????
&
_user_specified_namepolicy_state:VR
(
_output_shapes
:??????????
&
_user_specified_namepolicy_state:VR
(
_output_shapes
:??????????
&
_user_specified_namepolicy_state:VR
(
_output_shapes
:??????????
&
_user_specified_namepolicy_state
?O
?
__inference__traced_save_300592
file_prefix*
&savev2_global_step_read_readvariableop	s
osavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_kernel_read_readvariableopq
msavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_bias_read_readvariableopu
qsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_kernel_read_readvariableops
osavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_bias_read_readvariableopv
rsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_kernel_read_readvariableop?
|savev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_recurrent_kernel_read_readvariableopt
psavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_bias_read_readvariableopx
tsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_1_kernel_read_readvariableop?
~savev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_1_recurrent_kernel_read_readvariableopv
rsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_1_bias_read_readvariableopb
^savev2_actordistributionrnnnetwork_normalprojectionnetwork_bias_layer_bias_read_readvariableopp
lsavev2_actordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_kernel_read_readvariableopn
jsavev2_actordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_bias_read_readvariableop]
Ysavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_2_kernel_read_readvariableop[
Wsavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_2_bias_read_readvariableop]
Ysavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_3_kernel_read_readvariableop[
Wsavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_3_bias_read_readvariableopb
^savev2_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_2_kernel_read_readvariableopl
hsavev2_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_2_recurrent_kernel_read_readvariableop`
\savev2_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_2_bias_read_readvariableopb
^savev2_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_3_kernel_read_readvariableopl
hsavev2_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_3_recurrent_kernel_read_readvariableop`
\savev2_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_3_bias_read_readvariableop=
9savev2_valuernnnetwork_dense_4_kernel_read_readvariableop;
7savev2_valuernnnetwork_dense_4_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/7/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/8/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/9/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/10/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/11/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/12/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/13/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/14/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/15/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/16/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/17/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/18/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/19/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/20/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/21/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/22/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/23/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/24/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_global_step_read_readvariableoposavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_kernel_read_readvariableopmsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_bias_read_readvariableopqsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_kernel_read_readvariableoposavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_bias_read_readvariableoprsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_kernel_read_readvariableop|savev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_recurrent_kernel_read_readvariableoppsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_bias_read_readvariableoptsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_1_kernel_read_readvariableop~savev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_1_recurrent_kernel_read_readvariableoprsavev2_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_1_bias_read_readvariableop^savev2_actordistributionrnnnetwork_normalprojectionnetwork_bias_layer_bias_read_readvariableoplsavev2_actordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_kernel_read_readvariableopjsavev2_actordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_bias_read_readvariableopYsavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_2_kernel_read_readvariableopWsavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_2_bias_read_readvariableopYsavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_3_kernel_read_readvariableopWsavev2_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_3_bias_read_readvariableop^savev2_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_2_kernel_read_readvariableophsavev2_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_2_recurrent_kernel_read_readvariableop\savev2_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_2_bias_read_readvariableop^savev2_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_3_kernel_read_readvariableophsavev2_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_3_recurrent_kernel_read_readvariableop\savev2_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_3_bias_read_readvariableop9savev2_valuernnnetwork_dense_4_kernel_read_readvariableop7savev2_valuernnnetwork_dense_4_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *)
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : :	?:?:	?d:d:	d?:
??:?:
??:
??:?::	?::	?:?:	?d:d:	d?:
??:?:
??:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :%!

_output_shapes
:	?:!

_output_shapes	
:?:%!

_output_shapes
:	?d: 

_output_shapes
:d:%!

_output_shapes
:	d?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:&
"
 
_output_shapes
:
??:!

_output_shapes	
:?: 

_output_shapes
::%!

_output_shapes
:	?: 

_output_shapes
::%!

_output_shapes
:	?:!

_output_shapes	
:?:%!

_output_shapes
:	?d: 

_output_shapes
:d:%!

_output_shapes
:	d?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: 
?
d
*__inference_function_with_signature_116549
unknown
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *4
config_proto$"

CPU

GPU2	 *0,1J 8? *!
fR
__inference_<lambda>_7592
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:22
StatefulPartitionedCallStatefulPartitionedCall
??
?
"__inference_distribution_fn_117526
	step_type

reward
discount
observation
actor_network_state_0_0
actor_network_state_0_1
actor_network_state_1_0
actor_network_state_1_1p
lactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_matmul_readvariableop_resourceq
mactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasadd_readvariableop_resourcer
nactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_matmul_readvariableop_resources
oactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_matmul_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_matmul_1_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_biasadd_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_matmul_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_matmul_1_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_biasadd_readvariableop_resourcem
iactordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resourcen
jactordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resourceb
^actordistributionrnnnetwork_normalprojectionnetwork_bias_layer_biasadd_readvariableop_resource
identity

identity_1

identity_2

identity_3

identity_4??dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp?eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp?yActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOp?xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp?zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp?{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp?zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp?|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp?UActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp?aActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp?`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOpF
ShapeShapediscount*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice^
packedPackstrided_slice:output:0*
N*
T0*
_output_shapes
:2
packedm
shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2packed:output:0shape_as_tensor:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constp
zerosFillconcat:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosq
shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2packed:output:0shape_as_tensor_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1c
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constx
zeros_1Fillconcat_1:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1q
shape_as_tensor_2Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_2/axis?
concat_2ConcatV2packed:output:0shape_as_tensor_2:output:0concat_2/axis:output:0*
N*
T0*
_output_shapes
:2

concat_2c
zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_2/Constx
zeros_2Fillconcat_2:output:0zeros_2/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_2q
shape_as_tensor_3Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_3`
concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_3/axis?
concat_3ConcatV2packed:output:0shape_as_tensor_3:output:0concat_3/axis:output:0*
N*
T0*
_output_shapes
:2

concat_3c
zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_3/Constx
zeros_3Fillconcat_3:output:0zeros_3/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_3T
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/yb
EqualEqual	step_typeEqual/y:output:0*
T0*#
_output_shapes
:?????????2
EqualN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_1R
subSubRank:output:0Rank_1:output:0*
T0*
_output_shapes
: 2
subK
Shape_1Shape	Equal:z:0*
T0
*
_output_shapes
:2	
Shape_1{
ones/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
ones/Reshape/shaper
ones/ReshapeReshapesub:z:0ones/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones/ReshapeZ

ones/ConstConst*
_output_shapes
: *
dtype0*
value	B :2

ones/Conste
onesFillones/Reshape:output:0ones/Const:output:0*
T0*
_output_shapes
:2
ones`
concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_4/axis?
concat_4ConcatV2Shape_1:output:0ones:output:0concat_4/axis:output:0*
N*
T0*
_output_shapes
:2

concat_4m
ReshapeReshape	Equal:z:0concat_4:output:0*
T0
*'
_output_shapes
:?????????2	
Reshape?
SelectV2SelectV2Reshape:output:0zeros:output:0actor_network_state_0_0*
T0*(
_output_shapes
:??????????2

SelectV2?

SelectV2_1SelectV2Reshape:output:0zeros_1:output:0actor_network_state_0_1*
T0*(
_output_shapes
:??????????2

SelectV2_1?

SelectV2_2SelectV2Reshape:output:0zeros_2:output:0actor_network_state_1_0*
T0*(
_output_shapes
:??????????2

SelectV2_2?

SelectV2_3SelectV2Reshape:output:0zeros_3:output:0actor_network_state_1_1*
T0*(
_output_shapes
:??????????2

SelectV2_3J
Shape_2Shapediscount*
T0*
_output_shapes
:2	
Shape_2x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_2:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1d
packed_1Packstrided_slice_1:output:0*
N*
T0*
_output_shapes
:2

packed_1q
shape_as_tensor_4Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_4`
concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_5/axis?
concat_5ConcatV2packed_1:output:0shape_as_tensor_4:output:0concat_5/axis:output:0*
N*
T0*
_output_shapes
:2

concat_5c
zeros_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_4/Constx
zeros_4Fillconcat_5:output:0zeros_4/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_4q
shape_as_tensor_5Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_5`
concat_6/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_6/axis?
concat_6ConcatV2packed_1:output:0shape_as_tensor_5:output:0concat_6/axis:output:0*
N*
T0*
_output_shapes
:2

concat_6c
zeros_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_5/Constx
zeros_5Fillconcat_6:output:0zeros_5/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_5q
shape_as_tensor_6Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_6`
concat_7/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_7/axis?
concat_7ConcatV2packed_1:output:0shape_as_tensor_6:output:0concat_7/axis:output:0*
N*
T0*
_output_shapes
:2

concat_7c
zeros_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_6/Constx
zeros_6Fillconcat_7:output:0zeros_6/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_6q
shape_as_tensor_7Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_7`
concat_8/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_8/axis?
concat_8ConcatV2packed_1:output:0shape_as_tensor_7:output:0concat_8/axis:output:0*
N*
T0*
_output_shapes
:2

concat_8c
zeros_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_7/Constx
zeros_7Fillconcat_8:output:0zeros_7/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_7X
	Equal_1/yConst*
_output_shapes
: *
dtype0*
value	B : 2
	Equal_1/yh
Equal_1Equal	step_typeEqual_1/y:output:0*
T0*#
_output_shapes
:?????????2	
Equal_1R
Rank_2Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_2R
Rank_3Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_3X
sub_1SubRank_2:output:0Rank_3:output:0*
T0*
_output_shapes
: 2
sub_1M
Shape_3ShapeEqual_1:z:0*
T0
*
_output_shapes
:2	
Shape_3
ones_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
ones_1/Reshape/shapez
ones_1/ReshapeReshape	sub_1:z:0ones_1/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones_1/Reshape^
ones_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ones_1/Constm
ones_1Fillones_1/Reshape:output:0ones_1/Const:output:0*
T0*
_output_shapes
:2
ones_1`
concat_9/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_9/axis?
concat_9ConcatV2Shape_3:output:0ones_1:output:0concat_9/axis:output:0*
N*
T0*
_output_shapes
:2

concat_9s
	Reshape_1ReshapeEqual_1:z:0concat_9:output:0*
T0
*'
_output_shapes
:?????????2
	Reshape_1?

SelectV2_4SelectV2Reshape_1:output:0zeros_4:output:0SelectV2:output:0*
T0*(
_output_shapes
:??????????2

SelectV2_4?

SelectV2_5SelectV2Reshape_1:output:0zeros_5:output:0SelectV2_1:output:0*
T0*(
_output_shapes
:??????????2

SelectV2_5?

SelectV2_6SelectV2Reshape_1:output:0zeros_6:output:0SelectV2_2:output:0*
T0*(
_output_shapes
:??????????2

SelectV2_6?

SelectV2_7SelectV2Reshape_1:output:0zeros_7:output:0SelectV2_3:output:0*
T0*(
_output_shapes
:??????????2

SelectV2_7?
FActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2H
FActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dim?
BActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims
ExpandDimsobservationOActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2D
BActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims?
HActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2J
HActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dim?
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1
ExpandDims	step_typeQActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?????????2F
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1?
[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/ShapeShapeKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2]
[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Shape?
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shape?
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/ReshapeReshapeKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2_
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Const?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/ReshapeReshapefActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:?????????2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Reshape?
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOplactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMulMatMul`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Reshape:output:0kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul?
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpmactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02f
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAddBiasAdd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul:product:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/ReluRelu^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu?
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpReadVariableOpnactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02g
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp?
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMulMatMul`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu:activations:0mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul?
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOpoactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAddBiasAdd`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul:product:0nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/ReluRelu`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/Relu?
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack?
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1?
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2?
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_sliceStridedSlicedActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Shape:output:0tActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2g
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice?
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/ShapeShapebActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/Relu:activations:0*
T0*
_output_shapes
:*
out_type0	2_
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Shape?
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack?
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2q
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1?
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2q
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2?
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1StridedSlicefActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Shape:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack:output:0xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1:output:0xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
end_mask2i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1?
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axis?
^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concatConcatV2nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice:output:0pActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axis:output:0*
N*
T0	*
_output_shapes
:2`
^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat?
_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/ReshapeReshapebActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/Relu:activations:0gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat:output:0*
T0*
Tshape0	*+
_output_shapes
:?????????d2a
_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Reshape?
>ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/yConst*
_output_shapes
: *
dtype0*
value	B : 2@
>ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/y?
<ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/maskEqualMActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1:output:0GActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/y:output:0*
T0*'
_output_shapes
:?????????2>
<ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask?
KActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/RankConst*
_output_shapes
: *
dtype0*
value	B :2M
KActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Rank?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/startConst*
_output_shapes
: *
dtype0*
value	B :2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/start?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/delta?
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/rangeRange[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/start:output:0TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Rank:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/delta:output:0*
_output_shapes
:2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range?
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB"       2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axis?
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concatConcatV2_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0:output:0UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axis:output:0*
N*
T0*
_output_shapes
:2O
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat?
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose	TransposehActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Reshape:output:0VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat:output:0*
T0*+
_output_shapes
:?????????d2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose?
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ShapeShapeTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose:y:0*
T0*
_output_shapes
:2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Shape?
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack?
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1?
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_sliceStridedSliceUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Shape:output:0cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack:output:0eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1:output:0eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/perm?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1	Transpose@ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask:z:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/perm:output:0*
T0
*'
_output_shapes
:?????????2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/y?
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/y:output:0*
T0*
_output_shapes
: 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/y?
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/LessLessTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul:z:0\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/y:output:0*
T0*
_output_shapes
: 2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Const?
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zerosFill\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/y?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/y?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/LessLessVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Const?
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1Fill^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul/y?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Less/y?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/LessLessVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Less?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed/1?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Const?
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2Fill^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Const:output:0*
T0*(
_output_shapes
:??????????2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul/y?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul/y:output:0*
T0*
_output_shapes
: 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Less/y?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/LessLessVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Less/y:output:0*
T0*
_output_shapes
: 2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Less?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed/1?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed/1:output:0*
N*
T0*
_output_shapes
:2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Const?
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3Fill^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Const:output:0*
T0*(
_output_shapes
:??????????2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3?
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/SqueezeSqueezeTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose:y:0*
T0*'
_output_shapes
:?????????d*
squeeze_dims
 2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze?
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1SqueezeVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1:y:0*
T0
*#
_output_shapes
:?????????*
squeeze_dims
 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1?
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/SelectSelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros:output:0SelectV2_4:output:0*
T0*(
_output_shapes
:??????????2O
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select?
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1SelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1:output:0SelectV2_5:output:0*
T0*(
_output_shapes
:??????????2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1?
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_2SelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2:output:0SelectV2_6:output:0*
T0*(
_output_shapes
:??????????2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_2?
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_3SelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3:output:0SelectV2_7:output:0*
T0*(
_output_shapes
:??????????2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_3?
xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02z
xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp?
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMulMatMulWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze:output:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2k
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul?
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02|
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp?
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1MatMulVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select:output:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1?
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/addAddV2sActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul:product:0uActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add?
yActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02{
yActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOp?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAddBiasAddjActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add:z:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Const?
rActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2t
rActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split/split_dim?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/splitSplit{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split/split_dim:output:0sActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/SigmoidSigmoidqActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid?
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_1SigmoidqActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2n
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_1?
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mulMulpActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_1:y:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1:output:0*
T0*(
_output_shapes
:??????????2h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul?
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/TanhTanhqActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_1MulnActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid:y:0kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_1?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add_1AddV2jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul:z:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add_1?
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_2SigmoidqActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2n
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_2?
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh_1TanhlActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2k
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh_1?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_2MulpActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_2:y:0mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_2?
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02|
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp?
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMulMatMullActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_2:z:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul?
|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02~
|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp?
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1MatMulXActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_2:output:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/addAddV2uActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul:product:0wActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add?
{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02}
{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp?
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAddBiasAddlActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add:z:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2n
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Const?
tActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2v
tActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split/split_dim?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/splitSplit}ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split/split_dim:output:0uActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split?
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/SigmoidSigmoidsActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:??????????2n
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid?
nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_1SigmoidsActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:??????????2p
nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_1?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mulMulrActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_1:y:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_3:output:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul?
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/TanhTanhsActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:??????????2k
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_1MulpActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid:y:0mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_1?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add_1AddV2lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul:z:0nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add_1?
nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_2SigmoidsActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:??????????2p
nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_2?
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh_1TanhnActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh_1?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_2MulrActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_2:y:0oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_2?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dim?
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims
ExpandDimsnActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_2:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims?
?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/SqueezeSqueezeZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims:output:0*
T0*(
_output_shapes
:??????????*
squeeze_dims
2A
?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/Squeeze?
`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOpReadVariableOpiactordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02b
`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp?
QActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMulMatMulHActorDistributionRnnNetwork/ActorDistributionRnnNetwork/Squeeze:output:0hActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2S
QActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul?
aActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpReadVariableOpjactordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02c
aActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp?
RActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAddBiasAdd[ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul:product:0iActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2T
RActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd?
AActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2C
AActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape/shape?
;ActorDistributionRnnNetwork/NormalProjectionNetwork/ReshapeReshape[ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd:output:0JActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2=
;ActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape?
8ActorDistributionRnnNetwork/NormalProjectionNetwork/TanhTanhDActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape:output:0*
T0*'
_output_shapes
:?????????2:
8ActorDistributionRnnNetwork/NormalProjectionNetwork/Tanh?
9ActorDistributionRnnNetwork/NormalProjectionNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2;
9ActorDistributionRnnNetwork/NormalProjectionNetwork/mul/x?
7ActorDistributionRnnNetwork/NormalProjectionNetwork/mulMulBActorDistributionRnnNetwork/NormalProjectionNetwork/mul/x:output:0<ActorDistributionRnnNetwork/NormalProjectionNetwork/Tanh:y:0*
T0*'
_output_shapes
:?????????29
7ActorDistributionRnnNetwork/NormalProjectionNetwork/mul?
9ActorDistributionRnnNetwork/NormalProjectionNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2;
9ActorDistributionRnnNetwork/NormalProjectionNetwork/add/x?
7ActorDistributionRnnNetwork/NormalProjectionNetwork/addAddV2BActorDistributionRnnNetwork/NormalProjectionNetwork/add/x:output:0;ActorDistributionRnnNetwork/NormalProjectionNetwork/mul:z:0*
T0*'
_output_shapes
:?????????29
7ActorDistributionRnnNetwork/NormalProjectionNetwork/add?
>ActorDistributionRnnNetwork/NormalProjectionNetwork/zeros_like	ZerosLike;ActorDistributionRnnNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:?????????2@
>ActorDistributionRnnNetwork/NormalProjectionNetwork/zeros_like?
UActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpReadVariableOp^actordistributionrnnnetwork_normalprojectionnetwork_bias_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02W
UActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp?
FActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAddBiasAddBActorDistributionRnnNetwork/NormalProjectionNetwork/zeros_like:y:0]ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2H
FActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd?
CActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2E
CActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1/shape?
=ActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1ReshapeOActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd:output:0LActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2?
=ActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1?
<ActorDistributionRnnNetwork/NormalProjectionNetwork/SoftplusSoftplusFActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2>
<ActorDistributionRnnNetwork/NormalProjectionNetwork/Softplus?
jActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ConstConst*
_output_shapes
: *
dtype0*
value	B :2l
jActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Const?
pActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shapeConst*
_output_shapes
:*
dtype0*
valueB:2r
pActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shape?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/ShapeShapeJActorDistributionRnnNetwork/NormalProjectionNetwork/Softplus:activations:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2?	
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_sliceStridedSlice?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1Pack?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice:output:0*
N*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concatConcatV2?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis:output:0*
N*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_sliceStridedSlice?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice?
jActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ShapeShape;ActorDistributionRnnNetwork/NormalProjectionNetwork/add:z:0*
T0*
_output_shapes
:2l
jActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape?
xActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2z
xActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack?
zActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2|
zActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1?
zActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2|
zActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2?
rActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_sliceStridedSlicesActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2t
rActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice?
rActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgsBroadcastArgs?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice:output:0{ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice:output:0*
_output_shapes
:2t
rActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs?
VActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2X
VActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const?
PActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zerosFillwActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs:r0:0_ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2R
PActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros?
OActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/onesConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2Q
OActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/ones?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shape?
OActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeroConst*
_output_shapes
: *
dtype0*
value	B : 2Q
OActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zero?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ShapeShapeYActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros:output:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgsBroadcastArgs?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape:output:0?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1:output:0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentity?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs:r0:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape?	
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentity?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shapeIdentity?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/ConstConst*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shapeIdentity?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const:output:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape?
[ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2]
[ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis?
VActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concatConcatV2?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape:output:0?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape:output:0dActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis:output:0*
N*
T0*
_output_shapes
:2X
VActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat?
XActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/IdentityIdentity;ActorDistributionRnnNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:?????????2Z
XActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity?
[ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2]
[ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const?
UActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zerosFill_ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat:output:0dActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2W
UActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros?
SActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addAddV2aActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity:output:0^ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros:output:0*
T0*'
_output_shapes
:?????????2U
SActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addm
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/atolm
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/rtolq
Deterministic_1/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic_1/atolq
Deterministic_1/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic_1/rtol?
IdentityIdentityWActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentitylActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_2:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2IdentitylActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add_1:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3IdentitynActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_2:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3?

Identity_4IdentitynActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add_1:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_4q
Deterministic_2/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic_2/atolq
Deterministic_2/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic_2/rtol"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:??????????:??????????:??????????:??????????:::::::::::::2?
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpdActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2?
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpcActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2?
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpfActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp2?
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpeActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp2?
yActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpyActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOp2?
xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOpxActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp2?
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOpzActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp2?
{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp2?
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOpzActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp2?
|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp2?
UActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpUActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp2?
aActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpaActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp2?
`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp:N J
#
_output_shapes
:?????????
#
_user_specified_name	step_type:KG
#
_output_shapes
:?????????
 
_user_specified_namereward:MI
#
_output_shapes
:?????????
"
_user_specified_name
discount:TP
'
_output_shapes
:?????????
%
_user_specified_nameobservation:a]
(
_output_shapes
:??????????
1
_user_specified_nameactor_network_state/0/0:a]
(
_output_shapes
:??????????
1
_user_specified_nameactor_network_state/0/1:a]
(
_output_shapes
:??????????
1
_user_specified_nameactor_network_state/1/0:a]
(
_output_shapes
:??????????
1
_user_specified_nameactor_network_state/1/1
??
?
"__inference__traced_restore_300680
file_prefix 
assignvariableop_global_stepk
gassignvariableop_1_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_kerneli
eassignvariableop_2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasm
iassignvariableop_3_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_kernelk
gassignvariableop_4_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_biasn
jassignvariableop_5_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_kernelx
tassignvariableop_6_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_recurrent_kernell
hassignvariableop_7_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_biasp
lassignvariableop_8_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_1_kernelz
vassignvariableop_9_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_1_recurrent_kernelo
kassignvariableop_10_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_1_bias[
Wassignvariableop_11_actordistributionrnnnetwork_normalprojectionnetwork_bias_layer_biasi
eassignvariableop_12_actordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_kernelg
cassignvariableop_13_actordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_biasV
Rassignvariableop_14_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_2_kernelT
Passignvariableop_15_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_2_biasV
Rassignvariableop_16_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_3_kernelT
Passignvariableop_17_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_3_bias[
Wassignvariableop_18_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_2_kernele
aassignvariableop_19_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_2_recurrent_kernelY
Uassignvariableop_20_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_2_bias[
Wassignvariableop_21_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_3_kernele
aassignvariableop_22_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_3_recurrent_kernelY
Uassignvariableop_23_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_3_bias6
2assignvariableop_24_valuernnnetwork_dense_4_kernel4
0assignvariableop_25_valuernnnetwork_dense_4_bias
identity_27??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/7/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/8/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/9/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/10/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/11/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/12/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/13/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/14/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/15/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/16/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/17/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/18/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/19/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/20/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/21/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/22/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/23/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/24/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_global_stepIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpgassignvariableop_1_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpeassignvariableop_2_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpiassignvariableop_3_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpgassignvariableop_4_actordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpjassignvariableop_5_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOptassignvariableop_6_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOphassignvariableop_7_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOplassignvariableop_8_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpvassignvariableop_9_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_1_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpkassignvariableop_10_actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_lstm_cell_1_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpWassignvariableop_11_actordistributionrnnnetwork_normalprojectionnetwork_bias_layer_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpeassignvariableop_12_actordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpcassignvariableop_13_actordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpRassignvariableop_14_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_2_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpPassignvariableop_15_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_2_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpRassignvariableop_16_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_3_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpPassignvariableop_17_valuernnnetwork_valuernnnetwork_encodingnetwork_dense_3_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpWassignvariableop_18_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_2_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpaassignvariableop_19_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_2_recurrent_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpUassignvariableop_20_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_2_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpWassignvariableop_21_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_3_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpaassignvariableop_22_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_3_recurrent_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpUassignvariableop_23_valuernnnetwork_valuernnnetwork_dynamic_unroll_1_lstm_cell_3_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp2assignvariableop_24_valuernnnetwork_dense_4_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp0assignvariableop_25_valuernnnetwork_dense_4_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_259
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_26Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_26?
Identity_27IdentityIdentity_26:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_27"#
identity_27Identity_27:output:0*}
_input_shapesl
j: ::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
t
$__inference_get_initial_state_116520

batch_size
identity

identity_1

identity_2

identity_3R
packedPack
batch_size*
N*
T0*
_output_shapes
:2
packedm
shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2packed:output:0shape_as_tensor:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constp
zerosFillconcat:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosq
shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2packed:output:0shape_as_tensor_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1c
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constx
zeros_1Fillconcat_1:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1q
shape_as_tensor_2Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_2/axis?
concat_2ConcatV2packed:output:0shape_as_tensor_2:output:0concat_2/axis:output:0*
N*
T0*
_output_shapes
:2

concat_2c
zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_2/Constx
zeros_2Fillconcat_2:output:0zeros_2/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_2q
shape_as_tensor_3Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_3`
concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_3/axis?
concat_3ConcatV2packed:output:0shape_as_tensor_3:output:0concat_3/axis:output:0*
N*
T0*
_output_shapes
:2

concat_3c
zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_3/Constx
zeros_3Fillconcat_3:output:0zeros_3/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_3c
IdentityIdentityzeros:output:0*
T0*(
_output_shapes
:??????????2

Identityi

Identity_1Identityzeros_1:output:0*
T0*(
_output_shapes
:??????????2

Identity_1i

Identity_2Identityzeros_2:output:0*
T0*(
_output_shapes
:??????????2

Identity_2i

Identity_3Identityzeros_3:output:0*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
?
Y
__inference_<lambda>_759
readvariableop_resource
identity	??ReadVariableOpp
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	2
ReadVariableOpj
IdentityIdentityReadVariableOp:value:0^ReadVariableOp*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2 
ReadVariableOpReadVariableOp
??
?
__inference_action_116891
time_step_step_type
time_step_reward
time_step_discount
time_step_observation(
$policy_state_actor_network_state_0_0(
$policy_state_actor_network_state_0_1(
$policy_state_actor_network_state_1_0(
$policy_state_actor_network_state_1_1p
lactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_matmul_readvariableop_resourceq
mactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasadd_readvariableop_resourcer
nactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_matmul_readvariableop_resources
oactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_matmul_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_matmul_1_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_biasadd_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_matmul_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_matmul_1_readvariableop_resource?
?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_biasadd_readvariableop_resourcem
iactordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resourcen
jactordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resourceb
^actordistributionrnnnetwork_normalprojectionnetwork_bias_layer_biasadd_readvariableop_resource
identity

identity_1

identity_2

identity_3

identity_4??dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp?eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp?yActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOp?xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp?zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp?{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp?zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp?|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp?UActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp?aActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp?`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOpP
ShapeShapetime_step_discount*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice^
packedPackstrided_slice:output:0*
N*
T0*
_output_shapes
:2
packedm
shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2packed:output:0shape_as_tensor:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constp
zerosFillconcat:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosq
shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2packed:output:0shape_as_tensor_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1c
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constx
zeros_1Fillconcat_1:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1q
shape_as_tensor_2Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_2/axis?
concat_2ConcatV2packed:output:0shape_as_tensor_2:output:0concat_2/axis:output:0*
N*
T0*
_output_shapes
:2

concat_2c
zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_2/Constx
zeros_2Fillconcat_2:output:0zeros_2/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_2q
shape_as_tensor_3Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_3`
concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_3/axis?
concat_3ConcatV2packed:output:0shape_as_tensor_3:output:0concat_3/axis:output:0*
N*
T0*
_output_shapes
:2

concat_3c
zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_3/Constx
zeros_3Fillconcat_3:output:0zeros_3/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_3T
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/yl
EqualEqualtime_step_step_typeEqual/y:output:0*
T0*#
_output_shapes
:?????????2
EqualN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_1R
subSubRank:output:0Rank_1:output:0*
T0*
_output_shapes
: 2
subK
Shape_1Shape	Equal:z:0*
T0
*
_output_shapes
:2	
Shape_1{
ones/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
ones/Reshape/shaper
ones/ReshapeReshapesub:z:0ones/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones/ReshapeZ

ones/ConstConst*
_output_shapes
: *
dtype0*
value	B :2

ones/Conste
onesFillones/Reshape:output:0ones/Const:output:0*
T0*
_output_shapes
:2
ones`
concat_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_4/axis?
concat_4ConcatV2Shape_1:output:0ones:output:0concat_4/axis:output:0*
N*
T0*
_output_shapes
:2

concat_4m
ReshapeReshape	Equal:z:0concat_4:output:0*
T0
*'
_output_shapes
:?????????2	
Reshape?
SelectV2SelectV2Reshape:output:0zeros:output:0$policy_state_actor_network_state_0_0*
T0*(
_output_shapes
:??????????2

SelectV2?

SelectV2_1SelectV2Reshape:output:0zeros_1:output:0$policy_state_actor_network_state_0_1*
T0*(
_output_shapes
:??????????2

SelectV2_1?

SelectV2_2SelectV2Reshape:output:0zeros_2:output:0$policy_state_actor_network_state_1_0*
T0*(
_output_shapes
:??????????2

SelectV2_2?

SelectV2_3SelectV2Reshape:output:0zeros_3:output:0$policy_state_actor_network_state_1_1*
T0*(
_output_shapes
:??????????2

SelectV2_3T
Shape_2Shapetime_step_discount*
T0*
_output_shapes
:2	
Shape_2x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_2:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1d
packed_1Packstrided_slice_1:output:0*
N*
T0*
_output_shapes
:2

packed_1q
shape_as_tensor_4Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_4`
concat_5/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_5/axis?
concat_5ConcatV2packed_1:output:0shape_as_tensor_4:output:0concat_5/axis:output:0*
N*
T0*
_output_shapes
:2

concat_5c
zeros_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_4/Constx
zeros_4Fillconcat_5:output:0zeros_4/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_4q
shape_as_tensor_5Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_5`
concat_6/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_6/axis?
concat_6ConcatV2packed_1:output:0shape_as_tensor_5:output:0concat_6/axis:output:0*
N*
T0*
_output_shapes
:2

concat_6c
zeros_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_5/Constx
zeros_5Fillconcat_6:output:0zeros_5/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_5q
shape_as_tensor_6Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_6`
concat_7/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_7/axis?
concat_7ConcatV2packed_1:output:0shape_as_tensor_6:output:0concat_7/axis:output:0*
N*
T0*
_output_shapes
:2

concat_7c
zeros_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_6/Constx
zeros_6Fillconcat_7:output:0zeros_6/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_6q
shape_as_tensor_7Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_7`
concat_8/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_8/axis?
concat_8ConcatV2packed_1:output:0shape_as_tensor_7:output:0concat_8/axis:output:0*
N*
T0*
_output_shapes
:2

concat_8c
zeros_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_7/Constx
zeros_7Fillconcat_8:output:0zeros_7/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_7X
	Equal_1/yConst*
_output_shapes
: *
dtype0*
value	B : 2
	Equal_1/yr
Equal_1Equaltime_step_step_typeEqual_1/y:output:0*
T0*#
_output_shapes
:?????????2	
Equal_1R
Rank_2Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_2R
Rank_3Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_3X
sub_1SubRank_2:output:0Rank_3:output:0*
T0*
_output_shapes
: 2
sub_1M
Shape_3ShapeEqual_1:z:0*
T0
*
_output_shapes
:2	
Shape_3
ones_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
ones_1/Reshape/shapez
ones_1/ReshapeReshape	sub_1:z:0ones_1/Reshape/shape:output:0*
T0*
_output_shapes
:2
ones_1/Reshape^
ones_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ones_1/Constm
ones_1Fillones_1/Reshape:output:0ones_1/Const:output:0*
T0*
_output_shapes
:2
ones_1`
concat_9/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_9/axis?
concat_9ConcatV2Shape_3:output:0ones_1:output:0concat_9/axis:output:0*
N*
T0*
_output_shapes
:2

concat_9s
	Reshape_1ReshapeEqual_1:z:0concat_9:output:0*
T0
*'
_output_shapes
:?????????2
	Reshape_1?

SelectV2_4SelectV2Reshape_1:output:0zeros_4:output:0SelectV2:output:0*
T0*(
_output_shapes
:??????????2

SelectV2_4?

SelectV2_5SelectV2Reshape_1:output:0zeros_5:output:0SelectV2_1:output:0*
T0*(
_output_shapes
:??????????2

SelectV2_5?

SelectV2_6SelectV2Reshape_1:output:0zeros_6:output:0SelectV2_2:output:0*
T0*(
_output_shapes
:??????????2

SelectV2_6?

SelectV2_7SelectV2Reshape_1:output:0zeros_7:output:0SelectV2_3:output:0*
T0*(
_output_shapes
:??????????2

SelectV2_7?
FActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2H
FActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dim?
BActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims
ExpandDimstime_step_observationOActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2D
BActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims?
HActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2J
HActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dim?
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1
ExpandDimstime_step_step_typeQActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?????????2F
DActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1?
[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/ShapeShapeKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2]
[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Shape?
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shape?
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/ReshapeReshapeKActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2_
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Const?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/ReshapeReshapefActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Reshape:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:?????????2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Reshape?
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOplactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMulMatMul`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/flatten/Reshape:output:0kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul?
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpmactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02f
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAddBiasAdd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul:product:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/ReluRelu^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu?
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpReadVariableOpnactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02g
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp?
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMulMatMul`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/Relu:activations:0mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul?
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOpoactordistributionrnnnetwork_actordistributionrnnnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAddBiasAdd`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul:product:0nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/ReluRelu`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/Relu?
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack?
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1?
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2?
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_sliceStridedSlicedActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_flatten/Shape:output:0tActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_1:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2g
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice?
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/ShapeShapebActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/Relu:activations:0*
T0*
_output_shapes
:*
out_type0	2_
]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Shape?
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack?
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2q
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1?
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2q
oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2?
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1StridedSlicefActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Shape:output:0vActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack:output:0xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_1:output:0xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
end_mask2i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1?
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2e
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axis?
^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concatConcatV2nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice:output:0pActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/strided_slice_1:output:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat/axis:output:0*
N*
T0	*
_output_shapes
:2`
^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat?
_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/ReshapeReshapebActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/Relu:activations:0gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/concat:output:0*
T0*
Tshape0	*+
_output_shapes
:?????????d2a
_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Reshape?
>ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/yConst*
_output_shapes
: *
dtype0*
value	B : 2@
>ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/y?
<ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/maskEqualMActorDistributionRnnNetwork/ActorDistributionRnnNetwork/ExpandDims_1:output:0GActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask/y:output:0*
T0*'
_output_shapes
:?????????2>
<ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask?
KActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/RankConst*
_output_shapes
: *
dtype0*
value	B :2M
KActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Rank?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/startConst*
_output_shapes
: *
dtype0*
value	B :2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/start?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/delta?
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/rangeRange[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/start:output:0TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Rank:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range/delta:output:0*
_output_shapes
:2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range?
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB"       2X
VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axis?
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concatConcatV2_ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/values_0:output:0UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/range:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat/axis:output:0*
N*
T0*
_output_shapes
:2O
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat?
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose	TransposehActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/batch_unflatten/Reshape:output:0VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/concat:output:0*
T0*+
_output_shapes
:?????????d2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose?
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ShapeShapeTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose:y:0*
T0*
_output_shapes
:2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Shape?
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
ZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack?
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1?
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_sliceStridedSliceUActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Shape:output:0cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack:output:0eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_1:output:0eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/perm?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1	Transpose@ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/mask:z:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1/perm:output:0*
T0
*'
_output_shapes
:?????????2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/y?
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul/y:output:0*
T0*
_output_shapes
: 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/y?
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/LessLessTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/mul:z:0\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less/y:output:0*
T0*
_output_shapes
: 2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Less?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Const?
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zerosFill\ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/packed:output:0[ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2N
LActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/y?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/y?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/LessLessVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/mul:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Less?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Const?
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1Fill^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/packed:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul/y?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Less/y?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/LessLessVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/mul:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Less?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed/1?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Const?
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2Fill^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/packed:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2/Const:output:0*
T0*(
_output_shapes
:??????????2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul/y?
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mulMul]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul/y:output:0*
T0*
_output_shapes
: 2T
RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Less/y?
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/LessLessVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/mul:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Less/y:output:0*
T0*
_output_shapes
: 2U
SActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Less?
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2Y
WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed/1?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packedPack]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/strided_slice:output:0`ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed/1:output:0*
N*
T0*
_output_shapes
:2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed?
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2V
TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Const?
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3Fill^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/packed:output:0]ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3/Const:output:0*
T0*(
_output_shapes
:??????????2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3?
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/SqueezeSqueezeTActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose:y:0*
T0*'
_output_shapes
:?????????d*
squeeze_dims
 2P
NActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze?
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1SqueezeVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/transpose_1:y:0*
T0
*#
_output_shapes
:?????????*
squeeze_dims
 2R
PActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1?
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/SelectSelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros:output:0SelectV2_4:output:0*
T0*(
_output_shapes
:??????????2O
MActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select?
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1SelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_1:output:0SelectV2_5:output:0*
T0*(
_output_shapes
:??????????2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1?
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_2SelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_2:output:0SelectV2_6:output:0*
T0*(
_output_shapes
:??????????2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_2?
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_3SelectYActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze_1:output:0WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/zeros_3:output:0SelectV2_7:output:0*
T0*(
_output_shapes
:??????????2Q
OActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_3?
xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02z
xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp?
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMulMatMulWActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Squeeze:output:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2k
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul?
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02|
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp?
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1MatMulVActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select:output:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1?
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/addAddV2sActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul:product:0uActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add?
yActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02{
yActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOp?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAddBiasAddjActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add:z:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Const?
rActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2t
rActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split/split_dim?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/splitSplit{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split/split_dim:output:0sActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/SigmoidSigmoidqActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid?
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_1SigmoidqActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????2n
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_1?
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mulMulpActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_1:y:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_1:output:0*
T0*(
_output_shapes
:??????????2h
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul?
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/TanhTanhqActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split:output:2*
T0*(
_output_shapes
:??????????2i
gActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_1MulnActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid:y:0kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_1?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add_1AddV2jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul:z:0lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add_1?
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_2SigmoidqActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????2n
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_2?
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh_1TanhlActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????2k
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh_1?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_2MulpActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Sigmoid_2:y:0mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_2?
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02|
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp?
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMulMatMullActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_2:z:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul?
|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02~
|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp?
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1MatMulXActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_2:output:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2o
mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/addAddV2uActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul:product:0wActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add?
{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp?actordistributionrnnnetwork_actordistributionrnnnetwork_dynamic_unroll_stacked_rnn_cells_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02}
{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp?
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAddBiasAddlActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add:z:0?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2n
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Const?
tActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2v
tActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split/split_dim?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/splitSplit}ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split/split_dim:output:0uActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split?
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/SigmoidSigmoidsActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:??????????2n
lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid?
nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_1SigmoidsActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:??????????2p
nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_1?
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mulMulrActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_1:y:0XActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/Select_3:output:0*
T0*(
_output_shapes
:??????????2j
hActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul?
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/TanhTanhsActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:??????????2k
iActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_1MulpActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid:y:0mActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_1?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add_1AddV2lActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul:z:0nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add_1?
nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_2SigmoidsActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:??????????2p
nActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_2?
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh_1TanhnActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:??????????2m
kActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh_1?
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_2MulrActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Sigmoid_2:y:0oActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:??????????2l
jActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_2?
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2W
UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dim?
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims
ExpandDimsnActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_2:z:0^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2S
QActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims?
?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/SqueezeSqueezeZActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/ExpandDims:output:0*
T0*(
_output_shapes
:??????????*
squeeze_dims
2A
?ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/Squeeze?
`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOpReadVariableOpiactordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02b
`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp?
QActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMulMatMulHActorDistributionRnnNetwork/ActorDistributionRnnNetwork/Squeeze:output:0hActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2S
QActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul?
aActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpReadVariableOpjactordistributionrnnnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02c
aActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp?
RActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAddBiasAdd[ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul:product:0iActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2T
RActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd?
AActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2C
AActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape/shape?
;ActorDistributionRnnNetwork/NormalProjectionNetwork/ReshapeReshape[ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd:output:0JActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2=
;ActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape?
8ActorDistributionRnnNetwork/NormalProjectionNetwork/TanhTanhDActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape:output:0*
T0*'
_output_shapes
:?????????2:
8ActorDistributionRnnNetwork/NormalProjectionNetwork/Tanh?
9ActorDistributionRnnNetwork/NormalProjectionNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2;
9ActorDistributionRnnNetwork/NormalProjectionNetwork/mul/x?
7ActorDistributionRnnNetwork/NormalProjectionNetwork/mulMulBActorDistributionRnnNetwork/NormalProjectionNetwork/mul/x:output:0<ActorDistributionRnnNetwork/NormalProjectionNetwork/Tanh:y:0*
T0*'
_output_shapes
:?????????29
7ActorDistributionRnnNetwork/NormalProjectionNetwork/mul?
9ActorDistributionRnnNetwork/NormalProjectionNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2;
9ActorDistributionRnnNetwork/NormalProjectionNetwork/add/x?
7ActorDistributionRnnNetwork/NormalProjectionNetwork/addAddV2BActorDistributionRnnNetwork/NormalProjectionNetwork/add/x:output:0;ActorDistributionRnnNetwork/NormalProjectionNetwork/mul:z:0*
T0*'
_output_shapes
:?????????29
7ActorDistributionRnnNetwork/NormalProjectionNetwork/add?
>ActorDistributionRnnNetwork/NormalProjectionNetwork/zeros_like	ZerosLike;ActorDistributionRnnNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:?????????2@
>ActorDistributionRnnNetwork/NormalProjectionNetwork/zeros_like?
UActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpReadVariableOp^actordistributionrnnnetwork_normalprojectionnetwork_bias_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02W
UActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp?
FActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAddBiasAddBActorDistributionRnnNetwork/NormalProjectionNetwork/zeros_like:y:0]ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2H
FActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd?
CActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2E
CActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1/shape?
=ActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1ReshapeOActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd:output:0LActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2?
=ActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1?
<ActorDistributionRnnNetwork/NormalProjectionNetwork/SoftplusSoftplusFActorDistributionRnnNetwork/NormalProjectionNetwork/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2>
<ActorDistributionRnnNetwork/NormalProjectionNetwork/Softplus?
jActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ConstConst*
_output_shapes
: *
dtype0*
value	B :2l
jActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Const?
pActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shapeConst*
_output_shapes
:*
dtype0*
valueB:2r
pActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shape?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/ShapeShapeJActorDistributionRnnNetwork/NormalProjectionNetwork/Softplus:activations:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2?	
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_sliceStridedSlice?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1Pack?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice:output:0*
N*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concatConcatV2?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis:output:0*
N*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_sliceStridedSlice?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice?
jActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ShapeShape;ActorDistributionRnnNetwork/NormalProjectionNetwork/add:z:0*
T0*
_output_shapes
:2l
jActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape?
xActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2z
xActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack?
zActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2|
zActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1?
zActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2|
zActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2?
rActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_sliceStridedSlicesActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1:output:0?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2t
rActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice?
rActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgsBroadcastArgs?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice:output:0{ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice:output:0*
_output_shapes
:2t
rActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs?
VActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2X
VActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const?
PActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zerosFillwActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs:r0:0_ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2R
PActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros?
OActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/onesConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2Q
OActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/ones?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shape?
OActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeroConst*
_output_shapes
: *
dtype0*
value	B : 2Q
OActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zero?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ShapeShapeYActorDistributionRnnNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros:output:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgsBroadcastArgs?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape:output:0?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1:output:0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentity?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs:r0:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape?	
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentity?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shapeIdentity?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/ConstConst*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shapeIdentity?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const:output:0*
T0*
_output_shapes
:2?
?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape?
[ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2]
[ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis?
VActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concatConcatV2?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape:output:0?ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape:output:0dActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis:output:0*
N*
T0*
_output_shapes
:2X
VActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat?
XActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/IdentityIdentity;ActorDistributionRnnNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:?????????2Z
XActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity?
[ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2]
[ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const?
UActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zerosFill_ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat:output:0dActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2W
UActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros?
SActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addAddV2aActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity:output:0^ActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros:output:0*
T0*'
_output_shapes
:?????????2U
SActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addm
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/atolm
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/rtol?
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shape?
Deterministic_1/sample/ShapeShapeWActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0*
T0*
_output_shapes
:2
Deterministic_1/sample/Shape?
'Deterministic_1/sample/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2)
'Deterministic_1/sample/BroadcastArgs/s1?
$Deterministic_1/sample/BroadcastArgsBroadcastArgs%Deterministic_1/sample/Shape:output:00Deterministic_1/sample/BroadcastArgs/s1:output:0*
_output_shapes
:2&
$Deterministic_1/sample/BroadcastArgs
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const?
&Deterministic_1/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:2(
&Deterministic_1/sample/concat/values_0?
"Deterministic_1/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"Deterministic_1/sample/concat/axis?
Deterministic_1/sample/concatConcatV2/Deterministic_1/sample/concat/values_0:output:0)Deterministic_1/sample/BroadcastArgs:r0:0%Deterministic_1/sample/Const:output:0+Deterministic_1/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Deterministic_1/sample/concat?
"Deterministic_1/sample/BroadcastToBroadcastToWActorDistributionRnnNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0&Deterministic_1/sample/concat:output:0*
T0*4
_output_shapes"
 :??????????????????2$
"Deterministic_1/sample/BroadcastTo?
Deterministic_1/sample/Shape_1Shape+Deterministic_1/sample/BroadcastTo:output:0*
T0*
_output_shapes
:2 
Deterministic_1/sample/Shape_1?
*Deterministic_1/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*Deterministic_1/sample/strided_slice/stack?
,Deterministic_1/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,Deterministic_1/sample/strided_slice/stack_1?
,Deterministic_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,Deterministic_1/sample/strided_slice/stack_2?
$Deterministic_1/sample/strided_sliceStridedSlice'Deterministic_1/sample/Shape_1:output:03Deterministic_1/sample/strided_slice/stack:output:05Deterministic_1/sample/strided_slice/stack_1:output:05Deterministic_1/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2&
$Deterministic_1/sample/strided_slice?
$Deterministic_1/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$Deterministic_1/sample/concat_1/axis?
Deterministic_1/sample/concat_1ConcatV2,Deterministic_1/sample/sample_shape:output:0-Deterministic_1/sample/strided_slice:output:0-Deterministic_1/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
Deterministic_1/sample/concat_1?
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0(Deterministic_1/sample/concat_1:output:0*
T0*'
_output_shapes
:?????????2 
Deterministic_1/sample/Reshapew
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????2
clip_by_value?
IdentityIdentityclip_by_value:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentitylActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/mul_2:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2IdentitylActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/add_1:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3IdentitynActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/mul_2:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3?

Identity_4IdentitynActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/add_1:z:0e^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpd^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpg^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpf^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpz^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpy^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp|^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp}^ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOpV^ActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpb^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpa^ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:??????????:??????????:??????????:??????????:::::::::::::2?
dActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpdActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2?
cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpcActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2?
fActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpfActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp2?
eActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpeActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp2?
yActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOpyActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/BiasAdd/ReadVariableOp2?
xActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOpxActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul/ReadVariableOp2?
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOpzActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell/MatMul_1/ReadVariableOp2?
{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp{ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/BiasAdd/ReadVariableOp2?
zActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOpzActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul/ReadVariableOp2?
|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp|ActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/stacked_rnn_cells/lstm_cell_1/MatMul_1/ReadVariableOp2?
UActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpUActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp2?
aActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpaActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp2?
`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp`ActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp:X T
#
_output_shapes
:?????????
-
_user_specified_nametime_step/step_type:UQ
#
_output_shapes
:?????????
*
_user_specified_nametime_step/reward:WS
#
_output_shapes
:?????????
,
_user_specified_nametime_step/discount:^Z
'
_output_shapes
:?????????
/
_user_specified_nametime_step/observation:nj
(
_output_shapes
:??????????
>
_user_specified_name&$policy_state/actor_network_state/0/0:nj
(
_output_shapes
:??????????
>
_user_specified_name&$policy_state/actor_network_state/0/1:nj
(
_output_shapes
:??????????
>
_user_specified_name&$policy_state/actor_network_state/1/0:nj
(
_output_shapes
:??????????
>
_user_specified_name&$policy_state/actor_network_state/1/1
?	
t
$__inference_signature_wrapper_300462

batch_size
identity

identity_1

identity_2

identity_3?
PartitionedCallPartitionedCall
batch_size*
Tin
2*
Tout
2*
_collective_manager_ids
 *d
_output_shapesR
P:??????????:??????????:??????????:??????????* 
_read_only_resource_inputs
 *4
config_proto$"

CPU

GPU2	 *0,1J 8? *3
f.R,
*__inference_function_with_signature_1165292
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identityq

Identity_1IdentityPartitionedCall:output:1*
T0*(
_output_shapes
:??????????2

Identity_1q

Identity_2IdentityPartitionedCall:output:2*
T0*(
_output_shapes
:??????????2

Identity_2q

Identity_3IdentityPartitionedCall:output:3*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
?
t
$__inference_get_initial_state_117554

batch_size
identity

identity_1

identity_2

identity_3R
packedPack
batch_size*
N*
T0*
_output_shapes
:2
packedm
shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2packed:output:0shape_as_tensor:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constp
zerosFillconcat:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosq
shape_as_tensor_1Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2packed:output:0shape_as_tensor_1:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1c
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constx
zeros_1Fillconcat_1:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1q
shape_as_tensor_2Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_2`
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_2/axis?
concat_2ConcatV2packed:output:0shape_as_tensor_2:output:0concat_2/axis:output:0*
N*
T0*
_output_shapes
:2

concat_2c
zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_2/Constx
zeros_2Fillconcat_2:output:0zeros_2/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_2q
shape_as_tensor_3Const*
_output_shapes
:*
dtype0*
valueB:?2
shape_as_tensor_3`
concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_3/axis?
concat_3ConcatV2packed:output:0shape_as_tensor_3:output:0concat_3/axis:output:0*
N*
T0*
_output_shapes
:2

concat_3c
zeros_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_3/Constx
zeros_3Fillconcat_3:output:0zeros_3/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_3c
IdentityIdentityzeros:output:0*
T0*(
_output_shapes
:??????????2

Identityi

Identity_1Identityzeros_1:output:0*
T0*(
_output_shapes
:??????????2

Identity_1i

Identity_2Identityzeros_2:output:0*
T0*(
_output_shapes
:??????????2

Identity_2i

Identity_3Identityzeros_3:output:0*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
?
,
*__inference_function_with_signature_116560?
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *4
config_proto$"

CPU

GPU2	 *0,1J 8? *!
fR
__inference_<lambda>_7622
PartitionedCall*
_input_shapes 
?
^
$__inference_signature_wrapper_300470
unknown
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *4
config_proto$"

CPU

GPU2	 *0,1J 8? *3
f.R,
*__inference_function_with_signature_1165492
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:22
StatefulPartitionedCallStatefulPartitionedCall
?
&
$__inference_signature_wrapper_300474?
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *4
config_proto$"

CPU

GPU2	 *0,1J 8? *3
f.R,
*__inference_function_with_signature_1165602
PartitionedCall*
_input_shapes 
?
?
$__inference_signature_wrapper_300449
discount
observation

reward
	step_type
actor_network_state_0_0
actor_network_state_0_1
actor_network_state_1_0
actor_network_state_1_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11
identity

identity_1

identity_2

identity_3

identity_4??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationactor_network_state_0_0actor_network_state_0_1actor_network_state_1_0actor_network_state_1_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11* 
Tin
2*
Tout	
2*
_collective_manager_ids
 *w
_output_shapese
c:?????????:??????????:??????????:??????????:??????????*/
_read_only_resource_inputs
	
*4
config_proto$"

CPU

GPU2	 *0,1J 8? *3
f.R,
*__inference_function_with_signature_1164412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_3?

Identity_4Identity StatefulPartitionedCall:output:4^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*?
_input_shapes?
?:?????????:?????????:?????????:?????????:??????????:??????????:??????????:??????????:::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:?????????
$
_user_specified_name
0/discount:VR
'
_output_shapes
:?????????
'
_user_specified_name0/observation:MI
#
_output_shapes
:?????????
"
_user_specified_name
0/reward:PL
#
_output_shapes
:?????????
%
_user_specified_name0/step_type:c_
(
_output_shapes
:??????????
3
_user_specified_name1/actor_network_state/0/0:c_
(
_output_shapes
:??????????
3
_user_specified_name1/actor_network_state/0/1:c_
(
_output_shapes
:??????????
3
_user_specified_name1/actor_network_state/1/0:c_
(
_output_shapes
:??????????
3
_user_specified_name1/actor_network_state/1/1
/

__inference_<lambda>_762*
_input_shapes "?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
action?
4

0/discount&
action_0/discount:0?????????
>
0/observation-
action_0/observation:0?????????
0
0/reward$
action_0/reward:0?????????
6
0/step_type'
action_0/step_type:0?????????
W
1/actor_network_state/0/0:
"action_1/actor_network_state/0/0:0??????????
W
1/actor_network_state/0/1:
"action_1/actor_network_state/0/1:0??????????
W
1/actor_network_state/1/0:
"action_1/actor_network_state/1/0:0??????????
W
1/actor_network_state/1/1:
"action_1/actor_network_state/1/1:0??????????:
action0
StatefulPartitionedCall:0?????????R
state/actor_network_state/0/01
StatefulPartitionedCall:1??????????R
state/actor_network_state/0/11
StatefulPartitionedCall:2??????????R
state/actor_network_state/1/01
StatefulPartitionedCall:3??????????R
state/actor_network_state/1/11
StatefulPartitionedCall:4??????????tensorflow/serving/predict*?
get_initial_state?
2

batch_size$
get_initial_state_batch_size:0 D
actor_network_state/0/0)
PartitionedCall:0??????????D
actor_network_state/0/1)
PartitionedCall:1??????????D
actor_network_state/1/0)
PartitionedCall:2??????????D
actor_network_state/1/1)
PartitionedCall:3??????????tensorflow/serving/predict*,
get_metadatatensorflow/serving/predict*Z
get_train_stepH*
int64!
StatefulPartitionedCall_1:0	 tensorflow/serving/predict:??
?
policy_state_spec

train_step
metadata
model_variables
_all_assets

signatures
?action
?distribution
?get_initial_state
?get_metadata
?get_train_step"
_generic_user_object
9
actor_network_state"
trackable_dict_wrapper
:	 (2global_step
 "
trackable_dict_wrapper
?
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
 24"
trackable_tuple_wrapper
5
!0
"1
#2"
trackable_list_wrapper
d
?action
?get_initial_state
?get_train_step
?get_metadata"
signature_map
/
$0
%1"
trackable_tuple_wrapper
g:e	?2TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/kernel
a:_?2RActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense/bias
i:g	?d2VActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/kernel
b:`d2TActorDistributionRnnNetwork/ActorDistributionRnnNetwork/EncodingNetwork/dense_1/bias
j:h	d?2WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/kernel
u:s
??2aActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/recurrent_kernel
d:b?2UActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell/bias
m:k
??2YActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/kernel
w:u
??2cActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/recurrent_kernel
f:d?2WActorDistributionRnnNetwork/ActorDistributionRnnNetwork/dynamic_unroll/lstm_cell_1/bias
Q:O2CActorDistributionRnnNetwork/NormalProjectionNetwork/bias_layer/bias
d:b	?2QActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/kernel
]:[2OActorDistributionRnnNetwork/NormalProjectionNetwork/means_projection_layer/bias
Q:O	?2>ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/kernel
K:I?2<ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_2/bias
Q:O	?d2>ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_3/kernel
J:Hd2<ValueRnnNetwork/ValueRnnNetwork/EncodingNetwork/dense_3/bias
V:T	d?2CValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/kernel
a:_
??2MValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/recurrent_kernel
P:N?2AValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_2/bias
W:U
??2CValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/kernel
a:_
??2MValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/recurrent_kernel
P:N?2AValueRnnNetwork/ValueRnnNetwork/dynamic_unroll_1/lstm_cell_3/bias
1:/	?2ValueRnnNetwork/dense_4/kernel
*:(2ValueRnnNetwork/dense_4/bias
1
&ref
&1"
trackable_tuple_wrapper
1
'ref
'1"
trackable_tuple_wrapper
1
(ref
(1"
trackable_tuple_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
9
actor_network_state"
trackable_dict_wrapper
3
	&state
&1"
trackable_tuple_wrapper
u
)_actor_network
&_policy_state_spec
*_policy_step_spec
+_value_network"
_generic_user_object
?
_state_spec
,_lstm_encoder
-_projection_networks
.	variables
/regularization_losses
0trainable_variables
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "ActorDistributionRnnNetwork", "name": "ActorDistributionRnnNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
3
	&state
&1"
trackable_tuple_wrapper
?
2_state_spec
3_lstm_encoder
4_postprocessing_layers
5	variables
6regularization_losses
7trainable_variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "ValueRnnNetwork", "name": "ValueRnnNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?
_state_spec
9_input_encoder
:_lstm_network
;_output_encoder
<	variables
=regularization_losses
>trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LSTMEncodingNetwork", "name": "ActorDistributionRnnNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?
@_means_projection_layer
	A_bias
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "NormalProjectionNetwork", "name": "NormalProjectionNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
~
0
	1

2
3
4
5
6
7
8
9
10
11
12"
trackable_list_wrapper
 "
trackable_list_wrapper
~
0
	1

2
3
4
5
6
7
8
9
10
11
12"
trackable_list_wrapper
?
.	variables
Flayer_metrics
Glayer_regularization_losses
/regularization_losses
0trainable_variables
Hnon_trainable_variables

Ilayers
Jmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
/
K0
L1"
trackable_tuple_wrapper
?
2_state_spec
M_input_encoder
N_lstm_network
O_output_encoder
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LSTMEncodingNetwork", "name": "ValueRnnNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?

kernel
 bias
T	variables
Uregularization_losses
Vtrainable_variables
W	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.03, "maxval": 0.03, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 128]}}
v
0
1
2
3
4
5
6
7
8
9
10
 11"
trackable_list_wrapper
 "
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
8
9
10
 11"
trackable_list_wrapper
?
5	variables
Xlayer_metrics
Ylayer_regularization_losses
6regularization_losses
7trainable_variables
Znon_trainable_variables

[layers
\metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
]_postprocessing_layers
^	variables
_regularization_losses
`trainable_variables
a	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "EncodingNetwork", "name": "EncodingNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?
bcell
c	variables
dregularization_losses
etrainable_variables
f	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "DynamicUnroll", "name": "dynamic_unroll", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dynamic_unroll", "trainable": true, "dtype": "float32", "parallel_iterations": 20, "swap_memory": null, "cell": {"class_name": "StackedRNNCells", "config": {"name": "stacked_rnn_cells", "trainable": true, "dtype": "float32", "cells": [{"class_name": "LSTMCell", "config": {"name": "lstm_cell", "trainable": true, "dtype": "float32", "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTMCell", "config": {"name": "lstm_cell_1", "trainable": true, "dtype": "float32", "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}]}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1, 100]}}
 "
trackable_list_wrapper
f
0
	1

2
3
4
5
6
7
8
9"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
	1

2
3
4
5
6
7
8
9"
trackable_list_wrapper
?
<	variables
glayer_metrics
hlayer_regularization_losses
=regularization_losses
>trainable_variables
inon_trainable_variables

jlayers
kmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

kernel
bias
l	variables
mregularization_losses
ntrainable_variables
o	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "means_projection_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "means_projection_layer", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 0.1, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 128]}}
?
bias
p	variables
qregularization_losses
rtrainable_variables
s	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BiasLayer", "name": "bias_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "bias_layer", "trainable": true, "dtype": "float32", "bias_initializer": {"class_name": "Constant", "config": {"value": -0.8697231582271624}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1]}}
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
?
B	variables
tlayer_metrics
ulayer_regularization_losses
Cregularization_losses
Dtrainable_variables
vnon_trainable_variables

wlayers
xmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
y_postprocessing_layers
z	variables
{regularization_losses
|trainable_variables
}	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "EncodingNetwork", "name": "EncodingNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?
~cell
	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "DynamicUnroll", "name": "dynamic_unroll_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dynamic_unroll_1", "trainable": true, "dtype": "float32", "parallel_iterations": 20, "swap_memory": null, "cell": {"class_name": "StackedRNNCells", "config": {"name": "stacked_rnn_cells_1", "trainable": true, "dtype": "float32", "cells": [{"class_name": "LSTMCell", "config": {"name": "lstm_cell_2", "trainable": true, "dtype": "float32", "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTMCell", "config": {"name": "lstm_cell_3", "trainable": true, "dtype": "float32", "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}]}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1, 100]}}
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
?
P	variables
?layer_metrics
 ?layer_regularization_losses
Qregularization_losses
Rtrainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
?
T	variables
?layer_metrics
 ?layer_regularization_losses
Uregularization_losses
Vtrainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
8
?0
?1
?2"
trackable_list_wrapper
<
0
	1

2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
	1

2
3"
trackable_list_wrapper
?
^	variables
?layer_metrics
 ?layer_regularization_losses
_regularization_losses
`trainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

?cells
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "StackedRNNCells", "name": "stacked_rnn_cells", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "stacked_rnn_cells", "trainable": true, "dtype": "float32", "cells": [{"class_name": "LSTMCell", "config": {"name": "lstm_cell", "trainable": true, "dtype": "float32", "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTMCell", "config": {"name": "lstm_cell_1", "trainable": true, "dtype": "float32", "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}]}}
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
?
c	variables
?layer_metrics
 ?layer_regularization_losses
dregularization_losses
etrainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
l	variables
?layer_metrics
 ?layer_regularization_losses
mregularization_losses
ntrainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
p	variables
?layer_metrics
 ?layer_regularization_losses
qregularization_losses
rtrainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
8
?0
?1
?2"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
?
z	variables
?layer_metrics
 ?layer_regularization_losses
{regularization_losses
|trainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

?cells
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "StackedRNNCells", "name": "stacked_rnn_cells_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "stacked_rnn_cells_1", "trainable": true, "dtype": "float32", "cells": [{"class_name": "LSTMCell", "config": {"name": "lstm_cell_2", "trainable": true, "dtype": "float32", "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTMCell", "config": {"name": "lstm_cell_3", "trainable": true, "dtype": "float32", "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}]}}
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
?
	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

kernel
	bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1]}}
?


kernel
bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 200]}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
8
?0
?1
?2"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
b0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

kernel
bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1]}}
?

kernel
bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 2.0, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 200]}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
8
?0
?1
?2"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
~0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
	1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.

0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

kernel
recurrent_kernel
bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LSTMCell", "name": "lstm_cell", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell", "trainable": true, "dtype": "float32", "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
?

kernel
recurrent_kernel
bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LSTMCell", "name": "lstm_cell_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_1", "trainable": true, "dtype": "float32", "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

kernel
recurrent_kernel
bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LSTMCell", "name": "lstm_cell_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_2", "trainable": true, "dtype": "float32", "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
?

kernel
recurrent_kernel
bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LSTMCell", "name": "lstm_cell_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_3", "trainable": true, "dtype": "float32", "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
?
?	variables
?layer_metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?non_trainable_variables
?layers
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?2?
__inference_action_116891
__inference_action_117217?
???
FullArgSpec8
args0?-
jself
j	time_step
jpolicy_state
jseed
varargs
 
varkw
 
defaults?	
? 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
"__inference_distribution_fn_117526?
???
FullArgSpec(
args ?
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_get_initial_state_117554?
???
FullArgSpec!
args?
jself
j
batch_size
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference_<lambda>_762"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference_<lambda>_759"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_300449
0/discount0/observation0/reward0/step_type1/actor_network_state/0/01/actor_network_state/0/11/actor_network_state/1/01/actor_network_state/1/1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_300462
batch_size"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_300470"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_300474"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?	
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?	
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?	
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?	
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec?
args7?4
jself
jinputs
j
outer_rank

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec?
args7?4
jself
jinputs
j
outer_rank

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?	
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?	
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecH
args@?=
jself
jinputs
jinitial_state
j
reset_mask

jtraining
varargs
 
varkw
 
defaults?

 

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecH
args@?=
jself
jinputs
jinitial_state
j
reset_mask

jtraining
varargs
 
varkw
 
defaults?

 

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecH
args@?=
jself
jinputs
jinitial_state
j
reset_mask

jtraining
varargs
 
varkw
 
defaults?

 

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecH
args@?=
jself
jinputs
jinitial_state
j
reset_mask

jtraining
varargs
 
varkw
 
defaults?

 

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec@
args8?5
jself
jinputs
jstates
j	constants

jtraining
varargs
 
varkwjkwargs
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec@
args8?5
jself
jinputs
jstates
j	constants

jtraining
varargs
 
varkwjkwargs
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec@
args8?5
jself
jinputs
jstates
j	constants

jtraining
varargs
 
varkwjkwargs
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec@
args8?5
jself
jinputs
jstates
j	constants

jtraining
varargs
 
varkwjkwargs
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 7
__inference_<lambda>_759?

? 
? "? 	0
__inference_<lambda>_762?

? 
? "? ?
__inference_action_116891?	
???
???
???
TimeStep6
	step_type)?&
time_step/step_type?????????0
reward&?#
time_step/reward?????????4
discount(?%
time_step/discount?????????>
observation/?,
time_step/observation?????????
???
?
actor_network_state???
???
??<
$policy_state/actor_network_state/0/0??????????
??<
$policy_state/actor_network_state/0/1??????????
???
??<
$policy_state/actor_network_state/1/0??????????
??<
$policy_state/actor_network_state/1/1??????????

 
? "???

PolicyStep*
action ?
action??????????
state???
?
actor_network_state???
w?t
8?5
state/actor_network_state/0/0??????????
8?5
state/actor_network_state/0/1??????????
w?t
8?5
state/actor_network_state/1/0??????????
8?5
state/actor_network_state/1/1??????????
info? ?
__inference_action_117217?	
???
???
???
TimeStep,
	step_type?
	step_type?????????&
reward?
reward?????????*
discount?
discount?????????4
observation%?"
observation?????????
???
?
actor_network_state???
k?h
2?/
actor_network_state/0/0??????????
2?/
actor_network_state/0/1??????????
k?h
2?/
actor_network_state/1/0??????????
2?/
actor_network_state/1/1??????????

 
? "???

PolicyStep*
action ?
action??????????
state???
?
actor_network_state???
w?t
8?5
state/actor_network_state/0/0??????????
8?5
state/actor_network_state/0/1??????????
w?t
8?5
state/actor_network_state/1/0??????????
8?5
state/actor_network_state/1/1??????????
info? ?
"__inference_distribution_fn_117526?	
???
???
???
TimeStep,
	step_type?
	step_type?????????&
reward?
reward?????????*
discount?
discount?????????4
observation%?"
observation?????????
???
?
actor_network_state???
k?h
2?/
actor_network_state/0/0??????????
2?/
actor_network_state/0/1??????????
k?h
2?/
actor_network_state/1/0??????????
2?/
actor_network_state/1/1??????????
? "???

PolicyStep?
action?????Ã??~
`
C?@
"j tf_agents.policies.greedy_policy
jDeterministicWithLogProb
.?+
)
loc"?
Identity?????????
? _TFPTypeSpec?
state???
?
actor_network_state???
w?t
8?5
state/actor_network_state/0/0??????????
8?5
state/actor_network_state/0/1??????????
w?t
8?5
state/actor_network_state/1/0??????????
8?5
state/actor_network_state/1/1??????????
info? ?
$__inference_get_initial_state_117554?"?
?
?

batch_size 
? "???
?
actor_network_state???
k?h
2?/
actor_network_state/0/0??????????
2?/
actor_network_state/0/1??????????
k?h
2?/
actor_network_state/1/0??????????
2?/
actor_network_state/1/1???????????
$__inference_signature_wrapper_300449?	
???
? 
???
.

0/discount ?

0/discount?????????
8
0/observation'?$
0/observation?????????
*
0/reward?
0/reward?????????
0
0/step_type!?
0/step_type?????????
Q
1/actor_network_state/0/04?1
1/actor_network_state/0/0??????????
Q
1/actor_network_state/0/14?1
1/actor_network_state/0/1??????????
Q
1/actor_network_state/1/04?1
1/actor_network_state/1/0??????????
Q
1/actor_network_state/1/14?1
1/actor_network_state/1/1??????????"???
*
action ?
action?????????
Y
state/actor_network_state/0/08?5
state/actor_network_state/0/0??????????
Y
state/actor_network_state/0/18?5
state/actor_network_state/0/1??????????
Y
state/actor_network_state/1/08?5
state/actor_network_state/1/0??????????
Y
state/actor_network_state/1/18?5
state/actor_network_state/1/1???????????
$__inference_signature_wrapper_300462?0?-
? 
&?#
!

batch_size?

batch_size "???
M
actor_network_state/0/02?/
actor_network_state/0/0??????????
M
actor_network_state/0/12?/
actor_network_state/0/1??????????
M
actor_network_state/1/02?/
actor_network_state/1/0??????????
M
actor_network_state/1/12?/
actor_network_state/1/1??????????X
$__inference_signature_wrapper_3004700?

? 
? "?

int64?
int64 	<
$__inference_signature_wrapper_300474?

? 
? "? 