ъ
М
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
incompatible_shape_errorbool(
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
+
IsNan
x"T
y
"
Ttype:
2
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 

ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
@
ReadVariableOp
resource
value"dtype"
dtypetype
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
і
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.8.42v2.8.3-90-g1b8f5c396f08Щс
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	*
dtype0
q
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
j
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes	
:*
dtype0
z
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_6/kernel
s
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel* 
_output_shapes
:
*
dtype0
q
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/bias
j
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes	
:*
dtype0
z
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_7/kernel
s
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel* 
_output_shapes
:
*
dtype0
q
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
j
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes	
:*
dtype0
y
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_8/kernel
r
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes
:	*
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:*
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
N
ConstConst*
_output_shapes
: *
dtype0*
valueB 2З 2Fт?
P
Const_1Const*
_output_shapes
: *
dtype0*
valueB 2ѓ_иnУxЯ?
L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *   
L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
P
Const_4Const*
_output_shapes
: *
dtype0*
valueB 2!І7рзр?
P
Const_5Const*
_output_shapes
: *
dtype0*
valueB 2UтсГ>щЯ?
L
Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *   
L
Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
P
Const_8Const*
_output_shapes
: *
dtype0*
valueB 2К3я?
P
Const_9Const*
_output_shapes
: *
dtype0*
valueB 2Aлхш?
M
Const_10Const*
_output_shapes
: *
dtype0*
valueB
 *   
M
Const_11Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
Q
Const_12Const*
_output_shapes
: *
dtype0*
valueB 2o;JЭNо=@
Q
Const_13Const*
_output_shapes
: *
dtype0*
valueB 2(-Жц7I@
M
Const_14Const*
_output_shapes
: *
dtype0*
valueB
 *  @С
M
Const_15Const*
_output_shapes
: *
dtype0*
valueB
 *  ФB
Q
Const_16Const*
_output_shapes
: *
dtype0*
valueB 2Н&ў3oо?
Q
Const_17Const*
_output_shapes
: *
dtype0*
valueB 2еЊdьЯ?
M
Const_18Const*
_output_shapes
: *
dtype0*
valueB
 *   
M
Const_19Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
Q
Const_20Const*
_output_shapes
: *
dtype0*
valueB 2xФYмњDЏ?
Q
Const_21Const*
_output_shapes
: *
dtype0*
valueB 2Ht0\­?
M
Const_22Const*
_output_shapes
: *
dtype0*
valueB
 *   
M
Const_23Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
Q
Const_24Const*
_output_shapes
: *
dtype0*
valueB 2Ё]ЄСУ?
Q
Const_25Const*
_output_shapes
: *
dtype0*
valueB 2§$u2Р?
M
Const_26Const*
_output_shapes
: *
dtype0*
valueB
 *   
M
Const_27Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
Q
Const_28Const*
_output_shapes
: *
dtype0*
valueB 2v*Qїц?
Q
Const_29Const*
_output_shapes
: *
dtype0*
valueB 2Ўш­ИЪ?
M
Const_30Const*
_output_shapes
: *
dtype0*
valueB
 *   
M
Const_31Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
Q
Const_32Const*
_output_shapes
: *
dtype0*
valueB 2Пжxџу?
Q
Const_33Const*
_output_shapes
: *
dtype0*
valueB 2І ФYвaЮ?
M
Const_34Const*
_output_shapes
: *
dtype0*
valueB
 *   
M
Const_35Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
Q
Const_36Const*
_output_shapes
: *
dtype0*
valueB 2Vlр5щ?
Q
Const_37Const*
_output_shapes
: *
dtype0*
valueB 2tSыfХ?
M
Const_38Const*
_output_shapes
: *
dtype0*
valueB
 *   
M
Const_39Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
Q
Const_40Const*
_output_shapes
: *
dtype0*
valueB 2TF*УІ?
Q
Const_41Const*
_output_shapes
: *
dtype0*
valueB 2Ю­ї}Ѕ?
M
Const_42Const*
_output_shapes
: *
dtype0*
valueB
 *   
M
Const_43Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
Q
Const_44Const*
_output_shapes
: *
dtype0*
valueB 2aiqСOю?
Q
Const_45Const*
_output_shapes
: *
dtype0*
valueB 2ЉgQRІ?
M
Const_46Const*
_output_shapes
: *
dtype0*
valueB
 *   
M
Const_47Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
Q
Const_48Const*
_output_shapes
: *
dtype0*
valueB 2"ўЇьЗ?
Q
Const_49Const*
_output_shapes
: *
dtype0*
valueB 2;З-ЄFАЕ?
M
Const_50Const*
_output_shapes
: *
dtype0*
valueB
 *   
M
Const_51Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
Q
Const_52Const*
_output_shapes
: *
dtype0*
valueB 2уЃ Б@
Q
Const_53Const*
_output_shapes
: *
dtype0*
valueB 259*йѓ?
M
Const_54Const*
_output_shapes
: *
dtype0*
valueB
 *  П
M
Const_55Const*
_output_shapes
: *
dtype0*
valueB
 *   @
Q
Const_56Const*
_output_shapes
: *
dtype0*
valueB 2ЭёЈы#@
Q
Const_57Const*
_output_shapes
: *
dtype0*
valueB 2вЛЙЊP@
M
Const_58Const*
_output_shapes
: *
dtype0*
valueB
 *   
M
Const_59Const*
_output_shapes
: *
dtype0*
valueB
 *  №A
Q
Const_60Const*
_output_shapes
: *
dtype0*
valueB 214Щv8D@
Q
Const_61Const*
_output_shapes
: *
dtype0*
valueB 2ЃlєЋUY@
M
Const_62Const*
_output_shapes
: *
dtype0*
valueB
 *   
M
Const_63Const*
_output_shapes
: *
dtype0*
valueB
 *  №A
Q
Const_64Const*
_output_shapes
: *
dtype0*
valueB 2sХ'5а?
Q
Const_65Const*
_output_shapes
: *
dtype0*
valueB 2ДyЯ4Ш?
M
Const_66Const*
_output_shapes
: *
dtype0*
valueB
 *   
M
Const_67Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
Q
Const_68Const*
_output_shapes
: *
dtype0*
valueB 2VDQн?
Q
Const_69Const*
_output_shapes
: *
dtype0*
valueB 2Д_gЦЯ?
M
Const_70Const*
_output_shapes
: *
dtype0*
valueB
 *   
M
Const_71Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
Q
Const_72Const*
_output_shapes
: *
dtype0*
valueB 2H-&*!@
Q
Const_73Const*
_output_shapes
: *
dtype0*
valueB 2ъЩЋ@ @
M
Const_74Const*
_output_shapes
: *
dtype0*
valueB
 *  П
M
Const_75Const*
_output_shapes
: *
dtype0*
valueB
 *  PA
Q
Const_76Const*
_output_shapes
: *
dtype0*
valueB 27ЅЙЗ­@
Q
Const_77Const*
_output_shapes
: *
dtype0*
valueB 2 бэчщ№?
M
Const_78Const*
_output_shapes
: *
dtype0*
valueB
 *  П
M
Const_79Const*
_output_shapes
: *
dtype0*
valueB
 *  Р@
Q
Const_80Const*
_output_shapes
: *
dtype0*
valueB 2щ=kКЩ@
Q
Const_81Const*
_output_shapes
: *
dtype0*
valueB 2N§P5ц@
M
Const_82Const*
_output_shapes
: *
dtype0*
valueB
 *  П
M
Const_83Const*
_output_shapes
: *
dtype0*
valueB
 *   A

NoOpNoOp
Ц9
Const_84Const"/device:CPU:0*
_output_shapes
: *
dtype0*ў8
valueє8Bё8 Bъ8
Я
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer_with_weights-0
layer-22
layer_with_weights-1
layer-23
layer-24
layer_with_weights-2
layer-25
layer-26
layer_with_weights-3
layer-27
layer-28
	optimizer
	tft_layer
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%_default_save_signature
&
signatures*
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

'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses* 
І

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses*
І

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses*
Ѕ
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A_random_generator
B__call__
*C&call_and_return_all_conditional_losses* 
І

Dkernel
Ebias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses*
Ѕ
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P_random_generator
Q__call__
*R&call_and_return_all_conditional_losses* 
І

Skernel
Tbias
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses*
Д
$[ _saved_model_loader_tracked_dict
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses* 
* 
<
-0
.1
52
63
D4
E5
S6
T7*
<
-0
.1
52
63
D4
E5
S6
T7*
* 
А
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
%_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*
* 
* 
* 

gserving_default* 
* 
* 
* 

hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 

mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

50
61*

50
61*
* 

rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
=	variables
>trainable_variables
?regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses* 
* 
* 
* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

D0
E1*

D0
E1*
* 

|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses* 
* 
* 
* 
^X
VARIABLE_VALUEdense_8/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_8/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

S0
T1*

S0
T1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*
* 
* 
y
	_imported
_structured_inputs
_structured_outputs
_output_to_inputs_map
_wrapped_function* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses* 
* 
* 
* 
т
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28*

0
1*
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
Ќ
created_variables
	resources
trackable_objects
initializers
assets

signatures
$_self_saveable_object_factories
transform_fn* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

total

count
 	variables
Ё	keras_api*
M

Ђtotal

Ѓcount
Є
_fn_kwargs
Ѕ	variables
І	keras_api*
* 
* 
* 
* 
* 

Їserving_default* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

 	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Ђ0
Ѓ1*

Ѕ	variables*
* 
s
serving_default_examplesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Ы

StatefulPartitionedCallStatefulPartitionedCallserving_default_examplesConstConst_1Const_2Const_3Const_4Const_5Const_6Const_7Const_8Const_9Const_10Const_11Const_12Const_13Const_14Const_15Const_16Const_17Const_18Const_19Const_20Const_21Const_22Const_23Const_24Const_25Const_26Const_27Const_28Const_29Const_30Const_31Const_32Const_33Const_34Const_35Const_36Const_37Const_38Const_39Const_40Const_41Const_42Const_43Const_44Const_45Const_46Const_47Const_48Const_49Const_50Const_51Const_52Const_53Const_54Const_55Const_56Const_57Const_58Const_59Const_60Const_61Const_62Const_63Const_64Const_65Const_66Const_67Const_68Const_69Const_70Const_71Const_72Const_73Const_74Const_75Const_76Const_77Const_78Const_79Const_80Const_81Const_82Const_83dense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasdense_8/kerneldense_8/bias*h
Tina
_2]*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

UVWXYZ[\*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_281757
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
В
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst_84*
Tin
2*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_284351
К
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasdense_8/kerneldense_8/biastotalcounttotal_1count_1*
Tin
2*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_284397ЋЩ
Т

I__inference_concatenate_1_layer_call_and_return_conditional_losses_283592
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_20
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Р
concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Є
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/10:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/11:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/12:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/13:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/14:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/15:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/16:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/17:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/18:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/19:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/20
d
Ѕ
9__inference_transform_features_layer_layer_call_fn_283959

inputs_age
inputs_anyhealthcare

inputs_bmi
inputs_cholcheck
inputs_diffwalk
inputs_education
inputs_fruits
inputs_genhlth
inputs_heartdiseaseorattack
inputs_highbp
inputs_highchol
inputs_hvyalcoholconsump
inputs_income
inputs_menthlth
inputs_nodocbccost
inputs_physactivity
inputs_physhlth

inputs_sex
inputs_smoker
inputs_stroke
inputs_veggies
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58

unknown_59

unknown_60

unknown_61

unknown_62

unknown_63

unknown_64

unknown_65

unknown_66

unknown_67

unknown_68

unknown_69

unknown_70

unknown_71

unknown_72

unknown_73

unknown_74

unknown_75

unknown_76

unknown_77

unknown_78

unknown_79

unknown_80

unknown_81

unknown_82
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall
inputs_ageinputs_anyhealthcare
inputs_bmiinputs_cholcheckinputs_diffwalkinputs_educationinputs_fruitsinputs_genhlthinputs_heartdiseaseorattackinputs_highbpinputs_highcholinputs_hvyalcoholconsumpinputs_incomeinputs_menthlthinputs_nodocbccostinputs_physactivityinputs_physhlth
inputs_sexinputs_smokerinputs_strokeinputs_veggiesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75
unknown_76
unknown_77
unknown_78
unknown_79
unknown_80
unknown_81
unknown_82*t
Tinm
k2i*!
Tout
2*
_collective_manager_ids
 *Ѕ
_output_shapes
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_282087o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_3Identity StatefulPartitionedCall:output:3^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_4Identity StatefulPartitionedCall:output:4^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_5Identity StatefulPartitionedCall:output:5^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_6Identity StatefulPartitionedCall:output:6^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_7Identity StatefulPartitionedCall:output:7^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_8Identity StatefulPartitionedCall:output:8^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_9Identity StatefulPartitionedCall:output:9^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_10Identity!StatefulPartitionedCall:output:10^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_11Identity!StatefulPartitionedCall:output:11^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_12Identity!StatefulPartitionedCall:output:12^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_13Identity!StatefulPartitionedCall:output:13^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_14Identity!StatefulPartitionedCall:output:14^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_15Identity!StatefulPartitionedCall:output:15^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_16Identity!StatefulPartitionedCall:output:16^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_17Identity!StatefulPartitionedCall:output:17^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_18Identity!StatefulPartitionedCall:output:18^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_19Identity!StatefulPartitionedCall:output:19^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_20Identity!StatefulPartitionedCall:output:20^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*Ь
_input_shapesК
З:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
inputs/Age:]Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameinputs/AnyHealthcare:SO
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
inputs/BMI:YU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameinputs/CholCheck:XT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameinputs/DiffWalk:YU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameinputs/Education:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameinputs/Fruits:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameinputs/GenHlth:d`
'
_output_shapes
:џџџџџџџџџ
5
_user_specified_nameinputs/HeartDiseaseorAttack:V	R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameinputs/HighBP:X
T
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameinputs/HighChol:a]
'
_output_shapes
:џџџџџџџџџ
2
_user_specified_nameinputs/HvyAlcoholConsump:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameinputs/Income:XT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameinputs/MentHlth:[W
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameinputs/NoDocbcCost:\X
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameinputs/PhysActivity:XT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameinputs/PhysHlth:SO
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
inputs/Sex:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameinputs/Smoker:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameinputs/Stroke:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameinputs/Veggies:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: :B

_output_shapes
: :C

_output_shapes
: :D

_output_shapes
: :E

_output_shapes
: :F

_output_shapes
: :G

_output_shapes
: :H

_output_shapes
: :I

_output_shapes
: :J

_output_shapes
: :K

_output_shapes
: :L

_output_shapes
: :M

_output_shapes
: :N

_output_shapes
: :O

_output_shapes
: :P

_output_shapes
: :Q

_output_shapes
: :R

_output_shapes
: :S

_output_shapes
: :T

_output_shapes
: :U

_output_shapes
: :V

_output_shapes
: :W

_output_shapes
: :X

_output_shapes
: :Y

_output_shapes
: :Z

_output_shapes
: :[

_output_shapes
: :\

_output_shapes
: :]

_output_shapes
: :^

_output_shapes
: :_

_output_shapes
: :`

_output_shapes
: :a

_output_shapes
: :b

_output_shapes
: :c

_output_shapes
: :d

_output_shapes
: :e

_output_shapes
: :f

_output_shapes
: :g

_output_shapes
: :h

_output_shapes
: 
ЂН
№
'__inference_serve_tf_examples_fn_281566
examples#
transform_features_layer_281343#
transform_features_layer_281345#
transform_features_layer_281347#
transform_features_layer_281349#
transform_features_layer_281351#
transform_features_layer_281353#
transform_features_layer_281355#
transform_features_layer_281357#
transform_features_layer_281359#
transform_features_layer_281361#
transform_features_layer_281363#
transform_features_layer_281365#
transform_features_layer_281367#
transform_features_layer_281369#
transform_features_layer_281371#
transform_features_layer_281373#
transform_features_layer_281375#
transform_features_layer_281377#
transform_features_layer_281379#
transform_features_layer_281381#
transform_features_layer_281383#
transform_features_layer_281385#
transform_features_layer_281387#
transform_features_layer_281389#
transform_features_layer_281391#
transform_features_layer_281393#
transform_features_layer_281395#
transform_features_layer_281397#
transform_features_layer_281399#
transform_features_layer_281401#
transform_features_layer_281403#
transform_features_layer_281405#
transform_features_layer_281407#
transform_features_layer_281409#
transform_features_layer_281411#
transform_features_layer_281413#
transform_features_layer_281415#
transform_features_layer_281417#
transform_features_layer_281419#
transform_features_layer_281421#
transform_features_layer_281423#
transform_features_layer_281425#
transform_features_layer_281427#
transform_features_layer_281429#
transform_features_layer_281431#
transform_features_layer_281433#
transform_features_layer_281435#
transform_features_layer_281437#
transform_features_layer_281439#
transform_features_layer_281441#
transform_features_layer_281443#
transform_features_layer_281445#
transform_features_layer_281447#
transform_features_layer_281449#
transform_features_layer_281451#
transform_features_layer_281453#
transform_features_layer_281455#
transform_features_layer_281457#
transform_features_layer_281459#
transform_features_layer_281461#
transform_features_layer_281463#
transform_features_layer_281465#
transform_features_layer_281467#
transform_features_layer_281469#
transform_features_layer_281471#
transform_features_layer_281473#
transform_features_layer_281475#
transform_features_layer_281477#
transform_features_layer_281479#
transform_features_layer_281481#
transform_features_layer_281483#
transform_features_layer_281485#
transform_features_layer_281487#
transform_features_layer_281489#
transform_features_layer_281491#
transform_features_layer_281493#
transform_features_layer_281495#
transform_features_layer_281497#
transform_features_layer_281499#
transform_features_layer_281501#
transform_features_layer_281503#
transform_features_layer_281505#
transform_features_layer_281507#
transform_features_layer_281509A
.model_1_dense_5_matmul_readvariableop_resource:	>
/model_1_dense_5_biasadd_readvariableop_resource:	B
.model_1_dense_6_matmul_readvariableop_resource:
>
/model_1_dense_6_biasadd_readvariableop_resource:	B
.model_1_dense_7_matmul_readvariableop_resource:
>
/model_1_dense_7_biasadd_readvariableop_resource:	A
.model_1_dense_8_matmul_readvariableop_resource:	=
/model_1_dense_8_biasadd_readvariableop_resource:
identityЂ&model_1/dense_5/BiasAdd/ReadVariableOpЂ%model_1/dense_5/MatMul/ReadVariableOpЂ&model_1/dense_6/BiasAdd/ReadVariableOpЂ%model_1/dense_6/MatMul/ReadVariableOpЂ&model_1/dense_7/BiasAdd/ReadVariableOpЂ%model_1/dense_7/MatMul/ReadVariableOpЂ&model_1/dense_8/BiasAdd/ReadVariableOpЂ%model_1/dense_8/MatMul/ReadVariableOpЂ0transform_features_layer/StatefulPartitionedCallU
ParseExample/ConstConst*
_output_shapes
: *
dtype0*
valueB W
ParseExample/Const_1Const*
_output_shapes
: *
dtype0*
valueB W
ParseExample/Const_2Const*
_output_shapes
: *
dtype0*
valueB W
ParseExample/Const_3Const*
_output_shapes
: *
dtype0*
valueB W
ParseExample/Const_4Const*
_output_shapes
: *
dtype0*
valueB W
ParseExample/Const_5Const*
_output_shapes
: *
dtype0*
valueB W
ParseExample/Const_6Const*
_output_shapes
: *
dtype0*
valueB W
ParseExample/Const_7Const*
_output_shapes
: *
dtype0*
valueB W
ParseExample/Const_8Const*
_output_shapes
: *
dtype0*
valueB W
ParseExample/Const_9Const*
_output_shapes
: *
dtype0*
valueB X
ParseExample/Const_10Const*
_output_shapes
: *
dtype0*
valueB X
ParseExample/Const_11Const*
_output_shapes
: *
dtype0*
valueB X
ParseExample/Const_12Const*
_output_shapes
: *
dtype0*
valueB X
ParseExample/Const_13Const*
_output_shapes
: *
dtype0*
valueB X
ParseExample/Const_14Const*
_output_shapes
: *
dtype0*
valueB X
ParseExample/Const_15Const*
_output_shapes
: *
dtype0*
valueB X
ParseExample/Const_16Const*
_output_shapes
: *
dtype0*
valueB X
ParseExample/Const_17Const*
_output_shapes
: *
dtype0*
valueB X
ParseExample/Const_18Const*
_output_shapes
: *
dtype0*
valueB X
ParseExample/Const_19Const*
_output_shapes
: *
dtype0*
valueB X
ParseExample/Const_20Const*
_output_shapes
: *
dtype0*
valueB d
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB j
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
: *
dtype0*
valueB Ъ
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
:*
dtype0*я
valueхBтBAgeBAnyHealthcareBBMIB	CholCheckBDiffWalkB	EducationBFruitsBGenHlthBHeartDiseaseorAttackBHighBPBHighCholBHvyAlcoholConsumpBIncomeBMentHlthBNoDocbcCostBPhysActivityBPhysHlthBSexBSmokerBStrokeBVeggiesj
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB Ч
ParseExample/ParseExampleV2ParseExampleV2examples*ParseExample/ParseExampleV2/names:output:00ParseExample/ParseExampleV2/sparse_keys:output:0/ParseExample/ParseExampleV2/dense_keys:output:00ParseExample/ParseExampleV2/ragged_keys:output:0ParseExample/Const:output:0ParseExample/Const_1:output:0ParseExample/Const_2:output:0ParseExample/Const_3:output:0ParseExample/Const_4:output:0ParseExample/Const_5:output:0ParseExample/Const_6:output:0ParseExample/Const_7:output:0ParseExample/Const_8:output:0ParseExample/Const_9:output:0ParseExample/Const_10:output:0ParseExample/Const_11:output:0ParseExample/Const_12:output:0ParseExample/Const_13:output:0ParseExample/Const_14:output:0ParseExample/Const_15:output:0ParseExample/Const_16:output:0ParseExample/Const_17:output:0ParseExample/Const_18:output:0ParseExample/Const_19:output:0ParseExample/Const_20:output:0*#
Tdense
2*Ѕ
_output_shapes
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*
dense_shapes
~:::::::::::::::::::::*

num_sparse *
ragged_split_types
 *
ragged_value_types
 *
sparse_types
 x
transform_features_layer/ShapeShape*ParseExample/ParseExampleV2:dense_values:0*
T0*
_output_shapes
:v
,transform_features_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.transform_features_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.transform_features_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ю
&transform_features_layer/strided_sliceStridedSlice'transform_features_layer/Shape:output:05transform_features_layer/strided_slice/stack:output:07transform_features_layer/strided_slice/stack_1:output:07transform_features_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
 transform_features_layer/Shape_1Shape*ParseExample/ParseExampleV2:dense_values:0*
T0*
_output_shapes
:x
.transform_features_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0transform_features_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0transform_features_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:и
(transform_features_layer/strided_slice_1StridedSlice)transform_features_layer/Shape_1:output:07transform_features_layer/strided_slice_1/stack:output:09transform_features_layer/strided_slice_1/stack_1:output:09transform_features_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'transform_features_layer/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Р
%transform_features_layer/zeros/packedPack1transform_features_layer/strided_slice_1:output:00transform_features_layer/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:i
$transform_features_layer/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
transform_features_layer/zerosFill.transform_features_layer/zeros/packed:output:0-transform_features_layer/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџЦ
/transform_features_layer/PlaceholderWithDefaultPlaceholderWithDefault'transform_features_layer/zeros:output:0*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџЫ#
0transform_features_layer/StatefulPartitionedCallStatefulPartitionedCall*ParseExample/ParseExampleV2:dense_values:0*ParseExample/ParseExampleV2:dense_values:1*ParseExample/ParseExampleV2:dense_values:2*ParseExample/ParseExampleV2:dense_values:38transform_features_layer/PlaceholderWithDefault:output:0*ParseExample/ParseExampleV2:dense_values:4*ParseExample/ParseExampleV2:dense_values:5*ParseExample/ParseExampleV2:dense_values:6*ParseExample/ParseExampleV2:dense_values:7*ParseExample/ParseExampleV2:dense_values:8*ParseExample/ParseExampleV2:dense_values:9+ParseExample/ParseExampleV2:dense_values:10+ParseExample/ParseExampleV2:dense_values:11+ParseExample/ParseExampleV2:dense_values:12+ParseExample/ParseExampleV2:dense_values:13+ParseExample/ParseExampleV2:dense_values:14+ParseExample/ParseExampleV2:dense_values:15+ParseExample/ParseExampleV2:dense_values:16+ParseExample/ParseExampleV2:dense_values:17+ParseExample/ParseExampleV2:dense_values:18+ParseExample/ParseExampleV2:dense_values:19+ParseExample/ParseExampleV2:dense_values:20transform_features_layer_281343transform_features_layer_281345transform_features_layer_281347transform_features_layer_281349transform_features_layer_281351transform_features_layer_281353transform_features_layer_281355transform_features_layer_281357transform_features_layer_281359transform_features_layer_281361transform_features_layer_281363transform_features_layer_281365transform_features_layer_281367transform_features_layer_281369transform_features_layer_281371transform_features_layer_281373transform_features_layer_281375transform_features_layer_281377transform_features_layer_281379transform_features_layer_281381transform_features_layer_281383transform_features_layer_281385transform_features_layer_281387transform_features_layer_281389transform_features_layer_281391transform_features_layer_281393transform_features_layer_281395transform_features_layer_281397transform_features_layer_281399transform_features_layer_281401transform_features_layer_281403transform_features_layer_281405transform_features_layer_281407transform_features_layer_281409transform_features_layer_281411transform_features_layer_281413transform_features_layer_281415transform_features_layer_281417transform_features_layer_281419transform_features_layer_281421transform_features_layer_281423transform_features_layer_281425transform_features_layer_281427transform_features_layer_281429transform_features_layer_281431transform_features_layer_281433transform_features_layer_281435transform_features_layer_281437transform_features_layer_281439transform_features_layer_281441transform_features_layer_281443transform_features_layer_281445transform_features_layer_281447transform_features_layer_281449transform_features_layer_281451transform_features_layer_281453transform_features_layer_281455transform_features_layer_281457transform_features_layer_281459transform_features_layer_281461transform_features_layer_281463transform_features_layer_281465transform_features_layer_281467transform_features_layer_281469transform_features_layer_281471transform_features_layer_281473transform_features_layer_281475transform_features_layer_281477transform_features_layer_281479transform_features_layer_281481transform_features_layer_281483transform_features_layer_281485transform_features_layer_281487transform_features_layer_281489transform_features_layer_281491transform_features_layer_281493transform_features_layer_281495transform_features_layer_281497transform_features_layer_281499transform_features_layer_281501transform_features_layer_281503transform_features_layer_281505transform_features_layer_281507transform_features_layer_281509*u
Tinn
l2j*"
Tout
2	*И
_output_shapesЅ
Ђ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *"
fR
__inference_pruned_280853c
!model_1/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ђ

