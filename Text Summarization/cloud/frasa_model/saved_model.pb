??
??
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
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
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

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
-
Sqrt
x"T
y"T"
Ttype:

2
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
`
meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean
Y
mean/Read/ReadVariableOpReadVariableOpmean*
_output_shapes
:*
dtype0
h
varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance
a
variance/Read/ReadVariableOpReadVariableOpvariance*
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0	
{
dense_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_54/kernel
t
#dense_54/kernel/Read/ReadVariableOpReadVariableOpdense_54/kernel*
_output_shapes
:	?*
dtype0
s
dense_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_54/bias
l
!dense_54/bias/Read/ReadVariableOpReadVariableOpdense_54/bias*
_output_shapes	
:?*
dtype0
|
dense_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_55/kernel
u
#dense_55/kernel/Read/ReadVariableOpReadVariableOpdense_55/kernel* 
_output_shapes
:
??*
dtype0
s
dense_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_55/bias
l
!dense_55/bias/Read/ReadVariableOpReadVariableOpdense_55/bias*
_output_shapes	
:?*
dtype0
{
dense_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_56/kernel
t
#dense_56/kernel/Read/ReadVariableOpReadVariableOpdense_56/kernel*
_output_shapes
:	?*
dtype0
r
dense_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_56/bias
k
!dense_56/bias/Read/ReadVariableOpReadVariableOpdense_56/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/dense_54/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_54/kernel/m
?
*Adam/dense_54/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_54/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_54/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_54/bias/m
z
(Adam/dense_54/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_54/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_55/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_55/kernel/m
?
*Adam/dense_55/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_55/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_55/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_55/bias/m
z
(Adam/dense_55/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_55/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_56/kernel/m
?
*Adam/dense_56/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_56/bias/m
y
(Adam/dense_56/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_54/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_54/kernel/v
?
*Adam/dense_54/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_54/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_54/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_54/bias/v
z
(Adam/dense_54/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_54/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_55/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_55/kernel/v
?
*Adam/dense_55/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_55/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_55/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_55/bias/v
z
(Adam/dense_55/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_55/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_56/kernel/v
?
*Adam/dense_56/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_56/bias/v
y
(Adam/dense_56/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?&
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?&
value?&B?& B?&
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
trainable_variables
	variables
regularization_losses
		keras_api


signatures
]
state_variables
_broadcast_shape
mean
variance
	count
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
 trainable_variables
!	variables
"	keras_api
?
#iter

$beta_1

%beta_2
	&decay
'learning_ratemAmBmCmDmEmFvGvHvIvJvKvL
*
0
1
2
3
4
5
?
0
1
2
3
4
5
6
7
8
 
?
(non_trainable_variables
trainable_variables
	variables
)layer_regularization_losses
*metrics

+layers
,layer_metrics
regularization_losses
 
#
mean
variance
	count
 
NL
VARIABLE_VALUEmean4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEvariance8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEcount5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUE
 
[Y
VARIABLE_VALUEdense_54/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_54/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
-non_trainable_variables
regularization_losses
trainable_variables
	variables
.metrics

/layers
0layer_metrics
1layer_regularization_losses
[Y
VARIABLE_VALUEdense_55/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_55/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
2non_trainable_variables
regularization_losses
trainable_variables
	variables
3metrics

4layers
5layer_metrics
6layer_regularization_losses
[Y
VARIABLE_VALUEdense_56/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_56/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
7non_trainable_variables
regularization_losses
 trainable_variables
!	variables
8metrics

9layers
:layer_metrics
;layer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
 

<0

0
1
2
3
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
4
	=total
	>count
?	variables
@	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

=0
>1

?	variables
~|
VARIABLE_VALUEAdam/dense_54/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_54/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_55/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_55/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_56/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_56/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_54/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_54/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_55/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_55/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_56/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_56/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
&serving_default_normalization_22_inputPlaceholder*0
_output_shapes
:??????????????????*
dtype0*%
shape:??????????????????
?
StatefulPartitionedCallStatefulPartitionedCall&serving_default_normalization_22_inputmeanvariancedense_54/kerneldense_54/biasdense_55/kerneldense_55/biasdense_56/kerneldense_56/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_5913024
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamemean/Read/ReadVariableOpvariance/Read/ReadVariableOpcount/Read/ReadVariableOp#dense_54/kernel/Read/ReadVariableOp!dense_54/bias/Read/ReadVariableOp#dense_55/kernel/Read/ReadVariableOp!dense_55/bias/Read/ReadVariableOp#dense_56/kernel/Read/ReadVariableOp!dense_56/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_54/kernel/m/Read/ReadVariableOp(Adam/dense_54/bias/m/Read/ReadVariableOp*Adam/dense_55/kernel/m/Read/ReadVariableOp(Adam/dense_55/bias/m/Read/ReadVariableOp*Adam/dense_56/kernel/m/Read/ReadVariableOp(Adam/dense_56/bias/m/Read/ReadVariableOp*Adam/dense_54/kernel/v/Read/ReadVariableOp(Adam/dense_54/bias/v/Read/ReadVariableOp*Adam/dense_55/kernel/v/Read/ReadVariableOp(Adam/dense_55/bias/v/Read/ReadVariableOp*Adam/dense_56/kernel/v/Read/ReadVariableOp(Adam/dense_56/bias/v/Read/ReadVariableOpConst*)
Tin"
 2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_save_5913306
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemeanvariancecountdense_54/kerneldense_54/biasdense_55/kerneldense_55/biasdense_56/kerneldense_56/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcount_1Adam/dense_54/kernel/mAdam/dense_54/bias/mAdam/dense_55/kernel/mAdam/dense_55/bias/mAdam/dense_56/kernel/mAdam/dense_56/bias/mAdam/dense_54/kernel/vAdam/dense_54/bias/vAdam/dense_55/kernel/vAdam/dense_55/bias/vAdam/dense_56/kernel/vAdam/dense_56/bias/v*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__traced_restore_5913400??
?<
?
"__inference__wrapped_model_5912756
normalization_22_inputB
>sequential_20_normalization_22_reshape_readvariableop_resourceD
@sequential_20_normalization_22_reshape_1_readvariableop_resource9
5sequential_20_dense_54_matmul_readvariableop_resource:
6sequential_20_dense_54_biasadd_readvariableop_resource9
5sequential_20_dense_55_matmul_readvariableop_resource:
6sequential_20_dense_55_biasadd_readvariableop_resource9
5sequential_20_dense_56_matmul_readvariableop_resource:
6sequential_20_dense_56_biasadd_readvariableop_resource
identity??-sequential_20/dense_54/BiasAdd/ReadVariableOp?,sequential_20/dense_54/MatMul/ReadVariableOp?-sequential_20/dense_55/BiasAdd/ReadVariableOp?,sequential_20/dense_55/MatMul/ReadVariableOp?-sequential_20/dense_56/BiasAdd/ReadVariableOp?,sequential_20/dense_56/MatMul/ReadVariableOp?5sequential_20/normalization_22/Reshape/ReadVariableOp?7sequential_20/normalization_22/Reshape_1/ReadVariableOp?
5sequential_20/normalization_22/Reshape/ReadVariableOpReadVariableOp>sequential_20_normalization_22_reshape_readvariableop_resource*
_output_shapes
:*
dtype027
5sequential_20/normalization_22/Reshape/ReadVariableOp?
,sequential_20/normalization_22/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2.
,sequential_20/normalization_22/Reshape/shape?
&sequential_20/normalization_22/ReshapeReshape=sequential_20/normalization_22/Reshape/ReadVariableOp:value:05sequential_20/normalization_22/Reshape/shape:output:0*
T0*
_output_shapes

:2(
&sequential_20/normalization_22/Reshape?
7sequential_20/normalization_22/Reshape_1/ReadVariableOpReadVariableOp@sequential_20_normalization_22_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype029
7sequential_20/normalization_22/Reshape_1/ReadVariableOp?
.sequential_20/normalization_22/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      20
.sequential_20/normalization_22/Reshape_1/shape?
(sequential_20/normalization_22/Reshape_1Reshape?sequential_20/normalization_22/Reshape_1/ReadVariableOp:value:07sequential_20/normalization_22/Reshape_1/shape:output:0*
T0*
_output_shapes

:2*
(sequential_20/normalization_22/Reshape_1?
"sequential_20/normalization_22/subSubnormalization_22_input/sequential_20/normalization_22/Reshape:output:0*
T0*'
_output_shapes
:?????????2$
"sequential_20/normalization_22/sub?
#sequential_20/normalization_22/SqrtSqrt1sequential_20/normalization_22/Reshape_1:output:0*
T0*
_output_shapes

:2%
#sequential_20/normalization_22/Sqrt?
(sequential_20/normalization_22/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32*
(sequential_20/normalization_22/Maximum/y?
&sequential_20/normalization_22/MaximumMaximum'sequential_20/normalization_22/Sqrt:y:01sequential_20/normalization_22/Maximum/y:output:0*
T0*
_output_shapes

:2(
&sequential_20/normalization_22/Maximum?
&sequential_20/normalization_22/truedivRealDiv&sequential_20/normalization_22/sub:z:0*sequential_20/normalization_22/Maximum:z:0*
T0*'
_output_shapes
:?????????2(
&sequential_20/normalization_22/truediv?
,sequential_20/dense_54/MatMul/ReadVariableOpReadVariableOp5sequential_20_dense_54_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,sequential_20/dense_54/MatMul/ReadVariableOp?
sequential_20/dense_54/MatMulMatMul*sequential_20/normalization_22/truediv:z:04sequential_20/dense_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_20/dense_54/MatMul?
-sequential_20/dense_54/BiasAdd/ReadVariableOpReadVariableOp6sequential_20_dense_54_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_20/dense_54/BiasAdd/ReadVariableOp?
sequential_20/dense_54/BiasAddBiasAdd'sequential_20/dense_54/MatMul:product:05sequential_20/dense_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_20/dense_54/BiasAdd?
sequential_20/dense_54/ReluRelu'sequential_20/dense_54/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_20/dense_54/Relu?
,sequential_20/dense_55/MatMul/ReadVariableOpReadVariableOp5sequential_20_dense_55_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_20/dense_55/MatMul/ReadVariableOp?
sequential_20/dense_55/MatMulMatMul)sequential_20/dense_54/Relu:activations:04sequential_20/dense_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_20/dense_55/MatMul?
-sequential_20/dense_55/BiasAdd/ReadVariableOpReadVariableOp6sequential_20_dense_55_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_20/dense_55/BiasAdd/ReadVariableOp?
sequential_20/dense_55/BiasAddBiasAdd'sequential_20/dense_55/MatMul:product:05sequential_20/dense_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_20/dense_55/BiasAdd?
sequential_20/dense_55/ReluRelu'sequential_20/dense_55/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_20/dense_55/Relu?
,sequential_20/dense_56/MatMul/ReadVariableOpReadVariableOp5sequential_20_dense_56_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,sequential_20/dense_56/MatMul/ReadVariableOp?
sequential_20/dense_56/MatMulMatMul)sequential_20/dense_55/Relu:activations:04sequential_20/dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_20/dense_56/MatMul?
-sequential_20/dense_56/BiasAdd/ReadVariableOpReadVariableOp6sequential_20_dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_20/dense_56/BiasAdd/ReadVariableOp?
sequential_20/dense_56/BiasAddBiasAdd'sequential_20/dense_56/MatMul:product:05sequential_20/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_20/dense_56/BiasAdd?
IdentityIdentity'sequential_20/dense_56/BiasAdd:output:0.^sequential_20/dense_54/BiasAdd/ReadVariableOp-^sequential_20/dense_54/MatMul/ReadVariableOp.^sequential_20/dense_55/BiasAdd/ReadVariableOp-^sequential_20/dense_55/MatMul/ReadVariableOp.^sequential_20/dense_56/BiasAdd/ReadVariableOp-^sequential_20/dense_56/MatMul/ReadVariableOp6^sequential_20/normalization_22/Reshape/ReadVariableOp8^sequential_20/normalization_22/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:??????????????????::::::::2^
-sequential_20/dense_54/BiasAdd/ReadVariableOp-sequential_20/dense_54/BiasAdd/ReadVariableOp2\
,sequential_20/dense_54/MatMul/ReadVariableOp,sequential_20/dense_54/MatMul/ReadVariableOp2^
-sequential_20/dense_55/BiasAdd/ReadVariableOp-sequential_20/dense_55/BiasAdd/ReadVariableOp2\
,sequential_20/dense_55/MatMul/ReadVariableOp,sequential_20/dense_55/MatMul/ReadVariableOp2^
-sequential_20/dense_56/BiasAdd/ReadVariableOp-sequential_20/dense_56/BiasAdd/ReadVariableOp2\
,sequential_20/dense_56/MatMul/ReadVariableOp,sequential_20/dense_56/MatMul/ReadVariableOp2n
5sequential_20/normalization_22/Reshape/ReadVariableOp5sequential_20/normalization_22/Reshape/ReadVariableOp2r
7sequential_20/normalization_22/Reshape_1/ReadVariableOp7sequential_20/normalization_22/Reshape_1/ReadVariableOp:h d
0
_output_shapes
:??????????????????
0
_user_specified_namenormalization_22_input
?	
?
E__inference_dense_54_layer_call_and_return_conditional_losses_5913151

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?$
?
J__inference_sequential_20_layer_call_and_return_conditional_losses_5912921

inputs4
0normalization_22_reshape_readvariableop_resource6
2normalization_22_reshape_1_readvariableop_resource
dense_54_5912905
dense_54_5912907
dense_55_5912910
dense_55_5912912
dense_56_5912915
dense_56_5912917
identity?? dense_54/StatefulPartitionedCall? dense_55/StatefulPartitionedCall? dense_56/StatefulPartitionedCall?'normalization_22/Reshape/ReadVariableOp?)normalization_22/Reshape_1/ReadVariableOp?
'normalization_22/Reshape/ReadVariableOpReadVariableOp0normalization_22_reshape_readvariableop_resource*
_output_shapes
:*
dtype02)
'normalization_22/Reshape/ReadVariableOp?
normalization_22/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
normalization_22/Reshape/shape?
normalization_22/ReshapeReshape/normalization_22/Reshape/ReadVariableOp:value:0'normalization_22/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_22/Reshape?
)normalization_22/Reshape_1/ReadVariableOpReadVariableOp2normalization_22_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02+
)normalization_22/Reshape_1/ReadVariableOp?
 normalization_22/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 normalization_22/Reshape_1/shape?
normalization_22/Reshape_1Reshape1normalization_22/Reshape_1/ReadVariableOp:value:0)normalization_22/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_22/Reshape_1?
normalization_22/subSubinputs!normalization_22/Reshape:output:0*
T0*'
_output_shapes
:?????????2
normalization_22/sub?
normalization_22/SqrtSqrt#normalization_22/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_22/Sqrt}
normalization_22/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_22/Maximum/y?
normalization_22/MaximumMaximumnormalization_22/Sqrt:y:0#normalization_22/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_22/Maximum?
normalization_22/truedivRealDivnormalization_22/sub:z:0normalization_22/Maximum:z:0*
T0*'
_output_shapes
:?????????2
normalization_22/truediv?
 dense_54/StatefulPartitionedCallStatefulPartitionedCallnormalization_22/truediv:z:0dense_54_5912905dense_54_5912907*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_54_layer_call_and_return_conditional_losses_59127842"
 dense_54/StatefulPartitionedCall?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0dense_55_5912910dense_55_5912912*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_55_layer_call_and_return_conditional_losses_59128112"
 dense_55/StatefulPartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_5912915dense_56_5912917*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_56_layer_call_and_return_conditional_losses_59128372"
 dense_56/StatefulPartitionedCall?
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0!^dense_54/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall(^normalization_22/Reshape/ReadVariableOp*^normalization_22/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:??????????????????::::::::2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2R
'normalization_22/Reshape/ReadVariableOp'normalization_22/Reshape/ReadVariableOp2V
)normalization_22/Reshape_1/ReadVariableOp)normalization_22/Reshape_1/ReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?

*__inference_dense_55_layer_call_fn_5913180

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_55_layer_call_and_return_conditional_losses_59128112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?>
?
 __inference__traced_save_5913306
file_prefix#
savev2_mean_read_readvariableop'
#savev2_variance_read_readvariableop$
 savev2_count_read_readvariableop	.
*savev2_dense_54_kernel_read_readvariableop,
(savev2_dense_54_bias_read_readvariableop.
*savev2_dense_55_kernel_read_readvariableop,
(savev2_dense_55_bias_read_readvariableop.
*savev2_dense_56_kernel_read_readvariableop,
(savev2_dense_56_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_54_kernel_m_read_readvariableop3
/savev2_adam_dense_54_bias_m_read_readvariableop5
1savev2_adam_dense_55_kernel_m_read_readvariableop3
/savev2_adam_dense_55_bias_m_read_readvariableop5
1savev2_adam_dense_56_kernel_m_read_readvariableop3
/savev2_adam_dense_56_bias_m_read_readvariableop5
1savev2_adam_dense_54_kernel_v_read_readvariableop3
/savev2_adam_dense_54_bias_v_read_readvariableop5
1savev2_adam_dense_55_kernel_v_read_readvariableop3
/savev2_adam_dense_55_bias_v_read_readvariableop5
1savev2_adam_dense_56_kernel_v_read_readvariableop3
/savev2_adam_dense_56_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_mean_read_readvariableop#savev2_variance_read_readvariableop savev2_count_read_readvariableop*savev2_dense_54_kernel_read_readvariableop(savev2_dense_54_bias_read_readvariableop*savev2_dense_55_kernel_read_readvariableop(savev2_dense_55_bias_read_readvariableop*savev2_dense_56_kernel_read_readvariableop(savev2_dense_56_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_54_kernel_m_read_readvariableop/savev2_adam_dense_54_bias_m_read_readvariableop1savev2_adam_dense_55_kernel_m_read_readvariableop/savev2_adam_dense_55_bias_m_read_readvariableop1savev2_adam_dense_56_kernel_m_read_readvariableop/savev2_adam_dense_56_bias_m_read_readvariableop1savev2_adam_dense_54_kernel_v_read_readvariableop/savev2_adam_dense_54_bias_v_read_readvariableop1savev2_adam_dense_55_kernel_v_read_readvariableop/savev2_adam_dense_55_bias_v_read_readvariableop1savev2_adam_dense_56_kernel_v_read_readvariableop/savev2_adam_dense_56_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *+
dtypes!
2		2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: ::: :	?:?:
??:?:	?:: : : : : : : :	?:?:
??:?:	?::	?:?:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :%!

_output_shapes
:	?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 	

_output_shapes
::


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::%!

_output_shapes
:	?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: 
?
?
%__inference_signature_wrapper_5913024
normalization_22_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallnormalization_22_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_59127562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:??????????????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall:h d
0
_output_shapes
:??????????????????
0
_user_specified_namenormalization_22_input
?/
?
J__inference_sequential_20_layer_call_and_return_conditional_losses_5913061

inputs4
0normalization_22_reshape_readvariableop_resource6
2normalization_22_reshape_1_readvariableop_resource+
'dense_54_matmul_readvariableop_resource,
(dense_54_biasadd_readvariableop_resource+
'dense_55_matmul_readvariableop_resource,
(dense_55_biasadd_readvariableop_resource+
'dense_56_matmul_readvariableop_resource,
(dense_56_biasadd_readvariableop_resource
identity??dense_54/BiasAdd/ReadVariableOp?dense_54/MatMul/ReadVariableOp?dense_55/BiasAdd/ReadVariableOp?dense_55/MatMul/ReadVariableOp?dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOp?'normalization_22/Reshape/ReadVariableOp?)normalization_22/Reshape_1/ReadVariableOp?
'normalization_22/Reshape/ReadVariableOpReadVariableOp0normalization_22_reshape_readvariableop_resource*
_output_shapes
:*
dtype02)
'normalization_22/Reshape/ReadVariableOp?
normalization_22/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
normalization_22/Reshape/shape?
normalization_22/ReshapeReshape/normalization_22/Reshape/ReadVariableOp:value:0'normalization_22/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_22/Reshape?
)normalization_22/Reshape_1/ReadVariableOpReadVariableOp2normalization_22_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02+
)normalization_22/Reshape_1/ReadVariableOp?
 normalization_22/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 normalization_22/Reshape_1/shape?
normalization_22/Reshape_1Reshape1normalization_22/Reshape_1/ReadVariableOp:value:0)normalization_22/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_22/Reshape_1?
normalization_22/subSubinputs!normalization_22/Reshape:output:0*
T0*'
_output_shapes
:?????????2
normalization_22/sub?
normalization_22/SqrtSqrt#normalization_22/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_22/Sqrt}
normalization_22/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_22/Maximum/y?
normalization_22/MaximumMaximumnormalization_22/Sqrt:y:0#normalization_22/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_22/Maximum?
normalization_22/truedivRealDivnormalization_22/sub:z:0normalization_22/Maximum:z:0*
T0*'
_output_shapes
:?????????2
normalization_22/truediv?
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_54/MatMul/ReadVariableOp?
dense_54/MatMulMatMulnormalization_22/truediv:z:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_54/MatMul?
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_54/BiasAdd/ReadVariableOp?
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_54/BiasAddt
dense_54/ReluReludense_54/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_54/Relu?
dense_55/MatMul/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_55/MatMul/ReadVariableOp?
dense_55/MatMulMatMuldense_54/Relu:activations:0&dense_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_55/MatMul?
dense_55/BiasAdd/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_55/BiasAdd/ReadVariableOp?
dense_55/BiasAddBiasAdddense_55/MatMul:product:0'dense_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_55/BiasAddt
dense_55/ReluReludense_55/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_55/Relu?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_56/MatMul/ReadVariableOp?
dense_56/MatMulMatMuldense_55/Relu:activations:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_56/MatMul?
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_56/BiasAdd/ReadVariableOp?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_56/BiasAdd?
IdentityIdentitydense_56/BiasAdd:output:0 ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp ^dense_55/BiasAdd/ReadVariableOp^dense_55/MatMul/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp(^normalization_22/Reshape/ReadVariableOp*^normalization_22/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:??????????????????::::::::2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp2B
dense_55/BiasAdd/ReadVariableOpdense_55/BiasAdd/ReadVariableOp2@
dense_55/MatMul/ReadVariableOpdense_55/MatMul/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2R
'normalization_22/Reshape/ReadVariableOp'normalization_22/Reshape/ReadVariableOp2V
)normalization_22/Reshape_1/ReadVariableOp)normalization_22/Reshape_1/ReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_55_layer_call_and_return_conditional_losses_5913171

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_56_layer_call_and_return_conditional_losses_5912837

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_54_layer_call_and_return_conditional_losses_5912784

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

*__inference_dense_54_layer_call_fn_5913160

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_54_layer_call_and_return_conditional_losses_59127842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_55_layer_call_and_return_conditional_losses_5912811

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_dense_56_layer_call_fn_5913199

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_56_layer_call_and_return_conditional_losses_59128372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_sequential_20_layer_call_fn_5912993
normalization_22_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallnormalization_22_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_20_layer_call_and_return_conditional_losses_59129742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:??????????????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall:h d
0
_output_shapes
:??????????????????
0
_user_specified_namenormalization_22_input
?$
?
J__inference_sequential_20_layer_call_and_return_conditional_losses_5912886
normalization_22_input4
0normalization_22_reshape_readvariableop_resource6
2normalization_22_reshape_1_readvariableop_resource
dense_54_5912870
dense_54_5912872
dense_55_5912875
dense_55_5912877
dense_56_5912880
dense_56_5912882
identity?? dense_54/StatefulPartitionedCall? dense_55/StatefulPartitionedCall? dense_56/StatefulPartitionedCall?'normalization_22/Reshape/ReadVariableOp?)normalization_22/Reshape_1/ReadVariableOp?
'normalization_22/Reshape/ReadVariableOpReadVariableOp0normalization_22_reshape_readvariableop_resource*
_output_shapes
:*
dtype02)
'normalization_22/Reshape/ReadVariableOp?
normalization_22/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
normalization_22/Reshape/shape?
normalization_22/ReshapeReshape/normalization_22/Reshape/ReadVariableOp:value:0'normalization_22/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_22/Reshape?
)normalization_22/Reshape_1/ReadVariableOpReadVariableOp2normalization_22_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02+
)normalization_22/Reshape_1/ReadVariableOp?
 normalization_22/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 normalization_22/Reshape_1/shape?
normalization_22/Reshape_1Reshape1normalization_22/Reshape_1/ReadVariableOp:value:0)normalization_22/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_22/Reshape_1?
normalization_22/subSubnormalization_22_input!normalization_22/Reshape:output:0*
T0*'
_output_shapes
:?????????2
normalization_22/sub?
normalization_22/SqrtSqrt#normalization_22/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_22/Sqrt}
normalization_22/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_22/Maximum/y?
normalization_22/MaximumMaximumnormalization_22/Sqrt:y:0#normalization_22/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_22/Maximum?
normalization_22/truedivRealDivnormalization_22/sub:z:0normalization_22/Maximum:z:0*
T0*'
_output_shapes
:?????????2
normalization_22/truediv?
 dense_54/StatefulPartitionedCallStatefulPartitionedCallnormalization_22/truediv:z:0dense_54_5912870dense_54_5912872*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_54_layer_call_and_return_conditional_losses_59127842"
 dense_54/StatefulPartitionedCall?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0dense_55_5912875dense_55_5912877*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_55_layer_call_and_return_conditional_losses_59128112"
 dense_55/StatefulPartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_5912880dense_56_5912882*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_56_layer_call_and_return_conditional_losses_59128372"
 dense_56/StatefulPartitionedCall?
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0!^dense_54/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall(^normalization_22/Reshape/ReadVariableOp*^normalization_22/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:??????????????????::::::::2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2R
'normalization_22/Reshape/ReadVariableOp'normalization_22/Reshape/ReadVariableOp2V
)normalization_22/Reshape_1/ReadVariableOp)normalization_22/Reshape_1/ReadVariableOp:h d
0
_output_shapes
:??????????????????
0
_user_specified_namenormalization_22_input
?v
?
#__inference__traced_restore_5913400
file_prefix
assignvariableop_mean
assignvariableop_1_variance
assignvariableop_2_count&
"assignvariableop_3_dense_54_kernel$
 assignvariableop_4_dense_54_bias&
"assignvariableop_5_dense_55_kernel$
 assignvariableop_6_dense_55_bias&
"assignvariableop_7_dense_56_kernel$
 assignvariableop_8_dense_56_bias 
assignvariableop_9_adam_iter#
assignvariableop_10_adam_beta_1#
assignvariableop_11_adam_beta_2"
assignvariableop_12_adam_decay*
&assignvariableop_13_adam_learning_rate
assignvariableop_14_total
assignvariableop_15_count_1.
*assignvariableop_16_adam_dense_54_kernel_m,
(assignvariableop_17_adam_dense_54_bias_m.
*assignvariableop_18_adam_dense_55_kernel_m,
(assignvariableop_19_adam_dense_55_bias_m.
*assignvariableop_20_adam_dense_56_kernel_m,
(assignvariableop_21_adam_dense_56_bias_m.
*assignvariableop_22_adam_dense_54_kernel_v,
(assignvariableop_23_adam_dense_54_bias_v.
*assignvariableop_24_adam_dense_55_kernel_v,
(assignvariableop_25_adam_dense_55_bias_v.
*assignvariableop_26_adam_dense_56_kernel_v,
(assignvariableop_27_adam_dense_56_bias_v
identity_29??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_meanIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_varianceIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_countIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_54_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp assignvariableop_4_dense_54_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_55_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense_55_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_56_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense_56_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_54_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_54_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_55_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_55_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_56_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense_56_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_54_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense_54_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_55_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_dense_55_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_dense_56_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_dense_56_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_279
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_28?
Identity_29IdentityIdentity_28:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_29"#
identity_29Identity_29:output:0*?
_input_shapest
r: ::::::::::::::::::::::::::::2$
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
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272(
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
?/
?
J__inference_sequential_20_layer_call_and_return_conditional_losses_5913098

inputs4
0normalization_22_reshape_readvariableop_resource6
2normalization_22_reshape_1_readvariableop_resource+
'dense_54_matmul_readvariableop_resource,
(dense_54_biasadd_readvariableop_resource+
'dense_55_matmul_readvariableop_resource,
(dense_55_biasadd_readvariableop_resource+
'dense_56_matmul_readvariableop_resource,
(dense_56_biasadd_readvariableop_resource
identity??dense_54/BiasAdd/ReadVariableOp?dense_54/MatMul/ReadVariableOp?dense_55/BiasAdd/ReadVariableOp?dense_55/MatMul/ReadVariableOp?dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOp?'normalization_22/Reshape/ReadVariableOp?)normalization_22/Reshape_1/ReadVariableOp?
'normalization_22/Reshape/ReadVariableOpReadVariableOp0normalization_22_reshape_readvariableop_resource*
_output_shapes
:*
dtype02)
'normalization_22/Reshape/ReadVariableOp?
normalization_22/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
normalization_22/Reshape/shape?
normalization_22/ReshapeReshape/normalization_22/Reshape/ReadVariableOp:value:0'normalization_22/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_22/Reshape?
)normalization_22/Reshape_1/ReadVariableOpReadVariableOp2normalization_22_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02+
)normalization_22/Reshape_1/ReadVariableOp?
 normalization_22/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 normalization_22/Reshape_1/shape?
normalization_22/Reshape_1Reshape1normalization_22/Reshape_1/ReadVariableOp:value:0)normalization_22/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_22/Reshape_1?
normalization_22/subSubinputs!normalization_22/Reshape:output:0*
T0*'
_output_shapes
:?????????2
normalization_22/sub?
normalization_22/SqrtSqrt#normalization_22/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_22/Sqrt}
normalization_22/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_22/Maximum/y?
normalization_22/MaximumMaximumnormalization_22/Sqrt:y:0#normalization_22/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_22/Maximum?
normalization_22/truedivRealDivnormalization_22/sub:z:0normalization_22/Maximum:z:0*
T0*'
_output_shapes
:?????????2
normalization_22/truediv?
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_54/MatMul/ReadVariableOp?
dense_54/MatMulMatMulnormalization_22/truediv:z:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_54/MatMul?
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_54/BiasAdd/ReadVariableOp?
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_54/BiasAddt
dense_54/ReluReludense_54/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_54/Relu?
dense_55/MatMul/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_55/MatMul/ReadVariableOp?
dense_55/MatMulMatMuldense_54/Relu:activations:0&dense_55/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_55/MatMul?
dense_55/BiasAdd/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_55/BiasAdd/ReadVariableOp?
dense_55/BiasAddBiasAdddense_55/MatMul:product:0'dense_55/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_55/BiasAddt
dense_55/ReluReludense_55/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_55/Relu?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_56/MatMul/ReadVariableOp?
dense_56/MatMulMatMuldense_55/Relu:activations:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_56/MatMul?
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_56/BiasAdd/ReadVariableOp?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_56/BiasAdd?
IdentityIdentitydense_56/BiasAdd:output:0 ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp ^dense_55/BiasAdd/ReadVariableOp^dense_55/MatMul/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp(^normalization_22/Reshape/ReadVariableOp*^normalization_22/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:??????????????????::::::::2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp2B
dense_55/BiasAdd/ReadVariableOpdense_55/BiasAdd/ReadVariableOp2@
dense_55/MatMul/ReadVariableOpdense_55/MatMul/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2R
'normalization_22/Reshape/ReadVariableOp'normalization_22/Reshape/ReadVariableOp2V
)normalization_22/Reshape_1/ReadVariableOp)normalization_22/Reshape_1/ReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
/__inference_sequential_20_layer_call_fn_5912940
normalization_22_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallnormalization_22_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_20_layer_call_and_return_conditional_losses_59129212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:??????????????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall:h d
0
_output_shapes
:??????????????????
0
_user_specified_namenormalization_22_input
?$
?
J__inference_sequential_20_layer_call_and_return_conditional_losses_5912854
normalization_22_input4
0normalization_22_reshape_readvariableop_resource6
2normalization_22_reshape_1_readvariableop_resource
dense_54_5912795
dense_54_5912797
dense_55_5912822
dense_55_5912824
dense_56_5912848
dense_56_5912850
identity?? dense_54/StatefulPartitionedCall? dense_55/StatefulPartitionedCall? dense_56/StatefulPartitionedCall?'normalization_22/Reshape/ReadVariableOp?)normalization_22/Reshape_1/ReadVariableOp?
'normalization_22/Reshape/ReadVariableOpReadVariableOp0normalization_22_reshape_readvariableop_resource*
_output_shapes
:*
dtype02)
'normalization_22/Reshape/ReadVariableOp?
normalization_22/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
normalization_22/Reshape/shape?
normalization_22/ReshapeReshape/normalization_22/Reshape/ReadVariableOp:value:0'normalization_22/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_22/Reshape?
)normalization_22/Reshape_1/ReadVariableOpReadVariableOp2normalization_22_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02+
)normalization_22/Reshape_1/ReadVariableOp?
 normalization_22/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 normalization_22/Reshape_1/shape?
normalization_22/Reshape_1Reshape1normalization_22/Reshape_1/ReadVariableOp:value:0)normalization_22/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_22/Reshape_1?
normalization_22/subSubnormalization_22_input!normalization_22/Reshape:output:0*
T0*'
_output_shapes
:?????????2
normalization_22/sub?
normalization_22/SqrtSqrt#normalization_22/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_22/Sqrt}
normalization_22/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_22/Maximum/y?
normalization_22/MaximumMaximumnormalization_22/Sqrt:y:0#normalization_22/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_22/Maximum?
normalization_22/truedivRealDivnormalization_22/sub:z:0normalization_22/Maximum:z:0*
T0*'
_output_shapes
:?????????2
normalization_22/truediv?
 dense_54/StatefulPartitionedCallStatefulPartitionedCallnormalization_22/truediv:z:0dense_54_5912795dense_54_5912797*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_54_layer_call_and_return_conditional_losses_59127842"
 dense_54/StatefulPartitionedCall?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0dense_55_5912822dense_55_5912824*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_55_layer_call_and_return_conditional_losses_59128112"
 dense_55/StatefulPartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_5912848dense_56_5912850*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_56_layer_call_and_return_conditional_losses_59128372"
 dense_56/StatefulPartitionedCall?
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0!^dense_54/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall(^normalization_22/Reshape/ReadVariableOp*^normalization_22/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:??????????????????::::::::2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2R
'normalization_22/Reshape/ReadVariableOp'normalization_22/Reshape/ReadVariableOp2V
)normalization_22/Reshape_1/ReadVariableOp)normalization_22/Reshape_1/ReadVariableOp:h d
0
_output_shapes
:??????????????????
0
_user_specified_namenormalization_22_input
?	
?
E__inference_dense_56_layer_call_and_return_conditional_losses_5913190

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_sequential_20_layer_call_fn_5913119

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_20_layer_call_and_return_conditional_losses_59129212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:??????????????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?$
?
J__inference_sequential_20_layer_call_and_return_conditional_losses_5912974

inputs4
0normalization_22_reshape_readvariableop_resource6
2normalization_22_reshape_1_readvariableop_resource
dense_54_5912958
dense_54_5912960
dense_55_5912963
dense_55_5912965
dense_56_5912968
dense_56_5912970
identity?? dense_54/StatefulPartitionedCall? dense_55/StatefulPartitionedCall? dense_56/StatefulPartitionedCall?'normalization_22/Reshape/ReadVariableOp?)normalization_22/Reshape_1/ReadVariableOp?
'normalization_22/Reshape/ReadVariableOpReadVariableOp0normalization_22_reshape_readvariableop_resource*
_output_shapes
:*
dtype02)
'normalization_22/Reshape/ReadVariableOp?
normalization_22/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
normalization_22/Reshape/shape?
normalization_22/ReshapeReshape/normalization_22/Reshape/ReadVariableOp:value:0'normalization_22/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_22/Reshape?
)normalization_22/Reshape_1/ReadVariableOpReadVariableOp2normalization_22_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02+
)normalization_22/Reshape_1/ReadVariableOp?
 normalization_22/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 normalization_22/Reshape_1/shape?
normalization_22/Reshape_1Reshape1normalization_22/Reshape_1/ReadVariableOp:value:0)normalization_22/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_22/Reshape_1?
normalization_22/subSubinputs!normalization_22/Reshape:output:0*
T0*'
_output_shapes
:?????????2
normalization_22/sub?
normalization_22/SqrtSqrt#normalization_22/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_22/Sqrt}
normalization_22/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
normalization_22/Maximum/y?
normalization_22/MaximumMaximumnormalization_22/Sqrt:y:0#normalization_22/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_22/Maximum?
normalization_22/truedivRealDivnormalization_22/sub:z:0normalization_22/Maximum:z:0*
T0*'
_output_shapes
:?????????2
normalization_22/truediv?
 dense_54/StatefulPartitionedCallStatefulPartitionedCallnormalization_22/truediv:z:0dense_54_5912958dense_54_5912960*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_54_layer_call_and_return_conditional_losses_59127842"
 dense_54/StatefulPartitionedCall?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0dense_55_5912963dense_55_5912965*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_55_layer_call_and_return_conditional_losses_59128112"
 dense_55/StatefulPartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_5912968dense_56_5912970*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_56_layer_call_and_return_conditional_losses_59128372"
 dense_56/StatefulPartitionedCall?
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0!^dense_54/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall(^normalization_22/Reshape/ReadVariableOp*^normalization_22/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:??????????????????::::::::2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2R
'normalization_22/Reshape/ReadVariableOp'normalization_22/Reshape/ReadVariableOp2V
)normalization_22/Reshape_1/ReadVariableOp)normalization_22/Reshape_1/ReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
/__inference_sequential_20_layer_call_fn_5913140

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_20_layer_call_and_return_conditional_losses_59129742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:??????????????????::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
b
normalization_22_inputH
(serving_default_normalization_22_input:0??????????????????<
dense_560
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?$
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
trainable_variables
	variables
regularization_losses
		keras_api


signatures
M__call__
*N&call_and_return_all_conditional_losses
O_default_save_signature"?!
_tf_keras_sequential?!{"class_name": "Sequential", "name": "sequential_20", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_20", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "normalization_22_input"}}, {"class_name": "Normalization", "config": {"name": "normalization_22", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}}, {"class_name": "Dense", "config": {"name": "dense_54", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_55", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_20", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "normalization_22_input"}}, {"class_name": "Normalization", "config": {"name": "normalization_22", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}}, {"class_name": "Dense", "config": {"name": "dense_54", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_55", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mean_absolute_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
state_variables
_broadcast_shape
mean
variance
	count
	keras_api"?
_tf_keras_layer?{"class_name": "Normalization", "name": "normalization_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "normalization_22", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "build_input_shape": [512, 4]}
?

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
P__call__
*Q&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_54", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_54", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4]}}
?

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
R__call__
*S&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_55", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_55", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?

kernel
bias
regularization_losses
 trainable_variables
!	variables
"	keras_api
T__call__
*U&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_56", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
#iter

$beta_1

%beta_2
	&decay
'learning_ratemAmBmCmDmEmFvGvHvIvJvKvL"
	optimizer
J
0
1
2
3
4
5"
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
8"
trackable_list_wrapper
 "
trackable_list_wrapper
?
(non_trainable_variables
trainable_variables
	variables
)layer_regularization_losses
*metrics

+layers
,layer_metrics
regularization_losses
M__call__
O_default_save_signature
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
,
Vserving_default"
signature_map
C
mean
variance
	count"
trackable_dict_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
": 	?2dense_54/kernel
:?2dense_54/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
-non_trainable_variables
regularization_losses
trainable_variables
	variables
.metrics

/layers
0layer_metrics
1layer_regularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_55/kernel
:?2dense_55/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
2non_trainable_variables
regularization_losses
trainable_variables
	variables
3metrics

4layers
5layer_metrics
6layer_regularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
": 	?2dense_56/kernel
:2dense_56/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
7non_trainable_variables
regularization_losses
 trainable_variables
!	variables
8metrics

9layers
:layer_metrics
;layer_regularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
'
<0"
trackable_list_wrapper
<
0
1
2
3"
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
?
	=total
	>count
?	variables
@	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
:  (2total
:  (2count
.
=0
>1"
trackable_list_wrapper
-
?	variables"
_generic_user_object
':%	?2Adam/dense_54/kernel/m
!:?2Adam/dense_54/bias/m
(:&
??2Adam/dense_55/kernel/m
!:?2Adam/dense_55/bias/m
':%	?2Adam/dense_56/kernel/m
 :2Adam/dense_56/bias/m
':%	?2Adam/dense_54/kernel/v
!:?2Adam/dense_54/bias/v
(:&
??2Adam/dense_55/kernel/v
!:?2Adam/dense_55/bias/v
':%	?2Adam/dense_56/kernel/v
 :2Adam/dense_56/bias/v
?2?
/__inference_sequential_20_layer_call_fn_5912940
/__inference_sequential_20_layer_call_fn_5912993
/__inference_sequential_20_layer_call_fn_5913119
/__inference_sequential_20_layer_call_fn_5913140?
???
FullArgSpec1
args)?&
jself
jinputs

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
?2?
J__inference_sequential_20_layer_call_and_return_conditional_losses_5912886
J__inference_sequential_20_layer_call_and_return_conditional_losses_5913061
J__inference_sequential_20_layer_call_and_return_conditional_losses_5913098
J__inference_sequential_20_layer_call_and_return_conditional_losses_5912854?
???
FullArgSpec1
args)?&
jself
jinputs

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
?2?
"__inference__wrapped_model_5912756?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *>?;
9?6
normalization_22_input??????????????????
?2?
*__inference_dense_54_layer_call_fn_5913160?
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
?2?
E__inference_dense_54_layer_call_and_return_conditional_losses_5913151?
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
?2?
*__inference_dense_55_layer_call_fn_5913180?
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
?2?
E__inference_dense_55_layer_call_and_return_conditional_losses_5913171?
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
?2?
*__inference_dense_56_layer_call_fn_5913199?
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
?2?
E__inference_dense_56_layer_call_and_return_conditional_losses_5913190?
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
?B?
%__inference_signature_wrapper_5913024normalization_22_input"?
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
 ?
"__inference__wrapped_model_5912756?H?E
>?;
9?6
normalization_22_input??????????????????
? "3?0
.
dense_56"?
dense_56??????????
E__inference_dense_54_layer_call_and_return_conditional_losses_5913151]/?,
%?"
 ?
inputs?????????
? "&?#
?
0??????????
? ~
*__inference_dense_54_layer_call_fn_5913160P/?,
%?"
 ?
inputs?????????
? "????????????
E__inference_dense_55_layer_call_and_return_conditional_losses_5913171^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_55_layer_call_fn_5913180Q0?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_56_layer_call_and_return_conditional_losses_5913190]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ~
*__inference_dense_56_layer_call_fn_5913199P0?-
&?#
!?
inputs??????????
? "???????????
J__inference_sequential_20_layer_call_and_return_conditional_losses_5912854?P?M
F?C
9?6
normalization_22_input??????????????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_20_layer_call_and_return_conditional_losses_5912886?P?M
F?C
9?6
normalization_22_input??????????????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_20_layer_call_and_return_conditional_losses_5913061s@?=
6?3
)?&
inputs??????????????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_20_layer_call_and_return_conditional_losses_5913098s@?=
6?3
)?&
inputs??????????????????
p 

 
? "%?"
?
0?????????
? ?
/__inference_sequential_20_layer_call_fn_5912940vP?M
F?C
9?6
normalization_22_input??????????????????
p

 
? "???????????
/__inference_sequential_20_layer_call_fn_5912993vP?M
F?C
9?6
normalization_22_input??????????????????
p 

 
? "???????????
/__inference_sequential_20_layer_call_fn_5913119f@?=
6?3
)?&
inputs??????????????????
p

 
? "???????????
/__inference_sequential_20_layer_call_fn_5913140f@?=
6?3
)?&
inputs??????????????????
p 

 
? "???????????
%__inference_signature_wrapper_5913024?b?_
? 
X?U
S
normalization_22_input9?6
normalization_22_input??????????????????"3?0
.
dense_56"?
dense_56?????????