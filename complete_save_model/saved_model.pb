¸£
Î
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
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
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68¤¾
­
(recommender_net_1/embedding_4/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	â2*9
shared_name*(recommender_net_1/embedding_4/embeddings
¦
<recommender_net_1/embedding_4/embeddings/Read/ReadVariableOpReadVariableOp(recommender_net_1/embedding_4/embeddings*
_output_shapes
:	â2*
dtype0
­
(recommender_net_1/embedding_5/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	â*9
shared_name*(recommender_net_1/embedding_5/embeddings
¦
<recommender_net_1/embedding_5/embeddings/Read/ReadVariableOpReadVariableOp(recommender_net_1/embedding_5/embeddings*
_output_shapes
:	â*
dtype0
­
(recommender_net_1/embedding_6/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	üK2*9
shared_name*(recommender_net_1/embedding_6/embeddings
¦
<recommender_net_1/embedding_6/embeddings/Read/ReadVariableOpReadVariableOp(recommender_net_1/embedding_6/embeddings*
_output_shapes
:	üK2*
dtype0
­
(recommender_net_1/embedding_7/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	üK*9
shared_name*(recommender_net_1/embedding_7/embeddings
¦
<recommender_net_1/embedding_7/embeddings/Read/ReadVariableOpReadVariableOp(recommender_net_1/embedding_7/embeddings*
_output_shapes
:	üK*
dtype0

NoOpNoOp
 
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Û
valueÑBÎ BÇ

user_embedding
	user_bias
movie_embedding

movie_bias
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
 

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
 

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
 

embeddings
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses*
 
#
embeddings
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses*
* 
 
0
1
2
#3*
 
0
1
2
#3*

*0
+1* 
°
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

1serving_default* 
vp
VARIABLE_VALUE(recommender_net_1/embedding_4/embeddings4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
	
*0* 

2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
qk
VARIABLE_VALUE(recommender_net_1/embedding_5/embeddings/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 

7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
wq
VARIABLE_VALUE(recommender_net_1/embedding_6/embeddings5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
	
+0* 

<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*
* 
* 
rl
VARIABLE_VALUE(recommender_net_1/embedding_7/embeddings0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

#0*

#0*
* 

Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
 
0
1
2
3*
* 
* 
* 
* 
* 
* 
* 
	
*0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
+0* 
* 
* 
* 
* 
* 
* 
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
à
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1(recommender_net_1/embedding_4/embeddings(recommender_net_1/embedding_5/embeddings(recommender_net_1/embedding_6/embeddings(recommender_net_1/embedding_7/embeddings*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_1731
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename<recommender_net_1/embedding_4/embeddings/Read/ReadVariableOp<recommender_net_1/embedding_5/embeddings/Read/ReadVariableOp<recommender_net_1/embedding_6/embeddings/Read/ReadVariableOp<recommender_net_1/embedding_7/embeddings/Read/ReadVariableOpConst*
Tin

2*
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
GPU 2J 8 *&
f!R
__inference__traced_save_1876
À
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(recommender_net_1/embedding_4/embeddings(recommender_net_1/embedding_5/embeddings(recommender_net_1/embedding_6/embeddings(recommender_net_1/embedding_7/embeddings*
Tin	
2*
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
GPU 2J 8 *)
f$R"
 __inference__traced_restore_1898ù
ý
â
__inference_loss_fn_1_1841f
Srecommender_net_1_embedding_6_embeddings_regularizer_square_readvariableop_resource:	üK2
identity¢Jrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOpß
Jrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpSrecommender_net_1_embedding_6_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	üK2*
dtype0Ã
;recommender_net_1/embedding_6/embeddings/Regularizer/SquareSquareRrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	üK2
:recommender_net_1/embedding_6/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       æ
8recommender_net_1/embedding_6/embeddings/Regularizer/SumSum?recommender_net_1/embedding_6/embeddings/Regularizer/Square:y:0Crecommender_net_1/embedding_6/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
:recommender_net_1/embedding_6/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75è
8recommender_net_1/embedding_6/embeddings/Regularizer/mulMulCrecommender_net_1/embedding_6/embeddings/Regularizer/mul/x:output:0Arecommender_net_1/embedding_6/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: z
IdentityIdentity<recommender_net_1/embedding_6/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOpK^recommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
Jrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOpJrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp
«
î
E__inference_embedding_6_layer_call_and_return_conditional_losses_1803

inputs(
embedding_lookup_1791:	üK2
identity¢embedding_lookup¢Jrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp±
embedding_lookupResourceGatherembedding_lookup_1791inputs*
Tindices0*(
_class
loc:@embedding_lookup/1791*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/1791*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¡
Jrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1791*
_output_shapes
:	üK2*
dtype0Ã
;recommender_net_1/embedding_6/embeddings/Regularizer/SquareSquareRrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	üK2
:recommender_net_1/embedding_6/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       æ
8recommender_net_1/embedding_6/embeddings/Regularizer/SumSum?recommender_net_1/embedding_6/embeddings/Regularizer/Square:y:0Crecommender_net_1/embedding_6/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
:recommender_net_1/embedding_6/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75è
8recommender_net_1/embedding_6/embeddings/Regularizer/mulMulCrecommender_net_1/embedding_6/embeddings/Regularizer/mul/x:output:0Arecommender_net_1/embedding_6/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¦
NoOpNoOp^embedding_lookupK^recommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Jrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOpJrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


*__inference_embedding_7_layer_call_fn_1810

inputs
unknown:	üK
identity¢StatefulPartitionedCallÍ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_7_layer_call_and_return_conditional_losses_1405o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
i
Ø
K__inference_recommender_net_1_layer_call_and_return_conditional_losses_1716

inputs4
!embedding_4_embedding_lookup_1632:	â24
!embedding_5_embedding_lookup_1641:	â4
!embedding_6_embedding_lookup_1650:	üK24
!embedding_7_embedding_lookup_1659:	üK
identity¢embedding_4/embedding_lookup¢embedding_5/embedding_lookup¢embedding_6/embedding_lookup¢embedding_7/embedding_lookup¢Jrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp¢Jrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ø
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskå
embedding_4/embedding_lookupResourceGather!embedding_4_embedding_lookup_1632strided_slice:output:0*
Tindices0*4
_class*
(&loc:@embedding_4/embedding_lookup/1632*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0À
%embedding_4/embedding_lookup/IdentityIdentity%embedding_4/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding_4/embedding_lookup/1632*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
'embedding_4/embedding_lookup/Identity_1Identity.embedding_4/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskç
embedding_5/embedding_lookupResourceGather!embedding_5_embedding_lookup_1641strided_slice_1:output:0*
Tindices0*4
_class*
(&loc:@embedding_5/embedding_lookup/1641*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0À
%embedding_5/embedding_lookup/IdentityIdentity%embedding_5/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding_5/embedding_lookup/1641*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'embedding_5/embedding_lookup/Identity_1Identity.embedding_5/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskç
embedding_6/embedding_lookupResourceGather!embedding_6_embedding_lookup_1650strided_slice_2:output:0*
Tindices0*4
_class*
(&loc:@embedding_6/embedding_lookup/1650*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0À
%embedding_6/embedding_lookup/IdentityIdentity%embedding_6/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding_6/embedding_lookup/1650*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
'embedding_6/embedding_lookup/Identity_1Identity.embedding_6/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskç
embedding_7/embedding_lookupResourceGather!embedding_7_embedding_lookup_1659strided_slice_3:output:0*
Tindices0*4
_class*
(&loc:@embedding_7/embedding_lookup/1659*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0À
%embedding_7/embedding_lookup/IdentityIdentity%embedding_7/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding_7/embedding_lookup/1659*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'embedding_7/embedding_lookup/Identity_1Identity.embedding_7/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB o
Tensordot/ShapeShape0embedding_4/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¹
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Tensordot/transpose	Transpose0embedding_4/embedding_lookup/Identity_1:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿa
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB q
Tensordot/Shape_1Shape0embedding_6/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Á
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¤
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:£
Tensordot/transpose_1	Transpose0embedding_6/embedding_lookup/Identity_1:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿY
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 
addAddV2Tensordot:output:00embedding_5/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
add_1AddV2add:z:00embedding_7/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
Jrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp!embedding_4_embedding_lookup_1632*
_output_shapes
:	â2*
dtype0Ã
;recommender_net_1/embedding_4/embeddings/Regularizer/SquareSquareRrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	â2
:recommender_net_1/embedding_4/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       æ
8recommender_net_1/embedding_4/embeddings/Regularizer/SumSum?recommender_net_1/embedding_4/embeddings/Regularizer/Square:y:0Crecommender_net_1/embedding_4/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
:recommender_net_1/embedding_4/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75è
8recommender_net_1/embedding_4/embeddings/Regularizer/mulMulCrecommender_net_1/embedding_4/embeddings/Regularizer/mul/x:output:0Arecommender_net_1/embedding_4/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ­
Jrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp!embedding_6_embedding_lookup_1650*
_output_shapes
:	üK2*
dtype0Ã
;recommender_net_1/embedding_6/embeddings/Regularizer/SquareSquareRrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	üK2
:recommender_net_1/embedding_6/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       æ
8recommender_net_1/embedding_6/embeddings/Regularizer/SumSum?recommender_net_1/embedding_6/embeddings/Regularizer/Square:y:0Crecommender_net_1/embedding_6/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
:recommender_net_1/embedding_6/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75è
8recommender_net_1/embedding_6/embeddings/Regularizer/mulMulCrecommender_net_1/embedding_6/embeddings/Regularizer/mul/x:output:0Arecommender_net_1/embedding_6/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÜ
NoOpNoOp^embedding_4/embedding_lookup^embedding_5/embedding_lookup^embedding_6/embedding_lookup^embedding_7/embedding_lookupK^recommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOpK^recommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2<
embedding_4/embedding_lookupembedding_4/embedding_lookup2<
embedding_5/embedding_lookupembedding_5/embedding_lookup2<
embedding_6/embedding_lookupembedding_6/embedding_lookup2<
embedding_7/embedding_lookupembedding_7/embedding_lookup2
Jrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOpJrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp2
Jrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOpJrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°
ß
0__inference_recommender_net_1_layer_call_fn_1625

inputs
unknown:	â2
	unknown_0:	â
	unknown_1:	üK2
	unknown_2:	üK
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_recommender_net_1_layer_call_and_return_conditional_losses_1461o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯k
£
__inference__wrapped_model_1322
input_1F
3recommender_net_1_embedding_4_embedding_lookup_1250:	â2F
3recommender_net_1_embedding_5_embedding_lookup_1259:	âF
3recommender_net_1_embedding_6_embedding_lookup_1268:	üK2F
3recommender_net_1_embedding_7_embedding_lookup_1277:	üK
identity¢.recommender_net_1/embedding_4/embedding_lookup¢.recommender_net_1/embedding_5/embedding_lookup¢.recommender_net_1/embedding_6/embedding_lookup¢.recommender_net_1/embedding_7/embedding_lookupv
%recommender_net_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'recommender_net_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Á
recommender_net_1/strided_sliceStridedSliceinput_1.recommender_net_1/strided_slice/stack:output:00recommender_net_1/strided_slice/stack_1:output:00recommender_net_1/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask­
.recommender_net_1/embedding_4/embedding_lookupResourceGather3recommender_net_1_embedding_4_embedding_lookup_1250(recommender_net_1/strided_slice:output:0*
Tindices0*F
_class<
:8loc:@recommender_net_1/embedding_4/embedding_lookup/1250*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0ö
7recommender_net_1/embedding_4/embedding_lookup/IdentityIdentity7recommender_net_1/embedding_4/embedding_lookup:output:0*
T0*F
_class<
:8loc:@recommender_net_1/embedding_4/embedding_lookup/1250*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¹
9recommender_net_1/embedding_4/embedding_lookup/Identity_1Identity@recommender_net_1/embedding_4/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2x
'recommender_net_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        z
)recommender_net_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)recommender_net_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      É
!recommender_net_1/strided_slice_1StridedSliceinput_10recommender_net_1/strided_slice_1/stack:output:02recommender_net_1/strided_slice_1/stack_1:output:02recommender_net_1/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask¯
.recommender_net_1/embedding_5/embedding_lookupResourceGather3recommender_net_1_embedding_5_embedding_lookup_1259*recommender_net_1/strided_slice_1:output:0*
Tindices0*F
_class<
:8loc:@recommender_net_1/embedding_5/embedding_lookup/1259*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0ö
7recommender_net_1/embedding_5/embedding_lookup/IdentityIdentity7recommender_net_1/embedding_5/embedding_lookup:output:0*
T0*F
_class<
:8loc:@recommender_net_1/embedding_5/embedding_lookup/1259*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
9recommender_net_1/embedding_5/embedding_lookup/Identity_1Identity@recommender_net_1/embedding_5/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
'recommender_net_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)recommender_net_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)recommender_net_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      É
!recommender_net_1/strided_slice_2StridedSliceinput_10recommender_net_1/strided_slice_2/stack:output:02recommender_net_1/strided_slice_2/stack_1:output:02recommender_net_1/strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask¯
.recommender_net_1/embedding_6/embedding_lookupResourceGather3recommender_net_1_embedding_6_embedding_lookup_1268*recommender_net_1/strided_slice_2:output:0*
Tindices0*F
_class<
:8loc:@recommender_net_1/embedding_6/embedding_lookup/1268*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0ö
7recommender_net_1/embedding_6/embedding_lookup/IdentityIdentity7recommender_net_1/embedding_6/embedding_lookup:output:0*
T0*F
_class<
:8loc:@recommender_net_1/embedding_6/embedding_lookup/1268*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¹
9recommender_net_1/embedding_6/embedding_lookup/Identity_1Identity@recommender_net_1/embedding_6/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2x
'recommender_net_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)recommender_net_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)recommender_net_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      É
!recommender_net_1/strided_slice_3StridedSliceinput_10recommender_net_1/strided_slice_3/stack:output:02recommender_net_1/strided_slice_3/stack_1:output:02recommender_net_1/strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask¯
.recommender_net_1/embedding_7/embedding_lookupResourceGather3recommender_net_1_embedding_7_embedding_lookup_1277*recommender_net_1/strided_slice_3:output:0*
Tindices0*F
_class<
:8loc:@recommender_net_1/embedding_7/embedding_lookup/1277*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0ö
7recommender_net_1/embedding_7/embedding_lookup/IdentityIdentity7recommender_net_1/embedding_7/embedding_lookup:output:0*
T0*F
_class<
:8loc:@recommender_net_1/embedding_7/embedding_lookup/1277*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
9recommender_net_1/embedding_7/embedding_lookup/Identity_1Identity@recommender_net_1/embedding_7/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
 recommender_net_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       c
 recommender_net_1/Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB 
!recommender_net_1/Tensordot/ShapeShapeBrecommender_net_1/embedding_4/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:k
)recommender_net_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
$recommender_net_1/Tensordot/GatherV2GatherV2*recommender_net_1/Tensordot/Shape:output:0)recommender_net_1/Tensordot/free:output:02recommender_net_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: m
+recommender_net_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
&recommender_net_1/Tensordot/GatherV2_1GatherV2*recommender_net_1/Tensordot/Shape:output:0)recommender_net_1/Tensordot/axes:output:04recommender_net_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!recommender_net_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¤
 recommender_net_1/Tensordot/ProdProd-recommender_net_1/Tensordot/GatherV2:output:0*recommender_net_1/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#recommender_net_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ª
"recommender_net_1/Tensordot/Prod_1Prod/recommender_net_1/Tensordot/GatherV2_1:output:0,recommender_net_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'recommender_net_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ä
"recommender_net_1/Tensordot/concatConcatV2)recommender_net_1/Tensordot/free:output:0)recommender_net_1/Tensordot/axes:output:00recommender_net_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¯
!recommender_net_1/Tensordot/stackPack)recommender_net_1/Tensordot/Prod:output:0+recommender_net_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Õ
%recommender_net_1/Tensordot/transpose	TransposeBrecommender_net_1/embedding_4/embedding_lookup/Identity_1:output:0+recommender_net_1/Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2À
#recommender_net_1/Tensordot/ReshapeReshape)recommender_net_1/Tensordot/transpose:y:0*recommender_net_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿs
"recommender_net_1/Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       e
"recommender_net_1/Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB 
#recommender_net_1/Tensordot/Shape_1ShapeBrecommender_net_1/embedding_6/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:m
+recommender_net_1/Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
&recommender_net_1/Tensordot/GatherV2_2GatherV2,recommender_net_1/Tensordot/Shape_1:output:0+recommender_net_1/Tensordot/free_1:output:04recommender_net_1/Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: m
+recommender_net_1/Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 
&recommender_net_1/Tensordot/GatherV2_3GatherV2,recommender_net_1/Tensordot/Shape_1:output:0+recommender_net_1/Tensordot/axes_1:output:04recommender_net_1/Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
#recommender_net_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: ª
"recommender_net_1/Tensordot/Prod_2Prod/recommender_net_1/Tensordot/GatherV2_2:output:0,recommender_net_1/Tensordot/Const_2:output:0*
T0*
_output_shapes
: m
#recommender_net_1/Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: ª
"recommender_net_1/Tensordot/Prod_3Prod/recommender_net_1/Tensordot/GatherV2_3:output:0,recommender_net_1/Tensordot/Const_3:output:0*
T0*
_output_shapes
: k
)recommender_net_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ì
$recommender_net_1/Tensordot/concat_1ConcatV2+recommender_net_1/Tensordot/axes_1:output:0+recommender_net_1/Tensordot/free_1:output:02recommender_net_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:³
#recommender_net_1/Tensordot/stack_1Pack+recommender_net_1/Tensordot/Prod_3:output:0+recommender_net_1/Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:Ù
'recommender_net_1/Tensordot/transpose_1	TransposeBrecommender_net_1/embedding_6/embedding_lookup/Identity_1:output:0-recommender_net_1/Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Æ
%recommender_net_1/Tensordot/Reshape_1Reshape+recommender_net_1/Tensordot/transpose_1:y:0,recommender_net_1/Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÅ
"recommender_net_1/Tensordot/MatMulMatMul,recommender_net_1/Tensordot/Reshape:output:0.recommender_net_1/Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿk
)recommender_net_1/Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
$recommender_net_1/Tensordot/concat_2ConcatV2-recommender_net_1/Tensordot/GatherV2:output:0/recommender_net_1/Tensordot/GatherV2_2:output:02recommender_net_1/Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: ¤
recommender_net_1/TensordotReshape,recommender_net_1/Tensordot/MatMul:product:0-recommender_net_1/Tensordot/concat_2:output:0*
T0*
_output_shapes
: º
recommender_net_1/addAddV2$recommender_net_1/Tensordot:output:0Brecommender_net_1/embedding_5/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
recommender_net_1/add_1AddV2recommender_net_1/add:z:0Brecommender_net_1/embedding_7/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
recommender_net_1/SigmoidSigmoidrecommender_net_1/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
IdentityIdentityrecommender_net_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp/^recommender_net_1/embedding_4/embedding_lookup/^recommender_net_1/embedding_5/embedding_lookup/^recommender_net_1/embedding_6/embedding_lookup/^recommender_net_1/embedding_7/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2`
.recommender_net_1/embedding_4/embedding_lookup.recommender_net_1/embedding_4/embedding_lookup2`
.recommender_net_1/embedding_5/embedding_lookup.recommender_net_1/embedding_5/embedding_lookup2`
.recommender_net_1/embedding_6/embedding_lookup.recommender_net_1/embedding_6/embedding_lookup2`
.recommender_net_1/embedding_7/embedding_lookup.recommender_net_1/embedding_7/embedding_lookup:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
«
î
E__inference_embedding_6_layer_call_and_return_conditional_losses_1388

inputs(
embedding_lookup_1376:	üK2
identity¢embedding_lookup¢Jrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp±
embedding_lookupResourceGatherembedding_lookup_1376inputs*
Tindices0*(
_class
loc:@embedding_lookup/1376*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/1376*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¡
Jrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1376*
_output_shapes
:	üK2*
dtype0Ã
;recommender_net_1/embedding_6/embeddings/Regularizer/SquareSquareRrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	üK2
:recommender_net_1/embedding_6/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       æ
8recommender_net_1/embedding_6/embeddings/Regularizer/SumSum?recommender_net_1/embedding_6/embeddings/Regularizer/Square:y:0Crecommender_net_1/embedding_6/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
:recommender_net_1/embedding_6/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75è
8recommender_net_1/embedding_6/embeddings/Regularizer/mulMulCrecommender_net_1/embedding_6/embeddings/Regularizer/mul/x:output:0Arecommender_net_1/embedding_6/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¦
NoOpNoOp^embedding_lookupK^recommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Jrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOpJrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
à
0__inference_recommender_net_1_layer_call_fn_1472
input_1
unknown:	â2
	unknown_0:	â
	unknown_1:	üK2
	unknown_2:	üK
identity¢StatefulPartitionedCallû
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_recommender_net_1_layer_call_and_return_conditional_losses_1461o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
¨
¡
E__inference_embedding_7_layer_call_and_return_conditional_losses_1819

inputs(
embedding_lookup_1813:	üK
identity¢embedding_lookup±
embedding_lookupResourceGatherembedding_lookup_1813inputs*
Tindices0*(
_class
loc:@embedding_lookup/1813*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/1813*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
¡
E__inference_embedding_5_layer_call_and_return_conditional_losses_1365

inputs(
embedding_lookup_1359:	â
identity¢embedding_lookup±
embedding_lookupResourceGatherembedding_lookup_1359inputs*
Tindices0*(
_class
loc:@embedding_lookup/1359*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/1359*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
î
E__inference_embedding_4_layer_call_and_return_conditional_losses_1348

inputs(
embedding_lookup_1336:	â2
identity¢embedding_lookup¢Jrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp±
embedding_lookupResourceGatherembedding_lookup_1336inputs*
Tindices0*(
_class
loc:@embedding_lookup/1336*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/1336*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¡
Jrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1336*
_output_shapes
:	â2*
dtype0Ã
;recommender_net_1/embedding_4/embeddings/Regularizer/SquareSquareRrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	â2
:recommender_net_1/embedding_4/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       æ
8recommender_net_1/embedding_4/embeddings/Regularizer/SumSum?recommender_net_1/embedding_4/embeddings/Regularizer/Square:y:0Crecommender_net_1/embedding_4/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
:recommender_net_1/embedding_4/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75è
8recommender_net_1/embedding_4/embeddings/Regularizer/mulMulCrecommender_net_1/embedding_4/embeddings/Regularizer/mul/x:output:0Arecommender_net_1/embedding_4/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¦
NoOpNoOp^embedding_lookupK^recommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Jrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOpJrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Áb
°
K__inference_recommender_net_1_layer_call_and_return_conditional_losses_1461

inputs#
embedding_4_1349:	â2#
embedding_5_1366:	â#
embedding_6_1389:	üK2#
embedding_7_1406:	üK
identity¢#embedding_4/StatefulPartitionedCall¢#embedding_5/StatefulPartitionedCall¢#embedding_6/StatefulPartitionedCall¢#embedding_7/StatefulPartitionedCall¢Jrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp¢Jrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ø
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskò
#embedding_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0embedding_4_1349*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_4_layer_call_and_return_conditional_losses_1348f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskô
#embedding_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0embedding_5_1366*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_5_layer_call_and_return_conditional_losses_1365f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskô
#embedding_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0embedding_6_1389*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_6_layer_call_and_return_conditional_losses_1388f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskô
#embedding_7/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0embedding_7_1406*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_7_layer_call_and_return_conditional_losses_1405_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB k
Tensordot/ShapeShape,embedding_4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¹
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Tensordot/transpose	Transpose,embedding_4/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿa
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB m
Tensordot/Shape_1Shape,embedding_6/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Á
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¤
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:
Tensordot/transpose_1	Transpose,embedding_6/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿY
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 
addAddV2Tensordot:output:0,embedding_5/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
add_1AddV2add:z:0,embedding_7/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Jrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_4_1349*
_output_shapes
:	â2*
dtype0Ã
;recommender_net_1/embedding_4/embeddings/Regularizer/SquareSquareRrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	â2
:recommender_net_1/embedding_4/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       æ
8recommender_net_1/embedding_4/embeddings/Regularizer/SumSum?recommender_net_1/embedding_4/embeddings/Regularizer/Square:y:0Crecommender_net_1/embedding_4/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
:recommender_net_1/embedding_4/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75è
8recommender_net_1/embedding_4/embeddings/Regularizer/mulMulCrecommender_net_1/embedding_4/embeddings/Regularizer/mul/x:output:0Arecommender_net_1/embedding_4/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
Jrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_6_1389*
_output_shapes
:	üK2*
dtype0Ã
;recommender_net_1/embedding_6/embeddings/Regularizer/SquareSquareRrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	üK2
:recommender_net_1/embedding_6/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       æ
8recommender_net_1/embedding_6/embeddings/Regularizer/SumSum?recommender_net_1/embedding_6/embeddings/Regularizer/Square:y:0Crecommender_net_1/embedding_6/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
:recommender_net_1/embedding_6/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75è
8recommender_net_1/embedding_6/embeddings/Regularizer/mulMulCrecommender_net_1/embedding_6/embeddings/Regularizer/mul/x:output:0Arecommender_net_1/embedding_6/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿø
NoOpNoOp$^embedding_4/StatefulPartitionedCall$^embedding_5/StatefulPartitionedCall$^embedding_6/StatefulPartitionedCall$^embedding_7/StatefulPartitionedCallK^recommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOpK^recommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2J
#embedding_4/StatefulPartitionedCall#embedding_4/StatefulPartitionedCall2J
#embedding_5/StatefulPartitionedCall#embedding_5/StatefulPartitionedCall2J
#embedding_6/StatefulPartitionedCall#embedding_6/StatefulPartitionedCall2J
#embedding_7/StatefulPartitionedCall#embedding_7/StatefulPartitionedCall2
Jrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOpJrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp2
Jrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOpJrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù
Ò
"__inference_signature_wrapper_1731
input_1
unknown:	â2
	unknown_0:	â
	unknown_1:	üK2
	unknown_2:	üK
identity¢StatefulPartitionedCallÏ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_1322o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
¨
¡
E__inference_embedding_7_layer_call_and_return_conditional_losses_1405

inputs(
embedding_lookup_1399:	üK
identity¢embedding_lookup±
embedding_lookupResourceGatherembedding_lookup_1399inputs*
Tindices0*(
_class
loc:@embedding_lookup/1399*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/1399*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


*__inference_embedding_4_layer_call_fn_1744

inputs
unknown:	â2
identity¢StatefulPartitionedCallÍ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_4_layer_call_and_return_conditional_losses_1348o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


*__inference_embedding_5_layer_call_fn_1766

inputs
unknown:	â
identity¢StatefulPartitionedCallÍ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_5_layer_call_and_return_conditional_losses_1365o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


*__inference_embedding_6_layer_call_fn_1788

inputs
unknown:	üK2
identity¢StatefulPartitionedCallÍ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_6_layer_call_and_return_conditional_losses_1388o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì

__inference__traced_save_1876
file_prefixG
Csavev2_recommender_net_1_embedding_4_embeddings_read_readvariableopG
Csavev2_recommender_net_1_embedding_5_embeddings_read_readvariableopG
Csavev2_recommender_net_1_embedding_6_embeddings_read_readvariableopG
Csavev2_recommender_net_1_embedding_7_embeddings_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ú
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueùBöB4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHw
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B È
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Csavev2_recommender_net_1_embedding_4_embeddings_read_readvariableopCsavev2_recommender_net_1_embedding_5_embeddings_read_readvariableopCsavev2_recommender_net_1_embedding_6_embeddings_read_readvariableopCsavev2_recommender_net_1_embedding_7_embeddings_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes	
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*C
_input_shapes2
0: :	â2:	â:	üK2:	üK: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	â2:%!

_output_shapes
:	â:%!

_output_shapes
:	üK2:%!

_output_shapes
:	üK:

_output_shapes
: 
«
î
E__inference_embedding_4_layer_call_and_return_conditional_losses_1759

inputs(
embedding_lookup_1747:	â2
identity¢embedding_lookup¢Jrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp±
embedding_lookupResourceGatherembedding_lookup_1747inputs*
Tindices0*(
_class
loc:@embedding_lookup/1747*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/1747*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¡
Jrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_1747*
_output_shapes
:	â2*
dtype0Ã
;recommender_net_1/embedding_4/embeddings/Regularizer/SquareSquareRrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	â2
:recommender_net_1/embedding_4/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       æ
8recommender_net_1/embedding_4/embeddings/Regularizer/SumSum?recommender_net_1/embedding_4/embeddings/Regularizer/Square:y:0Crecommender_net_1/embedding_4/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
:recommender_net_1/embedding_4/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75è
8recommender_net_1/embedding_4/embeddings/Regularizer/mulMulCrecommender_net_1/embedding_4/embeddings/Regularizer/mul/x:output:0Arecommender_net_1/embedding_4/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2¦
NoOpNoOp^embedding_lookupK^recommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup2
Jrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOpJrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
¡
E__inference_embedding_5_layer_call_and_return_conditional_losses_1775

inputs(
embedding_lookup_1769:	â
identity¢embedding_lookup±
embedding_lookupResourceGatherembedding_lookup_1769inputs*
Tindices0*(
_class
loc:@embedding_lookup/1769*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/1769*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý
â
__inference_loss_fn_0_1830f
Srecommender_net_1_embedding_4_embeddings_regularizer_square_readvariableop_resource:	â2
identity¢Jrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOpß
Jrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpSrecommender_net_1_embedding_4_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	â2*
dtype0Ã
;recommender_net_1/embedding_4/embeddings/Regularizer/SquareSquareRrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	â2
:recommender_net_1/embedding_4/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       æ
8recommender_net_1/embedding_4/embeddings/Regularizer/SumSum?recommender_net_1/embedding_4/embeddings/Regularizer/Square:y:0Crecommender_net_1/embedding_4/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
:recommender_net_1/embedding_4/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75è
8recommender_net_1/embedding_4/embeddings/Regularizer/mulMulCrecommender_net_1/embedding_4/embeddings/Regularizer/mul/x:output:0Arecommender_net_1/embedding_4/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: z
IdentityIdentity<recommender_net_1/embedding_4/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOpK^recommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
Jrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOpJrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp

Ö
 __inference__traced_restore_1898
file_prefixL
9assignvariableop_recommender_net_1_embedding_4_embeddings:	â2N
;assignvariableop_1_recommender_net_1_embedding_5_embeddings:	âN
;assignvariableop_2_recommender_net_1_embedding_6_embeddings:	üK2N
;assignvariableop_3_recommender_net_1_embedding_7_embeddings:	üK

identity_5¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3Ý
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueùBöB4user_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB/user_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB5movie_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0movie_bias/embeddings/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHz
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B ·
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOpAssignVariableOp9assignvariableop_recommender_net_1_embedding_4_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_1AssignVariableOp;assignvariableop_1_recommender_net_1_embedding_5_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_2AssignVariableOp;assignvariableop_2_recommender_net_1_embedding_6_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_3AssignVariableOp;assignvariableop_3_recommender_net_1_embedding_7_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¬

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_5IdentityIdentity_4:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_3:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Çb
±
K__inference_recommender_net_1_layer_call_and_return_conditional_losses_1600
input_1#
embedding_4_1524:	â2#
embedding_5_1531:	â#
embedding_6_1538:	üK2#
embedding_7_1545:	üK
identity¢#embedding_4/StatefulPartitionedCall¢#embedding_5/StatefulPartitionedCall¢#embedding_6/StatefulPartitionedCall¢#embedding_7/StatefulPartitionedCall¢Jrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp¢Jrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ù
strided_sliceStridedSliceinput_1strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskò
#embedding_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0embedding_4_1524*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_4_layer_call_and_return_conditional_losses_1348f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceinput_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskô
#embedding_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0embedding_5_1531*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_5_layer_call_and_return_conditional_losses_1365f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_2StridedSliceinput_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskô
#embedding_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0embedding_6_1538*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_6_layer_call_and_return_conditional_losses_1388f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_3StridedSliceinput_1strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_maskô
#embedding_7/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0embedding_7_1545*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_embedding_7_layer_call_and_return_conditional_losses_1405_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB k
Tensordot/ShapeShape,embedding_4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¹
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Tensordot/transpose	Transpose,embedding_4/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿa
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB m
Tensordot/Shape_1Shape,embedding_6/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Á
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¤
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:
Tensordot/transpose_1	Transpose,embedding_6/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿY
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: 
addAddV2Tensordot:output:0,embedding_5/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
add_1AddV2add:z:0,embedding_7/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Jrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_4_1524*
_output_shapes
:	â2*
dtype0Ã
;recommender_net_1/embedding_4/embeddings/Regularizer/SquareSquareRrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	â2
:recommender_net_1/embedding_4/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       æ
8recommender_net_1/embedding_4/embeddings/Regularizer/SumSum?recommender_net_1/embedding_4/embeddings/Regularizer/Square:y:0Crecommender_net_1/embedding_4/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
:recommender_net_1/embedding_4/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75è
8recommender_net_1/embedding_4/embeddings/Regularizer/mulMulCrecommender_net_1/embedding_4/embeddings/Regularizer/mul/x:output:0Arecommender_net_1/embedding_4/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
Jrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_6_1538*
_output_shapes
:	üK2*
dtype0Ã
;recommender_net_1/embedding_6/embeddings/Regularizer/SquareSquareRrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	üK2
:recommender_net_1/embedding_6/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       æ
8recommender_net_1/embedding_6/embeddings/Regularizer/SumSum?recommender_net_1/embedding_6/embeddings/Regularizer/Square:y:0Crecommender_net_1/embedding_6/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 
:recommender_net_1/embedding_6/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *½75è
8recommender_net_1/embedding_6/embeddings/Regularizer/mulMulCrecommender_net_1/embedding_6/embeddings/Regularizer/mul/x:output:0Arecommender_net_1/embedding_6/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿø
NoOpNoOp$^embedding_4/StatefulPartitionedCall$^embedding_5/StatefulPartitionedCall$^embedding_6/StatefulPartitionedCall$^embedding_7/StatefulPartitionedCallK^recommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOpK^recommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2J
#embedding_4/StatefulPartitionedCall#embedding_4/StatefulPartitionedCall2J
#embedding_5/StatefulPartitionedCall#embedding_5/StatefulPartitionedCall2J
#embedding_6/StatefulPartitionedCall#embedding_6/StatefulPartitionedCall2J
#embedding_7/StatefulPartitionedCall#embedding_7/StatefulPartitionedCall2
Jrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOpJrecommender_net_1/embedding_4/embeddings/Regularizer/Square/ReadVariableOp2
Jrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOpJrecommender_net_1/embedding_6/embeddings/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default
;
input_10
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿ<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ßL
©
user_embedding
	user_bias
movie_embedding

movie_bias
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_model
µ

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
µ

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
µ

embeddings
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
µ
#
embeddings
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
"
	optimizer
<
0
1
2
#3"
trackable_list_wrapper
<
0
1
2
#3"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
Ê
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
0__inference_recommender_net_1_layer_call_fn_1472
0__inference_recommender_net_1_layer_call_fn_1625¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Â2¿
K__inference_recommender_net_1_layer_call_and_return_conditional_losses_1716
K__inference_recommender_net_1_layer_call_and_return_conditional_losses_1600¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÊBÇ
__inference__wrapped_model_1322input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
1serving_default"
signature_map
;:9	â22(recommender_net_1/embedding_4/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
*0"
trackable_list_wrapper
­
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_embedding_4_layer_call_fn_1744¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_embedding_4_layer_call_and_return_conditional_losses_1759¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
;:9	â2(recommender_net_1/embedding_5/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_embedding_5_layer_call_fn_1766¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_embedding_5_layer_call_and_return_conditional_losses_1775¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
;:9	üK22(recommender_net_1/embedding_6/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
+0"
trackable_list_wrapper
­
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_embedding_6_layer_call_fn_1788¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_embedding_6_layer_call_and_return_conditional_losses_1803¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
;:9	üK2(recommender_net_1/embedding_7/embeddings
'
#0"
trackable_list_wrapper
'
#0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_embedding_7_layer_call_fn_1810¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_embedding_7_layer_call_and_return_conditional_losses_1819¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
±2®
__inference_loss_fn_0_1830
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
±2®
__inference_loss_fn_1_1841
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÉBÆ
"__inference_signature_wrapper_1731input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
*0"
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
'
+0"
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
trackable_dict_wrapper
__inference__wrapped_model_1322m#0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ 
E__inference_embedding_4_layer_call_and_return_conditional_losses_1759W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 x
*__inference_embedding_4_layer_call_fn_1744J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ2 
E__inference_embedding_5_layer_call_and_return_conditional_losses_1775W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 x
*__inference_embedding_5_layer_call_fn_1766J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ 
E__inference_embedding_6_layer_call_and_return_conditional_losses_1803W+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 x
*__inference_embedding_6_layer_call_fn_1788J+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ2 
E__inference_embedding_7_layer_call_and_return_conditional_losses_1819W#+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 x
*__inference_embedding_7_layer_call_fn_1810J#+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ9
__inference_loss_fn_0_1830¢

¢ 
ª " 9
__inference_loss_fn_1_1841¢

¢ 
ª " ®
K__inference_recommender_net_1_layer_call_and_return_conditional_losses_1600_#0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ­
K__inference_recommender_net_1_layer_call_and_return_conditional_losses_1716^#/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
0__inference_recommender_net_1_layer_call_fn_1472R#0¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_recommender_net_1_layer_call_fn_1625Q#/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
"__inference_signature_wrapper_1731x#;¢8
¢ 
1ª.
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