model_1/concatenate_1/concatConcatV2:transform_features_layer/StatefulPartitionedCall:output:10:transform_features_layer/StatefulPartitionedCall:output:119transform_features_layer/StatefulPartitionedCall:output:39transform_features_layer/StatefulPartitionedCall:output:2:transform_features_layer/StatefulPartitionedCall:output:19:transform_features_layer/StatefulPartitionedCall:output:209transform_features_layer/StatefulPartitionedCall:output:9:transform_features_layer/StatefulPartitionedCall:output:169transform_features_layer/StatefulPartitionedCall:output:7:transform_features_layer/StatefulPartitionedCall:output:21:transform_features_layer/StatefulPartitionedCall:output:129transform_features_layer/StatefulPartitionedCall:output:1:transform_features_layer/StatefulPartitionedCall:output:159transform_features_layer/StatefulPartitionedCall:output:8:transform_features_layer/StatefulPartitionedCall:output:14:transform_features_layer/StatefulPartitionedCall:output:179transform_features_layer/StatefulPartitionedCall:output:5:transform_features_layer/StatefulPartitionedCall:output:189transform_features_layer/StatefulPartitionedCall:output:09transform_features_layer/StatefulPartitionedCall:output:6:transform_features_layer/StatefulPartitionedCall:output:13*model_1/concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ
%model_1/dense_5/MatMul/ReadVariableOpReadVariableOp.model_1_dense_5_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Љ
model_1/dense_5/MatMulMatMul%model_1/concatenate_1/concat:output:0-model_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ї
model_1/dense_5/BiasAddBiasAdd model_1/dense_5/MatMul:product:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџq
model_1/dense_5/ReluRelu model_1/dense_5/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
%model_1/dense_6/MatMul/ReadVariableOpReadVariableOp.model_1_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0І
model_1/dense_6/MatMulMatMul"model_1/dense_5/Relu:activations:0-model_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
&model_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ї
model_1/dense_6/BiasAddBiasAdd model_1/dense_6/MatMul:product:0.model_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџq
model_1/dense_6/ReluRelu model_1/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ}
model_1/dropout_3/IdentityIdentity"model_1/dense_6/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ
%model_1/dense_7/MatMul/ReadVariableOpReadVariableOp.model_1_dense_7_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Ї
model_1/dense_7/MatMulMatMul#model_1/dropout_3/Identity:output:0-model_1/dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
&model_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_7_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ї
model_1/dense_7/BiasAddBiasAdd model_1/dense_7/MatMul:product:0.model_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџq
model_1/dense_7/ReluRelu model_1/dense_7/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ}
model_1/dropout_4/IdentityIdentity"model_1/dense_7/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ
%model_1/dense_8/MatMul/ReadVariableOpReadVariableOp.model_1_dense_8_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0І
model_1/dense_8/MatMulMatMul#model_1/dropout_4/Identity:output:0-model_1/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&model_1/dense_8/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
model_1/dense_8/BiasAddBiasAdd model_1/dense_8/MatMul:product:0.model_1/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџv
model_1/dense_8/SigmoidSigmoid model_1/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
IdentityIdentitymodel_1/dense_8/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџН
NoOpNoOp'^model_1/dense_5/BiasAdd/ReadVariableOp&^model_1/dense_5/MatMul/ReadVariableOp'^model_1/dense_6/BiasAdd/ReadVariableOp&^model_1/dense_6/MatMul/ReadVariableOp'^model_1/dense_7/BiasAdd/ReadVariableOp&^model_1/dense_7/MatMul/ReadVariableOp'^model_1/dense_8/BiasAdd/ReadVariableOp&^model_1/dense_8/MatMul/ReadVariableOp1^transform_features_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*м
_input_shapesЪ
Ч:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&model_1/dense_5/BiasAdd/ReadVariableOp&model_1/dense_5/BiasAdd/ReadVariableOp2N
%model_1/dense_5/MatMul/ReadVariableOp%model_1/dense_5/MatMul/ReadVariableOp2P
&model_1/dense_6/BiasAdd/ReadVariableOp&model_1/dense_6/BiasAdd/ReadVariableOp2N
%model_1/dense_6/MatMul/ReadVariableOp%model_1/dense_6/MatMul/ReadVariableOp2P
&model_1/dense_7/BiasAdd/ReadVariableOp&model_1/dense_7/BiasAdd/ReadVariableOp2N
%model_1/dense_7/MatMul/ReadVariableOp%model_1/dense_7/MatMul/ReadVariableOp2P
&model_1/dense_8/BiasAdd/ReadVariableOp&model_1/dense_8/BiasAdd/ReadVariableOp2N
%model_1/dense_8/MatMul/ReadVariableOp%model_1/dense_8/MatMul/ReadVariableOp2d
0transform_features_layer/StatefulPartitionedCall0transform_features_layer/StatefulPartitionedCall:M I
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
examples:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: :B

_output_shapes
: :C

_output_shapes
: :D

_output_shapes
: :E

_output_shapes
: :F

_output_shapes
: :G

_output_shapes
: :H

_output_shapes
: :I

_output_shapes
: :J

_output_shapes
: :K

_output_shapes
: :L

_output_shapes
: :M

_output_shapes
: :N

_output_shapes
: :O

_output_shapes
: :P

_output_shapes
: :Q

_output_shapes
: :R

_output_shapes
: :S

_output_shapes
: :T

_output_shapes
: 
Їm
Ў
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_282087

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_20
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58

unknown_59

unknown_60

unknown_61

unknown_62

unknown_63

unknown_64

unknown_65

unknown_66

unknown_67

unknown_68

unknown_69

unknown_70

unknown_71

unknown_72

unknown_73

unknown_74

unknown_75

unknown_76

unknown_77

unknown_78

unknown_79

unknown_80

unknown_81

unknown_82
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20ЂStatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask=
Shape_1Shapeinputs*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :u
zeros/packedPackstrided_slice_1:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
PlaceholderWithDefaultPlaceholderWithDefaultzeros:output:0*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџм
StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3PlaceholderWithDefault:output:0inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75
unknown_76
unknown_77
unknown_78
unknown_79
unknown_80
unknown_81
unknown_82*u
Tinn
l2j*"
Tout
2	*И
_output_shapesЅ
Ђ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *"
fR
__inference_pruned_280853o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_3Identity StatefulPartitionedCall:output:3^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_4Identity StatefulPartitionedCall:output:5^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_5Identity StatefulPartitionedCall:output:6^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_6Identity StatefulPartitionedCall:output:7^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_7Identity StatefulPartitionedCall:output:8^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_8Identity StatefulPartitionedCall:output:9^NoOp*
T0*'
_output_shapes
:џџџџџџџџџr

Identity_9Identity!StatefulPartitionedCall:output:10^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_10Identity!StatefulPartitionedCall:output:11^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_11Identity!StatefulPartitionedCall:output:12^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_12Identity!StatefulPartitionedCall:output:13^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_13Identity!StatefulPartitionedCall:output:14^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_14Identity!StatefulPartitionedCall:output:15^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_15Identity!StatefulPartitionedCall:output:16^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_16Identity!StatefulPartitionedCall:output:17^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_17Identity!StatefulPartitionedCall:output:18^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_18Identity!StatefulPartitionedCall:output:19^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_19Identity!StatefulPartitionedCall:output:20^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_20Identity!StatefulPartitionedCall:output:21^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*Ь
_input_shapesК
З:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O	K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O
K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: :B

_output_shapes
: :C

_output_shapes
: :D

_output_shapes
: :E

_output_shapes
: :F

_output_shapes
: :G

_output_shapes
: :H

_output_shapes
: :I

_output_shapes
: :J

_output_shapes
: :K

_output_shapes
: :L

_output_shapes
: :M

_output_shapes
: :N

_output_shapes
: :O

_output_shapes
: :P

_output_shapes
: :Q

_output_shapes
: :R

_output_shapes
: :S

_output_shapes
: :T

_output_shapes
: :U

_output_shapes
: :V

_output_shapes
: :W

_output_shapes
: :X

_output_shapes
: :Y

_output_shapes
: :Z

_output_shapes
: :[

_output_shapes
: :\

_output_shapes
: :]

_output_shapes
: :^

_output_shapes
: :_

_output_shapes
: :`

_output_shapes
: :a

_output_shapes
: :b

_output_shapes
: :c

_output_shapes
: :d

_output_shapes
: :e

_output_shapes
: :f

_output_shapes
: :g

_output_shapes
: :h

_output_shapes
: 
Ђ

і
C__inference_dense_5_layer_call_and_return_conditional_losses_283612

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
м
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_283694

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:џџџџџџџџџ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
І

ї
C__inference_dense_7_layer_call_and_return_conditional_losses_283679

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ѓ
F
*__inference_dropout_4_layer_call_fn_283684

inputs
identityБ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_282918a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
q
Р
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_284208

inputs_age
inputs_anyhealthcare

inputs_bmi
inputs_cholcheck
inputs_diffwalk
inputs_education
inputs_fruits
inputs_genhlth
inputs_heartdiseaseorattack
inputs_highbp
inputs_highchol
inputs_hvyalcoholconsump
inputs_income
inputs_menthlth
inputs_nodocbccost
inputs_physactivity
inputs_physhlth

inputs_sex
inputs_smoker
inputs_stroke
inputs_veggies
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58

unknown_59

unknown_60

unknown_61

unknown_62

unknown_63

unknown_64

unknown_65

unknown_66

unknown_67

unknown_68

unknown_69

unknown_70

unknown_71

unknown_72

unknown_73

unknown_74

unknown_75

unknown_76

unknown_77

unknown_78

unknown_79

unknown_80

unknown_81

unknown_82
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20ЂStatefulPartitionedCall?
ShapeShape
inputs_age*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskA
Shape_1Shape
inputs_age*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :u
zeros/packedPackstrided_slice_1:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
PlaceholderWithDefaultPlaceholderWithDefaultzeros:output:0*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџю
StatefulPartitionedCallStatefulPartitionedCall
inputs_ageinputs_anyhealthcare
inputs_bmiinputs_cholcheckPlaceholderWithDefault:output:0inputs_diffwalkinputs_educationinputs_fruitsinputs_genhlthinputs_heartdiseaseorattackinputs_highbpinputs_highcholinputs_hvyalcoholconsumpinputs_incomeinputs_menthlthinputs_nodocbccostinputs_physactivityinputs_physhlth
inputs_sexinputs_smokerinputs_strokeinputs_veggiesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75
unknown_76
unknown_77
unknown_78
unknown_79
unknown_80
unknown_81
unknown_82*u
Tinn
l2j*"
Tout
2	*И
_output_shapesЅ
Ђ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *"
fR
__inference_pruned_280853o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_3Identity StatefulPartitionedCall:output:3^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_4Identity StatefulPartitionedCall:output:5^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_5Identity StatefulPartitionedCall:output:6^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_6Identity StatefulPartitionedCall:output:7^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_7Identity StatefulPartitionedCall:output:8^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_8Identity StatefulPartitionedCall:output:9^NoOp*
T0*'
_output_shapes
:џџџџџџџџџr

Identity_9Identity!StatefulPartitionedCall:output:10^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_10Identity!StatefulPartitionedCall:output:11^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_11Identity!StatefulPartitionedCall:output:12^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_12Identity!StatefulPartitionedCall:output:13^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_13Identity!StatefulPartitionedCall:output:14^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_14Identity!StatefulPartitionedCall:output:15^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_15Identity!StatefulPartitionedCall:output:16^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_16Identity!StatefulPartitionedCall:output:17^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_17Identity!StatefulPartitionedCall:output:18^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_18Identity!StatefulPartitionedCall:output:19^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_19Identity!StatefulPartitionedCall:output:20^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_20Identity!StatefulPartitionedCall:output:21^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*Ь
_input_shapesК
З:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
inputs/Age:]Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameinputs/AnyHealthcare:SO
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
inputs/BMI:YU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameinputs/CholCheck:XT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameinputs/DiffWalk:YU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameinputs/Education:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameinputs/Fruits:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameinputs/GenHlth:d`
'
_output_shapes
:џџџџџџџџџ
5
_user_specified_nameinputs/HeartDiseaseorAttack:V	R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameinputs/HighBP:X
T
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameinputs/HighChol:a]
'
_output_shapes
:џџџџџџџџџ
2
_user_specified_nameinputs/HvyAlcoholConsump:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameinputs/Income:XT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameinputs/MentHlth:[W
'
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameinputs/NoDocbcCost:\X
'
_output_shapes
:џџџџџџџџџ
-
_user_specified_nameinputs/PhysActivity:XT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameinputs/PhysHlth:SO
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
inputs/Sex:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameinputs/Smoker:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameinputs/Stroke:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameinputs/Veggies:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: :B

_output_shapes
: :C

_output_shapes
: :D

_output_shapes
: :E

_output_shapes
: :F

_output_shapes
: :G

_output_shapes
: :H

_output_shapes
: :I

_output_shapes
: :J

_output_shapes
: :K

_output_shapes
: :L

_output_shapes
: :M

_output_shapes
: :N

_output_shapes
: :O

_output_shapes
: :P

_output_shapes
: :Q

_output_shapes
: :R

_output_shapes
: :S

_output_shapes
: :T

_output_shapes
: :U

_output_shapes
: :V

_output_shapes
: :W

_output_shapes
: :X

_output_shapes
: :Y

_output_shapes
: :Z

_output_shapes
: :[

_output_shapes
: :\

_output_shapes
: :]

_output_shapes
: :^

_output_shapes
: :_

_output_shapes
: :`

_output_shapes
: :a

_output_shapes
: :b

_output_shapes
: :c

_output_shapes
: :d

_output_shapes
: :e

_output_shapes
: :f

_output_shapes
: :g

_output_shapes
: :h

_output_shapes
: 
м
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_282918

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:џџџџџџџџџ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
л
х
(__inference_model_1_layer_call_fn_283374
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_20
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_282938o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Д
_input_shapesЂ
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/10:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/11:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/12:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/13:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/14:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/15:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/16:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/17:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/18:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/19:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/20
с;
и
C__inference_model_1_layer_call_and_return_conditional_losses_283471
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_209
&dense_5_matmul_readvariableop_resource:	6
'dense_5_biasadd_readvariableop_resource:	:
&dense_6_matmul_readvariableop_resource:
6
'dense_6_biasadd_readvariableop_resource:	:
&dense_7_matmul_readvariableop_resource:
6
'dense_7_biasadd_readvariableop_resource:	9
&dense_8_matmul_readvariableop_resource:	5
'dense_8_biasadd_readvariableop_resource:
identityЂdense_5/BiasAdd/ReadVariableOpЂdense_5/MatMul/ReadVariableOpЂdense_6/BiasAdd/ReadVariableOpЂdense_6/MatMul/ReadVariableOpЂdense_7/BiasAdd/ReadVariableOpЂdense_7/MatMul/ReadVariableOpЂdense_8/BiasAdd/ReadVariableOpЂdense_8/MatMul/ReadVariableOp[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :м
concatenate_1/concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20"concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_5/MatMulMatMulconcatenate_1/concat:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџm
dropout_3/IdentityIdentitydense_6/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_7/MatMulMatMuldropout_3/Identity:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџm
dropout_4/IdentityIdentitydense_7/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_8/MatMulMatMuldropout_4/Identity:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџf
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
IdentityIdentitydense_8/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЪ
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Д
_input_shapesЂ
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/10:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/11:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/12:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/13:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/14:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/15:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/16:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/17:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/18:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/19:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/20
ћ	
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_283020

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *?Ї
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
л
х
(__inference_model_1_layer_call_fn_283415
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_20
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_283179o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Д
_input_shapesЂ
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/10:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/11:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/12:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/13:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/14:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/15:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/16:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/17:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/18:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/19:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/20


ѕ
C__inference_dense_8_layer_call_and_return_conditional_losses_283726

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
О
я
.__inference_concatenate_1_layer_call_fn_283566
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_20
identity
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_282853`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Є
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/10:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/11:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/12:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/13:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/14:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/15:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/16:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/17:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/18:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/19:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/20
Ф

(__inference_dense_5_layer_call_fn_283601

inputs
unknown:	
	unknown_0:	
identityЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_282866p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ч

(__inference_dense_7_layer_call_fn_283668

inputs
unknown:

	unknown_0:	
identityЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_282907p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ѓB
ђ	
!__inference__wrapped_model_281814
	highbp_xf
highchol_xf
cholcheck_xf

bmi_xf
	smoker_xf
	stroke_xf
heartdiseaseorattack_xf
physactivity_xf
	fruits_xf

veggies_xf
hvyalcoholconsump_xf
anyhealthcare_xf
nodocbccost_xf

genhlth_xf
menthlth_xf
physhlth_xf
diffwalk_xf

sex_xf

age_xf
education_xf
	income_xfA
.model_1_dense_5_matmul_readvariableop_resource:	>
/model_1_dense_5_biasadd_readvariableop_resource:	B
.model_1_dense_6_matmul_readvariableop_resource:
>
/model_1_dense_6_biasadd_readvariableop_resource:	B
.model_1_dense_7_matmul_readvariableop_resource:
>
/model_1_dense_7_biasadd_readvariableop_resource:	A
.model_1_dense_8_matmul_readvariableop_resource:	=
/model_1_dense_8_biasadd_readvariableop_resource:
identityЂ&model_1/dense_5/BiasAdd/ReadVariableOpЂ%model_1/dense_5/MatMul/ReadVariableOpЂ&model_1/dense_6/BiasAdd/ReadVariableOpЂ%model_1/dense_6/MatMul/ReadVariableOpЂ&model_1/dense_7/BiasAdd/ReadVariableOpЂ%model_1/dense_7/MatMul/ReadVariableOpЂ&model_1/dense_8/BiasAdd/ReadVariableOpЂ%model_1/dense_8/MatMul/ReadVariableOpc
!model_1/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ј
model_1/concatenate_1/concatConcatV2	highbp_xfhighchol_xfcholcheck_xfbmi_xf	smoker_xf	stroke_xfheartdiseaseorattack_xfphysactivity_xf	fruits_xf
veggies_xfhvyalcoholconsump_xfanyhealthcare_xfnodocbccost_xf
genhlth_xfmenthlth_xfphyshlth_xfdiffwalk_xfsex_xfage_xfeducation_xf	income_xf*model_1/concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ
%model_1/dense_5/MatMul/ReadVariableOpReadVariableOp.model_1_dense_5_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Љ
model_1/dense_5/MatMulMatMul%model_1/concatenate_1/concat:output:0-model_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ї
model_1/dense_5/BiasAddBiasAdd model_1/dense_5/MatMul:product:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџq
model_1/dense_5/ReluRelu model_1/dense_5/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
%model_1/dense_6/MatMul/ReadVariableOpReadVariableOp.model_1_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0І
model_1/dense_6/MatMulMatMul"model_1/dense_5/Relu:activations:0-model_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
&model_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ї
model_1/dense_6/BiasAddBiasAdd model_1/dense_6/MatMul:product:0.model_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџq
model_1/dense_6/ReluRelu model_1/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ}
model_1/dropout_3/IdentityIdentity"model_1/dense_6/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ
%model_1/dense_7/MatMul/ReadVariableOpReadVariableOp.model_1_dense_7_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Ї
model_1/dense_7/MatMulMatMul#model_1/dropout_3/Identity:output:0-model_1/dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
&model_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_7_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ї
model_1/dense_7/BiasAddBiasAdd model_1/dense_7/MatMul:product:0.model_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџq
model_1/dense_7/ReluRelu model_1/dense_7/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ}
model_1/dropout_4/IdentityIdentity"model_1/dense_7/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџ
%model_1/dense_8/MatMul/ReadVariableOpReadVariableOp.model_1_dense_8_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0І
model_1/dense_8/MatMulMatMul#model_1/dropout_4/Identity:output:0-model_1/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&model_1/dense_8/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
model_1/dense_8/BiasAddBiasAdd model_1/dense_8/MatMul:product:0.model_1/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџv
model_1/dense_8/SigmoidSigmoid model_1/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
IdentityIdentitymodel_1/dense_8/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp'^model_1/dense_5/BiasAdd/ReadVariableOp&^model_1/dense_5/MatMul/ReadVariableOp'^model_1/dense_6/BiasAdd/ReadVariableOp&^model_1/dense_6/MatMul/ReadVariableOp'^model_1/dense_7/BiasAdd/ReadVariableOp&^model_1/dense_7/MatMul/ReadVariableOp'^model_1/dense_8/BiasAdd/ReadVariableOp&^model_1/dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Д
_input_shapesЂ
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : 2P
&model_1/dense_5/BiasAdd/ReadVariableOp&model_1/dense_5/BiasAdd/ReadVariableOp2N
%model_1/dense_5/MatMul/ReadVariableOp%model_1/dense_5/MatMul/ReadVariableOp2P
&model_1/dense_6/BiasAdd/ReadVariableOp&model_1/dense_6/BiasAdd/ReadVariableOp2N
%model_1/dense_6/MatMul/ReadVariableOp%model_1/dense_6/MatMul/ReadVariableOp2P
&model_1/dense_7/BiasAdd/ReadVariableOp&model_1/dense_7/BiasAdd/ReadVariableOp2N
%model_1/dense_7/MatMul/ReadVariableOp%model_1/dense_7/MatMul/ReadVariableOp2P
&model_1/dense_8/BiasAdd/ReadVariableOp&model_1/dense_8/BiasAdd/ReadVariableOp2N
%model_1/dense_8/MatMul/ReadVariableOp%model_1/dense_8/MatMul/ReadVariableOp:R N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	HighBP_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameHighChol_xf:UQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameCholCheck_xf:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameBMI_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Smoker_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Stroke_xf:`\
'
_output_shapes
:џџџџџџџџџ
1
_user_specified_nameHeartDiseaseorAttack_xf:XT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_namePhysActivity_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Fruits_xf:S	O
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
Veggies_xf:]
Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameHvyAlcoholConsump_xf:YU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameAnyHealthcare_xf:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameNoDocbcCost_xf:SO
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
GenHlth_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameMentHlth_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_namePhysHlth_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameDiffWalk_xf:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameSex_xf:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameAge_xf:UQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameEducation_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Income_xf
яJ
и
C__inference_model_1_layer_call_and_return_conditional_losses_283541
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_209
&dense_5_matmul_readvariableop_resource:	6
'dense_5_biasadd_readvariableop_resource:	:
&dense_6_matmul_readvariableop_resource:
6
'dense_6_biasadd_readvariableop_resource:	:
&dense_7_matmul_readvariableop_resource:
6
'dense_7_biasadd_readvariableop_resource:	9
&dense_8_matmul_readvariableop_resource:	5
'dense_8_biasadd_readvariableop_resource:
identityЂdense_5/BiasAdd/ReadVariableOpЂdense_5/MatMul/ReadVariableOpЂdense_6/BiasAdd/ReadVariableOpЂdense_6/MatMul/ReadVariableOpЂdense_7/BiasAdd/ReadVariableOpЂdense_7/MatMul/ReadVariableOpЂdense_8/BiasAdd/ReadVariableOpЂdense_8/MatMul/ReadVariableOp[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :м
concatenate_1/concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20"concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_5/MatMulMatMulconcatenate_1/concat:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_3/dropout/MulMuldense_6/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџa
dropout_3/dropout/ShapeShapedense_6/Relu:activations:0*
T0*
_output_shapes
:Ё
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *?Х
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_7/MatMulMatMuldropout_3/dropout/Mul_1:z:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_4/dropout/MulMuldense_7/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџa
dropout_4/dropout/ShapeShapedense_7/Relu:activations:0*
T0*
_output_shapes
:Ё
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *?Х
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџ
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_8/MatMulMatMuldropout_4/dropout/Mul_1:z:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџf
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
IdentityIdentitydense_8/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЪ
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Д
_input_shapesЂ
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/10:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/11:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/12:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/13:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/14:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/15:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/16:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/17:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/18:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/19:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs/20
Ѓ
F
*__inference_dropout_3_layer_call_fn_283637

inputs
identityБ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_282894a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ђ

і
C__inference_dense_5_layer_call_and_return_conditional_losses_282866

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
7

C__inference_model_1_layer_call_and_return_conditional_losses_283333
	highbp_xf
highchol_xf
cholcheck_xf

bmi_xf
	smoker_xf
	stroke_xf
heartdiseaseorattack_xf
physactivity_xf
	fruits_xf

veggies_xf
hvyalcoholconsump_xf
anyhealthcare_xf
nodocbccost_xf

genhlth_xf
menthlth_xf
physhlth_xf
diffwalk_xf

sex_xf

age_xf
education_xf
	income_xf!
dense_5_283310:	
dense_5_283312:	"
dense_6_283315:

dense_6_283317:	"
dense_7_283321:

dense_7_283323:	!
dense_8_283327:	
dense_8_283329:
identityЂdense_5/StatefulPartitionedCallЂdense_6/StatefulPartitionedCallЂdense_7/StatefulPartitionedCallЂdense_8/StatefulPartitionedCallЂ!dropout_3/StatefulPartitionedCallЂ!dropout_4/StatefulPartitionedCallч
concatenate_1/PartitionedCallPartitionedCall	highbp_xfhighchol_xfcholcheck_xfbmi_xf	smoker_xf	stroke_xfheartdiseaseorattack_xfphysactivity_xf	fruits_xf
veggies_xfhvyalcoholconsump_xfanyhealthcare_xfnodocbccost_xf
genhlth_xfmenthlth_xfphyshlth_xfdiffwalk_xfsex_xfage_xfeducation_xf	income_xf* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_282853
dense_5/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_5_283310dense_5_283312*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_282866
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_283315dense_6_283317*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_282883э
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_283020
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_7_283321dense_7_283323*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_282907
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_282987
dense_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_8_283327dense_8_283329*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_282931w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Д
_input_shapesЂ
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall:R N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	HighBP_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameHighChol_xf:UQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameCholCheck_xf:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameBMI_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Smoker_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Stroke_xf:`\
'
_output_shapes
:џџџџџџџџџ
1
_user_specified_nameHeartDiseaseorAttack_xf:XT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_namePhysActivity_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Fruits_xf:S	O
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
Veggies_xf:]
Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameHvyAlcoholConsump_xf:YU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameAnyHealthcare_xf:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameNoDocbcCost_xf:SO
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
GenHlth_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameMentHlth_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_namePhysHlth_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameDiffWalk_xf:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameSex_xf:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameAge_xf:UQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameEducation_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Income_xf
м
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_283647

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:џџџџџџџџџ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
І

