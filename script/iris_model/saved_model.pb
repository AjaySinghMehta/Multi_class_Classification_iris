Ве
п 
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
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
executor_typestring Ии
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8№д
Т
RMSprop/Output_layer/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameRMSprop/Output_layer/bias/rms
Л
1RMSprop/Output_layer/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/Output_layer/bias/rms*
_output_shapes
:*
dtype0
Ы
RMSprop/Output_layer/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*0
shared_name!RMSprop/Output_layer/kernel/rms
Ф
3RMSprop/Output_layer/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/Output_layer/kernel/rms*
_output_shapes
:	А*
dtype0
Ч
RMSprop/Hidden_layer_2/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!RMSprop/Hidden_layer_2/bias/rms
Р
3RMSprop/Hidden_layer_2/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/Hidden_layer_2/bias/rms*
_output_shapes	
:А*
dtype0
а
!RMSprop/Hidden_layer_2/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*2
shared_name#!RMSprop/Hidden_layer_2/kernel/rms
Щ
5RMSprop/Hidden_layer_2/kernel/rms/Read/ReadVariableOpReadVariableOp!RMSprop/Hidden_layer_2/kernel/rms* 
_output_shapes
:
АА*
dtype0
Ч
RMSprop/Hidden_layer_1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!RMSprop/Hidden_layer_1/bias/rms
Р
3RMSprop/Hidden_layer_1/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/Hidden_layer_1/bias/rms*
_output_shapes	
:А*
dtype0
Я
!RMSprop/Hidden_layer_1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*2
shared_name#!RMSprop/Hidden_layer_1/kernel/rms
Ш
5RMSprop/Hidden_layer_1/kernel/rms/Read/ReadVariableOpReadVariableOp!RMSprop/Hidden_layer_1/kernel/rms*
_output_shapes
:	А*
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
z
Output_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameOutput_layer/bias
s
%Output_layer/bias/Read/ReadVariableOpReadVariableOpOutput_layer/bias*
_output_shapes
:*
dtype0
Г
Output_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_nameOutput_layer/kernel
|
'Output_layer/kernel/Read/ReadVariableOpReadVariableOpOutput_layer/kernel*
_output_shapes
:	А*
dtype0

Hidden_layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameHidden_layer_2/bias
x
'Hidden_layer_2/bias/Read/ReadVariableOpReadVariableOpHidden_layer_2/bias*
_output_shapes	
:А*
dtype0
И
Hidden_layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*&
shared_nameHidden_layer_2/kernel
Б
)Hidden_layer_2/kernel/Read/ReadVariableOpReadVariableOpHidden_layer_2/kernel* 
_output_shapes
:
АА*
dtype0

Hidden_layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameHidden_layer_1/bias
x
'Hidden_layer_1/bias/Read/ReadVariableOpReadVariableOpHidden_layer_1/bias*
_output_shapes	
:А*
dtype0
З
Hidden_layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameHidden_layer_1/kernel
А
)Hidden_layer_1/kernel/Read/ReadVariableOpReadVariableOpHidden_layer_1/kernel*
_output_shapes
:	А*
dtype0
З
$serving_default_Hidden_layer_1_inputPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
╩
StatefulPartitionedCallStatefulPartitionedCall$serving_default_Hidden_layer_1_inputHidden_layer_1/kernelHidden_layer_1/biasHidden_layer_2/kernelHidden_layer_2/biasOutput_layer/kernelOutput_layer/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_67063

