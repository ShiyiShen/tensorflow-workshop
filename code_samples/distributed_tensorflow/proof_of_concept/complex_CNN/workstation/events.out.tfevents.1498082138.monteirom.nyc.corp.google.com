       £K"	  ÖºRÖAbrain.Event:2M0û|     ¬Åóý	·}ÖºRÖA"îù

global_step/Initializer/zerosConst*
dtype0	*
_class
loc:@global_step*
value	B	 R *
_output_shapes
: 

global_step
VariableV2*
	container *
_output_shapes
: *
dtype0	*
shape: *
_class
loc:@global_step*
shared_name 
²
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 

"enqueue_input/random_shuffle_queueRandomShuffleQueueV2"/device:CPU:0*
capacityN*
component_types
2	*
_output_shapes
: *
min_after_dequeueÄ*"
shapes
: ::
*
seed2 *

seed *
	container *
shared_name 
m
enqueue_input/PlaceholderPlaceholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_1Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_2Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
ÿ
.enqueue_input/random_shuffle_queue_EnqueueManyQueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
Tcomponents
2	
o
enqueue_input/Placeholder_3Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_4Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_5Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:

0enqueue_input/random_shuffle_queue_EnqueueMany_1QueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholder_3enqueue_input/Placeholder_4enqueue_input/Placeholder_5"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
Tcomponents
2	
o
enqueue_input/Placeholder_6Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_7Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_8Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:

0enqueue_input/random_shuffle_queue_EnqueueMany_2QueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholder_6enqueue_input/Placeholder_7enqueue_input/Placeholder_8"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
Tcomponents
2	
o
enqueue_input/Placeholder_9Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
p
enqueue_input/Placeholder_10Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
p
enqueue_input/Placeholder_11Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:

0enqueue_input/random_shuffle_queue_EnqueueMany_3QueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholder_9enqueue_input/Placeholder_10enqueue_input/Placeholder_11"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
Tcomponents
2	