ї
C__inference_dense_7_layer_call_and_return_conditional_losses_282907

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ћ	
d
E__inference_dropout_4_layer_call_and_return_conditional_losses_282987

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *?Ї
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Њ4
д
C__inference_model_1_layer_call_and_return_conditional_losses_283286
	highbp_xf
highchol_xf
cholcheck_xf

bmi_xf
	smoker_xf
	stroke_xf
heartdiseaseorattack_xf
physactivity_xf
	fruits_xf

veggies_xf
hvyalcoholconsump_xf
anyhealthcare_xf
nodocbccost_xf

genhlth_xf
menthlth_xf
physhlth_xf
diffwalk_xf

sex_xf

age_xf
education_xf
	income_xf!
dense_5_283263:	
dense_5_283265:	"
dense_6_283268:

dense_6_283270:	"
dense_7_283274:

dense_7_283276:	!
dense_8_283280:	
dense_8_283282:
identityЂdense_5/StatefulPartitionedCallЂdense_6/StatefulPartitionedCallЂdense_7/StatefulPartitionedCallЂdense_8/StatefulPartitionedCallч
concatenate_1/PartitionedCallPartitionedCall	highbp_xfhighchol_xfcholcheck_xfbmi_xf	smoker_xf	stroke_xfheartdiseaseorattack_xfphysactivity_xf	fruits_xf
veggies_xfhvyalcoholconsump_xfanyhealthcare_xfnodocbccost_xf
genhlth_xfmenthlth_xfphyshlth_xfdiffwalk_xfsex_xfage_xfeducation_xf	income_xf* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_282853
dense_5/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_5_283263dense_5_283265*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_282866
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_283268dense_6_283270*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_282883н
dropout_3/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_282894
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_7_283274dense_7_283276*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_282907н
dropout_4/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_282918
dense_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_8_283280dense_8_283282*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_282931w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЮ
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Д
_input_shapesЂ
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall:R N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	HighBP_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameHighChol_xf:UQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameCholCheck_xf:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameBMI_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Smoker_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Stroke_xf:`\
'
_output_shapes
:џџџџџџџџџ
1
_user_specified_nameHeartDiseaseorAttack_xf:XT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_namePhysActivity_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Fruits_xf:S	O
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
Veggies_xf:]
Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameHvyAlcoholConsump_xf:YU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameAnyHealthcare_xf:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameNoDocbcCost_xf:SO
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
GenHlth_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameMentHlth_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_namePhysHlth_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameDiffWalk_xf:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameSex_xf:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameAge_xf:UQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameEducation_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Income_xf
ћ	
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_283659

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *?Ї
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ї"
ћ
__inference__traced_save_284351
file_prefix-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const_84

identity_1ЂMergeV2Checkpointsw
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
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*У
valueЙBЖB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const_84"/device:CPU:0*
_output_shapes
 *
dtypes
2
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

identity_1Identity_1:output:0*h
_input_shapesW
U: :	::
::
::	:: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::	
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
: 


I__inference_concatenate_1_layer_call_and_return_conditional_losses_282853

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_20
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :О
concatConcatV2inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Є
_input_shapes
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O	K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O
K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
І

ї
C__inference_dense_6_layer_call_and_return_conditional_losses_283632

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Є1
ћ
$__inference_signature_wrapper_281757
examples
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58

unknown_59

unknown_60

unknown_61

unknown_62

unknown_63

unknown_64

unknown_65

unknown_66

unknown_67

unknown_68

unknown_69

unknown_70

unknown_71

unknown_72

unknown_73

unknown_74

unknown_75

unknown_76

unknown_77

unknown_78

unknown_79

unknown_80

unknown_81

unknown_82

unknown_83:	

unknown_84:	

unknown_85:


unknown_86:	

unknown_87:


unknown_88:	

unknown_89:	

unknown_90:
identityЂStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallexamplesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75
unknown_76
unknown_77
unknown_78
unknown_79
unknown_80
unknown_81
unknown_82
unknown_83
unknown_84
unknown_85
unknown_86
unknown_87
unknown_88
unknown_89
unknown_90*h
Tina
_2]*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

UVWXYZ[\*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_serve_tf_examples_fn_281566o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*м
_input_shapesЪ
Ч:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
examples:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: :B

_output_shapes
: :C

_output_shapes
: :D

_output_shapes
: :E

_output_shapes
: :F

_output_shapes
: :G

_output_shapes
: :H

_output_shapes
: :I

_output_shapes
: :J

_output_shapes
: :K

_output_shapes
: :L

_output_shapes
: :M

_output_shapes
: :N

_output_shapes
: :O

_output_shapes
: :P

_output_shapes
: :Q

_output_shapes
: :R

_output_shapes
: :S

_output_shapes
: :T

_output_shapes
: 
І

ї
C__inference_dense_6_layer_call_and_return_conditional_losses_282883

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Б5
о
C__inference_model_1_layer_call_and_return_conditional_losses_283179

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_20!
dense_5_283156:	
dense_5_283158:	"
dense_6_283161:

dense_6_283163:	"
dense_7_283167:

dense_7_283169:	!
dense_8_283173:	
dense_8_283175:
identityЂdense_5/StatefulPartitionedCallЂdense_6/StatefulPartitionedCallЂdense_7/StatefulPartitionedCallЂdense_8/StatefulPartitionedCallЂ!dropout_3/StatefulPartitionedCallЂ!dropout_4/StatefulPartitionedCallЉ
concatenate_1/PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_282853
dense_5/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_5_283156dense_5_283158*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_282866
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_283161dense_6_283163*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_282883э
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_283020
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_7_283167dense_7_283169*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_282907
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_282987
dense_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_8_283173dense_8_283175*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_282931w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Д
_input_shapesЂ
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O	K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O
K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ѕ
c
*__inference_dropout_3_layer_call_fn_283642

inputs
identityЂStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_283020p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Щ`

9__inference_transform_features_layer_layer_call_fn_282298
age
anyhealthcare
bmi
	cholcheck
diffwalk
	education

fruits
genhlth
heartdiseaseorattack

highbp
highchol
hvyalcoholconsump

income
menthlth
nodocbccost
physactivity
physhlth
sex

smoker

stroke
veggies
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58

unknown_59

unknown_60

unknown_61

unknown_62

unknown_63

unknown_64

unknown_65

unknown_66

unknown_67

unknown_68

unknown_69

unknown_70

unknown_71

unknown_72

unknown_73

unknown_74

unknown_75

unknown_76

unknown_77

unknown_78

unknown_79

unknown_80

unknown_81

unknown_82
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20ЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallageanyhealthcarebmi	cholcheckdiffwalk	educationfruitsgenhlthheartdiseaseorattackhighbphighcholhvyalcoholconsumpincomementhlthnodocbccostphysactivityphyshlthsexsmokerstrokeveggiesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75
unknown_76
unknown_77
unknown_78
unknown_79
unknown_80
unknown_81
unknown_82*t
Tinm
k2i*!
Tout
2*
_collective_manager_ids
 *Ѕ
_output_shapes
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_282087o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_3Identity StatefulPartitionedCall:output:3^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_4Identity StatefulPartitionedCall:output:4^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_5Identity StatefulPartitionedCall:output:5^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_6Identity StatefulPartitionedCall:output:6^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_7Identity StatefulPartitionedCall:output:7^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_8Identity StatefulPartitionedCall:output:8^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_9Identity StatefulPartitionedCall:output:9^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_10Identity!StatefulPartitionedCall:output:10^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_11Identity!StatefulPartitionedCall:output:11^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_12Identity!StatefulPartitionedCall:output:12^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_13Identity!StatefulPartitionedCall:output:13^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_14Identity!StatefulPartitionedCall:output:14^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_15Identity!StatefulPartitionedCall:output:15^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_16Identity!StatefulPartitionedCall:output:16^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_17Identity!StatefulPartitionedCall:output:17^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_18Identity!StatefulPartitionedCall:output:18^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_19Identity!StatefulPartitionedCall:output:19^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_20Identity!StatefulPartitionedCall:output:20^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*Ь
_input_shapesК
З:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:џџџџџџџџџ

_user_specified_nameAge:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameAnyHealthcare:LH
'
_output_shapes
:џџџџџџџџџ

_user_specified_nameBMI:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	CholCheck:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
DiffWalk:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Education:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameFruits:PL
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	GenHlth:]Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameHeartDiseaseorAttack:O	K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameHighBP:Q
M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
HighChol:ZV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameHvyAlcoholConsump:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameIncome:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
MentHlth:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameNoDocbcCost:UQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_namePhysActivity:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
PhysHlth:LH
'
_output_shapes
:џџџџџџџџџ

_user_specified_nameSex:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameSmoker:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameStroke:PL
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	Veggies:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: :B

_output_shapes
: :C

_output_shapes
: :D

_output_shapes
: :E

_output_shapes
: :F

_output_shapes
: :G

_output_shapes
: :H

_output_shapes
: :I

_output_shapes
: :J

_output_shapes
: :K

_output_shapes
: :L

_output_shapes
: :M

_output_shapes
: :N

_output_shapes
: :O

_output_shapes
: :P

_output_shapes
: :Q

_output_shapes
: :R

_output_shapes
: :S

_output_shapes
: :T

_output_shapes
: :U

_output_shapes
: :V

_output_shapes
: :W

_output_shapes
: :X

_output_shapes
: :Y

_output_shapes
: :Z

_output_shapes
: :[

_output_shapes
: :\

_output_shapes
: :]

_output_shapes
: :^

_output_shapes
: :_

