??
?#?"
:
Add
x"T
y"T
z"T"
Ttype:
2	
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
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
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
?
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0?????????"
value_indexint(0?????????"+

vocab_sizeint?????????(0?????????"
	delimiterstring	"
offsetint ?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
2
LookupTableSizeV2
table_handle
size	?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
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
E
Relu
features"T
activations"T"
Ttype:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
?
SparseSegmentSqrtN	
data"T
indices"Tidx
segment_ids"Tsegmentids
output"T"
Ttype:
2"
Tidxtype0:
2	"
Tsegmentidstype0:
2	
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
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
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
c
StringSplit	
input
	delimiter
indices	

values	
shape	"

skip_emptybool(
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
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
9
VarIsInitializedOp
resource
is_initialized
?
E
Where

input"T	
index	"%
Ttype0
:
2	
"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??
n
VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??52*
shared_name
Variable
g
Variable/Read/ReadVariableOpReadVariableOpVariable* 
_output_shapes
:
??52*
dtype0
{
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?* 
shared_namedense_22/kernel
t
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel*
_output_shapes
:	2?*
dtype0
s
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_22/bias
l
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes	
:?*
dtype0
{
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@* 
shared_namedense_23/kernel
t
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel*
_output_shapes
:	?@*
dtype0
r
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_23/bias
k
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes
:@*
dtype0
z
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_24/kernel
s
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel*
_output_shapes

:@ *
dtype0
r
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_24/bias
k
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes
: *
dtype0
z
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_25/kernel
s
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel*
_output_shapes

: *
dtype0
r
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_25/bias
k
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
?
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
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
GPU 2J 8? *1
f,R*
(__inference_restored_function_body_68570
W
asset_path_initializerPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
V
Variable_1/AssignAssignVariableOp
Variable_1asset_path_initializer*
dtype0
a
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
: *
dtype0
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
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
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
RMSprop/Variable/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??52*%
shared_nameRMSprop/Variable/rms

(RMSprop/Variable/rms/Read/ReadVariableOpReadVariableOpRMSprop/Variable/rms* 
_output_shapes
:
??52*
dtype0
?
RMSprop/dense_22/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*,
shared_nameRMSprop/dense_22/kernel/rms
?
/RMSprop/dense_22/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_22/kernel/rms*
_output_shapes
:	2?*
dtype0
?
RMSprop/dense_22/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameRMSprop/dense_22/bias/rms
?
-RMSprop/dense_22/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_22/bias/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/dense_23/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*,
shared_nameRMSprop/dense_23/kernel/rms
?
/RMSprop/dense_23/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_23/kernel/rms*
_output_shapes
:	?@*
dtype0
?
RMSprop/dense_23/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameRMSprop/dense_23/bias/rms
?
-RMSprop/dense_23/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_23/bias/rms*
_output_shapes
:@*
dtype0
?
RMSprop/dense_24/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *,
shared_nameRMSprop/dense_24/kernel/rms
?
/RMSprop/dense_24/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_24/kernel/rms*
_output_shapes

:@ *
dtype0
?
RMSprop/dense_24/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameRMSprop/dense_24/bias/rms
?
-RMSprop/dense_24/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_24/bias/rms*
_output_shapes
: *
dtype0
?
RMSprop/dense_25/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *,
shared_nameRMSprop/dense_25/kernel/rms
?
/RMSprop/dense_25/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_25/kernel/rms*
_output_shapes

: *
dtype0
?
RMSprop/dense_25/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/dense_25/bias/rms
?
-RMSprop/dense_25/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_25/bias/rms*
_output_shapes
:*
dtype0
P
ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
e
ReadVariableOpReadVariableOp
Variable_1^Variable_1/Assign*
_output_shapes
: *
dtype0
?
StatefulPartitionedCall_1StatefulPartitionedCallReadVariableOpStatefulPartitionedCall*
Tin
2*
Tout
2*
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
GPU 2J 8? *#
fR
__inference_<lambda>_68519
<
NoOpNoOp^StatefulPartitionedCall_1^Variable_1/Assign
?-
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*?,
value?,B?, B?,
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer
regularization_losses
trainable_variables
		variables

	keras_api

signatures
|
	_func
	_callable

Variable:0
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
 regularization_losses
!trainable_variables
"	variables
#	keras_api
h

$kernel
%bias
&regularization_losses
'trainable_variables
(	variables
)	keras_api
?
*iter
	+decay
,learning_rate
-momentum
.rho	rms_	rms`	rmsa	rmsb	rmsc	rmsd	rmse	$rmsf	%rmsg
 
?
0
1
2
3
4
5
6
$7
%8
?
0
1
2
3
4
5
6
$7
%8
?
/non_trainable_variables
regularization_losses
trainable_variables
		variables
0layer_regularization_losses
1metrics
2layer_metrics

3layers
 
?
4_table_initializer

5_table

embeddings
6	variables
6trainable_variables
7
signatures
#8_self_saveable_object_factories
XV
VARIABLE_VALUEVariable:layer_with_weights-0/Variable:0/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
?
9non_trainable_variables
regularization_losses
trainable_variables
	variables
:layer_regularization_losses
;metrics
<layer_metrics

=layers
[Y
VARIABLE_VALUEdense_22/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_22/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
>non_trainable_variables
regularization_losses
trainable_variables
	variables
?layer_regularization_losses
@metrics
Alayer_metrics

Blayers
[Y
VARIABLE_VALUEdense_23/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_23/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
Cnon_trainable_variables
regularization_losses
trainable_variables
	variables
Dlayer_regularization_losses
Emetrics
Flayer_metrics

Glayers
[Y
VARIABLE_VALUEdense_24/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_24/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
Hnon_trainable_variables
 regularization_losses
!trainable_variables
"	variables
Ilayer_regularization_losses
Jmetrics
Klayer_metrics

Llayers
[Y
VARIABLE_VALUEdense_25/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_25/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

$0
%1

$0
%1
?
Mnon_trainable_variables
&regularization_losses
'trainable_variables
(	variables
Nlayer_regularization_losses
Ometrics
Player_metrics

Qlayers
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
 
 

R0
S1
 
#
0
1
2
3
4
4
T	_filename
#U_self_saveable_object_factories

4_initializer

0
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
 
 
 
 
 
 
 
4
	Vtotal
	Wcount
X	variables
Y	keras_api
D
	Ztotal
	[count
\
_fn_kwargs
]	variables
^	keras_api
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

V0
W1

X	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Z0
[1

]	variables
??
VARIABLE_VALUERMSprop/Variable/rmsXlayer_with_weights-0/Variable:0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_22/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/dense_22/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_23/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/dense_23/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_24/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/dense_24/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUERMSprop/dense_25/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUERMSprop/dense_25/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
~
#serving_default_keras_layer_6_inputPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_2StatefulPartitionedCall#serving_default_keras_layer_6_inputStatefulPartitionedCallConstVariabledense_22/kerneldense_22/biasdense_23/kerneldense_23/biasdense_24/kerneldense_24/biasdense_25/kerneldense_25/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_68253
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOp#dense_22/kernel/Read/ReadVariableOp!dense_22/bias/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOp#dense_24/kernel/Read/ReadVariableOp!dense_24/bias/Read/ReadVariableOp#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(RMSprop/Variable/rms/Read/ReadVariableOp/RMSprop/dense_22/kernel/rms/Read/ReadVariableOp-RMSprop/dense_22/bias/rms/Read/ReadVariableOp/RMSprop/dense_23/kernel/rms/Read/ReadVariableOp-RMSprop/dense_23/bias/rms/Read/ReadVariableOp/RMSprop/dense_24/kernel/rms/Read/ReadVariableOp-RMSprop/dense_24/bias/rms/Read/ReadVariableOp/RMSprop/dense_25/kernel/rms/Read/ReadVariableOp-RMSprop/dense_25/bias/rms/Read/ReadVariableOpConst_1*(
Tin!
2	*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_68653
?
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filenameVariabledense_22/kerneldense_22/biasdense_23/kerneldense_23/biasdense_24/kerneldense_24/biasdense_25/kerneldense_25/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcounttotal_1count_1RMSprop/Variable/rmsRMSprop/dense_22/kernel/rmsRMSprop/dense_22/bias/rmsRMSprop/dense_23/kernel/rmsRMSprop/dense_23/bias/rmsRMSprop/dense_24/kernel/rmsRMSprop/dense_24/bias/rmsRMSprop/dense_25/kernel/rmsRMSprop/dense_25/bias/rms*'
Tin 
2*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_68744??
?
?
H__inference_keras_layer_6_layer_call_and_return_conditional_losses_67868

inputs
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_644732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
c
__inference_<lambda>_68519
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0*
Tin
2*
Tout
2*
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
GPU 2J 8? *1
f,R*
(__inference_restored_function_body_651792
StatefulPartitionedCallS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
Constk
IdentityIdentityConst:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
: 
?-
?
G__inference_sequential_6_layer_call_and_return_conditional_losses_68292

inputs
keras_layer_6_68256
keras_layer_6_68258	'
keras_layer_6_68260:
??52:
'dense_22_matmul_readvariableop_resource:	2?7
(dense_22_biasadd_readvariableop_resource:	?:
'dense_23_matmul_readvariableop_resource:	?@6
(dense_23_biasadd_readvariableop_resource:@9
'dense_24_matmul_readvariableop_resource:@ 6
(dense_24_biasadd_readvariableop_resource: 9
'dense_25_matmul_readvariableop_resource: 6
(dense_25_biasadd_readvariableop_resource:
identity??dense_22/BiasAdd/ReadVariableOp?dense_22/MatMul/ReadVariableOp?dense_23/BiasAdd/ReadVariableOp?dense_23/MatMul/ReadVariableOp?dense_24/BiasAdd/ReadVariableOp?dense_24/MatMul/ReadVariableOp?dense_25/BiasAdd/ReadVariableOp?dense_25/MatMul/ReadVariableOp?%keras_layer_6/StatefulPartitionedCall?
%keras_layer_6/StatefulPartitionedCallStatefulPartitionedCallinputskeras_layer_6_68256keras_layer_6_68258keras_layer_6_68260*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_644732'
%keras_layer_6/StatefulPartitionedCall?
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes
:	2?*
dtype02 
dense_22/MatMul/ReadVariableOp?
dense_22/MatMulMatMul.keras_layer_6/StatefulPartitionedCall:output:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_22/MatMul?
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_22/BiasAdd/ReadVariableOp?
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_22/BiasAddt
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_22/Relu?
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02 
dense_23/MatMul/ReadVariableOp?
dense_23/MatMulMatMuldense_22/Relu:activations:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_23/MatMul?
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_23/BiasAdd/ReadVariableOp?
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_23/BiasAdds
dense_23/ReluReludense_23/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_23/Relu?
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_24/MatMul/ReadVariableOp?
dense_24/MatMulMatMuldense_23/Relu:activations:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_24/MatMul?
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_24/BiasAdd/ReadVariableOp?
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_24/BiasAdds
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_24/Relu?
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_25/MatMul/ReadVariableOp?
dense_25/MatMulMatMuldense_24/Relu:activations:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_25/MatMul?
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_25/BiasAdd/ReadVariableOp?
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_25/BiasAdd|
dense_25/SoftmaxSoftmaxdense_25/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_25/Softmax?
IdentityIdentitydense_25/Softmax:softmax:0 ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp&^keras_layer_6/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : : : 2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2N
%keras_layer_6/StatefulPartitionedCall%keras_layer_6/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
__inference__initializer_37821!
text_file_init_asset_filepath=
9text_file_init_initializetablefromtextfilev2_table_handle
identity??,text_file_init/InitializeTableFromTextFileV2?
,text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV29text_file_init_initializetablefromtextfilev2_table_handletext_file_init_asset_filepath*
_output_shapes
 *
	key_index?????????*
value_index?????????2.
,text_file_init/InitializeTableFromTextFileV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Const?
IdentityIdentityConst:output:0-^text_file_init/InitializeTableFromTextFileV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: :2\
,text_file_init/InitializeTableFromTextFileV2,text_file_init/InitializeTableFromTextFileV2: 

_output_shapes
: 
?=
?
__inference__traced_save_68653
file_prefix'
#savev2_variable_read_readvariableop.
*savev2_dense_22_kernel_read_readvariableop,
(savev2_dense_22_bias_read_readvariableop.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop.
*savev2_dense_24_kernel_read_readvariableop,
(savev2_dense_24_bias_read_readvariableop.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_rmsprop_variable_rms_read_readvariableop:
6savev2_rmsprop_dense_22_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_22_bias_rms_read_readvariableop:
6savev2_rmsprop_dense_23_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_23_bias_rms_read_readvariableop:
6savev2_rmsprop_dense_24_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_24_bias_rms_read_readvariableop:
6savev2_rmsprop_dense_25_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_25_bias_rms_read_readvariableop
savev2_const_1

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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/Variable:0/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/Variable:0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableop*savev2_dense_22_kernel_read_readvariableop(savev2_dense_22_bias_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop*savev2_dense_24_kernel_read_readvariableop(savev2_dense_24_bias_read_readvariableop*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_rmsprop_variable_rms_read_readvariableop6savev2_rmsprop_dense_22_kernel_rms_read_readvariableop4savev2_rmsprop_dense_22_bias_rms_read_readvariableop6savev2_rmsprop_dense_23_kernel_rms_read_readvariableop4savev2_rmsprop_dense_23_bias_rms_read_readvariableop6savev2_rmsprop_dense_24_kernel_rms_read_readvariableop4savev2_rmsprop_dense_24_bias_rms_read_readvariableop6savev2_rmsprop_dense_25_kernel_rms_read_readvariableop4savev2_rmsprop_dense_25_bias_rms_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
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
?: :
??52:	2?:?:	?@:@:@ : : :: : : : : : : : : :
??52:	2?:?:	?@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??52:%!

_output_shapes
:	2?:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 	

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??52:%!

_output_shapes
:	2?:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: 
?

?
,__inference_sequential_6_layer_call_fn_68358

inputs
unknown
	unknown_0	
	unknown_1:
??52
	unknown_2:	2?
	unknown_3:	?
	unknown_4:	?@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_679452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?

?
C__inference_dense_22_layer_call_and_return_conditional_losses_68440

inputs1
matmul_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2?*
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
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
U
(__inference_restored_function_body_68570
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *#
fR
__inference__creator_377922
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
?

?
,__inference_sequential_6_layer_call_fn_68385

inputs
unknown
	unknown_0	
	unknown_1:
??52
	unknown_2:	2?
	unknown_3:	?
	unknown_4:	?@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_681042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?

?
#__inference_signature_wrapper_68253
keras_layer_6_input
unknown
	unknown_0	
	unknown_1:
??52
	unknown_2:	2?
	unknown_3:	?
	unknown_4:	?@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallkeras_layer_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_678502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namekeras_layer_6_input:

_output_shapes
: 
?

?
,__inference_sequential_6_layer_call_fn_68156
keras_layer_6_input
unknown
	unknown_0	
	unknown_1:
??52
	unknown_2:	2?
	unknown_3:	?
	unknown_4:	?@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallkeras_layer_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_681042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namekeras_layer_6_input:

_output_shapes
: 
?-
?
G__inference_sequential_6_layer_call_and_return_conditional_losses_68331

inputs
keras_layer_6_68295
keras_layer_6_68297	'
keras_layer_6_68299:
??52:
'dense_22_matmul_readvariableop_resource:	2?7
(dense_22_biasadd_readvariableop_resource:	?:
'dense_23_matmul_readvariableop_resource:	?@6
(dense_23_biasadd_readvariableop_resource:@9
'dense_24_matmul_readvariableop_resource:@ 6
(dense_24_biasadd_readvariableop_resource: 9
'dense_25_matmul_readvariableop_resource: 6
(dense_25_biasadd_readvariableop_resource:
identity??dense_22/BiasAdd/ReadVariableOp?dense_22/MatMul/ReadVariableOp?dense_23/BiasAdd/ReadVariableOp?dense_23/MatMul/ReadVariableOp?dense_24/BiasAdd/ReadVariableOp?dense_24/MatMul/ReadVariableOp?dense_25/BiasAdd/ReadVariableOp?dense_25/MatMul/ReadVariableOp?%keras_layer_6/StatefulPartitionedCall?
%keras_layer_6/StatefulPartitionedCallStatefulPartitionedCallinputskeras_layer_6_68295keras_layer_6_68297keras_layer_6_68299*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_644732'
%keras_layer_6/StatefulPartitionedCall?
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes
:	2?*
dtype02 
dense_22/MatMul/ReadVariableOp?
dense_22/MatMulMatMul.keras_layer_6/StatefulPartitionedCall:output:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_22/MatMul?
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_22/BiasAdd/ReadVariableOp?
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_22/BiasAddt
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_22/Relu?
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02 
dense_23/MatMul/ReadVariableOp?
dense_23/MatMulMatMuldense_22/Relu:activations:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_23/MatMul?
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_23/BiasAdd/ReadVariableOp?
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_23/BiasAdds
dense_23/ReluReludense_23/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_23/Relu?
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_24/MatMul/ReadVariableOp?
dense_24/MatMulMatMuldense_23/Relu:activations:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_24/MatMul?
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_24/BiasAdd/ReadVariableOp?
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_24/BiasAdds
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_24/Relu?
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_25/MatMul/ReadVariableOp?
dense_25/MatMulMatMuldense_24/Relu:activations:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_25/MatMul?
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_25/BiasAdd/ReadVariableOp?
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_25/BiasAdd|
dense_25/SoftmaxSoftmaxdense_25/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_25/Softmax?
IdentityIdentitydense_25/Softmax:softmax:0 ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp&^keras_layer_6/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : : : 2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2N
%keras_layer_6/StatefulPartitionedCall%keras_layer_6/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?

?
,__inference_sequential_6_layer_call_fn_67970
keras_layer_6_input
unknown
	unknown_0	
	unknown_1:
??52
	unknown_2:	2?
	unknown_3:	?
	unknown_4:	?@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallkeras_layer_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_679452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namekeras_layer_6_input:

_output_shapes
: 
?

?
C__inference_dense_25_layer_call_and_return_conditional_losses_68500

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
H__inference_keras_layer_6_layer_call_and_return_conditional_losses_68407

inputs
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_644732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?

?
C__inference_dense_23_layer_call_and_return_conditional_losses_68460

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_keras_layer_6_layer_call_and_return_conditional_losses_68035

inputs
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_644732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
(__inference_dense_23_layer_call_fn_68469

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_679042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_sequential_6_layer_call_and_return_conditional_losses_68104

inputs
keras_layer_6_68076
keras_layer_6_68078	'
keras_layer_6_68080:
??52!
dense_22_68083:	2?
dense_22_68085:	?!
dense_23_68088:	?@
dense_23_68090:@ 
dense_24_68093:@ 
dense_24_68095:  
dense_25_68098: 
dense_25_68100:
identity?? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall?%keras_layer_6/StatefulPartitionedCall?
%keras_layer_6/StatefulPartitionedCallStatefulPartitionedCallinputskeras_layer_6_68076keras_layer_6_68078keras_layer_6_68080*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_keras_layer_6_layer_call_and_return_conditional_losses_680352'
%keras_layer_6/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall.keras_layer_6/StatefulPartitionedCall:output:0dense_22_68083dense_22_68085*
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
GPU 2J 8? *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_678872"
 dense_22/StatefulPartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_68088dense_23_68090*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_679042"
 dense_23/StatefulPartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_24_68093dense_24_68095*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_679212"
 dense_24/StatefulPartitionedCall?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_68098dense_25_68100*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_679382"
 dense_25/StatefulPartitionedCall?
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall&^keras_layer_6/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : : : 2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2N
%keras_layer_6/StatefulPartitionedCall%keras_layer_6/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
q
(__inference_restored_function_body_65179
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0*
Tin
2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__initializer_378212
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
: 
?
?
(__inference_restored_function_body_64473
	sentences
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	sentencesunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *#
fR
__inference___call___378902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
#
_output_shapes
:?????????
#
_user_specified_name	sentences:

_output_shapes
: 
?<
?
__inference__preprocess_37869
	sentences:
6none_lookup_none_lookup_lookuptablefindv2_table_handle;
7none_lookup_none_lookup_lookuptablefindv2_default_value	

identity_3	

identity_4	

identity_5	??)None_Lookup/None_Lookup/LookupTableFindV2?'None_Lookup/None_Size/LookupTableSizeV2?+None_Lookup_1/None_Lookup/LookupTableFindV2?)None_Lookup_1/None_Size/LookupTableSizeV2?
normalize/StaticRegexReplaceStaticRegexReplace	sentences*#
_output_shapes
:?????????*
pattern	[\p{P}]*
rewrite 2
normalize/StaticRegexReplacek
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
ExpandDims/dim?

ExpandDims
ExpandDims%normalize/StaticRegexReplace:output:0ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????2

ExpandDims?
"DenseToSparseTensor/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 2$
"DenseToSparseTensor/ignore_value/x?
DenseToSparseTensor/NotEqualNotEqualExpandDims:output:0+DenseToSparseTensor/ignore_value/x:output:0*
T0*'
_output_shapes
:?????????2
DenseToSparseTensor/NotEqual?
DenseToSparseTensor/indicesWhere DenseToSparseTensor/NotEqual:z:0*'
_output_shapes
:?????????2
DenseToSparseTensor/indices?
DenseToSparseTensor/valuesGatherNdExpandDims:output:0#DenseToSparseTensor/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????2
DenseToSparseTensor/values?
DenseToSparseTensor/dense_shapeShapeExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	2!
DenseToSparseTensor/dense_shapez
tokenize/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
value	B B 2
tokenize/StringSplit/Const?
 tokenize/StringSplit/StringSplitStringSplit%normalize/StaticRegexReplace:output:0#tokenize/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2"
 tokenize/StringSplit/StringSplit?
None_Lookup/hash_bucketStringToHashBucketFast)tokenize/StringSplit/StringSplit:values:0*#
_output_shapes
:?????????*
num_buckets?2
None_Lookup/hash_bucket?
)None_Lookup/None_Lookup/LookupTableFindV2LookupTableFindV26none_lookup_none_lookup_lookuptablefindv2_table_handle)tokenize/StringSplit/StringSplit:values:07none_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2+
)None_Lookup/None_Lookup/LookupTableFindV2?
'None_Lookup/None_Size/LookupTableSizeV2LookupTableSizeV26none_lookup_none_lookup_lookuptablefindv2_table_handle*^None_Lookup/None_Lookup/LookupTableFindV2*
_output_shapes
: 2)
'None_Lookup/None_Size/LookupTableSizeV2?
None_Lookup/AddAdd None_Lookup/hash_bucket:output:0.None_Lookup/None_Size/LookupTableSizeV2:size:0*
T0	*#
_output_shapes
:?????????2
None_Lookup/Add?
None_Lookup/NotEqualNotEqual2None_Lookup/None_Lookup/LookupTableFindV2:values:07none_lookup_none_lookup_lookuptablefindv2_default_value*
T0	*#
_output_shapes
:?????????2
None_Lookup/NotEqual?
None_Lookup/SelectV2SelectV2None_Lookup/NotEqual:z:02None_Lookup/None_Lookup/LookupTableFindV2:values:0None_Lookup/Add:z:0*
T0	*#
_output_shapes
:?????????2
None_Lookup/SelectV2O
ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
Const?
None_Lookup_1/hash_bucketStringToHashBucketFastConst:output:0*
_output_shapes
: *
num_buckets?2
None_Lookup_1/hash_bucket?
+None_Lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV26none_lookup_none_lookup_lookuptablefindv2_table_handleConst:output:07none_lookup_none_lookup_lookuptablefindv2_default_value(^None_Lookup/None_Size/LookupTableSizeV2*	
Tin0*

Tout0	*
_output_shapes
: 2-
+None_Lookup_1/None_Lookup/LookupTableFindV2?
)None_Lookup_1/None_Size/LookupTableSizeV2LookupTableSizeV26none_lookup_none_lookup_lookuptablefindv2_table_handle,^None_Lookup_1/None_Lookup/LookupTableFindV2*
_output_shapes
: 2+
)None_Lookup_1/None_Size/LookupTableSizeV2?
None_Lookup_1/AddAdd"None_Lookup_1/hash_bucket:output:00None_Lookup_1/None_Size/LookupTableSizeV2:size:0*
T0	*
_output_shapes
: 2
None_Lookup_1/Add?
None_Lookup_1/NotEqualNotEqual4None_Lookup_1/None_Lookup/LookupTableFindV2:values:07none_lookup_none_lookup_lookuptablefindv2_default_value*
T0	*
_output_shapes
: 2
None_Lookup_1/NotEqual?
None_Lookup_1/SelectV2SelectV2None_Lookup_1/NotEqual:z:04None_Lookup_1/None_Lookup/LookupTableFindV2:values:0None_Lookup_1/Add:z:0*
T0	*
_output_shapes
: 2
None_Lookup_1/SelectV2?
'SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows*tokenize/StringSplit/StringSplit:indices:0None_Lookup/SelectV2:output:0(tokenize/StringSplit/StringSplit:shape:0None_Lookup_1/SelectV2:output:0*
T0	*T
_output_shapesB
@:?????????:?????????:?????????:?????????2)
'SparseFillEmptyRows/SparseFillEmptyRows?
IdentityIdentity8SparseFillEmptyRows/SparseFillEmptyRows:output_indices:0*
T0	*'
_output_shapes
:?????????2

Identity?

Identity_1Identity7SparseFillEmptyRows/SparseFillEmptyRows:output_values:0*
T0	*#
_output_shapes
:?????????2

Identity_1s

Identity_2Identity(tokenize/StringSplit/StringSplit:shape:0*
T0	*
_output_shapes
:2

Identity_2p
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 2
Max/reduction_indicesi
MaxMaxIdentity:output:0Max/reduction_indices:output:0*
T0	*
_output_shapes
:2
MaxT
Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 2	
Const_1l
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
ones_like/Shaped
ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
ones_like/Constw
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	*
_output_shapes
:2
	ones_likeX
AddAddMax:output:0ones_like:output:0*
T0	*
_output_shapes
:2
Add]
MaximumMaximumConst_1:output:0Add:z:0*
T0	*
_output_shapes
:2	
Maximum?

Identity_3IdentityIdentity:output:0*^None_Lookup/None_Lookup/LookupTableFindV2(^None_Lookup/None_Size/LookupTableSizeV2,^None_Lookup_1/None_Lookup/LookupTableFindV2*^None_Lookup_1/None_Size/LookupTableSizeV2*
T0	*'
_output_shapes
:?????????2

Identity_3?

Identity_4IdentityIdentity_1:output:0*^None_Lookup/None_Lookup/LookupTableFindV2(^None_Lookup/None_Size/LookupTableSizeV2,^None_Lookup_1/None_Lookup/LookupTableFindV2*^None_Lookup_1/None_Size/LookupTableSizeV2*
T0	*#
_output_shapes
:?????????2

Identity_4?

Identity_5IdentityMaximum:z:0*^None_Lookup/None_Lookup/LookupTableFindV2(^None_Lookup/None_Size/LookupTableSizeV2,^None_Lookup_1/None_Lookup/LookupTableFindV2*^None_Lookup_1/None_Size/LookupTableSizeV2*
T0	*
_output_shapes
:2

Identity_5"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????:: 2V
)None_Lookup/None_Lookup/LookupTableFindV2)None_Lookup/None_Lookup/LookupTableFindV22R
'None_Lookup/None_Size/LookupTableSizeV2'None_Lookup/None_Size/LookupTableSizeV22Z
+None_Lookup_1/None_Lookup/LookupTableFindV2+None_Lookup_1/None_Lookup/LookupTableFindV22V
)None_Lookup_1/None_Size/LookupTableSizeV2)None_Lookup_1/None_Size/LookupTableSizeV2:N J
#
_output_shapes
:?????????
#
_user_specified_name	sentences:

_output_shapes
: 
?
?
-__inference_keras_layer_6_layer_call_fn_68429

inputs
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_keras_layer_6_layer_call_and_return_conditional_losses_680352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
-__inference_keras_layer_6_layer_call_fn_68418

inputs
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_keras_layer_6_layer_call_and_return_conditional_losses_678682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
H__inference_keras_layer_6_layer_call_and_return_conditional_losses_68396

inputs
unknown
	unknown_0	
	unknown_1:
??52
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_644732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?:
?	
 __inference__wrapped_model_67850
keras_layer_6_input$
 sequential_6_keras_layer_6_67814$
 sequential_6_keras_layer_6_67816	4
 sequential_6_keras_layer_6_67818:
??52G
4sequential_6_dense_22_matmul_readvariableop_resource:	2?D
5sequential_6_dense_22_biasadd_readvariableop_resource:	?G
4sequential_6_dense_23_matmul_readvariableop_resource:	?@C
5sequential_6_dense_23_biasadd_readvariableop_resource:@F
4sequential_6_dense_24_matmul_readvariableop_resource:@ C
5sequential_6_dense_24_biasadd_readvariableop_resource: F
4sequential_6_dense_25_matmul_readvariableop_resource: C
5sequential_6_dense_25_biasadd_readvariableop_resource:
identity??,sequential_6/dense_22/BiasAdd/ReadVariableOp?+sequential_6/dense_22/MatMul/ReadVariableOp?,sequential_6/dense_23/BiasAdd/ReadVariableOp?+sequential_6/dense_23/MatMul/ReadVariableOp?,sequential_6/dense_24/BiasAdd/ReadVariableOp?+sequential_6/dense_24/MatMul/ReadVariableOp?,sequential_6/dense_25/BiasAdd/ReadVariableOp?+sequential_6/dense_25/MatMul/ReadVariableOp?2sequential_6/keras_layer_6/StatefulPartitionedCall?
2sequential_6/keras_layer_6/StatefulPartitionedCallStatefulPartitionedCallkeras_layer_6_input sequential_6_keras_layer_6_67814 sequential_6_keras_layer_6_67816 sequential_6_keras_layer_6_67818*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_6447324
2sequential_6/keras_layer_6/StatefulPartitionedCall?
+sequential_6/dense_22/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_22_matmul_readvariableop_resource*
_output_shapes
:	2?*
dtype02-
+sequential_6/dense_22/MatMul/ReadVariableOp?
sequential_6/dense_22/MatMulMatMul;sequential_6/keras_layer_6/StatefulPartitionedCall:output:03sequential_6/dense_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_6/dense_22/MatMul?
,sequential_6/dense_22/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_22_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_6/dense_22/BiasAdd/ReadVariableOp?
sequential_6/dense_22/BiasAddBiasAdd&sequential_6/dense_22/MatMul:product:04sequential_6/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_6/dense_22/BiasAdd?
sequential_6/dense_22/ReluRelu&sequential_6/dense_22/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_6/dense_22/Relu?
+sequential_6/dense_23/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_23_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02-
+sequential_6/dense_23/MatMul/ReadVariableOp?
sequential_6/dense_23/MatMulMatMul(sequential_6/dense_22/Relu:activations:03sequential_6/dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential_6/dense_23/MatMul?
,sequential_6/dense_23/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_6/dense_23/BiasAdd/ReadVariableOp?
sequential_6/dense_23/BiasAddBiasAdd&sequential_6/dense_23/MatMul:product:04sequential_6/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
sequential_6/dense_23/BiasAdd?
sequential_6/dense_23/ReluRelu&sequential_6/dense_23/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_6/dense_23/Relu?
+sequential_6/dense_24/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_24_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02-
+sequential_6/dense_24/MatMul/ReadVariableOp?
sequential_6/dense_24/MatMulMatMul(sequential_6/dense_23/Relu:activations:03sequential_6/dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_6/dense_24/MatMul?
,sequential_6/dense_24/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_6/dense_24/BiasAdd/ReadVariableOp?
sequential_6/dense_24/BiasAddBiasAdd&sequential_6/dense_24/MatMul:product:04sequential_6/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_6/dense_24/BiasAdd?
sequential_6/dense_24/ReluRelu&sequential_6/dense_24/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential_6/dense_24/Relu?
+sequential_6/dense_25/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_25_matmul_readvariableop_resource*
_output_shapes

: *
dtype02-
+sequential_6/dense_25/MatMul/ReadVariableOp?
sequential_6/dense_25/MatMulMatMul(sequential_6/dense_24/Relu:activations:03sequential_6/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_6/dense_25/MatMul?
,sequential_6/dense_25/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_6/dense_25/BiasAdd/ReadVariableOp?
sequential_6/dense_25/BiasAddBiasAdd&sequential_6/dense_25/MatMul:product:04sequential_6/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_6/dense_25/BiasAdd?
sequential_6/dense_25/SoftmaxSoftmax&sequential_6/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_6/dense_25/Softmax?
IdentityIdentity'sequential_6/dense_25/Softmax:softmax:0-^sequential_6/dense_22/BiasAdd/ReadVariableOp,^sequential_6/dense_22/MatMul/ReadVariableOp-^sequential_6/dense_23/BiasAdd/ReadVariableOp,^sequential_6/dense_23/MatMul/ReadVariableOp-^sequential_6/dense_24/BiasAdd/ReadVariableOp,^sequential_6/dense_24/MatMul/ReadVariableOp-^sequential_6/dense_25/BiasAdd/ReadVariableOp,^sequential_6/dense_25/MatMul/ReadVariableOp3^sequential_6/keras_layer_6/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : : : 2\
,sequential_6/dense_22/BiasAdd/ReadVariableOp,sequential_6/dense_22/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_22/MatMul/ReadVariableOp+sequential_6/dense_22/MatMul/ReadVariableOp2\
,sequential_6/dense_23/BiasAdd/ReadVariableOp,sequential_6/dense_23/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_23/MatMul/ReadVariableOp+sequential_6/dense_23/MatMul/ReadVariableOp2\
,sequential_6/dense_24/BiasAdd/ReadVariableOp,sequential_6/dense_24/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_24/MatMul/ReadVariableOp+sequential_6/dense_24/MatMul/ReadVariableOp2\
,sequential_6/dense_25/BiasAdd/ReadVariableOp,sequential_6/dense_25/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_25/MatMul/ReadVariableOp+sequential_6/dense_25/MatMul/ReadVariableOp2h
2sequential_6/keras_layer_6/StatefulPartitionedCall2sequential_6/keras_layer_6/StatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namekeras_layer_6_input:

_output_shapes
: 
?
?
(__inference_dense_25_layer_call_fn_68509

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_679382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
:
__inference__creator_37792
identity??
hash_table?

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*L
shared_name=;hash_table_/tmp/tmprBw0hQ/tokens.txt_-2_-1_load_37787_37788*
use_node_name_sharing(*
value_dtype0	2

hash_tablei
IdentityIdentityhash_table:table_handle:0^hash_table*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?

?
C__inference_dense_24_layer_call_and_return_conditional_losses_67921

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
,
__inference__destroyer_37815
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
G__inference_sequential_6_layer_call_and_return_conditional_losses_68218
keras_layer_6_input
keras_layer_6_68190
keras_layer_6_68192	'
keras_layer_6_68194:
??52!
dense_22_68197:	2?
dense_22_68199:	?!
dense_23_68202:	?@
dense_23_68204:@ 
dense_24_68207:@ 
dense_24_68209:  
dense_25_68212: 
dense_25_68214:
identity?? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall?%keras_layer_6/StatefulPartitionedCall?
%keras_layer_6/StatefulPartitionedCallStatefulPartitionedCallkeras_layer_6_inputkeras_layer_6_68190keras_layer_6_68192keras_layer_6_68194*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_keras_layer_6_layer_call_and_return_conditional_losses_680352'
%keras_layer_6/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall.keras_layer_6/StatefulPartitionedCall:output:0dense_22_68197dense_22_68199*
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
GPU 2J 8? *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_678872"
 dense_22/StatefulPartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_68202dense_23_68204*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_679042"
 dense_23/StatefulPartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_24_68207dense_24_68209*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_679212"
 dense_24/StatefulPartitionedCall?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_68212dense_25_68214*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_679382"
 dense_25/StatefulPartitionedCall?
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall&^keras_layer_6/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : : : 2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2N
%keras_layer_6/StatefulPartitionedCall%keras_layer_6/StatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namekeras_layer_6_input:

_output_shapes
: 
?
?
__inference___call___37890
	sentences"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2	@
,embedding_lookup_sparse_embedding_lookup_100:
??52
identity??StatefulPartitionedCall?(embedding_lookup_sparse/embedding_lookup?
StatefulPartitionedCallStatefulPartitionedCall	sentencesstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2	*
Tout
2			*,
_gradient_op_typePartitionedCallUnused*<
_output_shapes*
(:?????????:?????????:**
config_proto

CPU

GPU 2J 8*&
f!R
__inference__preprocess_378692
StatefulPartitionedCall?
+embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2-
+embedding_lookup_sparse/strided_slice/stack?
-embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2/
-embedding_lookup_sparse/strided_slice/stack_1?
-embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2/
-embedding_lookup_sparse/strided_slice/stack_2?
%embedding_lookup_sparse/strided_sliceStridedSlice StatefulPartitionedCall:output:04embedding_lookup_sparse/strided_slice/stack:output:06embedding_lookup_sparse/strided_slice/stack_1:output:06embedding_lookup_sparse/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2'
%embedding_lookup_sparse/strided_slice?
embedding_lookup_sparse/CastCast.embedding_lookup_sparse/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2
embedding_lookup_sparse/Cast?
embedding_lookup_sparse/UniqueUnique StatefulPartitionedCall:output:1*
T0	*2
_output_shapes 
:?????????:?????????2 
embedding_lookup_sparse/Unique?
(embedding_lookup_sparse/embedding_lookupResourceGather,embedding_lookup_sparse_embedding_lookup_100"embedding_lookup_sparse/Unique:y:0*
Tindices0	*?
_class5
31loc:@embedding_lookup_sparse/embedding_lookup/100*'
_output_shapes
:?????????2*
dtype02*
(embedding_lookup_sparse/embedding_lookup?
1embedding_lookup_sparse/embedding_lookup/IdentityIdentity1embedding_lookup_sparse/embedding_lookup:output:0*
T0*?
_class5
31loc:@embedding_lookup_sparse/embedding_lookup/100*'
_output_shapes
:?????????223
1embedding_lookup_sparse/embedding_lookup/Identity?
3embedding_lookup_sparse/embedding_lookup/Identity_1Identity:embedding_lookup_sparse/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????225
3embedding_lookup_sparse/embedding_lookup/Identity_1?
embedding_lookup_sparseSparseSegmentSqrtN<embedding_lookup_sparse/embedding_lookup/Identity_1:output:0$embedding_lookup_sparse/Unique:idx:0 embedding_lookup_sparse/Cast:y:0*
T0*'
_output_shapes
:?????????22
embedding_lookup_sparse?
IdentityIdentity embedding_lookup_sparse:output:0^StatefulPartitionedCall)^embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????:: :22
StatefulPartitionedCallStatefulPartitionedCall2T
(embedding_lookup_sparse/embedding_lookup(embedding_lookup_sparse/embedding_lookup:N J
#
_output_shapes
:?????????
#
_user_specified_name	sentences:

_output_shapes
: 
?
?
(__inference_dense_22_layer_call_fn_68449

inputs
unknown:	2?
	unknown_0:	?
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
GPU 2J 8? *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_678872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
C__inference_dense_24_layer_call_and_return_conditional_losses_68480

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
C__inference_dense_25_layer_call_and_return_conditional_losses_67938

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
G__inference_sequential_6_layer_call_and_return_conditional_losses_68187
keras_layer_6_input
keras_layer_6_68159
keras_layer_6_68161	'
keras_layer_6_68163:
??52!
dense_22_68166:	2?
dense_22_68168:	?!
dense_23_68171:	?@
dense_23_68173:@ 
dense_24_68176:@ 
dense_24_68178:  
dense_25_68181: 
dense_25_68183:
identity?? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall?%keras_layer_6/StatefulPartitionedCall?
%keras_layer_6/StatefulPartitionedCallStatefulPartitionedCallkeras_layer_6_inputkeras_layer_6_68159keras_layer_6_68161keras_layer_6_68163*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_keras_layer_6_layer_call_and_return_conditional_losses_678682'
%keras_layer_6/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall.keras_layer_6/StatefulPartitionedCall:output:0dense_22_68166dense_22_68168*
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
GPU 2J 8? *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_678872"
 dense_22/StatefulPartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_68171dense_23_68173*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_679042"
 dense_23/StatefulPartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_24_68176dense_24_68178*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_679212"
 dense_24/StatefulPartitionedCall?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_68181dense_25_68183*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_679382"
 dense_25/StatefulPartitionedCall?
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall&^keras_layer_6/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : : : 2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2N
%keras_layer_6/StatefulPartitionedCall%keras_layer_6/StatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namekeras_layer_6_input:

_output_shapes
: 
?

?
C__inference_dense_22_layer_call_and_return_conditional_losses_67887

inputs1
matmul_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	2?*
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
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
G__inference_sequential_6_layer_call_and_return_conditional_losses_67945

inputs
keras_layer_6_67869
keras_layer_6_67871	'
keras_layer_6_67873:
??52!
dense_22_67888:	2?
dense_22_67890:	?!
dense_23_67905:	?@
dense_23_67907:@ 
dense_24_67922:@ 
dense_24_67924:  
dense_25_67939: 
dense_25_67941:
identity?? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall?%keras_layer_6/StatefulPartitionedCall?
%keras_layer_6/StatefulPartitionedCallStatefulPartitionedCallinputskeras_layer_6_67869keras_layer_6_67871keras_layer_6_67873*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_keras_layer_6_layer_call_and_return_conditional_losses_678682'
%keras_layer_6/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall.keras_layer_6/StatefulPartitionedCall:output:0dense_22_67888dense_22_67890*
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
GPU 2J 8? *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_678872"
 dense_22/StatefulPartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_67905dense_23_67907*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_679042"
 dense_23/StatefulPartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_24_67922dense_24_67924*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_679212"
 dense_24/StatefulPartitionedCall?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_67939dense_25_67941*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_25_layer_call_and_return_conditional_losses_679382"
 dense_25/StatefulPartitionedCall?
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall&^keras_layer_6/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : : : 2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2N
%keras_layer_6/StatefulPartitionedCall%keras_layer_6/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?

?
C__inference_dense_23_layer_call_and_return_conditional_losses_67904

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_24_layer_call_fn_68489

inputs
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_24_layer_call_and_return_conditional_losses_679212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?t
?
!__inference__traced_restore_68744
file_prefix-
assignvariableop_variable:
??525
"assignvariableop_1_dense_22_kernel:	2?/
 assignvariableop_2_dense_22_bias:	?5
"assignvariableop_3_dense_23_kernel:	?@.
 assignvariableop_4_dense_23_bias:@4
"assignvariableop_5_dense_24_kernel:@ .
 assignvariableop_6_dense_24_bias: 4
"assignvariableop_7_dense_25_kernel: .
 assignvariableop_8_dense_25_bias:)
assignvariableop_9_rmsprop_iter:	 +
!assignvariableop_10_rmsprop_decay: 3
)assignvariableop_11_rmsprop_learning_rate: .
$assignvariableop_12_rmsprop_momentum: )
assignvariableop_13_rmsprop_rho: #
assignvariableop_14_total: #
assignvariableop_15_count: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: <
(assignvariableop_18_rmsprop_variable_rms:
??52B
/assignvariableop_19_rmsprop_dense_22_kernel_rms:	2?<
-assignvariableop_20_rmsprop_dense_22_bias_rms:	?B
/assignvariableop_21_rmsprop_dense_23_kernel_rms:	?@;
-assignvariableop_22_rmsprop_dense_23_bias_rms:@A
/assignvariableop_23_rmsprop_dense_24_kernel_rms:@ ;
-assignvariableop_24_rmsprop_dense_24_bias_rms: A
/assignvariableop_25_rmsprop_dense_25_kernel_rms: ;
-assignvariableop_26_rmsprop_dense_25_bias_rms:
identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/Variable:0/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/Variable:0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_22_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp assignvariableop_2_dense_22_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_23_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp assignvariableop_4_dense_23_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_24_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense_24_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_25_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense_25_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_rmsprop_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp!assignvariableop_10_rmsprop_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp)assignvariableop_11_rmsprop_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_rmsprop_momentumIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_rmsprop_rhoIdentity_13:output:0"/device:CPU:0*
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
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_rmsprop_variable_rmsIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp/assignvariableop_19_rmsprop_dense_22_kernel_rmsIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp-assignvariableop_20_rmsprop_dense_22_bias_rmsIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_rmsprop_dense_23_kernel_rmsIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp-assignvariableop_22_rmsprop_dense_23_bias_rmsIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp/assignvariableop_23_rmsprop_dense_24_kernel_rmsIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp-assignvariableop_24_rmsprop_dense_24_bias_rmsIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp/assignvariableop_25_rmsprop_dense_25_kernel_rmsIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp-assignvariableop_26_rmsprop_dense_25_bias_rmsIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27?
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262(
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
_user_specified_namefile_prefix"?L
saver_filename:0StatefulPartitionedCall_3:0StatefulPartitionedCall_48"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
O
keras_layer_6_input8
%serving_default_keras_layer_6_input:0?????????>
dense_252
StatefulPartitionedCall_2:0?????????tensorflow/serving/predict2(

asset_path_initializer:0
tokens.txt:??
?-
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer
regularization_losses
trainable_variables
		variables

	keras_api

signatures
*h&call_and_return_all_conditional_losses
i__call__
j_default_save_signature"?*
_tf_keras_sequential?*{"name": "sequential_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "string", "sparse": false, "ragged": false, "name": "keras_layer_6_input"}}, {"class_name": "KerasLayer", "config": {"name": "keras_layer_6", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "string", "handle": "https://tfhub.dev/google/nnlm-id-dim50-with-normalization/2"}}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 21, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null]}, "string", "keras_layer_6_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "string", "sparse": false, "ragged": false, "name": "keras_layer_6_input"}}, {"class_name": "KerasLayer", "config": {"name": "keras_layer_6", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "string", "handle": "https://tfhub.dev/google/nnlm-id-dim50-with-normalization/2"}}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 21, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "sparse_categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
?
	_func
	_callable

Variable:0
regularization_losses
trainable_variables
	variables
	keras_api
*k&call_and_return_all_conditional_losses
l__call__"?
_tf_keras_layer?{"name": "keras_layer_6", "trainable": true, "expects_training_arg": true, "dtype": "string", "batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "stateful": false, "must_restore_from_config": false, "class_name": "KerasLayer", "config": {"name": "keras_layer_6", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "string", "handle": "https://tfhub.dev/google/nnlm-id-dim50-with-normalization/2"}}
?

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
*m&call_and_return_all_conditional_losses
n__call__"?
_tf_keras_layer?{"name": "dense_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
?

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
*o&call_and_return_all_conditional_losses
p__call__"?
_tf_keras_layer?{"name": "dense_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?

kernel
bias
 regularization_losses
!trainable_variables
"	variables
#	keras_api
*q&call_and_return_all_conditional_losses
r__call__"?
_tf_keras_layer?{"name": "dense_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?

$kernel
%bias
&regularization_losses
'trainable_variables
(	variables
)	keras_api
*s&call_and_return_all_conditional_losses
t__call__"?
_tf_keras_layer?{"name": "dense_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 21, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?
*iter
	+decay
,learning_rate
-momentum
.rho	rms_	rms`	rmsa	rmsb	rmsc	rmsd	rmse	$rmsf	%rmsg"
	optimizer
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
$7
%8"
trackable_list_wrapper
_
0
1
2
3
4
5
6
$7
%8"
trackable_list_wrapper
?
/non_trainable_variables
regularization_losses
trainable_variables
		variables
0layer_regularization_losses
1metrics
2layer_metrics

3layers
i__call__
j_default_save_signature
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
,
userving_default"
signature_map
?
4_table_initializer

5_table

embeddings
6	variables
6trainable_variables
7
signatures
#8_self_saveable_object_factories
v__call__
w_preprocess"
_generic_user_object
:
??522Variable
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
9non_trainable_variables
regularization_losses
trainable_variables
	variables
:layer_regularization_losses
;metrics
<layer_metrics

=layers
l__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
": 	2?2dense_22/kernel
:?2dense_22/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
>non_trainable_variables
regularization_losses
trainable_variables
	variables
?layer_regularization_losses
@metrics
Alayer_metrics

Blayers
n__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
": 	?@2dense_23/kernel
:@2dense_23/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Cnon_trainable_variables
regularization_losses
trainable_variables
	variables
Dlayer_regularization_losses
Emetrics
Flayer_metrics

Glayers
p__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
!:@ 2dense_24/kernel
: 2dense_24/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Hnon_trainable_variables
 regularization_losses
!trainable_variables
"	variables
Ilayer_regularization_losses
Jmetrics
Klayer_metrics

Llayers
r__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_25/kernel
:2dense_25/bias
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
?
Mnon_trainable_variables
&regularization_losses
'trainable_variables
(	variables
Nlayer_regularization_losses
Ometrics
Player_metrics

Qlayers
t__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_dict_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
R
T	_filename
#U_self_saveable_object_factories"
_generic_user_object
R
4_initializer
x_create_resource
y_initialize
z_destroy_resourceR 
'
0"
trackable_list_wrapper
"
signature_map
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
	Vtotal
	Wcount
X	variables
Y	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	Ztotal
	[count
\
_fn_kwargs
]	variables
^	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}
* 
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
V0
W1"
trackable_list_wrapper
-
X	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
Z0
[1"
trackable_list_wrapper
-
]	variables"
_generic_user_object
&:$
??522RMSprop/Variable/rms
,:*	2?2RMSprop/dense_22/kernel/rms
&:$?2RMSprop/dense_22/bias/rms
,:*	?@2RMSprop/dense_23/kernel/rms
%:#@2RMSprop/dense_23/bias/rms
+:)@ 2RMSprop/dense_24/kernel/rms
%:# 2RMSprop/dense_24/bias/rms
+:) 2RMSprop/dense_25/kernel/rms
%:#2RMSprop/dense_25/bias/rms
?2?
G__inference_sequential_6_layer_call_and_return_conditional_losses_68292
G__inference_sequential_6_layer_call_and_return_conditional_losses_68331
G__inference_sequential_6_layer_call_and_return_conditional_losses_68187
G__inference_sequential_6_layer_call_and_return_conditional_losses_68218?
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
?2?
,__inference_sequential_6_layer_call_fn_67970
,__inference_sequential_6_layer_call_fn_68358
,__inference_sequential_6_layer_call_fn_68385
,__inference_sequential_6_layer_call_fn_68156?
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
 __inference__wrapped_model_67850?
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
annotations? *.?+
)?&
keras_layer_6_input?????????
?2?
H__inference_keras_layer_6_layer_call_and_return_conditional_losses_68396
H__inference_keras_layer_6_layer_call_and_return_conditional_losses_68407?
???
FullArgSpec)
args!?
jself
jinputs

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
?2?
-__inference_keras_layer_6_layer_call_fn_68418
-__inference_keras_layer_6_layer_call_fn_68429?
???
FullArgSpec)
args!?
jself
jinputs

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
?2?
C__inference_dense_22_layer_call_and_return_conditional_losses_68440?
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
(__inference_dense_22_layer_call_fn_68449?
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
C__inference_dense_23_layer_call_and_return_conditional_losses_68460?
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
(__inference_dense_23_layer_call_fn_68469?
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
C__inference_dense_24_layer_call_and_return_conditional_losses_68480?
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
(__inference_dense_24_layer_call_fn_68489?
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
C__inference_dense_25_layer_call_and_return_conditional_losses_68500?
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
(__inference_dense_25_layer_call_fn_68509?
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
#__inference_signature_wrapper_68253keras_layer_6_input"?
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
?2?
__inference___call___37890?
???
FullArgSpec
args?
j	sentences
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
??????????
?2?
__inference__preprocess_37869?
???
FullArgSpec
args?
j	sentences
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
??????????
?2?
__inference__creator_37792?
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
annotations? *? 
?2?
__inference__initializer_37821?
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
annotations? *? 
?2?
__inference__destroyer_37815?
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
annotations? *? 
	J
Constm
__inference___call___37890O5{.?+
$?!
?
	sentences?????????
? "??????????26
__inference__creator_37792?

? 
? "? 8
__inference__destroyer_37815?

? 
? "? >
__inference__initializer_37821T5?

? 
? "? ?
__inference__preprocess_378695{.?+
$?!
?
	sentences?????????
? "I?F
?
0?????????	
?
1?????????	
?
2	?
 __inference__wrapped_model_67850|5{$%8?5
.?+
)?&
keras_layer_6_input?????????
? "3?0
.
dense_25"?
dense_25??????????
C__inference_dense_22_layer_call_and_return_conditional_losses_68440]/?,
%?"
 ?
inputs?????????2
? "&?#
?
0??????????
? |
(__inference_dense_22_layer_call_fn_68449P/?,
%?"
 ?
inputs?????????2
? "????????????
C__inference_dense_23_layer_call_and_return_conditional_losses_68460]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? |
(__inference_dense_23_layer_call_fn_68469P0?-
&?#
!?
inputs??????????
? "??????????@?
C__inference_dense_24_layer_call_and_return_conditional_losses_68480\/?,
%?"
 ?
inputs?????????@
? "%?"
?
0????????? 
? {
(__inference_dense_24_layer_call_fn_68489O/?,
%?"
 ?
inputs?????????@
? "?????????? ?
C__inference_dense_25_layer_call_and_return_conditional_losses_68500\$%/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? {
(__inference_dense_25_layer_call_fn_68509O$%/?,
%?"
 ?
inputs????????? 
? "???????????
H__inference_keras_layer_6_layer_call_and_return_conditional_losses_68396]5{/?,
%?"
?
inputs?????????
p 
? "%?"
?
0?????????2
? ?
H__inference_keras_layer_6_layer_call_and_return_conditional_losses_68407]5{/?,
%?"
?
inputs?????????
p
? "%?"
?
0?????????2
? ?
-__inference_keras_layer_6_layer_call_fn_68418P5{/?,
%?"
?
inputs?????????
p 
? "??????????2?
-__inference_keras_layer_6_layer_call_fn_68429P5{/?,
%?"
?
inputs?????????
p
? "??????????2?
G__inference_sequential_6_layer_call_and_return_conditional_losses_68187v5{$%@?=
6?3
)?&
keras_layer_6_input?????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_6_layer_call_and_return_conditional_losses_68218v5{$%@?=
6?3
)?&
keras_layer_6_input?????????
p

 
? "%?"
?
0?????????
? ?
G__inference_sequential_6_layer_call_and_return_conditional_losses_68292i5{$%3?0
)?&
?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_6_layer_call_and_return_conditional_losses_68331i5{$%3?0
)?&
?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
,__inference_sequential_6_layer_call_fn_67970i5{$%@?=
6?3
)?&
keras_layer_6_input?????????
p 

 
? "???????????
,__inference_sequential_6_layer_call_fn_68156i5{$%@?=
6?3
)?&
keras_layer_6_input?????????
p

 
? "???????????
,__inference_sequential_6_layer_call_fn_68358\5{$%3?0
)?&
?
inputs?????????
p 

 
? "???????????
,__inference_sequential_6_layer_call_fn_68385\5{$%3?0
)?&
?
inputs?????????
p

 
? "???????????
#__inference_signature_wrapper_68253?5{$%O?L
? 
E?B
@
keras_layer_6_input)?&
keras_layer_6_input?????????"3?0
.
dense_25"?
dense_25?????????