NoOpNoOp
└)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*√(
valueё(Bю( Bч(
┴
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
ж
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
ж
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
ж
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias*
.
0
1
2
3
#4
$5*
.
0
1
2
3
#4
$5*
* 
░
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
*trace_0
+trace_1
,trace_2
-trace_3* 
6
.trace_0
/trace_1
0trace_2
1trace_3* 
* 
Е
2iter
	3decay
4learning_rate
5momentum
6rho	rmsX	rmsY	rmsZ	rms[	#rms\	$rms]*

7serving_default* 

0
1*

0
1*
* 
У
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

=trace_0* 

>trace_0* 
e_
VARIABLE_VALUEHidden_layer_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEHidden_layer_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
У
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Dtrace_0* 

Etrace_0* 
e_
VARIABLE_VALUEHidden_layer_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEHidden_layer_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

#0
$1*

#0
$1*
* 
У
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

Ktrace_0* 

Ltrace_0* 
c]
VARIABLE_VALUEOutput_layer/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEOutput_layer/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

M0
N1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
OI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
O	variables
P	keras_api
	Qtotal
	Rcount*
H
S	variables
T	keras_api
	Utotal
	Vcount
W
_fn_kwargs*

Q0
R1*

O	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

U0
V1*

S	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
РЙ
VARIABLE_VALUE!RMSprop/Hidden_layer_1/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
МЕ
VARIABLE_VALUERMSprop/Hidden_layer_1/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
РЙ
VARIABLE_VALUE!RMSprop/Hidden_layer_2/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
МЕ
VARIABLE_VALUERMSprop/Hidden_layer_2/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUERMSprop/Output_layer/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
КГ
VARIABLE_VALUERMSprop/Output_layer/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
О	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename)Hidden_layer_1/kernel/Read/ReadVariableOp'Hidden_layer_1/bias/Read/ReadVariableOp)Hidden_layer_2/kernel/Read/ReadVariableOp'Hidden_layer_2/bias/Read/ReadVariableOp'Output_layer/kernel/Read/ReadVariableOp%Output_layer/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp5RMSprop/Hidden_layer_1/kernel/rms/Read/ReadVariableOp3RMSprop/Hidden_layer_1/bias/rms/Read/ReadVariableOp5RMSprop/Hidden_layer_2/kernel/rms/Read/ReadVariableOp3RMSprop/Hidden_layer_2/bias/rms/Read/ReadVariableOp3RMSprop/Output_layer/kernel/rms/Read/ReadVariableOp1RMSprop/Output_layer/bias/rms/Read/ReadVariableOpConst*"
Tin
2	*
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
GPU 2J 8В *'
f"R 
__inference__traced_save_67293
х
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameHidden_layer_1/kernelHidden_layer_1/biasHidden_layer_2/kernelHidden_layer_2/biasOutput_layer/kernelOutput_layer/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototal_1count_1totalcount!RMSprop/Hidden_layer_1/kernel/rmsRMSprop/Hidden_layer_1/bias/rms!RMSprop/Hidden_layer_2/kernel/rmsRMSprop/Hidden_layer_2/bias/rmsRMSprop/Output_layer/kernel/rmsRMSprop/Output_layer/bias/rms*!
Tin
2*
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
GPU 2J 8В **
f%R#
!__inference__traced_restore_67366∙╜
╦
Ъ
,__inference_Output_layer_layer_call_fn_67196

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Output_layer_layer_call_and_return_conditional_losses_66878o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
дV
Г
!__inference__traced_restore_67366
file_prefix9
&assignvariableop_hidden_layer_1_kernel:	А5
&assignvariableop_1_hidden_layer_1_bias:	А<
(assignvariableop_2_hidden_layer_2_kernel:
АА5
&assignvariableop_3_hidden_layer_2_bias:	А9
&assignvariableop_4_output_layer_kernel:	А2
$assignvariableop_5_output_layer_bias:)
assignvariableop_6_rmsprop_iter:	 *
 assignvariableop_7_rmsprop_decay: 2
(assignvariableop_8_rmsprop_learning_rate: -
#assignvariableop_9_rmsprop_momentum: )
assignvariableop_10_rmsprop_rho: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: #
assignvariableop_13_total: #
assignvariableop_14_count: H
5assignvariableop_15_rmsprop_hidden_layer_1_kernel_rms:	АB
3assignvariableop_16_rmsprop_hidden_layer_1_bias_rms:	АI
5assignvariableop_17_rmsprop_hidden_layer_2_kernel_rms:
ААB
3assignvariableop_18_rmsprop_hidden_layer_2_bias_rms:	АF
3assignvariableop_19_rmsprop_output_layer_kernel_rms:	А?
1assignvariableop_20_rmsprop_output_layer_bias_rms:
identity_22ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9С
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╖

valueн
Bк
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЬ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B М
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOpAssignVariableOp&assignvariableop_hidden_layer_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_1AssignVariableOp&assignvariableop_1_hidden_layer_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_2AssignVariableOp(assignvariableop_2_hidden_layer_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_3AssignVariableOp&assignvariableop_3_hidden_layer_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_4AssignVariableOp&assignvariableop_4_output_layer_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_5AssignVariableOp$assignvariableop_5_output_layer_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_6AssignVariableOpassignvariableop_6_rmsprop_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_7AssignVariableOp assignvariableop_7_rmsprop_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_8AssignVariableOp(assignvariableop_8_rmsprop_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_9AssignVariableOp#assignvariableop_9_rmsprop_momentumIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_10AssignVariableOpassignvariableop_10_rmsprop_rhoIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_15AssignVariableOp5assignvariableop_15_rmsprop_hidden_layer_1_kernel_rmsIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_16AssignVariableOp3assignvariableop_16_rmsprop_hidden_layer_1_bias_rmsIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_17AssignVariableOp5assignvariableop_17_rmsprop_hidden_layer_2_kernel_rmsIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_18AssignVariableOp3assignvariableop_18_rmsprop_hidden_layer_2_bias_rmsIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_19AssignVariableOp3assignvariableop_19_rmsprop_output_layer_kernel_rmsIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:в
AssignVariableOp_20AssignVariableOp1assignvariableop_20_rmsprop_output_layer_bias_rmsIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Э
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: К
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202(
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
╙
Ю
.__inference_Hidden_layer_2_layer_call_fn_67176

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_66861p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╪2
▒	
__inference__traced_save_67293
file_prefix4
0savev2_hidden_layer_1_kernel_read_readvariableop2
.savev2_hidden_layer_1_bias_read_readvariableop4
0savev2_hidden_layer_2_kernel_read_readvariableop2
.savev2_hidden_layer_2_bias_read_readvariableop2
.savev2_output_layer_kernel_read_readvariableop0
,savev2_output_layer_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop@
<savev2_rmsprop_hidden_layer_1_kernel_rms_read_readvariableop>
:savev2_rmsprop_hidden_layer_1_bias_rms_read_readvariableop@
<savev2_rmsprop_hidden_layer_2_kernel_rms_read_readvariableop>
:savev2_rmsprop_hidden_layer_2_bias_rms_read_readvariableop>
:savev2_rmsprop_output_layer_kernel_rms_read_readvariableop<
8savev2_rmsprop_output_layer_bias_rms_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: О
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╖

valueн
Bк
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЩ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B ╖	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:00savev2_hidden_layer_1_kernel_read_readvariableop.savev2_hidden_layer_1_bias_read_readvariableop0savev2_hidden_layer_2_kernel_read_readvariableop.savev2_hidden_layer_2_bias_read_readvariableop.savev2_output_layer_kernel_read_readvariableop,savev2_output_layer_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop<savev2_rmsprop_hidden_layer_1_kernel_rms_read_readvariableop:savev2_rmsprop_hidden_layer_1_bias_rms_read_readvariableop<savev2_rmsprop_hidden_layer_2_kernel_rms_read_readvariableop:savev2_rmsprop_hidden_layer_2_bias_rms_read_readvariableop:savev2_rmsprop_output_layer_kernel_rms_read_readvariableop8savev2_rmsprop_output_layer_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ч
_input_shapesЕ
В: :	А:А:
АА:А:	А:: : : : : : : : : :	А:А:
АА:А:	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	А:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :
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
: :%!

_output_shapes
:	А:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::

_output_shapes
: 
и

№
I__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_66844

inputs1
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
м

¤
I__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_67187

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
з

∙
G__inference_Output_layer_layer_call_and_return_conditional_losses_66878

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ь
╬
G__inference_sequential_7_layer_call_and_return_conditional_losses_67147

inputs@
-hidden_layer_1_matmul_readvariableop_resource:	А=
.hidden_layer_1_biasadd_readvariableop_resource:	АA
-hidden_layer_2_matmul_readvariableop_resource:
АА=
.hidden_layer_2_biasadd_readvariableop_resource:	А>
+output_layer_matmul_readvariableop_resource:	А:
,output_layer_biasadd_readvariableop_resource:
identityИв%Hidden_layer_1/BiasAdd/ReadVariableOpв$Hidden_layer_1/MatMul/ReadVariableOpв%Hidden_layer_2/BiasAdd/ReadVariableOpв$Hidden_layer_2/MatMul/ReadVariableOpв#Output_layer/BiasAdd/ReadVariableOpв"Output_layer/MatMul/ReadVariableOpУ
$Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0И
Hidden_layer_1/MatMulMatMulinputs,Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АС
%Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0д
Hidden_layer_1/BiasAddBiasAddHidden_layer_1/MatMul:product:0-Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аo
Hidden_layer_1/ReluReluHidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:         АФ
$Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0г
Hidden_layer_2/MatMulMatMul!Hidden_layer_1/Relu:activations:0,Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АС
%Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0д
Hidden_layer_2/BiasAddBiasAddHidden_layer_2/MatMul:product:0-Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аo
Hidden_layer_2/ReluReluHidden_layer_2/BiasAdd:output:0*
T0*(
_output_shapes
:         АП
"Output_layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ю
Output_layer/MatMulMatMul!Hidden_layer_2/Relu:activations:0*Output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         М
#Output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Э
Output_layer/BiasAddBiasAddOutput_layer/MatMul:product:0+Output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         p
Output_layer/SoftmaxSoftmaxOutput_layer/BiasAdd:output:0*
T0*'
_output_shapes
:         m
IdentityIdentityOutput_layer/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         п
NoOpNoOp&^Hidden_layer_1/BiasAdd/ReadVariableOp%^Hidden_layer_1/MatMul/ReadVariableOp&^Hidden_layer_2/BiasAdd/ReadVariableOp%^Hidden_layer_2/MatMul/ReadVariableOp$^Output_layer/BiasAdd/ReadVariableOp#^Output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 2N
%Hidden_layer_1/BiasAdd/ReadVariableOp%Hidden_layer_1/BiasAdd/ReadVariableOp2L
$Hidden_layer_1/MatMul/ReadVariableOp$Hidden_layer_1/MatMul/ReadVariableOp2N
%Hidden_layer_2/BiasAdd/ReadVariableOp%Hidden_layer_2/BiasAdd/ReadVariableOp2L
$Hidden_layer_2/MatMul/ReadVariableOp$Hidden_layer_2/MatMul/ReadVariableOp2J
#Output_layer/BiasAdd/ReadVariableOp#Output_layer/BiasAdd/ReadVariableOp2H
"Output_layer/MatMul/ReadVariableOp"Output_layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
м

¤
I__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_66861

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╨
Э
.__inference_Hidden_layer_1_layer_call_fn_67156

inputs
unknown:	А
	unknown_0:	А
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_66844p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ь
╬
G__inference_sequential_7_layer_call_and_return_conditional_losses_67122

inputs@
-hidden_layer_1_matmul_readvariableop_resource:	А=
.hidden_layer_1_biasadd_readvariableop_resource:	АA
-hidden_layer_2_matmul_readvariableop_resource:
АА=
.hidden_layer_2_biasadd_readvariableop_resource:	А>
+output_layer_matmul_readvariableop_resource:	А:
,output_layer_biasadd_readvariableop_resource:
identityИв%Hidden_layer_1/BiasAdd/ReadVariableOpв$Hidden_layer_1/MatMul/ReadVariableOpв%Hidden_layer_2/BiasAdd/ReadVariableOpв$Hidden_layer_2/MatMul/ReadVariableOpв#Output_layer/BiasAdd/ReadVariableOpв"Output_layer/MatMul/ReadVariableOpУ
$Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0И
Hidden_layer_1/MatMulMatMulinputs,Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АС
%Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0д
Hidden_layer_1/BiasAddBiasAddHidden_layer_1/MatMul:product:0-Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аo
Hidden_layer_1/ReluReluHidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:         АФ
$Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0г
Hidden_layer_2/MatMulMatMul!Hidden_layer_1/Relu:activations:0,Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АС
%Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0д
Hidden_layer_2/BiasAddBiasAddHidden_layer_2/MatMul:product:0-Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аo
Hidden_layer_2/ReluReluHidden_layer_2/BiasAdd:output:0*
T0*(
_output_shapes
:         АП
"Output_layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ю
Output_layer/MatMulMatMul!Hidden_layer_2/Relu:activations:0*Output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         М
#Output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Э
Output_layer/BiasAddBiasAddOutput_layer/MatMul:product:0+Output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         p
Output_layer/SoftmaxSoftmaxOutput_layer/BiasAdd:output:0*
T0*'
_output_shapes
:         m
IdentityIdentityOutput_layer/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         п
NoOpNoOp&^Hidden_layer_1/BiasAdd/ReadVariableOp%^Hidden_layer_1/MatMul/ReadVariableOp&^Hidden_layer_2/BiasAdd/ReadVariableOp%^Hidden_layer_2/MatMul/ReadVariableOp$^Output_layer/BiasAdd/ReadVariableOp#^Output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 2N
%Hidden_layer_1/BiasAdd/ReadVariableOp%Hidden_layer_1/BiasAdd/ReadVariableOp2L
$Hidden_layer_1/MatMul/ReadVariableOp$Hidden_layer_1/MatMul/ReadVariableOp2N
%Hidden_layer_2/BiasAdd/ReadVariableOp%Hidden_layer_2/BiasAdd/ReadVariableOp2L
$Hidden_layer_2/MatMul/ReadVariableOp$Hidden_layer_2/MatMul/ReadVariableOp2J
#Output_layer/BiasAdd/ReadVariableOp#Output_layer/BiasAdd/ReadVariableOp2H
"Output_layer/MatMul/ReadVariableOp"Output_layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ў
Л
,__inference_sequential_7_layer_call_fn_67097

inputs
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А
	unknown_4:
identityИвStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_66968o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ё
Р
#__inference_signature_wrapper_67063
hidden_layer_1_input
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А
	unknown_4:
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallhidden_layer_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_66826o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:         
.
_user_specified_nameHidden_layer_1_input
м
┼
G__inference_sequential_7_layer_call_and_return_conditional_losses_66885

inputs'
hidden_layer_1_66845:	А#
hidden_layer_1_66847:	А(
hidden_layer_2_66862:
АА#
hidden_layer_2_66864:	А%
output_layer_66879:	А 
output_layer_66881:
identityИв&Hidden_layer_1/StatefulPartitionedCallв&Hidden_layer_2/StatefulPartitionedCallв$Output_layer/StatefulPartitionedCallЖ
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCallinputshidden_layer_1_66845hidden_layer_1_66847*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_66844п
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_66862hidden_layer_2_66864*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_66861ж
$Output_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0output_layer_66879output_layer_66881*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Output_layer_layer_call_and_return_conditional_losses_66878|
IdentityIdentity-Output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┐
NoOpNoOp'^Hidden_layer_1/StatefulPartitionedCall'^Hidden_layer_2/StatefulPartitionedCall%^Output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 2P
&Hidden_layer_1/StatefulPartitionedCall&Hidden_layer_1/StatefulPartitionedCall2P
&Hidden_layer_2/StatefulPartitionedCall&Hidden_layer_2/StatefulPartitionedCall2L
$Output_layer/StatefulPartitionedCall$Output_layer/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
а	
Щ
,__inference_sequential_7_layer_call_fn_66900
hidden_layer_1_input
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А
	unknown_4:
identityИвStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallhidden_layer_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_66885o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:         
.
_user_specified_nameHidden_layer_1_input
╓
╙
G__inference_sequential_7_layer_call_and_return_conditional_losses_67038
hidden_layer_1_input'
hidden_layer_1_67022:	А#
hidden_layer_1_67024:	А(
hidden_layer_2_67027:
АА#
hidden_layer_2_67029:	А%
output_layer_67032:	А 
output_layer_67034:
identityИв&Hidden_layer_1/StatefulPartitionedCallв&Hidden_layer_2/StatefulPartitionedCallв$Output_layer/StatefulPartitionedCallФ
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCallhidden_layer_1_inputhidden_layer_1_67022hidden_layer_1_67024*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_66844п
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_67027hidden_layer_2_67029*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_66861ж
$Output_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0output_layer_67032output_layer_67034*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Output_layer_layer_call_and_return_conditional_losses_66878|
IdentityIdentity-Output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┐
NoOpNoOp'^Hidden_layer_1/StatefulPartitionedCall'^Hidden_layer_2/StatefulPartitionedCall%^Output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 2P
&Hidden_layer_1/StatefulPartitionedCall&Hidden_layer_1/StatefulPartitionedCall2P
&Hidden_layer_2/StatefulPartitionedCall&Hidden_layer_2/StatefulPartitionedCall2L
$Output_layer/StatefulPartitionedCall$Output_layer/StatefulPartitionedCall:] Y
'
_output_shapes
:         
.
_user_specified_nameHidden_layer_1_input
м
┼
G__inference_sequential_7_layer_call_and_return_conditional_losses_66968

inputs'
hidden_layer_1_66952:	А#
hidden_layer_1_66954:	А(
hidden_layer_2_66957:
АА#
hidden_layer_2_66959:	А%
output_layer_66962:	А 
output_layer_66964:
identityИв&Hidden_layer_1/StatefulPartitionedCallв&Hidden_layer_2/StatefulPartitionedCallв$Output_layer/StatefulPartitionedCallЖ
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCallinputshidden_layer_1_66952hidden_layer_1_66954*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_66844п
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_66957hidden_layer_2_66959*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_66861ж
$Output_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0output_layer_66962output_layer_66964*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Output_layer_layer_call_and_return_conditional_losses_66878|
IdentityIdentity-Output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┐
NoOpNoOp'^Hidden_layer_1/StatefulPartitionedCall'^Hidden_layer_2/StatefulPartitionedCall%^Output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 2P
&Hidden_layer_1/StatefulPartitionedCall&Hidden_layer_1/StatefulPartitionedCall2P
&Hidden_layer_2/StatefulPartitionedCall&Hidden_layer_2/StatefulPartitionedCall2L
$Output_layer/StatefulPartitionedCall$Output_layer/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ў
Л
,__inference_sequential_7_layer_call_fn_67080

inputs
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А
	unknown_4:
identityИвStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_66885o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
и

№
I__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_67167

inputs1
matmul_readvariableop_resource:	А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
з

∙
G__inference_Output_layer_layer_call_and_return_conditional_losses_67207

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
а	
Щ
,__inference_sequential_7_layer_call_fn_67000
hidden_layer_1_input
unknown:	А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А
	unknown_4:
identityИвStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallhidden_layer_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_66968o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:         
.
_user_specified_nameHidden_layer_1_input
╓
╙
G__inference_sequential_7_layer_call_and_return_conditional_losses_67019
hidden_layer_1_input'
hidden_layer_1_67003:	А#
hidden_layer_1_67005:	А(
hidden_layer_2_67008:
АА#
hidden_layer_2_67010:	А%
output_layer_67013:	А 
output_layer_67015:
identityИв&Hidden_layer_1/StatefulPartitionedCallв&Hidden_layer_2/StatefulPartitionedCallв$Output_layer/StatefulPartitionedCallФ
&Hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCallhidden_layer_1_inputhidden_layer_1_67003hidden_layer_1_67005*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_66844п
&Hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_67008hidden_layer_2_67010*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_66861ж
$Output_layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_2/StatefulPartitionedCall:output:0output_layer_67013output_layer_67015*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Output_layer_layer_call_and_return_conditional_losses_66878|
IdentityIdentity-Output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┐
NoOpNoOp'^Hidden_layer_1/StatefulPartitionedCall'^Hidden_layer_2/StatefulPartitionedCall%^Output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 2P
&Hidden_layer_1/StatefulPartitionedCall&Hidden_layer_1/StatefulPartitionedCall2P
&Hidden_layer_2/StatefulPartitionedCall&Hidden_layer_2/StatefulPartitionedCall2L
$Output_layer/StatefulPartitionedCall$Output_layer/StatefulPartitionedCall:] Y
'
_output_shapes
:         
.
_user_specified_nameHidden_layer_1_input
№%
╤
 __inference__wrapped_model_66826
hidden_layer_1_inputM
:sequential_7_hidden_layer_1_matmul_readvariableop_resource:	АJ
;sequential_7_hidden_layer_1_biasadd_readvariableop_resource:	АN
:sequential_7_hidden_layer_2_matmul_readvariableop_resource:
ААJ
;sequential_7_hidden_layer_2_biasadd_readvariableop_resource:	АK
8sequential_7_output_layer_matmul_readvariableop_resource:	АG
9sequential_7_output_layer_biasadd_readvariableop_resource:
identityИв2sequential_7/Hidden_layer_1/BiasAdd/ReadVariableOpв1sequential_7/Hidden_layer_1/MatMul/ReadVariableOpв2sequential_7/Hidden_layer_2/BiasAdd/ReadVariableOpв1sequential_7/Hidden_layer_2/MatMul/ReadVariableOpв0sequential_7/Output_layer/BiasAdd/ReadVariableOpв/sequential_7/Output_layer/MatMul/ReadVariableOpн
1sequential_7/Hidden_layer_1/MatMul/ReadVariableOpReadVariableOp:sequential_7_hidden_layer_1_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0░
"sequential_7/Hidden_layer_1/MatMulMatMulhidden_layer_1_input9sequential_7/Hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ал
2sequential_7/Hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp;sequential_7_hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╦
#sequential_7/Hidden_layer_1/BiasAddBiasAdd,sequential_7/Hidden_layer_1/MatMul:product:0:sequential_7/Hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЙ
 sequential_7/Hidden_layer_1/ReluRelu,sequential_7/Hidden_layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:         Ао
1sequential_7/Hidden_layer_2/MatMul/ReadVariableOpReadVariableOp:sequential_7_hidden_layer_2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╩
"sequential_7/Hidden_layer_2/MatMulMatMul.sequential_7/Hidden_layer_1/Relu:activations:09sequential_7/Hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ал
2sequential_7/Hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp;sequential_7_hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╦
#sequential_7/Hidden_layer_2/BiasAddBiasAdd,sequential_7/Hidden_layer_2/MatMul:product:0:sequential_7/Hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЙ
 sequential_7/Hidden_layer_2/ReluRelu,sequential_7/Hidden_layer_2/BiasAdd:output:0*
T0*(
_output_shapes
:         Ай
/sequential_7/Output_layer/MatMul/ReadVariableOpReadVariableOp8sequential_7_output_layer_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0┼
 sequential_7/Output_layer/MatMulMatMul.sequential_7/Hidden_layer_2/Relu:activations:07sequential_7/Output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ж
0sequential_7/Output_layer/BiasAdd/ReadVariableOpReadVariableOp9sequential_7_output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0─
!sequential_7/Output_layer/BiasAddBiasAdd*sequential_7/Output_layer/MatMul:product:08sequential_7/Output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         К
!sequential_7/Output_layer/SoftmaxSoftmax*sequential_7/Output_layer/BiasAdd:output:0*
T0*'
_output_shapes
:         z
IdentityIdentity+sequential_7/Output_layer/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ¤
NoOpNoOp3^sequential_7/Hidden_layer_1/BiasAdd/ReadVariableOp2^sequential_7/Hidden_layer_1/MatMul/ReadVariableOp3^sequential_7/Hidden_layer_2/BiasAdd/ReadVariableOp2^sequential_7/Hidden_layer_2/MatMul/ReadVariableOp1^sequential_7/Output_layer/BiasAdd/ReadVariableOp0^sequential_7/Output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 2h
2sequential_7/Hidden_layer_1/BiasAdd/ReadVariableOp2sequential_7/Hidden_layer_1/BiasAdd/ReadVariableOp2f
1sequential_7/Hidden_layer_1/MatMul/ReadVariableOp1sequential_7/Hidden_layer_1/MatMul/ReadVariableOp2h
2sequential_7/Hidden_layer_2/BiasAdd/ReadVariableOp2sequential_7/Hidden_layer_2/BiasAdd/ReadVariableOp2f
1sequential_7/Hidden_layer_2/MatMul/ReadVariableOp1sequential_7/Hidden_layer_2/MatMul/ReadVariableOp2d
0sequential_7/Output_layer/BiasAdd/ReadVariableOp0sequential_7/Output_layer/BiasAdd/ReadVariableOp2b
/sequential_7/Output_layer/MatMul/ReadVariableOp/sequential_7/Output_layer/MatMul/ReadVariableOp:] Y
'
_output_shapes
:         
.
_user_specified_nameHidden_layer_1_input"╡	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╔
serving_default╡
U
Hidden_layer_1_input=
&serving_default_Hidden_layer_1_input:0         @
Output_layer0
StatefulPartitionedCall:0         tensorflow/serving/predict:╥n
█
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
╗
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
╗
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
╗
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
J
0
1
2
3
#4
$5"
trackable_list_wrapper
J
0
1
2
3
#4
$5"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
ц
*trace_0
+trace_1
,trace_2
-trace_32√
,__inference_sequential_7_layer_call_fn_66900
,__inference_sequential_7_layer_call_fn_67080
,__inference_sequential_7_layer_call_fn_67097
,__inference_sequential_7_layer_call_fn_67000└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z*trace_0z+trace_1z,trace_2z-trace_3
╥
.trace_0
/trace_1
0trace_2
1trace_32ч
G__inference_sequential_7_layer_call_and_return_conditional_losses_67122
G__inference_sequential_7_layer_call_and_return_conditional_losses_67147
G__inference_sequential_7_layer_call_and_return_conditional_losses_67019
G__inference_sequential_7_layer_call_and_return_conditional_losses_67038└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z.trace_0z/trace_1z0trace_2z1trace_3
╪B╒
 __inference__wrapped_model_66826Hidden_layer_1_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ф
2iter
	3decay
4learning_rate
5momentum
6rho	rmsX	rmsY	rmsZ	rms[	#rms\	$rms]"
	optimizer
,
7serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Є
=trace_02╒
.__inference_Hidden_layer_1_layer_call_fn_67156в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z=trace_0
Н
>trace_02Ё
I__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_67167в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z>trace_0
(:&	А2Hidden_layer_1/kernel
": А2Hidden_layer_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Є
Dtrace_02╒
.__inference_Hidden_layer_2_layer_call_fn_67176в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zDtrace_0
Н
Etrace_02Ё
I__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_67187в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zEtrace_0
):'
АА2Hidden_layer_2/kernel
": А2Hidden_layer_2/bias
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
Ё
Ktrace_02╙
,__inference_Output_layer_layer_call_fn_67196в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zKtrace_0
Л
Ltrace_02ю
G__inference_Output_layer_layer_call_and_return_conditional_losses_67207в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zLtrace_0
&:$	А2Output_layer/kernel
:2Output_layer/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
МBЙ
,__inference_sequential_7_layer_call_fn_66900Hidden_layer_1_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
■B√
,__inference_sequential_7_layer_call_fn_67080inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
■B√
,__inference_sequential_7_layer_call_fn_67097inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
МBЙ
,__inference_sequential_7_layer_call_fn_67000Hidden_layer_1_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЩBЦ
G__inference_sequential_7_layer_call_and_return_conditional_losses_67122inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЩBЦ
G__inference_sequential_7_layer_call_and_return_conditional_losses_67147inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
зBд
G__inference_sequential_7_layer_call_and_return_conditional_losses_67019Hidden_layer_1_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
зBд
G__inference_sequential_7_layer_call_and_return_conditional_losses_67038Hidden_layer_1_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
╫B╘
#__inference_signature_wrapper_67063Hidden_layer_1_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
тB▀
.__inference_Hidden_layer_1_layer_call_fn_67156inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_67167inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
тB▀
.__inference_Hidden_layer_2_layer_call_fn_67176inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_67187inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
рB▌
,__inference_Output_layer_layer_call_fn_67196inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
G__inference_Output_layer_layer_call_and_return_conditional_losses_67207inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
N
O	variables
P	keras_api
	Qtotal
	Rcount"
_tf_keras_metric
^
S	variables
T	keras_api
	Utotal
	Vcount
W
_fn_kwargs"
_tf_keras_metric
.
Q0
R1"
trackable_list_wrapper
-
O	variables"
_generic_user_object
:  (2total
:  (2count
.
U0
V1"
trackable_list_wrapper
-
S	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
2:0	А2!RMSprop/Hidden_layer_1/kernel/rms
,:*А2RMSprop/Hidden_layer_1/bias/rms
3:1
АА2!RMSprop/Hidden_layer_2/kernel/rms
,:*А2RMSprop/Hidden_layer_2/bias/rms
0:.	А2RMSprop/Output_layer/kernel/rms
):'2RMSprop/Output_layer/bias/rmsк
I__inference_Hidden_layer_1_layer_call_and_return_conditional_losses_67167]/в,
%в"
 К
inputs         
к "&в#
К
0         А
Ъ В
.__inference_Hidden_layer_1_layer_call_fn_67156P/в,
%в"
 К
inputs         
к "К         Ал
I__inference_Hidden_layer_2_layer_call_and_return_conditional_losses_67187^0в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ Г
.__inference_Hidden_layer_2_layer_call_fn_67176Q0в-
&в#
!К
inputs         А
к "К         Аи
G__inference_Output_layer_layer_call_and_return_conditional_losses_67207]#$0в-
&в#
!К
inputs         А
к "%в"
К
0         
Ъ А
,__inference_Output_layer_layer_call_fn_67196P#$0в-
&в#
!К
inputs         А
к "К         й
 __inference__wrapped_model_66826Д#$=в:
3в0
.К+
Hidden_layer_1_input         
к ";к8
6
Output_layer&К#
Output_layer         ┴
G__inference_sequential_7_layer_call_and_return_conditional_losses_67019v#$EвB
;в8
.К+
Hidden_layer_1_input         
p 

 
к "%в"
К
0         
Ъ ┴
G__inference_sequential_7_layer_call_and_return_conditional_losses_67038v#$EвB
;в8
.К+
Hidden_layer_1_input         
p

 
к "%в"
К
0         
Ъ │
G__inference_sequential_7_layer_call_and_return_conditional_losses_67122h#$7в4
-в*
 К
inputs         
p 

 
к "%в"
К
0         
Ъ │
G__inference_sequential_7_layer_call_and_return_conditional_losses_67147h#$7в4
-в*
 К
inputs         
p

 
к "%в"
К
0         
Ъ Щ
,__inference_sequential_7_layer_call_fn_66900i#$EвB
;в8
.К+
Hidden_layer_1_input         
p 

 
к "К         Щ
,__inference_sequential_7_layer_call_fn_67000i#$EвB
;в8
.К+
Hidden_layer_1_input         
p

 
к "К         Л
,__inference_sequential_7_layer_call_fn_67080[#$7в4
-в*
 К
inputs         
p 

 
к "К         Л
,__inference_sequential_7_layer_call_fn_67097[#$7в4
-в*
 К
inputs         
p

 
к "К         ─
#__inference_signature_wrapper_67063Ь#$UвR
в 
KкH
F
Hidden_layer_1_input.К+
Hidden_layer_1_input         ";к8
6
Output_layer&К#
Output_layer         