_output_shapes
: :`

_output_shapes
: :a

_output_shapes
: :b

_output_shapes
: :c

_output_shapes
: :d

_output_shapes
: :e

_output_shapes
: :f

_output_shapes
: :g

_output_shapes
: :h

_output_shapes
: 
Џђ
Ў#
__inference_pruned_280853

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_20
	inputs_21$
 mean_mean_and_var_identity_input&
"mean_mean_and_var_identity_1_input-
)scale_to_0_1_min_and_max_identity_2_input-
)scale_to_0_1_min_and_max_identity_3_input&
"mean_1_mean_and_var_identity_input(
$mean_1_mean_and_var_identity_1_input/
+scale_to_0_1_1_min_and_max_identity_2_input/
+scale_to_0_1_1_min_and_max_identity_3_input&
"mean_2_mean_and_var_identity_input(
$mean_2_mean_and_var_identity_1_input/
+scale_to_0_1_2_min_and_max_identity_2_input/
+scale_to_0_1_2_min_and_max_identity_3_input&
"mean_3_mean_and_var_identity_input(
$mean_3_mean_and_var_identity_1_input/
+scale_to_0_1_3_min_and_max_identity_2_input/
+scale_to_0_1_3_min_and_max_identity_3_input&
"mean_4_mean_and_var_identity_input(
$mean_4_mean_and_var_identity_1_input/
+scale_to_0_1_4_min_and_max_identity_2_input/
+scale_to_0_1_4_min_and_max_identity_3_input&
"mean_5_mean_and_var_identity_input(
$mean_5_mean_and_var_identity_1_input/
+scale_to_0_1_5_min_and_max_identity_2_input/
+scale_to_0_1_5_min_and_max_identity_3_input&
"mean_6_mean_and_var_identity_input(
$mean_6_mean_and_var_identity_1_input/
+scale_to_0_1_6_min_and_max_identity_2_input/
+scale_to_0_1_6_min_and_max_identity_3_input&
"mean_7_mean_and_var_identity_input(
$mean_7_mean_and_var_identity_1_input/
+scale_to_0_1_7_min_and_max_identity_2_input/
+scale_to_0_1_7_min_and_max_identity_3_input&
"mean_8_mean_and_var_identity_input(
$mean_8_mean_and_var_identity_1_input/
+scale_to_0_1_8_min_and_max_identity_2_input/
+scale_to_0_1_8_min_and_max_identity_3_input&
"mean_9_mean_and_var_identity_input(
$mean_9_mean_and_var_identity_1_input/
+scale_to_0_1_9_min_and_max_identity_2_input/
+scale_to_0_1_9_min_and_max_identity_3_input'
#mean_10_mean_and_var_identity_input)
%mean_10_mean_and_var_identity_1_input0
,scale_to_0_1_10_min_and_max_identity_2_input0
,scale_to_0_1_10_min_and_max_identity_3_input'
#mean_11_mean_and_var_identity_input)
%mean_11_mean_and_var_identity_1_input0
,scale_to_0_1_11_min_and_max_identity_2_input0
,scale_to_0_1_11_min_and_max_identity_3_input'
#mean_12_mean_and_var_identity_input)
%mean_12_mean_and_var_identity_1_input0
,scale_to_0_1_12_min_and_max_identity_2_input0
,scale_to_0_1_12_min_and_max_identity_3_input'
#mean_13_mean_and_var_identity_input)
%mean_13_mean_and_var_identity_1_input0
,scale_to_0_1_13_min_and_max_identity_2_input0
,scale_to_0_1_13_min_and_max_identity_3_input'
#mean_14_mean_and_var_identity_input)
%mean_14_mean_and_var_identity_1_input0
,scale_to_0_1_14_min_and_max_identity_2_input0
,scale_to_0_1_14_min_and_max_identity_3_input'
#mean_15_mean_and_var_identity_input)
%mean_15_mean_and_var_identity_1_input0
,scale_to_0_1_15_min_and_max_identity_2_input0
,scale_to_0_1_15_min_and_max_identity_3_input'
#mean_16_mean_and_var_identity_input)
%mean_16_mean_and_var_identity_1_input0
,scale_to_0_1_16_min_and_max_identity_2_input0
,scale_to_0_1_16_min_and_max_identity_3_input'
#mean_17_mean_and_var_identity_input)
%mean_17_mean_and_var_identity_1_input0
,scale_to_0_1_17_min_and_max_identity_2_input0
,scale_to_0_1_17_min_and_max_identity_3_input'
#mean_18_mean_and_var_identity_input)
%mean_18_mean_and_var_identity_1_input0
,scale_to_0_1_18_min_and_max_identity_2_input0
,scale_to_0_1_18_min_and_max_identity_3_input'
#mean_19_mean_and_var_identity_input)
%mean_19_mean_and_var_identity_1_input0
,scale_to_0_1_19_min_and_max_identity_2_input0
,scale_to_0_1_19_min_and_max_identity_3_input'
#mean_20_mean_and_var_identity_input)
%mean_20_mean_and_var_identity_1_input0
,scale_to_0_1_20_min_and_max_identity_2_input0
,scale_to_0_1_20_min_and_max_identity_3_input
identity

identity_1

identity_2

identity_3

identity_4	

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20
identity_21Q
inputs_copyIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџf
Cast_18Castinputs_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџP
IsNan_18IsNanCast_18:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
mean_18/mean_and_var/IdentityIdentity#mean_18_mean_and_var_identity_input*
T0*
_output_shapes
: 
SelectV2_18SelectV2IsNan_18:y:0&mean_18/mean_and_var/Identity:output:0Cast_18:y:0*
T0*'
_output_shapes
:џџџџџџџџџs
scale_to_0_1_18/CastCastSelectV2_18:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџh
#scale_to_0_1_18/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
&scale_to_0_1_18/min_and_max/Identity_2Identity,scale_to_0_1_18_min_and_max_identity_2_input*
T0*
_output_shapes
: Ј
!scale_to_0_1_18/min_and_max/sub_1Sub,scale_to_0_1_18/min_and_max/sub_1/x:output:0/scale_to_0_1_18/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_18/subSubscale_to_0_1_18/Cast:y:0%scale_to_0_1_18/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџr
scale_to_0_1_18/zeros_like	ZerosLikescale_to_0_1_18/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
&scale_to_0_1_18/min_and_max/Identity_3Identity,scale_to_0_1_18_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_18/LessLess%scale_to_0_1_18/min_and_max/sub_1:z:0/scale_to_0_1_18/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: h
scale_to_0_1_18/Cast_1Castscale_to_0_1_18/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_18/addAddV2scale_to_0_1_18/zeros_like:y:0scale_to_0_1_18/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџx
scale_to_0_1_18/Cast_2Castscale_to_0_1_18/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_18/sub_1Sub/scale_to_0_1_18/min_and_max/Identity_3:output:0%scale_to_0_1_18/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_18/truedivRealDivscale_to_0_1_18/sub:z:0scale_to_0_1_18/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
scale_to_0_1_18/SigmoidSigmoidscale_to_0_1_18/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
scale_to_0_1_18/SelectV2SelectV2scale_to_0_1_18/Cast_2:y:0scale_to_0_1_18/truediv:z:0scale_to_0_1_18/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџZ
scale_to_0_1_18/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_18/mulMul!scale_to_0_1_18/SelectV2:output:0scale_to_0_1_18/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
scale_to_0_1_18/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_18/add_1AddV2scale_to_0_1_18/mul:z:0 scale_to_0_1_18/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
!scale_to_0_1_20/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB f
#scale_to_0_1_20/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Ж
0scale_to_0_1_20/min_and_max/assert_equal_1/EqualEqual*scale_to_0_1_20/min_and_max/Shape:output:0,scale_to_0_1_20/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: z
0scale_to_0_1_20/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: О
.scale_to_0_1_20/min_and_max/assert_equal_1/AllAll4scale_to_0_1_20/min_and_max/assert_equal_1/Equal:z:09scale_to_0_1_20/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Ћ
?scale_to_0_1_20/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Њ
?scale_to_0_1_20/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*x (scale_to_0_1_20/min_and_max/Shape:0) = Ќ
?scale_to_0_1_20/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (scale_to_0_1_20/min_and_max/Shape_1:0) = d
!scale_to_0_1_19/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB f
#scale_to_0_1_19/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Ж
0scale_to_0_1_19/min_and_max/assert_equal_1/EqualEqual*scale_to_0_1_19/min_and_max/Shape:output:0,scale_to_0_1_19/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: z
0scale_to_0_1_19/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: О
.scale_to_0_1_19/min_and_max/assert_equal_1/AllAll4scale_to_0_1_19/min_and_max/assert_equal_1/Equal:z:09scale_to_0_1_19/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Ћ
?scale_to_0_1_19/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Њ
?scale_to_0_1_19/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*x (scale_to_0_1_19/min_and_max/Shape:0) = Ќ
?scale_to_0_1_19/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (scale_to_0_1_19/min_and_max/Shape_1:0) = d
!scale_to_0_1_18/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB f
#scale_to_0_1_18/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Ж
0scale_to_0_1_18/min_and_max/assert_equal_1/EqualEqual*scale_to_0_1_18/min_and_max/Shape:output:0,scale_to_0_1_18/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: z
0scale_to_0_1_18/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: О
.scale_to_0_1_18/min_and_max/assert_equal_1/AllAll4scale_to_0_1_18/min_and_max/assert_equal_1/Equal:z:09scale_to_0_1_18/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Ћ
?scale_to_0_1_18/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Њ
?scale_to_0_1_18/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*x (scale_to_0_1_18/min_and_max/Shape:0) = Ќ
?scale_to_0_1_18/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (scale_to_0_1_18/min_and_max/Shape_1:0) = d
!scale_to_0_1_17/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB f
#scale_to_0_1_17/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Ж
0scale_to_0_1_17/min_and_max/assert_equal_1/EqualEqual*scale_to_0_1_17/min_and_max/Shape:output:0,scale_to_0_1_17/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: z
0scale_to_0_1_17/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: О
.scale_to_0_1_17/min_and_max/assert_equal_1/AllAll4scale_to_0_1_17/min_and_max/assert_equal_1/Equal:z:09scale_to_0_1_17/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Ћ
?scale_to_0_1_17/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Њ
?scale_to_0_1_17/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*x (scale_to_0_1_17/min_and_max/Shape:0) = Ќ
?scale_to_0_1_17/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (scale_to_0_1_17/min_and_max/Shape_1:0) = d
!scale_to_0_1_16/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB f
#scale_to_0_1_16/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Ж
0scale_to_0_1_16/min_and_max/assert_equal_1/EqualEqual*scale_to_0_1_16/min_and_max/Shape:output:0,scale_to_0_1_16/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: z
0scale_to_0_1_16/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: О
.scale_to_0_1_16/min_and_max/assert_equal_1/AllAll4scale_to_0_1_16/min_and_max/assert_equal_1/Equal:z:09scale_to_0_1_16/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Ћ
?scale_to_0_1_16/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Њ
?scale_to_0_1_16/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*x (scale_to_0_1_16/min_and_max/Shape:0) = Ќ
?scale_to_0_1_16/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (scale_to_0_1_16/min_and_max/Shape_1:0) = d
!scale_to_0_1_15/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB f
#scale_to_0_1_15/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Ж
0scale_to_0_1_15/min_and_max/assert_equal_1/EqualEqual*scale_to_0_1_15/min_and_max/Shape:output:0,scale_to_0_1_15/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: z
0scale_to_0_1_15/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: О
.scale_to_0_1_15/min_and_max/assert_equal_1/AllAll4scale_to_0_1_15/min_and_max/assert_equal_1/Equal:z:09scale_to_0_1_15/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Ћ
?scale_to_0_1_15/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Њ
?scale_to_0_1_15/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*x (scale_to_0_1_15/min_and_max/Shape:0) = Ќ
?scale_to_0_1_15/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (scale_to_0_1_15/min_and_max/Shape_1:0) = d
!scale_to_0_1_14/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB f
#scale_to_0_1_14/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Ж
0scale_to_0_1_14/min_and_max/assert_equal_1/EqualEqual*scale_to_0_1_14/min_and_max/Shape:output:0,scale_to_0_1_14/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: z
0scale_to_0_1_14/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: О
.scale_to_0_1_14/min_and_max/assert_equal_1/AllAll4scale_to_0_1_14/min_and_max/assert_equal_1/Equal:z:09scale_to_0_1_14/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Ћ
?scale_to_0_1_14/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Њ
?scale_to_0_1_14/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*x (scale_to_0_1_14/min_and_max/Shape:0) = Ќ
?scale_to_0_1_14/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (scale_to_0_1_14/min_and_max/Shape_1:0) = d
!scale_to_0_1_13/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB f
#scale_to_0_1_13/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Ж
0scale_to_0_1_13/min_and_max/assert_equal_1/EqualEqual*scale_to_0_1_13/min_and_max/Shape:output:0,scale_to_0_1_13/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: z
0scale_to_0_1_13/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: О
.scale_to_0_1_13/min_and_max/assert_equal_1/AllAll4scale_to_0_1_13/min_and_max/assert_equal_1/Equal:z:09scale_to_0_1_13/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Ћ
?scale_to_0_1_13/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Њ
?scale_to_0_1_13/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*x (scale_to_0_1_13/min_and_max/Shape:0) = Ќ
?scale_to_0_1_13/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (scale_to_0_1_13/min_and_max/Shape_1:0) = d
!scale_to_0_1_12/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB f
#scale_to_0_1_12/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Ж
0scale_to_0_1_12/min_and_max/assert_equal_1/EqualEqual*scale_to_0_1_12/min_and_max/Shape:output:0,scale_to_0_1_12/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: z
0scale_to_0_1_12/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: О
.scale_to_0_1_12/min_and_max/assert_equal_1/AllAll4scale_to_0_1_12/min_and_max/assert_equal_1/Equal:z:09scale_to_0_1_12/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Ћ
?scale_to_0_1_12/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Њ
?scale_to_0_1_12/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*x (scale_to_0_1_12/min_and_max/Shape:0) = Ќ
?scale_to_0_1_12/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (scale_to_0_1_12/min_and_max/Shape_1:0) = d
!scale_to_0_1_11/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB f
#scale_to_0_1_11/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Ж
0scale_to_0_1_11/min_and_max/assert_equal_1/EqualEqual*scale_to_0_1_11/min_and_max/Shape:output:0,scale_to_0_1_11/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: z
0scale_to_0_1_11/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: О
.scale_to_0_1_11/min_and_max/assert_equal_1/AllAll4scale_to_0_1_11/min_and_max/assert_equal_1/Equal:z:09scale_to_0_1_11/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Ћ
?scale_to_0_1_11/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Њ
?scale_to_0_1_11/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*x (scale_to_0_1_11/min_and_max/Shape:0) = Ќ
?scale_to_0_1_11/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (scale_to_0_1_11/min_and_max/Shape_1:0) = d
!scale_to_0_1_10/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB f
#scale_to_0_1_10/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Ж
0scale_to_0_1_10/min_and_max/assert_equal_1/EqualEqual*scale_to_0_1_10/min_and_max/Shape:output:0,scale_to_0_1_10/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: z
0scale_to_0_1_10/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: О
.scale_to_0_1_10/min_and_max/assert_equal_1/AllAll4scale_to_0_1_10/min_and_max/assert_equal_1/Equal:z:09scale_to_0_1_10/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Ћ
?scale_to_0_1_10/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Њ
?scale_to_0_1_10/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*x (scale_to_0_1_10/min_and_max/Shape:0) = Ќ
?scale_to_0_1_10/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (scale_to_0_1_10/min_and_max/Shape_1:0) = c
 scale_to_0_1_9/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB e
"scale_to_0_1_9/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Г
/scale_to_0_1_9/min_and_max/assert_equal_1/EqualEqual)scale_to_0_1_9/min_and_max/Shape:output:0+scale_to_0_1_9/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: y
/scale_to_0_1_9/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Л
-scale_to_0_1_9/min_and_max/assert_equal_1/AllAll3scale_to_0_1_9/min_and_max/assert_equal_1/Equal:z:08scale_to_0_1_9/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Њ
>scale_to_0_1_9/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Ј
>scale_to_0_1_9/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_9/min_and_max/Shape:0) = Њ
>scale_to_0_1_9/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_9/min_and_max/Shape_1:0) = c
 scale_to_0_1_8/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB e
"scale_to_0_1_8/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Г
/scale_to_0_1_8/min_and_max/assert_equal_1/EqualEqual)scale_to_0_1_8/min_and_max/Shape:output:0+scale_to_0_1_8/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: y
/scale_to_0_1_8/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Л
-scale_to_0_1_8/min_and_max/assert_equal_1/AllAll3scale_to_0_1_8/min_and_max/assert_equal_1/Equal:z:08scale_to_0_1_8/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Њ
>scale_to_0_1_8/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Ј
>scale_to_0_1_8/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_8/min_and_max/Shape:0) = Њ
>scale_to_0_1_8/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_8/min_and_max/Shape_1:0) = c
 scale_to_0_1_7/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB e
"scale_to_0_1_7/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Г
/scale_to_0_1_7/min_and_max/assert_equal_1/EqualEqual)scale_to_0_1_7/min_and_max/Shape:output:0+scale_to_0_1_7/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: y
/scale_to_0_1_7/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Л
-scale_to_0_1_7/min_and_max/assert_equal_1/AllAll3scale_to_0_1_7/min_and_max/assert_equal_1/Equal:z:08scale_to_0_1_7/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Њ
>scale_to_0_1_7/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Ј
>scale_to_0_1_7/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_7/min_and_max/Shape:0) = Њ
>scale_to_0_1_7/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_7/min_and_max/Shape_1:0) = c
 scale_to_0_1_6/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB e
"scale_to_0_1_6/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Г
/scale_to_0_1_6/min_and_max/assert_equal_1/EqualEqual)scale_to_0_1_6/min_and_max/Shape:output:0+scale_to_0_1_6/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: y
/scale_to_0_1_6/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Л
-scale_to_0_1_6/min_and_max/assert_equal_1/AllAll3scale_to_0_1_6/min_and_max/assert_equal_1/Equal:z:08scale_to_0_1_6/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Њ
>scale_to_0_1_6/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Ј
>scale_to_0_1_6/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_6/min_and_max/Shape:0) = Њ
>scale_to_0_1_6/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_6/min_and_max/Shape_1:0) = c
 scale_to_0_1_5/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB e
"scale_to_0_1_5/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Г
/scale_to_0_1_5/min_and_max/assert_equal_1/EqualEqual)scale_to_0_1_5/min_and_max/Shape:output:0+scale_to_0_1_5/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: y
/scale_to_0_1_5/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Л
-scale_to_0_1_5/min_and_max/assert_equal_1/AllAll3scale_to_0_1_5/min_and_max/assert_equal_1/Equal:z:08scale_to_0_1_5/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Њ
>scale_to_0_1_5/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Ј
>scale_to_0_1_5/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_5/min_and_max/Shape:0) = Њ
>scale_to_0_1_5/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_5/min_and_max/Shape_1:0) = c
 scale_to_0_1_4/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB e
"scale_to_0_1_4/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Г
/scale_to_0_1_4/min_and_max/assert_equal_1/EqualEqual)scale_to_0_1_4/min_and_max/Shape:output:0+scale_to_0_1_4/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: y
/scale_to_0_1_4/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Л
-scale_to_0_1_4/min_and_max/assert_equal_1/AllAll3scale_to_0_1_4/min_and_max/assert_equal_1/Equal:z:08scale_to_0_1_4/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Њ
>scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Ј
>scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_4/min_and_max/Shape:0) = Њ
>scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_4/min_and_max/Shape_1:0) = c
 scale_to_0_1_3/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB e
"scale_to_0_1_3/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Г
/scale_to_0_1_3/min_and_max/assert_equal_1/EqualEqual)scale_to_0_1_3/min_and_max/Shape:output:0+scale_to_0_1_3/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: y
/scale_to_0_1_3/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Л
-scale_to_0_1_3/min_and_max/assert_equal_1/AllAll3scale_to_0_1_3/min_and_max/assert_equal_1/Equal:z:08scale_to_0_1_3/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Њ
>scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Ј
>scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_3/min_and_max/Shape:0) = Њ
>scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_3/min_and_max/Shape_1:0) = c
 scale_to_0_1_2/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB e
"scale_to_0_1_2/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Г
/scale_to_0_1_2/min_and_max/assert_equal_1/EqualEqual)scale_to_0_1_2/min_and_max/Shape:output:0+scale_to_0_1_2/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: y
/scale_to_0_1_2/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Л
-scale_to_0_1_2/min_and_max/assert_equal_1/AllAll3scale_to_0_1_2/min_and_max/assert_equal_1/Equal:z:08scale_to_0_1_2/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Њ
>scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Ј
>scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_2/min_and_max/Shape:0) = Њ
>scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_2/min_and_max/Shape_1:0) = c
 scale_to_0_1_1/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB e
"scale_to_0_1_1/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB Г
/scale_to_0_1_1/min_and_max/assert_equal_1/EqualEqual)scale_to_0_1_1/min_and_max/Shape:output:0+scale_to_0_1_1/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: y
/scale_to_0_1_1/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Л
-scale_to_0_1_1/min_and_max/assert_equal_1/AllAll3scale_to_0_1_1/min_and_max/assert_equal_1/Equal:z:08scale_to_0_1_1/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Њ
>scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Ј
>scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_1/min_and_max/Shape:0) = Њ
>scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_1/min_and_max/Shape_1:0) = a
scale_to_0_1/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB c
 scale_to_0_1/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB ­
-scale_to_0_1/min_and_max/assert_equal_1/EqualEqual'scale_to_0_1/min_and_max/Shape:output:0)scale_to_0_1/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: w
-scale_to_0_1/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Е
+scale_to_0_1/min_and_max/assert_equal_1/AllAll1scale_to_0_1/min_and_max/assert_equal_1/Equal:z:06scale_to_0_1/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: Ј
<scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:Є
<scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*8
value/B- B'x (scale_to_0_1/min_and_max/Shape:0) = І
<scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*:
value1B/ B)y (scale_to_0_1/min_and_max/Shape_1:0) = Ф
5scale_to_0_1/min_and_max/assert_equal_1/Assert/AssertAssert4scale_to_0_1/min_and_max/assert_equal_1/All:output:0Escale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Escale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0'scale_to_0_1/min_and_max/Shape:output:0Escale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0)scale_to_0_1/min_and_max/Shape_1:output:0*
T	
2*
_output_shapes
 
7scale_to_0_1_1/min_and_max/assert_equal_1/Assert/AssertAssert6scale_to_0_1_1/min_and_max/assert_equal_1/All:output:0Gscale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Gscale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0)scale_to_0_1_1/min_and_max/Shape:output:0Gscale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0+scale_to_0_1_1/min_and_max/Shape_1:output:06^scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
7scale_to_0_1_2/min_and_max/assert_equal_1/Assert/AssertAssert6scale_to_0_1_2/min_and_max/assert_equal_1/All:output:0Gscale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Gscale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0)scale_to_0_1_2/min_and_max/Shape:output:0Gscale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0+scale_to_0_1_2/min_and_max/Shape_1:output:08^scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
7scale_to_0_1_3/min_and_max/assert_equal_1/Assert/AssertAssert6scale_to_0_1_3/min_and_max/assert_equal_1/All:output:0Gscale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Gscale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0)scale_to_0_1_3/min_and_max/Shape:output:0Gscale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0+scale_to_0_1_3/min_and_max/Shape_1:output:08^scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
7scale_to_0_1_4/min_and_max/assert_equal_1/Assert/AssertAssert6scale_to_0_1_4/min_and_max/assert_equal_1/All:output:0Gscale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Gscale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0)scale_to_0_1_4/min_and_max/Shape:output:0Gscale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0+scale_to_0_1_4/min_and_max/Shape_1:output:08^scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
7scale_to_0_1_5/min_and_max/assert_equal_1/Assert/AssertAssert6scale_to_0_1_5/min_and_max/assert_equal_1/All:output:0Gscale_to_0_1_5/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Gscale_to_0_1_5/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0)scale_to_0_1_5/min_and_max/Shape:output:0Gscale_to_0_1_5/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0+scale_to_0_1_5/min_and_max/Shape_1:output:08^scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
7scale_to_0_1_6/min_and_max/assert_equal_1/Assert/AssertAssert6scale_to_0_1_6/min_and_max/assert_equal_1/All:output:0Gscale_to_0_1_6/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Gscale_to_0_1_6/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0)scale_to_0_1_6/min_and_max/Shape:output:0Gscale_to_0_1_6/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0+scale_to_0_1_6/min_and_max/Shape_1:output:08^scale_to_0_1_5/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
7scale_to_0_1_7/min_and_max/assert_equal_1/Assert/AssertAssert6scale_to_0_1_7/min_and_max/assert_equal_1/All:output:0Gscale_to_0_1_7/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Gscale_to_0_1_7/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0)scale_to_0_1_7/min_and_max/Shape:output:0Gscale_to_0_1_7/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0+scale_to_0_1_7/min_and_max/Shape_1:output:08^scale_to_0_1_6/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
7scale_to_0_1_8/min_and_max/assert_equal_1/Assert/AssertAssert6scale_to_0_1_8/min_and_max/assert_equal_1/All:output:0Gscale_to_0_1_8/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Gscale_to_0_1_8/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0)scale_to_0_1_8/min_and_max/Shape:output:0Gscale_to_0_1_8/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0+scale_to_0_1_8/min_and_max/Shape_1:output:08^scale_to_0_1_7/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
7scale_to_0_1_9/min_and_max/assert_equal_1/Assert/AssertAssert6scale_to_0_1_9/min_and_max/assert_equal_1/All:output:0Gscale_to_0_1_9/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Gscale_to_0_1_9/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0)scale_to_0_1_9/min_and_max/Shape:output:0Gscale_to_0_1_9/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0+scale_to_0_1_9/min_and_max/Shape_1:output:08^scale_to_0_1_8/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
8scale_to_0_1_10/min_and_max/assert_equal_1/Assert/AssertAssert7scale_to_0_1_10/min_and_max/assert_equal_1/All:output:0Hscale_to_0_1_10/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Hscale_to_0_1_10/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0*scale_to_0_1_10/min_and_max/Shape:output:0Hscale_to_0_1_10/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0,scale_to_0_1_10/min_and_max/Shape_1:output:08^scale_to_0_1_9/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
8scale_to_0_1_11/min_and_max/assert_equal_1/Assert/AssertAssert7scale_to_0_1_11/min_and_max/assert_equal_1/All:output:0Hscale_to_0_1_11/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Hscale_to_0_1_11/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0*scale_to_0_1_11/min_and_max/Shape:output:0Hscale_to_0_1_11/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0,scale_to_0_1_11/min_and_max/Shape_1:output:09^scale_to_0_1_10/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
8scale_to_0_1_12/min_and_max/assert_equal_1/Assert/AssertAssert7scale_to_0_1_12/min_and_max/assert_equal_1/All:output:0Hscale_to_0_1_12/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Hscale_to_0_1_12/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0*scale_to_0_1_12/min_and_max/Shape:output:0Hscale_to_0_1_12/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0,scale_to_0_1_12/min_and_max/Shape_1:output:09^scale_to_0_1_11/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
8scale_to_0_1_13/min_and_max/assert_equal_1/Assert/AssertAssert7scale_to_0_1_13/min_and_max/assert_equal_1/All:output:0Hscale_to_0_1_13/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Hscale_to_0_1_13/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0*scale_to_0_1_13/min_and_max/Shape:output:0Hscale_to_0_1_13/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0,scale_to_0_1_13/min_and_max/Shape_1:output:09^scale_to_0_1_12/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
8scale_to_0_1_14/min_and_max/assert_equal_1/Assert/AssertAssert7scale_to_0_1_14/min_and_max/assert_equal_1/All:output:0Hscale_to_0_1_14/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Hscale_to_0_1_14/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0*scale_to_0_1_14/min_and_max/Shape:output:0Hscale_to_0_1_14/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0,scale_to_0_1_14/min_and_max/Shape_1:output:09^scale_to_0_1_13/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
8scale_to_0_1_15/min_and_max/assert_equal_1/Assert/AssertAssert7scale_to_0_1_15/min_and_max/assert_equal_1/All:output:0Hscale_to_0_1_15/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Hscale_to_0_1_15/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0*scale_to_0_1_15/min_and_max/Shape:output:0Hscale_to_0_1_15/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0,scale_to_0_1_15/min_and_max/Shape_1:output:09^scale_to_0_1_14/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
8scale_to_0_1_16/min_and_max/assert_equal_1/Assert/AssertAssert7scale_to_0_1_16/min_and_max/assert_equal_1/All:output:0Hscale_to_0_1_16/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Hscale_to_0_1_16/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0*scale_to_0_1_16/min_and_max/Shape:output:0Hscale_to_0_1_16/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0,scale_to_0_1_16/min_and_max/Shape_1:output:09^scale_to_0_1_15/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
8scale_to_0_1_17/min_and_max/assert_equal_1/Assert/AssertAssert7scale_to_0_1_17/min_and_max/assert_equal_1/All:output:0Hscale_to_0_1_17/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Hscale_to_0_1_17/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0*scale_to_0_1_17/min_and_max/Shape:output:0Hscale_to_0_1_17/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0,scale_to_0_1_17/min_and_max/Shape_1:output:09^scale_to_0_1_16/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
8scale_to_0_1_18/min_and_max/assert_equal_1/Assert/AssertAssert7scale_to_0_1_18/min_and_max/assert_equal_1/All:output:0Hscale_to_0_1_18/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Hscale_to_0_1_18/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0*scale_to_0_1_18/min_and_max/Shape:output:0Hscale_to_0_1_18/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0,scale_to_0_1_18/min_and_max/Shape_1:output:09^scale_to_0_1_17/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
8scale_to_0_1_19/min_and_max/assert_equal_1/Assert/AssertAssert7scale_to_0_1_19/min_and_max/assert_equal_1/All:output:0Hscale_to_0_1_19/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Hscale_to_0_1_19/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0*scale_to_0_1_19/min_and_max/Shape:output:0Hscale_to_0_1_19/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0,scale_to_0_1_19/min_and_max/Shape_1:output:09^scale_to_0_1_18/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 
8scale_to_0_1_20/min_and_max/assert_equal_1/Assert/AssertAssert7scale_to_0_1_20/min_and_max/assert_equal_1/All:output:0Hscale_to_0_1_20/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Hscale_to_0_1_20/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0*scale_to_0_1_20/min_and_max/Shape:output:0Hscale_to_0_1_20/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0,scale_to_0_1_20/min_and_max/Shape_1:output:09^scale_to_0_1_19/min_and_max/assert_equal_1/Assert/Assert*
T	
2*
_output_shapes
 

NoOpNoOp6^scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert8^scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert9^scale_to_0_1_10/min_and_max/assert_equal_1/Assert/Assert9^scale_to_0_1_11/min_and_max/assert_equal_1/Assert/Assert9^scale_to_0_1_12/min_and_max/assert_equal_1/Assert/Assert9^scale_to_0_1_13/min_and_max/assert_equal_1/Assert/Assert9^scale_to_0_1_14/min_and_max/assert_equal_1/Assert/Assert9^scale_to_0_1_15/min_and_max/assert_equal_1/Assert/Assert9^scale_to_0_1_16/min_and_max/assert_equal_1/Assert/Assert9^scale_to_0_1_17/min_and_max/assert_equal_1/Assert/Assert9^scale_to_0_1_18/min_and_max/assert_equal_1/Assert/Assert9^scale_to_0_1_19/min_and_max/assert_equal_1/Assert/Assert8^scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert9^scale_to_0_1_20/min_and_max/assert_equal_1/Assert/Assert8^scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert8^scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert8^scale_to_0_1_5/min_and_max/assert_equal_1/Assert/Assert8^scale_to_0_1_6/min_and_max/assert_equal_1/Assert/Assert8^scale_to_0_1_7/min_and_max/assert_equal_1/Assert/Assert8^scale_to_0_1_8/min_and_max/assert_equal_1/Assert/Assert8^scale_to_0_1_9/min_and_max/assert_equal_1/Assert/Assert*"
_acd_function_control_output(*
_output_shapes
 h
IdentityIdentityscale_to_0_1_18/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџU
inputs_1_copyIdentityinputs_1*
T0*'
_output_shapes
:џџџџџџџџџh
Cast_11Castinputs_1_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџP
IsNan_11IsNanCast_11:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
mean_11/mean_and_var/IdentityIdentity#mean_11_mean_and_var_identity_input*
T0*
_output_shapes
: 
SelectV2_11SelectV2IsNan_11:y:0&mean_11/mean_and_var/Identity:output:0Cast_11:y:0*
T0*'
_output_shapes
:џџџџџџџџџs
scale_to_0_1_11/CastCastSelectV2_11:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџh
#scale_to_0_1_11/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
&scale_to_0_1_11/min_and_max/Identity_2Identity,scale_to_0_1_11_min_and_max_identity_2_input*
T0*
_output_shapes
: Ј
!scale_to_0_1_11/min_and_max/sub_1Sub,scale_to_0_1_11/min_and_max/sub_1/x:output:0/scale_to_0_1_11/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_11/subSubscale_to_0_1_11/Cast:y:0%scale_to_0_1_11/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџr
scale_to_0_1_11/zeros_like	ZerosLikescale_to_0_1_11/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
&scale_to_0_1_11/min_and_max/Identity_3Identity,scale_to_0_1_11_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_11/LessLess%scale_to_0_1_11/min_and_max/sub_1:z:0/scale_to_0_1_11/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: h
scale_to_0_1_11/Cast_1Castscale_to_0_1_11/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_11/addAddV2scale_to_0_1_11/zeros_like:y:0scale_to_0_1_11/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџx
scale_to_0_1_11/Cast_2Castscale_to_0_1_11/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_11/sub_1Sub/scale_to_0_1_11/min_and_max/Identity_3:output:0%scale_to_0_1_11/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_11/truedivRealDivscale_to_0_1_11/sub:z:0scale_to_0_1_11/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
scale_to_0_1_11/SigmoidSigmoidscale_to_0_1_11/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
scale_to_0_1_11/SelectV2SelectV2scale_to_0_1_11/Cast_2:y:0scale_to_0_1_11/truediv:z:0scale_to_0_1_11/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџZ
scale_to_0_1_11/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_11/mulMul!scale_to_0_1_11/SelectV2:output:0scale_to_0_1_11/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
scale_to_0_1_11/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_11/add_1AddV2scale_to_0_1_11/mul:z:0 scale_to_0_1_11/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџj

Identity_1Identityscale_to_0_1_11/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџU
inputs_2_copyIdentityinputs_2*
T0*'
_output_shapes
:џџџџџџџџџg
Cast_3Castinputs_2_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџN
IsNan_3IsNan
Cast_3:y:0*
T0*'
_output_shapes
:џџџџџџџџџm
mean_3/mean_and_var/IdentityIdentity"mean_3_mean_and_var_identity_input*
T0*
_output_shapes
: 

SelectV2_3SelectV2IsNan_3:y:0%mean_3/mean_and_var/Identity:output:0
Cast_3:y:0*
T0*'
_output_shapes
:џџџџџџџџџq
scale_to_0_1_3/CastCastSelectV2_3:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџg
"scale_to_0_1_3/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
%scale_to_0_1_3/min_and_max/Identity_2Identity+scale_to_0_1_3_min_and_max_identity_2_input*
T0*
_output_shapes
: Ѕ
 scale_to_0_1_3/min_and_max/sub_1Sub+scale_to_0_1_3/min_and_max/sub_1/x:output:0.scale_to_0_1_3/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_3/subSubscale_to_0_1_3/Cast:y:0$scale_to_0_1_3/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџp
scale_to_0_1_3/zeros_like	ZerosLikescale_to_0_1_3/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
%scale_to_0_1_3/min_and_max/Identity_3Identity+scale_to_0_1_3_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_3/LessLess$scale_to_0_1_3/min_and_max/sub_1:z:0.scale_to_0_1_3/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: f
scale_to_0_1_3/Cast_1Castscale_to_0_1_3/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_3/addAddV2scale_to_0_1_3/zeros_like:y:0scale_to_0_1_3/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџv
scale_to_0_1_3/Cast_2Castscale_to_0_1_3/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_3/sub_1Sub.scale_to_0_1_3/min_and_max/Identity_3:output:0$scale_to_0_1_3/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_3/truedivRealDivscale_to_0_1_3/sub:z:0scale_to_0_1_3/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџl
scale_to_0_1_3/SigmoidSigmoidscale_to_0_1_3/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЈ
scale_to_0_1_3/SelectV2SelectV2scale_to_0_1_3/Cast_2:y:0scale_to_0_1_3/truediv:z:0scale_to_0_1_3/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџY
scale_to_0_1_3/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_3/mulMul scale_to_0_1_3/SelectV2:output:0scale_to_0_1_3/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ[
scale_to_0_1_3/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_3/add_1AddV2scale_to_0_1_3/mul:z:0scale_to_0_1_3/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџi

Identity_2Identityscale_to_0_1_3/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџU
inputs_3_copyIdentityinputs_3*
T0*'
_output_shapes
:џџџџџџџџџg
Cast_2Castinputs_3_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџN
IsNan_2IsNan
Cast_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџm
mean_2/mean_and_var/IdentityIdentity"mean_2_mean_and_var_identity_input*
T0*
_output_shapes
: 

SelectV2_2SelectV2IsNan_2:y:0%mean_2/mean_and_var/Identity:output:0
Cast_2:y:0*
T0*'
_output_shapes
:џџџџџџџџџq
scale_to_0_1_2/CastCastSelectV2_2:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџg
"scale_to_0_1_2/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
%scale_to_0_1_2/min_and_max/Identity_2Identity+scale_to_0_1_2_min_and_max_identity_2_input*
T0*
_output_shapes
: Ѕ
 scale_to_0_1_2/min_and_max/sub_1Sub+scale_to_0_1_2/min_and_max/sub_1/x:output:0.scale_to_0_1_2/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_2/subSubscale_to_0_1_2/Cast:y:0$scale_to_0_1_2/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџp
scale_to_0_1_2/zeros_like	ZerosLikescale_to_0_1_2/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
%scale_to_0_1_2/min_and_max/Identity_3Identity+scale_to_0_1_2_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_2/LessLess$scale_to_0_1_2/min_and_max/sub_1:z:0.scale_to_0_1_2/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: f
scale_to_0_1_2/Cast_1Castscale_to_0_1_2/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_2/addAddV2scale_to_0_1_2/zeros_like:y:0scale_to_0_1_2/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџv
scale_to_0_1_2/Cast_2Castscale_to_0_1_2/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_2/sub_1Sub.scale_to_0_1_2/min_and_max/Identity_3:output:0$scale_to_0_1_2/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_2/truedivRealDivscale_to_0_1_2/sub:z:0scale_to_0_1_2/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџl
scale_to_0_1_2/SigmoidSigmoidscale_to_0_1_2/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЈ
scale_to_0_1_2/SelectV2SelectV2scale_to_0_1_2/Cast_2:y:0scale_to_0_1_2/truediv:z:0scale_to_0_1_2/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџY
scale_to_0_1_2/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_2/mulMul scale_to_0_1_2/SelectV2:output:0scale_to_0_1_2/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ[
scale_to_0_1_2/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_2/add_1AddV2scale_to_0_1_2/mul:z:0scale_to_0_1_2/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџi

Identity_3Identityscale_to_0_1_2/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџU
inputs_4_copyIdentityinputs_4*
T0*'
_output_shapes
:џџџџџџџџџh
Cast_21Castinputs_4_copy:output:0*

DstT0	*

SrcT0*'
_output_shapes
:џџџџџџџџџ\

Identity_4IdentityCast_21:y:0^NoOp*
T0	*'
_output_shapes
:џџџџџџџџџU
inputs_5_copyIdentityinputs_5*
T0*'
_output_shapes
:џџџџџџџџџh
Cast_16Castinputs_5_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџP
IsNan_16IsNanCast_16:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
mean_16/mean_and_var/IdentityIdentity#mean_16_mean_and_var_identity_input*
T0*
_output_shapes
: 
SelectV2_16SelectV2IsNan_16:y:0&mean_16/mean_and_var/Identity:output:0Cast_16:y:0*
T0*'
_output_shapes
:џџџџџџџџџs
scale_to_0_1_16/CastCastSelectV2_16:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџh
#scale_to_0_1_16/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
&scale_to_0_1_16/min_and_max/Identity_2Identity,scale_to_0_1_16_min_and_max_identity_2_input*
T0*
_output_shapes
: Ј
!scale_to_0_1_16/min_and_max/sub_1Sub,scale_to_0_1_16/min_and_max/sub_1/x:output:0/scale_to_0_1_16/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_16/subSubscale_to_0_1_16/Cast:y:0%scale_to_0_1_16/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџr
scale_to_0_1_16/zeros_like	ZerosLikescale_to_0_1_16/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
&scale_to_0_1_16/min_and_max/Identity_3Identity,scale_to_0_1_16_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_16/LessLess%scale_to_0_1_16/min_and_max/sub_1:z:0/scale_to_0_1_16/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: h
scale_to_0_1_16/Cast_1Castscale_to_0_1_16/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_16/addAddV2scale_to_0_1_16/zeros_like:y:0scale_to_0_1_16/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџx
scale_to_0_1_16/Cast_2Castscale_to_0_1_16/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_16/sub_1Sub/scale_to_0_1_16/min_and_max/Identity_3:output:0%scale_to_0_1_16/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_16/truedivRealDivscale_to_0_1_16/sub:z:0scale_to_0_1_16/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
scale_to_0_1_16/SigmoidSigmoidscale_to_0_1_16/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
scale_to_0_1_16/SelectV2SelectV2scale_to_0_1_16/Cast_2:y:0scale_to_0_1_16/truediv:z:0scale_to_0_1_16/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџZ
scale_to_0_1_16/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_16/mulMul!scale_to_0_1_16/SelectV2:output:0scale_to_0_1_16/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
scale_to_0_1_16/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_16/add_1AddV2scale_to_0_1_16/mul:z:0 scale_to_0_1_16/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџj

Identity_5Identityscale_to_0_1_16/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџU
inputs_6_copyIdentityinputs_6*
T0*'
_output_shapes
:џџџџџџџџџh
Cast_19Castinputs_6_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџP
IsNan_19IsNanCast_19:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
mean_19/mean_and_var/IdentityIdentity#mean_19_mean_and_var_identity_input*
T0*
_output_shapes
: 
SelectV2_19SelectV2IsNan_19:y:0&mean_19/mean_and_var/Identity:output:0Cast_19:y:0*
T0*'
_output_shapes
:џџџџџџџџџs
scale_to_0_1_19/CastCastSelectV2_19:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџh
#scale_to_0_1_19/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
&scale_to_0_1_19/min_and_max/Identity_2Identity,scale_to_0_1_19_min_and_max_identity_2_input*
T0*
_output_shapes
: Ј
!scale_to_0_1_19/min_and_max/sub_1Sub,scale_to_0_1_19/min_and_max/sub_1/x:output:0/scale_to_0_1_19/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_19/subSubscale_to_0_1_19/Cast:y:0%scale_to_0_1_19/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџr
scale_to_0_1_19/zeros_like	ZerosLikescale_to_0_1_19/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
&scale_to_0_1_19/min_and_max/Identity_3Identity,scale_to_0_1_19_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_19/LessLess%scale_to_0_1_19/min_and_max/sub_1:z:0/scale_to_0_1_19/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: h
scale_to_0_1_19/Cast_1Castscale_to_0_1_19/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_19/addAddV2scale_to_0_1_19/zeros_like:y:0scale_to_0_1_19/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџx
scale_to_0_1_19/Cast_2Castscale_to_0_1_19/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_19/sub_1Sub/scale_to_0_1_19/min_and_max/Identity_3:output:0%scale_to_0_1_19/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_19/truedivRealDivscale_to_0_1_19/sub:z:0scale_to_0_1_19/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
scale_to_0_1_19/SigmoidSigmoidscale_to_0_1_19/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
scale_to_0_1_19/SelectV2SelectV2scale_to_0_1_19/Cast_2:y:0scale_to_0_1_19/truediv:z:0scale_to_0_1_19/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџZ
scale_to_0_1_19/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_19/mulMul!scale_to_0_1_19/SelectV2:output:0scale_to_0_1_19/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
scale_to_0_1_19/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_19/add_1AddV2scale_to_0_1_19/mul:z:0 scale_to_0_1_19/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџj

Identity_6Identityscale_to_0_1_19/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџU
inputs_7_copyIdentityinputs_7*
T0*'
_output_shapes
:џџџџџџџџџg
Cast_8Castinputs_7_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџN
IsNan_8IsNan
Cast_8:y:0*
T0*'
_output_shapes
:џџџџџџџџџm
mean_8/mean_and_var/IdentityIdentity"mean_8_mean_and_var_identity_input*
T0*
_output_shapes
: 

SelectV2_8SelectV2IsNan_8:y:0%mean_8/mean_and_var/Identity:output:0
Cast_8:y:0*
T0*'
_output_shapes
:џџџџџџџџџq
scale_to_0_1_8/CastCastSelectV2_8:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџg
"scale_to_0_1_8/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
%scale_to_0_1_8/min_and_max/Identity_2Identity+scale_to_0_1_8_min_and_max_identity_2_input*
T0*
_output_shapes
: Ѕ
 scale_to_0_1_8/min_and_max/sub_1Sub+scale_to_0_1_8/min_and_max/sub_1/x:output:0.scale_to_0_1_8/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_8/subSubscale_to_0_1_8/Cast:y:0$scale_to_0_1_8/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџp
scale_to_0_1_8/zeros_like	ZerosLikescale_to_0_1_8/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
%scale_to_0_1_8/min_and_max/Identity_3Identity+scale_to_0_1_8_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_8/LessLess$scale_to_0_1_8/min_and_max/sub_1:z:0.scale_to_0_1_8/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: f
scale_to_0_1_8/Cast_1Castscale_to_0_1_8/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_8/addAddV2scale_to_0_1_8/zeros_like:y:0scale_to_0_1_8/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџv
scale_to_0_1_8/Cast_2Castscale_to_0_1_8/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_8/sub_1Sub.scale_to_0_1_8/min_and_max/Identity_3:output:0$scale_to_0_1_8/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_8/truedivRealDivscale_to_0_1_8/sub:z:0scale_to_0_1_8/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџl
scale_to_0_1_8/SigmoidSigmoidscale_to_0_1_8/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЈ
scale_to_0_1_8/SelectV2SelectV2scale_to_0_1_8/Cast_2:y:0scale_to_0_1_8/truediv:z:0scale_to_0_1_8/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџY
scale_to_0_1_8/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_8/mulMul scale_to_0_1_8/SelectV2:output:0scale_to_0_1_8/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ[
scale_to_0_1_8/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_8/add_1AddV2scale_to_0_1_8/mul:z:0scale_to_0_1_8/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџi

Identity_7Identityscale_to_0_1_8/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџU
inputs_8_copyIdentityinputs_8*
T0*'
_output_shapes
:џџџџџџџџџh
Cast_13Castinputs_8_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџP
IsNan_13IsNanCast_13:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
mean_13/mean_and_var/IdentityIdentity#mean_13_mean_and_var_identity_input*
T0*
_output_shapes
: 
SelectV2_13SelectV2IsNan_13:y:0&mean_13/mean_and_var/Identity:output:0Cast_13:y:0*
T0*'
_output_shapes
:џџџџџџџџџs
scale_to_0_1_13/CastCastSelectV2_13:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџh
#scale_to_0_1_13/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
&scale_to_0_1_13/min_and_max/Identity_2Identity,scale_to_0_1_13_min_and_max_identity_2_input*
T0*
_output_shapes
: Ј
!scale_to_0_1_13/min_and_max/sub_1Sub,scale_to_0_1_13/min_and_max/sub_1/x:output:0/scale_to_0_1_13/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_13/subSubscale_to_0_1_13/Cast:y:0%scale_to_0_1_13/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџr
scale_to_0_1_13/zeros_like	ZerosLikescale_to_0_1_13/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
&scale_to_0_1_13/min_and_max/Identity_3Identity,scale_to_0_1_13_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_13/LessLess%scale_to_0_1_13/min_and_max/sub_1:z:0/scale_to_0_1_13/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: h
scale_to_0_1_13/Cast_1Castscale_to_0_1_13/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_13/addAddV2scale_to_0_1_13/zeros_like:y:0scale_to_0_1_13/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџx
scale_to_0_1_13/Cast_2Castscale_to_0_1_13/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_13/sub_1Sub/scale_to_0_1_13/min_and_max/Identity_3:output:0%scale_to_0_1_13/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_13/truedivRealDivscale_to_0_1_13/sub:z:0scale_to_0_1_13/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
scale_to_0_1_13/SigmoidSigmoidscale_to_0_1_13/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
scale_to_0_1_13/SelectV2SelectV2scale_to_0_1_13/Cast_2:y:0scale_to_0_1_13/truediv:z:0scale_to_0_1_13/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџZ
scale_to_0_1_13/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_13/mulMul!scale_to_0_1_13/SelectV2:output:0scale_to_0_1_13/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
scale_to_0_1_13/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_13/add_1AddV2scale_to_0_1_13/mul:z:0 scale_to_0_1_13/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџj

Identity_8Identityscale_to_0_1_13/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџU
inputs_9_copyIdentityinputs_9*
T0*'
_output_shapes
:џџџџџџџџџg
Cast_6Castinputs_9_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџN
IsNan_6IsNan
Cast_6:y:0*
T0*'
_output_shapes
:џџџџџџџџџm
mean_6/mean_and_var/IdentityIdentity"mean_6_mean_and_var_identity_input*
T0*
_output_shapes
: 

SelectV2_6SelectV2IsNan_6:y:0%mean_6/mean_and_var/Identity:output:0
Cast_6:y:0*
T0*'
_output_shapes
:џџџџџџџџџq
scale_to_0_1_6/CastCastSelectV2_6:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџg
"scale_to_0_1_6/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
%scale_to_0_1_6/min_and_max/Identity_2Identity+scale_to_0_1_6_min_and_max_identity_2_input*
T0*
_output_shapes
: Ѕ
 scale_to_0_1_6/min_and_max/sub_1Sub+scale_to_0_1_6/min_and_max/sub_1/x:output:0.scale_to_0_1_6/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_6/subSubscale_to_0_1_6/Cast:y:0$scale_to_0_1_6/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџp
scale_to_0_1_6/zeros_like	ZerosLikescale_to_0_1_6/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
%scale_to_0_1_6/min_and_max/Identity_3Identity+scale_to_0_1_6_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_6/LessLess$scale_to_0_1_6/min_and_max/sub_1:z:0.scale_to_0_1_6/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: f
scale_to_0_1_6/Cast_1Castscale_to_0_1_6/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_6/addAddV2scale_to_0_1_6/zeros_like:y:0scale_to_0_1_6/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџv
scale_to_0_1_6/Cast_2Castscale_to_0_1_6/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_6/sub_1Sub.scale_to_0_1_6/min_and_max/Identity_3:output:0$scale_to_0_1_6/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_6/truedivRealDivscale_to_0_1_6/sub:z:0scale_to_0_1_6/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџl
scale_to_0_1_6/SigmoidSigmoidscale_to_0_1_6/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЈ
scale_to_0_1_6/SelectV2SelectV2scale_to_0_1_6/Cast_2:y:0scale_to_0_1_6/truediv:z:0scale_to_0_1_6/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџY
scale_to_0_1_6/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_6/mulMul scale_to_0_1_6/SelectV2:output:0scale_to_0_1_6/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ[
scale_to_0_1_6/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_6/add_1AddV2scale_to_0_1_6/mul:z:0scale_to_0_1_6/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџi

Identity_9Identityscale_to_0_1_6/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџW
inputs_10_copyIdentity	inputs_10*
T0*'
_output_shapes
:џџџџџџџџџf
CastCastinputs_10_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџJ
IsNanIsNanCast:y:0*
T0*'
_output_shapes
:џџџџџџџџџi
mean/mean_and_var/IdentityIdentity mean_mean_and_var_identity_input*
T0*
_output_shapes
: 
SelectV2SelectV2	IsNan:y:0#mean/mean_and_var/Identity:output:0Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџm
scale_to_0_1/CastCastSelectV2:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџe
 scale_to_0_1/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    {
#scale_to_0_1/min_and_max/Identity_2Identity)scale_to_0_1_min_and_max_identity_2_input*
T0*
_output_shapes
: 
scale_to_0_1/min_and_max/sub_1Sub)scale_to_0_1/min_and_max/sub_1/x:output:0,scale_to_0_1/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1/subSubscale_to_0_1/Cast:y:0"scale_to_0_1/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџl
scale_to_0_1/zeros_like	ZerosLikescale_to_0_1/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ{
#scale_to_0_1/min_and_max/Identity_3Identity)scale_to_0_1_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1/LessLess"scale_to_0_1/min_and_max/sub_1:z:0,scale_to_0_1/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: b
scale_to_0_1/Cast_1Castscale_to_0_1/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1/addAddV2scale_to_0_1/zeros_like:y:0scale_to_0_1/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџr
scale_to_0_1/Cast_2Castscale_to_0_1/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1/sub_1Sub,scale_to_0_1/min_and_max/Identity_3:output:0"scale_to_0_1/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1/truedivRealDivscale_to_0_1/sub:z:0scale_to_0_1/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџh
scale_to_0_1/SigmoidSigmoidscale_to_0_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ 
scale_to_0_1/SelectV2SelectV2scale_to_0_1/Cast_2:y:0scale_to_0_1/truediv:z:0scale_to_0_1/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџW
scale_to_0_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1/mulMulscale_to_0_1/SelectV2:output:0scale_to_0_1/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџY
scale_to_0_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1/add_1AddV2scale_to_0_1/mul:z:0scale_to_0_1/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџh
Identity_10Identityscale_to_0_1/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџW
inputs_11_copyIdentity	inputs_11*
T0*'
_output_shapes
:џџџџџџџџџh
Cast_1Castinputs_11_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџN
IsNan_1IsNan
Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџm
mean_1/mean_and_var/IdentityIdentity"mean_1_mean_and_var_identity_input*
T0*
_output_shapes
: 

SelectV2_1SelectV2IsNan_1:y:0%mean_1/mean_and_var/Identity:output:0
Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџq
scale_to_0_1_1/CastCastSelectV2_1:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџg
"scale_to_0_1_1/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
%scale_to_0_1_1/min_and_max/Identity_2Identity+scale_to_0_1_1_min_and_max_identity_2_input*
T0*
_output_shapes
: Ѕ
 scale_to_0_1_1/min_and_max/sub_1Sub+scale_to_0_1_1/min_and_max/sub_1/x:output:0.scale_to_0_1_1/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_1/subSubscale_to_0_1_1/Cast:y:0$scale_to_0_1_1/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџp
scale_to_0_1_1/zeros_like	ZerosLikescale_to_0_1_1/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
%scale_to_0_1_1/min_and_max/Identity_3Identity+scale_to_0_1_1_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_1/LessLess$scale_to_0_1_1/min_and_max/sub_1:z:0.scale_to_0_1_1/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: f
scale_to_0_1_1/Cast_1Castscale_to_0_1_1/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_1/addAddV2scale_to_0_1_1/zeros_like:y:0scale_to_0_1_1/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџv
scale_to_0_1_1/Cast_2Castscale_to_0_1_1/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_1/sub_1Sub.scale_to_0_1_1/min_and_max/Identity_3:output:0$scale_to_0_1_1/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_1/truedivRealDivscale_to_0_1_1/sub:z:0scale_to_0_1_1/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџl
scale_to_0_1_1/SigmoidSigmoidscale_to_0_1_1/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЈ
scale_to_0_1_1/SelectV2SelectV2scale_to_0_1_1/Cast_2:y:0scale_to_0_1_1/truediv:z:0scale_to_0_1_1/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџY
scale_to_0_1_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_1/mulMul scale_to_0_1_1/SelectV2:output:0scale_to_0_1_1/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ[
scale_to_0_1_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_1/add_1AddV2scale_to_0_1_1/mul:z:0scale_to_0_1_1/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
Identity_11Identityscale_to_0_1_1/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџW
inputs_12_copyIdentity	inputs_12*
T0*'
_output_shapes
:џџџџџџџџџi
Cast_10Castinputs_12_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџP
IsNan_10IsNanCast_10:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
mean_10/mean_and_var/IdentityIdentity#mean_10_mean_and_var_identity_input*
T0*
_output_shapes
: 
SelectV2_10SelectV2IsNan_10:y:0&mean_10/mean_and_var/Identity:output:0Cast_10:y:0*
T0*'
_output_shapes
:џџџџџџџџџs
scale_to_0_1_10/CastCastSelectV2_10:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџh
#scale_to_0_1_10/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
&scale_to_0_1_10/min_and_max/Identity_2Identity,scale_to_0_1_10_min_and_max_identity_2_input*
T0*
_output_shapes
: Ј
!scale_to_0_1_10/min_and_max/sub_1Sub,scale_to_0_1_10/min_and_max/sub_1/x:output:0/scale_to_0_1_10/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_10/subSubscale_to_0_1_10/Cast:y:0%scale_to_0_1_10/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџr
scale_to_0_1_10/zeros_like	ZerosLikescale_to_0_1_10/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
&scale_to_0_1_10/min_and_max/Identity_3Identity,scale_to_0_1_10_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_10/LessLess%scale_to_0_1_10/min_and_max/sub_1:z:0/scale_to_0_1_10/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: h
scale_to_0_1_10/Cast_1Castscale_to_0_1_10/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_10/addAddV2scale_to_0_1_10/zeros_like:y:0scale_to_0_1_10/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџx
scale_to_0_1_10/Cast_2Castscale_to_0_1_10/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_10/sub_1Sub/scale_to_0_1_10/min_and_max/Identity_3:output:0%scale_to_0_1_10/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_10/truedivRealDivscale_to_0_1_10/sub:z:0scale_to_0_1_10/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
scale_to_0_1_10/SigmoidSigmoidscale_to_0_1_10/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
scale_to_0_1_10/SelectV2SelectV2scale_to_0_1_10/Cast_2:y:0scale_to_0_1_10/truediv:z:0scale_to_0_1_10/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџZ
scale_to_0_1_10/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_10/mulMul!scale_to_0_1_10/SelectV2:output:0scale_to_0_1_10/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
scale_to_0_1_10/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_10/add_1AddV2scale_to_0_1_10/mul:z:0 scale_to_0_1_10/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
Identity_12Identityscale_to_0_1_10/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџW
inputs_13_copyIdentity	inputs_13*
T0*'
_output_shapes
:џџџџџџџџџi
Cast_20Castinputs_13_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџP
IsNan_20IsNanCast_20:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
mean_20/mean_and_var/IdentityIdentity#mean_20_mean_and_var_identity_input*
T0*
_output_shapes
: 
SelectV2_20SelectV2IsNan_20:y:0&mean_20/mean_and_var/Identity:output:0Cast_20:y:0*
T0*'
_output_shapes
:џџџџџџџџџs
scale_to_0_1_20/CastCastSelectV2_20:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџh
#scale_to_0_1_20/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
&scale_to_0_1_20/min_and_max/Identity_2Identity,scale_to_0_1_20_min_and_max_identity_2_input*
T0*
_output_shapes
: Ј
!scale_to_0_1_20/min_and_max/sub_1Sub,scale_to_0_1_20/min_and_max/sub_1/x:output:0/scale_to_0_1_20/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_20/subSubscale_to_0_1_20/Cast:y:0%scale_to_0_1_20/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџr
scale_to_0_1_20/zeros_like	ZerosLikescale_to_0_1_20/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
&scale_to_0_1_20/min_and_max/Identity_3Identity,scale_to_0_1_20_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_20/LessLess%scale_to_0_1_20/min_and_max/sub_1:z:0/scale_to_0_1_20/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: h
scale_to_0_1_20/Cast_1Castscale_to_0_1_20/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_20/addAddV2scale_to_0_1_20/zeros_like:y:0scale_to_0_1_20/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџx
scale_to_0_1_20/Cast_2Castscale_to_0_1_20/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_20/sub_1Sub/scale_to_0_1_20/min_and_max/Identity_3:output:0%scale_to_0_1_20/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_20/truedivRealDivscale_to_0_1_20/sub:z:0scale_to_0_1_20/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
scale_to_0_1_20/SigmoidSigmoidscale_to_0_1_20/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
scale_to_0_1_20/SelectV2SelectV2scale_to_0_1_20/Cast_2:y:0scale_to_0_1_20/truediv:z:0scale_to_0_1_20/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџZ
scale_to_0_1_20/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_20/mulMul!scale_to_0_1_20/SelectV2:output:0scale_to_0_1_20/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
scale_to_0_1_20/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_20/add_1AddV2scale_to_0_1_20/mul:z:0 scale_to_0_1_20/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
Identity_13Identityscale_to_0_1_20/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџW
inputs_14_copyIdentity	inputs_14*
T0*'
_output_shapes
:џџџџџџџџџi
Cast_14Castinputs_14_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџP
IsNan_14IsNanCast_14:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
mean_14/mean_and_var/IdentityIdentity#mean_14_mean_and_var_identity_input*
T0*
_output_shapes
: 
SelectV2_14SelectV2IsNan_14:y:0&mean_14/mean_and_var/Identity:output:0Cast_14:y:0*
T0*'
_output_shapes
:џџџџџџџџџs
scale_to_0_1_14/CastCastSelectV2_14:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџh
#scale_to_0_1_14/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
&scale_to_0_1_14/min_and_max/Identity_2Identity,scale_to_0_1_14_min_and_max_identity_2_input*
T0*
_output_shapes
: Ј
!scale_to_0_1_14/min_and_max/sub_1Sub,scale_to_0_1_14/min_and_max/sub_1/x:output:0/scale_to_0_1_14/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_14/subSubscale_to_0_1_14/Cast:y:0%scale_to_0_1_14/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџr
scale_to_0_1_14/zeros_like	ZerosLikescale_to_0_1_14/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
&scale_to_0_1_14/min_and_max/Identity_3Identity,scale_to_0_1_14_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_14/LessLess%scale_to_0_1_14/min_and_max/sub_1:z:0/scale_to_0_1_14/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: h
scale_to_0_1_14/Cast_1Castscale_to_0_1_14/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_14/addAddV2scale_to_0_1_14/zeros_like:y:0scale_to_0_1_14/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџx
scale_to_0_1_14/Cast_2Castscale_to_0_1_14/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_14/sub_1Sub/scale_to_0_1_14/min_and_max/Identity_3:output:0%scale_to_0_1_14/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_14/truedivRealDivscale_to_0_1_14/sub:z:0scale_to_0_1_14/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
scale_to_0_1_14/SigmoidSigmoidscale_to_0_1_14/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
scale_to_0_1_14/SelectV2SelectV2scale_to_0_1_14/Cast_2:y:0scale_to_0_1_14/truediv:z:0scale_to_0_1_14/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџZ
scale_to_0_1_14/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_14/mulMul!scale_to_0_1_14/SelectV2:output:0scale_to_0_1_14/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
scale_to_0_1_14/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_14/add_1AddV2scale_to_0_1_14/mul:z:0 scale_to_0_1_14/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
Identity_14Identityscale_to_0_1_14/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџW
inputs_15_copyIdentity	inputs_15*
T0*'
_output_shapes
:џџџџџџџџџi
Cast_12Castinputs_15_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџP
IsNan_12IsNanCast_12:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
mean_12/mean_and_var/IdentityIdentity#mean_12_mean_and_var_identity_input*
T0*
_output_shapes
: 
SelectV2_12SelectV2IsNan_12:y:0&mean_12/mean_and_var/Identity:output:0Cast_12:y:0*
T0*'
_output_shapes
:џџџџџџџџџs
scale_to_0_1_12/CastCastSelectV2_12:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџh
#scale_to_0_1_12/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
&scale_to_0_1_12/min_and_max/Identity_2Identity,scale_to_0_1_12_min_and_max_identity_2_input*
T0*
_output_shapes
: Ј
!scale_to_0_1_12/min_and_max/sub_1Sub,scale_to_0_1_12/min_and_max/sub_1/x:output:0/scale_to_0_1_12/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_12/subSubscale_to_0_1_12/Cast:y:0%scale_to_0_1_12/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџr
scale_to_0_1_12/zeros_like	ZerosLikescale_to_0_1_12/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
&scale_to_0_1_12/min_and_max/Identity_3Identity,scale_to_0_1_12_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_12/LessLess%scale_to_0_1_12/min_and_max/sub_1:z:0/scale_to_0_1_12/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: h
scale_to_0_1_12/Cast_1Castscale_to_0_1_12/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_12/addAddV2scale_to_0_1_12/zeros_like:y:0scale_to_0_1_12/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџx
scale_to_0_1_12/Cast_2Castscale_to_0_1_12/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_12/sub_1Sub/scale_to_0_1_12/min_and_max/Identity_3:output:0%scale_to_0_1_12/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_12/truedivRealDivscale_to_0_1_12/sub:z:0scale_to_0_1_12/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
scale_to_0_1_12/SigmoidSigmoidscale_to_0_1_12/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
scale_to_0_1_12/SelectV2SelectV2scale_to_0_1_12/Cast_2:y:0scale_to_0_1_12/truediv:z:0scale_to_0_1_12/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџZ
scale_to_0_1_12/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_12/mulMul!scale_to_0_1_12/SelectV2:output:0scale_to_0_1_12/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
scale_to_0_1_12/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_12/add_1AddV2scale_to_0_1_12/mul:z:0 scale_to_0_1_12/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
Identity_15Identityscale_to_0_1_12/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџW
inputs_16_copyIdentity	inputs_16*
T0*'
_output_shapes
:џџџџџџџџџh
Cast_7Castinputs_16_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџN
IsNan_7IsNan
Cast_7:y:0*
T0*'
_output_shapes
:џџџџџџџџџm
mean_7/mean_and_var/IdentityIdentity"mean_7_mean_and_var_identity_input*
T0*
_output_shapes
: 

SelectV2_7SelectV2IsNan_7:y:0%mean_7/mean_and_var/Identity:output:0
Cast_7:y:0*
T0*'
_output_shapes
:џџџџџџџџџq
scale_to_0_1_7/CastCastSelectV2_7:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџg
"scale_to_0_1_7/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
%scale_to_0_1_7/min_and_max/Identity_2Identity+scale_to_0_1_7_min_and_max_identity_2_input*
T0*
_output_shapes
: Ѕ
 scale_to_0_1_7/min_and_max/sub_1Sub+scale_to_0_1_7/min_and_max/sub_1/x:output:0.scale_to_0_1_7/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_7/subSubscale_to_0_1_7/Cast:y:0$scale_to_0_1_7/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџp
scale_to_0_1_7/zeros_like	ZerosLikescale_to_0_1_7/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
%scale_to_0_1_7/min_and_max/Identity_3Identity+scale_to_0_1_7_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_7/LessLess$scale_to_0_1_7/min_and_max/sub_1:z:0.scale_to_0_1_7/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: f
scale_to_0_1_7/Cast_1Castscale_to_0_1_7/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_7/addAddV2scale_to_0_1_7/zeros_like:y:0scale_to_0_1_7/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџv
scale_to_0_1_7/Cast_2Castscale_to_0_1_7/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_7/sub_1Sub.scale_to_0_1_7/min_and_max/Identity_3:output:0$scale_to_0_1_7/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_7/truedivRealDivscale_to_0_1_7/sub:z:0scale_to_0_1_7/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџl
scale_to_0_1_7/SigmoidSigmoidscale_to_0_1_7/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЈ
scale_to_0_1_7/SelectV2SelectV2scale_to_0_1_7/Cast_2:y:0scale_to_0_1_7/truediv:z:0scale_to_0_1_7/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџY
scale_to_0_1_7/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_7/mulMul scale_to_0_1_7/SelectV2:output:0scale_to_0_1_7/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ[
scale_to_0_1_7/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_7/add_1AddV2scale_to_0_1_7/mul:z:0scale_to_0_1_7/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
Identity_16Identityscale_to_0_1_7/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџW
inputs_17_copyIdentity	inputs_17*
T0*'
_output_shapes
:џџџџџџџџџi
Cast_15Castinputs_17_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџP
IsNan_15IsNanCast_15:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
mean_15/mean_and_var/IdentityIdentity#mean_15_mean_and_var_identity_input*
T0*
_output_shapes
: 
SelectV2_15SelectV2IsNan_15:y:0&mean_15/mean_and_var/Identity:output:0Cast_15:y:0*
T0*'
_output_shapes
:џџџџџџџџџs
scale_to_0_1_15/CastCastSelectV2_15:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџh
#scale_to_0_1_15/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
&scale_to_0_1_15/min_and_max/Identity_2Identity,scale_to_0_1_15_min_and_max_identity_2_input*
T0*
_output_shapes
: Ј
!scale_to_0_1_15/min_and_max/sub_1Sub,scale_to_0_1_15/min_and_max/sub_1/x:output:0/scale_to_0_1_15/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_15/subSubscale_to_0_1_15/Cast:y:0%scale_to_0_1_15/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџr
scale_to_0_1_15/zeros_like	ZerosLikescale_to_0_1_15/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
&scale_to_0_1_15/min_and_max/Identity_3Identity,scale_to_0_1_15_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_15/LessLess%scale_to_0_1_15/min_and_max/sub_1:z:0/scale_to_0_1_15/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: h
scale_to_0_1_15/Cast_1Castscale_to_0_1_15/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_15/addAddV2scale_to_0_1_15/zeros_like:y:0scale_to_0_1_15/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџx
scale_to_0_1_15/Cast_2Castscale_to_0_1_15/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_15/sub_1Sub/scale_to_0_1_15/min_and_max/Identity_3:output:0%scale_to_0_1_15/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_15/truedivRealDivscale_to_0_1_15/sub:z:0scale_to_0_1_15/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
scale_to_0_1_15/SigmoidSigmoidscale_to_0_1_15/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
scale_to_0_1_15/SelectV2SelectV2scale_to_0_1_15/Cast_2:y:0scale_to_0_1_15/truediv:z:0scale_to_0_1_15/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџZ
scale_to_0_1_15/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_15/mulMul!scale_to_0_1_15/SelectV2:output:0scale_to_0_1_15/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
scale_to_0_1_15/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_15/add_1AddV2scale_to_0_1_15/mul:z:0 scale_to_0_1_15/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
Identity_17Identityscale_to_0_1_15/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџW
inputs_18_copyIdentity	inputs_18*
T0*'
_output_shapes
:џџџџџџџџџi
Cast_17Castinputs_18_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџP
IsNan_17IsNanCast_17:y:0*
T0*'
_output_shapes
:џџџџџџџџџo
mean_17/mean_and_var/IdentityIdentity#mean_17_mean_and_var_identity_input*
T0*
_output_shapes
: 
SelectV2_17SelectV2IsNan_17:y:0&mean_17/mean_and_var/Identity:output:0Cast_17:y:0*
T0*'
_output_shapes
:џџџџџџџџџs
scale_to_0_1_17/CastCastSelectV2_17:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџh
#scale_to_0_1_17/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
&scale_to_0_1_17/min_and_max/Identity_2Identity,scale_to_0_1_17_min_and_max_identity_2_input*
T0*
_output_shapes
: Ј
!scale_to_0_1_17/min_and_max/sub_1Sub,scale_to_0_1_17/min_and_max/sub_1/x:output:0/scale_to_0_1_17/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_17/subSubscale_to_0_1_17/Cast:y:0%scale_to_0_1_17/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџr
scale_to_0_1_17/zeros_like	ZerosLikescale_to_0_1_17/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
&scale_to_0_1_17/min_and_max/Identity_3Identity,scale_to_0_1_17_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_17/LessLess%scale_to_0_1_17/min_and_max/sub_1:z:0/scale_to_0_1_17/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: h
scale_to_0_1_17/Cast_1Castscale_to_0_1_17/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_17/addAddV2scale_to_0_1_17/zeros_like:y:0scale_to_0_1_17/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџx
scale_to_0_1_17/Cast_2Castscale_to_0_1_17/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_17/sub_1Sub/scale_to_0_1_17/min_and_max/Identity_3:output:0%scale_to_0_1_17/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_17/truedivRealDivscale_to_0_1_17/sub:z:0scale_to_0_1_17/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
scale_to_0_1_17/SigmoidSigmoidscale_to_0_1_17/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
scale_to_0_1_17/SelectV2SelectV2scale_to_0_1_17/Cast_2:y:0scale_to_0_1_17/truediv:z:0scale_to_0_1_17/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџZ
scale_to_0_1_17/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_17/mulMul!scale_to_0_1_17/SelectV2:output:0scale_to_0_1_17/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
scale_to_0_1_17/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_17/add_1AddV2scale_to_0_1_17/mul:z:0 scale_to_0_1_17/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
Identity_18Identityscale_to_0_1_17/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџW
inputs_19_copyIdentity	inputs_19*
T0*'
_output_shapes
:џџџџџџџџџh
Cast_4Castinputs_19_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџN
IsNan_4IsNan
Cast_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџm
mean_4/mean_and_var/IdentityIdentity"mean_4_mean_and_var_identity_input*
T0*
_output_shapes
: 

SelectV2_4SelectV2IsNan_4:y:0%mean_4/mean_and_var/Identity:output:0
Cast_4:y:0*
T0*'
_output_shapes
:џџџџџџџџџq
scale_to_0_1_4/CastCastSelectV2_4:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџg
"scale_to_0_1_4/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
%scale_to_0_1_4/min_and_max/Identity_2Identity+scale_to_0_1_4_min_and_max_identity_2_input*
T0*
_output_shapes
: Ѕ
 scale_to_0_1_4/min_and_max/sub_1Sub+scale_to_0_1_4/min_and_max/sub_1/x:output:0.scale_to_0_1_4/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_4/subSubscale_to_0_1_4/Cast:y:0$scale_to_0_1_4/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџp
scale_to_0_1_4/zeros_like	ZerosLikescale_to_0_1_4/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
%scale_to_0_1_4/min_and_max/Identity_3Identity+scale_to_0_1_4_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_4/LessLess$scale_to_0_1_4/min_and_max/sub_1:z:0.scale_to_0_1_4/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: f
scale_to_0_1_4/Cast_1Castscale_to_0_1_4/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_4/addAddV2scale_to_0_1_4/zeros_like:y:0scale_to_0_1_4/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџv
scale_to_0_1_4/Cast_2Castscale_to_0_1_4/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_4/sub_1Sub.scale_to_0_1_4/min_and_max/Identity_3:output:0$scale_to_0_1_4/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_4/truedivRealDivscale_to_0_1_4/sub:z:0scale_to_0_1_4/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџl
scale_to_0_1_4/SigmoidSigmoidscale_to_0_1_4/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЈ
scale_to_0_1_4/SelectV2SelectV2scale_to_0_1_4/Cast_2:y:0scale_to_0_1_4/truediv:z:0scale_to_0_1_4/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџY
scale_to_0_1_4/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_4/mulMul scale_to_0_1_4/SelectV2:output:0scale_to_0_1_4/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ[
scale_to_0_1_4/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_4/add_1AddV2scale_to_0_1_4/mul:z:0scale_to_0_1_4/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
Identity_19Identityscale_to_0_1_4/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџW
inputs_20_copyIdentity	inputs_20*
T0*'
_output_shapes
:џџџџџџџџџh
Cast_5Castinputs_20_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџN
IsNan_5IsNan
Cast_5:y:0*
T0*'
_output_shapes
:џџџџџџџџџm
mean_5/mean_and_var/IdentityIdentity"mean_5_mean_and_var_identity_input*
T0*
_output_shapes
: 

SelectV2_5SelectV2IsNan_5:y:0%mean_5/mean_and_var/Identity:output:0
Cast_5:y:0*
T0*'
_output_shapes
:џџџџџџџџџq
scale_to_0_1_5/CastCastSelectV2_5:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџg
"scale_to_0_1_5/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
%scale_to_0_1_5/min_and_max/Identity_2Identity+scale_to_0_1_5_min_and_max_identity_2_input*
T0*
_output_shapes
: Ѕ
 scale_to_0_1_5/min_and_max/sub_1Sub+scale_to_0_1_5/min_and_max/sub_1/x:output:0.scale_to_0_1_5/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_5/subSubscale_to_0_1_5/Cast:y:0$scale_to_0_1_5/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџp
scale_to_0_1_5/zeros_like	ZerosLikescale_to_0_1_5/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
%scale_to_0_1_5/min_and_max/Identity_3Identity+scale_to_0_1_5_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_5/LessLess$scale_to_0_1_5/min_and_max/sub_1:z:0.scale_to_0_1_5/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: f
scale_to_0_1_5/Cast_1Castscale_to_0_1_5/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_5/addAddV2scale_to_0_1_5/zeros_like:y:0scale_to_0_1_5/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџv
scale_to_0_1_5/Cast_2Castscale_to_0_1_5/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_5/sub_1Sub.scale_to_0_1_5/min_and_max/Identity_3:output:0$scale_to_0_1_5/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_5/truedivRealDivscale_to_0_1_5/sub:z:0scale_to_0_1_5/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџl
scale_to_0_1_5/SigmoidSigmoidscale_to_0_1_5/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЈ
scale_to_0_1_5/SelectV2SelectV2scale_to_0_1_5/Cast_2:y:0scale_to_0_1_5/truediv:z:0scale_to_0_1_5/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџY
scale_to_0_1_5/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_5/mulMul scale_to_0_1_5/SelectV2:output:0scale_to_0_1_5/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ[
scale_to_0_1_5/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_5/add_1AddV2scale_to_0_1_5/mul:z:0scale_to_0_1_5/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
Identity_20Identityscale_to_0_1_5/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџW
inputs_21_copyIdentity	inputs_21*
T0*'
_output_shapes
:џџџџџџџџџh
Cast_9Castinputs_21_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџN
IsNan_9IsNan
Cast_9:y:0*
T0*'
_output_shapes
:џџџџџџџџџm
mean_9/mean_and_var/IdentityIdentity"mean_9_mean_and_var_identity_input*
T0*
_output_shapes
: 

SelectV2_9SelectV2IsNan_9:y:0%mean_9/mean_and_var/Identity:output:0
Cast_9:y:0*
T0*'
_output_shapes
:џџџџџџџџџq
scale_to_0_1_9/CastCastSelectV2_9:output:0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџg
"scale_to_0_1_9/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
%scale_to_0_1_9/min_and_max/Identity_2Identity+scale_to_0_1_9_min_and_max_identity_2_input*
T0*
_output_shapes
: Ѕ
 scale_to_0_1_9/min_and_max/sub_1Sub+scale_to_0_1_9/min_and_max/sub_1/x:output:0.scale_to_0_1_9/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: 
scale_to_0_1_9/subSubscale_to_0_1_9/Cast:y:0$scale_to_0_1_9/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџp
scale_to_0_1_9/zeros_like	ZerosLikescale_to_0_1_9/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
%scale_to_0_1_9/min_and_max/Identity_3Identity+scale_to_0_1_9_min_and_max_identity_3_input*
T0*
_output_shapes
: 
scale_to_0_1_9/LessLess$scale_to_0_1_9/min_and_max/sub_1:z:0.scale_to_0_1_9/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: f
scale_to_0_1_9/Cast_1Castscale_to_0_1_9/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_0_1_9/addAddV2scale_to_0_1_9/zeros_like:y:0scale_to_0_1_9/Cast_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџv
scale_to_0_1_9/Cast_2Castscale_to_0_1_9/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
scale_to_0_1_9/sub_1Sub.scale_to_0_1_9/min_and_max/Identity_3:output:0$scale_to_0_1_9/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1_9/truedivRealDivscale_to_0_1_9/sub:z:0scale_to_0_1_9/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџl
scale_to_0_1_9/SigmoidSigmoidscale_to_0_1_9/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџЈ
scale_to_0_1_9/SelectV2SelectV2scale_to_0_1_9/Cast_2:y:0scale_to_0_1_9/truediv:z:0scale_to_0_1_9/Sigmoid:y:0*
T0*'
_output_shapes
:џџџџџџџџџY
scale_to_0_1_9/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
scale_to_0_1_9/mulMul scale_to_0_1_9/SelectV2:output:0scale_to_0_1_9/mul/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ[
scale_to_0_1_9/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
scale_to_0_1_9/add_1AddV2scale_to_0_1_9/mul:z:0scale_to_0_1_9/add_1/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
Identity_21Identityscale_to_0_1_9/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"#
identity_21Identity_21:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*п
_input_shapesЭ
Ъ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :- )
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:-	)
'
_output_shapes
:џџџџџџџџџ:-
)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: :B

_output_shapes
: :C

_output_shapes
: :D

_output_shapes
: :E

_output_shapes
: :F

_output_shapes
: :G

_output_shapes
: :H

_output_shapes
: :I

_output_shapes
: :J

_output_shapes
: :K

_output_shapes
: :L

_output_shapes
: :M

_output_shapes
: :N

_output_shapes
: :O

_output_shapes
: :P

_output_shapes
: :Q

_output_shapes
: :R

_output_shapes
: :S

_output_shapes
: :T

_output_shapes
: :U

_output_shapes
: :V

_output_shapes
: :W

_output_shapes
: :X

_output_shapes
: :Y

_output_shapes
: :Z

_output_shapes
: :[

_output_shapes
: :\

_output_shapes
: :]

_output_shapes
: :^

_output_shapes
: :_

_output_shapes
: :`