(enqueue_input/random_shuffle_queue_CloseQueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues( 

*enqueue_input/random_shuffle_queue_Close_1QueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues(

'enqueue_input/random_shuffle_queue_SizeQueueSizeV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
_output_shapes
: 
e
enqueue_input/sub/yConst"/device:CPU:0*
dtype0*
value
B :Ä*
_output_shapes
: 

enqueue_input/subSub'enqueue_input/random_shuffle_queue_Sizeenqueue_input/sub/y"/device:CPU:0*
T0*
_output_shapes
: 
h
enqueue_input/Maximum/xConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
|
enqueue_input/MaximumMaximumenqueue_input/Maximum/xenqueue_input/sub"/device:CPU:0*
T0*
_output_shapes
: 
p
enqueue_input/CastCastenqueue_input/Maximum"/device:CPU:0*

DstT0*

SrcT0*
_output_shapes
: 
g
enqueue_input/mul/yConst"/device:CPU:0*
dtype0*
valueB
 *eÏ9*
_output_shapes
: 
q
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y"/device:CPU:0*
T0*
_output_shapes
: 
ÿ
Zenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full/tagsConst"/device:CPU:0*
dtype0*f
value]B[ BUenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full*
_output_shapes
: 

Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_fullScalarSummaryZenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full/tagsenqueue_input/mul"/device:CPU:0*
T0*
_output_shapes
: 
t
"random_shuffle_queue_DequeueMany/nConst"/device:CPU:0*
dtype0*
value
B :*
_output_shapes
: 
ÿ
 random_shuffle_queue_DequeueManyQueueDequeueManyV2"enqueue_input/random_shuffle_queue"random_shuffle_queue_DequeueMany/n"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
component_types
2	*9
_output_shapes'
%:::	

©
.conv2d/kernel/Initializer/random_uniform/shapeConst*
dtype0* 
_class
loc:@conv2d/kernel*%
valueB"             *
_output_shapes
:

,conv2d/kernel/Initializer/random_uniform/minConst*
dtype0* 
_class
loc:@conv2d/kernel*
valueB
 *n§®½*
_output_shapes
: 

,conv2d/kernel/Initializer/random_uniform/maxConst*
dtype0* 
_class
loc:@conv2d/kernel*
valueB
 *n§®=*
_output_shapes
: 
ð
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*&
_output_shapes
: *
dtype0*
seed2 *

seed *
T0* 
_class
loc:@conv2d/kernel
Ò
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv2d/kernel*
T0*
_output_shapes
: 
ì
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 
Þ
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 
³
conv2d/kernel
VariableV2*
	container *&
_output_shapes
: *
dtype0*
shape: * 
_class
loc:@conv2d/kernel*
shared_name 
Ó
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
validate_shape(* 
_class
loc:@conv2d/kernel*
use_locking(*
T0*&
_output_shapes
: 

conv2d/kernel/readIdentityconv2d/kernel* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 

conv2d/bias/Initializer/zerosConst*
dtype0*
_class
loc:@conv2d/bias*
valueB *    *
_output_shapes
: 

conv2d/bias
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv2d/bias*
shared_name 
¶
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
validate_shape(*
_class
loc:@conv2d/bias*
use_locking(*
T0*
_output_shapes
: 
n
conv2d/bias/readIdentityconv2d/bias*
_class
loc:@conv2d/bias*
T0*
_output_shapes
: 
q
conv2d/convolution/ShapeConst*
dtype0*%
valueB"             *
_output_shapes
:
q
 conv2d/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
Þ
conv2d/convolutionConv2D"random_shuffle_queue_DequeueMany:1conv2d/kernel/read*'
_output_shapes
: *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv2d/BiasAddBiasAddconv2d/convolutionconv2d/bias/read*'
_output_shapes
: *
T0*
data_formatNHWC
U
conv2d/ReluReluconv2d/BiasAdd*
T0*'
_output_shapes
: 
­
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@conv2d_1/kernel*%
valueB"          @   *
_output_shapes
:

.conv2d_1/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_1/kernel*
valueB
 *ÍÌL½*
_output_shapes
: 

.conv2d_1/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_1/kernel*
valueB
 *ÍÌL=*
_output_shapes
: 
ö
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*&
_output_shapes
: @*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_1/kernel
Ú
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_1/kernel*
T0*
_output_shapes
: 
ô
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @
æ
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @
·
conv2d_1/kernel
VariableV2*
	container *&
_output_shapes
: @*
dtype0*
shape: @*"
_class
loc:@conv2d_1/kernel*
shared_name 
Û
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@conv2d_1/kernel*
use_locking(*
T0*&
_output_shapes
: @

conv2d_1/kernel/readIdentityconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @

conv2d_1/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_1/bias*
valueB@*    *
_output_shapes
:@

conv2d_1/bias
VariableV2*
	container *
_output_shapes
:@*
dtype0*
shape:@* 
_class
loc:@conv2d_1/bias*
shared_name 
¾
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2d_1/bias*
use_locking(*
T0*
_output_shapes
:@
t
conv2d_1/bias/readIdentityconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
T0*
_output_shapes
:@
s
conv2d_2/convolution/ShapeConst*
dtype0*%
valueB"          @   *
_output_shapes
:
s
"conv2d_2/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
Ë
conv2d_2/convolutionConv2Dconv2d/Reluconv2d_1/kernel/read*'
_output_shapes
:@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv2d_2/BiasAddBiasAddconv2d_2/convolutionconv2d_1/bias/read*'
_output_shapes
:@*
T0*
data_formatNHWC
Y
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*'
_output_shapes
:@
­
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@conv2d_2/kernel*%
valueB"      @      *
_output_shapes
:

.conv2d_2/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_2/kernel*
valueB
 *óµ½*
_output_shapes
: 

.conv2d_2/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_2/kernel*
valueB
 *óµ=*
_output_shapes
: 
÷
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*'
_output_shapes
:@*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_2/kernel
Ú
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_2/kernel*
T0*
_output_shapes
: 
õ
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_2/kernel*
T0*'
_output_shapes
:@
ç
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_2/kernel*
T0*'
_output_shapes
:@
¹
conv2d_2/kernel
VariableV2*
	container *'
_output_shapes
:@*
dtype0*
shape:@*"
_class
loc:@conv2d_2/kernel*
shared_name 
Ü
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@conv2d_2/kernel*
use_locking(*
T0*'
_output_shapes
:@

conv2d_2/kernel/readIdentityconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
T0*'
_output_shapes
:@

conv2d_2/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_2/bias*
valueB*    *
_output_shapes	
:

conv2d_2/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:* 
_class
loc:@conv2d_2/bias*
shared_name 
¿
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/bias/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2d_2/bias*
use_locking(*
T0*
_output_shapes	
:
u
conv2d_2/bias/readIdentityconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
T0*
_output_shapes	
:
s
conv2d_3/convolution/ShapeConst*
dtype0*%
valueB"      @      *
_output_shapes
:
s
"conv2d_3/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
Î
conv2d_3/convolutionConv2Dconv2d_2/Reluconv2d_2/kernel/read*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv2d_3/BiasAddBiasAddconv2d_3/convolutionconv2d_2/bias/read*(
_output_shapes
:*
T0*
data_formatNHWC
Z
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*(
_output_shapes
:
µ
max_pooling2d/MaxPoolMaxPoolconv2d_3/Relu*(
_output_shapes
:		*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
­
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@conv2d_3/kernel*%
valueB"            *
_output_shapes
:

.conv2d_3/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_3/kernel*
valueB
 *ÍÌÌ¼*
_output_shapes
: 

.conv2d_3/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_3/kernel*
valueB
 *ÍÌÌ<*
_output_shapes
: 
ø
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*(
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_3/kernel
Ú
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_3/kernel*
T0*
_output_shapes
: 
ö
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_3/kernel*
T0*(
_output_shapes
:
è
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_3/kernel*
T0*(
_output_shapes
:
»
conv2d_3/kernel
VariableV2*
	container *(
_output_shapes
:*
dtype0*
shape:*"
_class
loc:@conv2d_3/kernel*
shared_name 
Ý
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@conv2d_3/kernel*
use_locking(*
T0*(
_output_shapes
:

conv2d_3/kernel/readIdentityconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
T0*(
_output_shapes
:

conv2d_3/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_3/bias*
valueB*    *
_output_shapes	
:

conv2d_3/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:* 
_class
loc:@conv2d_3/bias*
shared_name 
¿
conv2d_3/bias/AssignAssignconv2d_3/biasconv2d_3/bias/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2d_3/bias*
use_locking(*
T0*
_output_shapes	
:
u
conv2d_3/bias/readIdentityconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
T0*
_output_shapes	
:
s
conv2d_4/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
s
"conv2d_4/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
Ö
conv2d_4/convolutionConv2Dmax_pooling2d/MaxPoolconv2d_3/kernel/read*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv2d_4/BiasAddBiasAddconv2d_4/convolutionconv2d_3/bias/read*(
_output_shapes
:*
T0*
data_formatNHWC
Z
conv2d_4/ReluReluconv2d_4/BiasAdd*
T0*(
_output_shapes
:
·
max_pooling2d_2/MaxPoolMaxPoolconv2d_4/Relu*(
_output_shapes
:*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
f
flatten/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
e
flatten/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
g
flatten/strided_slice/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
g
flatten/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
¥
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
W
flatten/ConstConst*
dtype0*
valueB: *
_output_shapes
:
x
flatten/ProdProdflatten/strided_sliceflatten/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
Z
flatten/stack/0Const*
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
: 
n
flatten/stackPackflatten/stack/0flatten/Prod*
N*
T0*
_output_shapes
:*

axis 
{
flatten/ReshapeReshapemax_pooling2d_2/MaxPoolflatten/stack* 
_output_shapes
:
*
T0*
Tshape0

-dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_class
loc:@dense/kernel*
valueB"      *
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *×³]½*
_output_shapes
: 

+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *×³]=*
_output_shapes
: 
ç
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*
_class
loc:@dense/kernel
Î
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0*
_output_shapes
: 
â
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:

Ô
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:

¥
dense/kernel
VariableV2*
	container * 
_output_shapes
:
*
dtype0*
shape:
*
_class
loc:@dense/kernel*
shared_name 
É
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0* 
_output_shapes
:

w
dense/kernel/readIdentitydense/kernel*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:


dense/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense/bias*
valueB*    *
_output_shapes	
:


dense/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:*
_class
loc:@dense/bias*
shared_name 
³
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes	
:
l
dense/bias/readIdentity
dense/bias*
_class
loc:@dense/bias*
T0*
_output_shapes	
:

dense/MatMulMatMulflatten/Reshapedense/kernel/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:

y
dense/BiasAddBiasAdddense/MatMuldense/bias/read* 
_output_shapes
:
*
T0*
data_formatNHWC
L

dense/ReluReludense/BiasAdd*
T0* 
_output_shapes
:

£
/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB"      *
_output_shapes
:

-dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *×³]½*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *×³]=*
_output_shapes
: 
í
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_1/kernel
Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
: 
ê
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:

Ü
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:

©
dense_1/kernel
VariableV2*
	container * 
_output_shapes
:
*
dtype0*
shape:
*!
_class
loc:@dense_1/kernel*
shared_name 
Ñ
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:

}
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:


dense_1/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_1/bias*
valueB*    *
_output_shapes	
:

dense_1/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:*
_class
loc:@dense_1/bias*
shared_name 
»
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes	
:
r
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
T0*
_output_shapes	
:

dense_2/MatMulMatMul
dense/Reludense_1/kernel/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:


dense_2/BiasAddBiasAdddense_2/MatMuldense_1/bias/read* 
_output_shapes
:
*
T0*
data_formatNHWC
P
dense_2/ReluReludense_2/BiasAdd*
T0* 
_output_shapes
:

£
/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB"      *
_output_shapes
:

-dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB
 *×³]½*
_output_shapes
: 

-dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB
 *×³]=*
_output_shapes
: 
í
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_2/kernel
Ö
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes
: 
ê
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:

Ü
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:

©
dense_2/kernel
VariableV2*
	container * 
_output_shapes
:
*
dtype0*
shape:
*!
_class
loc:@dense_2/kernel*
shared_name 
Ñ
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_2/kernel*
use_locking(*
T0* 
_output_shapes
:

}
dense_2/kernel/readIdentitydense_2/kernel*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:


dense_2/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_2/bias*
valueB*    *
_output_shapes	
:

dense_2/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:*
_class
loc:@dense_2/bias*
shared_name 
»
dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_2/bias*
use_locking(*
T0*
_output_shapes	
:
r
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
T0*
_output_shapes	
:

dense_3/MatMulMatMuldense_2/Reludense_2/kernel/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:


dense_3/BiasAddBiasAdddense_3/MatMuldense_2/bias/read* 
_output_shapes
:
*
T0*
data_formatNHWC
P
dense_3/ReluReludense_3/BiasAdd*
T0* 
_output_shapes
:

£
/dense_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB"      *
_output_shapes
:

-dense_3/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *×³]½*
_output_shapes
: 

-dense_3/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *×³]=*
_output_shapes
: 
í
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_3/kernel
Ö
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
T0*
_output_shapes
: 
ê
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_3/kernel*
T0* 
_output_shapes
:

Ü
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
T0* 
_output_shapes
:

©
dense_3/kernel
VariableV2*
	container * 
_output_shapes
:
*
dtype0*
shape:
*!
_class
loc:@dense_3/kernel*
shared_name 
Ñ
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_3/kernel*
use_locking(*
T0* 
_output_shapes
:

}
dense_3/kernel/readIdentitydense_3/kernel*!
_class
loc:@dense_3/kernel*
T0* 
_output_shapes
:


dense_3/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_3/bias*
valueB*    *
_output_shapes	
:

dense_3/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:*
_class
loc:@dense_3/bias*
shared_name 
»
dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_3/bias*
use_locking(*
T0*
_output_shapes	
:
r
dense_3/bias/readIdentitydense_3/bias*
_class
loc:@dense_3/bias*
T0*
_output_shapes	
:

dense_4/MatMulMatMuldense_3/Reludense_3/kernel/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:


dense_4/BiasAddBiasAdddense_4/MatMuldense_3/bias/read* 
_output_shapes
:
*
T0*
data_formatNHWC
P
dense_4/ReluReludense_4/BiasAdd*
T0* 
_output_shapes
:

£
/dense_4/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB"   
   *
_output_shapes
:

-dense_4/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB
 *è½*
_output_shapes
: 

-dense_4/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB
 *è=*
_output_shapes
: 
ì
7dense_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_4/kernel/Initializer/random_uniform/shape*
_output_shapes
:	
*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_4/kernel
Ö
-dense_4/kernel/Initializer/random_uniform/subSub-dense_4/kernel/Initializer/random_uniform/max-dense_4/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
: 
é
-dense_4/kernel/Initializer/random_uniform/mulMul7dense_4/kernel/Initializer/random_uniform/RandomUniform-dense_4/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
:	

Û
)dense_4/kernel/Initializer/random_uniformAdd-dense_4/kernel/Initializer/random_uniform/mul-dense_4/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
:	

§
dense_4/kernel
VariableV2*
	container *
_output_shapes
:	
*
dtype0*
shape:	
*!
_class
loc:@dense_4/kernel*
shared_name 
Ð
dense_4/kernel/AssignAssigndense_4/kernel)dense_4/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_4/kernel*
use_locking(*
T0*
_output_shapes
:	

|
dense_4/kernel/readIdentitydense_4/kernel*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
:	


dense_4/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_4/bias*
valueB
*    *
_output_shapes
:


dense_4/bias
VariableV2*
	container *
_output_shapes
:
*
dtype0*
shape:
*
_class
loc:@dense_4/bias*
shared_name 
º
dense_4/bias/AssignAssigndense_4/biasdense_4/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_4/bias*
use_locking(*
T0*
_output_shapes
:

q
dense_4/bias/readIdentitydense_4/bias*
_class
loc:@dense_4/bias*
T0*
_output_shapes
:


dense_5/MatMulMatMuldense_4/Reludense_4/kernel/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes
:	

~
dense_5/BiasAddBiasAdddense_5/MatMuldense_4/bias/read*
_output_shapes
:	
*
T0*
data_formatNHWC
U
dense_5/SoftmaxSoftmaxdense_5/BiasAdd*
T0*
_output_shapes
:	


softmax_cross_entropy_loss/CastCast"random_shuffle_queue_DequeueMany:2*

DstT0*

SrcT0*
_output_shapes
:	

a
softmax_cross_entropy_loss/RankConst*
dtype0*
value	B :*
_output_shapes
: 
q
 softmax_cross_entropy_loss/ShapeConst*
dtype0*
valueB"   
   *
_output_shapes
:
c
!softmax_cross_entropy_loss/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
s
"softmax_cross_entropy_loss/Shape_1Const*
dtype0*
valueB"   
   *
_output_shapes
:
b
 softmax_cross_entropy_loss/Sub/yConst*
dtype0*
value	B :*
_output_shapes
: 

softmax_cross_entropy_loss/SubSub!softmax_cross_entropy_loss/Rank_1 softmax_cross_entropy_loss/Sub/y*
T0*
_output_shapes
: 

&softmax_cross_entropy_loss/Slice/beginPacksoftmax_cross_entropy_loss/Sub*
N*
T0*
_output_shapes
:*

axis 
o
%softmax_cross_entropy_loss/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Î
 softmax_cross_entropy_loss/SliceSlice"softmax_cross_entropy_loss/Shape_1&softmax_cross_entropy_loss/Slice/begin%softmax_cross_entropy_loss/Slice/size*
Index0*
T0*
_output_shapes
:
}
*softmax_cross_entropy_loss/concat/values_0Const*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
:
h
&softmax_cross_entropy_loss/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ý
!softmax_cross_entropy_loss/concatConcatV2*softmax_cross_entropy_loss/concat/values_0 softmax_cross_entropy_loss/Slice&softmax_cross_entropy_loss/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0

"softmax_cross_entropy_loss/ReshapeReshapedense_5/Softmax!softmax_cross_entropy_loss/concat*
_output_shapes
:	
*
T0*
Tshape0
c
!softmax_cross_entropy_loss/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
s
"softmax_cross_entropy_loss/Shape_2Const*
dtype0*
valueB"   
   *
_output_shapes
:
d
"softmax_cross_entropy_loss/Sub_1/yConst*
dtype0*
value	B :*
_output_shapes
: 

 softmax_cross_entropy_loss/Sub_1Sub!softmax_cross_entropy_loss/Rank_2"softmax_cross_entropy_loss/Sub_1/y*
T0*
_output_shapes
: 

(softmax_cross_entropy_loss/Slice_1/beginPack softmax_cross_entropy_loss/Sub_1*
N*
T0*
_output_shapes
:*

axis 
q
'softmax_cross_entropy_loss/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Ô
"softmax_cross_entropy_loss/Slice_1Slice"softmax_cross_entropy_loss/Shape_2(softmax_cross_entropy_loss/Slice_1/begin'softmax_cross_entropy_loss/Slice_1/size*
Index0*
T0*
_output_shapes
:

,softmax_cross_entropy_loss/concat_1/values_0Const*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
:
j
(softmax_cross_entropy_loss/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
å
#softmax_cross_entropy_loss/concat_1ConcatV2,softmax_cross_entropy_loss/concat_1/values_0"softmax_cross_entropy_loss/Slice_1(softmax_cross_entropy_loss/concat_1/axis*
N*

Tidx0*
_output_shapes
:*
T0
­
$softmax_cross_entropy_loss/Reshape_1Reshapesoftmax_cross_entropy_loss/Cast#softmax_cross_entropy_loss/concat_1*
_output_shapes
:	
*
T0*
Tshape0
¿
#softmax_cross_entropy_loss/xentropySoftmaxCrossEntropyWithLogits"softmax_cross_entropy_loss/Reshape$softmax_cross_entropy_loss/Reshape_1*
T0*&
_output_shapes
::	

d
"softmax_cross_entropy_loss/Sub_2/yConst*
dtype0*
value	B :*
_output_shapes
: 

 softmax_cross_entropy_loss/Sub_2Subsoftmax_cross_entropy_loss/Rank"softmax_cross_entropy_loss/Sub_2/y*
T0*
_output_shapes
: 
r
(softmax_cross_entropy_loss/Slice_2/beginConst*
dtype0*
valueB: *
_output_shapes
:

'softmax_cross_entropy_loss/Slice_2/sizePack softmax_cross_entropy_loss/Sub_2*
N*
T0*
_output_shapes
:*

axis 
Û
"softmax_cross_entropy_loss/Slice_2Slice softmax_cross_entropy_loss/Shape(softmax_cross_entropy_loss/Slice_2/begin'softmax_cross_entropy_loss/Slice_2/size*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¬
$softmax_cross_entropy_loss/Reshape_2Reshape#softmax_cross_entropy_loss/xentropy"softmax_cross_entropy_loss/Slice_2*
_output_shapes	
:*
T0*
Tshape0
|
7softmax_cross_entropy_loss/assert_broadcastable/weightsConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

=softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
dtype0*
valueB *
_output_shapes
: 
~
<softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
dtype0*
value	B : *
_output_shapes
: 

<softmax_cross_entropy_loss/assert_broadcastable/values/shapeConst*
dtype0*
valueB:*
_output_shapes
:
}
;softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
dtype0*
value	B :*
_output_shapes
: 
S
Ksoftmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
¹
&softmax_cross_entropy_loss/ToFloat_1/xConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  ?*
_output_shapes
: 

softmax_cross_entropy_loss/MulMul$softmax_cross_entropy_loss/Reshape_2&softmax_cross_entropy_loss/ToFloat_1/x*
T0*
_output_shapes	
:
¸
 softmax_cross_entropy_loss/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB: *
_output_shapes
:
¥
softmax_cross_entropy_loss/SumSumsoftmax_cross_entropy_loss/Mul softmax_cross_entropy_loss/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
Á
.softmax_cross_entropy_loss/num_present/Equal/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
®
,softmax_cross_entropy_loss/num_present/EqualEqual&softmax_cross_entropy_loss/ToFloat_1/x.softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
Ä
1softmax_cross_entropy_loss/num_present/zeros_likeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
Ç
6softmax_cross_entropy_loss/num_present/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
É
6softmax_cross_entropy_loss/num_present/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  ?*
_output_shapes
: 
É
0softmax_cross_entropy_loss/num_present/ones_likeFill6softmax_cross_entropy_loss/num_present/ones_like/Shape6softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
ë
-softmax_cross_entropy_loss/num_present/SelectSelect,softmax_cross_entropy_loss/num_present/Equal1softmax_cross_entropy_loss/num_present/zeros_like0softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
ì
[softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
ê
Zsoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
value	B : *
_output_shapes
: 
ó
Zsoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB:*
_output_shapes
:
é
Ysoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
value	B :*
_output_shapes
: 
¿
isoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
Í
Hsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successj^softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB:*
_output_shapes
:
Ç
Hsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successj^softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  ?*
_output_shapes
: 

Bsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillHsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeHsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*
_output_shapes	
:
Ø
8softmax_cross_entropy_loss/num_present/broadcast_weightsMul-softmax_cross_entropy_loss/num_present/SelectBsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*
_output_shapes	
:
Ä
,softmax_cross_entropy_loss/num_present/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB: *
_output_shapes
:
Ó
&softmax_cross_entropy_loss/num_presentSum8softmax_cross_entropy_loss/num_present/broadcast_weights,softmax_cross_entropy_loss/num_present/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
³
"softmax_cross_entropy_loss/Const_1ConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
©
 softmax_cross_entropy_loss/Sum_1Sumsoftmax_cross_entropy_loss/Sum"softmax_cross_entropy_loss/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
·
$softmax_cross_entropy_loss/Greater/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 

"softmax_cross_entropy_loss/GreaterGreater&softmax_cross_entropy_loss/num_present$softmax_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
µ
"softmax_cross_entropy_loss/Equal/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 

 softmax_cross_entropy_loss/EqualEqual&softmax_cross_entropy_loss/num_present"softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
»
*softmax_cross_entropy_loss/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
½
*softmax_cross_entropy_loss/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  ?*
_output_shapes
: 
¥
$softmax_cross_entropy_loss/ones_likeFill*softmax_cross_entropy_loss/ones_like/Shape*softmax_cross_entropy_loss/ones_like/Const*
T0*
_output_shapes
: 
¼
!softmax_cross_entropy_loss/SelectSelect softmax_cross_entropy_loss/Equal$softmax_cross_entropy_loss/ones_like&softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 

softmax_cross_entropy_loss/divRealDiv softmax_cross_entropy_loss/Sum_1!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
¸
%softmax_cross_entropy_loss/zeros_likeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
¶
 softmax_cross_entropy_loss/valueSelect"softmax_cross_entropy_loss/Greatersoftmax_cross_entropy_loss/div%softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
 
,OptimizeLoss/learning_rate/Initializer/ConstConst*
dtype0*-
_class#
!loc:@OptimizeLoss/learning_rate*
valueB
 *
×#<*
_output_shapes
: 
­
OptimizeLoss/learning_rate
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *-
_class#
!loc:@OptimizeLoss/learning_rate*
shared_name 
î
!OptimizeLoss/learning_rate/AssignAssignOptimizeLoss/learning_rate,OptimizeLoss/learning_rate/Initializer/Const*
validate_shape(*-
_class#
!loc:@OptimizeLoss/learning_rate*
use_locking(*
T0*
_output_shapes
: 

OptimizeLoss/learning_rate/readIdentityOptimizeLoss/learning_rate*-
_class#
!loc:@OptimizeLoss/learning_rate*
T0*
_output_shapes
: 
_
OptimizeLoss/gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
a
OptimizeLoss/gradients/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

OptimizeLoss/gradients/FillFillOptimizeLoss/gradients/ShapeOptimizeLoss/gradients/Const*
T0*
_output_shapes
: 

GOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_likeConst*
dtype0*
valueB
 *    *
_output_shapes
: 
ø
COptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectSelect"softmax_cross_entropy_loss/GreaterOptimizeLoss/gradients/FillGOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
ú
EOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1Select"softmax_cross_entropy_loss/GreaterGOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_likeOptimizeLoss/gradients/Fill*
T0*
_output_shapes
: 
ã
MOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOpD^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectF^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1
ï
UOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentityCOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectN^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_deps*V
_classL
JHloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select*
T0*
_output_shapes
: 
õ
WOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1N^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1*
T0*
_output_shapes
: 

@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ShapeConst*
dtype0*
valueB *
_output_shapes
: 

BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
¬
POptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgs@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ShapeBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
è
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDivRealDivUOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependency!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 

>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/SumSumBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDivPOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
þ
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeReshape>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape*
_output_shapes
: *
T0*
Tshape0

>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/NegNeg softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
Ó
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_1RealDiv>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Neg!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Ù
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_2RealDivDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_1!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 

>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/mulMulUOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependencyDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 

@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum_1Sum>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/mulROptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum_1BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
ß
KOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeE^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1
é
SOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeL^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_deps*U
_classK
IGloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape*
T0*
_output_shapes
: 
ï
UOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1IdentityDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1L^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1*
T0*
_output_shapes
: 

JOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
dtype0*
valueB *
_output_shapes
: 

DOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapeSOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependencyJOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
_output_shapes
: *
T0*
Tshape0

KOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Tile/multiplesConst*
dtype0*
valueB *
_output_shapes
: 

AOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/TileTileDOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/ReshapeKOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes
: 

HOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:

BOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeAOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/TileHOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0

IOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile/multiplesConst*
dtype0*
valueB:*
_output_shapes
:

?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/TileTileBOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/ReshapeIOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes	
:

@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ShapeConst*
dtype0*
valueB:*
_output_shapes
:

BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
¬
POptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ShapeBOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Ô
>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mulMul?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile&softmax_cross_entropy_loss/ToFloat_1/x*
T0*
_output_shapes	
:

>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/SumSum>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mulPOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeReshape>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape*
_output_shapes	
:*
T0*
Tshape0
Ô
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mul_1Mul$softmax_cross_entropy_loss/Reshape_2?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile*
T0*
_output_shapes	
:

@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum_1Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mul_1ROptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

DOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum_1BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
ß
KOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeE^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1
î
SOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeL^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*U
_classK
IGloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape*
T0*
_output_shapes	
:
ï
UOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1IdentityDOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1L^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1*
T0*
_output_shapes
: 

FOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/ShapeConst*
dtype0*
valueB:*
_output_shapes
:
¤
HOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/ReshapeReshapeSOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyFOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/Shape*
_output_shapes	
:*
T0*
Tshape0
x
!OptimizeLoss/gradients/zeros_likeConst*
dtype0*
valueB	
*    *
_output_shapes
:	


NOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims/dimConst*
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
: 
¨
JOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims
ExpandDimsHOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/ReshapeNOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:	
ç
COptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mulMulJOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims%softmax_cross_entropy_loss/xentropy:1*
T0*
_output_shapes
:	


DOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/ShapeConst*
dtype0*
valueB"   
   *
_output_shapes
:

FOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/ReshapeReshapeCOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mulDOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/Shape*
_output_shapes
:	
*
T0*
Tshape0
¹
/OptimizeLoss/gradients/dense_5/Softmax_grad/mulMulFOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/Reshapedense_5/Softmax*
T0*
_output_shapes
:	


AOptimizeLoss/gradients/dense_5/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
í
/OptimizeLoss/gradients/dense_5/Softmax_grad/SumSum/OptimizeLoss/gradients/dense_5/Softmax_grad/mulAOptimizeLoss/gradients/dense_5/Softmax_grad/Sum/reduction_indices*
_output_shapes	
:*
T0*
	keep_dims( *

Tidx0

9OptimizeLoss/gradients/dense_5/Softmax_grad/Reshape/shapeConst*
dtype0*
valueB"ÿÿÿÿ   *
_output_shapes
:
â
3OptimizeLoss/gradients/dense_5/Softmax_grad/ReshapeReshape/OptimizeLoss/gradients/dense_5/Softmax_grad/Sum9OptimizeLoss/gradients/dense_5/Softmax_grad/Reshape/shape*
_output_shapes
:	*
T0*
Tshape0
Ý
/OptimizeLoss/gradients/dense_5/Softmax_grad/subSubFOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/Reshape3OptimizeLoss/gradients/dense_5/Softmax_grad/Reshape*
T0*
_output_shapes
:	

¤
1OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1Mul/OptimizeLoss/gradients/dense_5/Softmax_grad/subdense_5/Softmax*
T0*
_output_shapes
:	

µ
7OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1*
_output_shapes
:
*
T0*
data_formatNHWC
²
<OptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_5/Softmax_grad/mul_18^OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGrad
²
DOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1=^OptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1*
T0*
_output_shapes
:	

»
FOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

ç
1OptimizeLoss/gradients/dense_5/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependencydense_4/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

á
3OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1MatMuldense_4/ReluDOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	

­
;OptimizeLoss/gradients/dense_5/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1
±
COptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_5/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul*
T0* 
_output_shapes
:

¶
EOptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_5/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	

»
1OptimizeLoss/gradients/dense_4/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependencydense_4/Relu*
T0* 
_output_shapes
:

¶
7OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
²
<OptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad8^OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGrad
³
DOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad=^OptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad*
T0* 
_output_shapes
:

¼
FOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
ç
1OptimizeLoss/gradients/dense_4/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependencydense_3/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

â
3OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1MatMuldense_3/ReluDOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:

­
;OptimizeLoss/gradients/dense_4/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1
±
COptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_4/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul*
T0* 
_output_shapes
:

·
EOptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_4/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

»
1OptimizeLoss/gradients/dense_3/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependencydense_3/Relu*
T0* 
_output_shapes
:

¶
7OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
²
<OptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad8^OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGrad
³
DOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad=^OptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad*
T0* 
_output_shapes
:

¼
FOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
ç
1OptimizeLoss/gradients/dense_3/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependencydense_2/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

â
3OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1MatMuldense_2/ReluDOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:

­
;OptimizeLoss/gradients/dense_3/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1
±
COptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_3/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul*
T0* 
_output_shapes
:

·
EOptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_3/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

»
1OptimizeLoss/gradients/dense_2/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependencydense_2/Relu*
T0* 
_output_shapes
:

¶
7OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
²
<OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad8^OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad
³
DOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad=^OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad*
T0* 
_output_shapes
:

¼
FOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
ç
1OptimizeLoss/gradients/dense_2/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

à
3OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1MatMul
dense/ReluDOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:

­
;OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1
±
COptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul*
T0* 
_output_shapes
:

·
EOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

·
/OptimizeLoss/gradients/dense/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency
dense/Relu*
T0* 
_output_shapes
:

²
5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad/OptimizeLoss/gradients/dense/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
¬
:OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_depsNoOp0^OptimizeLoss/gradients/dense/Relu_grad/ReluGrad6^OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad
«
BOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity/OptimizeLoss/gradients/dense/Relu_grad/ReluGrad;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*B
_class8
64loc:@OptimizeLoss/gradients/dense/Relu_grad/ReluGrad*
T0* 
_output_shapes
:

´
DOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*H
_class>
<:loc:@OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
á
/OptimizeLoss/gradients/dense/MatMul_grad/MatMulMatMulBOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

á
1OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1MatMulflatten/ReshapeBOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:

§
9OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_depsNoOp0^OptimizeLoss/gradients/dense/MatMul_grad/MatMul2^OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1
©
AOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependencyIdentity/OptimizeLoss/gradients/dense/MatMul_grad/MatMul:^OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_deps*B
_class8
64loc:@OptimizeLoss/gradients/dense/MatMul_grad/MatMul*
T0* 
_output_shapes
:

¯
COptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency_1Identity1OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1:^OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:


1OptimizeLoss/gradients/flatten/Reshape_grad/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
õ
3OptimizeLoss/gradients/flatten/Reshape_grad/ReshapeReshapeAOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency1OptimizeLoss/gradients/flatten/Reshape_grad/Shape*(
_output_shapes
:*
T0*
Tshape0
±
?OptimizeLoss/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_4/Relumax_pooling2d_2/MaxPool3OptimizeLoss/gradients/flatten/Reshape_grad/Reshape*(
_output_shapes
:*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
Á
2OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGradReluGrad?OptimizeLoss/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradconv2d_4/Relu*
T0*(
_output_shapes
:
¸
8OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
µ
=OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/group_depsNoOp3^OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad9^OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad
¿
EOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad*
T0*(
_output_shapes
:
À
GOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:

6OptimizeLoss/gradients/conv2d_4/convolution_grad/ShapeConst*
dtype0*%
valueB"   	   	      *
_output_shapes
:
û
DOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6OptimizeLoss/gradients/conv2d_4/convolution_grad/Shapeconv2d_3/kernel/readEOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*(
_output_shapes
:		*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

8OptimizeLoss/gradients/conv2d_4/convolution_grad/Shape_1Const*
dtype0*%
valueB"            *
_output_shapes
:

EOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool8OptimizeLoss/gradients/conv2d_4/convolution_grad/Shape_1EOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ø
AOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputF^OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilter
ë
IOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputB^OptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInput*
T0*(
_output_shapes
:		
ï
KOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilterB^OptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
Ã
=OptimizeLoss/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_3/Relumax_pooling2d/MaxPoolIOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependency*(
_output_shapes
:*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
¿
2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGradReluGrad=OptimizeLoss/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradconv2d_3/Relu*
T0*(
_output_shapes
:
¸
8OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
µ
=OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_depsNoOp3^OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad9^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad
¿
EOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad*
T0*(
_output_shapes
:
À
GOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:

6OptimizeLoss/gradients/conv2d_3/convolution_grad/ShapeConst*
dtype0*%
valueB"         @   *
_output_shapes
:
ú
DOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6OptimizeLoss/gradients/conv2d_3/convolution_grad/Shapeconv2d_2/kernel/readEOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
:@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

8OptimizeLoss/gradients/conv2d_3/convolution_grad/Shape_1Const*
dtype0*%
valueB"      @      *
_output_shapes
:
÷
EOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_2/Relu8OptimizeLoss/gradients/conv2d_3/convolution_grad/Shape_1EOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
:@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ø
AOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputF^OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilter
ê
IOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputB^OptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInput*
T0*'
_output_shapes
:@
î
KOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilterB^OptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
Ê
2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGradReluGradIOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependencyconv2d_2/Relu*
T0*'
_output_shapes
:@
·
8OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad*
_output_shapes
:@*
T0*
data_formatNHWC
µ
=OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_depsNoOp3^OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad9^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad
¾
EOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*'
_output_shapes
:@
¿
GOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@

6OptimizeLoss/gradients/conv2d_2/convolution_grad/ShapeConst*
dtype0*%
valueB"             *
_output_shapes
:
ú
DOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6OptimizeLoss/gradients/conv2d_2/convolution_grad/Shapeconv2d_1/kernel/readEOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
: *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

8OptimizeLoss/gradients/conv2d_2/convolution_grad/Shape_1Const*
dtype0*%
valueB"          @   *
_output_shapes
:
ô
EOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d/Relu8OptimizeLoss/gradients/conv2d_2/convolution_grad/Shape_1EOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: @*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ø
AOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputF^OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter
ê
IOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputB^OptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInput*
T0*'
_output_shapes
: 
í
KOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilterB^OptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: @
Æ
0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGradReluGradIOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependencyconv2d/Relu*
T0*'
_output_shapes
: 
³
6OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad*
_output_shapes
: *
T0*
data_formatNHWC
¯
;OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_depsNoOp1^OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad7^OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad
¶
COptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad<^OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_deps*C
_class9
75loc:@OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad*
T0*'
_output_shapes
: 
·
EOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity6OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad<^OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_deps*I
_class?
=;loc:@OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 

4OptimizeLoss/gradients/conv2d/convolution_grad/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
ò
BOptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInputConv2DBackpropInput4OptimizeLoss/gradients/conv2d/convolution_grad/Shapeconv2d/kernel/readCOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

6OptimizeLoss/gradients/conv2d/convolution_grad/Shape_1Const*
dtype0*%
valueB"             *
_output_shapes
:

COptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilter"random_shuffle_queue_DequeueMany:16OptimizeLoss/gradients/conv2d/convolution_grad/Shape_1COptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ò
?OptimizeLoss/gradients/conv2d/convolution_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInputD^OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilter
â
GOptimizeLoss/gradients/conv2d/convolution_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInput@^OptimizeLoss/gradients/conv2d/convolution_grad/tuple/group_deps*U
_classK
IGloc:@OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInput*
T0*'
_output_shapes
:
å
IOptimizeLoss/gradients/conv2d/convolution_grad/tuple/control_dependency_1IdentityCOptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilter@^OptimizeLoss/gradients/conv2d/convolution_grad/tuple/group_deps*V
_classL
JHloc:@OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: 
h
OptimizeLoss/loss/tagsConst*
dtype0*"
valueB BOptimizeLoss/loss*
_output_shapes
: 
}
OptimizeLoss/lossScalarSummaryOptimizeLoss/loss/tags softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
µ
<OptimizeLoss/train/update_conv2d/kernel/ApplyGradientDescentApplyGradientDescentconv2d/kernelOptimizeLoss/learning_rate/readIOptimizeLoss/gradients/conv2d/convolution_grad/tuple/control_dependency_1* 
_class
loc:@conv2d/kernel*
use_locking( *
T0*&
_output_shapes
: 

:OptimizeLoss/train/update_conv2d/bias/ApplyGradientDescentApplyGradientDescentconv2d/biasOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@conv2d/bias*
use_locking( *
T0*
_output_shapes
: 
½
>OptimizeLoss/train/update_conv2d_1/kernel/ApplyGradientDescentApplyGradientDescentconv2d_1/kernelOptimizeLoss/learning_rate/readKOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_1/kernel*
use_locking( *
T0*&
_output_shapes
: @
§
<OptimizeLoss/train/update_conv2d_1/bias/ApplyGradientDescentApplyGradientDescentconv2d_1/biasOptimizeLoss/learning_rate/readGOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_1/bias*
use_locking( *
T0*
_output_shapes
:@
¾
>OptimizeLoss/train/update_conv2d_2/kernel/ApplyGradientDescentApplyGradientDescentconv2d_2/kernelOptimizeLoss/learning_rate/readKOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_2/kernel*
use_locking( *
T0*'
_output_shapes
:@
¨
<OptimizeLoss/train/update_conv2d_2/bias/ApplyGradientDescentApplyGradientDescentconv2d_2/biasOptimizeLoss/learning_rate/readGOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_2/bias*
use_locking( *
T0*
_output_shapes	
:
¿
>OptimizeLoss/train/update_conv2d_3/kernel/ApplyGradientDescentApplyGradientDescentconv2d_3/kernelOptimizeLoss/learning_rate/readKOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_3/kernel*
use_locking( *
T0*(
_output_shapes
:
¨
<OptimizeLoss/train/update_conv2d_3/bias/ApplyGradientDescentApplyGradientDescentconv2d_3/biasOptimizeLoss/learning_rate/readGOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_3/bias*
use_locking( *
T0*
_output_shapes	
:
¦
;OptimizeLoss/train/update_dense/kernel/ApplyGradientDescentApplyGradientDescentdense/kernelOptimizeLoss/learning_rate/readCOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency_1*
_class
loc:@dense/kernel*
use_locking( *
T0* 
_output_shapes
:


9OptimizeLoss/train/update_dense/bias/ApplyGradientDescentApplyGradientDescent
dense/biasOptimizeLoss/learning_rate/readDOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense/bias*
use_locking( *
T0*
_output_shapes	
:
®
=OptimizeLoss/train/update_dense_1/kernel/ApplyGradientDescentApplyGradientDescentdense_1/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_1/kernel*
use_locking( *
T0* 
_output_shapes
:

¤
;OptimizeLoss/train/update_dense_1/bias/ApplyGradientDescentApplyGradientDescentdense_1/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_1/bias*
use_locking( *
T0*
_output_shapes	
:
®
=OptimizeLoss/train/update_dense_2/kernel/ApplyGradientDescentApplyGradientDescentdense_2/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_2/kernel*
use_locking( *
T0* 
_output_shapes
:

¤
;OptimizeLoss/train/update_dense_2/bias/ApplyGradientDescentApplyGradientDescentdense_2/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_2/bias*
use_locking( *
T0*
_output_shapes	
:
®
=OptimizeLoss/train/update_dense_3/kernel/ApplyGradientDescentApplyGradientDescentdense_3/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_3/kernel*
use_locking( *
T0* 
_output_shapes
:

¤
;OptimizeLoss/train/update_dense_3/bias/ApplyGradientDescentApplyGradientDescentdense_3/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_3/bias*
use_locking( *
T0*
_output_shapes	
:
­
=OptimizeLoss/train/update_dense_4/kernel/ApplyGradientDescentApplyGradientDescentdense_4/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_4/kernel*
use_locking( *
T0*
_output_shapes
:	

£
;OptimizeLoss/train/update_dense_4/bias/ApplyGradientDescentApplyGradientDescentdense_4/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_4/bias*
use_locking( *
T0*
_output_shapes
:

	
OptimizeLoss/train/updateNoOp=^OptimizeLoss/train/update_conv2d/kernel/ApplyGradientDescent;^OptimizeLoss/train/update_conv2d/bias/ApplyGradientDescent?^OptimizeLoss/train/update_conv2d_1/kernel/ApplyGradientDescent=^OptimizeLoss/train/update_conv2d_1/bias/ApplyGradientDescent?^OptimizeLoss/train/update_conv2d_2/kernel/ApplyGradientDescent=^OptimizeLoss/train/update_conv2d_2/bias/ApplyGradientDescent?^OptimizeLoss/train/update_conv2d_3/kernel/ApplyGradientDescent=^OptimizeLoss/train/update_conv2d_3/bias/ApplyGradientDescent<^OptimizeLoss/train/update_dense/kernel/ApplyGradientDescent:^OptimizeLoss/train/update_dense/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_1/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_1/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_2/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_2/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_3/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_3/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_4/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_4/bias/ApplyGradientDescent

OptimizeLoss/train/valueConst^OptimizeLoss/train/update*
dtype0	*
_class
loc:@global_step*
value	B	 R*
_output_shapes
: 

OptimizeLoss/train	AssignAddglobal_stepOptimizeLoss/train/value*
_class
loc:@global_step*
use_locking( *
T0	*
_output_shapes
: 
¸
OptimizeLoss/control_dependencyIdentity softmax_cross_entropy_loss/value^OptimizeLoss/train*3
_class)
'%loc:@softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
R
ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
e
ArgMaxArgMaxdense_5/SoftmaxArgMax/dimension*
_output_shapes	
:*
T0*

Tidx0
M
SoftmaxSoftmaxdense_5/Softmax*
T0*
_output_shapes
:	

T
ArgMax_1/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
i
ArgMax_1ArgMaxdense_5/SoftmaxArgMax_1/dimension*
_output_shapes	
:*
T0*

Tidx0
T
ArgMax_2/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
|
ArgMax_2ArgMax"random_shuffle_queue_DequeueMany:2ArgMax_2/dimension*
_output_shapes	
:*
T0*

Tidx0
H
EqualEqualArgMax_2ArgMax_1*
T0	*
_output_shapes	
:
K
ToFloatCastEqual*

DstT0*

SrcT0
*
_output_shapes	
:
S
accuracy/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
r
accuracy/total
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
¬
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*
validate_shape(*!
_class
loc:@accuracy/total*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/total/readIdentityaccuracy/total*!
_class
loc:@accuracy/total*
T0*
_output_shapes
: 
U
accuracy/zeros_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
r
accuracy/count
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
®
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*
validate_shape(*!
_class
loc:@accuracy/count*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/count/readIdentityaccuracy/count*!
_class
loc:@accuracy/count*
T0*
_output_shapes
: 
P
accuracy/SizeConst*
dtype0*
value
B :*
_output_shapes
: 
Y
accuracy/ToFloat_1Castaccuracy/Size*

DstT0*

SrcT0*
_output_shapes
: 
X
accuracy/ConstConst*
dtype0*
valueB: *
_output_shapes
:
j
accuracy/SumSumToFloataccuracy/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0

accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*!
_class
loc:@accuracy/total*
use_locking( *
T0*
_output_shapes
: 
¦
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1^ToFloat*!
_class
loc:@accuracy/count*
use_locking( *
T0*
_output_shapes
: 
W
accuracy/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
e
accuracy/GreaterGreateraccuracy/count/readaccuracy/Greater/y*
T0*
_output_shapes
: 
f
accuracy/truedivRealDivaccuracy/total/readaccuracy/count/read*
T0*
_output_shapes
: 
U
accuracy/value/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
o
accuracy/valueSelectaccuracy/Greateraccuracy/truedivaccuracy/value/e*
T0*
_output_shapes
: 
Y
accuracy/Greater_1/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
j
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/Greater_1/y*
T0*
_output_shapes
: 
h
accuracy/truediv_1RealDivaccuracy/AssignAddaccuracy/AssignAdd_1*
T0*
_output_shapes
: 
Y
accuracy/update_op/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
{
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/update_op/e*
T0*
_output_shapes
: "bÞ+¢     àý<	øÂÖºRÖAJ¼
)ý(
9
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T"
Ttype:
2	"
use_lockingbool( 
l
ArgMax

input"T
	dimension"Tidx

output	"
Ttype:
2	"
Tidxtype0:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
p
	AssignAdd
ref"T

value"T

output_ref"T"
Ttype:
2	"
use_lockingbool( 
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
{
BiasAddGrad
out_backprop"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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
È
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
î
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
í
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
A
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
:
Greater
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
Å
MaxPool

input"T
output"T"
Ttype0:
2		"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
ë
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2		
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	
<
Mul
x"T
y"T
z"T"
Ttype:
2	
-
Neg
x"T
y"T"
Ttype:
	2	
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
B
QueueCloseV2

handle"#
cancel_pending_enqueuesbool( 

QueueDequeueManyV2

handle
n

components2component_types"!
component_types
list(type)(0"

timeout_msintÿÿÿÿÿÿÿÿÿ
}
QueueEnqueueManyV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msintÿÿÿÿÿÿÿÿÿ
&
QueueSizeV2

handle
size
ø
RandomShuffleQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityintÿÿÿÿÿÿÿÿÿ"
min_after_dequeueint "
seedint "
seed2int "
	containerstring "
shared_namestring 
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
?
Select
	condition

t"T
e"T
output"T"	
Ttype
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
8
Softmax
logits"T
softmax"T"
Ttype:
2
i
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
ö
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
5
Sub
x"T
y"T
z"T"
Ttype:
	2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring *1.2.02v1.2.0-rc2-21-g12f033dîù

global_step/Initializer/zerosConst*
dtype0	*
_class
loc:@global_step*
value	B	 R *
_output_shapes
: 

global_step
VariableV2*
	container *
_output_shapes
: *
dtype0	*
shape: *
_class
loc:@global_step*
shared_name 
²
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 

"enqueue_input/random_shuffle_queueRandomShuffleQueueV2"/device:CPU:0*
	container *
component_types
2	*
_output_shapes
: *
min_after_dequeueÄ*"
shapes
: ::
*
seed2 *

seed *
capacityN*
shared_name 
m
enqueue_input/PlaceholderPlaceholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_1Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_2Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
ÿ
.enqueue_input/random_shuffle_queue_EnqueueManyQueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
Tcomponents
2	
o
enqueue_input/Placeholder_3Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_4Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_5Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:

0enqueue_input/random_shuffle_queue_EnqueueMany_1QueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholder_3enqueue_input/Placeholder_4enqueue_input/Placeholder_5"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
Tcomponents
2	
o
enqueue_input/Placeholder_6Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_7Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_8Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:

0enqueue_input/random_shuffle_queue_EnqueueMany_2QueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholder_6enqueue_input/Placeholder_7enqueue_input/Placeholder_8"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
Tcomponents
2	
o
enqueue_input/Placeholder_9Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
p
enqueue_input/Placeholder_10Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
p
enqueue_input/Placeholder_11Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:

0enqueue_input/random_shuffle_queue_EnqueueMany_3QueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholder_9enqueue_input/Placeholder_10enqueue_input/Placeholder_11"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
Tcomponents
2	

(enqueue_input/random_shuffle_queue_CloseQueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues( 

*enqueue_input/random_shuffle_queue_Close_1QueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues(

'enqueue_input/random_shuffle_queue_SizeQueueSizeV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
_output_shapes
: 
e
enqueue_input/sub/yConst"/device:CPU:0*
dtype0*
value
B :Ä*
_output_shapes
: 

enqueue_input/subSub'enqueue_input/random_shuffle_queue_Sizeenqueue_input/sub/y"/device:CPU:0*
T0*
_output_shapes
: 
h
enqueue_input/Maximum/xConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
|
enqueue_input/MaximumMaximumenqueue_input/Maximum/xenqueue_input/sub"/device:CPU:0*
T0*
_output_shapes
: 
p
enqueue_input/CastCastenqueue_input/Maximum"/device:CPU:0*

DstT0*

SrcT0*
_output_shapes
: 
g
enqueue_input/mul/yConst"/device:CPU:0*
dtype0*
valueB
 *eÏ9*
_output_shapes
: 
q
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y"/device:CPU:0*
T0*
_output_shapes
: 
ÿ
Zenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full/tagsConst"/device:CPU:0*
dtype0*f
value]B[ BUenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full*
_output_shapes
: 

Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_fullScalarSummaryZenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full/tagsenqueue_input/mul"/device:CPU:0*
T0*
_output_shapes
: 
t
"random_shuffle_queue_DequeueMany/nConst"/device:CPU:0*
dtype0*
value
B :*
_output_shapes
: 
ÿ
 random_shuffle_queue_DequeueManyQueueDequeueManyV2"enqueue_input/random_shuffle_queue"random_shuffle_queue_DequeueMany/n"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
component_types
2	*9
_output_shapes'
%:::	

©
.conv2d/kernel/Initializer/random_uniform/shapeConst*
dtype0* 
_class
loc:@conv2d/kernel*%
valueB"             *
_output_shapes
:

,conv2d/kernel/Initializer/random_uniform/minConst*
dtype0* 
_class
loc:@conv2d/kernel*
valueB
 *n§®½*
_output_shapes
: 

,conv2d/kernel/Initializer/random_uniform/maxConst*
dtype0* 
_class
loc:@conv2d/kernel*
valueB
 *n§®=*
_output_shapes
: 
ð
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*&
_output_shapes
: *
dtype0*
seed2 *

seed *
T0* 
_class
loc:@conv2d/kernel
Ò
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv2d/kernel*
T0*
_output_shapes
: 
ì
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 
Þ
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 
³
conv2d/kernel
VariableV2*
	container *&
_output_shapes
: *
dtype0*
shape: * 
_class
loc:@conv2d/kernel*
shared_name 
Ó
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
validate_shape(* 
_class
loc:@conv2d/kernel*
use_locking(*
T0*&
_output_shapes
: 

conv2d/kernel/readIdentityconv2d/kernel* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 

conv2d/bias/Initializer/zerosConst*
dtype0*
_class
loc:@conv2d/bias*
valueB *    *
_output_shapes
: 

conv2d/bias
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv2d/bias*
shared_name 
¶
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
validate_shape(*
_class
loc:@conv2d/bias*
use_locking(*
T0*
_output_shapes
: 
n
conv2d/bias/readIdentityconv2d/bias*
_class
loc:@conv2d/bias*
T0*
_output_shapes
: 
q
conv2d/convolution/ShapeConst*
dtype0*%
valueB"             *
_output_shapes
:
q
 conv2d/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
Þ
conv2d/convolutionConv2D"random_shuffle_queue_DequeueMany:1conv2d/kernel/read*'
_output_shapes
: *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv2d/BiasAddBiasAddconv2d/convolutionconv2d/bias/read*
data_formatNHWC*
T0*'
_output_shapes
: 
U
conv2d/ReluReluconv2d/BiasAdd*
T0*'
_output_shapes
: 
­
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@conv2d_1/kernel*%
valueB"          @   *
_output_shapes
:

.conv2d_1/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_1/kernel*
valueB
 *ÍÌL½*
_output_shapes
: 

.conv2d_1/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_1/kernel*
valueB
 *ÍÌL=*
_output_shapes
: 
ö
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*&
_output_shapes
: @*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_1/kernel
Ú
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_1/kernel*
T0*
_output_shapes
: 
ô
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @
æ
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @
·
conv2d_1/kernel
VariableV2*
	container *&
_output_shapes
: @*
dtype0*
shape: @*"
_class
loc:@conv2d_1/kernel*
shared_name 
Û
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@conv2d_1/kernel*
use_locking(*
T0*&
_output_shapes
: @

conv2d_1/kernel/readIdentityconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @

conv2d_1/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_1/bias*
valueB@*    *
_output_shapes
:@

conv2d_1/bias
VariableV2*
	container *
_output_shapes
:@*
dtype0*
shape:@* 
_class
loc:@conv2d_1/bias*
shared_name 
¾
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2d_1/bias*
use_locking(*
T0*
_output_shapes
:@
t
conv2d_1/bias/readIdentityconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
T0*
_output_shapes
:@
s
conv2d_2/convolution/ShapeConst*
dtype0*%
valueB"          @   *
_output_shapes
:
s
"conv2d_2/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
Ë
conv2d_2/convolutionConv2Dconv2d/Reluconv2d_1/kernel/read*'
_output_shapes
:@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv2d_2/BiasAddBiasAddconv2d_2/convolutionconv2d_1/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:@
Y
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*'
_output_shapes
:@
­
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@conv2d_2/kernel*%
valueB"      @      *
_output_shapes
:

.conv2d_2/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_2/kernel*
valueB
 *óµ½*
_output_shapes
: 

.conv2d_2/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_2/kernel*
valueB
 *óµ=*
_output_shapes
: 
÷
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*'
_output_shapes
:@*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_2/kernel
Ú
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_2/kernel*
T0*
_output_shapes
: 
õ
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_2/kernel*
T0*'
_output_shapes
:@
ç
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_2/kernel*
T0*'
_output_shapes
:@
¹
conv2d_2/kernel
VariableV2*
	container *'
_output_shapes
:@*
dtype0*
shape:@*"
_class
loc:@conv2d_2/kernel*
shared_name 
Ü
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@conv2d_2/kernel*
use_locking(*
T0*'
_output_shapes
:@

conv2d_2/kernel/readIdentityconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
T0*'
_output_shapes
:@

conv2d_2/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_2/bias*
valueB*    *
_output_shapes	
:

conv2d_2/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:* 
_class
loc:@conv2d_2/bias*
shared_name 
¿
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/bias/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2d_2/bias*
use_locking(*
T0*
_output_shapes	
:
u
conv2d_2/bias/readIdentityconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
T0*
_output_shapes	
:
s
conv2d_3/convolution/ShapeConst*
dtype0*%
valueB"      @      *
_output_shapes
:
s
"conv2d_3/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
Î
conv2d_3/convolutionConv2Dconv2d_2/Reluconv2d_2/kernel/read*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv2d_3/BiasAddBiasAddconv2d_3/convolutionconv2d_2/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:
Z
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*(
_output_shapes
:
µ
max_pooling2d/MaxPoolMaxPoolconv2d_3/Relu*(
_output_shapes
:		*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
­
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@conv2d_3/kernel*%
valueB"            *
_output_shapes
:

.conv2d_3/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_3/kernel*
valueB
 *ÍÌÌ¼*
_output_shapes
: 

.conv2d_3/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_3/kernel*
valueB
 *ÍÌÌ<*
_output_shapes
: 
ø
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*(
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_3/kernel
Ú
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_3/kernel*
T0*
_output_shapes
: 
ö
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_3/kernel*
T0*(
_output_shapes
:
è
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_3/kernel*
T0*(
_output_shapes
:
»
conv2d_3/kernel
VariableV2*
	container *(
_output_shapes
:*
dtype0*
shape:*"
_class
loc:@conv2d_3/kernel*
shared_name 
Ý
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@conv2d_3/kernel*
use_locking(*
T0*(
_output_shapes
:

conv2d_3/kernel/readIdentityconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
T0*(
_output_shapes
:

conv2d_3/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_3/bias*
valueB*    *
_output_shapes	
:

conv2d_3/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:* 
_class
loc:@conv2d_3/bias*
shared_name 
¿
conv2d_3/bias/AssignAssignconv2d_3/biasconv2d_3/bias/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2d_3/bias*
use_locking(*
T0*
_output_shapes	
:
u
conv2d_3/bias/readIdentityconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
T0*
_output_shapes	
:
s
conv2d_4/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
s
"conv2d_4/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
Ö
conv2d_4/convolutionConv2Dmax_pooling2d/MaxPoolconv2d_3/kernel/read*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv2d_4/BiasAddBiasAddconv2d_4/convolutionconv2d_3/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:
Z
conv2d_4/ReluReluconv2d_4/BiasAdd*
T0*(
_output_shapes
:
·
max_pooling2d_2/MaxPoolMaxPoolconv2d_4/Relu*(
_output_shapes
:*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
f
flatten/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
e
flatten/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
g
flatten/strided_slice/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
g
flatten/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
¥
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
W
flatten/ConstConst*
dtype0*
valueB: *
_output_shapes
:
x
flatten/ProdProdflatten/strided_sliceflatten/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
Z
flatten/stack/0Const*
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
: 
n
flatten/stackPackflatten/stack/0flatten/Prod*
_output_shapes
:*

axis *
T0*
N
{
flatten/ReshapeReshapemax_pooling2d_2/MaxPoolflatten/stack*
Tshape0*
T0* 
_output_shapes
:


-dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_class
loc:@dense/kernel*
valueB"      *
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *×³]½*
_output_shapes
: 

+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *×³]=*
_output_shapes
: 
ç
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*
_class
loc:@dense/kernel
Î
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0*
_output_shapes
: 
â
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:

Ô
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:

¥
dense/kernel
VariableV2*
	container * 
_output_shapes
:
*
dtype0*
shape:
*
_class
loc:@dense/kernel*
shared_name 
É
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0* 
_output_shapes
:

w
dense/kernel/readIdentitydense/kernel*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:


dense/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense/bias*
valueB*    *
_output_shapes	
:


dense/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:*
_class
loc:@dense/bias*
shared_name 
³
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes	
:
l
dense/bias/readIdentity
dense/bias*
_class
loc:@dense/bias*
T0*
_output_shapes	
:

dense/MatMulMatMulflatten/Reshapedense/kernel/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:

y
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
data_formatNHWC*
T0* 
_output_shapes
:

L

dense/ReluReludense/BiasAdd*
T0* 
_output_shapes
:

£
/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB"      *
_output_shapes
:

-dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *×³]½*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *×³]=*
_output_shapes
: 
í
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_1/kernel
Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
: 
ê
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:

Ü
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:

©
dense_1/kernel
VariableV2*
	container * 
_output_shapes
:
*
dtype0*
shape:
*!
_class
loc:@dense_1/kernel*
shared_name 
Ñ
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:

}
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:


dense_1/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_1/bias*
valueB*    *
_output_shapes	
:

dense_1/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:*
_class
loc:@dense_1/bias*
shared_name 
»
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes	
:
r
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
T0*
_output_shapes	
:

dense_2/MatMulMatMul
dense/Reludense_1/kernel/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:


dense_2/BiasAddBiasAdddense_2/MatMuldense_1/bias/read*
data_formatNHWC*
T0* 
_output_shapes
:

P
dense_2/ReluReludense_2/BiasAdd*
T0* 
_output_shapes
:

£
/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB"      *
_output_shapes
:

-dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB
 *×³]½*
_output_shapes
: 

-dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB
 *×³]=*
_output_shapes
: 
í
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_2/kernel
Ö
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes
: 
ê
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:

Ü
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:

©
dense_2/kernel
VariableV2*
	container * 
_output_shapes
:
*
dtype0*
shape:
*!
_class
loc:@dense_2/kernel*
shared_name 
Ñ
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_2/kernel*
use_locking(*
T0* 
_output_shapes
:

}
dense_2/kernel/readIdentitydense_2/kernel*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:


dense_2/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_2/bias*
valueB*    *
_output_shapes	
:

dense_2/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:*
_class
loc:@dense_2/bias*
shared_name 
»
dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_2/bias*
use_locking(*
T0*
_output_shapes	
:
r
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
T0*
_output_shapes	
:

dense_3/MatMulMatMuldense_2/Reludense_2/kernel/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:


dense_3/BiasAddBiasAdddense_3/MatMuldense_2/bias/read*
data_formatNHWC*
T0* 
_output_shapes
:

P
dense_3/ReluReludense_3/BiasAdd*
T0* 
_output_shapes
:

£
/dense_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB"      *
_output_shapes
:

-dense_3/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *×³]½*
_output_shapes
: 

-dense_3/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *×³]=*
_output_shapes
: 
í
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_3/kernel
Ö
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
T0*
_output_shapes
: 
ê
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_3/kernel*
T0* 
_output_shapes
:

Ü
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
T0* 
_output_shapes
:

©
dense_3/kernel
VariableV2*
	container * 
_output_shapes
:
*
dtype0*
shape:
*!
_class
loc:@dense_3/kernel*
shared_name 
Ñ
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_3/kernel*
use_locking(*
T0* 
_output_shapes
:

}
dense_3/kernel/readIdentitydense_3/kernel*!
_class
loc:@dense_3/kernel*
T0* 
_output_shapes
:


dense_3/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_3/bias*
valueB*    *
_output_shapes	
:

dense_3/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:*
_class
loc:@dense_3/bias*
shared_name 
»
dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_3/bias*
use_locking(*
T0*
_output_shapes	
:
r
dense_3/bias/readIdentitydense_3/bias*
_class
loc:@dense_3/bias*
T0*
_output_shapes	
:

dense_4/MatMulMatMuldense_3/Reludense_3/kernel/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:


dense_4/BiasAddBiasAdddense_4/MatMuldense_3/bias/read*
data_formatNHWC*
T0* 
_output_shapes
:

P
dense_4/ReluReludense_4/BiasAdd*
T0* 
_output_shapes
:

£
/dense_4/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB"   
   *
_output_shapes
:

-dense_4/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB
 *è½*
_output_shapes
: 

-dense_4/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB
 *è=*
_output_shapes
: 
ì
7dense_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_4/kernel/Initializer/random_uniform/shape*
_output_shapes
:	
*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_4/kernel
Ö
-dense_4/kernel/Initializer/random_uniform/subSub-dense_4/kernel/Initializer/random_uniform/max-dense_4/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
: 
é
-dense_4/kernel/Initializer/random_uniform/mulMul7dense_4/kernel/Initializer/random_uniform/RandomUniform-dense_4/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
:	

Û
)dense_4/kernel/Initializer/random_uniformAdd-dense_4/kernel/Initializer/random_uniform/mul-dense_4/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
:	

§
dense_4/kernel
VariableV2*
	container *
_output_shapes
:	
*
dtype0*
shape:	
*!
_class
loc:@dense_4/kernel*
shared_name 
Ð
dense_4/kernel/AssignAssigndense_4/kernel)dense_4/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_4/kernel*
use_locking(*
T0*
_output_shapes
:	

|
dense_4/kernel/readIdentitydense_4/kernel*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
:	


dense_4/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_4/bias*
valueB
*    *
_output_shapes
:


dense_4/bias
VariableV2*
	container *
_output_shapes
:
*
dtype0*
shape:
*
_class
loc:@dense_4/bias*
shared_name 
º
dense_4/bias/AssignAssigndense_4/biasdense_4/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_4/bias*
use_locking(*
T0*
_output_shapes
:

q
dense_4/bias/readIdentitydense_4/bias*
_class
loc:@dense_4/bias*
T0*
_output_shapes
:


dense_5/MatMulMatMuldense_4/Reludense_4/kernel/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes
:	

~
dense_5/BiasAddBiasAdddense_5/MatMuldense_4/bias/read*
data_formatNHWC*
T0*
_output_shapes
:	

U
dense_5/SoftmaxSoftmaxdense_5/BiasAdd*
T0*
_output_shapes
:	


softmax_cross_entropy_loss/CastCast"random_shuffle_queue_DequeueMany:2*

DstT0*

SrcT0*
_output_shapes
:	

a
softmax_cross_entropy_loss/RankConst*
dtype0*
value	B :*
_output_shapes
: 
q
 softmax_cross_entropy_loss/ShapeConst*
dtype0*
valueB"   
   *
_output_shapes
:
c
!softmax_cross_entropy_loss/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
s
"softmax_cross_entropy_loss/Shape_1Const*
dtype0*
valueB"   
   *
_output_shapes
:
b
 softmax_cross_entropy_loss/Sub/yConst*
dtype0*
value	B :*
_output_shapes
: 

softmax_cross_entropy_loss/SubSub!softmax_cross_entropy_loss/Rank_1 softmax_cross_entropy_loss/Sub/y*
T0*
_output_shapes
: 

&softmax_cross_entropy_loss/Slice/beginPacksoftmax_cross_entropy_loss/Sub*
_output_shapes
:*

axis *
T0*
N
o
%softmax_cross_entropy_loss/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Î
 softmax_cross_entropy_loss/SliceSlice"softmax_cross_entropy_loss/Shape_1&softmax_cross_entropy_loss/Slice/begin%softmax_cross_entropy_loss/Slice/size*
Index0*
T0*
_output_shapes
:
}
*softmax_cross_entropy_loss/concat/values_0Const*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
:
h
&softmax_cross_entropy_loss/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ý
!softmax_cross_entropy_loss/concatConcatV2*softmax_cross_entropy_loss/concat/values_0 softmax_cross_entropy_loss/Slice&softmax_cross_entropy_loss/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N

"softmax_cross_entropy_loss/ReshapeReshapedense_5/Softmax!softmax_cross_entropy_loss/concat*
Tshape0*
T0*
_output_shapes
:	

c
!softmax_cross_entropy_loss/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
s
"softmax_cross_entropy_loss/Shape_2Const*
dtype0*
valueB"   
   *
_output_shapes
:
d
"softmax_cross_entropy_loss/Sub_1/yConst*
dtype0*
value	B :*
_output_shapes
: 

 softmax_cross_entropy_loss/Sub_1Sub!softmax_cross_entropy_loss/Rank_2"softmax_cross_entropy_loss/Sub_1/y*
T0*
_output_shapes
: 

(softmax_cross_entropy_loss/Slice_1/beginPack softmax_cross_entropy_loss/Sub_1*
_output_shapes
:*

axis *
T0*
N
q
'softmax_cross_entropy_loss/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Ô
"softmax_cross_entropy_loss/Slice_1Slice"softmax_cross_entropy_loss/Shape_2(softmax_cross_entropy_loss/Slice_1/begin'softmax_cross_entropy_loss/Slice_1/size*
Index0*
T0*
_output_shapes
:

,softmax_cross_entropy_loss/concat_1/values_0Const*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
:
j
(softmax_cross_entropy_loss/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
å
#softmax_cross_entropy_loss/concat_1ConcatV2,softmax_cross_entropy_loss/concat_1/values_0"softmax_cross_entropy_loss/Slice_1(softmax_cross_entropy_loss/concat_1/axis*
_output_shapes
:*

Tidx0*
T0*
N
­
$softmax_cross_entropy_loss/Reshape_1Reshapesoftmax_cross_entropy_loss/Cast#softmax_cross_entropy_loss/concat_1*
Tshape0*
T0*
_output_shapes
:	

¿
#softmax_cross_entropy_loss/xentropySoftmaxCrossEntropyWithLogits"softmax_cross_entropy_loss/Reshape$softmax_cross_entropy_loss/Reshape_1*
T0*&
_output_shapes
::	

d
"softmax_cross_entropy_loss/Sub_2/yConst*
dtype0*
value	B :*
_output_shapes
: 

 softmax_cross_entropy_loss/Sub_2Subsoftmax_cross_entropy_loss/Rank"softmax_cross_entropy_loss/Sub_2/y*
T0*
_output_shapes
: 
r
(softmax_cross_entropy_loss/Slice_2/beginConst*
dtype0*
valueB: *
_output_shapes
:

'softmax_cross_entropy_loss/Slice_2/sizePack softmax_cross_entropy_loss/Sub_2*
_output_shapes
:*

axis *
T0*
N
Û
"softmax_cross_entropy_loss/Slice_2Slice softmax_cross_entropy_loss/Shape(softmax_cross_entropy_loss/Slice_2/begin'softmax_cross_entropy_loss/Slice_2/size*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¬
$softmax_cross_entropy_loss/Reshape_2Reshape#softmax_cross_entropy_loss/xentropy"softmax_cross_entropy_loss/Slice_2*
Tshape0*
T0*
_output_shapes	
:
|
7softmax_cross_entropy_loss/assert_broadcastable/weightsConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

=softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
dtype0*
valueB *
_output_shapes
: 
~
<softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
dtype0*
value	B : *
_output_shapes
: 

<softmax_cross_entropy_loss/assert_broadcastable/values/shapeConst*
dtype0*
valueB:*
_output_shapes
:
}
;softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
dtype0*
value	B :*
_output_shapes
: 
S
Ksoftmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
¹
&softmax_cross_entropy_loss/ToFloat_1/xConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  ?*
_output_shapes
: 

softmax_cross_entropy_loss/MulMul$softmax_cross_entropy_loss/Reshape_2&softmax_cross_entropy_loss/ToFloat_1/x*
T0*
_output_shapes	
:
¸
 softmax_cross_entropy_loss/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB: *
_output_shapes
:
¥
softmax_cross_entropy_loss/SumSumsoftmax_cross_entropy_loss/Mul softmax_cross_entropy_loss/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
Á
.softmax_cross_entropy_loss/num_present/Equal/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
®
,softmax_cross_entropy_loss/num_present/EqualEqual&softmax_cross_entropy_loss/ToFloat_1/x.softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
Ä
1softmax_cross_entropy_loss/num_present/zeros_likeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
Ç
6softmax_cross_entropy_loss/num_present/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
É
6softmax_cross_entropy_loss/num_present/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  ?*
_output_shapes
: 
É
0softmax_cross_entropy_loss/num_present/ones_likeFill6softmax_cross_entropy_loss/num_present/ones_like/Shape6softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
ë
-softmax_cross_entropy_loss/num_present/SelectSelect,softmax_cross_entropy_loss/num_present/Equal1softmax_cross_entropy_loss/num_present/zeros_like0softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
ì
[softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
ê
Zsoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
value	B : *
_output_shapes
: 
ó
Zsoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB:*
_output_shapes
:
é
Ysoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
value	B :*
_output_shapes
: 
¿
isoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
Í
Hsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successj^softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB:*
_output_shapes
:
Ç
Hsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successj^softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  ?*
_output_shapes
: 

Bsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillHsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeHsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*
_output_shapes	
:
Ø
8softmax_cross_entropy_loss/num_present/broadcast_weightsMul-softmax_cross_entropy_loss/num_present/SelectBsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*
_output_shapes	
:
Ä
,softmax_cross_entropy_loss/num_present/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB: *
_output_shapes
:
Ó
&softmax_cross_entropy_loss/num_presentSum8softmax_cross_entropy_loss/num_present/broadcast_weights,softmax_cross_entropy_loss/num_present/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
³
"softmax_cross_entropy_loss/Const_1ConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
©
 softmax_cross_entropy_loss/Sum_1Sumsoftmax_cross_entropy_loss/Sum"softmax_cross_entropy_loss/Const_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
·
$softmax_cross_entropy_loss/Greater/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 

"softmax_cross_entropy_loss/GreaterGreater&softmax_cross_entropy_loss/num_present$softmax_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
µ
"softmax_cross_entropy_loss/Equal/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 

 softmax_cross_entropy_loss/EqualEqual&softmax_cross_entropy_loss/num_present"softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
»
*softmax_cross_entropy_loss/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
½
*softmax_cross_entropy_loss/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  ?*
_output_shapes
: 
¥
$softmax_cross_entropy_loss/ones_likeFill*softmax_cross_entropy_loss/ones_like/Shape*softmax_cross_entropy_loss/ones_like/Const*
T0*
_output_shapes
: 
¼
!softmax_cross_entropy_loss/SelectSelect softmax_cross_entropy_loss/Equal$softmax_cross_entropy_loss/ones_like&softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 

softmax_cross_entropy_loss/divRealDiv softmax_cross_entropy_loss/Sum_1!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
¸
%softmax_cross_entropy_loss/zeros_likeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
¶
 softmax_cross_entropy_loss/valueSelect"softmax_cross_entropy_loss/Greatersoftmax_cross_entropy_loss/div%softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
 
,OptimizeLoss/learning_rate/Initializer/ConstConst*
dtype0*-
_class#
!loc:@OptimizeLoss/learning_rate*
valueB
 *
×#<*
_output_shapes
: 
­
OptimizeLoss/learning_rate
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *-
_class#
!loc:@OptimizeLoss/learning_rate*
shared_name 
î
!OptimizeLoss/learning_rate/AssignAssignOptimizeLoss/learning_rate,OptimizeLoss/learning_rate/Initializer/Const*
validate_shape(*-
_class#
!loc:@OptimizeLoss/learning_rate*
use_locking(*
T0*
_output_shapes
: 

OptimizeLoss/learning_rate/readIdentityOptimizeLoss/learning_rate*-
_class#
!loc:@OptimizeLoss/learning_rate*
T0*
_output_shapes
: 
_
OptimizeLoss/gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
a
OptimizeLoss/gradients/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

OptimizeLoss/gradients/FillFillOptimizeLoss/gradients/ShapeOptimizeLoss/gradients/Const*
T0*
_output_shapes
: 

GOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_likeConst*
dtype0*
valueB
 *    *
_output_shapes
: 
ø
COptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectSelect"softmax_cross_entropy_loss/GreaterOptimizeLoss/gradients/FillGOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
ú
EOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1Select"softmax_cross_entropy_loss/GreaterGOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_likeOptimizeLoss/gradients/Fill*
T0*
_output_shapes
: 
ã
MOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOpD^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectF^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1
ï
UOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentityCOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectN^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_deps*V
_classL
JHloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select*
T0*
_output_shapes
: 
õ
WOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1N^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1*
T0*
_output_shapes
: 

@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ShapeConst*
dtype0*
valueB *
_output_shapes
: 

BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
¬
POptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgs@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ShapeBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
è
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDivRealDivUOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependency!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 

>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/SumSumBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDivPOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
þ
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeReshape>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape*
Tshape0*
T0*
_output_shapes
: 

>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/NegNeg softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
Ó
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_1RealDiv>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Neg!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Ù
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_2RealDivDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_1!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 

>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/mulMulUOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependencyDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 

@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum_1Sum>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/mulROptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:

DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum_1BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
ß
KOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeE^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1
é
SOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeL^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_deps*U
_classK
IGloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape*
T0*
_output_shapes
: 
ï
UOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1IdentityDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1L^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1*
T0*
_output_shapes
: 

JOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
dtype0*
valueB *
_output_shapes
: 

DOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapeSOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependencyJOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
: 

KOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Tile/multiplesConst*
dtype0*
valueB *
_output_shapes
: 

AOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/TileTileDOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/ReshapeKOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes
: 

HOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:

BOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeAOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/TileHOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:

IOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile/multiplesConst*
dtype0*
valueB:*
_output_shapes
:

?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/TileTileBOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/ReshapeIOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes	
:

@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ShapeConst*
dtype0*
valueB:*
_output_shapes
:

BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
¬
POptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ShapeBOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Ô
>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mulMul?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile&softmax_cross_entropy_loss/ToFloat_1/x*
T0*
_output_shapes	
:

>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/SumSum>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mulPOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:

BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeReshape>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape*
Tshape0*
T0*
_output_shapes	
:
Ô
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mul_1Mul$softmax_cross_entropy_loss/Reshape_2?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile*
T0*
_output_shapes	
:

@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum_1Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mul_1ROptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:

DOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum_1BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
ß
KOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeE^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1
î
SOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeL^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*U
_classK
IGloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape*
T0*
_output_shapes	
:
ï
UOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1IdentityDOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1L^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1*
T0*
_output_shapes
: 

FOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/ShapeConst*
dtype0*
valueB:*
_output_shapes
:
¤
HOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/ReshapeReshapeSOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyFOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/Shape*
Tshape0*
T0*
_output_shapes	
:
x
!OptimizeLoss/gradients/zeros_likeConst*
dtype0*
valueB	
*    *
_output_shapes
:	


NOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims/dimConst*
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
: 
¨
JOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims
ExpandDimsHOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/ReshapeNOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:	
ç
COptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mulMulJOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims%softmax_cross_entropy_loss/xentropy:1*
T0*
_output_shapes
:	


DOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/ShapeConst*
dtype0*
valueB"   
   *
_output_shapes
:

FOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/ReshapeReshapeCOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mulDOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/Shape*
Tshape0*
T0*
_output_shapes
:	

¹
/OptimizeLoss/gradients/dense_5/Softmax_grad/mulMulFOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/Reshapedense_5/Softmax*
T0*
_output_shapes
:	


AOptimizeLoss/gradients/dense_5/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
í
/OptimizeLoss/gradients/dense_5/Softmax_grad/SumSum/OptimizeLoss/gradients/dense_5/Softmax_grad/mulAOptimizeLoss/gradients/dense_5/Softmax_grad/Sum/reduction_indices*

Tidx0*
T0*
	keep_dims( *
_output_shapes	
:

9OptimizeLoss/gradients/dense_5/Softmax_grad/Reshape/shapeConst*
dtype0*
valueB"ÿÿÿÿ   *
_output_shapes
:
â
3OptimizeLoss/gradients/dense_5/Softmax_grad/ReshapeReshape/OptimizeLoss/gradients/dense_5/Softmax_grad/Sum9OptimizeLoss/gradients/dense_5/Softmax_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:	
Ý
/OptimizeLoss/gradients/dense_5/Softmax_grad/subSubFOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/Reshape3OptimizeLoss/gradients/dense_5/Softmax_grad/Reshape*
T0*
_output_shapes
:	

¤
1OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1Mul/OptimizeLoss/gradients/dense_5/Softmax_grad/subdense_5/Softmax*
T0*
_output_shapes
:	

µ
7OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1*
data_formatNHWC*
T0*
_output_shapes
:

²
<OptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_5/Softmax_grad/mul_18^OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGrad
²
DOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1=^OptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1*
T0*
_output_shapes
:	

»
FOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

ç
1OptimizeLoss/gradients/dense_5/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependencydense_4/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

á
3OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1MatMuldense_4/ReluDOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	

­
;OptimizeLoss/gradients/dense_5/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1
±
COptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_5/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul*
T0* 
_output_shapes
:

¶
EOptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_5/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	

»
1OptimizeLoss/gradients/dense_4/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependencydense_4/Relu*
T0* 
_output_shapes
:

¶
7OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
²
<OptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad8^OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGrad
³
DOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad=^OptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad*
T0* 
_output_shapes
:

¼
FOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
ç
1OptimizeLoss/gradients/dense_4/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependencydense_3/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

â
3OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1MatMuldense_3/ReluDOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:

­
;OptimizeLoss/gradients/dense_4/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1
±
COptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_4/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul*
T0* 
_output_shapes
:

·
EOptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_4/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

»
1OptimizeLoss/gradients/dense_3/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependencydense_3/Relu*
T0* 
_output_shapes
:

¶
7OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
²
<OptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad8^OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGrad
³
DOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad=^OptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad*
T0* 
_output_shapes
:

¼
FOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
ç
1OptimizeLoss/gradients/dense_3/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependencydense_2/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

â
3OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1MatMuldense_2/ReluDOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:

­
;OptimizeLoss/gradients/dense_3/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1
±
COptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_3/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul*
T0* 
_output_shapes
:

·
EOptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_3/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

»
1OptimizeLoss/gradients/dense_2/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependencydense_2/Relu*
T0* 
_output_shapes
:

¶
7OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
²
<OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad8^OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad
³
DOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad=^OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad*
T0* 
_output_shapes
:

¼
FOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
ç
1OptimizeLoss/gradients/dense_2/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

à
3OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1MatMul
dense/ReluDOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:

­
;OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1
±
COptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul*
T0* 
_output_shapes
:

·
EOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

·
/OptimizeLoss/gradients/dense/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency
dense/Relu*
T0* 
_output_shapes
:

²
5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad/OptimizeLoss/gradients/dense/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
¬
:OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_depsNoOp0^OptimizeLoss/gradients/dense/Relu_grad/ReluGrad6^OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad
«
BOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity/OptimizeLoss/gradients/dense/Relu_grad/ReluGrad;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*B
_class8
64loc:@OptimizeLoss/gradients/dense/Relu_grad/ReluGrad*
T0* 
_output_shapes
:

´
DOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*H
_class>
<:loc:@OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
á
/OptimizeLoss/gradients/dense/MatMul_grad/MatMulMatMulBOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

á
1OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1MatMulflatten/ReshapeBOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:

§
9OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_depsNoOp0^OptimizeLoss/gradients/dense/MatMul_grad/MatMul2^OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1
©
AOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependencyIdentity/OptimizeLoss/gradients/dense/MatMul_grad/MatMul:^OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_deps*B
_class8
64loc:@OptimizeLoss/gradients/dense/MatMul_grad/MatMul*
T0* 
_output_shapes
:

¯
COptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency_1Identity1OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1:^OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:


1OptimizeLoss/gradients/flatten/Reshape_grad/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
õ
3OptimizeLoss/gradients/flatten/Reshape_grad/ReshapeReshapeAOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency1OptimizeLoss/gradients/flatten/Reshape_grad/Shape*
Tshape0*
T0*(
_output_shapes
:
±
?OptimizeLoss/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_4/Relumax_pooling2d_2/MaxPool3OptimizeLoss/gradients/flatten/Reshape_grad/Reshape*(
_output_shapes
:*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
Á
2OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGradReluGrad?OptimizeLoss/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradconv2d_4/Relu*
T0*(
_output_shapes
:
¸
8OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
µ
=OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/group_depsNoOp3^OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad9^OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad
¿
EOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad*
T0*(
_output_shapes
:
À
GOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:

6OptimizeLoss/gradients/conv2d_4/convolution_grad/ShapeConst*
dtype0*%
valueB"   	   	      *
_output_shapes
:
û
DOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6OptimizeLoss/gradients/conv2d_4/convolution_grad/Shapeconv2d_3/kernel/readEOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*(
_output_shapes
:		*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

8OptimizeLoss/gradients/conv2d_4/convolution_grad/Shape_1Const*
dtype0*%
valueB"            *
_output_shapes
:

EOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool8OptimizeLoss/gradients/conv2d_4/convolution_grad/Shape_1EOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ø
AOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputF^OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilter
ë
IOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputB^OptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInput*
T0*(
_output_shapes
:		
ï
KOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilterB^OptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
Ã
=OptimizeLoss/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_3/Relumax_pooling2d/MaxPoolIOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependency*(
_output_shapes
:*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
¿
2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGradReluGrad=OptimizeLoss/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradconv2d_3/Relu*
T0*(
_output_shapes
:
¸
8OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
µ
=OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_depsNoOp3^OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad9^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad
¿
EOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad*
T0*(
_output_shapes
:
À
GOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:

6OptimizeLoss/gradients/conv2d_3/convolution_grad/ShapeConst*
dtype0*%
valueB"         @   *
_output_shapes
:
ú
DOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6OptimizeLoss/gradients/conv2d_3/convolution_grad/Shapeconv2d_2/kernel/readEOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
:@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

8OptimizeLoss/gradients/conv2d_3/convolution_grad/Shape_1Const*
dtype0*%
valueB"      @      *
_output_shapes
:
÷
EOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_2/Relu8OptimizeLoss/gradients/conv2d_3/convolution_grad/Shape_1EOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
:@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ø
AOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputF^OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilter
ê
IOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputB^OptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInput*
T0*'
_output_shapes
:@
î
KOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilterB^OptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
Ê
2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGradReluGradIOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependencyconv2d_2/Relu*
T0*'
_output_shapes
:@
·
8OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes
:@
µ
=OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_depsNoOp3^OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad9^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad
¾
EOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*'
_output_shapes
:@
¿
GOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@

6OptimizeLoss/gradients/conv2d_2/convolution_grad/ShapeConst*
dtype0*%
valueB"             *
_output_shapes
:
ú
DOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6OptimizeLoss/gradients/conv2d_2/convolution_grad/Shapeconv2d_1/kernel/readEOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
: *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

8OptimizeLoss/gradients/conv2d_2/convolution_grad/Shape_1Const*
dtype0*%
valueB"          @   *
_output_shapes
:
ô
EOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d/Relu8OptimizeLoss/gradients/conv2d_2/convolution_grad/Shape_1EOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: @*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ø
AOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputF^OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter
ê
IOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputB^OptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInput*
T0*'
_output_shapes
: 
í
KOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilterB^OptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: @
Æ
0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGradReluGradIOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependencyconv2d/Relu*
T0*'
_output_shapes
: 
³
6OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes
: 
¯
;OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_depsNoOp1^OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad7^OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad
¶
COptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad<^OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_deps*C
_class9
75loc:@OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad*
T0*'
_output_shapes
: 
·
EOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity6OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad<^OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_deps*I
_class?
=;loc:@OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 

4OptimizeLoss/gradients/conv2d/convolution_grad/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
ò
BOptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInputConv2DBackpropInput4OptimizeLoss/gradients/conv2d/convolution_grad/Shapeconv2d/kernel/readCOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

6OptimizeLoss/gradients/conv2d/convolution_grad/Shape_1Const*
dtype0*%
valueB"             *
_output_shapes
:

COptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilter"random_shuffle_queue_DequeueMany:16OptimizeLoss/gradients/conv2d/convolution_grad/Shape_1COptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ò
?OptimizeLoss/gradients/conv2d/convolution_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInputD^OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilter
â
GOptimizeLoss/gradients/conv2d/convolution_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInput@^OptimizeLoss/gradients/conv2d/convolution_grad/tuple/group_deps*U
_classK
IGloc:@OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInput*
T0*'
_output_shapes
:
å
IOptimizeLoss/gradients/conv2d/convolution_grad/tuple/control_dependency_1IdentityCOptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilter@^OptimizeLoss/gradients/conv2d/convolution_grad/tuple/group_deps*V
_classL
JHloc:@OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: 
h
OptimizeLoss/loss/tagsConst*
dtype0*"
valueB BOptimizeLoss/loss*
_output_shapes
: 
}
OptimizeLoss/lossScalarSummaryOptimizeLoss/loss/tags softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
µ
<OptimizeLoss/train/update_conv2d/kernel/ApplyGradientDescentApplyGradientDescentconv2d/kernelOptimizeLoss/learning_rate/readIOptimizeLoss/gradients/conv2d/convolution_grad/tuple/control_dependency_1* 
_class
loc:@conv2d/kernel*
use_locking( *
T0*&
_output_shapes
: 

:OptimizeLoss/train/update_conv2d/bias/ApplyGradientDescentApplyGradientDescentconv2d/biasOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@conv2d/bias*
use_locking( *
T0*
_output_shapes
: 
½
>OptimizeLoss/train/update_conv2d_1/kernel/ApplyGradientDescentApplyGradientDescentconv2d_1/kernelOptimizeLoss/learning_rate/readKOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_1/kernel*
use_locking( *
T0*&
_output_shapes
: @
§
<OptimizeLoss/train/update_conv2d_1/bias/ApplyGradientDescentApplyGradientDescentconv2d_1/biasOptimizeLoss/learning_rate/readGOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_1/bias*
use_locking( *
T0*
_output_shapes
:@
¾
>OptimizeLoss/train/update_conv2d_2/kernel/ApplyGradientDescentApplyGradientDescentconv2d_2/kernelOptimizeLoss/learning_rate/readKOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_2/kernel*
use_locking( *
T0*'
_output_shapes
:@
¨
<OptimizeLoss/train/update_conv2d_2/bias/ApplyGradientDescentApplyGradientDescentconv2d_2/biasOptimizeLoss/learning_rate/readGOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_2/bias*
use_locking( *
T0*
_output_shapes	
:
¿
>OptimizeLoss/train/update_conv2d_3/kernel/ApplyGradientDescentApplyGradientDescentconv2d_3/kernelOptimizeLoss/learning_rate/readKOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_3/kernel*
use_locking( *
T0*(
_output_shapes
:
¨
<OptimizeLoss/train/update_conv2d_3/bias/ApplyGradientDescentApplyGradientDescentconv2d_3/biasOptimizeLoss/learning_rate/readGOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_3/bias*
use_locking( *
T0*
_output_shapes	
:
¦
;OptimizeLoss/train/update_dense/kernel/ApplyGradientDescentApplyGradientDescentdense/kernelOptimizeLoss/learning_rate/readCOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency_1*
_class
loc:@dense/kernel*
use_locking( *
T0* 
_output_shapes
:


9OptimizeLoss/train/update_dense/bias/ApplyGradientDescentApplyGradientDescent
dense/biasOptimizeLoss/learning_rate/readDOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense/bias*
use_locking( *
T0*
_output_shapes	
:
®
=OptimizeLoss/train/update_dense_1/kernel/ApplyGradientDescentApplyGradientDescentdense_1/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_1/kernel*
use_locking( *
T0* 
_output_shapes
:

¤
;OptimizeLoss/train/update_dense_1/bias/ApplyGradientDescentApplyGradientDescentdense_1/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_1/bias*
use_locking( *
T0*
_output_shapes	
:
®
=OptimizeLoss/train/update_dense_2/kernel/ApplyGradientDescentApplyGradientDescentdense_2/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_2/kernel*
use_locking( *
T0* 
_output_shapes
:

¤
;OptimizeLoss/train/update_dense_2/bias/ApplyGradientDescentApplyGradientDescentdense_2/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_2/bias*
use_locking( *
T0*
_output_shapes	
:
®
=OptimizeLoss/train/update_dense_3/kernel/ApplyGradientDescentApplyGradientDescentdense_3/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_3/kernel*
use_locking( *
T0* 
_output_shapes
:

¤
;OptimizeLoss/train/update_dense_3/bias/ApplyGradientDescentApplyGradientDescentdense_3/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_3/bias*
use_locking( *
T0*
_output_shapes	
:
­
=OptimizeLoss/train/update_dense_4/kernel/ApplyGradientDescentApplyGradientDescentdense_4/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_4/kernel*
use_locking( *
T0*
_output_shapes
:	

£
;OptimizeLoss/train/update_dense_4/bias/ApplyGradientDescentApplyGradientDescentdense_4/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_4/bias*
use_locking( *
T0*
_output_shapes
:

	
OptimizeLoss/train/updateNoOp=^OptimizeLoss/train/update_conv2d/kernel/ApplyGradientDescent;^OptimizeLoss/train/update_conv2d/bias/ApplyGradientDescent?^OptimizeLoss/train/update_conv2d_1/kernel/ApplyGradientDescent=^OptimizeLoss/train/update_conv2d_1/bias/ApplyGradientDescent?^OptimizeLoss/train/update_conv2d_2/kernel/ApplyGradientDescent=^OptimizeLoss/train/update_conv2d_2/bias/ApplyGradientDescent?^OptimizeLoss/train/update_conv2d_3/kernel/ApplyGradientDescent=^OptimizeLoss/train/update_conv2d_3/bias/ApplyGradientDescent<^OptimizeLoss/train/update_dense/kernel/ApplyGradientDescent:^OptimizeLoss/train/update_dense/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_1/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_1/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_2/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_2/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_3/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_3/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_4/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_4/bias/ApplyGradientDescent

OptimizeLoss/train/valueConst^OptimizeLoss/train/update*
dtype0	*
_class
loc:@global_step*
value	B	 R*
_output_shapes
: 

OptimizeLoss/train	AssignAddglobal_stepOptimizeLoss/train/value*
_class
loc:@global_step*
use_locking( *
T0	*
_output_shapes
: 
¸
OptimizeLoss/control_dependencyIdentity softmax_cross_entropy_loss/value^OptimizeLoss/train*3
_class)
'%loc:@softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
R
ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
e
ArgMaxArgMaxdense_5/SoftmaxArgMax/dimension*

Tidx0*
T0*
_output_shapes	
:
M
SoftmaxSoftmaxdense_5/Softmax*
T0*
_output_shapes
:	

T
ArgMax_1/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
i
ArgMax_1ArgMaxdense_5/SoftmaxArgMax_1/dimension*

Tidx0*
T0*
_output_shapes	
:
T
ArgMax_2/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
|
ArgMax_2ArgMax"random_shuffle_queue_DequeueMany:2ArgMax_2/dimension*

Tidx0*
T0*
_output_shapes	
:
H
EqualEqualArgMax_2ArgMax_1*
T0	*
_output_shapes	
:
K
ToFloatCastEqual*

DstT0*

SrcT0
*
_output_shapes	
:
S
accuracy/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
r
accuracy/total
VariableV2*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: 
¬
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*
validate_shape(*!
_class
loc:@accuracy/total*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/total/readIdentityaccuracy/total*!
_class
loc:@accuracy/total*
T0*
_output_shapes
: 
U
accuracy/zeros_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
r
accuracy/count
VariableV2*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: 
®
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*
validate_shape(*!
_class
loc:@accuracy/count*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/count/readIdentityaccuracy/count*!
_class
loc:@accuracy/count*
T0*
_output_shapes
: 
P
accuracy/SizeConst*
dtype0*
value
B :*
_output_shapes
: 
Y
accuracy/ToFloat_1Castaccuracy/Size*

DstT0*

SrcT0*
_output_shapes
: 
X
accuracy/ConstConst*
dtype0*
valueB: *
_output_shapes
:
j
accuracy/SumSumToFloataccuracy/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 

accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*!
_class
loc:@accuracy/total*
use_locking( *
T0*
_output_shapes
: 
¦
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1^ToFloat*!
_class
loc:@accuracy/count*
use_locking( *
T0*
_output_shapes
: 
W
accuracy/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
e
accuracy/GreaterGreateraccuracy/count/readaccuracy/Greater/y*
T0*
_output_shapes
: 
f
accuracy/truedivRealDivaccuracy/total/readaccuracy/count/read*
T0*
_output_shapes
: 
U
accuracy/value/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
o
accuracy/valueSelectaccuracy/Greateraccuracy/truedivaccuracy/value/e*
T0*
_output_shapes
: 
Y
accuracy/Greater_1/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
j
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/Greater_1/y*
T0*
_output_shapes
: 
h
accuracy/truediv_1RealDivaccuracy/AssignAddaccuracy/AssignAdd_1*
T0*
_output_shapes
: 
Y
accuracy/update_op/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
{
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/update_op/e*
T0*
_output_shapes
: "" 
global_step

global_step:0"	
trainable_variablesñî
=
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:0
7
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:0
C
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:0
=
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:0
C
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:0
=
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:0
C
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:0
=
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:0
:
dense/kernel:0dense/kernel/Assigndense/kernel/read:0
4
dense/bias:0dense/bias/Assigndense/bias/read:0
@
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:0
:
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:0
@
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:0
:
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:0
@
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:0
:
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:0
@
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:0
:
dense_4/bias:0dense_4/bias/Assigndense_4/bias/read:0"

	variables


7
global_step:0global_step/Assignglobal_step/read:0
=
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:0
7
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:0
C
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:0
=
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:0
C
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:0
=
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:0
C
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:0
=
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:0
:
dense/kernel:0dense/kernel/Assigndense/kernel/read:0
4
dense/bias:0dense/bias/Assigndense/bias/read:0
@
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:0
:
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:0
@
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:0
:
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:0
@
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:0
:
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:0
@
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:0
:
dense_4/bias:0dense_4/bias/Assigndense_4/bias/read:0
d
OptimizeLoss/learning_rate:0!OptimizeLoss/learning_rate/Assign!OptimizeLoss/learning_rate/read:0"T
lossesJ
H
"softmax_cross_entropy_loss/value:0
"softmax_cross_entropy_loss/value:0""
train_op

OptimizeLoss/train"9
local_variables&
$
accuracy/total:0
accuracy/count:0"Ü
queue_runnersÊÇ
Ä
"enqueue_input/random_shuffle_queue.enqueue_input/random_shuffle_queue_EnqueueMany0enqueue_input/random_shuffle_queue_EnqueueMany_10enqueue_input/random_shuffle_queue_EnqueueMany_20enqueue_input/random_shuffle_queue_EnqueueMany_3(enqueue_input/random_shuffle_queue_Close"*enqueue_input/random_shuffle_queue_Close_1*"

savers "}
	summariesp
n
Wenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full:0
OptimizeLoss/loss:0«o2­     ­O®	ú&ëÖºRÖA"

global_step/Initializer/zerosConst*
dtype0	*
_class
loc:@global_step*
value	B	 R *
_output_shapes
: 

global_step
VariableV2*
	container *
_output_shapes
: *
dtype0	*
shape: *
_class
loc:@global_step*
shared_name 
²
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 

"enqueue_input/random_shuffle_queueRandomShuffleQueueV2"/device:CPU:0*
capacityN*
component_types
2	*
_output_shapes
: *
min_after_dequeueÄ*"
shapes
: ::
*
seed2 *

seed *
	container *
shared_name 
m
enqueue_input/PlaceholderPlaceholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_1Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_2Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
ÿ
.enqueue_input/random_shuffle_queue_EnqueueManyQueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
Tcomponents
2	
o
enqueue_input/Placeholder_3Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_4Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_5Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:

0enqueue_input/random_shuffle_queue_EnqueueMany_1QueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholder_3enqueue_input/Placeholder_4enqueue_input/Placeholder_5"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
Tcomponents
2	
o
enqueue_input/Placeholder_6Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_7Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_8Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:

0enqueue_input/random_shuffle_queue_EnqueueMany_2QueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholder_6enqueue_input/Placeholder_7enqueue_input/Placeholder_8"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
Tcomponents
2	
o
enqueue_input/Placeholder_9Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
p
enqueue_input/Placeholder_10Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
p
enqueue_input/Placeholder_11Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:

0enqueue_input/random_shuffle_queue_EnqueueMany_3QueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholder_9enqueue_input/Placeholder_10enqueue_input/Placeholder_11"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
Tcomponents
2	

(enqueue_input/random_shuffle_queue_CloseQueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues( 

*enqueue_input/random_shuffle_queue_Close_1QueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues(

'enqueue_input/random_shuffle_queue_SizeQueueSizeV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
_output_shapes
: 
e
enqueue_input/sub/yConst"/device:CPU:0*
dtype0*
value
B :Ä*
_output_shapes
: 

enqueue_input/subSub'enqueue_input/random_shuffle_queue_Sizeenqueue_input/sub/y"/device:CPU:0*
T0*
_output_shapes
: 
h
enqueue_input/Maximum/xConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
|
enqueue_input/MaximumMaximumenqueue_input/Maximum/xenqueue_input/sub"/device:CPU:0*
T0*
_output_shapes
: 
p
enqueue_input/CastCastenqueue_input/Maximum"/device:CPU:0*

DstT0*

SrcT0*
_output_shapes
: 
g
enqueue_input/mul/yConst"/device:CPU:0*
dtype0*
valueB
 *eÏ9*
_output_shapes
: 
q
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y"/device:CPU:0*
T0*
_output_shapes
: 
ÿ
Zenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full/tagsConst"/device:CPU:0*
dtype0*f
value]B[ BUenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full*
_output_shapes
: 

Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_fullScalarSummaryZenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full/tagsenqueue_input/mul"/device:CPU:0*
T0*
_output_shapes
: 
t
"random_shuffle_queue_DequeueMany/nConst"/device:CPU:0*
dtype0*
value
B :*
_output_shapes
: 
ÿ
 random_shuffle_queue_DequeueManyQueueDequeueManyV2"enqueue_input/random_shuffle_queue"random_shuffle_queue_DequeueMany/n"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
component_types
2	*9
_output_shapes'
%:::	

©
.conv2d/kernel/Initializer/random_uniform/shapeConst*
dtype0* 
_class
loc:@conv2d/kernel*%
valueB"             *
_output_shapes
:

,conv2d/kernel/Initializer/random_uniform/minConst*
dtype0* 
_class
loc:@conv2d/kernel*
valueB
 *n§®½*
_output_shapes
: 

,conv2d/kernel/Initializer/random_uniform/maxConst*
dtype0* 
_class
loc:@conv2d/kernel*
valueB
 *n§®=*
_output_shapes
: 
ð
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*&
_output_shapes
: *
dtype0*
seed2 *

seed *
T0* 
_class
loc:@conv2d/kernel
Ò
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv2d/kernel*
T0*
_output_shapes
: 
ì
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 
Þ
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 
³
conv2d/kernel
VariableV2*
	container *&
_output_shapes
: *
dtype0*
shape: * 
_class
loc:@conv2d/kernel*
shared_name 
Ó
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
validate_shape(* 
_class
loc:@conv2d/kernel*
use_locking(*
T0*&
_output_shapes
: 

conv2d/kernel/readIdentityconv2d/kernel* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 

conv2d/bias/Initializer/zerosConst*
dtype0*
_class
loc:@conv2d/bias*
valueB *    *
_output_shapes
: 

conv2d/bias
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv2d/bias*
shared_name 
¶
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
validate_shape(*
_class
loc:@conv2d/bias*
use_locking(*
T0*
_output_shapes
: 
n
conv2d/bias/readIdentityconv2d/bias*
_class
loc:@conv2d/bias*
T0*
_output_shapes
: 
q
conv2d/convolution/ShapeConst*
dtype0*%
valueB"             *
_output_shapes
:
q
 conv2d/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
Þ
conv2d/convolutionConv2D"random_shuffle_queue_DequeueMany:1conv2d/kernel/read*'
_output_shapes
: *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv2d/BiasAddBiasAddconv2d/convolutionconv2d/bias/read*'
_output_shapes
: *
T0*
data_formatNHWC
U
conv2d/ReluReluconv2d/BiasAdd*
T0*'
_output_shapes
: 
­
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@conv2d_1/kernel*%
valueB"          @   *
_output_shapes
:

.conv2d_1/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_1/kernel*
valueB
 *ÍÌL½*
_output_shapes
: 

.conv2d_1/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_1/kernel*
valueB
 *ÍÌL=*
_output_shapes
: 
ö
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*&
_output_shapes
: @*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_1/kernel
Ú
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_1/kernel*
T0*
_output_shapes
: 
ô
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @
æ
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @
·
conv2d_1/kernel
VariableV2*
	container *&
_output_shapes
: @*
dtype0*
shape: @*"
_class
loc:@conv2d_1/kernel*
shared_name 
Û
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@conv2d_1/kernel*
use_locking(*
T0*&
_output_shapes
: @

conv2d_1/kernel/readIdentityconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @

conv2d_1/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_1/bias*
valueB@*    *
_output_shapes
:@

conv2d_1/bias
VariableV2*
	container *
_output_shapes
:@*
dtype0*
shape:@* 
_class
loc:@conv2d_1/bias*
shared_name 
¾
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2d_1/bias*
use_locking(*
T0*
_output_shapes
:@
t
conv2d_1/bias/readIdentityconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
T0*
_output_shapes
:@
s
conv2d_2/convolution/ShapeConst*
dtype0*%
valueB"          @   *
_output_shapes
:
s
"conv2d_2/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
Ë
conv2d_2/convolutionConv2Dconv2d/Reluconv2d_1/kernel/read*'
_output_shapes
:@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv2d_2/BiasAddBiasAddconv2d_2/convolutionconv2d_1/bias/read*'
_output_shapes
:@*
T0*
data_formatNHWC
Y
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*'
_output_shapes
:@
­
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@conv2d_2/kernel*%
valueB"      @      *
_output_shapes
:

.conv2d_2/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_2/kernel*
valueB
 *óµ½*
_output_shapes
: 

.conv2d_2/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_2/kernel*
valueB
 *óµ=*
_output_shapes
: 
÷
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*'
_output_shapes
:@*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_2/kernel
Ú
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_2/kernel*
T0*
_output_shapes
: 
õ
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_2/kernel*
T0*'
_output_shapes
:@
ç
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_2/kernel*
T0*'
_output_shapes
:@
¹
conv2d_2/kernel
VariableV2*
	container *'
_output_shapes
:@*
dtype0*
shape:@*"
_class
loc:@conv2d_2/kernel*
shared_name 
Ü
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@conv2d_2/kernel*
use_locking(*
T0*'
_output_shapes
:@

conv2d_2/kernel/readIdentityconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
T0*'
_output_shapes
:@

conv2d_2/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_2/bias*
valueB*    *
_output_shapes	
:

conv2d_2/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:* 
_class
loc:@conv2d_2/bias*
shared_name 
¿
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/bias/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2d_2/bias*
use_locking(*
T0*
_output_shapes	
:
u
conv2d_2/bias/readIdentityconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
T0*
_output_shapes	
:
s
conv2d_3/convolution/ShapeConst*
dtype0*%
valueB"      @      *
_output_shapes
:
s
"conv2d_3/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
Î
conv2d_3/convolutionConv2Dconv2d_2/Reluconv2d_2/kernel/read*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv2d_3/BiasAddBiasAddconv2d_3/convolutionconv2d_2/bias/read*(
_output_shapes
:*
T0*
data_formatNHWC
Z
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*(
_output_shapes
:
µ
max_pooling2d/MaxPoolMaxPoolconv2d_3/Relu*(
_output_shapes
:		*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
­
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@conv2d_3/kernel*%
valueB"            *
_output_shapes
:

.conv2d_3/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_3/kernel*
valueB
 *ÍÌÌ¼*
_output_shapes
: 

.conv2d_3/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_3/kernel*
valueB
 *ÍÌÌ<*
_output_shapes
: 
ø
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*(
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_3/kernel
Ú
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_3/kernel*
T0*
_output_shapes
: 
ö
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_3/kernel*
T0*(
_output_shapes
:
è
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_3/kernel*
T0*(
_output_shapes
:
»
conv2d_3/kernel
VariableV2*
	container *(
_output_shapes
:*
dtype0*
shape:*"
_class
loc:@conv2d_3/kernel*
shared_name 
Ý
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@conv2d_3/kernel*
use_locking(*
T0*(
_output_shapes
:

conv2d_3/kernel/readIdentityconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
T0*(
_output_shapes
:

conv2d_3/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_3/bias*
valueB*    *
_output_shapes	
:

conv2d_3/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:* 
_class
loc:@conv2d_3/bias*
shared_name 
¿
conv2d_3/bias/AssignAssignconv2d_3/biasconv2d_3/bias/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2d_3/bias*
use_locking(*
T0*
_output_shapes	
:
u
conv2d_3/bias/readIdentityconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
T0*
_output_shapes	
:
s
conv2d_4/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
s
"conv2d_4/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
Ö
conv2d_4/convolutionConv2Dmax_pooling2d/MaxPoolconv2d_3/kernel/read*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv2d_4/BiasAddBiasAddconv2d_4/convolutionconv2d_3/bias/read*(
_output_shapes
:*
T0*
data_formatNHWC
Z
conv2d_4/ReluReluconv2d_4/BiasAdd*
T0*(
_output_shapes
:
·
max_pooling2d_2/MaxPoolMaxPoolconv2d_4/Relu*(
_output_shapes
:*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
f
flatten/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
e
flatten/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
g
flatten/strided_slice/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
g
flatten/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
¥
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
W
flatten/ConstConst*
dtype0*
valueB: *
_output_shapes
:
x
flatten/ProdProdflatten/strided_sliceflatten/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
Z
flatten/stack/0Const*
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
: 
n
flatten/stackPackflatten/stack/0flatten/Prod*
N*
T0*
_output_shapes
:*

axis 
{
flatten/ReshapeReshapemax_pooling2d_2/MaxPoolflatten/stack* 
_output_shapes
:
*
T0*
Tshape0

-dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_class
loc:@dense/kernel*
valueB"      *
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *×³]½*
_output_shapes
: 

+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *×³]=*
_output_shapes
: 
ç
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*
_class
loc:@dense/kernel
Î
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0*
_output_shapes
: 
â
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:

Ô
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:

¥
dense/kernel
VariableV2*
	container * 
_output_shapes
:
*
dtype0*
shape:
*
_class
loc:@dense/kernel*
shared_name 
É
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0* 
_output_shapes
:

w
dense/kernel/readIdentitydense/kernel*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:


dense/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense/bias*
valueB*    *
_output_shapes	
:


dense/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:*
_class
loc:@dense/bias*
shared_name 
³
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes	
:
l
dense/bias/readIdentity
dense/bias*
_class
loc:@dense/bias*
T0*
_output_shapes	
:

dense/MatMulMatMulflatten/Reshapedense/kernel/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:

y
dense/BiasAddBiasAdddense/MatMuldense/bias/read* 
_output_shapes
:
*
T0*
data_formatNHWC
L

dense/ReluReludense/BiasAdd*
T0* 
_output_shapes
:

£
/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB"      *
_output_shapes
:

-dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *×³]½*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *×³]=*
_output_shapes
: 
í
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_1/kernel
Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
: 
ê
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:

Ü
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:

©
dense_1/kernel
VariableV2*
	container * 
_output_shapes
:
*
dtype0*
shape:
*!
_class
loc:@dense_1/kernel*
shared_name 
Ñ
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:

}
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:


dense_1/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_1/bias*
valueB*    *
_output_shapes	
:

dense_1/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:*
_class
loc:@dense_1/bias*
shared_name 
»
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes	
:
r
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
T0*
_output_shapes	
:

dense_2/MatMulMatMul
dense/Reludense_1/kernel/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:


dense_2/BiasAddBiasAdddense_2/MatMuldense_1/bias/read* 
_output_shapes
:
*
T0*
data_formatNHWC
P
dense_2/ReluReludense_2/BiasAdd*
T0* 
_output_shapes
:

£
/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB"      *
_output_shapes
:

-dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB
 *×³]½*
_output_shapes
: 

-dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB
 *×³]=*
_output_shapes
: 
í
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_2/kernel
Ö
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes
: 
ê
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:

Ü
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:

©
dense_2/kernel
VariableV2*
	container * 
_output_shapes
:
*
dtype0*
shape:
*!
_class
loc:@dense_2/kernel*
shared_name 
Ñ
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_2/kernel*
use_locking(*
T0* 
_output_shapes
:

}
dense_2/kernel/readIdentitydense_2/kernel*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:


dense_2/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_2/bias*
valueB*    *
_output_shapes	
:

dense_2/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:*
_class
loc:@dense_2/bias*
shared_name 
»
dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_2/bias*
use_locking(*
T0*
_output_shapes	
:
r
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
T0*
_output_shapes	
:

dense_3/MatMulMatMuldense_2/Reludense_2/kernel/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:


dense_3/BiasAddBiasAdddense_3/MatMuldense_2/bias/read* 
_output_shapes
:
*
T0*
data_formatNHWC
P
dense_3/ReluReludense_3/BiasAdd*
T0* 
_output_shapes
:

£
/dense_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB"      *
_output_shapes
:

-dense_3/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *×³]½*
_output_shapes
: 

-dense_3/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *×³]=*
_output_shapes
: 
í
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_3/kernel
Ö
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
T0*
_output_shapes
: 
ê
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_3/kernel*
T0* 
_output_shapes
:

Ü
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
T0* 
_output_shapes
:

©
dense_3/kernel
VariableV2*
	container * 
_output_shapes
:
*
dtype0*
shape:
*!
_class
loc:@dense_3/kernel*
shared_name 
Ñ
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_3/kernel*
use_locking(*
T0* 
_output_shapes
:

}
dense_3/kernel/readIdentitydense_3/kernel*!
_class
loc:@dense_3/kernel*
T0* 
_output_shapes
:


dense_3/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_3/bias*
valueB*    *
_output_shapes	
:

dense_3/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:*
_class
loc:@dense_3/bias*
shared_name 
»
dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_3/bias*
use_locking(*
T0*
_output_shapes	
:
r
dense_3/bias/readIdentitydense_3/bias*
_class
loc:@dense_3/bias*
T0*
_output_shapes	
:

dense_4/MatMulMatMuldense_3/Reludense_3/kernel/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:


dense_4/BiasAddBiasAdddense_4/MatMuldense_3/bias/read* 
_output_shapes
:
*
T0*
data_formatNHWC
P
dense_4/ReluReludense_4/BiasAdd*
T0* 
_output_shapes
:

£
/dense_4/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB"   
   *
_output_shapes
:

-dense_4/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB
 *è½*
_output_shapes
: 

-dense_4/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB
 *è=*
_output_shapes
: 
ì
7dense_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_4/kernel/Initializer/random_uniform/shape*
_output_shapes
:	
*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_4/kernel
Ö
-dense_4/kernel/Initializer/random_uniform/subSub-dense_4/kernel/Initializer/random_uniform/max-dense_4/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
: 
é
-dense_4/kernel/Initializer/random_uniform/mulMul7dense_4/kernel/Initializer/random_uniform/RandomUniform-dense_4/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
:	

Û
)dense_4/kernel/Initializer/random_uniformAdd-dense_4/kernel/Initializer/random_uniform/mul-dense_4/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
:	

§
dense_4/kernel
VariableV2*
	container *
_output_shapes
:	
*
dtype0*
shape:	
*!
_class
loc:@dense_4/kernel*
shared_name 
Ð
dense_4/kernel/AssignAssigndense_4/kernel)dense_4/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_4/kernel*
use_locking(*
T0*
_output_shapes
:	

|
dense_4/kernel/readIdentitydense_4/kernel*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
:	


dense_4/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_4/bias*
valueB
*    *
_output_shapes
:


dense_4/bias
VariableV2*
	container *
_output_shapes
:
*
dtype0*
shape:
*
_class
loc:@dense_4/bias*
shared_name 
º
dense_4/bias/AssignAssigndense_4/biasdense_4/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_4/bias*
use_locking(*
T0*
_output_shapes
:

q
dense_4/bias/readIdentitydense_4/bias*
_class
loc:@dense_4/bias*
T0*
_output_shapes
:


dense_5/MatMulMatMuldense_4/Reludense_4/kernel/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes
:	

~
dense_5/BiasAddBiasAdddense_5/MatMuldense_4/bias/read*
_output_shapes
:	
*
T0*
data_formatNHWC
U
dense_5/SoftmaxSoftmaxdense_5/BiasAdd*
T0*
_output_shapes
:	


softmax_cross_entropy_loss/CastCast"random_shuffle_queue_DequeueMany:2*

DstT0*

SrcT0*
_output_shapes
:	

a
softmax_cross_entropy_loss/RankConst*
dtype0*
value	B :*
_output_shapes
: 
q
 softmax_cross_entropy_loss/ShapeConst*
dtype0*
valueB"   
   *
_output_shapes
:
c
!softmax_cross_entropy_loss/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
s
"softmax_cross_entropy_loss/Shape_1Const*
dtype0*
valueB"   
   *
_output_shapes
:
b
 softmax_cross_entropy_loss/Sub/yConst*
dtype0*
value	B :*
_output_shapes
: 

softmax_cross_entropy_loss/SubSub!softmax_cross_entropy_loss/Rank_1 softmax_cross_entropy_loss/Sub/y*
T0*
_output_shapes
: 

&softmax_cross_entropy_loss/Slice/beginPacksoftmax_cross_entropy_loss/Sub*
N*
T0*
_output_shapes
:*

axis 
o
%softmax_cross_entropy_loss/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Î
 softmax_cross_entropy_loss/SliceSlice"softmax_cross_entropy_loss/Shape_1&softmax_cross_entropy_loss/Slice/begin%softmax_cross_entropy_loss/Slice/size*
Index0*
T0*
_output_shapes
:
}
*softmax_cross_entropy_loss/concat/values_0Const*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
:
h
&softmax_cross_entropy_loss/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ý
!softmax_cross_entropy_loss/concatConcatV2*softmax_cross_entropy_loss/concat/values_0 softmax_cross_entropy_loss/Slice&softmax_cross_entropy_loss/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0

"softmax_cross_entropy_loss/ReshapeReshapedense_5/Softmax!softmax_cross_entropy_loss/concat*
_output_shapes
:	
*
T0*
Tshape0
c
!softmax_cross_entropy_loss/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
s
"softmax_cross_entropy_loss/Shape_2Const*
dtype0*
valueB"   
   *
_output_shapes
:
d
"softmax_cross_entropy_loss/Sub_1/yConst*
dtype0*
value	B :*
_output_shapes
: 

 softmax_cross_entropy_loss/Sub_1Sub!softmax_cross_entropy_loss/Rank_2"softmax_cross_entropy_loss/Sub_1/y*
T0*
_output_shapes
: 

(softmax_cross_entropy_loss/Slice_1/beginPack softmax_cross_entropy_loss/Sub_1*
N*
T0*
_output_shapes
:*

axis 
q
'softmax_cross_entropy_loss/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Ô
"softmax_cross_entropy_loss/Slice_1Slice"softmax_cross_entropy_loss/Shape_2(softmax_cross_entropy_loss/Slice_1/begin'softmax_cross_entropy_loss/Slice_1/size*
Index0*
T0*
_output_shapes
:

,softmax_cross_entropy_loss/concat_1/values_0Const*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
:
j
(softmax_cross_entropy_loss/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
å
#softmax_cross_entropy_loss/concat_1ConcatV2,softmax_cross_entropy_loss/concat_1/values_0"softmax_cross_entropy_loss/Slice_1(softmax_cross_entropy_loss/concat_1/axis*
N*

Tidx0*
_output_shapes
:*
T0
­
$softmax_cross_entropy_loss/Reshape_1Reshapesoftmax_cross_entropy_loss/Cast#softmax_cross_entropy_loss/concat_1*
_output_shapes
:	
*
T0*
Tshape0
¿
#softmax_cross_entropy_loss/xentropySoftmaxCrossEntropyWithLogits"softmax_cross_entropy_loss/Reshape$softmax_cross_entropy_loss/Reshape_1*
T0*&
_output_shapes
::	

d
"softmax_cross_entropy_loss/Sub_2/yConst*
dtype0*
value	B :*
_output_shapes
: 

 softmax_cross_entropy_loss/Sub_2Subsoftmax_cross_entropy_loss/Rank"softmax_cross_entropy_loss/Sub_2/y*
T0*
_output_shapes
: 
r
(softmax_cross_entropy_loss/Slice_2/beginConst*
dtype0*
valueB: *
_output_shapes
:

'softmax_cross_entropy_loss/Slice_2/sizePack softmax_cross_entropy_loss/Sub_2*
N*
T0*
_output_shapes
:*

axis 
Û
"softmax_cross_entropy_loss/Slice_2Slice softmax_cross_entropy_loss/Shape(softmax_cross_entropy_loss/Slice_2/begin'softmax_cross_entropy_loss/Slice_2/size*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¬
$softmax_cross_entropy_loss/Reshape_2Reshape#softmax_cross_entropy_loss/xentropy"softmax_cross_entropy_loss/Slice_2*
_output_shapes	
:*
T0*
Tshape0
|
7softmax_cross_entropy_loss/assert_broadcastable/weightsConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

=softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
dtype0*
valueB *
_output_shapes
: 
~
<softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
dtype0*
value	B : *
_output_shapes
: 

<softmax_cross_entropy_loss/assert_broadcastable/values/shapeConst*
dtype0*
valueB:*
_output_shapes
:
}
;softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
dtype0*
value	B :*
_output_shapes
: 
S
Ksoftmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
¹
&softmax_cross_entropy_loss/ToFloat_1/xConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  ?*
_output_shapes
: 

softmax_cross_entropy_loss/MulMul$softmax_cross_entropy_loss/Reshape_2&softmax_cross_entropy_loss/ToFloat_1/x*
T0*
_output_shapes	
:
¸
 softmax_cross_entropy_loss/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB: *
_output_shapes
:
¥
softmax_cross_entropy_loss/SumSumsoftmax_cross_entropy_loss/Mul softmax_cross_entropy_loss/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
Á
.softmax_cross_entropy_loss/num_present/Equal/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
®
,softmax_cross_entropy_loss/num_present/EqualEqual&softmax_cross_entropy_loss/ToFloat_1/x.softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
Ä
1softmax_cross_entropy_loss/num_present/zeros_likeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
Ç
6softmax_cross_entropy_loss/num_present/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
É
6softmax_cross_entropy_loss/num_present/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  ?*
_output_shapes
: 
É
0softmax_cross_entropy_loss/num_present/ones_likeFill6softmax_cross_entropy_loss/num_present/ones_like/Shape6softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
ë
-softmax_cross_entropy_loss/num_present/SelectSelect,softmax_cross_entropy_loss/num_present/Equal1softmax_cross_entropy_loss/num_present/zeros_like0softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
ì
[softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
ê
Zsoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
value	B : *
_output_shapes
: 
ó
Zsoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB:*
_output_shapes
:
é
Ysoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
value	B :*
_output_shapes
: 
¿
isoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
Í
Hsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successj^softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB:*
_output_shapes
:
Ç
Hsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successj^softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  ?*
_output_shapes
: 

Bsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillHsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeHsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*
_output_shapes	
:
Ø
8softmax_cross_entropy_loss/num_present/broadcast_weightsMul-softmax_cross_entropy_loss/num_present/SelectBsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*
_output_shapes	
:
Ä
,softmax_cross_entropy_loss/num_present/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB: *
_output_shapes
:
Ó
&softmax_cross_entropy_loss/num_presentSum8softmax_cross_entropy_loss/num_present/broadcast_weights,softmax_cross_entropy_loss/num_present/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
³
"softmax_cross_entropy_loss/Const_1ConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
©
 softmax_cross_entropy_loss/Sum_1Sumsoftmax_cross_entropy_loss/Sum"softmax_cross_entropy_loss/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
·
$softmax_cross_entropy_loss/Greater/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 

"softmax_cross_entropy_loss/GreaterGreater&softmax_cross_entropy_loss/num_present$softmax_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
µ
"softmax_cross_entropy_loss/Equal/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 

 softmax_cross_entropy_loss/EqualEqual&softmax_cross_entropy_loss/num_present"softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
»
*softmax_cross_entropy_loss/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
½
*softmax_cross_entropy_loss/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  ?*
_output_shapes
: 
¥
$softmax_cross_entropy_loss/ones_likeFill*softmax_cross_entropy_loss/ones_like/Shape*softmax_cross_entropy_loss/ones_like/Const*
T0*
_output_shapes
: 
¼
!softmax_cross_entropy_loss/SelectSelect softmax_cross_entropy_loss/Equal$softmax_cross_entropy_loss/ones_like&softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 

softmax_cross_entropy_loss/divRealDiv softmax_cross_entropy_loss/Sum_1!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
¸
%softmax_cross_entropy_loss/zeros_likeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
¶
 softmax_cross_entropy_loss/valueSelect"softmax_cross_entropy_loss/Greatersoftmax_cross_entropy_loss/div%softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
 
,OptimizeLoss/learning_rate/Initializer/ConstConst*
dtype0*-
_class#
!loc:@OptimizeLoss/learning_rate*
valueB
 *
×#<*
_output_shapes
: 
­
OptimizeLoss/learning_rate
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *-
_class#
!loc:@OptimizeLoss/learning_rate*
shared_name 
î
!OptimizeLoss/learning_rate/AssignAssignOptimizeLoss/learning_rate,OptimizeLoss/learning_rate/Initializer/Const*
validate_shape(*-
_class#
!loc:@OptimizeLoss/learning_rate*
use_locking(*
T0*
_output_shapes
: 

OptimizeLoss/learning_rate/readIdentityOptimizeLoss/learning_rate*-
_class#
!loc:@OptimizeLoss/learning_rate*
T0*
_output_shapes
: 
_
OptimizeLoss/gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
a
OptimizeLoss/gradients/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

OptimizeLoss/gradients/FillFillOptimizeLoss/gradients/ShapeOptimizeLoss/gradients/Const*
T0*
_output_shapes
: 

GOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_likeConst*
dtype0*
valueB
 *    *
_output_shapes
: 
ø
COptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectSelect"softmax_cross_entropy_loss/GreaterOptimizeLoss/gradients/FillGOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
ú
EOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1Select"softmax_cross_entropy_loss/GreaterGOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_likeOptimizeLoss/gradients/Fill*
T0*
_output_shapes
: 
ã
MOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOpD^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectF^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1
ï
UOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentityCOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectN^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_deps*V
_classL
JHloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select*
T0*
_output_shapes
: 
õ
WOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1N^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1*
T0*
_output_shapes
: 

@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ShapeConst*
dtype0*
valueB *
_output_shapes
: 

BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
¬
POptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgs@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ShapeBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
è
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDivRealDivUOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependency!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 

>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/SumSumBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDivPOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
þ
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeReshape>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape*
_output_shapes
: *
T0*
Tshape0

>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/NegNeg softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
Ó
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_1RealDiv>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Neg!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Ù
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_2RealDivDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_1!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 

>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/mulMulUOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependencyDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 

@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum_1Sum>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/mulROptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum_1BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
ß
KOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeE^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1
é
SOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeL^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_deps*U
_classK
IGloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape*
T0*
_output_shapes
: 
ï
UOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1IdentityDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1L^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1*
T0*
_output_shapes
: 

JOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
dtype0*
valueB *
_output_shapes
: 

DOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapeSOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependencyJOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
_output_shapes
: *
T0*
Tshape0

KOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Tile/multiplesConst*
dtype0*
valueB *
_output_shapes
: 

AOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/TileTileDOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/ReshapeKOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes
: 

HOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:

BOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeAOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/TileHOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0

IOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile/multiplesConst*
dtype0*
valueB:*
_output_shapes
:

?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/TileTileBOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/ReshapeIOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes	
:

@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ShapeConst*
dtype0*
valueB:*
_output_shapes
:

BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
¬
POptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ShapeBOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Ô
>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mulMul?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile&softmax_cross_entropy_loss/ToFloat_1/x*
T0*
_output_shapes	
:

>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/SumSum>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mulPOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeReshape>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape*
_output_shapes	
:*
T0*
Tshape0
Ô
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mul_1Mul$softmax_cross_entropy_loss/Reshape_2?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile*
T0*
_output_shapes	
:

@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum_1Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mul_1ROptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

DOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum_1BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
ß
KOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeE^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1
î
SOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeL^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*U
_classK
IGloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape*
T0*
_output_shapes	
:
ï
UOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1IdentityDOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1L^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1*
T0*
_output_shapes
: 

FOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/ShapeConst*
dtype0*
valueB:*
_output_shapes
:
¤
HOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/ReshapeReshapeSOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyFOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/Shape*
_output_shapes	
:*
T0*
Tshape0
x
!OptimizeLoss/gradients/zeros_likeConst*
dtype0*
valueB	
*    *
_output_shapes
:	


NOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims/dimConst*
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
: 
¨
JOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims
ExpandDimsHOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/ReshapeNOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:	
ç
COptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mulMulJOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims%softmax_cross_entropy_loss/xentropy:1*
T0*
_output_shapes
:	


DOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/ShapeConst*
dtype0*
valueB"   
   *
_output_shapes
:

FOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/ReshapeReshapeCOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mulDOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/Shape*
_output_shapes
:	
*
T0*
Tshape0
¹
/OptimizeLoss/gradients/dense_5/Softmax_grad/mulMulFOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/Reshapedense_5/Softmax*
T0*
_output_shapes
:	


AOptimizeLoss/gradients/dense_5/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
í
/OptimizeLoss/gradients/dense_5/Softmax_grad/SumSum/OptimizeLoss/gradients/dense_5/Softmax_grad/mulAOptimizeLoss/gradients/dense_5/Softmax_grad/Sum/reduction_indices*
_output_shapes	
:*
T0*
	keep_dims( *

Tidx0

9OptimizeLoss/gradients/dense_5/Softmax_grad/Reshape/shapeConst*
dtype0*
valueB"ÿÿÿÿ   *
_output_shapes
:
â
3OptimizeLoss/gradients/dense_5/Softmax_grad/ReshapeReshape/OptimizeLoss/gradients/dense_5/Softmax_grad/Sum9OptimizeLoss/gradients/dense_5/Softmax_grad/Reshape/shape*
_output_shapes
:	*
T0*
Tshape0
Ý
/OptimizeLoss/gradients/dense_5/Softmax_grad/subSubFOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/Reshape3OptimizeLoss/gradients/dense_5/Softmax_grad/Reshape*
T0*
_output_shapes
:	

¤
1OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1Mul/OptimizeLoss/gradients/dense_5/Softmax_grad/subdense_5/Softmax*
T0*
_output_shapes
:	

µ
7OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1*
_output_shapes
:
*
T0*
data_formatNHWC
²
<OptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_5/Softmax_grad/mul_18^OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGrad
²
DOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1=^OptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1*
T0*
_output_shapes
:	

»
FOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

ç
1OptimizeLoss/gradients/dense_5/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependencydense_4/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

á
3OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1MatMuldense_4/ReluDOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	

­
;OptimizeLoss/gradients/dense_5/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1
±
COptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_5/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul*
T0* 
_output_shapes
:

¶
EOptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_5/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	

»
1OptimizeLoss/gradients/dense_4/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependencydense_4/Relu*
T0* 
_output_shapes
:

¶
7OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
²
<OptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad8^OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGrad
³
DOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad=^OptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad*
T0* 
_output_shapes
:

¼
FOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
ç
1OptimizeLoss/gradients/dense_4/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependencydense_3/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

â
3OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1MatMuldense_3/ReluDOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:

­
;OptimizeLoss/gradients/dense_4/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1
±
COptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_4/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul*
T0* 
_output_shapes
:

·
EOptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_4/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

»
1OptimizeLoss/gradients/dense_3/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependencydense_3/Relu*
T0* 
_output_shapes
:

¶
7OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
²
<OptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad8^OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGrad
³
DOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad=^OptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad*
T0* 
_output_shapes
:

¼
FOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
ç
1OptimizeLoss/gradients/dense_3/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependencydense_2/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

â
3OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1MatMuldense_2/ReluDOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:

­
;OptimizeLoss/gradients/dense_3/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1
±
COptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_3/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul*
T0* 
_output_shapes
:

·
EOptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_3/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

»
1OptimizeLoss/gradients/dense_2/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependencydense_2/Relu*
T0* 
_output_shapes
:

¶
7OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
²
<OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad8^OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad
³
DOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad=^OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad*
T0* 
_output_shapes
:

¼
FOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
ç
1OptimizeLoss/gradients/dense_2/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

à
3OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1MatMul
dense/ReluDOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:

­
;OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1
±
COptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul*
T0* 
_output_shapes
:

·
EOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

·
/OptimizeLoss/gradients/dense/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency
dense/Relu*
T0* 
_output_shapes
:

²
5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad/OptimizeLoss/gradients/dense/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
¬
:OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_depsNoOp0^OptimizeLoss/gradients/dense/Relu_grad/ReluGrad6^OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad
«
BOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity/OptimizeLoss/gradients/dense/Relu_grad/ReluGrad;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*B
_class8
64loc:@OptimizeLoss/gradients/dense/Relu_grad/ReluGrad*
T0* 
_output_shapes
:

´
DOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*H
_class>
<:loc:@OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
á
/OptimizeLoss/gradients/dense/MatMul_grad/MatMulMatMulBOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

á
1OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1MatMulflatten/ReshapeBOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:

§
9OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_depsNoOp0^OptimizeLoss/gradients/dense/MatMul_grad/MatMul2^OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1
©
AOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependencyIdentity/OptimizeLoss/gradients/dense/MatMul_grad/MatMul:^OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_deps*B
_class8
64loc:@OptimizeLoss/gradients/dense/MatMul_grad/MatMul*
T0* 
_output_shapes
:

¯
COptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency_1Identity1OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1:^OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:


1OptimizeLoss/gradients/flatten/Reshape_grad/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
õ
3OptimizeLoss/gradients/flatten/Reshape_grad/ReshapeReshapeAOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency1OptimizeLoss/gradients/flatten/Reshape_grad/Shape*(
_output_shapes
:*
T0*
Tshape0
±
?OptimizeLoss/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_4/Relumax_pooling2d_2/MaxPool3OptimizeLoss/gradients/flatten/Reshape_grad/Reshape*(
_output_shapes
:*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
Á
2OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGradReluGrad?OptimizeLoss/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradconv2d_4/Relu*
T0*(
_output_shapes
:
¸
8OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
µ
=OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/group_depsNoOp3^OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad9^OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad
¿
EOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad*
T0*(
_output_shapes
:
À
GOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:

6OptimizeLoss/gradients/conv2d_4/convolution_grad/ShapeConst*
dtype0*%
valueB"   	   	      *
_output_shapes
:
û
DOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6OptimizeLoss/gradients/conv2d_4/convolution_grad/Shapeconv2d_3/kernel/readEOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*(
_output_shapes
:		*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

8OptimizeLoss/gradients/conv2d_4/convolution_grad/Shape_1Const*
dtype0*%
valueB"            *
_output_shapes
:

EOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool8OptimizeLoss/gradients/conv2d_4/convolution_grad/Shape_1EOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ø
AOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputF^OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilter
ë
IOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputB^OptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInput*
T0*(
_output_shapes
:		
ï
KOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilterB^OptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
Ã
=OptimizeLoss/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_3/Relumax_pooling2d/MaxPoolIOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependency*(
_output_shapes
:*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
¿
2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGradReluGrad=OptimizeLoss/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradconv2d_3/Relu*
T0*(
_output_shapes
:
¸
8OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
µ
=OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_depsNoOp3^OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad9^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad
¿
EOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad*
T0*(
_output_shapes
:
À
GOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:

6OptimizeLoss/gradients/conv2d_3/convolution_grad/ShapeConst*
dtype0*%
valueB"         @   *
_output_shapes
:
ú
DOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6OptimizeLoss/gradients/conv2d_3/convolution_grad/Shapeconv2d_2/kernel/readEOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
:@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

8OptimizeLoss/gradients/conv2d_3/convolution_grad/Shape_1Const*
dtype0*%
valueB"      @      *
_output_shapes
:
÷
EOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_2/Relu8OptimizeLoss/gradients/conv2d_3/convolution_grad/Shape_1EOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
:@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ø
AOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputF^OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilter
ê
IOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputB^OptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInput*
T0*'
_output_shapes
:@
î
KOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilterB^OptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
Ê
2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGradReluGradIOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependencyconv2d_2/Relu*
T0*'
_output_shapes
:@
·
8OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad*
_output_shapes
:@*
T0*
data_formatNHWC
µ
=OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_depsNoOp3^OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad9^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad
¾
EOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*'
_output_shapes
:@
¿
GOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@

6OptimizeLoss/gradients/conv2d_2/convolution_grad/ShapeConst*
dtype0*%
valueB"             *
_output_shapes
:
ú
DOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6OptimizeLoss/gradients/conv2d_2/convolution_grad/Shapeconv2d_1/kernel/readEOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
: *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

8OptimizeLoss/gradients/conv2d_2/convolution_grad/Shape_1Const*
dtype0*%
valueB"          @   *
_output_shapes
:
ô
EOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d/Relu8OptimizeLoss/gradients/conv2d_2/convolution_grad/Shape_1EOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: @*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ø
AOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputF^OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter
ê
IOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputB^OptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInput*
T0*'
_output_shapes
: 
í
KOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilterB^OptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: @
Æ
0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGradReluGradIOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependencyconv2d/Relu*
T0*'
_output_shapes
: 
³
6OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad*
_output_shapes
: *
T0*
data_formatNHWC
¯
;OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_depsNoOp1^OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad7^OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad
¶
COptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad<^OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_deps*C
_class9
75loc:@OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad*
T0*'
_output_shapes
: 
·
EOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity6OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad<^OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_deps*I
_class?
=;loc:@OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 

4OptimizeLoss/gradients/conv2d/convolution_grad/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
ò
BOptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInputConv2DBackpropInput4OptimizeLoss/gradients/conv2d/convolution_grad/Shapeconv2d/kernel/readCOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

6OptimizeLoss/gradients/conv2d/convolution_grad/Shape_1Const*
dtype0*%
valueB"             *
_output_shapes
:

COptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilter"random_shuffle_queue_DequeueMany:16OptimizeLoss/gradients/conv2d/convolution_grad/Shape_1COptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ò
?OptimizeLoss/gradients/conv2d/convolution_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInputD^OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilter
â
GOptimizeLoss/gradients/conv2d/convolution_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInput@^OptimizeLoss/gradients/conv2d/convolution_grad/tuple/group_deps*U
_classK
IGloc:@OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInput*
T0*'
_output_shapes
:
å
IOptimizeLoss/gradients/conv2d/convolution_grad/tuple/control_dependency_1IdentityCOptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilter@^OptimizeLoss/gradients/conv2d/convolution_grad/tuple/group_deps*V
_classL
JHloc:@OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: 
h
OptimizeLoss/loss/tagsConst*
dtype0*"
valueB BOptimizeLoss/loss*
_output_shapes
: 
}
OptimizeLoss/lossScalarSummaryOptimizeLoss/loss/tags softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
µ
<OptimizeLoss/train/update_conv2d/kernel/ApplyGradientDescentApplyGradientDescentconv2d/kernelOptimizeLoss/learning_rate/readIOptimizeLoss/gradients/conv2d/convolution_grad/tuple/control_dependency_1* 
_class
loc:@conv2d/kernel*
use_locking( *
T0*&
_output_shapes
: 

:OptimizeLoss/train/update_conv2d/bias/ApplyGradientDescentApplyGradientDescentconv2d/biasOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@conv2d/bias*
use_locking( *
T0*
_output_shapes
: 
½
>OptimizeLoss/train/update_conv2d_1/kernel/ApplyGradientDescentApplyGradientDescentconv2d_1/kernelOptimizeLoss/learning_rate/readKOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_1/kernel*
use_locking( *
T0*&
_output_shapes
: @
§
<OptimizeLoss/train/update_conv2d_1/bias/ApplyGradientDescentApplyGradientDescentconv2d_1/biasOptimizeLoss/learning_rate/readGOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_1/bias*
use_locking( *
T0*
_output_shapes
:@
¾
>OptimizeLoss/train/update_conv2d_2/kernel/ApplyGradientDescentApplyGradientDescentconv2d_2/kernelOptimizeLoss/learning_rate/readKOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_2/kernel*
use_locking( *
T0*'
_output_shapes
:@
¨
<OptimizeLoss/train/update_conv2d_2/bias/ApplyGradientDescentApplyGradientDescentconv2d_2/biasOptimizeLoss/learning_rate/readGOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_2/bias*
use_locking( *
T0*
_output_shapes	
:
¿
>OptimizeLoss/train/update_conv2d_3/kernel/ApplyGradientDescentApplyGradientDescentconv2d_3/kernelOptimizeLoss/learning_rate/readKOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_3/kernel*
use_locking( *
T0*(
_output_shapes
:
¨
<OptimizeLoss/train/update_conv2d_3/bias/ApplyGradientDescentApplyGradientDescentconv2d_3/biasOptimizeLoss/learning_rate/readGOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_3/bias*
use_locking( *
T0*
_output_shapes	
:
¦
;OptimizeLoss/train/update_dense/kernel/ApplyGradientDescentApplyGradientDescentdense/kernelOptimizeLoss/learning_rate/readCOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency_1*
_class
loc:@dense/kernel*
use_locking( *
T0* 
_output_shapes
:


9OptimizeLoss/train/update_dense/bias/ApplyGradientDescentApplyGradientDescent
dense/biasOptimizeLoss/learning_rate/readDOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense/bias*
use_locking( *
T0*
_output_shapes	
:
®
=OptimizeLoss/train/update_dense_1/kernel/ApplyGradientDescentApplyGradientDescentdense_1/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_1/kernel*
use_locking( *
T0* 
_output_shapes
:

¤
;OptimizeLoss/train/update_dense_1/bias/ApplyGradientDescentApplyGradientDescentdense_1/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_1/bias*
use_locking( *
T0*
_output_shapes	
:
®
=OptimizeLoss/train/update_dense_2/kernel/ApplyGradientDescentApplyGradientDescentdense_2/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_2/kernel*
use_locking( *
T0* 
_output_shapes
:

¤
;OptimizeLoss/train/update_dense_2/bias/ApplyGradientDescentApplyGradientDescentdense_2/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_2/bias*
use_locking( *
T0*
_output_shapes	
:
®
=OptimizeLoss/train/update_dense_3/kernel/ApplyGradientDescentApplyGradientDescentdense_3/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_3/kernel*
use_locking( *
T0* 
_output_shapes
:

¤
;OptimizeLoss/train/update_dense_3/bias/ApplyGradientDescentApplyGradientDescentdense_3/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_3/bias*
use_locking( *
T0*
_output_shapes	
:
­
=OptimizeLoss/train/update_dense_4/kernel/ApplyGradientDescentApplyGradientDescentdense_4/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_4/kernel*
use_locking( *
T0*
_output_shapes
:	

£
;OptimizeLoss/train/update_dense_4/bias/ApplyGradientDescentApplyGradientDescentdense_4/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_4/bias*
use_locking( *
T0*
_output_shapes
:

	
OptimizeLoss/train/updateNoOp=^OptimizeLoss/train/update_conv2d/kernel/ApplyGradientDescent;^OptimizeLoss/train/update_conv2d/bias/ApplyGradientDescent?^OptimizeLoss/train/update_conv2d_1/kernel/ApplyGradientDescent=^OptimizeLoss/train/update_conv2d_1/bias/ApplyGradientDescent?^OptimizeLoss/train/update_conv2d_2/kernel/ApplyGradientDescent=^OptimizeLoss/train/update_conv2d_2/bias/ApplyGradientDescent?^OptimizeLoss/train/update_conv2d_3/kernel/ApplyGradientDescent=^OptimizeLoss/train/update_conv2d_3/bias/ApplyGradientDescent<^OptimizeLoss/train/update_dense/kernel/ApplyGradientDescent:^OptimizeLoss/train/update_dense/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_1/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_1/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_2/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_2/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_3/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_3/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_4/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_4/bias/ApplyGradientDescent

OptimizeLoss/train/valueConst^OptimizeLoss/train/update*
dtype0	*
_class
loc:@global_step*
value	B	 R*
_output_shapes
: 

OptimizeLoss/train	AssignAddglobal_stepOptimizeLoss/train/value*
_class
loc:@global_step*
use_locking( *
T0	*
_output_shapes
: 
¸
OptimizeLoss/control_dependencyIdentity softmax_cross_entropy_loss/value^OptimizeLoss/train*3
_class)
'%loc:@softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
R
ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
e
ArgMaxArgMaxdense_5/SoftmaxArgMax/dimension*
_output_shapes	
:*
T0*

Tidx0
M
SoftmaxSoftmaxdense_5/Softmax*
T0*
_output_shapes
:	

T
ArgMax_1/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
i
ArgMax_1ArgMaxdense_5/SoftmaxArgMax_1/dimension*
_output_shapes	
:*
T0*

Tidx0
T
ArgMax_2/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
|
ArgMax_2ArgMax"random_shuffle_queue_DequeueMany:2ArgMax_2/dimension*
_output_shapes	
:*
T0*

Tidx0
H
EqualEqualArgMax_2ArgMax_1*
T0	*
_output_shapes	
:
K
ToFloatCastEqual*

DstT0*

SrcT0
*
_output_shapes	
:
S
accuracy/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
r
accuracy/total
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
¬
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*
validate_shape(*!
_class
loc:@accuracy/total*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/total/readIdentityaccuracy/total*!
_class
loc:@accuracy/total*
T0*
_output_shapes
: 
U
accuracy/zeros_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
r
accuracy/count
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
®
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*
validate_shape(*!
_class
loc:@accuracy/count*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/count/readIdentityaccuracy/count*!
_class
loc:@accuracy/count*
T0*
_output_shapes
: 
P
accuracy/SizeConst*
dtype0*
value
B :*
_output_shapes
: 
Y
accuracy/ToFloat_1Castaccuracy/Size*

DstT0*

SrcT0*
_output_shapes
: 
X
accuracy/ConstConst*
dtype0*
valueB: *
_output_shapes
:
j
accuracy/SumSumToFloataccuracy/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0

accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*!
_class
loc:@accuracy/total*
use_locking( *
T0*
_output_shapes
: 
¦
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1^ToFloat*!
_class
loc:@accuracy/count*
use_locking( *
T0*
_output_shapes
: 
W
accuracy/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
e
accuracy/GreaterGreateraccuracy/count/readaccuracy/Greater/y*
T0*
_output_shapes
: 
f
accuracy/truedivRealDivaccuracy/total/readaccuracy/count/read*
T0*
_output_shapes
: 
U
accuracy/value/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
o
accuracy/valueSelectaccuracy/Greateraccuracy/truedivaccuracy/value/e*
T0*
_output_shapes
: 
Y
accuracy/Greater_1/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
j
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/Greater_1/y*
T0*
_output_shapes
: 
h
accuracy/truediv_1RealDivaccuracy/AssignAddaccuracy/AssignAdd_1*
T0*
_output_shapes
: 
Y
accuracy/update_op/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
{
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/update_op/e*
T0*
_output_shapes
: 
ã
initNoOp^global_step/Assign^conv2d/kernel/Assign^conv2d/bias/Assign^conv2d_1/kernel/Assign^conv2d_1/bias/Assign^conv2d_2/kernel/Assign^conv2d_2/bias/Assign^conv2d_3/kernel/Assign^conv2d_3/bias/Assign^dense/kernel/Assign^dense/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign^dense_2/kernel/Assign^dense_2/bias/Assign^dense_3/kernel/Assign^dense_3/bias/Assign^dense_4/kernel/Assign^dense_4/bias/Assign"^OptimizeLoss/learning_rate/Assign

init_1NoOp
"

group_depsNoOp^init^init_1

4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
¥
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedconv2d/kernel*
dtype0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
¡
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedconv2d/bias*
dtype0*
_class
loc:@conv2d/bias*
_output_shapes
: 
©
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedconv2d_1/kernel*
dtype0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
¥
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializedconv2d_1/bias*
dtype0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
©
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedconv2d_2/kernel*
dtype0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
¥
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitializedconv2d_2/bias*
dtype0* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 
©
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializedconv2d_3/kernel*
dtype0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
¥
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializedconv2d_3/bias*
dtype0* 
_class
loc:@conv2d_3/bias*
_output_shapes
: 
£
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitializeddense/kernel*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
 
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitialized
dense/bias*
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
¨
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitializeddense_1/kernel*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
¤
7report_uninitialized_variables/IsVariableInitialized_12IsVariableInitializeddense_1/bias*
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
: 
¨
7report_uninitialized_variables/IsVariableInitialized_13IsVariableInitializeddense_2/kernel*
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
¤
7report_uninitialized_variables/IsVariableInitialized_14IsVariableInitializeddense_2/bias*
dtype0*
_class
loc:@dense_2/bias*
_output_shapes
: 
¨
7report_uninitialized_variables/IsVariableInitialized_15IsVariableInitializeddense_3/kernel*
dtype0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
¤
7report_uninitialized_variables/IsVariableInitialized_16IsVariableInitializeddense_3/bias*
dtype0*
_class
loc:@dense_3/bias*
_output_shapes
: 
¨
7report_uninitialized_variables/IsVariableInitialized_17IsVariableInitializeddense_4/kernel*
dtype0*!
_class
loc:@dense_4/kernel*
_output_shapes
: 
¤
7report_uninitialized_variables/IsVariableInitialized_18IsVariableInitializeddense_4/bias*
dtype0*
_class
loc:@dense_4/bias*
_output_shapes
: 
À
7report_uninitialized_variables/IsVariableInitialized_19IsVariableInitializedOptimizeLoss/learning_rate*
dtype0*-
_class#
!loc:@OptimizeLoss/learning_rate*
_output_shapes
: 
¨
7report_uninitialized_variables/IsVariableInitialized_20IsVariableInitializedaccuracy/total*
dtype0*!
_class
loc:@accuracy/total*
_output_shapes
: 
¨
7report_uninitialized_variables/IsVariableInitialized_21IsVariableInitializedaccuracy/count*
dtype0*!
_class
loc:@accuracy/count*
_output_shapes
: 
À

$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_117report_uninitialized_variables/IsVariableInitialized_127report_uninitialized_variables/IsVariableInitialized_137report_uninitialized_variables/IsVariableInitialized_147report_uninitialized_variables/IsVariableInitialized_157report_uninitialized_variables/IsVariableInitialized_167report_uninitialized_variables/IsVariableInitialized_177report_uninitialized_variables/IsVariableInitialized_187report_uninitialized_variables/IsVariableInitialized_197report_uninitialized_variables/IsVariableInitialized_207report_uninitialized_variables/IsVariableInitialized_21*
N*
T0
*
_output_shapes
:*

axis 
y
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack*
_output_shapes
:
Å
$report_uninitialized_variables/ConstConst*
dtype0*ì
valueâBßBglobal_stepBconv2d/kernelBconv2d/biasBconv2d_1/kernelBconv2d_1/biasBconv2d_2/kernelBconv2d_2/biasBconv2d_3/kernelBconv2d_3/biasBdense/kernelB
dense/biasBdense_1/kernelBdense_1/biasBdense_2/kernelBdense_2/biasBdense_3/kernelBdense_3/biasBdense_4/kernelBdense_4/biasBOptimizeLoss/learning_rateBaccuracy/totalBaccuracy/count*
_output_shapes
:
{
1report_uninitialized_variables/boolean_mask/ShapeConst*
dtype0*
valueB:*
_output_shapes
:

?report_uninitialized_variables/boolean_mask/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ù
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 

Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
õ
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
}
3report_uninitialized_variables/boolean_mask/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
á
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
¯
;report_uninitialized_variables/boolean_mask/concat/values_0Pack0report_uninitialized_variables/boolean_mask/Prod*
N*
T0*
_output_shapes
:*

axis 
y
7report_uninitialized_variables/boolean_mask/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
«
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/concat/values_0;report_uninitialized_variables/boolean_mask/strided_slice_17report_uninitialized_variables/boolean_mask/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
Ë
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat*
_output_shapes
:*
T0*
Tshape0

;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
:
Û
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape*
_output_shapes
:*
T0
*
Tshape0

1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¶
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where*
squeeze_dims
*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

2report_uninitialized_variables/boolean_mask/GatherGather3report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
$report_uninitialized_resources/ConstConst*
dtype0*
valueB *
_output_shapes
: 
M
concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
¼
concatConcatV22report_uninitialized_variables/boolean_mask/Gather$report_uninitialized_resources/Constconcat/axis*
N*

Tidx0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
¡
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
§
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitializedconv2d/kernel*
dtype0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
£
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializedconv2d/bias*
dtype0*
_class
loc:@conv2d/bias*
_output_shapes
: 
«
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitializedconv2d_1/kernel*
dtype0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
§
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitializedconv2d_1/bias*
dtype0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
«
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializedconv2d_2/kernel*
dtype0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
§
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitializedconv2d_2/bias*
dtype0* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 
«
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializedconv2d_3/kernel*
dtype0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
§
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializedconv2d_3/bias*
dtype0* 
_class
loc:@conv2d_3/bias*
_output_shapes
: 
¥
8report_uninitialized_variables_1/IsVariableInitialized_9IsVariableInitializeddense/kernel*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
¢
9report_uninitialized_variables_1/IsVariableInitialized_10IsVariableInitialized
dense/bias*
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
ª
9report_uninitialized_variables_1/IsVariableInitialized_11IsVariableInitializeddense_1/kernel*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
¦
9report_uninitialized_variables_1/IsVariableInitialized_12IsVariableInitializeddense_1/bias*
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
: 
ª
9report_uninitialized_variables_1/IsVariableInitialized_13IsVariableInitializeddense_2/kernel*
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
¦
9report_uninitialized_variables_1/IsVariableInitialized_14IsVariableInitializeddense_2/bias*
dtype0*
_class
loc:@dense_2/bias*
_output_shapes
: 
ª
9report_uninitialized_variables_1/IsVariableInitialized_15IsVariableInitializeddense_3/kernel*
dtype0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
¦
9report_uninitialized_variables_1/IsVariableInitialized_16IsVariableInitializeddense_3/bias*
dtype0*
_class
loc:@dense_3/bias*
_output_shapes
: 
ª
9report_uninitialized_variables_1/IsVariableInitialized_17IsVariableInitializeddense_4/kernel*
dtype0*!
_class
loc:@dense_4/kernel*
_output_shapes
: 
¦
9report_uninitialized_variables_1/IsVariableInitialized_18IsVariableInitializeddense_4/bias*
dtype0*
_class
loc:@dense_4/bias*
_output_shapes
: 
Â
9report_uninitialized_variables_1/IsVariableInitialized_19IsVariableInitializedOptimizeLoss/learning_rate*
dtype0*-
_class#
!loc:@OptimizeLoss/learning_rate*
_output_shapes
: 
ø	
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_88report_uninitialized_variables_1/IsVariableInitialized_99report_uninitialized_variables_1/IsVariableInitialized_109report_uninitialized_variables_1/IsVariableInitialized_119report_uninitialized_variables_1/IsVariableInitialized_129report_uninitialized_variables_1/IsVariableInitialized_139report_uninitialized_variables_1/IsVariableInitialized_149report_uninitialized_variables_1/IsVariableInitialized_159report_uninitialized_variables_1/IsVariableInitialized_169report_uninitialized_variables_1/IsVariableInitialized_179report_uninitialized_variables_1/IsVariableInitialized_189report_uninitialized_variables_1/IsVariableInitialized_19*
N*
T0
*
_output_shapes
:*

axis 
}
+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack*
_output_shapes
:
§
&report_uninitialized_variables_1/ConstConst*
dtype0*Ì
valueÂB¿Bglobal_stepBconv2d/kernelBconv2d/biasBconv2d_1/kernelBconv2d_1/biasBconv2d_2/kernelBconv2d_2/biasBconv2d_3/kernelBconv2d_3/biasBdense/kernelB
dense/biasBdense_1/kernelBdense_1/biasBdense_2/kernelBdense_2/biasBdense_3/kernelBdense_3/biasBdense_4/kernelBdense_4/biasBOptimizeLoss/learning_rate*
_output_shapes
:
}
3report_uninitialized_variables_1/boolean_mask/ShapeConst*
dtype0*
valueB:*
_output_shapes
:

Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ã
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 

Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
û
2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0

5report_uninitialized_variables_1/boolean_mask/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ë
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
³
=report_uninitialized_variables_1/boolean_mask/concat/values_0Pack2report_uninitialized_variables_1/boolean_mask/Prod*
N*
T0*
_output_shapes
:*

axis 
{
9report_uninitialized_variables_1/boolean_mask/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
³
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/concat/values_0=report_uninitialized_variables_1/boolean_mask/strided_slice_19report_uninitialized_variables_1/boolean_mask/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
Ñ
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat*
_output_shapes
:*
T0*
Tshape0

=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
:
á
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape*
_output_shapes
:*
T0
*
Tshape0

3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
º
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where*
squeeze_dims
*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

4report_uninitialized_variables_1/boolean_mask/GatherGather5report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>
init_2NoOp^accuracy/total/Assign^accuracy/count/Assign

init_all_tablesNoOp
/
group_deps_1NoOp^init_2^init_all_tables
­
Merge/MergeSummaryMergeSummaryUenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_fullOptimizeLoss/loss*
_output_shapes
: *
N
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 

save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_98efcd7c667844ee92acbe71a8d130a1/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 

save/SaveV2/tensor_namesConst*
dtype0*Ì
valueÂB¿BOptimizeLoss/learning_rateBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBdense_4/biasBdense_4/kernelBglobal_step*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:
¾
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesOptimizeLoss/learning_rateconv2d/biasconv2d/kernelconv2d_1/biasconv2d_1/kernelconv2d_2/biasconv2d_2/kernelconv2d_3/biasconv2d_3/kernel
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kerneldense_3/biasdense_3/kerneldense_4/biasdense_4/kernelglobal_step*"
dtypes
2	

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*
T0*
_output_shapes
:*

axis 
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
~
save/RestoreV2/tensor_namesConst*
dtype0*/
value&B$BOptimizeLoss/learning_rate*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
º
save/AssignAssignOptimizeLoss/learning_ratesave/RestoreV2*
validate_shape(*-
_class#
!loc:@OptimizeLoss/learning_rate*
use_locking(*
T0*
_output_shapes
: 
q
save/RestoreV2_1/tensor_namesConst*
dtype0* 
valueBBconv2d/bias*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
¤
save/Assign_1Assignconv2d/biassave/RestoreV2_1*
validate_shape(*
_class
loc:@conv2d/bias*
use_locking(*
T0*
_output_shapes
: 
s
save/RestoreV2_2/tensor_namesConst*
dtype0*"
valueBBconv2d/kernel*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
´
save/Assign_2Assignconv2d/kernelsave/RestoreV2_2*
validate_shape(* 
_class
loc:@conv2d/kernel*
use_locking(*
T0*&
_output_shapes
: 
s
save/RestoreV2_3/tensor_namesConst*
dtype0*"
valueBBconv2d_1/bias*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
¨
save/Assign_3Assignconv2d_1/biassave/RestoreV2_3*
validate_shape(* 
_class
loc:@conv2d_1/bias*
use_locking(*
T0*
_output_shapes
:@
u
save/RestoreV2_4/tensor_namesConst*
dtype0*$
valueBBconv2d_1/kernel*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
¸
save/Assign_4Assignconv2d_1/kernelsave/RestoreV2_4*
validate_shape(*"
_class
loc:@conv2d_1/kernel*
use_locking(*
T0*&
_output_shapes
: @
s
save/RestoreV2_5/tensor_namesConst*
dtype0*"
valueBBconv2d_2/bias*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
©
save/Assign_5Assignconv2d_2/biassave/RestoreV2_5*
validate_shape(* 
_class
loc:@conv2d_2/bias*
use_locking(*
T0*
_output_shapes	
:
u
save/RestoreV2_6/tensor_namesConst*
dtype0*$
valueBBconv2d_2/kernel*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
¹
save/Assign_6Assignconv2d_2/kernelsave/RestoreV2_6*
validate_shape(*"
_class
loc:@conv2d_2/kernel*
use_locking(*
T0*'
_output_shapes
:@
s
save/RestoreV2_7/tensor_namesConst*
dtype0*"
valueBBconv2d_3/bias*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
©
save/Assign_7Assignconv2d_3/biassave/RestoreV2_7*
validate_shape(* 
_class
loc:@conv2d_3/bias*
use_locking(*
T0*
_output_shapes	
:
u
save/RestoreV2_8/tensor_namesConst*
dtype0*$
valueBBconv2d_3/kernel*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
º
save/Assign_8Assignconv2d_3/kernelsave/RestoreV2_8*
validate_shape(*"
_class
loc:@conv2d_3/kernel*
use_locking(*
T0*(
_output_shapes
:
p
save/RestoreV2_9/tensor_namesConst*
dtype0*
valueBB
dense/bias*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
£
save/Assign_9Assign
dense/biassave/RestoreV2_9*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes	
:
s
save/RestoreV2_10/tensor_namesConst*
dtype0*!
valueBBdense/kernel*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
®
save/Assign_10Assigndense/kernelsave/RestoreV2_10*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0* 
_output_shapes
:

s
save/RestoreV2_11/tensor_namesConst*
dtype0*!
valueBBdense_1/bias*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
©
save/Assign_11Assigndense_1/biassave/RestoreV2_11*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes	
:
u
save/RestoreV2_12/tensor_namesConst*
dtype0*#
valueBBdense_1/kernel*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
²
save/Assign_12Assigndense_1/kernelsave/RestoreV2_12*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:

s
save/RestoreV2_13/tensor_namesConst*
dtype0*!
valueBBdense_2/bias*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
©
save/Assign_13Assigndense_2/biassave/RestoreV2_13*
validate_shape(*
_class
loc:@dense_2/bias*
use_locking(*
T0*
_output_shapes	
:
u
save/RestoreV2_14/tensor_namesConst*
dtype0*#
valueBBdense_2/kernel*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
²
save/Assign_14Assigndense_2/kernelsave/RestoreV2_14*
validate_shape(*!
_class
loc:@dense_2/kernel*
use_locking(*
T0* 
_output_shapes
:

s
save/RestoreV2_15/tensor_namesConst*
dtype0*!
valueBBdense_3/bias*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
©
save/Assign_15Assigndense_3/biassave/RestoreV2_15*
validate_shape(*
_class
loc:@dense_3/bias*
use_locking(*
T0*
_output_shapes	
:
u
save/RestoreV2_16/tensor_namesConst*
dtype0*#
valueBBdense_3/kernel*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
²
save/Assign_16Assigndense_3/kernelsave/RestoreV2_16*
validate_shape(*!
_class
loc:@dense_3/kernel*
use_locking(*
T0* 
_output_shapes
:

s
save/RestoreV2_17/tensor_namesConst*
dtype0*!
valueBBdense_4/bias*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
¨
save/Assign_17Assigndense_4/biassave/RestoreV2_17*
validate_shape(*
_class
loc:@dense_4/bias*
use_locking(*
T0*
_output_shapes
:

u
save/RestoreV2_18/tensor_namesConst*
dtype0*#
valueBBdense_4/kernel*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
±
save/Assign_18Assigndense_4/kernelsave/RestoreV2_18*
validate_shape(*!
_class
loc:@dense_4/kernel*
use_locking(*
T0*
_output_shapes
:	

r
save/RestoreV2_19/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2	*
_output_shapes
:
¢
save/Assign_19Assignglobal_stepsave/RestoreV2_19*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
â
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19
-
save/restore_allNoOp^save/restore_shard"lau)     äYøÒ	¦HöÖºRÖAJèÒ
0ø/
9
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T"
Ttype:
2	"
use_lockingbool( 
l
ArgMax

input"T
	dimension"Tidx

output	"
Ttype:
2	"
Tidxtype0:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
p
	AssignAdd
ref"T

value"T

output_ref"T"
Ttype:
2	"
use_lockingbool( 
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
{
BiasAddGrad
out_backprop"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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
È
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
î
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
í
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
A
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype

Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
:
Greater
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype


LogicalNot
x

y

o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
Å
MaxPool

input"T
output"T"
Ttype0:
2		"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
ë
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2		
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	
8
MergeSummary
inputs*N
summary"
Nint(0
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	
-
Neg
x"T
y"T"
Ttype:
	2	
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
B
QueueCloseV2

handle"#
cancel_pending_enqueuesbool( 

QueueDequeueManyV2

handle
n

components2component_types"!
component_types
list(type)(0"

timeout_msintÿÿÿÿÿÿÿÿÿ
}
QueueEnqueueManyV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msintÿÿÿÿÿÿÿÿÿ
&
QueueSizeV2

handle
size
ø
RandomShuffleQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityintÿÿÿÿÿÿÿÿÿ"
min_after_dequeueint "
seedint "
seed2int "
	containerstring "
shared_namestring 
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
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
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
8
Softmax
logits"T
softmax"T"
Ttype:
2
i
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
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
5
Sub
x"T
y"T
z"T"
Ttype:
	2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 

Where	
input
	
index	*1.2.02v1.2.0-rc2-21-g12f033d

global_step/Initializer/zerosConst*
dtype0	*
_class
loc:@global_step*
value	B	 R *
_output_shapes
: 

global_step
VariableV2*
	container *
_output_shapes
: *
dtype0	*
shape: *
_class
loc:@global_step*
shared_name 
²
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 

"enqueue_input/random_shuffle_queueRandomShuffleQueueV2"/device:CPU:0*
	container *
component_types
2	*
_output_shapes
: *
min_after_dequeueÄ*"
shapes
: ::
*
seed2 *

seed *
capacityN*
shared_name 
m
enqueue_input/PlaceholderPlaceholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_1Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_2Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
ÿ
.enqueue_input/random_shuffle_queue_EnqueueManyQueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholderenqueue_input/Placeholder_1enqueue_input/Placeholder_2"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
Tcomponents
2	
o
enqueue_input/Placeholder_3Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_4Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_5Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:

0enqueue_input/random_shuffle_queue_EnqueueMany_1QueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholder_3enqueue_input/Placeholder_4enqueue_input/Placeholder_5"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
Tcomponents
2	
o
enqueue_input/Placeholder_6Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_7Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
o
enqueue_input/Placeholder_8Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:

0enqueue_input/random_shuffle_queue_EnqueueMany_2QueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholder_6enqueue_input/Placeholder_7enqueue_input/Placeholder_8"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
Tcomponents
2	
o
enqueue_input/Placeholder_9Placeholder"/device:CPU:0*
dtype0	*
shape:*
_output_shapes
:
p
enqueue_input/Placeholder_10Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:
p
enqueue_input/Placeholder_11Placeholder"/device:CPU:0*
dtype0*
shape:*
_output_shapes
:

0enqueue_input/random_shuffle_queue_EnqueueMany_3QueueEnqueueManyV2"enqueue_input/random_shuffle_queueenqueue_input/Placeholder_9enqueue_input/Placeholder_10enqueue_input/Placeholder_11"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
Tcomponents
2	

(enqueue_input/random_shuffle_queue_CloseQueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues( 

*enqueue_input/random_shuffle_queue_Close_1QueueCloseV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
cancel_pending_enqueues(

'enqueue_input/random_shuffle_queue_SizeQueueSizeV2"enqueue_input/random_shuffle_queue"/device:CPU:0*
_output_shapes
: 
e
enqueue_input/sub/yConst"/device:CPU:0*
dtype0*
value
B :Ä*
_output_shapes
: 

enqueue_input/subSub'enqueue_input/random_shuffle_queue_Sizeenqueue_input/sub/y"/device:CPU:0*
T0*
_output_shapes
: 
h
enqueue_input/Maximum/xConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
|
enqueue_input/MaximumMaximumenqueue_input/Maximum/xenqueue_input/sub"/device:CPU:0*
T0*
_output_shapes
: 
p
enqueue_input/CastCastenqueue_input/Maximum"/device:CPU:0*

DstT0*

SrcT0*
_output_shapes
: 
g
enqueue_input/mul/yConst"/device:CPU:0*
dtype0*
valueB
 *eÏ9*
_output_shapes
: 
q
enqueue_input/mulMulenqueue_input/Castenqueue_input/mul/y"/device:CPU:0*
T0*
_output_shapes
: 
ÿ
Zenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full/tagsConst"/device:CPU:0*
dtype0*f
value]B[ BUenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full*
_output_shapes
: 

Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_fullScalarSummaryZenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full/tagsenqueue_input/mul"/device:CPU:0*
T0*
_output_shapes
: 
t
"random_shuffle_queue_DequeueMany/nConst"/device:CPU:0*
dtype0*
value
B :*
_output_shapes
: 
ÿ
 random_shuffle_queue_DequeueManyQueueDequeueManyV2"enqueue_input/random_shuffle_queue"random_shuffle_queue_DequeueMany/n"/device:CPU:0*

timeout_msÿÿÿÿÿÿÿÿÿ*
component_types
2	*9
_output_shapes'
%:::	

©
.conv2d/kernel/Initializer/random_uniform/shapeConst*
dtype0* 
_class
loc:@conv2d/kernel*%
valueB"             *
_output_shapes
:

,conv2d/kernel/Initializer/random_uniform/minConst*
dtype0* 
_class
loc:@conv2d/kernel*
valueB
 *n§®½*
_output_shapes
: 

,conv2d/kernel/Initializer/random_uniform/maxConst*
dtype0* 
_class
loc:@conv2d/kernel*
valueB
 *n§®=*
_output_shapes
: 
ð
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*&
_output_shapes
: *
dtype0*
seed2 *

seed *
T0* 
_class
loc:@conv2d/kernel
Ò
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv2d/kernel*
T0*
_output_shapes
: 
ì
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 
Þ
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 
³
conv2d/kernel
VariableV2*
	container *&
_output_shapes
: *
dtype0*
shape: * 
_class
loc:@conv2d/kernel*
shared_name 
Ó
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
validate_shape(* 
_class
loc:@conv2d/kernel*
use_locking(*
T0*&
_output_shapes
: 

conv2d/kernel/readIdentityconv2d/kernel* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 

conv2d/bias/Initializer/zerosConst*
dtype0*
_class
loc:@conv2d/bias*
valueB *    *
_output_shapes
: 

conv2d/bias
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *
_class
loc:@conv2d/bias*
shared_name 
¶
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
validate_shape(*
_class
loc:@conv2d/bias*
use_locking(*
T0*
_output_shapes
: 
n
conv2d/bias/readIdentityconv2d/bias*
_class
loc:@conv2d/bias*
T0*
_output_shapes
: 
q
conv2d/convolution/ShapeConst*
dtype0*%
valueB"             *
_output_shapes
:
q
 conv2d/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
Þ
conv2d/convolutionConv2D"random_shuffle_queue_DequeueMany:1conv2d/kernel/read*'
_output_shapes
: *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv2d/BiasAddBiasAddconv2d/convolutionconv2d/bias/read*
data_formatNHWC*
T0*'
_output_shapes
: 
U
conv2d/ReluReluconv2d/BiasAdd*
T0*'
_output_shapes
: 
­
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@conv2d_1/kernel*%
valueB"          @   *
_output_shapes
:

.conv2d_1/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_1/kernel*
valueB
 *ÍÌL½*
_output_shapes
: 

.conv2d_1/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_1/kernel*
valueB
 *ÍÌL=*
_output_shapes
: 
ö
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*&
_output_shapes
: @*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_1/kernel
Ú
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_1/kernel*
T0*
_output_shapes
: 
ô
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @
æ
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @
·
conv2d_1/kernel
VariableV2*
	container *&
_output_shapes
: @*
dtype0*
shape: @*"
_class
loc:@conv2d_1/kernel*
shared_name 
Û
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@conv2d_1/kernel*
use_locking(*
T0*&
_output_shapes
: @

conv2d_1/kernel/readIdentityconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @

conv2d_1/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_1/bias*
valueB@*    *
_output_shapes
:@

conv2d_1/bias
VariableV2*
	container *
_output_shapes
:@*
dtype0*
shape:@* 
_class
loc:@conv2d_1/bias*
shared_name 
¾
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2d_1/bias*
use_locking(*
T0*
_output_shapes
:@
t
conv2d_1/bias/readIdentityconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
T0*
_output_shapes
:@
s
conv2d_2/convolution/ShapeConst*
dtype0*%
valueB"          @   *
_output_shapes
:
s
"conv2d_2/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
Ë
conv2d_2/convolutionConv2Dconv2d/Reluconv2d_1/kernel/read*'
_output_shapes
:@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv2d_2/BiasAddBiasAddconv2d_2/convolutionconv2d_1/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:@
Y
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*'
_output_shapes
:@
­
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@conv2d_2/kernel*%
valueB"      @      *
_output_shapes
:

.conv2d_2/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_2/kernel*
valueB
 *óµ½*
_output_shapes
: 

.conv2d_2/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_2/kernel*
valueB
 *óµ=*
_output_shapes
: 
÷
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*'
_output_shapes
:@*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_2/kernel
Ú
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_2/kernel*
T0*
_output_shapes
: 
õ
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_2/kernel*
T0*'
_output_shapes
:@
ç
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_2/kernel*
T0*'
_output_shapes
:@
¹
conv2d_2/kernel
VariableV2*
	container *'
_output_shapes
:@*
dtype0*
shape:@*"
_class
loc:@conv2d_2/kernel*
shared_name 
Ü
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@conv2d_2/kernel*
use_locking(*
T0*'
_output_shapes
:@

conv2d_2/kernel/readIdentityconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
T0*'
_output_shapes
:@

conv2d_2/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_2/bias*
valueB*    *
_output_shapes	
:

conv2d_2/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:* 
_class
loc:@conv2d_2/bias*
shared_name 
¿
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/bias/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2d_2/bias*
use_locking(*
T0*
_output_shapes	
:
u
conv2d_2/bias/readIdentityconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
T0*
_output_shapes	
:
s
conv2d_3/convolution/ShapeConst*
dtype0*%
valueB"      @      *
_output_shapes
:
s
"conv2d_3/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
Î
conv2d_3/convolutionConv2Dconv2d_2/Reluconv2d_2/kernel/read*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv2d_3/BiasAddBiasAddconv2d_3/convolutionconv2d_2/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:
Z
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*(
_output_shapes
:
µ
max_pooling2d/MaxPoolMaxPoolconv2d_3/Relu*(
_output_shapes
:		*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
­
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*"
_class
loc:@conv2d_3/kernel*%
valueB"            *
_output_shapes
:

.conv2d_3/kernel/Initializer/random_uniform/minConst*
dtype0*"
_class
loc:@conv2d_3/kernel*
valueB
 *ÍÌÌ¼*
_output_shapes
: 

.conv2d_3/kernel/Initializer/random_uniform/maxConst*
dtype0*"
_class
loc:@conv2d_3/kernel*
valueB
 *ÍÌÌ<*
_output_shapes
: 
ø
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*(
_output_shapes
:*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@conv2d_3/kernel
Ú
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_3/kernel*
T0*
_output_shapes
: 
ö
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_3/kernel*
T0*(
_output_shapes
:
è
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_3/kernel*
T0*(
_output_shapes
:
»
conv2d_3/kernel
VariableV2*
	container *(
_output_shapes
:*
dtype0*
shape:*"
_class
loc:@conv2d_3/kernel*
shared_name 
Ý
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
validate_shape(*"
_class
loc:@conv2d_3/kernel*
use_locking(*
T0*(
_output_shapes
:

conv2d_3/kernel/readIdentityconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
T0*(
_output_shapes
:

conv2d_3/bias/Initializer/zerosConst*
dtype0* 
_class
loc:@conv2d_3/bias*
valueB*    *
_output_shapes	
:

conv2d_3/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:* 
_class
loc:@conv2d_3/bias*
shared_name 
¿
conv2d_3/bias/AssignAssignconv2d_3/biasconv2d_3/bias/Initializer/zeros*
validate_shape(* 
_class
loc:@conv2d_3/bias*
use_locking(*
T0*
_output_shapes	
:
u
conv2d_3/bias/readIdentityconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
T0*
_output_shapes	
:
s
conv2d_4/convolution/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
s
"conv2d_4/convolution/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
Ö
conv2d_4/convolutionConv2Dmax_pooling2d/MaxPoolconv2d_3/kernel/read*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv2d_4/BiasAddBiasAddconv2d_4/convolutionconv2d_3/bias/read*
data_formatNHWC*
T0*(
_output_shapes
:
Z
conv2d_4/ReluReluconv2d_4/BiasAdd*
T0*(
_output_shapes
:
·
max_pooling2d_2/MaxPoolMaxPoolconv2d_4/Relu*(
_output_shapes
:*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
f
flatten/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
e
flatten/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
g
flatten/strided_slice/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
g
flatten/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
¥
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
W
flatten/ConstConst*
dtype0*
valueB: *
_output_shapes
:
x
flatten/ProdProdflatten/strided_sliceflatten/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
Z
flatten/stack/0Const*
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
: 
n
flatten/stackPackflatten/stack/0flatten/Prod*
_output_shapes
:*

axis *
T0*
N
{
flatten/ReshapeReshapemax_pooling2d_2/MaxPoolflatten/stack*
Tshape0*
T0* 
_output_shapes
:


-dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_class
loc:@dense/kernel*
valueB"      *
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *×³]½*
_output_shapes
: 

+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *×³]=*
_output_shapes
: 
ç
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*
_class
loc:@dense/kernel
Î
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0*
_output_shapes
: 
â
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:

Ô
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:

¥
dense/kernel
VariableV2*
	container * 
_output_shapes
:
*
dtype0*
shape:
*
_class
loc:@dense/kernel*
shared_name 
É
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0* 
_output_shapes
:

w
dense/kernel/readIdentitydense/kernel*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:


dense/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense/bias*
valueB*    *
_output_shapes	
:


dense/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:*
_class
loc:@dense/bias*
shared_name 
³
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes	
:
l
dense/bias/readIdentity
dense/bias*
_class
loc:@dense/bias*
T0*
_output_shapes	
:

dense/MatMulMatMulflatten/Reshapedense/kernel/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:

y
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
data_formatNHWC*
T0* 
_output_shapes
:

L

dense/ReluReludense/BiasAdd*
T0* 
_output_shapes
:

£
/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB"      *
_output_shapes
:

-dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *×³]½*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *×³]=*
_output_shapes
: 
í
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_1/kernel
Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
: 
ê
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:

Ü
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:

©
dense_1/kernel
VariableV2*
	container * 
_output_shapes
:
*
dtype0*
shape:
*!
_class
loc:@dense_1/kernel*
shared_name 
Ñ
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:

}
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:


dense_1/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_1/bias*
valueB*    *
_output_shapes	
:

dense_1/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:*
_class
loc:@dense_1/bias*
shared_name 
»
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes	
:
r
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
T0*
_output_shapes	
:

dense_2/MatMulMatMul
dense/Reludense_1/kernel/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:


dense_2/BiasAddBiasAdddense_2/MatMuldense_1/bias/read*
data_formatNHWC*
T0* 
_output_shapes
:

P
dense_2/ReluReludense_2/BiasAdd*
T0* 
_output_shapes
:

£
/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB"      *
_output_shapes
:

-dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB
 *×³]½*
_output_shapes
: 

-dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB
 *×³]=*
_output_shapes
: 
í
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_2/kernel
Ö
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes
: 
ê
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:

Ü
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:

©
dense_2/kernel
VariableV2*
	container * 
_output_shapes
:
*
dtype0*
shape:
*!
_class
loc:@dense_2/kernel*
shared_name 
Ñ
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_2/kernel*
use_locking(*
T0* 
_output_shapes
:

}
dense_2/kernel/readIdentitydense_2/kernel*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:


dense_2/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_2/bias*
valueB*    *
_output_shapes	
:

dense_2/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:*
_class
loc:@dense_2/bias*
shared_name 
»
dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_2/bias*
use_locking(*
T0*
_output_shapes	
:
r
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
T0*
_output_shapes	
:

dense_3/MatMulMatMuldense_2/Reludense_2/kernel/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:


dense_3/BiasAddBiasAdddense_3/MatMuldense_2/bias/read*
data_formatNHWC*
T0* 
_output_shapes
:

P
dense_3/ReluReludense_3/BiasAdd*
T0* 
_output_shapes
:

£
/dense_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB"      *
_output_shapes
:

-dense_3/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *×³]½*
_output_shapes
: 

-dense_3/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *×³]=*
_output_shapes
: 
í
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_3/kernel
Ö
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
T0*
_output_shapes
: 
ê
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_3/kernel*
T0* 
_output_shapes
:

Ü
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
T0* 
_output_shapes
:

©
dense_3/kernel
VariableV2*
	container * 
_output_shapes
:
*
dtype0*
shape:
*!
_class
loc:@dense_3/kernel*
shared_name 
Ñ
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_3/kernel*
use_locking(*
T0* 
_output_shapes
:

}
dense_3/kernel/readIdentitydense_3/kernel*!
_class
loc:@dense_3/kernel*
T0* 
_output_shapes
:


dense_3/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_3/bias*
valueB*    *
_output_shapes	
:

dense_3/bias
VariableV2*
	container *
_output_shapes	
:*
dtype0*
shape:*
_class
loc:@dense_3/bias*
shared_name 
»
dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_3/bias*
use_locking(*
T0*
_output_shapes	
:
r
dense_3/bias/readIdentitydense_3/bias*
_class
loc:@dense_3/bias*
T0*
_output_shapes	
:

dense_4/MatMulMatMuldense_3/Reludense_3/kernel/read*
transpose_b( *
transpose_a( *
T0* 
_output_shapes
:


dense_4/BiasAddBiasAdddense_4/MatMuldense_3/bias/read*
data_formatNHWC*
T0* 
_output_shapes
:

P
dense_4/ReluReludense_4/BiasAdd*
T0* 
_output_shapes
:

£
/dense_4/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB"   
   *
_output_shapes
:

-dense_4/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB
 *è½*
_output_shapes
: 

-dense_4/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB
 *è=*
_output_shapes
: 
ì
7dense_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_4/kernel/Initializer/random_uniform/shape*
_output_shapes
:	
*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_4/kernel
Ö
-dense_4/kernel/Initializer/random_uniform/subSub-dense_4/kernel/Initializer/random_uniform/max-dense_4/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
: 
é
-dense_4/kernel/Initializer/random_uniform/mulMul7dense_4/kernel/Initializer/random_uniform/RandomUniform-dense_4/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
:	

Û
)dense_4/kernel/Initializer/random_uniformAdd-dense_4/kernel/Initializer/random_uniform/mul-dense_4/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
:	

§
dense_4/kernel
VariableV2*
	container *
_output_shapes
:	
*
dtype0*
shape:	
*!
_class
loc:@dense_4/kernel*
shared_name 
Ð
dense_4/kernel/AssignAssigndense_4/kernel)dense_4/kernel/Initializer/random_uniform*
validate_shape(*!
_class
loc:@dense_4/kernel*
use_locking(*
T0*
_output_shapes
:	

|
dense_4/kernel/readIdentitydense_4/kernel*!
_class
loc:@dense_4/kernel*
T0*
_output_shapes
:	


dense_4/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_4/bias*
valueB
*    *
_output_shapes
:


dense_4/bias
VariableV2*
	container *
_output_shapes
:
*
dtype0*
shape:
*
_class
loc:@dense_4/bias*
shared_name 
º
dense_4/bias/AssignAssigndense_4/biasdense_4/bias/Initializer/zeros*
validate_shape(*
_class
loc:@dense_4/bias*
use_locking(*
T0*
_output_shapes
:

q
dense_4/bias/readIdentitydense_4/bias*
_class
loc:@dense_4/bias*
T0*
_output_shapes
:


dense_5/MatMulMatMuldense_4/Reludense_4/kernel/read*
transpose_b( *
transpose_a( *
T0*
_output_shapes
:	

~
dense_5/BiasAddBiasAdddense_5/MatMuldense_4/bias/read*
data_formatNHWC*
T0*
_output_shapes
:	

U
dense_5/SoftmaxSoftmaxdense_5/BiasAdd*
T0*
_output_shapes
:	


softmax_cross_entropy_loss/CastCast"random_shuffle_queue_DequeueMany:2*

DstT0*

SrcT0*
_output_shapes
:	

a
softmax_cross_entropy_loss/RankConst*
dtype0*
value	B :*
_output_shapes
: 
q
 softmax_cross_entropy_loss/ShapeConst*
dtype0*
valueB"   
   *
_output_shapes
:
c
!softmax_cross_entropy_loss/Rank_1Const*
dtype0*
value	B :*
_output_shapes
: 
s
"softmax_cross_entropy_loss/Shape_1Const*
dtype0*
valueB"   
   *
_output_shapes
:
b
 softmax_cross_entropy_loss/Sub/yConst*
dtype0*
value	B :*
_output_shapes
: 

softmax_cross_entropy_loss/SubSub!softmax_cross_entropy_loss/Rank_1 softmax_cross_entropy_loss/Sub/y*
T0*
_output_shapes
: 

&softmax_cross_entropy_loss/Slice/beginPacksoftmax_cross_entropy_loss/Sub*
_output_shapes
:*

axis *
T0*
N
o
%softmax_cross_entropy_loss/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Î
 softmax_cross_entropy_loss/SliceSlice"softmax_cross_entropy_loss/Shape_1&softmax_cross_entropy_loss/Slice/begin%softmax_cross_entropy_loss/Slice/size*
Index0*
T0*
_output_shapes
:
}
*softmax_cross_entropy_loss/concat/values_0Const*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
:
h
&softmax_cross_entropy_loss/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ý
!softmax_cross_entropy_loss/concatConcatV2*softmax_cross_entropy_loss/concat/values_0 softmax_cross_entropy_loss/Slice&softmax_cross_entropy_loss/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N

"softmax_cross_entropy_loss/ReshapeReshapedense_5/Softmax!softmax_cross_entropy_loss/concat*
Tshape0*
T0*
_output_shapes
:	

c
!softmax_cross_entropy_loss/Rank_2Const*
dtype0*
value	B :*
_output_shapes
: 
s
"softmax_cross_entropy_loss/Shape_2Const*
dtype0*
valueB"   
   *
_output_shapes
:
d
"softmax_cross_entropy_loss/Sub_1/yConst*
dtype0*
value	B :*
_output_shapes
: 

 softmax_cross_entropy_loss/Sub_1Sub!softmax_cross_entropy_loss/Rank_2"softmax_cross_entropy_loss/Sub_1/y*
T0*
_output_shapes
: 

(softmax_cross_entropy_loss/Slice_1/beginPack softmax_cross_entropy_loss/Sub_1*
_output_shapes
:*

axis *
T0*
N
q
'softmax_cross_entropy_loss/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Ô
"softmax_cross_entropy_loss/Slice_1Slice"softmax_cross_entropy_loss/Shape_2(softmax_cross_entropy_loss/Slice_1/begin'softmax_cross_entropy_loss/Slice_1/size*
Index0*
T0*
_output_shapes
:

,softmax_cross_entropy_loss/concat_1/values_0Const*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
:
j
(softmax_cross_entropy_loss/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
å
#softmax_cross_entropy_loss/concat_1ConcatV2,softmax_cross_entropy_loss/concat_1/values_0"softmax_cross_entropy_loss/Slice_1(softmax_cross_entropy_loss/concat_1/axis*
_output_shapes
:*

Tidx0*
T0*
N
­
$softmax_cross_entropy_loss/Reshape_1Reshapesoftmax_cross_entropy_loss/Cast#softmax_cross_entropy_loss/concat_1*
Tshape0*
T0*
_output_shapes
:	

¿
#softmax_cross_entropy_loss/xentropySoftmaxCrossEntropyWithLogits"softmax_cross_entropy_loss/Reshape$softmax_cross_entropy_loss/Reshape_1*
T0*&
_output_shapes
::	

d
"softmax_cross_entropy_loss/Sub_2/yConst*
dtype0*
value	B :*
_output_shapes
: 

 softmax_cross_entropy_loss/Sub_2Subsoftmax_cross_entropy_loss/Rank"softmax_cross_entropy_loss/Sub_2/y*
T0*
_output_shapes
: 
r
(softmax_cross_entropy_loss/Slice_2/beginConst*
dtype0*
valueB: *
_output_shapes
:

'softmax_cross_entropy_loss/Slice_2/sizePack softmax_cross_entropy_loss/Sub_2*
_output_shapes
:*

axis *
T0*
N
Û
"softmax_cross_entropy_loss/Slice_2Slice softmax_cross_entropy_loss/Shape(softmax_cross_entropy_loss/Slice_2/begin'softmax_cross_entropy_loss/Slice_2/size*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¬
$softmax_cross_entropy_loss/Reshape_2Reshape#softmax_cross_entropy_loss/xentropy"softmax_cross_entropy_loss/Slice_2*
Tshape0*
T0*
_output_shapes	
:
|
7softmax_cross_entropy_loss/assert_broadcastable/weightsConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

=softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
dtype0*
valueB *
_output_shapes
: 
~
<softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
dtype0*
value	B : *
_output_shapes
: 

<softmax_cross_entropy_loss/assert_broadcastable/values/shapeConst*
dtype0*
valueB:*
_output_shapes
:
}
;softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
dtype0*
value	B :*
_output_shapes
: 
S
Ksoftmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
¹
&softmax_cross_entropy_loss/ToFloat_1/xConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  ?*
_output_shapes
: 

softmax_cross_entropy_loss/MulMul$softmax_cross_entropy_loss/Reshape_2&softmax_cross_entropy_loss/ToFloat_1/x*
T0*
_output_shapes	
:
¸
 softmax_cross_entropy_loss/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB: *
_output_shapes
:
¥
softmax_cross_entropy_loss/SumSumsoftmax_cross_entropy_loss/Mul softmax_cross_entropy_loss/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
Á
.softmax_cross_entropy_loss/num_present/Equal/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
®
,softmax_cross_entropy_loss/num_present/EqualEqual&softmax_cross_entropy_loss/ToFloat_1/x.softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
Ä
1softmax_cross_entropy_loss/num_present/zeros_likeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
Ç
6softmax_cross_entropy_loss/num_present/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
É
6softmax_cross_entropy_loss/num_present/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  ?*
_output_shapes
: 
É
0softmax_cross_entropy_loss/num_present/ones_likeFill6softmax_cross_entropy_loss/num_present/ones_like/Shape6softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: 
ë
-softmax_cross_entropy_loss/num_present/SelectSelect,softmax_cross_entropy_loss/num_present/Equal1softmax_cross_entropy_loss/num_present/zeros_like0softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
ì
[softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
ê
Zsoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
value	B : *
_output_shapes
: 
ó
Zsoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB:*
_output_shapes
:
é
Ysoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
value	B :*
_output_shapes
: 
¿
isoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
Í
Hsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successj^softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB:*
_output_shapes
:
Ç
Hsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successj^softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  ?*
_output_shapes
: 

Bsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillHsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeHsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*
_output_shapes	
:
Ø
8softmax_cross_entropy_loss/num_present/broadcast_weightsMul-softmax_cross_entropy_loss/num_present/SelectBsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*
_output_shapes	
:
Ä
,softmax_cross_entropy_loss/num_present/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB: *
_output_shapes
:
Ó
&softmax_cross_entropy_loss/num_presentSum8softmax_cross_entropy_loss/num_present/broadcast_weights,softmax_cross_entropy_loss/num_present/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
³
"softmax_cross_entropy_loss/Const_1ConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
©
 softmax_cross_entropy_loss/Sum_1Sumsoftmax_cross_entropy_loss/Sum"softmax_cross_entropy_loss/Const_1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
·
$softmax_cross_entropy_loss/Greater/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 

"softmax_cross_entropy_loss/GreaterGreater&softmax_cross_entropy_loss/num_present$softmax_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
µ
"softmax_cross_entropy_loss/Equal/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 

 softmax_cross_entropy_loss/EqualEqual&softmax_cross_entropy_loss/num_present"softmax_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
»
*softmax_cross_entropy_loss/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB *
_output_shapes
: 
½
*softmax_cross_entropy_loss/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *  ?*
_output_shapes
: 
¥
$softmax_cross_entropy_loss/ones_likeFill*softmax_cross_entropy_loss/ones_like/Shape*softmax_cross_entropy_loss/ones_like/Const*
T0*
_output_shapes
: 
¼
!softmax_cross_entropy_loss/SelectSelect softmax_cross_entropy_loss/Equal$softmax_cross_entropy_loss/ones_like&softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 

softmax_cross_entropy_loss/divRealDiv softmax_cross_entropy_loss/Sum_1!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
¸
%softmax_cross_entropy_loss/zeros_likeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
valueB
 *    *
_output_shapes
: 
¶
 softmax_cross_entropy_loss/valueSelect"softmax_cross_entropy_loss/Greatersoftmax_cross_entropy_loss/div%softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
 
,OptimizeLoss/learning_rate/Initializer/ConstConst*
dtype0*-
_class#
!loc:@OptimizeLoss/learning_rate*
valueB
 *
×#<*
_output_shapes
: 
­
OptimizeLoss/learning_rate
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *-
_class#
!loc:@OptimizeLoss/learning_rate*
shared_name 
î
!OptimizeLoss/learning_rate/AssignAssignOptimizeLoss/learning_rate,OptimizeLoss/learning_rate/Initializer/Const*
validate_shape(*-
_class#
!loc:@OptimizeLoss/learning_rate*
use_locking(*
T0*
_output_shapes
: 

OptimizeLoss/learning_rate/readIdentityOptimizeLoss/learning_rate*-
_class#
!loc:@OptimizeLoss/learning_rate*
T0*
_output_shapes
: 
_
OptimizeLoss/gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
a
OptimizeLoss/gradients/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

OptimizeLoss/gradients/FillFillOptimizeLoss/gradients/ShapeOptimizeLoss/gradients/Const*
T0*
_output_shapes
: 

GOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_likeConst*
dtype0*
valueB
 *    *
_output_shapes
: 
ø
COptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectSelect"softmax_cross_entropy_loss/GreaterOptimizeLoss/gradients/FillGOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
ú
EOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1Select"softmax_cross_entropy_loss/GreaterGOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/zeros_likeOptimizeLoss/gradients/Fill*
T0*
_output_shapes
: 
ã
MOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOpD^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectF^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1
ï
UOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentityCOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/SelectN^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_deps*V
_classL
JHloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select*
T0*
_output_shapes
: 
õ
WOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1N^OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/Select_1*
T0*
_output_shapes
: 

@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ShapeConst*
dtype0*
valueB *
_output_shapes
: 

BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
¬
POptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgs@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ShapeBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
è
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDivRealDivUOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependency!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 

>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/SumSumBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDivPOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
þ
BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeReshape>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape*
Tshape0*
T0*
_output_shapes
: 

>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/NegNeg softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
Ó
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_1RealDiv>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Neg!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Ù
DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_2RealDivDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_1!softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 

>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/mulMulUOptimizeLoss/gradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependencyDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 

@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum_1Sum>OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/mulROptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:

DOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Sum_1BOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
ß
KOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeE^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1
é
SOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/ReshapeL^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_deps*U
_classK
IGloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape*
T0*
_output_shapes
: 
ï
UOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1IdentityDOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1L^OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/Reshape_1*
T0*
_output_shapes
: 

JOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
dtype0*
valueB *
_output_shapes
: 

DOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapeSOptimizeLoss/gradients/softmax_cross_entropy_loss/div_grad/tuple/control_dependencyJOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
: 

KOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Tile/multiplesConst*
dtype0*
valueB *
_output_shapes
: 

AOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/TileTileDOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/ReshapeKOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes
: 

HOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:

BOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeAOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_1_grad/TileHOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:

IOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile/multiplesConst*
dtype0*
valueB:*
_output_shapes
:

?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/TileTileBOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/ReshapeIOptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes	
:

@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ShapeConst*
dtype0*
valueB:*
_output_shapes
:

BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
dtype0*
valueB *
_output_shapes
: 
¬
POptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ShapeBOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Ô
>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mulMul?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile&softmax_cross_entropy_loss/ToFloat_1/x*
T0*
_output_shapes	
:

>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/SumSum>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mulPOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:

BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeReshape>OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape*
Tshape0*
T0*
_output_shapes	
:
Ô
@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mul_1Mul$softmax_cross_entropy_loss/Reshape_2?OptimizeLoss/gradients/softmax_cross_entropy_loss/Sum_grad/Tile*
T0*
_output_shapes	
:

@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum_1Sum@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/mul_1ROptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:

DOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1Reshape@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Sum_1BOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
ß
KOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeE^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1
î
SOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeL^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*U
_classK
IGloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape*
T0*
_output_shapes	
:
ï
UOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1IdentityDOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1L^OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1*
T0*
_output_shapes
: 

FOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/ShapeConst*
dtype0*
valueB:*
_output_shapes
:
¤
HOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/ReshapeReshapeSOptimizeLoss/gradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyFOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/Shape*
Tshape0*
T0*
_output_shapes	
:
x
!OptimizeLoss/gradients/zeros_likeConst*
dtype0*
valueB	
*    *
_output_shapes
:	


NOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims/dimConst*
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
: 
¨
JOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims
ExpandDimsHOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_2_grad/ReshapeNOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:	
ç
COptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mulMulJOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims%softmax_cross_entropy_loss/xentropy:1*
T0*
_output_shapes
:	


DOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/ShapeConst*
dtype0*
valueB"   
   *
_output_shapes
:

FOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/ReshapeReshapeCOptimizeLoss/gradients/softmax_cross_entropy_loss/xentropy_grad/mulDOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/Shape*
Tshape0*
T0*
_output_shapes
:	

¹
/OptimizeLoss/gradients/dense_5/Softmax_grad/mulMulFOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/Reshapedense_5/Softmax*
T0*
_output_shapes
:	


AOptimizeLoss/gradients/dense_5/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
í
/OptimizeLoss/gradients/dense_5/Softmax_grad/SumSum/OptimizeLoss/gradients/dense_5/Softmax_grad/mulAOptimizeLoss/gradients/dense_5/Softmax_grad/Sum/reduction_indices*

Tidx0*
T0*
	keep_dims( *
_output_shapes	
:

9OptimizeLoss/gradients/dense_5/Softmax_grad/Reshape/shapeConst*
dtype0*
valueB"ÿÿÿÿ   *
_output_shapes
:
â
3OptimizeLoss/gradients/dense_5/Softmax_grad/ReshapeReshape/OptimizeLoss/gradients/dense_5/Softmax_grad/Sum9OptimizeLoss/gradients/dense_5/Softmax_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:	
Ý
/OptimizeLoss/gradients/dense_5/Softmax_grad/subSubFOptimizeLoss/gradients/softmax_cross_entropy_loss/Reshape_grad/Reshape3OptimizeLoss/gradients/dense_5/Softmax_grad/Reshape*
T0*
_output_shapes
:	

¤
1OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1Mul/OptimizeLoss/gradients/dense_5/Softmax_grad/subdense_5/Softmax*
T0*
_output_shapes
:	

µ
7OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1*
data_formatNHWC*
T0*
_output_shapes
:

²
<OptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_5/Softmax_grad/mul_18^OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGrad
²
DOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1=^OptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_5/Softmax_grad/mul_1*
T0*
_output_shapes
:	

»
FOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

ç
1OptimizeLoss/gradients/dense_5/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependencydense_4/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

á
3OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1MatMuldense_4/ReluDOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	

­
;OptimizeLoss/gradients/dense_5/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1
±
COptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_5/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul*
T0* 
_output_shapes
:

¶
EOptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_5/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_5/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	

»
1OptimizeLoss/gradients/dense_4/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependencydense_4/Relu*
T0* 
_output_shapes
:

¶
7OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
²
<OptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad8^OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGrad
³
DOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad=^OptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_4/Relu_grad/ReluGrad*
T0* 
_output_shapes
:

¼
FOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
ç
1OptimizeLoss/gradients/dense_4/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependencydense_3/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

â
3OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1MatMuldense_3/ReluDOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:

­
;OptimizeLoss/gradients/dense_4/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1
±
COptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_4/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul*
T0* 
_output_shapes
:

·
EOptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_4/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_4/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

»
1OptimizeLoss/gradients/dense_3/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependencydense_3/Relu*
T0* 
_output_shapes
:

¶
7OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
²
<OptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad8^OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGrad
³
DOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad=^OptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_3/Relu_grad/ReluGrad*
T0* 
_output_shapes
:

¼
FOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
ç
1OptimizeLoss/gradients/dense_3/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependencydense_2/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

â
3OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1MatMuldense_2/ReluDOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:

­
;OptimizeLoss/gradients/dense_3/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1
±
COptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_3/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul*
T0* 
_output_shapes
:

·
EOptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_3/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_3/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

»
1OptimizeLoss/gradients/dense_2/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependencydense_2/Relu*
T0* 
_output_shapes
:

¶
7OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad1OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
²
<OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad8^OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad
³
DOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad=^OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_2/Relu_grad/ReluGrad*
T0* 
_output_shapes
:

¼
FOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity7OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad=^OptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/group_deps*J
_class@
><loc:@OptimizeLoss/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
ç
1OptimizeLoss/gradients/dense_2/MatMul_grad/MatMulMatMulDOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

à
3OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1MatMul
dense/ReluDOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:

­
;OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_depsNoOp2^OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul4^OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1
±
COptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity1OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul<^OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul*
T0* 
_output_shapes
:

·
EOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity3OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1<^OptimizeLoss/gradients/dense_2/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@OptimizeLoss/gradients/dense_2/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

·
/OptimizeLoss/gradients/dense/Relu_grad/ReluGradReluGradCOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency
dense/Relu*
T0* 
_output_shapes
:

²
5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad/OptimizeLoss/gradients/dense/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
¬
:OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_depsNoOp0^OptimizeLoss/gradients/dense/Relu_grad/ReluGrad6^OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad
«
BOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity/OptimizeLoss/gradients/dense/Relu_grad/ReluGrad;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*B
_class8
64loc:@OptimizeLoss/gradients/dense/Relu_grad/ReluGrad*
T0* 
_output_shapes
:

´
DOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity5OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad;^OptimizeLoss/gradients/dense/BiasAdd_grad/tuple/group_deps*H
_class>
<:loc:@OptimizeLoss/gradients/dense/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
á
/OptimizeLoss/gradients/dense/MatMul_grad/MatMulMatMulBOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
transpose_a( *
T0* 
_output_shapes
:

á
1OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1MatMulflatten/ReshapeBOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:

§
9OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_depsNoOp0^OptimizeLoss/gradients/dense/MatMul_grad/MatMul2^OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1
©
AOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependencyIdentity/OptimizeLoss/gradients/dense/MatMul_grad/MatMul:^OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_deps*B
_class8
64loc:@OptimizeLoss/gradients/dense/MatMul_grad/MatMul*
T0* 
_output_shapes
:

¯
COptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency_1Identity1OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1:^OptimizeLoss/gradients/dense/MatMul_grad/tuple/group_deps*D
_class:
86loc:@OptimizeLoss/gradients/dense/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:


1OptimizeLoss/gradients/flatten/Reshape_grad/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
õ
3OptimizeLoss/gradients/flatten/Reshape_grad/ReshapeReshapeAOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency1OptimizeLoss/gradients/flatten/Reshape_grad/Shape*
Tshape0*
T0*(
_output_shapes
:
±
?OptimizeLoss/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_4/Relumax_pooling2d_2/MaxPool3OptimizeLoss/gradients/flatten/Reshape_grad/Reshape*(
_output_shapes
:*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
Á
2OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGradReluGrad?OptimizeLoss/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradconv2d_4/Relu*
T0*(
_output_shapes
:
¸
8OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
µ
=OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/group_depsNoOp3^OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad9^OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad
¿
EOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_4/Relu_grad/ReluGrad*
T0*(
_output_shapes
:
À
GOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:

6OptimizeLoss/gradients/conv2d_4/convolution_grad/ShapeConst*
dtype0*%
valueB"   	   	      *
_output_shapes
:
û
DOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6OptimizeLoss/gradients/conv2d_4/convolution_grad/Shapeconv2d_3/kernel/readEOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*(
_output_shapes
:		*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

8OptimizeLoss/gradients/conv2d_4/convolution_grad/Shape_1Const*
dtype0*%
valueB"            *
_output_shapes
:

EOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d/MaxPool8OptimizeLoss/gradients/conv2d_4/convolution_grad/Shape_1EOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ø
AOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputF^OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilter
ë
IOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputB^OptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropInput*
T0*(
_output_shapes
:		
ï
KOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilterB^OptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
Ã
=OptimizeLoss/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_3/Relumax_pooling2d/MaxPoolIOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependency*(
_output_shapes
:*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0
¿
2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGradReluGrad=OptimizeLoss/gradients/max_pooling2d/MaxPool_grad/MaxPoolGradconv2d_3/Relu*
T0*(
_output_shapes
:
¸
8OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes	
:
µ
=OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_depsNoOp3^OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad9^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad
¿
EOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_3/Relu_grad/ReluGrad*
T0*(
_output_shapes
:
À
GOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:

6OptimizeLoss/gradients/conv2d_3/convolution_grad/ShapeConst*
dtype0*%
valueB"         @   *
_output_shapes
:
ú
DOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6OptimizeLoss/gradients/conv2d_3/convolution_grad/Shapeconv2d_2/kernel/readEOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
:@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

8OptimizeLoss/gradients/conv2d_3/convolution_grad/Shape_1Const*
dtype0*%
valueB"      @      *
_output_shapes
:
÷
EOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_2/Relu8OptimizeLoss/gradients/conv2d_3/convolution_grad/Shape_1EOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
:@*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ø
AOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputF^OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilter
ê
IOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputB^OptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropInput*
T0*'
_output_shapes
:@
î
KOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilterB^OptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
Ê
2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGradReluGradIOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependencyconv2d_2/Relu*
T0*'
_output_shapes
:@
·
8OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes
:@
µ
=OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_depsNoOp3^OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad9^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad
¾
EOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentity2OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad>^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@OptimizeLoss/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*'
_output_shapes
:@
¿
GOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Identity8OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad>^OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@OptimizeLoss/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@

6OptimizeLoss/gradients/conv2d_2/convolution_grad/ShapeConst*
dtype0*%
valueB"             *
_output_shapes
:
ú
DOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput6OptimizeLoss/gradients/conv2d_2/convolution_grad/Shapeconv2d_1/kernel/readEOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
: *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

8OptimizeLoss/gradients/conv2d_2/convolution_grad/Shape_1Const*
dtype0*%
valueB"          @   *
_output_shapes
:
ô
EOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d/Relu8OptimizeLoss/gradients/conv2d_2/convolution_grad/Shape_1EOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: @*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ø
AOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/group_depsNoOpE^OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputF^OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter
ê
IOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependencyIdentityDOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputB^OptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/group_deps*W
_classM
KIloc:@OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropInput*
T0*'
_output_shapes
: 
í
KOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependency_1IdentityEOptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilterB^OptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/group_deps*X
_classN
LJloc:@OptimizeLoss/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: @
Æ
0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGradReluGradIOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependencyconv2d/Relu*
T0*'
_output_shapes
: 
³
6OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes
: 
¯
;OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_depsNoOp1^OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad7^OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad
¶
COptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity0OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad<^OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_deps*C
_class9
75loc:@OptimizeLoss/gradients/conv2d/Relu_grad/ReluGrad*
T0*'
_output_shapes
: 
·
EOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity6OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad<^OptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/group_deps*I
_class?
=;loc:@OptimizeLoss/gradients/conv2d/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 

4OptimizeLoss/gradients/conv2d/convolution_grad/ShapeConst*
dtype0*%
valueB"            *
_output_shapes
:
ò
BOptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInputConv2DBackpropInput4OptimizeLoss/gradients/conv2d/convolution_grad/Shapeconv2d/kernel/readCOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

6OptimizeLoss/gradients/conv2d/convolution_grad/Shape_1Const*
dtype0*%
valueB"             *
_output_shapes
:

COptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilter"random_shuffle_queue_DequeueMany:16OptimizeLoss/gradients/conv2d/convolution_grad/Shape_1COptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: *
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0
Ò
?OptimizeLoss/gradients/conv2d/convolution_grad/tuple/group_depsNoOpC^OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInputD^OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilter
â
GOptimizeLoss/gradients/conv2d/convolution_grad/tuple/control_dependencyIdentityBOptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInput@^OptimizeLoss/gradients/conv2d/convolution_grad/tuple/group_deps*U
_classK
IGloc:@OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropInput*
T0*'
_output_shapes
:
å
IOptimizeLoss/gradients/conv2d/convolution_grad/tuple/control_dependency_1IdentityCOptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilter@^OptimizeLoss/gradients/conv2d/convolution_grad/tuple/group_deps*V
_classL
JHloc:@OptimizeLoss/gradients/conv2d/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: 
h
OptimizeLoss/loss/tagsConst*
dtype0*"
valueB BOptimizeLoss/loss*
_output_shapes
: 
}
OptimizeLoss/lossScalarSummaryOptimizeLoss/loss/tags softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
µ
<OptimizeLoss/train/update_conv2d/kernel/ApplyGradientDescentApplyGradientDescentconv2d/kernelOptimizeLoss/learning_rate/readIOptimizeLoss/gradients/conv2d/convolution_grad/tuple/control_dependency_1* 
_class
loc:@conv2d/kernel*
use_locking( *
T0*&
_output_shapes
: 

:OptimizeLoss/train/update_conv2d/bias/ApplyGradientDescentApplyGradientDescentconv2d/biasOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@conv2d/bias*
use_locking( *
T0*
_output_shapes
: 
½
>OptimizeLoss/train/update_conv2d_1/kernel/ApplyGradientDescentApplyGradientDescentconv2d_1/kernelOptimizeLoss/learning_rate/readKOptimizeLoss/gradients/conv2d_2/convolution_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_1/kernel*
use_locking( *
T0*&
_output_shapes
: @
§
<OptimizeLoss/train/update_conv2d_1/bias/ApplyGradientDescentApplyGradientDescentconv2d_1/biasOptimizeLoss/learning_rate/readGOptimizeLoss/gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_1/bias*
use_locking( *
T0*
_output_shapes
:@
¾
>OptimizeLoss/train/update_conv2d_2/kernel/ApplyGradientDescentApplyGradientDescentconv2d_2/kernelOptimizeLoss/learning_rate/readKOptimizeLoss/gradients/conv2d_3/convolution_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_2/kernel*
use_locking( *
T0*'
_output_shapes
:@
¨
<OptimizeLoss/train/update_conv2d_2/bias/ApplyGradientDescentApplyGradientDescentconv2d_2/biasOptimizeLoss/learning_rate/readGOptimizeLoss/gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_2/bias*
use_locking( *
T0*
_output_shapes	
:
¿
>OptimizeLoss/train/update_conv2d_3/kernel/ApplyGradientDescentApplyGradientDescentconv2d_3/kernelOptimizeLoss/learning_rate/readKOptimizeLoss/gradients/conv2d_4/convolution_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_3/kernel*
use_locking( *
T0*(
_output_shapes
:
¨
<OptimizeLoss/train/update_conv2d_3/bias/ApplyGradientDescentApplyGradientDescentconv2d_3/biasOptimizeLoss/learning_rate/readGOptimizeLoss/gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1* 
_class
loc:@conv2d_3/bias*
use_locking( *
T0*
_output_shapes	
:
¦
;OptimizeLoss/train/update_dense/kernel/ApplyGradientDescentApplyGradientDescentdense/kernelOptimizeLoss/learning_rate/readCOptimizeLoss/gradients/dense/MatMul_grad/tuple/control_dependency_1*
_class
loc:@dense/kernel*
use_locking( *
T0* 
_output_shapes
:


9OptimizeLoss/train/update_dense/bias/ApplyGradientDescentApplyGradientDescent
dense/biasOptimizeLoss/learning_rate/readDOptimizeLoss/gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense/bias*
use_locking( *
T0*
_output_shapes	
:
®
=OptimizeLoss/train/update_dense_1/kernel/ApplyGradientDescentApplyGradientDescentdense_1/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_2/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_1/kernel*
use_locking( *
T0* 
_output_shapes
:

¤
;OptimizeLoss/train/update_dense_1/bias/ApplyGradientDescentApplyGradientDescentdense_1/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_1/bias*
use_locking( *
T0*
_output_shapes	
:
®
=OptimizeLoss/train/update_dense_2/kernel/ApplyGradientDescentApplyGradientDescentdense_2/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_3/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_2/kernel*
use_locking( *
T0* 
_output_shapes
:

¤
;OptimizeLoss/train/update_dense_2/bias/ApplyGradientDescentApplyGradientDescentdense_2/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_2/bias*
use_locking( *
T0*
_output_shapes	
:
®
=OptimizeLoss/train/update_dense_3/kernel/ApplyGradientDescentApplyGradientDescentdense_3/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_4/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_3/kernel*
use_locking( *
T0* 
_output_shapes
:

¤
;OptimizeLoss/train/update_dense_3/bias/ApplyGradientDescentApplyGradientDescentdense_3/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_3/bias*
use_locking( *
T0*
_output_shapes	
:
­
=OptimizeLoss/train/update_dense_4/kernel/ApplyGradientDescentApplyGradientDescentdense_4/kernelOptimizeLoss/learning_rate/readEOptimizeLoss/gradients/dense_5/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_4/kernel*
use_locking( *
T0*
_output_shapes
:	

£
;OptimizeLoss/train/update_dense_4/bias/ApplyGradientDescentApplyGradientDescentdense_4/biasOptimizeLoss/learning_rate/readFOptimizeLoss/gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_4/bias*
use_locking( *
T0*
_output_shapes
:

	
OptimizeLoss/train/updateNoOp=^OptimizeLoss/train/update_conv2d/kernel/ApplyGradientDescent;^OptimizeLoss/train/update_conv2d/bias/ApplyGradientDescent?^OptimizeLoss/train/update_conv2d_1/kernel/ApplyGradientDescent=^OptimizeLoss/train/update_conv2d_1/bias/ApplyGradientDescent?^OptimizeLoss/train/update_conv2d_2/kernel/ApplyGradientDescent=^OptimizeLoss/train/update_conv2d_2/bias/ApplyGradientDescent?^OptimizeLoss/train/update_conv2d_3/kernel/ApplyGradientDescent=^OptimizeLoss/train/update_conv2d_3/bias/ApplyGradientDescent<^OptimizeLoss/train/update_dense/kernel/ApplyGradientDescent:^OptimizeLoss/train/update_dense/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_1/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_1/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_2/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_2/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_3/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_3/bias/ApplyGradientDescent>^OptimizeLoss/train/update_dense_4/kernel/ApplyGradientDescent<^OptimizeLoss/train/update_dense_4/bias/ApplyGradientDescent

OptimizeLoss/train/valueConst^OptimizeLoss/train/update*
dtype0	*
_class
loc:@global_step*
value	B	 R*
_output_shapes
: 

OptimizeLoss/train	AssignAddglobal_stepOptimizeLoss/train/value*
_class
loc:@global_step*
use_locking( *
T0	*
_output_shapes
: 
¸
OptimizeLoss/control_dependencyIdentity softmax_cross_entropy_loss/value^OptimizeLoss/train*3
_class)
'%loc:@softmax_cross_entropy_loss/value*
T0*
_output_shapes
: 
R
ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
e
ArgMaxArgMaxdense_5/SoftmaxArgMax/dimension*

Tidx0*
T0*
_output_shapes	
:
M
SoftmaxSoftmaxdense_5/Softmax*
T0*
_output_shapes
:	

T
ArgMax_1/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
i
ArgMax_1ArgMaxdense_5/SoftmaxArgMax_1/dimension*

Tidx0*
T0*
_output_shapes	
:
T
ArgMax_2/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
|
ArgMax_2ArgMax"random_shuffle_queue_DequeueMany:2ArgMax_2/dimension*

Tidx0*
T0*
_output_shapes	
:
H
EqualEqualArgMax_2ArgMax_1*
T0	*
_output_shapes	
:
K
ToFloatCastEqual*

DstT0*

SrcT0
*
_output_shapes	
:
S
accuracy/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
r
accuracy/total
VariableV2*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: 
¬
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*
validate_shape(*!
_class
loc:@accuracy/total*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/total/readIdentityaccuracy/total*!
_class
loc:@accuracy/total*
T0*
_output_shapes
: 
U
accuracy/zeros_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
r
accuracy/count
VariableV2*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: 
®
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*
validate_shape(*!
_class
loc:@accuracy/count*
use_locking(*
T0*
_output_shapes
: 
s
accuracy/count/readIdentityaccuracy/count*!
_class
loc:@accuracy/count*
T0*
_output_shapes
: 
P
accuracy/SizeConst*
dtype0*
value
B :*
_output_shapes
: 
Y
accuracy/ToFloat_1Castaccuracy/Size*

DstT0*

SrcT0*
_output_shapes
: 
X
accuracy/ConstConst*
dtype0*
valueB: *
_output_shapes
:
j
accuracy/SumSumToFloataccuracy/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 

accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*!
_class
loc:@accuracy/total*
use_locking( *
T0*
_output_shapes
: 
¦
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1^ToFloat*!
_class
loc:@accuracy/count*
use_locking( *
T0*
_output_shapes
: 
W
accuracy/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
e
accuracy/GreaterGreateraccuracy/count/readaccuracy/Greater/y*
T0*
_output_shapes
: 
f
accuracy/truedivRealDivaccuracy/total/readaccuracy/count/read*
T0*
_output_shapes
: 
U
accuracy/value/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
o
accuracy/valueSelectaccuracy/Greateraccuracy/truedivaccuracy/value/e*
T0*
_output_shapes
: 
Y
accuracy/Greater_1/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
j
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/Greater_1/y*
T0*
_output_shapes
: 
h
accuracy/truediv_1RealDivaccuracy/AssignAddaccuracy/AssignAdd_1*
T0*
_output_shapes
: 
Y
accuracy/update_op/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
{
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/update_op/e*
T0*
_output_shapes
: 
ã
initNoOp^global_step/Assign^conv2d/kernel/Assign^conv2d/bias/Assign^conv2d_1/kernel/Assign^conv2d_1/bias/Assign^conv2d_2/kernel/Assign^conv2d_2/bias/Assign^conv2d_3/kernel/Assign^conv2d_3/bias/Assign^dense/kernel/Assign^dense/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign^dense_2/kernel/Assign^dense_2/bias/Assign^dense_3/kernel/Assign^dense_3/bias/Assign^dense_4/kernel/Assign^dense_4/bias/Assign"^OptimizeLoss/learning_rate/Assign

init_1NoOp
"

group_depsNoOp^init^init_1

4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
¥
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitializedconv2d/kernel*
dtype0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
¡
6report_uninitialized_variables/IsVariableInitialized_2IsVariableInitializedconv2d/bias*
dtype0*
_class
loc:@conv2d/bias*
_output_shapes
: 
©
6report_uninitialized_variables/IsVariableInitialized_3IsVariableInitializedconv2d_1/kernel*
dtype0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
¥
6report_uninitialized_variables/IsVariableInitialized_4IsVariableInitializedconv2d_1/bias*
dtype0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
©
6report_uninitialized_variables/IsVariableInitialized_5IsVariableInitializedconv2d_2/kernel*
dtype0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
¥
6report_uninitialized_variables/IsVariableInitialized_6IsVariableInitializedconv2d_2/bias*
dtype0* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 
©
6report_uninitialized_variables/IsVariableInitialized_7IsVariableInitializedconv2d_3/kernel*
dtype0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
¥
6report_uninitialized_variables/IsVariableInitialized_8IsVariableInitializedconv2d_3/bias*
dtype0* 
_class
loc:@conv2d_3/bias*
_output_shapes
: 
£
6report_uninitialized_variables/IsVariableInitialized_9IsVariableInitializeddense/kernel*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
 
7report_uninitialized_variables/IsVariableInitialized_10IsVariableInitialized
dense/bias*
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
¨
7report_uninitialized_variables/IsVariableInitialized_11IsVariableInitializeddense_1/kernel*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
¤
7report_uninitialized_variables/IsVariableInitialized_12IsVariableInitializeddense_1/bias*
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
: 
¨
7report_uninitialized_variables/IsVariableInitialized_13IsVariableInitializeddense_2/kernel*
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
¤
7report_uninitialized_variables/IsVariableInitialized_14IsVariableInitializeddense_2/bias*
dtype0*
_class
loc:@dense_2/bias*
_output_shapes
: 
¨
7report_uninitialized_variables/IsVariableInitialized_15IsVariableInitializeddense_3/kernel*
dtype0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
¤
7report_uninitialized_variables/IsVariableInitialized_16IsVariableInitializeddense_3/bias*
dtype0*
_class
loc:@dense_3/bias*
_output_shapes
: 
¨
7report_uninitialized_variables/IsVariableInitialized_17IsVariableInitializeddense_4/kernel*
dtype0*!
_class
loc:@dense_4/kernel*
_output_shapes
: 
¤
7report_uninitialized_variables/IsVariableInitialized_18IsVariableInitializeddense_4/bias*
dtype0*
_class
loc:@dense_4/bias*
_output_shapes
: 
À
7report_uninitialized_variables/IsVariableInitialized_19IsVariableInitializedOptimizeLoss/learning_rate*
dtype0*-
_class#
!loc:@OptimizeLoss/learning_rate*
_output_shapes
: 
¨
7report_uninitialized_variables/IsVariableInitialized_20IsVariableInitializedaccuracy/total*
dtype0*!
_class
loc:@accuracy/total*
_output_shapes
: 
¨
7report_uninitialized_variables/IsVariableInitialized_21IsVariableInitializedaccuracy/count*
dtype0*!
_class
loc:@accuracy/count*
_output_shapes
: 
À

$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_16report_uninitialized_variables/IsVariableInitialized_26report_uninitialized_variables/IsVariableInitialized_36report_uninitialized_variables/IsVariableInitialized_46report_uninitialized_variables/IsVariableInitialized_56report_uninitialized_variables/IsVariableInitialized_66report_uninitialized_variables/IsVariableInitialized_76report_uninitialized_variables/IsVariableInitialized_86report_uninitialized_variables/IsVariableInitialized_97report_uninitialized_variables/IsVariableInitialized_107report_uninitialized_variables/IsVariableInitialized_117report_uninitialized_variables/IsVariableInitialized_127report_uninitialized_variables/IsVariableInitialized_137report_uninitialized_variables/IsVariableInitialized_147report_uninitialized_variables/IsVariableInitialized_157report_uninitialized_variables/IsVariableInitialized_167report_uninitialized_variables/IsVariableInitialized_177report_uninitialized_variables/IsVariableInitialized_187report_uninitialized_variables/IsVariableInitialized_197report_uninitialized_variables/IsVariableInitialized_207report_uninitialized_variables/IsVariableInitialized_21*
_output_shapes
:*

axis *
T0
*
N
y
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack*
_output_shapes
:
Å
$report_uninitialized_variables/ConstConst*
dtype0*ì
valueâBßBglobal_stepBconv2d/kernelBconv2d/biasBconv2d_1/kernelBconv2d_1/biasBconv2d_2/kernelBconv2d_2/biasBconv2d_3/kernelBconv2d_3/biasBdense/kernelB
dense/biasBdense_1/kernelBdense_1/biasBdense_2/kernelBdense_2/biasBdense_3/kernelBdense_3/biasBdense_4/kernelBdense_4/biasBOptimizeLoss/learning_rateBaccuracy/totalBaccuracy/count*
_output_shapes
:
{
1report_uninitialized_variables/boolean_mask/ShapeConst*
dtype0*
valueB:*
_output_shapes
:

?report_uninitialized_variables/boolean_mask/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ù
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 

Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
õ
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
}
3report_uninitialized_variables/boolean_mask/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
á
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
¯
;report_uninitialized_variables/boolean_mask/concat/values_0Pack0report_uninitialized_variables/boolean_mask/Prod*
_output_shapes
:*

axis *
T0*
N
y
7report_uninitialized_variables/boolean_mask/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
«
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/concat/values_0;report_uninitialized_variables/boolean_mask/strided_slice_17report_uninitialized_variables/boolean_mask/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
Ë
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat*
Tshape0*
T0*
_output_shapes
:

;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
:
Û
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape*
Tshape0*
T0
*
_output_shapes
:

1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¶
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where*
squeeze_dims
*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

2report_uninitialized_variables/boolean_mask/GatherGather3report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
$report_uninitialized_resources/ConstConst*
dtype0*
valueB *
_output_shapes
: 
M
concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
¼
concatConcatV22report_uninitialized_variables/boolean_mask/Gather$report_uninitialized_resources/Constconcat/axis*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

Tidx0*
T0*
N
¡
6report_uninitialized_variables_1/IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
§
8report_uninitialized_variables_1/IsVariableInitialized_1IsVariableInitializedconv2d/kernel*
dtype0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
£
8report_uninitialized_variables_1/IsVariableInitialized_2IsVariableInitializedconv2d/bias*
dtype0*
_class
loc:@conv2d/bias*
_output_shapes
: 
«
8report_uninitialized_variables_1/IsVariableInitialized_3IsVariableInitializedconv2d_1/kernel*
dtype0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
§
8report_uninitialized_variables_1/IsVariableInitialized_4IsVariableInitializedconv2d_1/bias*
dtype0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
«
8report_uninitialized_variables_1/IsVariableInitialized_5IsVariableInitializedconv2d_2/kernel*
dtype0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
§
8report_uninitialized_variables_1/IsVariableInitialized_6IsVariableInitializedconv2d_2/bias*
dtype0* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 
«
8report_uninitialized_variables_1/IsVariableInitialized_7IsVariableInitializedconv2d_3/kernel*
dtype0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
§
8report_uninitialized_variables_1/IsVariableInitialized_8IsVariableInitializedconv2d_3/bias*
dtype0* 
_class
loc:@conv2d_3/bias*
_output_shapes
: 
¥
8report_uninitialized_variables_1/IsVariableInitialized_9IsVariableInitializeddense/kernel*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
¢
9report_uninitialized_variables_1/IsVariableInitialized_10IsVariableInitialized
dense/bias*
dtype0*
_class
loc:@dense/bias*
_output_shapes
: 
ª
9report_uninitialized_variables_1/IsVariableInitialized_11IsVariableInitializeddense_1/kernel*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
¦
9report_uninitialized_variables_1/IsVariableInitialized_12IsVariableInitializeddense_1/bias*
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
: 
ª
9report_uninitialized_variables_1/IsVariableInitialized_13IsVariableInitializeddense_2/kernel*
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
¦
9report_uninitialized_variables_1/IsVariableInitialized_14IsVariableInitializeddense_2/bias*
dtype0*
_class
loc:@dense_2/bias*
_output_shapes
: 
ª
9report_uninitialized_variables_1/IsVariableInitialized_15IsVariableInitializeddense_3/kernel*
dtype0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
¦
9report_uninitialized_variables_1/IsVariableInitialized_16IsVariableInitializeddense_3/bias*
dtype0*
_class
loc:@dense_3/bias*
_output_shapes
: 
ª
9report_uninitialized_variables_1/IsVariableInitialized_17IsVariableInitializeddense_4/kernel*
dtype0*!
_class
loc:@dense_4/kernel*
_output_shapes
: 
¦
9report_uninitialized_variables_1/IsVariableInitialized_18IsVariableInitializeddense_4/bias*
dtype0*
_class
loc:@dense_4/bias*
_output_shapes
: 
Â
9report_uninitialized_variables_1/IsVariableInitialized_19IsVariableInitializedOptimizeLoss/learning_rate*
dtype0*-
_class#
!loc:@OptimizeLoss/learning_rate*
_output_shapes
: 
ø	
&report_uninitialized_variables_1/stackPack6report_uninitialized_variables_1/IsVariableInitialized8report_uninitialized_variables_1/IsVariableInitialized_18report_uninitialized_variables_1/IsVariableInitialized_28report_uninitialized_variables_1/IsVariableInitialized_38report_uninitialized_variables_1/IsVariableInitialized_48report_uninitialized_variables_1/IsVariableInitialized_58report_uninitialized_variables_1/IsVariableInitialized_68report_uninitialized_variables_1/IsVariableInitialized_78report_uninitialized_variables_1/IsVariableInitialized_88report_uninitialized_variables_1/IsVariableInitialized_99report_uninitialized_variables_1/IsVariableInitialized_109report_uninitialized_variables_1/IsVariableInitialized_119report_uninitialized_variables_1/IsVariableInitialized_129report_uninitialized_variables_1/IsVariableInitialized_139report_uninitialized_variables_1/IsVariableInitialized_149report_uninitialized_variables_1/IsVariableInitialized_159report_uninitialized_variables_1/IsVariableInitialized_169report_uninitialized_variables_1/IsVariableInitialized_179report_uninitialized_variables_1/IsVariableInitialized_189report_uninitialized_variables_1/IsVariableInitialized_19*
_output_shapes
:*

axis *
T0
*
N
}
+report_uninitialized_variables_1/LogicalNot
LogicalNot&report_uninitialized_variables_1/stack*
_output_shapes
:
§
&report_uninitialized_variables_1/ConstConst*
dtype0*Ì
valueÂB¿Bglobal_stepBconv2d/kernelBconv2d/biasBconv2d_1/kernelBconv2d_1/biasBconv2d_2/kernelBconv2d_2/biasBconv2d_3/kernelBconv2d_3/biasBdense/kernelB
dense/biasBdense_1/kernelBdense_1/biasBdense_2/kernelBdense_2/biasBdense_3/kernelBdense_3/biasBdense_4/kernelBdense_4/biasBOptimizeLoss/learning_rate*
_output_shapes
:
}
3report_uninitialized_variables_1/boolean_mask/ShapeConst*
dtype0*
valueB:*
_output_shapes
:

Areport_uninitialized_variables_1/boolean_mask/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ã
;report_uninitialized_variables_1/boolean_mask/strided_sliceStridedSlice3report_uninitialized_variables_1/boolean_mask/ShapeAreport_uninitialized_variables_1/boolean_mask/strided_slice/stackCreport_uninitialized_variables_1/boolean_mask/strided_slice/stack_1Creport_uninitialized_variables_1/boolean_mask/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 

Dreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
û
2report_uninitialized_variables_1/boolean_mask/ProdProd;report_uninitialized_variables_1/boolean_mask/strided_sliceDreport_uninitialized_variables_1/boolean_mask/Prod/reduction_indices*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 

5report_uninitialized_variables_1/boolean_mask/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:

Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:

Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ë
=report_uninitialized_variables_1/boolean_mask/strided_slice_1StridedSlice5report_uninitialized_variables_1/boolean_mask/Shape_1Creport_uninitialized_variables_1/boolean_mask/strided_slice_1/stackEreport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_1Ereport_uninitialized_variables_1/boolean_mask/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
³
=report_uninitialized_variables_1/boolean_mask/concat/values_0Pack2report_uninitialized_variables_1/boolean_mask/Prod*
_output_shapes
:*

axis *
T0*
N
{
9report_uninitialized_variables_1/boolean_mask/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
³
4report_uninitialized_variables_1/boolean_mask/concatConcatV2=report_uninitialized_variables_1/boolean_mask/concat/values_0=report_uninitialized_variables_1/boolean_mask/strided_slice_19report_uninitialized_variables_1/boolean_mask/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
Ñ
5report_uninitialized_variables_1/boolean_mask/ReshapeReshape&report_uninitialized_variables_1/Const4report_uninitialized_variables_1/boolean_mask/concat*
Tshape0*
T0*
_output_shapes
:

=report_uninitialized_variables_1/boolean_mask/Reshape_1/shapeConst*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ*
_output_shapes
:
á
7report_uninitialized_variables_1/boolean_mask/Reshape_1Reshape+report_uninitialized_variables_1/LogicalNot=report_uninitialized_variables_1/boolean_mask/Reshape_1/shape*
Tshape0*
T0
*
_output_shapes
:

3report_uninitialized_variables_1/boolean_mask/WhereWhere7report_uninitialized_variables_1/boolean_mask/Reshape_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
º
5report_uninitialized_variables_1/boolean_mask/SqueezeSqueeze3report_uninitialized_variables_1/boolean_mask/Where*
squeeze_dims
*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

4report_uninitialized_variables_1/boolean_mask/GatherGather5report_uninitialized_variables_1/boolean_mask/Reshape5report_uninitialized_variables_1/boolean_mask/Squeeze*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>
init_2NoOp^accuracy/total/Assign^accuracy/count/Assign

init_all_tablesNoOp
/
group_deps_1NoOp^init_2^init_all_tables
­
Merge/MergeSummaryMergeSummaryUenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_fullOptimizeLoss/loss*
N*
_output_shapes
: 
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 

save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_98efcd7c667844ee92acbe71a8d130a1/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 

save/SaveV2/tensor_namesConst*
dtype0*Ì
valueÂB¿BOptimizeLoss/learning_rateBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBdense_4/biasBdense_4/kernelBglobal_step*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:
¾
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesOptimizeLoss/learning_rateconv2d/biasconv2d/kernelconv2d_1/biasconv2d_1/kernelconv2d_2/biasconv2d_2/kernelconv2d_3/biasconv2d_3/kernel
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kerneldense_3/biasdense_3/kerneldense_4/biasdense_4/kernelglobal_step*"
dtypes
2	

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
_output_shapes
:*

axis *
T0*
N
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
~
save/RestoreV2/tensor_namesConst*
dtype0*/
value&B$BOptimizeLoss/learning_rate*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
º
save/AssignAssignOptimizeLoss/learning_ratesave/RestoreV2*
validate_shape(*-
_class#
!loc:@OptimizeLoss/learning_rate*
use_locking(*
T0*
_output_shapes
: 
q
save/RestoreV2_1/tensor_namesConst*
dtype0* 
valueBBconv2d/bias*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
¤
save/Assign_1Assignconv2d/biassave/RestoreV2_1*
validate_shape(*
_class
loc:@conv2d/bias*
use_locking(*
T0*
_output_shapes
: 
s
save/RestoreV2_2/tensor_namesConst*
dtype0*"
valueBBconv2d/kernel*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
´
save/Assign_2Assignconv2d/kernelsave/RestoreV2_2*
validate_shape(* 
_class
loc:@conv2d/kernel*
use_locking(*
T0*&
_output_shapes
: 
s
save/RestoreV2_3/tensor_namesConst*
dtype0*"
valueBBconv2d_1/bias*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
¨
save/Assign_3Assignconv2d_1/biassave/RestoreV2_3*
validate_shape(* 
_class
loc:@conv2d_1/bias*
use_locking(*
T0*
_output_shapes
:@
u
save/RestoreV2_4/tensor_namesConst*
dtype0*$
valueBBconv2d_1/kernel*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
¸
save/Assign_4Assignconv2d_1/kernelsave/RestoreV2_4*
validate_shape(*"
_class
loc:@conv2d_1/kernel*
use_locking(*
T0*&
_output_shapes
: @
s
save/RestoreV2_5/tensor_namesConst*
dtype0*"
valueBBconv2d_2/bias*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
©
save/Assign_5Assignconv2d_2/biassave/RestoreV2_5*
validate_shape(* 
_class
loc:@conv2d_2/bias*
use_locking(*
T0*
_output_shapes	
:
u
save/RestoreV2_6/tensor_namesConst*
dtype0*$
valueBBconv2d_2/kernel*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
¹
save/Assign_6Assignconv2d_2/kernelsave/RestoreV2_6*
validate_shape(*"
_class
loc:@conv2d_2/kernel*
use_locking(*
T0*'
_output_shapes
:@
s
save/RestoreV2_7/tensor_namesConst*
dtype0*"
valueBBconv2d_3/bias*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
©
save/Assign_7Assignconv2d_3/biassave/RestoreV2_7*
validate_shape(* 
_class
loc:@conv2d_3/bias*
use_locking(*
T0*
_output_shapes	
:
u
save/RestoreV2_8/tensor_namesConst*
dtype0*$
valueBBconv2d_3/kernel*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
º
save/Assign_8Assignconv2d_3/kernelsave/RestoreV2_8*
validate_shape(*"
_class
loc:@conv2d_3/kernel*
use_locking(*
T0*(
_output_shapes
:
p
save/RestoreV2_9/tensor_namesConst*
dtype0*
valueBB
dense/bias*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
£
save/Assign_9Assign
dense/biassave/RestoreV2_9*
validate_shape(*
_class
loc:@dense/bias*
use_locking(*
T0*
_output_shapes	
:
s
save/RestoreV2_10/tensor_namesConst*
dtype0*!
valueBBdense/kernel*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
®
save/Assign_10Assigndense/kernelsave/RestoreV2_10*
validate_shape(*
_class
loc:@dense/kernel*
use_locking(*
T0* 
_output_shapes
:

s
save/RestoreV2_11/tensor_namesConst*
dtype0*!
valueBBdense_1/bias*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
©
save/Assign_11Assigndense_1/biassave/RestoreV2_11*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes	
:
u
save/RestoreV2_12/tensor_namesConst*
dtype0*#
valueBBdense_1/kernel*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
²
save/Assign_12Assigndense_1/kernelsave/RestoreV2_12*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:

s
save/RestoreV2_13/tensor_namesConst*
dtype0*!
valueBBdense_2/bias*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
©
save/Assign_13Assigndense_2/biassave/RestoreV2_13*
validate_shape(*
_class
loc:@dense_2/bias*
use_locking(*
T0*
_output_shapes	
:
u
save/RestoreV2_14/tensor_namesConst*
dtype0*#
valueBBdense_2/kernel*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
²
save/Assign_14Assigndense_2/kernelsave/RestoreV2_14*
validate_shape(*!
_class
loc:@dense_2/kernel*
use_locking(*
T0* 
_output_shapes
:

s
save/RestoreV2_15/tensor_namesConst*
dtype0*!
valueBBdense_3/bias*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
©
save/Assign_15Assigndense_3/biassave/RestoreV2_15*
validate_shape(*
_class
loc:@dense_3/bias*
use_locking(*
T0*
_output_shapes	
:
u
save/RestoreV2_16/tensor_namesConst*
dtype0*#
valueBBdense_3/kernel*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
²
save/Assign_16Assigndense_3/kernelsave/RestoreV2_16*
validate_shape(*!
_class
loc:@dense_3/kernel*
use_locking(*
T0* 
_output_shapes
:

s
save/RestoreV2_17/tensor_namesConst*
dtype0*!
valueBBdense_4/bias*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
¨
save/Assign_17Assigndense_4/biassave/RestoreV2_17*
validate_shape(*
_class
loc:@dense_4/bias*
use_locking(*
T0*
_output_shapes
:

u
save/RestoreV2_18/tensor_namesConst*
dtype0*#
valueBBdense_4/kernel*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
±
save/Assign_18Assigndense_4/kernelsave/RestoreV2_18*
validate_shape(*!
_class
loc:@dense_4/kernel*
use_locking(*
T0*
_output_shapes
:	

r
save/RestoreV2_19/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2	*
_output_shapes
:
¢
save/Assign_19Assignglobal_stepsave/RestoreV2_19*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
â
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"U
ready_for_local_init_op:
8
6report_uninitialized_variables_1/boolean_mask/Gather:0" 
global_step

global_step:0"	
trainable_variablesñî
=
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:0
7
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:0
C
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:0
=
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:0
C
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:0
=
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:0
C
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:0
=
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:0
:
dense/kernel:0dense/kernel/Assigndense/kernel/read:0
4
dense/bias:0dense/bias/Assigndense/bias/read:0
@
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:0
:
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:0
@
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:0
:
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:0
@
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:0
:
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:0
@
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:0
:
dense_4/bias:0dense_4/bias/Assigndense_4/bias/read:0"!
local_init_op

group_deps_1"

	variables


7
global_step:0global_step/Assignglobal_step/read:0
=
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:0
7
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:0
C
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:0
=
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:0
C
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:0
=
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:0
C
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:0
=
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:0
:
dense/kernel:0dense/kernel/Assigndense/kernel/read:0
4
dense/bias:0dense/bias/Assigndense/bias/read:0
@
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:0
:
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:0
@
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:0
:
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:0
@
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:0
:
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:0
@
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:0
:
dense_4/bias:0dense_4/bias/Assigndense_4/bias/read:0
d
OptimizeLoss/learning_rate:0!OptimizeLoss/learning_rate/Assign!OptimizeLoss/learning_rate/read:0"T
lossesJ
H
"softmax_cross_entropy_loss/value:0
"softmax_cross_entropy_loss/value:0"}
	summariesp
n
Wenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full:0
OptimizeLoss/loss:0""
train_op

OptimizeLoss/train"9
local_variables&
$
accuracy/total:0
accuracy/count:0"Ü
queue_runnersÊÇ
Ä
"enqueue_input/random_shuffle_queue.enqueue_input/random_shuffle_queue_EnqueueMany0enqueue_input/random_shuffle_queue_EnqueueMany_10enqueue_input/random_shuffle_queue_EnqueueMany_20enqueue_input/random_shuffle_queue_EnqueueMany_3(enqueue_input/random_shuffle_queue_Close"*enqueue_input/random_shuffle_queue_Close_1*"J
savers@>
<
save/Const:0save/Identity:0save/restore_all (5 @F8"&

summary_op

Merge/MergeSummary:0"
ready_op


concat:0"
init_op


group_deps½úÿ;       #¬\	s+0×ºRÖA:.*comparing_big_model/workstation/model.ckpt¼¡&m       mS+		Ë,0×ºRÖA:Sãn       éÌY	Z/0×ºRÖA*x
\
Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full  ?

OptimizeLoss/loss[@&¯Ó'%       ê¼6ó	ûåäºRÖAe*

global_step/sec¬Eï? ¹OÈ       éÌY	xìäºRÖAe*x
\
Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full  ?

OptimizeLoss/lossþ]@ìsà&       sOã 	)`ïºRÖAÉ*

global_step/secwö@=¿       p\	@/`ïºRÖAÉ*x
\
Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full  ?

OptimizeLoss/lossY@>{©&       sOã 	_¶´úºRÖA­*

global_step/secé6@ûÂÍþ       p\	º´úºRÖA­*x
\
Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full  ?

OptimizeLoss/loss	W@Ý®Jî&       sOã 	bù»RÖA*

global_step/sec:@ÁXÑ       p\	üÿ»RÖA*x
\
Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full  ?

OptimizeLoss/lossªU@2ý&       sOã 	´6»RÖAõ*

global_step/secé"@9()       p\	6»RÖAõ*x
\
Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full  ?

OptimizeLoss/lossêS@[eÏÉ&       sOã 	¾¼»RÖAÙ*

global_step/sec×
@ÌïaP       p\	µÄ¼»RÖAÙ*x
\
Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full  ?

OptimizeLoss/lossS@»&       sOã 	`")»RÖA½*

global_step/secñ@!Ë       p\	í")»RÖA½*x
\
Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full  ?

OptimizeLoss/loss?O@æI]&       sOã 	ÍN5»RÖA¡*

global_step/secåj@uSl       p\	9ÔN5»RÖA¡*x
\
Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full  ?

OptimizeLoss/loss,J@ÎÐ2&       sOã 	ÀuA»RÖA*

global_step/secKK@ÁÏH       p\	Ì|A»RÖA*x
\
Uenqueue_input/queue/enqueue_input/random_shuffle_queuefraction_over_2500_of_7500_full  ?

OptimizeLoss/loss«J@á¨n¢<       È·£R	ó8N»RÖAè:.*comparing_big_model/workstation/model.ckptÈ}Ãÿ