_output_shapes
: :a

_output_shapes
: :b

_output_shapes
: :c

_output_shapes
: :d

_output_shapes
: :e

_output_shapes
: :f

_output_shapes
: :g

_output_shapes
: :h

_output_shapes
: :i

_output_shapes
: 

Ё
(__inference_model_1_layer_call_fn_283239
	highbp_xf
highchol_xf
cholcheck_xf

bmi_xf
	smoker_xf
	stroke_xf
heartdiseaseorattack_xf
physactivity_xf
	fruits_xf

veggies_xf
hvyalcoholconsump_xf
anyhealthcare_xf
nodocbccost_xf

genhlth_xf
menthlth_xf
physhlth_xf
diffwalk_xf

sex_xf

age_xf
education_xf
	income_xf
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:
identityЂStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCall	highbp_xfhighchol_xfcholcheck_xfbmi_xf	smoker_xf	stroke_xfheartdiseaseorattack_xfphysactivity_xf	fruits_xf
veggies_xfhvyalcoholconsump_xfanyhealthcare_xfnodocbccost_xf
genhlth_xfmenthlth_xfphyshlth_xfdiffwalk_xfsex_xfage_xfeducation_xf	income_xfunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_283179o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Д
_input_shapesЂ
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	HighBP_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameHighChol_xf:UQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameCholCheck_xf:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameBMI_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Smoker_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Stroke_xf:`\
'
_output_shapes
:џџџџџџџџџ
1
_user_specified_nameHeartDiseaseorAttack_xf:XT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_namePhysActivity_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Fruits_xf:S	O
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
Veggies_xf:]
Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameHvyAlcoholConsump_xf:YU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameAnyHealthcare_xf:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameNoDocbcCost_xf:SO
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
GenHlth_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameMentHlth_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_namePhysHlth_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameDiffWalk_xf:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameSex_xf:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameAge_xf:UQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameEducation_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Income_xf
b

$__inference_signature_wrapper_281005

inputs
inputs_1
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
inputs_2
	inputs_20
	inputs_21
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58

unknown_59

unknown_60

unknown_61

unknown_62

unknown_63

unknown_64

unknown_65

unknown_66

unknown_67

unknown_68

unknown_69

unknown_70

unknown_71

unknown_72

unknown_73

unknown_74

unknown_75

unknown_76

unknown_77

unknown_78

unknown_79

unknown_80

unknown_81

unknown_82
identity

identity_1

identity_2

identity_3

identity_4	

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20
identity_21ЂStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20	inputs_21unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75
unknown_76
unknown_77
unknown_78
unknown_79
unknown_80
unknown_81
unknown_82*u
Tinn
l2j*"
Tout
2	*И
_output_shapesЅ
Ђ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *"
fR
__inference_pruned_280853`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_3Identity StatefulPartitionedCall:output:3^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_4Identity StatefulPartitionedCall:output:4^NoOp*
T0	*'
_output_shapes
:џџџџџџџџџq

Identity_5Identity StatefulPartitionedCall:output:5^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_6Identity StatefulPartitionedCall:output:6^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_7Identity StatefulPartitionedCall:output:7^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_8Identity StatefulPartitionedCall:output:8^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_9Identity StatefulPartitionedCall:output:9^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_10Identity!StatefulPartitionedCall:output:10^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_11Identity!StatefulPartitionedCall:output:11^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_12Identity!StatefulPartitionedCall:output:12^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_13Identity!StatefulPartitionedCall:output:13^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_14Identity!StatefulPartitionedCall:output:14^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_15Identity!StatefulPartitionedCall:output:15^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_16Identity!StatefulPartitionedCall:output:16^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_17Identity!StatefulPartitionedCall:output:17^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_18Identity!StatefulPartitionedCall:output:18^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_19Identity!StatefulPartitionedCall:output:19^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_20Identity!StatefulPartitionedCall:output:20^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_21Identity!StatefulPartitionedCall:output:21^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"#
identity_21Identity_21:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*п
_input_shapesЭ
Ъ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs_1:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_10:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_11:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_12:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_13:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_14:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_15:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_16:R	N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_17:R
N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_18:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_19:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs_2:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_20:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	inputs_21:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs_3:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs_4:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs_5:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs_6:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs_7:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs_8:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs_9:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: :B

_output_shapes
: :C

_output_shapes
: :D

_output_shapes
: :E

_output_shapes
: :F

_output_shapes
: :G

_output_shapes
: :H

_output_shapes
: :I

_output_shapes
: :J

_output_shapes
: :K

_output_shapes
: :L

_output_shapes
: :M

_output_shapes
: :N

_output_shapes
: :O

_output_shapes
: :P

_output_shapes
: :Q

_output_shapes
: :R

_output_shapes
: :S

_output_shapes
: :T

_output_shapes
: :U

_output_shapes
: :V

_output_shapes
: :W

_output_shapes
: :X

_output_shapes
: :Y

_output_shapes
: :Z

_output_shapes
: :[

_output_shapes
: :\

_output_shapes
: :]

_output_shapes
: :^

_output_shapes
: :_

_output_shapes
: :`

_output_shapes
: :a

_output_shapes
: :b

_output_shapes
: :c

_output_shapes
: :d

_output_shapes
: :e

_output_shapes
: :f

_output_shapes
: :g

_output_shapes
: :h

_output_shapes
: :i

_output_shapes
: 
Н2

C__inference_model_1_layer_call_and_return_conditional_losses_282938

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
	inputs_14
	inputs_15
	inputs_16
	inputs_17
	inputs_18
	inputs_19
	inputs_20!
dense_5_282867:	
dense_5_282869:	"
dense_6_282884:

dense_6_282886:	"
dense_7_282908:

dense_7_282910:	!
dense_8_282932:	
dense_8_282934:
identityЂdense_5/StatefulPartitionedCallЂdense_6/StatefulPartitionedCallЂdense_7/StatefulPartitionedCallЂdense_8/StatefulPartitionedCallЉ
concatenate_1/PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_282853
dense_5/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_5_282867dense_5_282869*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_282866
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_282884dense_6_282886*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_282883н
dropout_3/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_282894
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_7_282908dense_7_282910*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_282907н
dropout_4/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_282918
dense_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_8_282932dense_8_282934*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_282931w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЮ
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Д
_input_shapesЂ
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O	K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:O
K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
м
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_282894

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:џџџџџџџџџ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


ѕ
C__inference_dense_8_layer_call_and_return_conditional_losses_282931

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ћ	
d
E__inference_dropout_4_layer_call_and_return_conditional_losses_283706

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *?Ї
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:џџџџџџџџџj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:џџџџџџџџџZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ч

(__inference_dense_6_layer_call_fn_283621

inputs
unknown:

	unknown_0:	
identityЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_282883p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ѕ
c
*__inference_dropout_4_layer_call_fn_283689

inputs
identityЂStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_282987p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
У

(__inference_dense_8_layer_call_fn_283715

inputs
unknown:	
	unknown_0:
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_282931o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Ё
(__inference_model_1_layer_call_fn_282957
	highbp_xf
highchol_xf
cholcheck_xf

bmi_xf
	smoker_xf
	stroke_xf
heartdiseaseorattack_xf
physactivity_xf
	fruits_xf

veggies_xf
hvyalcoholconsump_xf
anyhealthcare_xf
nodocbccost_xf

genhlth_xf
menthlth_xf
physhlth_xf
diffwalk_xf

sex_xf

age_xf
education_xf
	income_xf
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:
identityЂStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCall	highbp_xfhighchol_xfcholcheck_xfbmi_xf	smoker_xf	stroke_xfheartdiseaseorattack_xfphysactivity_xf	fruits_xf
veggies_xfhvyalcoholconsump_xfanyhealthcare_xfnodocbccost_xf
genhlth_xfmenthlth_xfphyshlth_xfdiffwalk_xfsex_xfage_xfeducation_xf	income_xfunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_282938o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Д
_input_shapesЂ
:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	HighBP_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameHighChol_xf:UQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameCholCheck_xf:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameBMI_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Smoker_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Stroke_xf:`\
'
_output_shapes
:џџџџџџџџџ
1
_user_specified_nameHeartDiseaseorAttack_xf:XT
'
_output_shapes
:џџџџџџџџџ
)
_user_specified_namePhysActivity_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Fruits_xf:S	O
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
Veggies_xf:]
Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameHvyAlcoholConsump_xf:YU
'
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameAnyHealthcare_xf:WS
'
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameNoDocbcCost_xf:SO
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
GenHlth_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameMentHlth_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_namePhysHlth_xf:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameDiffWalk_xf:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameSex_xf:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameAge_xf:UQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameEducation_xf:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Income_xf
бm
­
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_282780
age
anyhealthcare
bmi
	cholcheck
diffwalk
	education

fruits
genhlth
heartdiseaseorattack

highbp
highchol
hvyalcoholconsump

income
menthlth
nodocbccost
physactivity
physhlth
sex

smoker

stroke
veggies
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58

unknown_59

unknown_60

unknown_61

unknown_62

unknown_63

unknown_64

unknown_65

unknown_66

unknown_67

unknown_68

unknown_69

unknown_70

unknown_71

unknown_72

unknown_73

unknown_74

unknown_75

unknown_76

unknown_77

unknown_78

unknown_79

unknown_80

unknown_81

unknown_82
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20ЂStatefulPartitionedCall8
ShapeShapeage*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask:
Shape_1Shapeage*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :u
zeros/packedPackstrided_slice_1:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
PlaceholderWithDefaultPlaceholderWithDefaultzeros:output:0*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџл
StatefulPartitionedCallStatefulPartitionedCallageanyhealthcarebmi	cholcheckPlaceholderWithDefault:output:0diffwalk	educationfruitsgenhlthheartdiseaseorattackhighbphighcholhvyalcoholconsumpincomementhlthnodocbccostphysactivityphyshlthsexsmokerstrokeveggiesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75
unknown_76
unknown_77
unknown_78
unknown_79
unknown_80
unknown_81
unknown_82*u
Tinn
l2j*"
Tout
2	*И
_output_shapesЅ
Ђ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *"
fR
__inference_pruned_280853o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_3Identity StatefulPartitionedCall:output:3^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_4Identity StatefulPartitionedCall:output:5^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_5Identity StatefulPartitionedCall:output:6^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_6Identity StatefulPartitionedCall:output:7^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_7Identity StatefulPartitionedCall:output:8^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_8Identity StatefulPartitionedCall:output:9^NoOp*
T0*'
_output_shapes
:џџџџџџџџџr

Identity_9Identity!StatefulPartitionedCall:output:10^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_10Identity!StatefulPartitionedCall:output:11^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_11Identity!StatefulPartitionedCall:output:12^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_12Identity!StatefulPartitionedCall:output:13^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_13Identity!StatefulPartitionedCall:output:14^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_14Identity!StatefulPartitionedCall:output:15^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_15Identity!StatefulPartitionedCall:output:16^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_16Identity!StatefulPartitionedCall:output:17^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_17Identity!StatefulPartitionedCall:output:18^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_18Identity!StatefulPartitionedCall:output:19^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_19Identity!StatefulPartitionedCall:output:20^NoOp*
T0*'
_output_shapes
:џџџџџџџџџs
Identity_20Identity!StatefulPartitionedCall:output:21^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*Ь
_input_shapesК
З:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:џџџџџџџџџ

_user_specified_nameAge:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameAnyHealthcare:LH
'
_output_shapes
:џџџџџџџџџ

_user_specified_nameBMI:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	CholCheck:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
DiffWalk:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	Education:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameFruits:PL
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	GenHlth:]Y
'
_output_shapes
:џџџџџџџџџ
.
_user_specified_nameHeartDiseaseorAttack:O	K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameHighBP:Q
M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
HighChol:ZV
'
_output_shapes
:џџџџџџџџџ
+
_user_specified_nameHvyAlcoholConsump:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameIncome:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
MentHlth:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameNoDocbcCost:UQ
'
_output_shapes
:џџџџџџџџџ
&
_user_specified_namePhysActivity:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
PhysHlth:LH
'
_output_shapes
:џџџџџџџџџ

_user_specified_nameSex:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameSmoker:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameStroke:PL
'
_output_shapes
:џџџџџџџџџ
!
_user_specified_name	Veggies:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: :B

_output_shapes
: :C

_output_shapes
: :D

_output_shapes
: :E

_output_shapes
: :F

_output_shapes
: :G

_output_shapes
: :H

_output_shapes
: :I

_output_shapes
: :J

_output_shapes
: :K

_output_shapes
: :L

_output_shapes
: :M

_output_shapes
: :N

_output_shapes
: :O

_output_shapes
: :P

_output_shapes
: :Q

_output_shapes
: :R

_output_shapes
: :S

_output_shapes
: :T

_output_shapes
: :U

_output_shapes
: :V

_output_shapes
: :W

_output_shapes
: :X

_output_shapes
: :Y

_output_shapes
: :Z

_output_shapes
: :[

_output_shapes
: :\

_output_shapes
: :]

_output_shapes
: :^

_output_shapes
: :_

_output_shapes
: :`

_output_shapes
: :a

_output_shapes
: :b

_output_shapes
: :c

_output_shapes
: :d

_output_shapes
: :e

_output_shapes
: :f

_output_shapes
: :g

_output_shapes
: :h

_output_shapes
: 
є1
ђ
"__inference__traced_restore_284397
file_prefix2
assignvariableop_dense_5_kernel:	.
assignvariableop_1_dense_5_bias:	5
!assignvariableop_2_dense_6_kernel:
.
assignvariableop_3_dense_6_bias:	5
!assignvariableop_4_dense_7_kernel:
.
assignvariableop_5_dense_7_bias:	4
!assignvariableop_6_dense_8_kernel:	-
assignvariableop_7_dense_8_bias:"
assignvariableop_8_total: "
assignvariableop_9_count: %
assignvariableop_10_total_1: %
assignvariableop_11_count_1: 
identity_13ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_2ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*У
valueЙBЖB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B п
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_5_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_5_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_6_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_6_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_7_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_7_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_8_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_8_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_totalIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_countIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_total_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 з
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_13IdentityIdentity_12:output:0^NoOp_1*
T0*
_output_shapes
: Ф
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_13Identity_13:output:0*-
_input_shapes
: : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112(
AssignVariableOp_2AssignVariableOp_22(
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
_user_specified_namefile_prefix"лL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ј
serving_default
9
examples-
serving_default_examples:0џџџџџџџџџ;
outputs0
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Вш
ц
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer_with_weights-0
layer-22
layer_with_weights-1
layer-23
layer-24
layer_with_weights-2
layer-25
layer-26
layer_with_weights-3
layer-27
layer-28
	optimizer
	tft_layer
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%_default_save_signature
&
signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
Ѕ
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
М
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A_random_generator
B__call__
*C&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

Dkernel
Ebias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses"
_tf_keras_layer
М
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P_random_generator
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

Skernel
Tbias
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
Ы
$[ _saved_model_loader_tracked_dict
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_model
"
	optimizer
X
-0
.1
52
63
D4
E5
S6
T7"
trackable_list_wrapper
X
-0
.1
52
63
D4
E5
S6
T7"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
%_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
ю2ы
(__inference_model_1_layer_call_fn_282957
(__inference_model_1_layer_call_fn_283374
(__inference_model_1_layer_call_fn_283415
(__inference_model_1_layer_call_fn_283239Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
к2з
C__inference_model_1_layer_call_and_return_conditional_losses_283471
C__inference_model_1_layer_call_and_return_conditional_losses_283541
C__inference_model_1_layer_call_and_return_conditional_losses_283286
C__inference_model_1_layer_call_and_return_conditional_losses_283333Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
мBй
!__inference__wrapped_model_281814	HighBP_xfHighChol_xfCholCheck_xfBMI_xf	Smoker_xf	Stroke_xfHeartDiseaseorAttack_xfPhysActivity_xf	Fruits_xf
Veggies_xfHvyAlcoholConsump_xfAnyHealthcare_xfNoDocbcCost_xf
GenHlth_xfMentHlth_xfPhysHlth_xfDiffWalk_xfSex_xfAge_xfEducation_xf	Income_xf"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
,
gserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
и2е
.__inference_concatenate_1_layer_call_fn_283566Ђ
В
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
annotationsЊ *
 
ѓ2№
I__inference_concatenate_1_layer_call_and_return_conditional_losses_283592Ђ
В
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
annotationsЊ *
 
!:	2dense_5/kernel
:2dense_5/bias
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
в2Я
(__inference_dense_5_layer_call_fn_283601Ђ
В
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
annotationsЊ *
 
э2ъ
C__inference_dense_5_layer_call_and_return_conditional_losses_283612Ђ
В
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
annotationsЊ *
 
": 
2dense_6/kernel
:2dense_6/bias
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
­
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
в2Я
(__inference_dense_6_layer_call_fn_283621Ђ
В
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
annotationsЊ *
 
э2ъ
C__inference_dense_6_layer_call_and_return_conditional_losses_283632Ђ
В
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
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
=	variables
>trainable_variables
?regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_3_layer_call_fn_283637
*__inference_dropout_3_layer_call_fn_283642Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ш2Х
E__inference_dropout_3_layer_call_and_return_conditional_losses_283647
E__inference_dropout_3_layer_call_and_return_conditional_losses_283659Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
": 
2dense_7/kernel
:2dense_7/bias
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ў
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
в2Я
(__inference_dense_7_layer_call_fn_283668Ђ
В
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
annotationsЊ *
 
э2ъ
C__inference_dense_7_layer_call_and_return_conditional_losses_283679Ђ
В
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
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_4_layer_call_fn_283684
*__inference_dropout_4_layer_call_fn_283689Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ш2Х
E__inference_dropout_4_layer_call_and_return_conditional_losses_283694
E__inference_dropout_4_layer_call_and_return_conditional_losses_283706Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
!:	2dense_8/kernel
:2dense_8/bias
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
в2Я
(__inference_dense_8_layer_call_fn_283715Ђ
В
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
annotationsЊ *
 
э2ъ
C__inference_dense_8_layer_call_and_return_conditional_losses_283726Ђ
В
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
annotationsЊ *
 

	_imported
_structured_inputs
_structured_outputs
_output_to_inputs_map
_wrapped_function"
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
2
9__inference_transform_features_layer_layer_call_fn_282298
9__inference_transform_features_layer_layer_call_fn_283959Ђ
В
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
annotationsЊ *
 
д2б
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_284208
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_282780Ђ
В
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
annotationsЊ *
 
 "
trackable_list_wrapper
ў
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЬBЩ
$__inference_signature_wrapper_281757examples"
В
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
annotationsЊ *
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
Ш
created_variables
	resources
trackable_objects
initializers
assets

signatures
$_self_saveable_object_factories
transform_fn"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
B
__inference_pruned_280853inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20	inputs_21
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
R

total

count
 	variables
Ё	keras_api"
_tf_keras_metric
c

Ђtotal

Ѓcount
Є
_fn_kwargs
Ѕ	variables
І	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
-
Їserving_default"
signature_map
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
 	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ђ0
Ѓ1"
trackable_list_wrapper
.
Ѕ	variables"
_generic_user_object
ІBЃ
$__inference_signature_wrapper_281005inputsinputs_1	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19inputs_2	inputs_20	inputs_21inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9"
В
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
annotationsЊ *
 
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_5
J	
Const_6
J	
Const_7
J	
Const_8
J	
Const_9
J

Const_10
J

Const_11
J

Const_12
J

Const_13
J

Const_14
J

Const_15
J

Const_16
J

Const_17
J

Const_18
J

Const_19
J

Const_20
J

Const_21
J

Const_22
J

Const_23
J

Const_24
J

Const_25
J

Const_26
J

Const_27
J

Const_28
J

Const_29
J

Const_30
J

Const_31
J

Const_32
J

Const_33
J

Const_34
J

Const_35
J

Const_36
J

Const_37
J

Const_38
J

Const_39
J

Const_40
J

Const_41
J

Const_42
J

Const_43
J

Const_44
J

Const_45
J

Const_46
J

Const_47
J

Const_48
J

Const_49
J

Const_50
J

Const_51
J

Const_52
J

Const_53
J

Const_54
J

Const_55
J

Const_56
J

Const_57
J

Const_58
J

Const_59
J

Const_60
J

Const_61
J

Const_62
J

Const_63
J

Const_64
J

Const_65
J

Const_66
J

Const_67
J

Const_68
J

Const_69
J

Const_70
J

Const_71
J

Const_72
J

Const_73
J

Const_74
J

Const_75
J

Const_76
J

Const_77
J

Const_78
J

Const_79
J

Const_80
J

Const_81
J

Const_82
J

Const_83И
!__inference__wrapped_model_281814-.56DESTвЂЮ
ЦЂТ
ПЛ
# 
	HighBP_xfџџџџџџџџџ
%"
HighChol_xfџџџџџџџџџ
&#
CholCheck_xfџџџџџџџџџ
 
BMI_xfџџџџџџџџџ
# 
	Smoker_xfџџџџџџџџџ
# 
	Stroke_xfџџџџџџџџџ
1.
HeartDiseaseorAttack_xfџџџџџџџџџ
)&
PhysActivity_xfџџџџџџџџџ
# 
	Fruits_xfџџџџџџџџџ
$!

Veggies_xfџџџџџџџџџ
.+
HvyAlcoholConsump_xfџџџџџџџџџ
*'
AnyHealthcare_xfџџџџџџџџџ
(%
NoDocbcCost_xfџџџџџџџџџ
$!

GenHlth_xfџџџџџџџџџ
%"
MentHlth_xfџџџџџџџџџ
%"
PhysHlth_xfџџџџџџџџџ
%"
DiffWalk_xfџџџџџџџџџ
 
Sex_xfџџџџџџџџџ
 
Age_xfџџџџџџџџџ
&#
Education_xfџџџџџџџџџ
# 
	Income_xfџџџџџџџџџ
Њ "1Њ.
,
dense_8!
dense_8џџџџџџџџџ
I__inference_concatenate_1_layer_call_and_return_conditional_losses_283592РЂ
Ђ
џ
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
"
inputs/2џџџџџџџџџ
"
inputs/3џџџџџџџџџ
"
inputs/4џџџџџџџџџ
"
inputs/5џџџџџџџџџ
"
inputs/6џџџџџџџџџ
"
inputs/7џџџџџџџџџ
"
inputs/8џџџџџџџџџ
"
inputs/9џџџџџџџџџ
# 
	inputs/10џџџџџџџџџ
# 
	inputs/11џџџџџџџџџ
# 
	inputs/12џџџџџџџџџ
# 
	inputs/13џџџџџџџџџ
# 
	inputs/14џџџџџџџџџ
# 
	inputs/15џџџџџџџџџ
# 
	inputs/16џџџџџџџџџ
# 
	inputs/17џџџџџџџџџ
# 
	inputs/18џџџџџџџџџ
# 
	inputs/19џџџџџџџџџ
# 
	inputs/20џџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 ц
.__inference_concatenate_1_layer_call_fn_283566ГЂ
Ђ
џ
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
"
inputs/2џџџџџџџџџ
"
inputs/3џџџџџџџџџ
"
inputs/4џџџџџџџџџ
"
inputs/5џџџџџџџџџ
"
inputs/6џџџџџџџџџ
"
inputs/7џџџџџџџџџ
"
inputs/8џџџџџџџџџ
"
inputs/9џџџџџџџџџ
# 
	inputs/10џџџџџџџџџ
# 
	inputs/11џџџџџџџџџ
# 
	inputs/12џџџџџџџџџ
# 
	inputs/13џџџџџџџџџ
# 
	inputs/14џџџџџџџџџ
# 
	inputs/15џџџџџџџџџ
# 
	inputs/16џџџџџџџџџ
# 
	inputs/17џџџџџџџџџ
# 
	inputs/18џџџџџџџџџ
# 
	inputs/19џџџџџџџџџ
# 
	inputs/20џџџџџџџџџ
Њ "џџџџџџџџџЄ
C__inference_dense_5_layer_call_and_return_conditional_losses_283612]-./Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџ
 |
(__inference_dense_5_layer_call_fn_283601P-./Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџЅ
C__inference_dense_6_layer_call_and_return_conditional_losses_283632^560Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџ
 }
(__inference_dense_6_layer_call_fn_283621Q560Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџЅ
C__inference_dense_7_layer_call_and_return_conditional_losses_283679^DE0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџ
 }
(__inference_dense_7_layer_call_fn_283668QDE0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџЄ
C__inference_dense_8_layer_call_and_return_conditional_losses_283726]ST0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 |
(__inference_dense_8_layer_call_fn_283715PST0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџЇ
E__inference_dropout_3_layer_call_and_return_conditional_losses_283647^4Ђ1
*Ђ'
!
inputsџџџџџџџџџ
p 
Њ "&Ђ#

0џџџџџџџџџ
 Ї
E__inference_dropout_3_layer_call_and_return_conditional_losses_283659^4Ђ1
*Ђ'
!
inputsџџџџџџџџџ
p
Њ "&Ђ#

0џџџџџџџџџ
 
*__inference_dropout_3_layer_call_fn_283637Q4Ђ1
*Ђ'
!
inputsџџџџџџџџџ
p 
Њ "џџџџџџџџџ
*__inference_dropout_3_layer_call_fn_283642Q4Ђ1
*Ђ'
!
inputsџџџџџџџџџ
p
Њ "џџџџџџџџџЇ
E__inference_dropout_4_layer_call_and_return_conditional_losses_283694^4Ђ1
*Ђ'
!
inputsџџџџџџџџџ
p 
Њ "&Ђ#

0џџџџџџџџџ
 Ї
E__inference_dropout_4_layer_call_and_return_conditional_losses_283706^4Ђ1
*Ђ'
!
inputsџџџџџџџџџ
p
Њ "&Ђ#

0џџџџџџџџџ
 
*__inference_dropout_4_layer_call_fn_283684Q4Ђ1
*Ђ'
!
inputsџџџџџџџџџ
p 
Њ "џџџџџџџџџ
*__inference_dropout_4_layer_call_fn_283689Q4Ђ1
*Ђ'
!
inputsџџџџџџџџџ
p
Њ "џџџџџџџџџж
C__inference_model_1_layer_call_and_return_conditional_losses_283286-.56DESTкЂж
ЮЂЪ
ПЛ
# 
	HighBP_xfџџџџџџџџџ
%"
HighChol_xfџџџџџџџџџ
&#
CholCheck_xfџџџџџџџџџ
 
BMI_xfџџџџџџџџџ
# 
	Smoker_xfџџџџџџџџџ
# 
	Stroke_xfџџџџџџџџџ
1.
HeartDiseaseorAttack_xfџџџџџџџџџ
)&
PhysActivity_xfџџџџџџџџџ
# 
	Fruits_xfџџџџџџџџџ
$!

Veggies_xfџџџџџџџџџ
.+
HvyAlcoholConsump_xfџџџџџџџџџ
*'
AnyHealthcare_xfџџџџџџџџџ
(%
NoDocbcCost_xfџџџџџџџџџ
$!

GenHlth_xfџџџџџџџџџ
%"
MentHlth_xfџџџџџџџџџ
%"
PhysHlth_xfџџџџџџџџџ
%"
DiffWalk_xfџџџџџџџџџ
 
Sex_xfџџџџџџџџџ
 
Age_xfџџџџџџџџџ
&#
Education_xfџџџџџџџџџ
# 
	Income_xfџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 ж
C__inference_model_1_layer_call_and_return_conditional_losses_283333-.56DESTкЂж
ЮЂЪ
ПЛ
# 
	HighBP_xfџџџџџџџџџ
%"
HighChol_xfџџџџџџџџџ
&#
CholCheck_xfџџџџџџџџџ
 
BMI_xfџџџџџџџџџ
# 
	Smoker_xfџџџџџџџџџ
# 
	Stroke_xfџџџџџџџџџ
1.
HeartDiseaseorAttack_xfџџџџџџџџџ
)&
PhysActivity_xfџџџџџџџџџ
# 
	Fruits_xfџџџџџџџџџ
$!

Veggies_xfџџџџџџџџџ
.+
HvyAlcoholConsump_xfџџџџџџџџџ
*'
AnyHealthcare_xfџџџџџџџџџ
(%
NoDocbcCost_xfџџџџџџџџџ
$!

GenHlth_xfџџџџџџџџџ
%"
MentHlth_xfџџџџџџџџџ
%"
PhysHlth_xfџџџџџџџџџ
%"
DiffWalk_xfџџџџџџџџџ
 
Sex_xfџџџџџџџџџ
 
Age_xfџџџџџџџџџ
&#
Education_xfџџџџџџџџџ
# 
	Income_xfџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 
C__inference_model_1_layer_call_and_return_conditional_losses_283471в-.56DESTЂ
Ђ
џ
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
"
inputs/2џџџџџџџџџ
"
inputs/3џџџџџџџџџ
"
inputs/4џџџџџџџџџ
"
inputs/5џџџџџџџџџ
"
inputs/6џџџџџџџџџ
"
inputs/7џџџџџџџџџ
"
inputs/8џџџџџџџџџ
"
inputs/9џџџџџџџџџ
# 
	inputs/10џџџџџџџџџ
# 
	inputs/11џџџџџџџџџ
# 
	inputs/12џџџџџџџџџ
# 
	inputs/13џџџџџџџџџ
# 
	inputs/14џџџџџџџџџ
# 
	inputs/15џџџџџџџџџ
# 
	inputs/16џџџџџџџџџ
# 
	inputs/17џџџџџџџџџ
# 
	inputs/18џџџџџџџџџ
# 
	inputs/19џџџџџџџџџ
# 
	inputs/20џџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 
C__inference_model_1_layer_call_and_return_conditional_losses_283541в-.56DESTЂ
Ђ
џ
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
"
inputs/2џџџџџџџџџ
"
inputs/3џџџџџџџџџ
"
inputs/4џџџџџџџџџ
"
inputs/5џџџџџџџџџ
"
inputs/6џџџџџџџџџ
"
inputs/7џџџџџџџџџ
"
inputs/8џџџџџџџџџ
"
inputs/9џџџџџџџџџ
# 
	inputs/10џџџџџџџџџ
# 
	inputs/11џџџџџџџџџ
# 
	inputs/12џџџџџџџџџ
# 
	inputs/13џџџџџџџџџ
# 
	inputs/14џџџџџџџџџ
# 
	inputs/15џџџџџџџџџ
# 
	inputs/16џџџџџџџџџ
# 
	inputs/17џџџџџџџџџ
# 
	inputs/18џџџџџџџџџ
# 
	inputs/19џџџџџџџџџ
# 
	inputs/20џџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Ў
(__inference_model_1_layer_call_fn_282957-.56DESTкЂж
ЮЂЪ
ПЛ
# 
	HighBP_xfџџџџџџџџџ
%"
HighChol_xfџџџџџџџџџ
&#
CholCheck_xfџџџџџџџџџ
 
BMI_xfџџџџџџџџџ
# 
	Smoker_xfџџџџџџџџџ
# 
	Stroke_xfџџџџџџџџџ
1.
HeartDiseaseorAttack_xfџџџџџџџџџ
)&
PhysActivity_xfџџџџџџџџџ
# 
	Fruits_xfџџџџџџџџџ
$!

Veggies_xfџџџџџџџџџ
.+
HvyAlcoholConsump_xfџџџџџџџџџ
*'
AnyHealthcare_xfџџџџџџџџџ
(%
NoDocbcCost_xfџџџџџџџџџ
$!

GenHlth_xfџџџџџџџџџ
%"
MentHlth_xfџџџџџџџџџ
%"
PhysHlth_xfџџџџџџџџџ
%"
DiffWalk_xfџџџџџџџџџ
 
Sex_xfџџџџџџџџџ
 
Age_xfџџџџџџџџџ
&#
Education_xfџџџџџџџџџ
# 
	Income_xfџџџџџџџџџ
p 

 
Њ "џџџџџџџџџЎ
(__inference_model_1_layer_call_fn_283239-.56DESTкЂж
ЮЂЪ
ПЛ
# 
	HighBP_xfџџџџџџџџџ
%"
HighChol_xfџџџџџџџџџ
&#
CholCheck_xfџџџџџџџџџ
 
BMI_xfџџџџџџџџџ
# 
	Smoker_xfџџџџџџџџџ
# 
	Stroke_xfџџџџџџџџџ
1.
HeartDiseaseorAttack_xfџџџџџџџџџ
)&
PhysActivity_xfџџџџџџџџџ
# 
	Fruits_xfџџџџџџџџџ
$!

Veggies_xfџџџџџџџџџ
.+
HvyAlcoholConsump_xfџџџџџџџџџ
*'
AnyHealthcare_xfџџџџџџџџџ
(%
NoDocbcCost_xfџџџџџџџџџ
$!

GenHlth_xfџџџџџџџџџ
%"
MentHlth_xfџџџџџџџџџ
%"
PhysHlth_xfџџџџџџџџџ
%"
DiffWalk_xfџџџџџџџџџ
 
Sex_xfџџџџџџџџџ
 
Age_xfџџџџџџџџџ
&#
Education_xfџџџџџџџџџ
# 
	Income_xfџџџџџџџџџ
p

 
Њ "џџџџџџџџџђ
(__inference_model_1_layer_call_fn_283374Х-.56DESTЂ
Ђ
џ
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
"
inputs/2џџџџџџџџџ
"
inputs/3џџџџџџџџџ
"
inputs/4џџџџџџџџџ
"
inputs/5џџџџџџџџџ
"
inputs/6џџџџџџџџџ
"
inputs/7џџџџџџџџџ
"
inputs/8џџџџџџџџџ
"
inputs/9џџџџџџџџџ
# 
	inputs/10џџџџџџџџџ
# 
	inputs/11џџџџџџџџџ
# 
	inputs/12џџџџџџџџџ
# 
	inputs/13џџџџџџџџџ
# 
	inputs/14џџџџџџџџџ
# 
	inputs/15џџџџџџџџџ
# 
	inputs/16џџџџџџџџџ
# 
	inputs/17џџџџџџџџџ
# 
	inputs/18џџџџџџџџџ
# 
	inputs/19џџџџџџџџџ
# 
	inputs/20џџџџџџџџџ
p 

 
Њ "џџџџџџџџџђ
(__inference_model_1_layer_call_fn_283415Х-.56DESTЂ
Ђ
џ
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
"
inputs/2џџџџџџџџџ
"
inputs/3џџџџџџџџџ
"
inputs/4џџџџџџџџџ
"
inputs/5џџџџџџџџџ
"
inputs/6џџџџџџџџџ
"
inputs/7џџџџџџџџџ
"
inputs/8џџџџџџџџџ
"
inputs/9џџџџџџџџџ
# 
	inputs/10џџџџџџџџџ
# 
	inputs/11џџџџџџџџџ
# 
	inputs/12џџџџџџџџџ
# 
	inputs/13џџџџџџџџџ
# 
	inputs/14џџџџџџџџџ
# 
	inputs/15џџџџџџџџџ
# 
	inputs/16џџџџџџџџџ
# 
	inputs/17џџџџџџџџџ
# 
	inputs/18џџџџџџџџџ
# 
	inputs/19џџџџџџџџџ
# 
	inputs/20џџџџџџџџџ
p

 
Њ "џџџџџџџџџ
__inference_pruned_280853цЈЈЉЊЋЌ­ЎЏАБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдежзийклмнопрстуфхцчшщъыьэюя№ёђѓєѕіїјљњћя	Ђы	
у	Ђп	
м	Њи	
+
Age$!

inputs/Ageџџџџџџџџџ
?
AnyHealthcare.+
inputs/AnyHealthcareџџџџџџџџџ
+
BMI$!

inputs/BMIџџџџџџџџџ
7
	CholCheck*'
inputs/CholCheckџџџџџџџџџ
C
Diabetes_binary0-
inputs/Diabetes_binaryџџџџџџџџџ
5
DiffWalk)&
inputs/DiffWalkџџџџџџџџџ
7
	Education*'
inputs/Educationџџџџџџџџџ
1
Fruits'$
inputs/Fruitsџџџџџџџџџ
3
GenHlth(%
inputs/GenHlthџџџџџџџџџ
M
HeartDiseaseorAttack52
inputs/HeartDiseaseorAttackџџџџџџџџџ
1
HighBP'$
inputs/HighBPџџџџџџџџџ
5
HighChol)&
inputs/HighCholџџџџџџџџџ
G
HvyAlcoholConsump2/
inputs/HvyAlcoholConsumpџџџџџџџџџ
1
Income'$
inputs/Incomeџџџџџџџџџ
5
MentHlth)&
inputs/MentHlthџџџџџџџџџ
;
NoDocbcCost,)
inputs/NoDocbcCostџџџџџџџџџ
=
PhysActivity-*
inputs/PhysActivityџџџџџџџџџ
5
PhysHlth)&
inputs/PhysHlthџџџџџџџџџ
+
Sex$!

inputs/Sexџџџџџџџџџ
1
Smoker'$
inputs/Smokerџџџџџџџџџ
1
Stroke'$
inputs/Strokeџџџџџџџџџ
3
Veggies(%
inputs/Veggiesџџџџџџџџџ
Њ "Ц	ЊТ	
*
Age_xf 
Age_xfџџџџџџџџџ
>
AnyHealthcare_xf*'
AnyHealthcare_xfџџџџџџџџџ
*
BMI_xf 
BMI_xfџџџџџџџџџ
6
CholCheck_xf&#
CholCheck_xfџџџџџџџџџ
B
Diabetes_binary_xf,)
Diabetes_binary_xfџџџџџџџџџ	
4
DiffWalk_xf%"
DiffWalk_xfџџџџџџџџџ
6
Education_xf&#
Education_xfџџџџџџџџџ
0
	Fruits_xf# 
	Fruits_xfџџџџџџџџџ
2

GenHlth_xf$!

GenHlth_xfџџџџџџџџџ
L
HeartDiseaseorAttack_xf1.
HeartDiseaseorAttack_xfџџџџџџџџџ
0
	HighBP_xf# 
	HighBP_xfџџџџџџџџџ
4
HighChol_xf%"
HighChol_xfџџџџџџџџџ
F
HvyAlcoholConsump_xf.+
HvyAlcoholConsump_xfџџџџџџџџџ
0
	Income_xf# 
	Income_xfџџџџџџџџџ
4
MentHlth_xf%"
MentHlth_xfџџџџџџџџџ
:
NoDocbcCost_xf(%
NoDocbcCost_xfџџџџџџџџџ
<
PhysActivity_xf)&
PhysActivity_xfџџџџџџџџџ
4
PhysHlth_xf%"
PhysHlth_xfџџџџџџџџџ
*
Sex_xf 
Sex_xfџџџџџџџџџ
0
	Smoker_xf# 
	Smoker_xfџџџџџџџџџ
0
	Stroke_xf# 
	Stroke_xfџџџџџџџџџ
2

Veggies_xf$!

Veggies_xfџџџџџџџџџф
$__inference_signature_wrapper_281005ЛЈЈЉЊЋЌ­ЎЏАБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдежзийклмнопрстуфхцчшщъыьэюя№ёђѓєѕіїјљњћФЂР
Ђ 
ИЊД
*
inputs 
inputsџџџџџџџџџ
.
inputs_1"
inputs_1џџџџџџџџџ
0
	inputs_10# 
	inputs_10џџџџџџџџџ
0
	inputs_11# 
	inputs_11џџџџџџџџџ
0
	inputs_12# 
	inputs_12џџџџџџџџџ
0
	inputs_13# 
	inputs_13џџџџџџџџџ
0
	inputs_14# 
	inputs_14џџџџџџџџџ
0
	inputs_15# 
	inputs_15џџџџџџџџџ
0
	inputs_16# 
	inputs_16џџџџџџџџџ
0
	inputs_17# 
	inputs_17џџџџџџџџџ
0
	inputs_18# 
	inputs_18џџџџџџџџџ
0
	inputs_19# 
	inputs_19џџџџџџџџџ
.
inputs_2"
inputs_2џџџџџџџџџ
0
	inputs_20# 
	inputs_20џџџџџџџџџ
0
	inputs_21# 
	inputs_21џџџџџџџџџ
.
inputs_3"
inputs_3џџџџџџџџџ
.
inputs_4"
inputs_4џџџџџџџџџ
.
inputs_5"
inputs_5џџџџџџџџџ
.
inputs_6"
inputs_6џџџџџџџџџ
.
inputs_7"
inputs_7џџџџџџџџџ
.
inputs_8"
inputs_8џџџџџџџџџ
.
inputs_9"
inputs_9џџџџџџџџџ"Ц	ЊТ	
*
Age_xf 
Age_xfџџџџџџџџџ
>
AnyHealthcare_xf*'
AnyHealthcare_xfџџџџџџџџџ
*
BMI_xf 
BMI_xfџџџџџџџџџ
6
CholCheck_xf&#
CholCheck_xfџџџџџџџџџ
B
Diabetes_binary_xf,)
Diabetes_binary_xfџџџџџџџџџ	
4
DiffWalk_xf%"
DiffWalk_xfџџџџџџџџџ
6
Education_xf&#
Education_xfџџџџџџџџџ
0
	Fruits_xf# 
	Fruits_xfџџџџџџџџџ
2

GenHlth_xf$!

GenHlth_xfџџџџџџџџџ
L
HeartDiseaseorAttack_xf1.
HeartDiseaseorAttack_xfџџџџџџџџџ
0
	HighBP_xf# 
	HighBP_xfџџџџџџџџџ
4
HighChol_xf%"
HighChol_xfџџџџџџџџџ
F
HvyAlcoholConsump_xf.+
HvyAlcoholConsump_xfџџџџџџџџџ
0
	Income_xf# 
	Income_xfџџџџџџџџџ
4
MentHlth_xf%"
MentHlth_xfџџџџџџџџџ
:
NoDocbcCost_xf(%
NoDocbcCost_xfџџџџџџџџџ
<
PhysActivity_xf)&
PhysActivity_xfџџџџџџџџџ
4
PhysHlth_xf%"
PhysHlth_xfџџџџџџџџџ
*
Sex_xf 
Sex_xfџџџџџџџџџ
0
	Smoker_xf# 
	Smoker_xfџџџџџџџџџ
0
	Stroke_xf# 
	Stroke_xfџџџџџџџџџ
2

Veggies_xf$!

Veggies_xfџџџџџџџџџЪ
$__inference_signature_wrapper_281757ЁАЈЉЊЋЌ­ЎЏАБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдежзийклмнопрстуфхцчшщъыьэюя№ёђѓєѕіїјљњћ-.56DEST9Ђ6
Ђ 
/Њ,
*
examples
examplesџџџџџџџџџ"1Њ.
,
outputs!
outputsџџџџџџџџџй
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_282780ЈЈЉЊЋЌ­ЎЏАБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдежзийклмнопрстуфхцчшщъыьэюя№ёђѓєѕіїјљњћЂ
Ђ
Њ
$
Age
Ageџџџџџџџџџ
8
AnyHealthcare'$
AnyHealthcareџџџџџџџџџ
$
BMI
BMIџџџџџџџџџ
0
	CholCheck# 
	CholCheckџџџџџџџџџ
.
DiffWalk"
DiffWalkџџџџџџџџџ
0
	Education# 
	Educationџџџџџџџџџ
*
Fruits 
Fruitsџџџџџџџџџ
,
GenHlth!
GenHlthџџџџџџџџџ
F
HeartDiseaseorAttack.+
HeartDiseaseorAttackџџџџџџџџџ
*
HighBP 
HighBPџџџџџџџџџ
.
HighChol"
HighCholџџџџџџџџџ
@
HvyAlcoholConsump+(
HvyAlcoholConsumpџџџџџџџџџ
*
Income 
Incomeџџџџџџџџџ
.
MentHlth"
MentHlthџџџџџџџџџ
4
NoDocbcCost%"
NoDocbcCostџџџџџџџџџ
6
PhysActivity&#
PhysActivityџџџџџџџџџ
.
PhysHlth"
PhysHlthџџџџџџџџџ
$
Sex
Sexџџџџџџџџџ
*
Smoker 
Smokerџџџџџџџџџ
*
Stroke 
Strokeџџџџџџџџџ
,
Veggies!
Veggiesџџџџџџџџџ
Њ "И	ЂД	
Ќ	ЊЈ	
,
Age_xf"
0/Age_xfџџџџџџџџџ
@
AnyHealthcare_xf,)
0/AnyHealthcare_xfџџџџџџџџџ
,
BMI_xf"
0/BMI_xfџџџџџџџџџ
8
CholCheck_xf(%
0/CholCheck_xfџџџџџџџџџ
6
DiffWalk_xf'$
0/DiffWalk_xfџџџџџџџџџ
8
Education_xf(%
0/Education_xfџџџџџџџџџ
2
	Fruits_xf%"
0/Fruits_xfџџџџџџџџџ
4

GenHlth_xf&#
0/GenHlth_xfџџџџџџџџџ
N
HeartDiseaseorAttack_xf30
0/HeartDiseaseorAttack_xfџџџџџџџџџ
2
	HighBP_xf%"
0/HighBP_xfџџџџџџџџџ
6
HighChol_xf'$
0/HighChol_xfџџџџџџџџџ
H
HvyAlcoholConsump_xf0-
0/HvyAlcoholConsump_xfџџџџџџџџџ
2
	Income_xf%"
0/Income_xfџџџџџџџџџ
6
MentHlth_xf'$
0/MentHlth_xfџџџџџџџџџ
<
NoDocbcCost_xf*'
0/NoDocbcCost_xfџџџџџџџџџ
>
PhysActivity_xf+(
0/PhysActivity_xfџџџџџџџџџ
6
PhysHlth_xf'$
0/PhysHlth_xfџџџџџџџџџ
,
Sex_xf"
0/Sex_xfџџџџџџџџџ
2
	Smoker_xf%"
0/Smoker_xfџџџџџџџџџ
2
	Stroke_xf%"
0/Stroke_xfџџџџџџџџџ
4

Veggies_xf&#
0/Veggies_xfџџџџџџџџџ
 ь
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_284208ЈЈЉЊЋЌ­ЎЏАБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдежзийклмнопрстуфхцчшщъыьэюя№ёђѓєѕіїјљњћЊ	ЂІ	
	Ђ	
	Њ	
+
Age$!

inputs/Ageџџџџџџџџџ
?
AnyHealthcare.+
inputs/AnyHealthcareџџџџџџџџџ
+
BMI$!

inputs/BMIџџџџџџџџџ
7
	CholCheck*'
inputs/CholCheckџџџџџџџџџ
5
DiffWalk)&
inputs/DiffWalkџџџџџџџџџ
7
	Education*'
inputs/Educationџџџџџџџџџ
1
Fruits'$
inputs/Fruitsџџџџџџџџџ
3
GenHlth(%
inputs/GenHlthџџџџџџџџџ
M
HeartDiseaseorAttack52
inputs/HeartDiseaseorAttackџџџџџџџџџ
1
HighBP'$
inputs/HighBPџџџџџџџџџ
5
HighChol)&
inputs/HighCholџџџџџџџџџ
G
HvyAlcoholConsump2/
inputs/HvyAlcoholConsumpџџџџџџџџџ
1
Income'$
inputs/Incomeџџџџџџџџџ
5
MentHlth)&
inputs/MentHlthџџџџџџџџџ
;
NoDocbcCost,)
inputs/NoDocbcCostџџџџџџџџџ
=
PhysActivity-*
inputs/PhysActivityџџџџџџџџџ
5
PhysHlth)&
inputs/PhysHlthџџџџџџџџџ
+
Sex$!

inputs/Sexџџџџџџџџџ
1
Smoker'$
inputs/Smokerџџџџџџџџџ
1
Stroke'$
inputs/Strokeџџџџџџџџџ
3
Veggies(%
inputs/Veggiesџџџџџџџџџ
Њ "И	ЂД	
Ќ	ЊЈ	
,
Age_xf"
0/Age_xfџџџџџџџџџ
@
AnyHealthcare_xf,)
0/AnyHealthcare_xfџџџџџџџџџ
,
BMI_xf"
0/BMI_xfџџџџџџџџџ
8
CholCheck_xf(%
0/CholCheck_xfџџџџџџџџџ
6
DiffWalk_xf'$
0/DiffWalk_xfџџџџџџџџџ
8
Education_xf(%
0/Education_xfџџџџџџџџџ
2
	Fruits_xf%"
0/Fruits_xfџџџџџџџџџ
4

GenHlth_xf&#
0/GenHlth_xfџџџџџџџџџ
N
HeartDiseaseorAttack_xf30
0/HeartDiseaseorAttack_xfџџџџџџџџџ
2
	HighBP_xf%"
0/HighBP_xfџџџџџџџџџ
6
HighChol_xf'$
0/HighChol_xfџџџџџџџџџ
H
HvyAlcoholConsump_xf0-
0/HvyAlcoholConsump_xfџџџџџџџџџ
2
	Income_xf%"
0/Income_xfџџџџџџџџџ
6
MentHlth_xf'$
0/MentHlth_xfџџџџџџџџџ
<
NoDocbcCost_xf*'
0/NoDocbcCost_xfџџџџџџџџџ
>
PhysActivity_xf+(
0/PhysActivity_xfџџџџџџџџџ
6
PhysHlth_xf'$
0/PhysHlth_xfџџџџџџџџџ
,
Sex_xf"
0/Sex_xfџџџџџџџџџ
2
	Smoker_xf%"
0/Smoker_xfџџџџџџџџџ
2
	Stroke_xf%"
0/Stroke_xfџџџџџџџџџ
4

Veggies_xf&#
0/Veggies_xfџџџџџџџџџ
 
9__inference_transform_features_layer_layer_call_fn_282298ЪЈЈЉЊЋЌ­ЎЏАБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдежзийклмнопрстуфхцчшщъыьэюя№ёђѓєѕіїјљњћЂ
Ђ
Њ
$
Age
Ageџџџџџџџџџ
8
AnyHealthcare'$
AnyHealthcareџџџџџџџџџ
$
BMI
BMIџџџџџџџџџ
0
	CholCheck# 
	CholCheckџџџџџџџџџ
.
DiffWalk"
DiffWalkџџџџџџџџџ
0
	Education# 
	Educationџџџџџџџџџ
*
Fruits 
Fruitsџџџџџџџџџ
,
GenHlth!
GenHlthџџџџџџџџџ
F
HeartDiseaseorAttack.+
HeartDiseaseorAttackџџџџџџџџџ
*
HighBP 
HighBPџџџџџџџџџ
.
HighChol"
HighCholџџџџџџџџџ
@
HvyAlcoholConsump+(
HvyAlcoholConsumpџџџџџџџџџ
*
Income 
Incomeџџџџџџџџџ
.
MentHlth"
MentHlthџџџџџџџџџ
4
NoDocbcCost%"
NoDocbcCostџџџџџџџџџ
6
PhysActivity&#
PhysActivityџџџџџџџџџ
.
PhysHlth"
PhysHlthџџџџџџџџџ
$
Sex
Sexџџџџџџџџџ
*
Smoker 
Smokerџџџџџџџџџ
*
Stroke 
Strokeџџџџџџџџџ
,
Veggies!
Veggiesџџџџџџџџџ
Њ "	Њў
*
Age_xf 
Age_xfџџџџџџџџџ
>
AnyHealthcare_xf*'
AnyHealthcare_xfџџџџџџџџџ
*
BMI_xf 
BMI_xfџџџџџџџџџ
6
CholCheck_xf&#
CholCheck_xfџџџџџџџџџ
4
DiffWalk_xf%"
DiffWalk_xfџџџџџџџџџ
6
Education_xf&#
Education_xfџџџџџџџџџ
0
	Fruits_xf# 
	Fruits_xfџџџџџџџџџ
2

GenHlth_xf$!

GenHlth_xfџџџџџџџџџ
L
HeartDiseaseorAttack_xf1.
HeartDiseaseorAttack_xfџџџџџџџџџ
0
	HighBP_xf# 
	HighBP_xfџџџџџџџџџ
4
HighChol_xf%"
HighChol_xfџџџџџџџџџ
F
HvyAlcoholConsump_xf.+
HvyAlcoholConsump_xfџџџџџџџџџ
0
	Income_xf# 
	Income_xfџџџџџџџџџ
4
MentHlth_xf%"
MentHlth_xfџџџџџџџџџ
:
NoDocbcCost_xf(%
NoDocbcCost_xfџџџџџџџџџ
<
PhysActivity_xf)&
PhysActivity_xfџџџџџџџџџ
4
PhysHlth_xf%"
PhysHlth_xfџџџџџџџџџ
*
Sex_xf 
Sex_xfџџџџџџџџџ
0
	Smoker_xf# 
	Smoker_xfџџџџџџџџџ
0
	Stroke_xf# 
	Stroke_xfџџџџџџџџџ
2

Veggies_xf$!

Veggies_xfџџџџџџџџџ
9__inference_transform_features_layer_layer_call_fn_283959нЈЈЉЊЋЌ­ЎЏАБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдежзийклмнопрстуфхцчшщъыьэюя№ёђѓєѕіїјљњћЊ	ЂІ	
	Ђ	
	Њ	
+
Age$!

inputs/Ageџџџџџџџџџ
?
AnyHealthcare.+
inputs/AnyHealthcareџџџџџџџџџ
+
BMI$!

inputs/BMIџџџџџџџџџ
7
	CholCheck*'
inputs/CholCheckџџџџџџџџџ
5
DiffWalk)&
inputs/DiffWalkџџџџџџџџџ
7
	Education*'
inputs/Educationџџџџџџџџџ
1
Fruits'$
inputs/Fruitsџџџџџџџџџ
3
GenHlth(%
inputs/GenHlthџџџџџџџџџ
M
HeartDiseaseorAttack52
inputs/HeartDiseaseorAttackџџџџџџџџџ
1
HighBP'$
inputs/HighBPџџџџџџџџџ
5
HighChol)&
inputs/HighCholџџџџџџџџџ
G
HvyAlcoholConsump2/
inputs/HvyAlcoholConsumpџџџџџџџџџ
1
Income'$
inputs/Incomeџџџџџџџџџ
5
MentHlth)&
inputs/MentHlthџџџџџџџџџ
;
NoDocbcCost,)
inputs/NoDocbcCostџџџџџџџџџ
=
PhysActivity-*
inputs/PhysActivityџџџџџџџџџ
5
PhysHlth)&
inputs/PhysHlthџџџџџџџџџ
+
Sex$!

inputs/Sexџџџџџџџџџ
1
Smoker'$
inputs/Smokerџџџџџџџџџ
1
Stroke'$
inputs/Strokeџџџџџџџџџ
3
Veggies(%
inputs/Veggiesџџџџџџџџџ
Њ "	Њў
*
Age_xf 
Age_xfџџџџџџџџџ
>
AnyHealthcare_xf*'
AnyHealthcare_xfџџџџџџџџџ
*
BMI_xf 
BMI_xfџџџџџџџџџ
6
CholCheck_xf&#
CholCheck_xfџџџџџџџџџ
4
DiffWalk_xf%"
DiffWalk_xfџџџџџџџџџ
6
Education_xf&#
Education_xfџџџџџџџџџ
0
	Fruits_xf# 
	Fruits_xfџџџџџџџџџ
2

GenHlth_xf$!

GenHlth_xfџџџџџџџџџ
L
HeartDiseaseorAttack_xf1.
HeartDiseaseorAttack_xfџџџџџџџџџ
0
	HighBP_xf# 
	HighBP_xfџџџџџџџџџ
4
HighChol_xf%"
HighChol_xfџџџџџџџџџ
F
HvyAlcoholConsump_xf.+
HvyAlcoholConsump_xfџџџџџџџџџ
0
	Income_xf# 
	Income_xfџџџџџџџџџ
4
MentHlth_xf%"
MentHlth_xfџџџџџџџџџ
:
NoDocbcCost_xf(%
NoDocbcCost_xfџџџџџџџџџ
<
PhysActivity_xf)&
PhysActivity_xfџџџџџџџџџ
4
PhysHlth_xf%"
PhysHlth_xfџџџџџџџџџ
*
Sex_xf 
Sex_xfџџџџџџџџџ
0
	Smoker_xf# 
	Smoker_xfџџџџџџџџџ
0
	Stroke_xf# 
	Stroke_xfџџџџџџџџџ
2

Veggies_xf$!

Veggies_xfџџџџџџџџџ