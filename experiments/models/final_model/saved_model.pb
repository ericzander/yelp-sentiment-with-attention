їл
Л
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
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
Ў
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
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

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(
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
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
Ѕ
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
.
Rsqrt
x"T
y"T"
Ttype:

2
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
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
2
StopGradient

input"T
output"T"	
Ttype
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018шш
Ђ
%Adam/review_classifier/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/review_classifier/dense_2/bias/v

9Adam/review_classifier/dense_2/bias/v/Read/ReadVariableOpReadVariableOp%Adam/review_classifier/dense_2/bias/v*
_output_shapes
:*
dtype0
Њ
'Adam/review_classifier/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*8
shared_name)'Adam/review_classifier/dense_2/kernel/v
Ѓ
;Adam/review_classifier/dense_2/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/review_classifier/dense_2/kernel/v*
_output_shapes

:*
dtype0
Ђ
%Adam/review_classifier/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/review_classifier/dense_1/bias/v

9Adam/review_classifier/dense_1/bias/v/Read/ReadVariableOpReadVariableOp%Adam/review_classifier/dense_1/bias/v*
_output_shapes
:*
dtype0
Њ
'Adam/review_classifier/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *8
shared_name)'Adam/review_classifier/dense_1/kernel/v
Ѓ
;Adam/review_classifier/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/review_classifier/dense_1/kernel/v*
_output_shapes

: *
dtype0
О
3Adam/review_classifier/layer_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *D
shared_name53Adam/review_classifier/layer_normalization_1/beta/v
З
GAdam/review_classifier/layer_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp3Adam/review_classifier/layer_normalization_1/beta/v*
_output_shapes
: *
dtype0
Р
4Adam/review_classifier/layer_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *E
shared_name64Adam/review_classifier/layer_normalization_1/gamma/v
Й
HAdam/review_classifier/layer_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp4Adam/review_classifier/layer_normalization_1/gamma/v*
_output_shapes
: *
dtype0
К
1Adam/review_classifier/layer_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31Adam/review_classifier/layer_normalization/beta/v
Г
EAdam/review_classifier/layer_normalization/beta/v/Read/ReadVariableOpReadVariableOp1Adam/review_classifier/layer_normalization/beta/v*
_output_shapes
: *
dtype0
М
2Adam/review_classifier/layer_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42Adam/review_classifier/layer_normalization/gamma/v
Е
FAdam/review_classifier/layer_normalization/gamma/v/Read/ReadVariableOpReadVariableOp2Adam/review_classifier/layer_normalization/gamma/v*
_output_shapes
: *
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
: *
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:  *
dtype0
Ш
8Adam/review_classifier/attention/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *I
shared_name:8Adam/review_classifier/attention/attention_output/bias/v
С
LAdam/review_classifier/attention/attention_output/bias/v/Read/ReadVariableOpReadVariableOp8Adam/review_classifier/attention/attention_output/bias/v*
_output_shapes
: *
dtype0
д
:Adam/review_classifier/attention/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *K
shared_name<:Adam/review_classifier/attention/attention_output/kernel/v
Э
NAdam/review_classifier/attention/attention_output/kernel/v/Read/ReadVariableOpReadVariableOp:Adam/review_classifier/attention/attention_output/kernel/v*"
_output_shapes
:  *
dtype0
Ж
-Adam/review_classifier/attention/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *>
shared_name/-Adam/review_classifier/attention/value/bias/v
Џ
AAdam/review_classifier/attention/value/bias/v/Read/ReadVariableOpReadVariableOp-Adam/review_classifier/attention/value/bias/v*
_output_shapes

: *
dtype0
О
/Adam/review_classifier/attention/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *@
shared_name1/Adam/review_classifier/attention/value/kernel/v
З
CAdam/review_classifier/attention/value/kernel/v/Read/ReadVariableOpReadVariableOp/Adam/review_classifier/attention/value/kernel/v*"
_output_shapes
:  *
dtype0
В
+Adam/review_classifier/attention/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *<
shared_name-+Adam/review_classifier/attention/key/bias/v
Ћ
?Adam/review_classifier/attention/key/bias/v/Read/ReadVariableOpReadVariableOp+Adam/review_classifier/attention/key/bias/v*
_output_shapes

: *
dtype0
К
-Adam/review_classifier/attention/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *>
shared_name/-Adam/review_classifier/attention/key/kernel/v
Г
AAdam/review_classifier/attention/key/kernel/v/Read/ReadVariableOpReadVariableOp-Adam/review_classifier/attention/key/kernel/v*"
_output_shapes
:  *
dtype0
Ж
-Adam/review_classifier/attention/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *>
shared_name/-Adam/review_classifier/attention/query/bias/v
Џ
AAdam/review_classifier/attention/query/bias/v/Read/ReadVariableOpReadVariableOp-Adam/review_classifier/attention/query/bias/v*
_output_shapes

: *
dtype0
О
/Adam/review_classifier/attention/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *@
shared_name1/Adam/review_classifier/attention/query/kernel/v
З
CAdam/review_classifier/attention/query/kernel/v/Read/ReadVariableOpReadVariableOp/Adam/review_classifier/attention/query/kernel/v*"
_output_shapes
:  *
dtype0
Џ
)Adam/review_classifier/p_emb/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ш *:
shared_name+)Adam/review_classifier/p_emb/embeddings/v
Ј
=Adam/review_classifier/p_emb/embeddings/v/Read/ReadVariableOpReadVariableOp)Adam/review_classifier/p_emb/embeddings/v*
_output_shapes
:	Ш *
dtype0
А
)Adam/review_classifier/t_emb/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
  *:
shared_name+)Adam/review_classifier/t_emb/embeddings/v
Љ
=Adam/review_classifier/t_emb/embeddings/v/Read/ReadVariableOpReadVariableOp)Adam/review_classifier/t_emb/embeddings/v* 
_output_shapes
:
  *
dtype0
Ђ
%Adam/review_classifier/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/review_classifier/dense_2/bias/m

9Adam/review_classifier/dense_2/bias/m/Read/ReadVariableOpReadVariableOp%Adam/review_classifier/dense_2/bias/m*
_output_shapes
:*
dtype0
Њ
'Adam/review_classifier/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*8
shared_name)'Adam/review_classifier/dense_2/kernel/m
Ѓ
;Adam/review_classifier/dense_2/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/review_classifier/dense_2/kernel/m*
_output_shapes

:*
dtype0
Ђ
%Adam/review_classifier/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/review_classifier/dense_1/bias/m

9Adam/review_classifier/dense_1/bias/m/Read/ReadVariableOpReadVariableOp%Adam/review_classifier/dense_1/bias/m*
_output_shapes
:*
dtype0
Њ
'Adam/review_classifier/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *8
shared_name)'Adam/review_classifier/dense_1/kernel/m
Ѓ
;Adam/review_classifier/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/review_classifier/dense_1/kernel/m*
_output_shapes

: *
dtype0
О
3Adam/review_classifier/layer_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *D
shared_name53Adam/review_classifier/layer_normalization_1/beta/m
З
GAdam/review_classifier/layer_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp3Adam/review_classifier/layer_normalization_1/beta/m*
_output_shapes
: *
dtype0
Р
4Adam/review_classifier/layer_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *E
shared_name64Adam/review_classifier/layer_normalization_1/gamma/m
Й
HAdam/review_classifier/layer_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp4Adam/review_classifier/layer_normalization_1/gamma/m*
_output_shapes
: *
dtype0
К
1Adam/review_classifier/layer_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31Adam/review_classifier/layer_normalization/beta/m
Г
EAdam/review_classifier/layer_normalization/beta/m/Read/ReadVariableOpReadVariableOp1Adam/review_classifier/layer_normalization/beta/m*
_output_shapes
: *
dtype0
М
2Adam/review_classifier/layer_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42Adam/review_classifier/layer_normalization/gamma/m
Е
FAdam/review_classifier/layer_normalization/gamma/m/Read/ReadVariableOpReadVariableOp2Adam/review_classifier/layer_normalization/gamma/m*
_output_shapes
: *
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
: *
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:  *
dtype0
Ш
8Adam/review_classifier/attention/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *I
shared_name:8Adam/review_classifier/attention/attention_output/bias/m
С
LAdam/review_classifier/attention/attention_output/bias/m/Read/ReadVariableOpReadVariableOp8Adam/review_classifier/attention/attention_output/bias/m*
_output_shapes
: *
dtype0
д
:Adam/review_classifier/attention/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *K
shared_name<:Adam/review_classifier/attention/attention_output/kernel/m
Э
NAdam/review_classifier/attention/attention_output/kernel/m/Read/ReadVariableOpReadVariableOp:Adam/review_classifier/attention/attention_output/kernel/m*"
_output_shapes
:  *
dtype0
Ж
-Adam/review_classifier/attention/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *>
shared_name/-Adam/review_classifier/attention/value/bias/m
Џ
AAdam/review_classifier/attention/value/bias/m/Read/ReadVariableOpReadVariableOp-Adam/review_classifier/attention/value/bias/m*
_output_shapes

: *
dtype0
О
/Adam/review_classifier/attention/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *@
shared_name1/Adam/review_classifier/attention/value/kernel/m
З
CAdam/review_classifier/attention/value/kernel/m/Read/ReadVariableOpReadVariableOp/Adam/review_classifier/attention/value/kernel/m*"
_output_shapes
:  *
dtype0
В
+Adam/review_classifier/attention/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *<
shared_name-+Adam/review_classifier/attention/key/bias/m
Ћ
?Adam/review_classifier/attention/key/bias/m/Read/ReadVariableOpReadVariableOp+Adam/review_classifier/attention/key/bias/m*
_output_shapes

: *
dtype0
К
-Adam/review_classifier/attention/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *>
shared_name/-Adam/review_classifier/attention/key/kernel/m
Г
AAdam/review_classifier/attention/key/kernel/m/Read/ReadVariableOpReadVariableOp-Adam/review_classifier/attention/key/kernel/m*"
_output_shapes
:  *
dtype0
Ж
-Adam/review_classifier/attention/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *>
shared_name/-Adam/review_classifier/attention/query/bias/m
Џ
AAdam/review_classifier/attention/query/bias/m/Read/ReadVariableOpReadVariableOp-Adam/review_classifier/attention/query/bias/m*
_output_shapes

: *
dtype0
О
/Adam/review_classifier/attention/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *@
shared_name1/Adam/review_classifier/attention/query/kernel/m
З
CAdam/review_classifier/attention/query/kernel/m/Read/ReadVariableOpReadVariableOp/Adam/review_classifier/attention/query/kernel/m*"
_output_shapes
:  *
dtype0
Џ
)Adam/review_classifier/p_emb/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ш *:
shared_name+)Adam/review_classifier/p_emb/embeddings/m
Ј
=Adam/review_classifier/p_emb/embeddings/m/Read/ReadVariableOpReadVariableOp)Adam/review_classifier/p_emb/embeddings/m*
_output_shapes
:	Ш *
dtype0
А
)Adam/review_classifier/t_emb/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
  *:
shared_name+)Adam/review_classifier/t_emb/embeddings/m
Љ
=Adam/review_classifier/t_emb/embeddings/m/Read/ReadVariableOpReadVariableOp)Adam/review_classifier/t_emb/embeddings/m* 
_output_shapes
:
  *
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

review_classifier/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name review_classifier/dense_2/bias

2review_classifier/dense_2/bias/Read/ReadVariableOpReadVariableOpreview_classifier/dense_2/bias*
_output_shapes
:*
dtype0

 review_classifier/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" review_classifier/dense_2/kernel

4review_classifier/dense_2/kernel/Read/ReadVariableOpReadVariableOp review_classifier/dense_2/kernel*
_output_shapes

:*
dtype0

review_classifier/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name review_classifier/dense_1/bias

2review_classifier/dense_1/bias/Read/ReadVariableOpReadVariableOpreview_classifier/dense_1/bias*
_output_shapes
:*
dtype0

 review_classifier/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *1
shared_name" review_classifier/dense_1/kernel

4review_classifier/dense_1/kernel/Read/ReadVariableOpReadVariableOp review_classifier/dense_1/kernel*
_output_shapes

: *
dtype0
А
,review_classifier/layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,review_classifier/layer_normalization_1/beta
Љ
@review_classifier/layer_normalization_1/beta/Read/ReadVariableOpReadVariableOp,review_classifier/layer_normalization_1/beta*
_output_shapes
: *
dtype0
В
-review_classifier/layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *>
shared_name/-review_classifier/layer_normalization_1/gamma
Ћ
Areview_classifier/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOp-review_classifier/layer_normalization_1/gamma*
_output_shapes
: *
dtype0
Ќ
*review_classifier/layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*review_classifier/layer_normalization/beta
Ѕ
>review_classifier/layer_normalization/beta/Read/ReadVariableOpReadVariableOp*review_classifier/layer_normalization/beta*
_output_shapes
: *
dtype0
Ў
+review_classifier/layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *<
shared_name-+review_classifier/layer_normalization/gamma
Ї
?review_classifier/layer_normalization/gamma/Read/ReadVariableOpReadVariableOp+review_classifier/layer_normalization/gamma*
_output_shapes
: *
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
: *
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:  *
dtype0
К
1review_classifier/attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31review_classifier/attention/attention_output/bias
Г
Ereview_classifier/attention/attention_output/bias/Read/ReadVariableOpReadVariableOp1review_classifier/attention/attention_output/bias*
_output_shapes
: *
dtype0
Ц
3review_classifier/attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *D
shared_name53review_classifier/attention/attention_output/kernel
П
Greview_classifier/attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp3review_classifier/attention/attention_output/kernel*"
_output_shapes
:  *
dtype0
Ј
&review_classifier/attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *7
shared_name(&review_classifier/attention/value/bias
Ё
:review_classifier/attention/value/bias/Read/ReadVariableOpReadVariableOp&review_classifier/attention/value/bias*
_output_shapes

: *
dtype0
А
(review_classifier/attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *9
shared_name*(review_classifier/attention/value/kernel
Љ
<review_classifier/attention/value/kernel/Read/ReadVariableOpReadVariableOp(review_classifier/attention/value/kernel*"
_output_shapes
:  *
dtype0
Є
$review_classifier/attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *5
shared_name&$review_classifier/attention/key/bias

8review_classifier/attention/key/bias/Read/ReadVariableOpReadVariableOp$review_classifier/attention/key/bias*
_output_shapes

: *
dtype0
Ќ
&review_classifier/attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *7
shared_name(&review_classifier/attention/key/kernel
Ѕ
:review_classifier/attention/key/kernel/Read/ReadVariableOpReadVariableOp&review_classifier/attention/key/kernel*"
_output_shapes
:  *
dtype0
Ј
&review_classifier/attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *7
shared_name(&review_classifier/attention/query/bias
Ё
:review_classifier/attention/query/bias/Read/ReadVariableOpReadVariableOp&review_classifier/attention/query/bias*
_output_shapes

: *
dtype0
А
(review_classifier/attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *9
shared_name*(review_classifier/attention/query/kernel
Љ
<review_classifier/attention/query/kernel/Read/ReadVariableOpReadVariableOp(review_classifier/attention/query/kernel*"
_output_shapes
:  *
dtype0
Ё
"review_classifier/p_emb/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ш *3
shared_name$"review_classifier/p_emb/embeddings

6review_classifier/p_emb/embeddings/Read/ReadVariableOpReadVariableOp"review_classifier/p_emb/embeddings*
_output_shapes
:	Ш *
dtype0
Ђ
"review_classifier/t_emb/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
  *3
shared_name$"review_classifier/t_emb/embeddings

6review_classifier/t_emb/embeddings/Read/ReadVariableOpReadVariableOp"review_classifier/t_emb/embeddings* 
_output_shapes
:
  *
dtype0

NoOpNoOp
­
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*РЌ
valueЕЌBБЌ BЉЌ
ђ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	token_emb
	pos_emb

att
ffn

layernorm1

layernorm2
dropout1
dropout2
pool
dropout3
	dense
dropout4
	stars
	optimizer

signatures*

0
1
2
3
4
5
6
7
8
 9
!10
"11
#12
$13
%14
&15
'16
(17
)18
*19*

0
1
2
3
4
5
6
7
8
 9
!10
"11
#12
$13
%14
&15
'16
(17
)18
*19*
	
+0* 
А
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
1trace_0
2trace_1
3trace_2
4trace_3* 
6
5trace_0
6trace_1
7trace_2
8trace_3* 
* 
 
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

embeddings*
 
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses

embeddings*
љ
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses
K_query_dense
L
_key_dense
M_value_dense
N_softmax
O_dropout_layer
P_output_dense*
З
Qlayer_with_weights-0
Qlayer-0
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses*
Џ
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^axis
	#gamma
$beta*
Џ
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses
eaxis
	%gamma
&beta*
Ѕ
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses
l_random_generator* 
Ѕ
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses
s_random_generator* 

t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses* 
І
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
_random_generator* 
Ќ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

'kernel
(bias*
Ќ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator* 
Ќ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

)kernel
*bias*
й
	iter
beta_1
beta_2

decay
learning_ratemыmьmэmюmяm№mёmђmѓ mє!mѕ"mі#mї$mј%mљ&mњ'mћ(mќ)m§*mўvџvvvvvvvv v!v"v#v$v%v&v'v(v)v*v*

serving_default* 
b\
VARIABLE_VALUE"review_classifier/t_emb/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"review_classifier/p_emb/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE(review_classifier/attention/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&review_classifier/attention/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&review_classifier/attention/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$review_classifier/attention/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE(review_classifier/attention/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&review_classifier/attention/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3review_classifier/attention/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE1review_classifier/attention/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
dense/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE+review_classifier/layer_normalization/gamma'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE*review_classifier/layer_normalization/beta'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-review_classifier/layer_normalization_1/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,review_classifier/layer_normalization_1/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE review_classifier/dense_1/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEreview_classifier/dense_1/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE review_classifier/dense_2/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEreview_classifier/dense_2/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*

trace_0* 
* 
b
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
12*

0
1*
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

0*

0*
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
Ёlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

Ђtrace_0* 

Ѓtrace_0* 

0*

0*
* 

Єnon_trainable_variables
Ѕlayers
Іmetrics
 Їlayer_regularization_losses
Јlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*

Љtrace_0* 

Њtrace_0* 
<
0
1
2
3
4
5
6
 7*
<
0
1
2
3
4
5
6
 7*
* 

Ћnon_trainable_variables
Ќlayers
­metrics
 Ўlayer_regularization_losses
Џlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*

Аtrace_0
Бtrace_1* 

Вtrace_0
Гtrace_1* 
п
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses
Кpartial_output_shape
Лfull_output_shape

kernel
bias*
п
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses
Тpartial_output_shape
Уfull_output_shape

kernel
bias*
п
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses
Ъpartial_output_shape
Ыfull_output_shape

kernel
bias*

Ь	variables
Эtrainable_variables
Юregularization_losses
Я	keras_api
а__call__
+б&call_and_return_all_conditional_losses* 
Ќ
в	variables
гtrainable_variables
дregularization_losses
е	keras_api
ж__call__
+з&call_and_return_all_conditional_losses
и_random_generator* 
п
й	variables
кtrainable_variables
лregularization_losses
м	keras_api
н__call__
+о&call_and_return_all_conditional_losses
пpartial_output_shape
рfull_output_shape

kernel
 bias*
Ќ
с	variables
тtrainable_variables
уregularization_losses
ф	keras_api
х__call__
+ц&call_and_return_all_conditional_losses

!kernel
"bias*

!0
"1*

!0
"1*


ч0* 

шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses*
:
эtrace_0
юtrace_1
яtrace_2
№trace_3* 
:
ёtrace_0
ђtrace_1
ѓtrace_2
єtrace_3* 

#0
$1*

#0
$1*
* 

ѕnon_trainable_variables
іlayers
їmetrics
 јlayer_regularization_losses
љlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*

њtrace_0* 

ћtrace_0* 
* 

%0
&1*

%0
&1*
* 

ќnon_trainable_variables
§layers
ўmetrics
 џlayer_regularization_losses
layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses* 

trace_0
trace_1* 

trace_0
trace_1* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses* 

trace_0
trace_1* 

trace_0
trace_1* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Ёtrace_0
Ђtrace_1* 

Ѓtrace_0
Єtrace_1* 
* 

'0
(1*

'0
(1*
	
+0* 

Ѕnon_trainable_variables
Іlayers
Їmetrics
 Јlayer_regularization_losses
Љlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Њtrace_0* 

Ћtrace_0* 
* 
* 
* 

Ќnon_trainable_variables
­layers
Ўmetrics
 Џlayer_regularization_losses
Аlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Бtrace_0
Вtrace_1* 

Гtrace_0
Дtrace_1* 
* 

)0
*1*

)0
*1*
* 

Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Кtrace_0* 

Лtrace_0* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
<
М	variables
Н	keras_api

Оtotal

Пcount*
M
Р	variables
С	keras_api

Тtotal

Уcount
Ф
_fn_kwargs*
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
.
K0
L1
M2
N3
O4
P5*
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 

Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses*
* 
* 
* 
* 

0
1*

0
1*
* 

Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses*
* 
* 
* 
* 

0
1*

0
1*
* 

Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 

дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
Ь	variables
Эtrainable_variables
Юregularization_losses
а__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
в	variables
гtrainable_variables
дregularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses* 
* 
* 
* 

0
 1*

0
 1*
* 

оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
й	variables
кtrainable_variables
лregularization_losses
н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses*
* 
* 
* 
* 

!0
"1*

!0
"1*


ч0* 

уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
с	variables
тtrainable_variables
уregularization_losses
х__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses*

шtrace_0* 

щtrace_0* 

ъtrace_0* 
* 

Q0*
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
	
+0* 
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

О0
П1*

М	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Т0
У1*

Р	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
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


ч0* 
* 
* 
* 
* 

VARIABLE_VALUE)Adam/review_classifier/t_emb/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/review_classifier/p_emb/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE/Adam/review_classifier/attention/query/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/review_classifier/attention/query/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/review_classifier/attention/key/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/review_classifier/attention/key/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE/Adam/review_classifier/attention/value/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/review_classifier/attention/value/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/review_classifier/attention/attention_output/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/review_classifier/attention/attention_output/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/dense/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE2Adam/review_classifier/layer_normalization/gamma/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE1Adam/review_classifier/layer_normalization/beta/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE4Adam/review_classifier/layer_normalization_1/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE3Adam/review_classifier/layer_normalization_1/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE'Adam/review_classifier/dense_1/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE%Adam/review_classifier/dense_1/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE'Adam/review_classifier/dense_2/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE%Adam/review_classifier/dense_2/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/review_classifier/t_emb/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/review_classifier/p_emb/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE/Adam/review_classifier/attention/query/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/review_classifier/attention/query/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/review_classifier/attention/key/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/review_classifier/attention/key/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE/Adam/review_classifier/attention/value/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/review_classifier/attention/value/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/review_classifier/attention/attention_output/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/review_classifier/attention/attention_output/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/dense/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE2Adam/review_classifier/layer_normalization/gamma/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE1Adam/review_classifier/layer_normalization/beta/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE4Adam/review_classifier/layer_normalization_1/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE3Adam/review_classifier/layer_normalization_1/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE'Adam/review_classifier/dense_1/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE%Adam/review_classifier/dense_1/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE'Adam/review_classifier/dense_2/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE%Adam/review_classifier/dense_2/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
serving_default_input_1Placeholder*(
_output_shapes
:џџџџџџџџџШ*
dtype0*
shape:џџџџџџџџџШ
д
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1"review_classifier/p_emb/embeddings"review_classifier/t_emb/embeddings(review_classifier/attention/query/kernel&review_classifier/attention/query/bias&review_classifier/attention/key/kernel$review_classifier/attention/key/bias(review_classifier/attention/value/kernel&review_classifier/attention/value/bias3review_classifier/attention/attention_output/kernel1review_classifier/attention/attention_output/bias+review_classifier/layer_normalization/gamma*review_classifier/layer_normalization/betadense/kernel
dense/bias-review_classifier/layer_normalization_1/gamma,review_classifier/layer_normalization_1/beta review_classifier/dense_1/kernelreview_classifier/dense_1/bias review_classifier/dense_2/kernelreview_classifier/dense_2/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_7886669
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ї"
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename6review_classifier/t_emb/embeddings/Read/ReadVariableOp6review_classifier/p_emb/embeddings/Read/ReadVariableOp<review_classifier/attention/query/kernel/Read/ReadVariableOp:review_classifier/attention/query/bias/Read/ReadVariableOp:review_classifier/attention/key/kernel/Read/ReadVariableOp8review_classifier/attention/key/bias/Read/ReadVariableOp<review_classifier/attention/value/kernel/Read/ReadVariableOp:review_classifier/attention/value/bias/Read/ReadVariableOpGreview_classifier/attention/attention_output/kernel/Read/ReadVariableOpEreview_classifier/attention/attention_output/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp?review_classifier/layer_normalization/gamma/Read/ReadVariableOp>review_classifier/layer_normalization/beta/Read/ReadVariableOpAreview_classifier/layer_normalization_1/gamma/Read/ReadVariableOp@review_classifier/layer_normalization_1/beta/Read/ReadVariableOp4review_classifier/dense_1/kernel/Read/ReadVariableOp2review_classifier/dense_1/bias/Read/ReadVariableOp4review_classifier/dense_2/kernel/Read/ReadVariableOp2review_classifier/dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp=Adam/review_classifier/t_emb/embeddings/m/Read/ReadVariableOp=Adam/review_classifier/p_emb/embeddings/m/Read/ReadVariableOpCAdam/review_classifier/attention/query/kernel/m/Read/ReadVariableOpAAdam/review_classifier/attention/query/bias/m/Read/ReadVariableOpAAdam/review_classifier/attention/key/kernel/m/Read/ReadVariableOp?Adam/review_classifier/attention/key/bias/m/Read/ReadVariableOpCAdam/review_classifier/attention/value/kernel/m/Read/ReadVariableOpAAdam/review_classifier/attention/value/bias/m/Read/ReadVariableOpNAdam/review_classifier/attention/attention_output/kernel/m/Read/ReadVariableOpLAdam/review_classifier/attention/attention_output/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOpFAdam/review_classifier/layer_normalization/gamma/m/Read/ReadVariableOpEAdam/review_classifier/layer_normalization/beta/m/Read/ReadVariableOpHAdam/review_classifier/layer_normalization_1/gamma/m/Read/ReadVariableOpGAdam/review_classifier/layer_normalization_1/beta/m/Read/ReadVariableOp;Adam/review_classifier/dense_1/kernel/m/Read/ReadVariableOp9Adam/review_classifier/dense_1/bias/m/Read/ReadVariableOp;Adam/review_classifier/dense_2/kernel/m/Read/ReadVariableOp9Adam/review_classifier/dense_2/bias/m/Read/ReadVariableOp=Adam/review_classifier/t_emb/embeddings/v/Read/ReadVariableOp=Adam/review_classifier/p_emb/embeddings/v/Read/ReadVariableOpCAdam/review_classifier/attention/query/kernel/v/Read/ReadVariableOpAAdam/review_classifier/attention/query/bias/v/Read/ReadVariableOpAAdam/review_classifier/attention/key/kernel/v/Read/ReadVariableOp?Adam/review_classifier/attention/key/bias/v/Read/ReadVariableOpCAdam/review_classifier/attention/value/kernel/v/Read/ReadVariableOpAAdam/review_classifier/attention/value/bias/v/Read/ReadVariableOpNAdam/review_classifier/attention/attention_output/kernel/v/Read/ReadVariableOpLAdam/review_classifier/attention/attention_output/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpFAdam/review_classifier/layer_normalization/gamma/v/Read/ReadVariableOpEAdam/review_classifier/layer_normalization/beta/v/Read/ReadVariableOpHAdam/review_classifier/layer_normalization_1/gamma/v/Read/ReadVariableOpGAdam/review_classifier/layer_normalization_1/beta/v/Read/ReadVariableOp;Adam/review_classifier/dense_1/kernel/v/Read/ReadVariableOp9Adam/review_classifier/dense_1/bias/v/Read/ReadVariableOp;Adam/review_classifier/dense_2/kernel/v/Read/ReadVariableOp9Adam/review_classifier/dense_2/bias/v/Read/ReadVariableOpConst*R
TinK
I2G	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_save_7887916
О
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename"review_classifier/t_emb/embeddings"review_classifier/p_emb/embeddings(review_classifier/attention/query/kernel&review_classifier/attention/query/bias&review_classifier/attention/key/kernel$review_classifier/attention/key/bias(review_classifier/attention/value/kernel&review_classifier/attention/value/bias3review_classifier/attention/attention_output/kernel1review_classifier/attention/attention_output/biasdense/kernel
dense/bias+review_classifier/layer_normalization/gamma*review_classifier/layer_normalization/beta-review_classifier/layer_normalization_1/gamma,review_classifier/layer_normalization_1/beta review_classifier/dense_1/kernelreview_classifier/dense_1/bias review_classifier/dense_2/kernelreview_classifier/dense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcount)Adam/review_classifier/t_emb/embeddings/m)Adam/review_classifier/p_emb/embeddings/m/Adam/review_classifier/attention/query/kernel/m-Adam/review_classifier/attention/query/bias/m-Adam/review_classifier/attention/key/kernel/m+Adam/review_classifier/attention/key/bias/m/Adam/review_classifier/attention/value/kernel/m-Adam/review_classifier/attention/value/bias/m:Adam/review_classifier/attention/attention_output/kernel/m8Adam/review_classifier/attention/attention_output/bias/mAdam/dense/kernel/mAdam/dense/bias/m2Adam/review_classifier/layer_normalization/gamma/m1Adam/review_classifier/layer_normalization/beta/m4Adam/review_classifier/layer_normalization_1/gamma/m3Adam/review_classifier/layer_normalization_1/beta/m'Adam/review_classifier/dense_1/kernel/m%Adam/review_classifier/dense_1/bias/m'Adam/review_classifier/dense_2/kernel/m%Adam/review_classifier/dense_2/bias/m)Adam/review_classifier/t_emb/embeddings/v)Adam/review_classifier/p_emb/embeddings/v/Adam/review_classifier/attention/query/kernel/v-Adam/review_classifier/attention/query/bias/v-Adam/review_classifier/attention/key/kernel/v+Adam/review_classifier/attention/key/bias/v/Adam/review_classifier/attention/value/kernel/v-Adam/review_classifier/attention/value/bias/v:Adam/review_classifier/attention/attention_output/kernel/v8Adam/review_classifier/attention/attention_output/bias/vAdam/dense/kernel/vAdam/dense/bias/v2Adam/review_classifier/layer_normalization/gamma/v1Adam/review_classifier/layer_normalization/beta/v4Adam/review_classifier/layer_normalization_1/gamma/v3Adam/review_classifier/layer_normalization_1/beta/v'Adam/review_classifier/dense_1/kernel/v%Adam/review_classifier/dense_1/bias/v'Adam/review_classifier/dense_2/kernel/v%Adam/review_classifier/dense_2/bias/v*Q
TinJ
H2F*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__traced_restore_7888133Ш
й
d
F__inference_dropout_2_layer_call_and_return_conditional_losses_7887544

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ :O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ё
|
'__inference_p_emb_layer_call_fn_7887160

inputs
unknown:	Ш 
identityЂStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	Ш *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_p_emb_layer_call_and_return_conditional_losses_7885691g
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	Ш `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:Ш: 22
StatefulPartitionedCallStatefulPartitionedCall:C ?

_output_shapes	
:Ш
 
_user_specified_nameinputs
џ
Ћ
3__inference_review_classifier_layer_call_fn_7885961
input_1
unknown:	Ш 
	unknown_0:
  
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:  

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16:

unknown_17:

unknown_18:
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_review_classifier_layer_call_and_return_conditional_losses_7885918o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:џџџџџџџџџШ: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:џџџџџџџџџШ
!
_user_specified_name	input_1
э
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_7887506

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџШ `

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ :T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
%
Њ
B__inference_dense_layer_call_and_return_conditional_losses_7887675

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpЂ.dense/kernel/Regularizer/Square/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Л
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : П
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
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
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  o
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ Ћ
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs

q
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_7887529

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

њ
G__inference_sequential_layer_call_and_return_conditional_losses_7885648
dense_input
dense_7885636:  
dense_7885638: 
identityЂdense/StatefulPartitionedCallЂ.dense/kernel/Regularizer/Square/ReadVariableOpє
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_7885636dense_7885638*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_7885546|
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_7885636*
_output_shapes

:  *
dtype0
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  o
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: z
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ 
NoOpNoOp^dense/StatefulPartitionedCall/^dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp:Y U
,
_output_shapes
:џџџџџџџџџШ 
%
_user_specified_namedense_input
і
ѓ
"__inference__wrapped_model_7885502
input_1C
0review_classifier_p_emb_embedding_lookup_7885367:	Ш D
0review_classifier_t_emb_embedding_lookup_7885372:
  ]
Greview_classifier_attention_query_einsum_einsum_readvariableop_resource:  O
=review_classifier_attention_query_add_readvariableop_resource: [
Ereview_classifier_attention_key_einsum_einsum_readvariableop_resource:  M
;review_classifier_attention_key_add_readvariableop_resource: ]
Greview_classifier_attention_value_einsum_einsum_readvariableop_resource:  O
=review_classifier_attention_value_add_readvariableop_resource: h
Rreview_classifier_attention_attention_output_einsum_einsum_readvariableop_resource:  V
Hreview_classifier_attention_attention_output_add_readvariableop_resource: Y
Kreview_classifier_layer_normalization_batchnorm_mul_readvariableop_resource: U
Greview_classifier_layer_normalization_batchnorm_readvariableop_resource: V
Dreview_classifier_sequential_dense_tensordot_readvariableop_resource:  P
Breview_classifier_sequential_dense_biasadd_readvariableop_resource: [
Mreview_classifier_layer_normalization_1_batchnorm_mul_readvariableop_resource: W
Ireview_classifier_layer_normalization_1_batchnorm_readvariableop_resource: J
8review_classifier_dense_1_matmul_readvariableop_resource: G
9review_classifier_dense_1_biasadd_readvariableop_resource:J
8review_classifier_dense_2_matmul_readvariableop_resource:G
9review_classifier_dense_2_biasadd_readvariableop_resource:
identityЂ?review_classifier/attention/attention_output/add/ReadVariableOpЂIreview_classifier/attention/attention_output/einsum/Einsum/ReadVariableOpЂ2review_classifier/attention/key/add/ReadVariableOpЂ<review_classifier/attention/key/einsum/Einsum/ReadVariableOpЂ4review_classifier/attention/query/add/ReadVariableOpЂ>review_classifier/attention/query/einsum/Einsum/ReadVariableOpЂ4review_classifier/attention/value/add/ReadVariableOpЂ>review_classifier/attention/value/einsum/Einsum/ReadVariableOpЂ0review_classifier/dense_1/BiasAdd/ReadVariableOpЂ/review_classifier/dense_1/MatMul/ReadVariableOpЂ0review_classifier/dense_2/BiasAdd/ReadVariableOpЂ/review_classifier/dense_2/MatMul/ReadVariableOpЂ>review_classifier/layer_normalization/batchnorm/ReadVariableOpЂBreview_classifier/layer_normalization/batchnorm/mul/ReadVariableOpЂ@review_classifier/layer_normalization_1/batchnorm/ReadVariableOpЂDreview_classifier/layer_normalization_1/batchnorm/mul/ReadVariableOpЂ(review_classifier/p_emb/embedding_lookupЂ9review_classifier/sequential/dense/BiasAdd/ReadVariableOpЂ;review_classifier/sequential/dense/Tensordot/ReadVariableOpЂ(review_classifier/t_emb/embedding_lookup^
review_classifier/NotEqual/yConst*
_output_shapes
: *
dtype0*
value	B : 
review_classifier/NotEqualNotEqualinput_1%review_classifier/NotEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ~
%review_classifier/strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                
'review_classifier/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                
'review_classifier/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            т
review_classifier/strided_sliceStridedSlicereview_classifier/NotEqual:z:0.review_classifier/strided_slice/stack:output:00review_classifier/strided_slice/stack_1:output:00review_classifier/strided_slice/stack_2:output:0*
Index0*
T0
*0
_output_shapes
:џџџџџџџџџШ*

begin_mask	*
end_mask	*
new_axis_maskN
review_classifier/ShapeShapeinput_1*
T0*
_output_shapes
:z
'review_classifier/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџs
)review_classifier/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: s
)review_classifier/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
!review_classifier/strided_slice_1StridedSlice review_classifier/Shape:output:00review_classifier/strided_slice_1/stack:output:02review_classifier/strided_slice_1/stack_1:output:02review_classifier/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
review_classifier/range/startConst*
_output_shapes
: *
dtype0*
value	B : _
review_classifier/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :Й
review_classifier/rangeRange&review_classifier/range/start:output:0*review_classifier/strided_slice_1:output:0&review_classifier/range/delta:output:0*
_output_shapes	
:Ш
(review_classifier/p_emb/embedding_lookupResourceGather0review_classifier_p_emb_embedding_lookup_7885367 review_classifier/range:output:0*
Tindices0*C
_class9
75loc:@review_classifier/p_emb/embedding_lookup/7885367*
_output_shapes
:	Ш *
dtype0п
1review_classifier/p_emb/embedding_lookup/IdentityIdentity1review_classifier/p_emb/embedding_lookup:output:0*
T0*C
_class9
75loc:@review_classifier/p_emb/embedding_lookup/7885367*
_output_shapes
:	Ш Ѕ
3review_classifier/p_emb/embedding_lookup/Identity_1Identity:review_classifier/p_emb/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	Ш 
(review_classifier/t_emb/embedding_lookupResourceGather0review_classifier_t_emb_embedding_lookup_7885372input_1*
Tindices0*C
_class9
75loc:@review_classifier/t_emb/embedding_lookup/7885372*,
_output_shapes
:џџџџџџџџџШ *
dtype0ь
1review_classifier/t_emb/embedding_lookup/IdentityIdentity1review_classifier/t_emb/embedding_lookup:output:0*
T0*C
_class9
75loc:@review_classifier/t_emb/embedding_lookup/7885372*,
_output_shapes
:џџџџџџџџџШ В
3review_classifier/t_emb/embedding_lookup/Identity_1Identity:review_classifier/t_emb/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ d
"review_classifier/t_emb/NotEqual/yConst*
_output_shapes
: *
dtype0*
value	B : 
 review_classifier/t_emb/NotEqualNotEqualinput_1+review_classifier/t_emb/NotEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШб
review_classifier/addAddV2<review_classifier/t_emb/embedding_lookup/Identity_1:output:0<review_classifier/p_emb/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ Ъ
>review_classifier/attention/query/einsum/Einsum/ReadVariableOpReadVariableOpGreview_classifier_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0§
/review_classifier/attention/query/einsum/EinsumEinsumreview_classifier/add:z:0Freview_classifier/attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abdeВ
4review_classifier/attention/query/add/ReadVariableOpReadVariableOp=review_classifier_attention_query_add_readvariableop_resource*
_output_shapes

: *
dtype0с
%review_classifier/attention/query/addAddV28review_classifier/attention/query/einsum/Einsum:output:0<review_classifier/attention/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ Ц
<review_classifier/attention/key/einsum/Einsum/ReadVariableOpReadVariableOpEreview_classifier_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0љ
-review_classifier/attention/key/einsum/EinsumEinsumreview_classifier/add:z:0Dreview_classifier/attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abdeЎ
2review_classifier/attention/key/add/ReadVariableOpReadVariableOp;review_classifier_attention_key_add_readvariableop_resource*
_output_shapes

: *
dtype0л
#review_classifier/attention/key/addAddV26review_classifier/attention/key/einsum/Einsum:output:0:review_classifier/attention/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ Ъ
>review_classifier/attention/value/einsum/Einsum/ReadVariableOpReadVariableOpGreview_classifier_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0§
/review_classifier/attention/value/einsum/EinsumEinsumreview_classifier/add:z:0Freview_classifier/attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abdeВ
4review_classifier/attention/value/add/ReadVariableOpReadVariableOp=review_classifier_attention_value_add_readvariableop_resource*
_output_shapes

: *
dtype0с
%review_classifier/attention/value/addAddV28review_classifier/attention/value/einsum/Einsum:output:0<review_classifier/attention/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ f
!review_classifier/attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>И
review_classifier/attention/MulMul)review_classifier/attention/query/add:z:0*review_classifier/attention/Mul/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџШ х
)review_classifier/attention/einsum/EinsumEinsum'review_classifier/attention/key/add:z:0#review_classifier/attention/Mul:z:0*
N*
T0*1
_output_shapes
:џџџџџџџџџШШ*
equationaecd,abcd->acbeЄ
(review_classifier/attention/softmax/CastCast(review_classifier/strided_slice:output:0*

DstT0*

SrcT0
*0
_output_shapes
:џџџџџџџџџШn
)review_classifier/attention/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ы
'review_classifier/attention/softmax/subSub2review_classifier/attention/softmax/sub/x:output:0,review_classifier/attention/softmax/Cast:y:0*
T0*0
_output_shapes
:џџџџџџџџџШn
)review_classifier/attention/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knЮЪ
'review_classifier/attention/softmax/mulMul+review_classifier/attention/softmax/sub:z:02review_classifier/attention/softmax/mul/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџШЭ
'review_classifier/attention/softmax/addAddV22review_classifier/attention/einsum/Einsum:output:0+review_classifier/attention/softmax/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџШШ
+review_classifier/attention/softmax/SoftmaxSoftmax+review_classifier/attention/softmax/add:z:0*
T0*1
_output_shapes
:џџџџџџџџџШШЋ
,review_classifier/attention/dropout/IdentityIdentity5review_classifier/attention/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:џџџџџџџџџШШњ
+review_classifier/attention/einsum_1/EinsumEinsum5review_classifier/attention/dropout/Identity:output:0)review_classifier/attention/value/add:z:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationacbe,aecd->abcdр
Ireview_classifier/attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpRreview_classifier_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Њ
:review_classifier/attention/attention_output/einsum/EinsumEinsum4review_classifier/attention/einsum_1/Einsum:output:0Qreview_classifier/attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:џџџџџџџџџШ *
equationabcd,cde->abeФ
?review_classifier/attention/attention_output/add/ReadVariableOpReadVariableOpHreview_classifier_attention_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype0ў
0review_classifier/attention/attention_output/addAddV2Creview_classifier/attention/attention_output/einsum/Einsum:output:0Greview_classifier/attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
"review_classifier/dropout/IdentityIdentity4review_classifier/attention/attention_output/add:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
review_classifier/add_1AddV2review_classifier/add:z:0+review_classifier/dropout/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
Dreview_classifier/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ю
2review_classifier/layer_normalization/moments/meanMeanreview_classifier/add_1:z:0Mreview_classifier/layer_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(О
:review_classifier/layer_normalization/moments/StopGradientStopGradient;review_classifier/layer_normalization/moments/mean:output:0*
T0*,
_output_shapes
:џџџџџџџџџШэ
?review_classifier/layer_normalization/moments/SquaredDifferenceSquaredDifferencereview_classifier/add_1:z:0Creview_classifier/layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
Hreview_classifier/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
6review_classifier/layer_normalization/moments/varianceMeanCreview_classifier/layer_normalization/moments/SquaredDifference:z:0Qreview_classifier/layer_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(z
5review_classifier/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75є
3review_classifier/layer_normalization/batchnorm/addAddV2?review_classifier/layer_normalization/moments/variance:output:0>review_classifier/layer_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџШЎ
5review_classifier/layer_normalization/batchnorm/RsqrtRsqrt7review_classifier/layer_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:џџџџџџџџџШЪ
Breview_classifier/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpKreview_classifier_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0ј
3review_classifier/layer_normalization/batchnorm/mulMul9review_classifier/layer_normalization/batchnorm/Rsqrt:y:0Jreview_classifier/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ Щ
5review_classifier/layer_normalization/batchnorm/mul_1Mulreview_classifier/add_1:z:07review_classifier/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ щ
5review_classifier/layer_normalization/batchnorm/mul_2Mul;review_classifier/layer_normalization/moments/mean:output:07review_classifier/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ Т
>review_classifier/layer_normalization/batchnorm/ReadVariableOpReadVariableOpGreview_classifier_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0є
3review_classifier/layer_normalization/batchnorm/subSubFreview_classifier/layer_normalization/batchnorm/ReadVariableOp:value:09review_classifier/layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ щ
5review_classifier/layer_normalization/batchnorm/add_1AddV29review_classifier/layer_normalization/batchnorm/mul_1:z:07review_classifier/layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ Р
;review_classifier/sequential/dense/Tensordot/ReadVariableOpReadVariableOpDreview_classifier_sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0{
1review_classifier/sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
1review_classifier/sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
2review_classifier/sequential/dense/Tensordot/ShapeShape9review_classifier/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:|
:review_classifier/sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ч
5review_classifier/sequential/dense/Tensordot/GatherV2GatherV2;review_classifier/sequential/dense/Tensordot/Shape:output:0:review_classifier/sequential/dense/Tensordot/free:output:0Creview_classifier/sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
<review_classifier/sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ы
7review_classifier/sequential/dense/Tensordot/GatherV2_1GatherV2;review_classifier/sequential/dense/Tensordot/Shape:output:0:review_classifier/sequential/dense/Tensordot/axes:output:0Ereview_classifier/sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:|
2review_classifier/sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: з
1review_classifier/sequential/dense/Tensordot/ProdProd>review_classifier/sequential/dense/Tensordot/GatherV2:output:0;review_classifier/sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: ~
4review_classifier/sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: н
3review_classifier/sequential/dense/Tensordot/Prod_1Prod@review_classifier/sequential/dense/Tensordot/GatherV2_1:output:0=review_classifier/sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: z
8review_classifier/sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ј
3review_classifier/sequential/dense/Tensordot/concatConcatV2:review_classifier/sequential/dense/Tensordot/free:output:0:review_classifier/sequential/dense/Tensordot/axes:output:0Areview_classifier/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:т
2review_classifier/sequential/dense/Tensordot/stackPack:review_classifier/sequential/dense/Tensordot/Prod:output:0<review_classifier/sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ѓ
6review_classifier/sequential/dense/Tensordot/transpose	Transpose9review_classifier/layer_normalization/batchnorm/add_1:z:0<review_classifier/sequential/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ ѓ
4review_classifier/sequential/dense/Tensordot/ReshapeReshape:review_classifier/sequential/dense/Tensordot/transpose:y:0;review_classifier/sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџѓ
3review_classifier/sequential/dense/Tensordot/MatMulMatMul=review_classifier/sequential/dense/Tensordot/Reshape:output:0Creview_classifier/sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ ~
4review_classifier/sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: |
:review_classifier/sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Г
5review_classifier/sequential/dense/Tensordot/concat_1ConcatV2>review_classifier/sequential/dense/Tensordot/GatherV2:output:0=review_classifier/sequential/dense/Tensordot/Const_2:output:0Creview_classifier/sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:э
,review_classifier/sequential/dense/TensordotReshape=review_classifier/sequential/dense/Tensordot/MatMul:product:0>review_classifier/sequential/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ И
9review_classifier/sequential/dense/BiasAdd/ReadVariableOpReadVariableOpBreview_classifier_sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ц
*review_classifier/sequential/dense/BiasAddBiasAdd5review_classifier/sequential/dense/Tensordot:output:0Areview_classifier/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
'review_classifier/sequential/dense/ReluRelu3review_classifier/sequential/dense/BiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
$review_classifier/dropout_1/IdentityIdentity5review_classifier/sequential/dense/Relu:activations:0*
T0*,
_output_shapes
:џџџџџџџџџШ С
review_classifier/add_2AddV29review_classifier/layer_normalization/batchnorm/add_1:z:0-review_classifier/dropout_1/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
Freview_classifier/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ђ
4review_classifier/layer_normalization_1/moments/meanMeanreview_classifier/add_2:z:0Oreview_classifier/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(Т
<review_classifier/layer_normalization_1/moments/StopGradientStopGradient=review_classifier/layer_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:џџџџџџџџџШё
Areview_classifier/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencereview_classifier/add_2:z:0Ereview_classifier/layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
Jreview_classifier/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Є
8review_classifier/layer_normalization_1/moments/varianceMeanEreview_classifier/layer_normalization_1/moments/SquaredDifference:z:0Sreview_classifier/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(|
7review_classifier/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75њ
5review_classifier/layer_normalization_1/batchnorm/addAddV2Areview_classifier/layer_normalization_1/moments/variance:output:0@review_classifier/layer_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџШВ
7review_classifier/layer_normalization_1/batchnorm/RsqrtRsqrt9review_classifier/layer_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:џџџџџџџџџШЮ
Dreview_classifier/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpMreview_classifier_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0ў
5review_classifier/layer_normalization_1/batchnorm/mulMul;review_classifier/layer_normalization_1/batchnorm/Rsqrt:y:0Lreview_classifier/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ Э
7review_classifier/layer_normalization_1/batchnorm/mul_1Mulreview_classifier/add_2:z:09review_classifier/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ я
7review_classifier/layer_normalization_1/batchnorm/mul_2Mul=review_classifier/layer_normalization_1/moments/mean:output:09review_classifier/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ Ц
@review_classifier/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpIreview_classifier_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0њ
5review_classifier/layer_normalization_1/batchnorm/subSubHreview_classifier/layer_normalization_1/batchnorm/ReadVariableOp:value:0;review_classifier/layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ я
7review_classifier/layer_normalization_1/batchnorm/add_1AddV2;review_classifier/layer_normalization_1/batchnorm/mul_1:z:09review_classifier/layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
Areview_classifier/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :ђ
/review_classifier/global_average_pooling1d/MeanMean;review_classifier/layer_normalization_1/batchnorm/add_1:z:0Jreview_classifier/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 
$review_classifier/dropout_2/IdentityIdentity8review_classifier/global_average_pooling1d/Mean:output:0*
T0*'
_output_shapes
:џџџџџџџџџ Ј
/review_classifier/dense_1/MatMul/ReadVariableOpReadVariableOp8review_classifier_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ф
 review_classifier/dense_1/MatMulMatMul-review_classifier/dropout_2/Identity:output:07review_classifier/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
0review_classifier/dense_1/BiasAdd/ReadVariableOpReadVariableOp9review_classifier_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
!review_classifier/dense_1/BiasAddBiasAdd*review_classifier/dense_1/MatMul:product:08review_classifier/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
review_classifier/dense_1/ReluRelu*review_classifier/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
$review_classifier/dropout_3/IdentityIdentity,review_classifier/dense_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџЈ
/review_classifier/dense_2/MatMul/ReadVariableOpReadVariableOp8review_classifier_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ф
 review_classifier/dense_2/MatMulMatMul-review_classifier/dropout_3/Identity:output:07review_classifier/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
0review_classifier/dense_2/BiasAdd/ReadVariableOpReadVariableOp9review_classifier_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
!review_classifier/dense_2/BiasAddBiasAdd*review_classifier/dense_2/MatMul:product:08review_classifier/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!review_classifier/dense_2/SoftmaxSoftmax*review_classifier/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџz
IdentityIdentity+review_classifier/dense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџт	
NoOpNoOp@^review_classifier/attention/attention_output/add/ReadVariableOpJ^review_classifier/attention/attention_output/einsum/Einsum/ReadVariableOp3^review_classifier/attention/key/add/ReadVariableOp=^review_classifier/attention/key/einsum/Einsum/ReadVariableOp5^review_classifier/attention/query/add/ReadVariableOp?^review_classifier/attention/query/einsum/Einsum/ReadVariableOp5^review_classifier/attention/value/add/ReadVariableOp?^review_classifier/attention/value/einsum/Einsum/ReadVariableOp1^review_classifier/dense_1/BiasAdd/ReadVariableOp0^review_classifier/dense_1/MatMul/ReadVariableOp1^review_classifier/dense_2/BiasAdd/ReadVariableOp0^review_classifier/dense_2/MatMul/ReadVariableOp?^review_classifier/layer_normalization/batchnorm/ReadVariableOpC^review_classifier/layer_normalization/batchnorm/mul/ReadVariableOpA^review_classifier/layer_normalization_1/batchnorm/ReadVariableOpE^review_classifier/layer_normalization_1/batchnorm/mul/ReadVariableOp)^review_classifier/p_emb/embedding_lookup:^review_classifier/sequential/dense/BiasAdd/ReadVariableOp<^review_classifier/sequential/dense/Tensordot/ReadVariableOp)^review_classifier/t_emb/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:џџџџџџџџџШ: : : : : : : : : : : : : : : : : : : : 2
?review_classifier/attention/attention_output/add/ReadVariableOp?review_classifier/attention/attention_output/add/ReadVariableOp2
Ireview_classifier/attention/attention_output/einsum/Einsum/ReadVariableOpIreview_classifier/attention/attention_output/einsum/Einsum/ReadVariableOp2h
2review_classifier/attention/key/add/ReadVariableOp2review_classifier/attention/key/add/ReadVariableOp2|
<review_classifier/attention/key/einsum/Einsum/ReadVariableOp<review_classifier/attention/key/einsum/Einsum/ReadVariableOp2l
4review_classifier/attention/query/add/ReadVariableOp4review_classifier/attention/query/add/ReadVariableOp2
>review_classifier/attention/query/einsum/Einsum/ReadVariableOp>review_classifier/attention/query/einsum/Einsum/ReadVariableOp2l
4review_classifier/attention/value/add/ReadVariableOp4review_classifier/attention/value/add/ReadVariableOp2
>review_classifier/attention/value/einsum/Einsum/ReadVariableOp>review_classifier/attention/value/einsum/Einsum/ReadVariableOp2d
0review_classifier/dense_1/BiasAdd/ReadVariableOp0review_classifier/dense_1/BiasAdd/ReadVariableOp2b
/review_classifier/dense_1/MatMul/ReadVariableOp/review_classifier/dense_1/MatMul/ReadVariableOp2d
0review_classifier/dense_2/BiasAdd/ReadVariableOp0review_classifier/dense_2/BiasAdd/ReadVariableOp2b
/review_classifier/dense_2/MatMul/ReadVariableOp/review_classifier/dense_2/MatMul/ReadVariableOp2
>review_classifier/layer_normalization/batchnorm/ReadVariableOp>review_classifier/layer_normalization/batchnorm/ReadVariableOp2
Breview_classifier/layer_normalization/batchnorm/mul/ReadVariableOpBreview_classifier/layer_normalization/batchnorm/mul/ReadVariableOp2
@review_classifier/layer_normalization_1/batchnorm/ReadVariableOp@review_classifier/layer_normalization_1/batchnorm/ReadVariableOp2
Dreview_classifier/layer_normalization_1/batchnorm/mul/ReadVariableOpDreview_classifier/layer_normalization_1/batchnorm/mul/ReadVariableOp2T
(review_classifier/p_emb/embedding_lookup(review_classifier/p_emb/embedding_lookup2v
9review_classifier/sequential/dense/BiasAdd/ReadVariableOp9review_classifier/sequential/dense/BiasAdd/ReadVariableOp2z
;review_classifier/sequential/dense/Tensordot/ReadVariableOp;review_classifier/sequential/dense/Tensordot/ReadVariableOp2T
(review_classifier/t_emb/embedding_lookup(review_classifier/t_emb/embedding_lookup:Q M
(
_output_shapes
:џџџџџџџџџШ
!
_user_specified_name	input_1
є	
e
F__inference_dropout_3_layer_call_and_return_conditional_losses_7885991

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
З_
ў	
N__inference_review_classifier_layer_call_and_return_conditional_losses_7885918
x 
p_emb_7885692:	Ш !
t_emb_7885705:
  '
attention_7885755:  #
attention_7885757: '
attention_7885759:  #
attention_7885761: '
attention_7885763:  #
attention_7885765: '
attention_7885767:  
attention_7885769: )
layer_normalization_7885804: )
layer_normalization_7885806: $
sequential_7885809:   
sequential_7885811: +
layer_normalization_1_7885845: +
layer_normalization_1_7885847: !
dense_1_7885876: 
dense_1_7885878:!
dense_2_7885900:
dense_2_7885902:
identityЂ!attention/StatefulPartitionedCallЂ.dense/kernel/Regularizer/Square/ReadVariableOpЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂ+layer_normalization/StatefulPartitionedCallЂ-layer_normalization_1/StatefulPartitionedCallЂp_emb/StatefulPartitionedCallЂBreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpЂ"sequential/StatefulPartitionedCallЂt_emb/StatefulPartitionedCallL

NotEqual/yConst*
_output_shapes
: *
dtype0*
value	B : _
NotEqualNotEqualxNotEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШl
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_sliceStridedSliceNotEqual:z:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0
*0
_output_shapes
:џџџџџџџџџШ*

begin_mask	*
end_mask	*
new_axis_mask6
ShapeShapex*
T0*
_output_shapes
:h
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :q
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*
_output_shapes	
:Шй
p_emb/StatefulPartitionedCallStatefulPartitionedCallrange:output:0p_emb_7885692*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	Ш *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_p_emb_layer_call_and_return_conditional_losses_7885691й
t_emb/StatefulPartitionedCallStatefulPartitionedCallxt_emb_7885705*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_t_emb_layer_call_and_return_conditional_losses_7885704R
t_emb/NotEqual/yConst*
_output_shapes
: *
dtype0*
value	B : k
t_emb/NotEqualNotEqualxt_emb/NotEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
addAddV2&t_emb/StatefulPartitionedCall:output:0&p_emb/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ П
!attention/StatefulPartitionedCallStatefulPartitionedCalladd:z:0add:z:0strided_slice:output:0attention_7885755attention_7885757attention_7885759attention_7885761attention_7885763attention_7885765attention_7885767attention_7885769*
Tin
2
*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:џџџџџџџџџШ :џџџџџџџџџШШ**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_attention_layer_call_and_return_conditional_losses_7885754у
dropout/PartitionedCallPartitionedCall*attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_7885778p
add_1AddV2add:z:0 dropout/PartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ Њ
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCall	add_1:z:0layer_normalization_7885804layer_normalization_7885806*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_layer_normalization_layer_call_and_return_conditional_losses_7885803Б
"sequential/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0sequential_7885809sequential_7885811*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_7885559ш
dropout_1/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_7885819
add_2AddV24layer_normalization/StatefulPartitionedCall:output:0"dropout_1/PartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ В
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall	add_2:z:0layer_normalization_1_7885845layer_normalization_1_7885847*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7885844
(global_average_pooling1d/PartitionedCallPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_7885658щ
dropout_2/PartitionedCallPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_7885856
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_1_7885876dense_1_7885878*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_7885875р
dropout_3/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_3_layer_call_and_return_conditional_losses_7885886
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_2_7885900dense_2_7885902*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_7885899
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_7885809*
_output_shapes

:  *
dtype0
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  o
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
Breview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_7885876*
_output_shapes

: *
dtype0В
3review_classifier/dense_1/kernel/Regularizer/SquareSquareJreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 
2review_classifier/dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
0review_classifier/dense_1/kernel/Regularizer/SumSum7review_classifier/dense_1/kernel/Regularizer/Square:y:0;review_classifier/dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: w
2review_classifier/dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<а
0review_classifier/dense_1/kernel/Regularizer/mulMul;review_classifier/dense_1/kernel/Regularizer/mul/x:output:09review_classifier/dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџч
NoOpNoOp"^attention/StatefulPartitionedCall/^dense/kernel/Regularizer/Square/ReadVariableOp ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall^p_emb/StatefulPartitionedCallC^review_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp#^sequential/StatefulPartitionedCall^t_emb/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:џџџџџџџџџШ: : : : : : : : : : : : : : : : : : : : 2F
!attention/StatefulPartitionedCall!attention/StatefulPartitionedCall2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2>
p_emb/StatefulPartitionedCallp_emb/StatefulPartitionedCall2
Breview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpBreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2>
t_emb/StatefulPartitionedCallt_emb/StatefulPartitionedCall:K G
(
_output_shapes
:џџџџџџџџџШ

_user_specified_namex
Х

)__inference_dense_1_layer_call_fn_7887565

inputs
unknown: 
	unknown_0:
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_7885875o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ы0

F__inference_attention_layer_call_and_return_conditional_losses_7887304	
query	
value
attention_mask
A
+query_einsum_einsum_readvariableop_resource:  3
!query_add_readvariableop_resource: ?
)key_einsum_einsum_readvariableop_resource:  1
key_add_readvariableop_resource: A
+value_einsum_einsum_readvariableop_resource:  3
!value_add_readvariableop_resource: L
6attention_output_einsum_einsum_readvariableop_resource:  :
,attention_output_add_readvariableop_resource: 
identity

identity_1Ђ#attention_output/add/ReadVariableOpЂ-attention_output/einsum/Einsum/ReadVariableOpЂkey/add/ReadVariableOpЂ key/einsum/Einsum/ReadVariableOpЂquery/add/ReadVariableOpЂ"query/einsum/Einsum/ReadVariableOpЂvalue/add/ReadVariableOpЂ"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Б
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ 
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ 
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Б
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџШ 
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:џџџџџџџџџШШ*
equationaecd,abcd->acben
softmax/CastCastattention_mask*

DstT0*

SrcT0
*0
_output_shapes
:џџџџџџџџџШR
softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
softmax/subSubsoftmax/sub/x:output:0softmax/Cast:y:0*
T0*0
_output_shapes
:џџџџџџџџџШR
softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knЮv
softmax/mulMulsoftmax/sub:z:0softmax/mul/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџШy
softmax/addAddV2einsum/Einsum:output:0softmax/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџШШg
softmax/SoftmaxSoftmaxsoftmax/add:z:0*
T0*1
_output_shapes
:џџџџџџџџџШШІ
einsum_1/EinsumEinsumsoftmax/Softmax:softmax:0value/add:z:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationacbe,aecd->abcdЈ
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0ж
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:џџџџџџџџџШ *
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype0Њ
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ t

Identity_1Identitysoftmax/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџШШи
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:џџџџџџџџџШ :џџџџџџџџџШ :џџџџџџџџџШ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:џџџџџџџџџШ 

_user_specified_namequery:SO
,
_output_shapes
:џџџџџџџџџШ 

_user_specified_namevalue:`\
0
_output_shapes
:џџџџџџџџџШ
(
_user_specified_nameattention_mask
џ
ѕ
G__inference_sequential_layer_call_and_return_conditional_losses_7885559

inputs
dense_7885547:  
dense_7885549: 
identityЂdense/StatefulPartitionedCallЂ.dense/kernel/Regularizer/Square/ReadVariableOpя
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_7885547dense_7885549*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_7885546|
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_7885547*
_output_shapes

:  *
dtype0
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  o
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: z
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ 
NoOpNoOp^dense/StatefulPartitionedCall/^dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
і
Ї&
 __inference__traced_save_7887916
file_prefixA
=savev2_review_classifier_t_emb_embeddings_read_readvariableopA
=savev2_review_classifier_p_emb_embeddings_read_readvariableopG
Csavev2_review_classifier_attention_query_kernel_read_readvariableopE
Asavev2_review_classifier_attention_query_bias_read_readvariableopE
Asavev2_review_classifier_attention_key_kernel_read_readvariableopC
?savev2_review_classifier_attention_key_bias_read_readvariableopG
Csavev2_review_classifier_attention_value_kernel_read_readvariableopE
Asavev2_review_classifier_attention_value_bias_read_readvariableopR
Nsavev2_review_classifier_attention_attention_output_kernel_read_readvariableopP
Lsavev2_review_classifier_attention_attention_output_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableopJ
Fsavev2_review_classifier_layer_normalization_gamma_read_readvariableopI
Esavev2_review_classifier_layer_normalization_beta_read_readvariableopL
Hsavev2_review_classifier_layer_normalization_1_gamma_read_readvariableopK
Gsavev2_review_classifier_layer_normalization_1_beta_read_readvariableop?
;savev2_review_classifier_dense_1_kernel_read_readvariableop=
9savev2_review_classifier_dense_1_bias_read_readvariableop?
;savev2_review_classifier_dense_2_kernel_read_readvariableop=
9savev2_review_classifier_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopH
Dsavev2_adam_review_classifier_t_emb_embeddings_m_read_readvariableopH
Dsavev2_adam_review_classifier_p_emb_embeddings_m_read_readvariableopN
Jsavev2_adam_review_classifier_attention_query_kernel_m_read_readvariableopL
Hsavev2_adam_review_classifier_attention_query_bias_m_read_readvariableopL
Hsavev2_adam_review_classifier_attention_key_kernel_m_read_readvariableopJ
Fsavev2_adam_review_classifier_attention_key_bias_m_read_readvariableopN
Jsavev2_adam_review_classifier_attention_value_kernel_m_read_readvariableopL
Hsavev2_adam_review_classifier_attention_value_bias_m_read_readvariableopY
Usavev2_adam_review_classifier_attention_attention_output_kernel_m_read_readvariableopW
Ssavev2_adam_review_classifier_attention_attention_output_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableopQ
Msavev2_adam_review_classifier_layer_normalization_gamma_m_read_readvariableopP
Lsavev2_adam_review_classifier_layer_normalization_beta_m_read_readvariableopS
Osavev2_adam_review_classifier_layer_normalization_1_gamma_m_read_readvariableopR
Nsavev2_adam_review_classifier_layer_normalization_1_beta_m_read_readvariableopF
Bsavev2_adam_review_classifier_dense_1_kernel_m_read_readvariableopD
@savev2_adam_review_classifier_dense_1_bias_m_read_readvariableopF
Bsavev2_adam_review_classifier_dense_2_kernel_m_read_readvariableopD
@savev2_adam_review_classifier_dense_2_bias_m_read_readvariableopH
Dsavev2_adam_review_classifier_t_emb_embeddings_v_read_readvariableopH
Dsavev2_adam_review_classifier_p_emb_embeddings_v_read_readvariableopN
Jsavev2_adam_review_classifier_attention_query_kernel_v_read_readvariableopL
Hsavev2_adam_review_classifier_attention_query_bias_v_read_readvariableopL
Hsavev2_adam_review_classifier_attention_key_kernel_v_read_readvariableopJ
Fsavev2_adam_review_classifier_attention_key_bias_v_read_readvariableopN
Jsavev2_adam_review_classifier_attention_value_kernel_v_read_readvariableopL
Hsavev2_adam_review_classifier_attention_value_bias_v_read_readvariableopY
Usavev2_adam_review_classifier_attention_attention_output_kernel_v_read_readvariableopW
Ssavev2_adam_review_classifier_attention_attention_output_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableopQ
Msavev2_adam_review_classifier_layer_normalization_gamma_v_read_readvariableopP
Lsavev2_adam_review_classifier_layer_normalization_beta_v_read_readvariableopS
Osavev2_adam_review_classifier_layer_normalization_1_gamma_v_read_readvariableopR
Nsavev2_adam_review_classifier_layer_normalization_1_beta_v_read_readvariableopF
Bsavev2_adam_review_classifier_dense_1_kernel_v_read_readvariableopD
@savev2_adam_review_classifier_dense_1_bias_v_read_readvariableopF
Bsavev2_adam_review_classifier_dense_2_kernel_v_read_readvariableopD
@savev2_adam_review_classifier_dense_2_bias_v_read_readvariableop
savev2_const

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
: Ѕ 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*Ю
valueФBСFB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHќ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*Ё
valueBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B %
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0=savev2_review_classifier_t_emb_embeddings_read_readvariableop=savev2_review_classifier_p_emb_embeddings_read_readvariableopCsavev2_review_classifier_attention_query_kernel_read_readvariableopAsavev2_review_classifier_attention_query_bias_read_readvariableopAsavev2_review_classifier_attention_key_kernel_read_readvariableop?savev2_review_classifier_attention_key_bias_read_readvariableopCsavev2_review_classifier_attention_value_kernel_read_readvariableopAsavev2_review_classifier_attention_value_bias_read_readvariableopNsavev2_review_classifier_attention_attention_output_kernel_read_readvariableopLsavev2_review_classifier_attention_attention_output_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableopFsavev2_review_classifier_layer_normalization_gamma_read_readvariableopEsavev2_review_classifier_layer_normalization_beta_read_readvariableopHsavev2_review_classifier_layer_normalization_1_gamma_read_readvariableopGsavev2_review_classifier_layer_normalization_1_beta_read_readvariableop;savev2_review_classifier_dense_1_kernel_read_readvariableop9savev2_review_classifier_dense_1_bias_read_readvariableop;savev2_review_classifier_dense_2_kernel_read_readvariableop9savev2_review_classifier_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopDsavev2_adam_review_classifier_t_emb_embeddings_m_read_readvariableopDsavev2_adam_review_classifier_p_emb_embeddings_m_read_readvariableopJsavev2_adam_review_classifier_attention_query_kernel_m_read_readvariableopHsavev2_adam_review_classifier_attention_query_bias_m_read_readvariableopHsavev2_adam_review_classifier_attention_key_kernel_m_read_readvariableopFsavev2_adam_review_classifier_attention_key_bias_m_read_readvariableopJsavev2_adam_review_classifier_attention_value_kernel_m_read_readvariableopHsavev2_adam_review_classifier_attention_value_bias_m_read_readvariableopUsavev2_adam_review_classifier_attention_attention_output_kernel_m_read_readvariableopSsavev2_adam_review_classifier_attention_attention_output_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableopMsavev2_adam_review_classifier_layer_normalization_gamma_m_read_readvariableopLsavev2_adam_review_classifier_layer_normalization_beta_m_read_readvariableopOsavev2_adam_review_classifier_layer_normalization_1_gamma_m_read_readvariableopNsavev2_adam_review_classifier_layer_normalization_1_beta_m_read_readvariableopBsavev2_adam_review_classifier_dense_1_kernel_m_read_readvariableop@savev2_adam_review_classifier_dense_1_bias_m_read_readvariableopBsavev2_adam_review_classifier_dense_2_kernel_m_read_readvariableop@savev2_adam_review_classifier_dense_2_bias_m_read_readvariableopDsavev2_adam_review_classifier_t_emb_embeddings_v_read_readvariableopDsavev2_adam_review_classifier_p_emb_embeddings_v_read_readvariableopJsavev2_adam_review_classifier_attention_query_kernel_v_read_readvariableopHsavev2_adam_review_classifier_attention_query_bias_v_read_readvariableopHsavev2_adam_review_classifier_attention_key_kernel_v_read_readvariableopFsavev2_adam_review_classifier_attention_key_bias_v_read_readvariableopJsavev2_adam_review_classifier_attention_value_kernel_v_read_readvariableopHsavev2_adam_review_classifier_attention_value_bias_v_read_readvariableopUsavev2_adam_review_classifier_attention_attention_output_kernel_v_read_readvariableopSsavev2_adam_review_classifier_attention_attention_output_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopMsavev2_adam_review_classifier_layer_normalization_gamma_v_read_readvariableopLsavev2_adam_review_classifier_layer_normalization_beta_v_read_readvariableopOsavev2_adam_review_classifier_layer_normalization_1_gamma_v_read_readvariableopNsavev2_adam_review_classifier_layer_normalization_1_beta_v_read_readvariableopBsavev2_adam_review_classifier_dense_1_kernel_v_read_readvariableop@savev2_adam_review_classifier_dense_1_bias_v_read_readvariableopBsavev2_adam_review_classifier_dense_2_kernel_v_read_readvariableop@savev2_adam_review_classifier_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *T
dtypesJ
H2F	
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

identity_1Identity_1:output:0*м
_input_shapesЪ
Ч: :
  :	Ш :  : :  : :  : :  : :  : : : : : : :::: : : : : : : : : :
  :	Ш :  : :  : :  : :  : :  : : : : : : ::::
  :	Ш :  : :  : :  : :  : :  : : : : : : :::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
  :%!

_output_shapes
:	Ш :($
"
_output_shapes
:  :$ 

_output_shapes

: :($
"
_output_shapes
:  :$ 

_output_shapes

: :($
"
_output_shapes
:  :$ 

_output_shapes

: :(	$
"
_output_shapes
:  : 


_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::
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
: :&"
 
_output_shapes
:
  :%!

_output_shapes
:	Ш :( $
"
_output_shapes
:  :$! 

_output_shapes

: :("$
"
_output_shapes
:  :$# 

_output_shapes

: :($$
"
_output_shapes
:  :$% 

_output_shapes

: :(&$
"
_output_shapes
:  : '

_output_shapes
: :$( 

_output_shapes

:  : )

_output_shapes
: : *

_output_shapes
: : +

_output_shapes
: : ,

_output_shapes
: : -

_output_shapes
: :$. 

_output_shapes

: : /

_output_shapes
::$0 

_output_shapes

:: 1

_output_shapes
::&2"
 
_output_shapes
:
  :%3!

_output_shapes
:	Ш :(4$
"
_output_shapes
:  :$5 

_output_shapes

: :(6$
"
_output_shapes
:  :$7 

_output_shapes

: :(8$
"
_output_shapes
:  :$9 

_output_shapes

: :(:$
"
_output_shapes
:  : ;

_output_shapes
: :$< 

_output_shapes

:  : =

_output_shapes
: : >

_output_shapes
: : ?

_output_shapes
: : @

_output_shapes
: : A

_output_shapes
: :$B 

_output_shapes

: : C

_output_shapes
::$D 

_output_shapes

:: E

_output_shapes
::F

_output_shapes
: 
Г
Ю4
#__inference__traced_restore_7888133
file_prefixG
3assignvariableop_review_classifier_t_emb_embeddings:
  H
5assignvariableop_1_review_classifier_p_emb_embeddings:	Ш Q
;assignvariableop_2_review_classifier_attention_query_kernel:  K
9assignvariableop_3_review_classifier_attention_query_bias: O
9assignvariableop_4_review_classifier_attention_key_kernel:  I
7assignvariableop_5_review_classifier_attention_key_bias: Q
;assignvariableop_6_review_classifier_attention_value_kernel:  K
9assignvariableop_7_review_classifier_attention_value_bias: \
Fassignvariableop_8_review_classifier_attention_attention_output_kernel:  R
Dassignvariableop_9_review_classifier_attention_attention_output_bias: 2
 assignvariableop_10_dense_kernel:  ,
assignvariableop_11_dense_bias: M
?assignvariableop_12_review_classifier_layer_normalization_gamma: L
>assignvariableop_13_review_classifier_layer_normalization_beta: O
Aassignvariableop_14_review_classifier_layer_normalization_1_gamma: N
@assignvariableop_15_review_classifier_layer_normalization_1_beta: F
4assignvariableop_16_review_classifier_dense_1_kernel: @
2assignvariableop_17_review_classifier_dense_1_bias:F
4assignvariableop_18_review_classifier_dense_2_kernel:@
2assignvariableop_19_review_classifier_dense_2_bias:'
assignvariableop_20_adam_iter:	 )
assignvariableop_21_adam_beta_1: )
assignvariableop_22_adam_beta_2: (
assignvariableop_23_adam_decay: 0
&assignvariableop_24_adam_learning_rate: %
assignvariableop_25_total_1: %
assignvariableop_26_count_1: #
assignvariableop_27_total: #
assignvariableop_28_count: Q
=assignvariableop_29_adam_review_classifier_t_emb_embeddings_m:
  P
=assignvariableop_30_adam_review_classifier_p_emb_embeddings_m:	Ш Y
Cassignvariableop_31_adam_review_classifier_attention_query_kernel_m:  S
Aassignvariableop_32_adam_review_classifier_attention_query_bias_m: W
Aassignvariableop_33_adam_review_classifier_attention_key_kernel_m:  Q
?assignvariableop_34_adam_review_classifier_attention_key_bias_m: Y
Cassignvariableop_35_adam_review_classifier_attention_value_kernel_m:  S
Aassignvariableop_36_adam_review_classifier_attention_value_bias_m: d
Nassignvariableop_37_adam_review_classifier_attention_attention_output_kernel_m:  Z
Lassignvariableop_38_adam_review_classifier_attention_attention_output_bias_m: 9
'assignvariableop_39_adam_dense_kernel_m:  3
%assignvariableop_40_adam_dense_bias_m: T
Fassignvariableop_41_adam_review_classifier_layer_normalization_gamma_m: S
Eassignvariableop_42_adam_review_classifier_layer_normalization_beta_m: V
Hassignvariableop_43_adam_review_classifier_layer_normalization_1_gamma_m: U
Gassignvariableop_44_adam_review_classifier_layer_normalization_1_beta_m: M
;assignvariableop_45_adam_review_classifier_dense_1_kernel_m: G
9assignvariableop_46_adam_review_classifier_dense_1_bias_m:M
;assignvariableop_47_adam_review_classifier_dense_2_kernel_m:G
9assignvariableop_48_adam_review_classifier_dense_2_bias_m:Q
=assignvariableop_49_adam_review_classifier_t_emb_embeddings_v:
  P
=assignvariableop_50_adam_review_classifier_p_emb_embeddings_v:	Ш Y
Cassignvariableop_51_adam_review_classifier_attention_query_kernel_v:  S
Aassignvariableop_52_adam_review_classifier_attention_query_bias_v: W
Aassignvariableop_53_adam_review_classifier_attention_key_kernel_v:  Q
?assignvariableop_54_adam_review_classifier_attention_key_bias_v: Y
Cassignvariableop_55_adam_review_classifier_attention_value_kernel_v:  S
Aassignvariableop_56_adam_review_classifier_attention_value_bias_v: d
Nassignvariableop_57_adam_review_classifier_attention_attention_output_kernel_v:  Z
Lassignvariableop_58_adam_review_classifier_attention_attention_output_bias_v: 9
'assignvariableop_59_adam_dense_kernel_v:  3
%assignvariableop_60_adam_dense_bias_v: T
Fassignvariableop_61_adam_review_classifier_layer_normalization_gamma_v: S
Eassignvariableop_62_adam_review_classifier_layer_normalization_beta_v: V
Hassignvariableop_63_adam_review_classifier_layer_normalization_1_gamma_v: U
Gassignvariableop_64_adam_review_classifier_layer_normalization_1_beta_v: M
;assignvariableop_65_adam_review_classifier_dense_1_kernel_v: G
9assignvariableop_66_adam_review_classifier_dense_1_bias_v:M
;assignvariableop_67_adam_review_classifier_dense_2_kernel_v:G
9assignvariableop_68_adam_review_classifier_dense_2_bias_v:
identity_70ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_55ЂAssignVariableOp_56ЂAssignVariableOp_57ЂAssignVariableOp_58ЂAssignVariableOp_59ЂAssignVariableOp_6ЂAssignVariableOp_60ЂAssignVariableOp_61ЂAssignVariableOp_62ЂAssignVariableOp_63ЂAssignVariableOp_64ЂAssignVariableOp_65ЂAssignVariableOp_66ЂAssignVariableOp_67ЂAssignVariableOp_68ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Ј 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*Ю
valueФBСFB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHџ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*Ё
valueBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B џ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ў
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*T
dtypesJ
H2F	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp3assignvariableop_review_classifier_t_emb_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_1AssignVariableOp5assignvariableop_1_review_classifier_p_emb_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_2AssignVariableOp;assignvariableop_2_review_classifier_attention_query_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_3AssignVariableOp9assignvariableop_3_review_classifier_attention_query_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_4AssignVariableOp9assignvariableop_4_review_classifier_attention_key_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_5AssignVariableOp7assignvariableop_5_review_classifier_attention_key_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_6AssignVariableOp;assignvariableop_6_review_classifier_attention_value_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_7AssignVariableOp9assignvariableop_7_review_classifier_attention_value_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_8AssignVariableOpFassignvariableop_8_review_classifier_attention_attention_output_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOp_9AssignVariableOpDassignvariableop_9_review_classifier_attention_attention_output_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_dense_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_12AssignVariableOp?assignvariableop_12_review_classifier_layer_normalization_gammaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_13AssignVariableOp>assignvariableop_13_review_classifier_layer_normalization_betaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_14AssignVariableOpAassignvariableop_14_review_classifier_layer_normalization_1_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_15AssignVariableOp@assignvariableop_15_review_classifier_layer_normalization_1_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_16AssignVariableOp4assignvariableop_16_review_classifier_dense_1_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_17AssignVariableOp2assignvariableop_17_review_classifier_dense_1_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_18AssignVariableOp4assignvariableop_18_review_classifier_dense_2_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_19AssignVariableOp2assignvariableop_19_review_classifier_dense_2_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_iterIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_beta_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_beta_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_decayIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_learning_rateIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_29AssignVariableOp=assignvariableop_29_adam_review_classifier_t_emb_embeddings_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_30AssignVariableOp=assignvariableop_30_adam_review_classifier_p_emb_embeddings_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_31AssignVariableOpCassignvariableop_31_adam_review_classifier_attention_query_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_32AssignVariableOpAassignvariableop_32_adam_review_classifier_attention_query_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_33AssignVariableOpAassignvariableop_33_adam_review_classifier_attention_key_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_34AssignVariableOp?assignvariableop_34_adam_review_classifier_attention_key_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_35AssignVariableOpCassignvariableop_35_adam_review_classifier_attention_value_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_36AssignVariableOpAassignvariableop_36_adam_review_classifier_attention_value_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_37AssignVariableOpNassignvariableop_37_adam_review_classifier_attention_attention_output_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_38AssignVariableOpLassignvariableop_38_adam_review_classifier_attention_attention_output_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp%assignvariableop_40_adam_dense_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_41AssignVariableOpFassignvariableop_41_adam_review_classifier_layer_normalization_gamma_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ж
AssignVariableOp_42AssignVariableOpEassignvariableop_42_adam_review_classifier_layer_normalization_beta_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_43AssignVariableOpHassignvariableop_43_adam_review_classifier_layer_normalization_1_gamma_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_44AssignVariableOpGassignvariableop_44_adam_review_classifier_layer_normalization_1_beta_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_45AssignVariableOp;assignvariableop_45_adam_review_classifier_dense_1_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_46AssignVariableOp9assignvariableop_46_adam_review_classifier_dense_1_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_47AssignVariableOp;assignvariableop_47_adam_review_classifier_dense_2_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_48AssignVariableOp9assignvariableop_48_adam_review_classifier_dense_2_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_49AssignVariableOp=assignvariableop_49_adam_review_classifier_t_emb_embeddings_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_50AssignVariableOp=assignvariableop_50_adam_review_classifier_p_emb_embeddings_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_51AssignVariableOpCassignvariableop_51_adam_review_classifier_attention_query_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_52AssignVariableOpAassignvariableop_52_adam_review_classifier_attention_query_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_53AssignVariableOpAassignvariableop_53_adam_review_classifier_attention_key_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_54AssignVariableOp?assignvariableop_54_adam_review_classifier_attention_key_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_55AssignVariableOpCassignvariableop_55_adam_review_classifier_attention_value_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_56AssignVariableOpAassignvariableop_56_adam_review_classifier_attention_value_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_57AssignVariableOpNassignvariableop_57_adam_review_classifier_attention_attention_output_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_58AssignVariableOpLassignvariableop_58_adam_review_classifier_attention_attention_output_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp'assignvariableop_59_adam_dense_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp%assignvariableop_60_adam_dense_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_61AssignVariableOpFassignvariableop_61_adam_review_classifier_layer_normalization_gamma_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Ж
AssignVariableOp_62AssignVariableOpEassignvariableop_62_adam_review_classifier_layer_normalization_beta_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_63AssignVariableOpHassignvariableop_63_adam_review_classifier_layer_normalization_1_gamma_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_64AssignVariableOpGassignvariableop_64_adam_review_classifier_layer_normalization_1_beta_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_65AssignVariableOp;assignvariableop_65_adam_review_classifier_dense_1_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_66AssignVariableOp9assignvariableop_66_adam_review_classifier_dense_1_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_67AssignVariableOp;assignvariableop_67_adam_review_classifier_dense_2_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_68AssignVariableOp9assignvariableop_68_adam_review_classifier_dense_2_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Н
Identity_69Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_70IdentityIdentity_69:output:0^NoOp_1*
T0*
_output_shapes
: Њ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_70Identity_70:output:0*Ё
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
э
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_7885819

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџШ `

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ :T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
ю
П
N__inference_review_classifier_layer_call_and_return_conditional_losses_7887114
x1
p_emb_embedding_lookup_7886940:	Ш 2
t_emb_embedding_lookup_7886945:
  K
5attention_query_einsum_einsum_readvariableop_resource:  =
+attention_query_add_readvariableop_resource: I
3attention_key_einsum_einsum_readvariableop_resource:  ;
)attention_key_add_readvariableop_resource: K
5attention_value_einsum_einsum_readvariableop_resource:  =
+attention_value_add_readvariableop_resource: V
@attention_attention_output_einsum_einsum_readvariableop_resource:  D
6attention_attention_output_add_readvariableop_resource: G
9layer_normalization_batchnorm_mul_readvariableop_resource: C
5layer_normalization_batchnorm_readvariableop_resource: D
2sequential_dense_tensordot_readvariableop_resource:  >
0sequential_dense_biasadd_readvariableop_resource: I
;layer_normalization_1_batchnorm_mul_readvariableop_resource: E
7layer_normalization_1_batchnorm_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:
identityЂ-attention/attention_output/add/ReadVariableOpЂ7attention/attention_output/einsum/Einsum/ReadVariableOpЂ attention/key/add/ReadVariableOpЂ*attention/key/einsum/Einsum/ReadVariableOpЂ"attention/query/add/ReadVariableOpЂ,attention/query/einsum/Einsum/ReadVariableOpЂ"attention/value/add/ReadVariableOpЂ,attention/value/einsum/Einsum/ReadVariableOpЂ.dense/kernel/Regularizer/Square/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂ,layer_normalization/batchnorm/ReadVariableOpЂ0layer_normalization/batchnorm/mul/ReadVariableOpЂ.layer_normalization_1/batchnorm/ReadVariableOpЂ2layer_normalization_1/batchnorm/mul/ReadVariableOpЂp_emb/embedding_lookupЂBreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpЂ'sequential/dense/BiasAdd/ReadVariableOpЂ)sequential/dense/Tensordot/ReadVariableOpЂt_emb/embedding_lookupL

NotEqual/yConst*
_output_shapes
: *
dtype0*
value	B : _
NotEqualNotEqualxNotEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШl
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_sliceStridedSliceNotEqual:z:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0
*0
_output_shapes
:џџџџџџџџџШ*

begin_mask	*
end_mask	*
new_axis_mask6
ShapeShapex*
T0*
_output_shapes
:h
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :q
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*
_output_shapes	
:ШЩ
p_emb/embedding_lookupResourceGatherp_emb_embedding_lookup_7886940range:output:0*
Tindices0*1
_class'
%#loc:@p_emb/embedding_lookup/7886940*
_output_shapes
:	Ш *
dtype0Љ
p_emb/embedding_lookup/IdentityIdentityp_emb/embedding_lookup:output:0*
T0*1
_class'
%#loc:@p_emb/embedding_lookup/7886940*
_output_shapes
:	Ш 
!p_emb/embedding_lookup/Identity_1Identity(p_emb/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	Ш Щ
t_emb/embedding_lookupResourceGathert_emb_embedding_lookup_7886945x*
Tindices0*1
_class'
%#loc:@t_emb/embedding_lookup/7886945*,
_output_shapes
:џџџџџџџџџШ *
dtype0Ж
t_emb/embedding_lookup/IdentityIdentityt_emb/embedding_lookup:output:0*
T0*1
_class'
%#loc:@t_emb/embedding_lookup/7886945*,
_output_shapes
:џџџџџџџџџШ 
!t_emb/embedding_lookup/Identity_1Identity(t_emb/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ R
t_emb/NotEqual/yConst*
_output_shapes
: *
dtype0*
value	B : k
t_emb/NotEqualNotEqualxt_emb/NotEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
addAddV2*t_emb/embedding_lookup/Identity_1:output:0*p_emb/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ І
,attention/query/einsum/Einsum/ReadVariableOpReadVariableOp5attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Ч
attention/query/einsum/EinsumEinsumadd:z:04attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abde
"attention/query/add/ReadVariableOpReadVariableOp+attention_query_add_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
attention/query/addAddV2&attention/query/einsum/Einsum:output:0*attention/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ Ђ
*attention/key/einsum/Einsum/ReadVariableOpReadVariableOp3attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0У
attention/key/einsum/EinsumEinsumadd:z:02attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abde
 attention/key/add/ReadVariableOpReadVariableOp)attention_key_add_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
attention/key/addAddV2$attention/key/einsum/Einsum:output:0(attention/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ І
,attention/value/einsum/Einsum/ReadVariableOpReadVariableOp5attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Ч
attention/value/einsum/EinsumEinsumadd:z:04attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abde
"attention/value/add/ReadVariableOpReadVariableOp+attention_value_add_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
attention/value/addAddV2&attention/value/einsum/Einsum:output:0*attention/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ T
attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>
attention/MulMulattention/query/add:z:0attention/Mul/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџШ Џ
attention/einsum/EinsumEinsumattention/key/add:z:0attention/Mul:z:0*
N*
T0*1
_output_shapes
:џџџџџџџџџШШ*
equationaecd,abcd->acbe
attention/softmax/CastCaststrided_slice:output:0*

DstT0*

SrcT0
*0
_output_shapes
:џџџџџџџџџШ\
attention/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
attention/softmax/subSub attention/softmax/sub/x:output:0attention/softmax/Cast:y:0*
T0*0
_output_shapes
:џџџџџџџџџШ\
attention/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knЮ
attention/softmax/mulMulattention/softmax/sub:z:0 attention/softmax/mul/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџШ
attention/softmax/addAddV2 attention/einsum/Einsum:output:0attention/softmax/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџШШ{
attention/softmax/SoftmaxSoftmaxattention/softmax/add:z:0*
T0*1
_output_shapes
:џџџџџџџџџШШФ
attention/einsum_1/EinsumEinsum#attention/softmax/Softmax:softmax:0attention/value/add:z:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationacbe,aecd->abcdМ
7attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp@attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0є
(attention/attention_output/einsum/EinsumEinsum"attention/einsum_1/Einsum:output:0?attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:џџџџџџџџџШ *
equationabcd,cde->abe 
-attention/attention_output/add/ReadVariableOpReadVariableOp6attention_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype0Ш
attention/attention_output/addAddV21attention/attention_output/einsum/Einsum:output:05attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?
dropout/dropout/MulMul"attention/attention_output/add:z:0dropout/dropout/Const:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ g
dropout/dropout/ShapeShape"attention/attention_output/add:z:0*
T0*
_output_shapes
:Ё
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ *
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>У
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:џџџџџџџџџШ 
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:џџџџџџџџџШ i
add_1AddV2add:z:0dropout/dropout/Mul_1:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ |
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:И
 layer_normalization/moments/meanMean	add_1:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*,
_output_shapes
:џџџџџџџџџШЗ
-layer_normalization/moments/SquaredDifferenceSquaredDifference	add_1:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ш
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75О
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:џџџџџџџџџШІ
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0Т
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
#layer_normalization/batchnorm/mul_1Mul	add_1:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ Г
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0О
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ Г
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0i
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
 sequential/dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:j
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ё
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ї
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : р
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ќ
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Н
$sequential/dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0*sequential/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ Н
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџН
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ l
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: j
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ы
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:З
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0А
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ w
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ \
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?
dropout_1/dropout/MulMul#sequential/dense/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ j
dropout_1/dropout/ShapeShape#sequential/dense/Relu:activations:0*
T0*
_output_shapes
:Ѕ
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ *
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>Щ
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:џџџџџџџџџШ 
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
add_2AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/dropout/Mul_1:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ ~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:М
"layer_normalization_1/moments/meanMean	add_2:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:џџџџџџџџџШЛ
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_2:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ю
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75Ф
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:џџџџџџџџџШЊ
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0Ш
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
%layer_normalization_1/batchnorm/mul_1Mul	add_2:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ Й
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ Ђ
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0Ф
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ Й
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :М
global_average_pooling1d/MeanMean)layer_normalization_1/batchnorm/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ \
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?
dropout_2/dropout/MulMul&global_average_pooling1d/Mean:output:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ m
dropout_2/dropout/ShapeShape&global_average_pooling1d/Mean:output:0*
T0*
_output_shapes
: 
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ *
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>Ф
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ 
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ 
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_1/MatMulMatMuldropout_2/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?
dropout_3/dropout/MulMuldense_1/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџa
dropout_3/dropout/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
: 
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>Ф
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_2/MatMulMatMuldropout_3/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџf
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџЁ
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  o
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Љ
Breview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0В
3review_classifier/dense_1/kernel/Regularizer/SquareSquareJreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 
2review_classifier/dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
0review_classifier/dense_1/kernel/Regularizer/SumSum7review_classifier/dense_1/kernel/Regularizer/Square:y:0;review_classifier/dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: w
2review_classifier/dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<а
0review_classifier/dense_1/kernel/Regularizer/mulMul;review_classifier/dense_1/kernel/Regularizer/mul/x:output:09review_classifier/dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ№
NoOpNoOp.^attention/attention_output/add/ReadVariableOp8^attention/attention_output/einsum/Einsum/ReadVariableOp!^attention/key/add/ReadVariableOp+^attention/key/einsum/Einsum/ReadVariableOp#^attention/query/add/ReadVariableOp-^attention/query/einsum/Einsum/ReadVariableOp#^attention/value/add/ReadVariableOp-^attention/value/einsum/Einsum/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp^p_emb/embedding_lookupC^review_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp^t_emb/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:џџџџџџџџџШ: : : : : : : : : : : : : : : : : : : : 2^
-attention/attention_output/add/ReadVariableOp-attention/attention_output/add/ReadVariableOp2r
7attention/attention_output/einsum/Einsum/ReadVariableOp7attention/attention_output/einsum/Einsum/ReadVariableOp2D
 attention/key/add/ReadVariableOp attention/key/add/ReadVariableOp2X
*attention/key/einsum/Einsum/ReadVariableOp*attention/key/einsum/Einsum/ReadVariableOp2H
"attention/query/add/ReadVariableOp"attention/query/add/ReadVariableOp2\
,attention/query/einsum/Einsum/ReadVariableOp,attention/query/einsum/Einsum/ReadVariableOp2H
"attention/value/add/ReadVariableOp"attention/value/add/ReadVariableOp2\
,attention/value/einsum/Einsum/ReadVariableOp,attention/value/einsum/Einsum/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp20
p_emb/embedding_lookupp_emb/embedding_lookup2
Breview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpBreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp20
t_emb/embedding_lookupt_emb/embedding_lookup:K G
(
_output_shapes
:џџџџџџџџџШ

_user_specified_namex

b
)__inference_dropout_layer_call_fn_7887474

inputs
identityЂStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_7886090t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
р1

F__inference_attention_layer_call_and_return_conditional_losses_7887262	
query	
value
attention_mask
A
+query_einsum_einsum_readvariableop_resource:  3
!query_add_readvariableop_resource: ?
)key_einsum_einsum_readvariableop_resource:  1
key_add_readvariableop_resource: A
+value_einsum_einsum_readvariableop_resource:  3
!value_add_readvariableop_resource: L
6attention_output_einsum_einsum_readvariableop_resource:  :
,attention_output_add_readvariableop_resource: 
identity

identity_1Ђ#attention_output/add/ReadVariableOpЂ-attention_output/einsum/Einsum/ReadVariableOpЂkey/add/ReadVariableOpЂ key/einsum/Einsum/ReadVariableOpЂquery/add/ReadVariableOpЂ"query/einsum/Einsum/ReadVariableOpЂvalue/add/ReadVariableOpЂ"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Б
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ 
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ 
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Б
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџШ 
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:џџџџџџџџџШШ*
equationaecd,abcd->acben
softmax/CastCastattention_mask*

DstT0*

SrcT0
*0
_output_shapes
:џџџџџџџџџШR
softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
softmax/subSubsoftmax/sub/x:output:0softmax/Cast:y:0*
T0*0
_output_shapes
:џџџџџџџџџШR
softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knЮv
softmax/mulMulsoftmax/sub:z:0softmax/mul/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџШy
softmax/addAddV2einsum/Einsum:output:0softmax/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџШШg
softmax/SoftmaxSoftmaxsoftmax/add:z:0*
T0*1
_output_shapes
:џџџџџџџџџШШs
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*1
_output_shapes
:џџџџџџџџџШШІ
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationacbe,aecd->abcdЈ
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0ж
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:џџџџџџџџџШ *
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype0Њ
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ t

Identity_1Identitysoftmax/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџШШи
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:џџџџџџџџџШ :џџџџџџџџџШ :џџџџџџџџџШ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:џџџџџџџџџШ 

_user_specified_namequery:SO
,
_output_shapes
:џџџџџџџџџШ 

_user_specified_namevalue:`\
0
_output_shapes
:џџџџџџџџџШ
(
_user_specified_nameattention_mask
ю

,__inference_sequential_layer_call_fn_7885566
dense_input
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_7885559t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
,
_output_shapes
:џџџџџџџџџШ 
%
_user_specified_namedense_input
є	
e
F__inference_dropout_2_layer_call_and_return_conditional_losses_7886024

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ :O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs


c
D__inference_dropout_layer_call_and_return_conditional_losses_7887491

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>Ћ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:џџџџџџџџџШ n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:џџџџџџџџџШ ^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ :T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
у

+__inference_attention_layer_call_fn_7887194	
query	
value
attention_mask

unknown:  
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
identity

identity_1ЂStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallqueryvalueattention_maskunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:џџџџџџџџџШ :џџџџџџџџџШШ**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_attention_layer_call_and_return_conditional_losses_7885754t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ {

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:џџџџџџџџџШШ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:џџџџџџџџџШ :џџџџџџџџџШ :џџџџџџџџџШ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:џџџџџџџџџШ 

_user_specified_namequery:SO
,
_output_shapes
:џџџџџџџџџШ 

_user_specified_namevalue:`\
0
_output_shapes
:џџџџџџџџџШ
(
_user_specified_nameattention_mask
ю

,__inference_sequential_layer_call_fn_7885618
dense_input
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_7885602t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
,
_output_shapes
:џџџџџџџџџШ 
%
_user_specified_namedense_input
у

+__inference_attention_layer_call_fn_7887219	
query	
value
attention_mask

unknown:  
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
identity

identity_1ЂStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallqueryvalueattention_maskunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:џџџџџџџџџШ :џџџџџџџџџШШ**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_attention_layer_call_and_return_conditional_losses_7886165t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ {

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:џџџџџџџџџШШ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:џџџџџџџџџШ :џџџџџџџџџШ :џџџџџџџџџШ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:џџџџџџџџџШ 

_user_specified_namequery:SO
,
_output_shapes
:џџџџџџџџџШ 

_user_specified_namevalue:`\
0
_output_shapes
:џџџџџџџџџШ
(
_user_specified_nameattention_mask
­
К
D__inference_dense_1_layer_call_and_return_conditional_losses_7887582

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂBreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџЁ
Breview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0В
3review_classifier/dense_1/kernel/Regularizer/SquareSquareJreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 
2review_classifier/dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
0review_classifier/dense_1/kernel/Regularizer/SumSum7review_classifier/dense_1/kernel/Regularizer/Square:y:0;review_classifier/dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: w
2review_classifier/dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<а
0review_classifier/dense_1/kernel/Regularizer/mulMul;review_classifier/dense_1/kernel/Regularizer/mul/x:output:09review_classifier/dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџМ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOpC^review_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2
Breview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpBreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
э

5__inference_layer_normalization_layer_call_fn_7887411

inputs
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_layer_normalization_layer_call_and_return_conditional_losses_7885803t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs

њ
G__inference_sequential_layer_call_and_return_conditional_losses_7885633
dense_input
dense_7885621:  
dense_7885623: 
identityЂdense/StatefulPartitionedCallЂ.dense/kernel/Regularizer/Square/ReadVariableOpє
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_7885621dense_7885623*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_7885546|
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_7885621*
_output_shapes

:  *
dtype0
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  o
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: z
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ 
NoOpNoOp^dense/StatefulPartitionedCall/^dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp:Y U
,
_output_shapes
:џџџџџџџџџШ 
%
_user_specified_namedense_input
ы
b
D__inference_dropout_layer_call_and_return_conditional_losses_7885778

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџШ `

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ :T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
Йe

N__inference_review_classifier_layer_call_and_return_conditional_losses_7886338
x 
p_emb_7886266:	Ш !
t_emb_7886269:
  '
attention_7886275:  #
attention_7886277: '
attention_7886279:  #
attention_7886281: '
attention_7886283:  #
attention_7886285: '
attention_7886287:  
attention_7886289: )
layer_normalization_7886295: )
layer_normalization_7886297: $
sequential_7886300:   
sequential_7886302: +
layer_normalization_1_7886307: +
layer_normalization_1_7886309: !
dense_1_7886314: 
dense_1_7886316:!
dense_2_7886320:
dense_2_7886322:
identityЂ!attention/StatefulPartitionedCallЂ.dense/kernel/Regularizer/Square/ReadVariableOpЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdropout/StatefulPartitionedCallЂ!dropout_1/StatefulPartitionedCallЂ!dropout_2/StatefulPartitionedCallЂ!dropout_3/StatefulPartitionedCallЂ+layer_normalization/StatefulPartitionedCallЂ-layer_normalization_1/StatefulPartitionedCallЂp_emb/StatefulPartitionedCallЂBreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpЂ"sequential/StatefulPartitionedCallЂt_emb/StatefulPartitionedCallL

NotEqual/yConst*
_output_shapes
: *
dtype0*
value	B : _
NotEqualNotEqualxNotEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШl
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_sliceStridedSliceNotEqual:z:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0
*0
_output_shapes
:џџџџџџџџџШ*

begin_mask	*
end_mask	*
new_axis_mask6
ShapeShapex*
T0*
_output_shapes
:h
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :q
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*
_output_shapes	
:Шй
p_emb/StatefulPartitionedCallStatefulPartitionedCallrange:output:0p_emb_7886266*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	Ш *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_p_emb_layer_call_and_return_conditional_losses_7885691й
t_emb/StatefulPartitionedCallStatefulPartitionedCallxt_emb_7886269*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_t_emb_layer_call_and_return_conditional_losses_7885704R
t_emb/NotEqual/yConst*
_output_shapes
: *
dtype0*
value	B : k
t_emb/NotEqualNotEqualxt_emb/NotEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
addAddV2&t_emb/StatefulPartitionedCall:output:0&p_emb/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ П
!attention/StatefulPartitionedCallStatefulPartitionedCalladd:z:0add:z:0strided_slice:output:0attention_7886275attention_7886277attention_7886279attention_7886281attention_7886283attention_7886285attention_7886287attention_7886289*
Tin
2
*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:џџџџџџџџџШ :џџџџџџџџџШШ**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_attention_layer_call_and_return_conditional_losses_7886165ѓ
dropout/StatefulPartitionedCallStatefulPartitionedCall*attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_7886090x
add_1AddV2add:z:0(dropout/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ Њ
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCall	add_1:z:0layer_normalization_7886295layer_normalization_7886297*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_layer_normalization_layer_call_and_return_conditional_losses_7885803Б
"sequential/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0sequential_7886300sequential_7886302*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_7885602
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_7886057Ї
add_2AddV24layer_normalization/StatefulPartitionedCall:output:0*dropout_1/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ В
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall	add_2:z:0layer_normalization_1_7886307layer_normalization_1_7886309*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7885844
(global_average_pooling1d/PartitionedCallPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_7885658
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_7886024
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_1_7886314dense_1_7886316*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_7885875
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_3_layer_call_and_return_conditional_losses_7885991
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_2_7886320dense_2_7886322*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_7885899
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_7886300*
_output_shapes

:  *
dtype0
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  o
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
Breview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_7886314*
_output_shapes

: *
dtype0В
3review_classifier/dense_1/kernel/Regularizer/SquareSquareJreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 
2review_classifier/dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
0review_classifier/dense_1/kernel/Regularizer/SumSum7review_classifier/dense_1/kernel/Regularizer/Square:y:0;review_classifier/dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: w
2review_classifier/dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<а
0review_classifier/dense_1/kernel/Regularizer/mulMul;review_classifier/dense_1/kernel/Regularizer/mul/x:output:09review_classifier/dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџѕ
NoOpNoOp"^attention/StatefulPartitionedCall/^dense/kernel/Regularizer/Square/ReadVariableOp ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall^p_emb/StatefulPartitionedCallC^review_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp#^sequential/StatefulPartitionedCall^t_emb/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:џџџџџџџџџШ: : : : : : : : : : : : : : : : : : : : 2F
!attention/StatefulPartitionedCall!attention/StatefulPartitionedCall2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2>
p_emb/StatefulPartitionedCallp_emb/StatefulPartitionedCall2
Breview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpBreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2>
t_emb/StatefulPartitionedCallt_emb/StatefulPartitionedCall:K G
(
_output_shapes
:џџџџџџџџџШ

_user_specified_namex
Є
G
+__inference_dropout_2_layer_call_fn_7887534

inputs
identityД
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_7885856`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ :O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
§

P__inference_layer_normalization_layer_call_and_return_conditional_losses_7885803

inputs3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identityЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ќ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџШb
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ 
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
џ
ѕ
G__inference_sequential_layer_call_and_return_conditional_losses_7885602

inputs
dense_7885590:  
dense_7885592: 
identityЂdense/StatefulPartitionedCallЂ.dense/kernel/Regularizer/Square/ReadVariableOpя
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_7885590dense_7885592*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_7885546|
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_7885590*
_output_shapes

:  *
dtype0
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  o
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: z
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ 
NoOpNoOp^dense/StatefulPartitionedCall/^dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
Д
E
)__inference_dropout_layer_call_fn_7887469

inputs
identityЗ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_7885778e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ :T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
й
d
F__inference_dropout_3_layer_call_and_return_conditional_losses_7885886

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
п

,__inference_sequential_layer_call_fn_7887328

inputs
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_7885602t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs

V
:__inference_global_average_pooling1d_layer_call_fn_7887523

inputs
identityЬ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_7885658i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ы0

F__inference_attention_layer_call_and_return_conditional_losses_7886165	
query	
value
attention_mask
A
+query_einsum_einsum_readvariableop_resource:  3
!query_add_readvariableop_resource: ?
)key_einsum_einsum_readvariableop_resource:  1
key_add_readvariableop_resource: A
+value_einsum_einsum_readvariableop_resource:  3
!value_add_readvariableop_resource: L
6attention_output_einsum_einsum_readvariableop_resource:  :
,attention_output_add_readvariableop_resource: 
identity

identity_1Ђ#attention_output/add/ReadVariableOpЂ-attention_output/einsum/Einsum/ReadVariableOpЂkey/add/ReadVariableOpЂ key/einsum/Einsum/ReadVariableOpЂquery/add/ReadVariableOpЂ"query/einsum/Einsum/ReadVariableOpЂvalue/add/ReadVariableOpЂ"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Б
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ 
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ 
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Б
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџШ 
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:џџџџџџџџџШШ*
equationaecd,abcd->acben
softmax/CastCastattention_mask*

DstT0*

SrcT0
*0
_output_shapes
:џџџџџџџџџШR
softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
softmax/subSubsoftmax/sub/x:output:0softmax/Cast:y:0*
T0*0
_output_shapes
:џџџџџџџџџШR
softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knЮv
softmax/mulMulsoftmax/sub:z:0softmax/mul/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџШy
softmax/addAddV2einsum/Einsum:output:0softmax/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџШШg
softmax/SoftmaxSoftmaxsoftmax/add:z:0*
T0*1
_output_shapes
:џџџџџџџџџШШІ
einsum_1/EinsumEinsumsoftmax/Softmax:softmax:0value/add:z:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationacbe,aecd->abcdЈ
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0ж
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:џџџџџџџџџШ *
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype0Њ
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ t

Identity_1Identitysoftmax/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџШШи
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:џџџџџџџџџШ :џџџџџџџџџШ :џџџџџџџџџШ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:џџџџџџџџџШ 

_user_specified_namequery:SO
,
_output_shapes
:џџџџџџџџџШ 

_user_specified_namevalue:`\
0
_output_shapes
:џџџџџџџџџШ
(
_user_specified_nameattention_mask
є	
e
F__inference_dropout_3_layer_call_and_return_conditional_losses_7887609

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Ё
B__inference_p_emb_layer_call_and_return_conditional_losses_7887169

inputs+
embedding_lookup_7887163:	Ш 
identityЂembedding_lookupЏ
embedding_lookupResourceGatherembedding_lookup_7887163inputs*
Tindices0*+
_class!
loc:@embedding_lookup/7887163*
_output_shapes
:	Ш *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/7887163*
_output_shapes
:	Ш u
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	Ш k
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*
_output_shapes
:	Ш Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:Ш: 2$
embedding_lookupembedding_lookup:C ?

_output_shapes	
:Ш
 
_user_specified_nameinputs
џ

R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7887464

inputs3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identityЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ќ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџШb
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ 
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
§

P__inference_layer_normalization_layer_call_and_return_conditional_losses_7887433

inputs3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identityЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ќ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџШb
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ 
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
І
}
'__inference_t_emb_layer_call_fn_7887144

inputs
unknown:
  
identityЂStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_t_emb_layer_call_and_return_conditional_losses_7885704t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:џџџџџџџџџШ: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
є	
e
F__inference_dropout_2_layer_call_and_return_conditional_losses_7887556

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:џџџџџџџџџ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ :O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
л_


N__inference_review_classifier_layer_call_and_return_conditional_losses_7886515
input_1 
p_emb_7886443:	Ш !
t_emb_7886446:
  '
attention_7886452:  #
attention_7886454: '
attention_7886456:  #
attention_7886458: '
attention_7886460:  #
attention_7886462: '
attention_7886464:  
attention_7886466: )
layer_normalization_7886472: )
layer_normalization_7886474: $
sequential_7886477:   
sequential_7886479: +
layer_normalization_1_7886484: +
layer_normalization_1_7886486: !
dense_1_7886491: 
dense_1_7886493:!
dense_2_7886497:
dense_2_7886499:
identityЂ!attention/StatefulPartitionedCallЂ.dense/kernel/Regularizer/Square/ReadVariableOpЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂ+layer_normalization/StatefulPartitionedCallЂ-layer_normalization_1/StatefulPartitionedCallЂp_emb/StatefulPartitionedCallЂBreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpЂ"sequential/StatefulPartitionedCallЂt_emb/StatefulPartitionedCallL

NotEqual/yConst*
_output_shapes
: *
dtype0*
value	B : e
NotEqualNotEqualinput_1NotEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШl
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_sliceStridedSliceNotEqual:z:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0
*0
_output_shapes
:џџџџџџџџџШ*

begin_mask	*
end_mask	*
new_axis_mask<
ShapeShapeinput_1*
T0*
_output_shapes
:h
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :q
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*
_output_shapes	
:Шй
p_emb/StatefulPartitionedCallStatefulPartitionedCallrange:output:0p_emb_7886443*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	Ш *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_p_emb_layer_call_and_return_conditional_losses_7885691п
t_emb/StatefulPartitionedCallStatefulPartitionedCallinput_1t_emb_7886446*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_t_emb_layer_call_and_return_conditional_losses_7885704R
t_emb/NotEqual/yConst*
_output_shapes
: *
dtype0*
value	B : q
t_emb/NotEqualNotEqualinput_1t_emb/NotEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
addAddV2&t_emb/StatefulPartitionedCall:output:0&p_emb/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ П
!attention/StatefulPartitionedCallStatefulPartitionedCalladd:z:0add:z:0strided_slice:output:0attention_7886452attention_7886454attention_7886456attention_7886458attention_7886460attention_7886462attention_7886464attention_7886466*
Tin
2
*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:џџџџџџџџџШ :џџџџџџџџџШШ**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_attention_layer_call_and_return_conditional_losses_7885754у
dropout/PartitionedCallPartitionedCall*attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_7885778p
add_1AddV2add:z:0 dropout/PartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ Њ
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCall	add_1:z:0layer_normalization_7886472layer_normalization_7886474*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_layer_normalization_layer_call_and_return_conditional_losses_7885803Б
"sequential/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0sequential_7886477sequential_7886479*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_7885559ш
dropout_1/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_7885819
add_2AddV24layer_normalization/StatefulPartitionedCall:output:0"dropout_1/PartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ В
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall	add_2:z:0layer_normalization_1_7886484layer_normalization_1_7886486*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7885844
(global_average_pooling1d/PartitionedCallPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_7885658щ
dropout_2/PartitionedCallPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_7885856
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_1_7886491dense_1_7886493*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_7885875р
dropout_3/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_3_layer_call_and_return_conditional_losses_7885886
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_2_7886497dense_2_7886499*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_7885899
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_7886477*
_output_shapes

:  *
dtype0
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  o
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
Breview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_7886491*
_output_shapes

: *
dtype0В
3review_classifier/dense_1/kernel/Regularizer/SquareSquareJreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 
2review_classifier/dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
0review_classifier/dense_1/kernel/Regularizer/SumSum7review_classifier/dense_1/kernel/Regularizer/Square:y:0;review_classifier/dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: w
2review_classifier/dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<а
0review_classifier/dense_1/kernel/Regularizer/mulMul;review_classifier/dense_1/kernel/Regularizer/mul/x:output:09review_classifier/dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџч
NoOpNoOp"^attention/StatefulPartitionedCall/^dense/kernel/Regularizer/Square/ReadVariableOp ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall^p_emb/StatefulPartitionedCallC^review_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp#^sequential/StatefulPartitionedCall^t_emb/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:џџџџџџџџџШ: : : : : : : : : : : : : : : : : : : : 2F
!attention/StatefulPartitionedCall!attention/StatefulPartitionedCall2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2>
p_emb/StatefulPartitionedCallp_emb/StatefulPartitionedCall2
Breview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpBreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2>
t_emb/StatefulPartitionedCallt_emb/StatefulPartitionedCall:Q M
(
_output_shapes
:џџџџџџџџџШ
!
_user_specified_name	input_1
э
Ѕ
3__inference_review_classifier_layer_call_fn_7886759
x
unknown:	Ш 
	unknown_0:
  
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:  

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16:

unknown_17:

unknown_18:
identityЂStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_review_classifier_layer_call_and_return_conditional_losses_7886338o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:џџџџџџџџџШ: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
(
_output_shapes
:џџџџџџџџџШ

_user_specified_namex
 

ѕ
D__inference_dense_2_layer_call_and_return_conditional_losses_7887629

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
й
d
F__inference_dropout_3_layer_call_and_return_conditional_losses_7887597

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
е

'__inference_dense_layer_call_fn_7887638

inputs
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_7885546t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs

Ё
B__inference_p_emb_layer_call_and_return_conditional_losses_7885691

inputs+
embedding_lookup_7885685:	Ш 
identityЂembedding_lookupЏ
embedding_lookupResourceGatherembedding_lookup_7885685inputs*
Tindices0*+
_class!
loc:@embedding_lookup/7885685*
_output_shapes
:	Ш *
dtype0
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/7885685*
_output_shapes
:	Ш u
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	Ш k
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*
_output_shapes
:	Ш Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
	:Ш: 2$
embedding_lookupembedding_lookup:C ?

_output_shapes	
:Ш
 
_user_specified_nameinputs
Х

%__inference_signature_wrapper_7886669
input_1
unknown:	Ш 
	unknown_0:
  
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:  

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16:

unknown_17:

unknown_18:
identityЂStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_7885502o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:џџџџџџџџџШ: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:џџџџџџџџџШ
!
_user_specified_name	input_1
%
Њ
B__inference_dense_layer_call_and_return_conditional_losses_7885546

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂTensordot/ReadVariableOpЂ.dense/kernel/Regularizer/Square/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Л
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : П
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
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
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ї
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  o
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ Ћ
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
б
Ђ
B__inference_t_emb_layer_call_and_return_conditional_losses_7885704

inputs,
embedding_lookup_7885698:
  
identityЂembedding_lookupМ
embedding_lookupResourceGatherembedding_lookup_7885698inputs*
Tindices0*+
_class!
loc:@embedding_lookup/7885698*,
_output_shapes
:џџџџџџџџџШ *
dtype0Є
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/7885698*,
_output_shapes
:џџџџџџџџџШ 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:џџџџџџџџџШ: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs

Ќ
__inference_loss_fn_1_7887686I
7dense_kernel_regularizer_square_readvariableop_resource:  
identityЂ.dense/kernel/Regularizer/Square/ReadVariableOpІ
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp7dense_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:  *
dtype0
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  o
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ^
IdentityIdentity dense/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: w
NoOpNoOp/^dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp
й
d
F__inference_dropout_2_layer_call_and_return_conditional_losses_7885856

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ :O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ы
b
D__inference_dropout_layer_call_and_return_conditional_losses_7887479

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:џџџџџџџџџШ `

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ :T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
яа
П
N__inference_review_classifier_layer_call_and_return_conditional_losses_7886923
x1
p_emb_embedding_lookup_7886776:	Ш 2
t_emb_embedding_lookup_7886781:
  K
5attention_query_einsum_einsum_readvariableop_resource:  =
+attention_query_add_readvariableop_resource: I
3attention_key_einsum_einsum_readvariableop_resource:  ;
)attention_key_add_readvariableop_resource: K
5attention_value_einsum_einsum_readvariableop_resource:  =
+attention_value_add_readvariableop_resource: V
@attention_attention_output_einsum_einsum_readvariableop_resource:  D
6attention_attention_output_add_readvariableop_resource: G
9layer_normalization_batchnorm_mul_readvariableop_resource: C
5layer_normalization_batchnorm_readvariableop_resource: D
2sequential_dense_tensordot_readvariableop_resource:  >
0sequential_dense_biasadd_readvariableop_resource: I
;layer_normalization_1_batchnorm_mul_readvariableop_resource: E
7layer_normalization_1_batchnorm_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:
identityЂ-attention/attention_output/add/ReadVariableOpЂ7attention/attention_output/einsum/Einsum/ReadVariableOpЂ attention/key/add/ReadVariableOpЂ*attention/key/einsum/Einsum/ReadVariableOpЂ"attention/query/add/ReadVariableOpЂ,attention/query/einsum/Einsum/ReadVariableOpЂ"attention/value/add/ReadVariableOpЂ,attention/value/einsum/Einsum/ReadVariableOpЂ.dense/kernel/Regularizer/Square/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂ,layer_normalization/batchnorm/ReadVariableOpЂ0layer_normalization/batchnorm/mul/ReadVariableOpЂ.layer_normalization_1/batchnorm/ReadVariableOpЂ2layer_normalization_1/batchnorm/mul/ReadVariableOpЂp_emb/embedding_lookupЂBreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpЂ'sequential/dense/BiasAdd/ReadVariableOpЂ)sequential/dense/Tensordot/ReadVariableOpЂt_emb/embedding_lookupL

NotEqual/yConst*
_output_shapes
: *
dtype0*
value	B : _
NotEqualNotEqualxNotEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШl
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_sliceStridedSliceNotEqual:z:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0
*0
_output_shapes
:џџџџџџџџџШ*

begin_mask	*
end_mask	*
new_axis_mask6
ShapeShapex*
T0*
_output_shapes
:h
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :q
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*
_output_shapes	
:ШЩ
p_emb/embedding_lookupResourceGatherp_emb_embedding_lookup_7886776range:output:0*
Tindices0*1
_class'
%#loc:@p_emb/embedding_lookup/7886776*
_output_shapes
:	Ш *
dtype0Љ
p_emb/embedding_lookup/IdentityIdentityp_emb/embedding_lookup:output:0*
T0*1
_class'
%#loc:@p_emb/embedding_lookup/7886776*
_output_shapes
:	Ш 
!p_emb/embedding_lookup/Identity_1Identity(p_emb/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	Ш Щ
t_emb/embedding_lookupResourceGathert_emb_embedding_lookup_7886781x*
Tindices0*1
_class'
%#loc:@t_emb/embedding_lookup/7886781*,
_output_shapes
:џџџџџџџџџШ *
dtype0Ж
t_emb/embedding_lookup/IdentityIdentityt_emb/embedding_lookup:output:0*
T0*1
_class'
%#loc:@t_emb/embedding_lookup/7886781*,
_output_shapes
:џџџџџџџџџШ 
!t_emb/embedding_lookup/Identity_1Identity(t_emb/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ R
t_emb/NotEqual/yConst*
_output_shapes
: *
dtype0*
value	B : k
t_emb/NotEqualNotEqualxt_emb/NotEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
addAddV2*t_emb/embedding_lookup/Identity_1:output:0*p_emb/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ І
,attention/query/einsum/Einsum/ReadVariableOpReadVariableOp5attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Ч
attention/query/einsum/EinsumEinsumadd:z:04attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abde
"attention/query/add/ReadVariableOpReadVariableOp+attention_query_add_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
attention/query/addAddV2&attention/query/einsum/Einsum:output:0*attention/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ Ђ
*attention/key/einsum/Einsum/ReadVariableOpReadVariableOp3attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0У
attention/key/einsum/EinsumEinsumadd:z:02attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abde
 attention/key/add/ReadVariableOpReadVariableOp)attention_key_add_readvariableop_resource*
_output_shapes

: *
dtype0Ѕ
attention/key/addAddV2$attention/key/einsum/Einsum:output:0(attention/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ І
,attention/value/einsum/Einsum/ReadVariableOpReadVariableOp5attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Ч
attention/value/einsum/EinsumEinsumadd:z:04attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abde
"attention/value/add/ReadVariableOpReadVariableOp+attention_value_add_readvariableop_resource*
_output_shapes

: *
dtype0Ћ
attention/value/addAddV2&attention/value/einsum/Einsum:output:0*attention/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ T
attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>
attention/MulMulattention/query/add:z:0attention/Mul/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџШ Џ
attention/einsum/EinsumEinsumattention/key/add:z:0attention/Mul:z:0*
N*
T0*1
_output_shapes
:џџџџџџџџџШШ*
equationaecd,abcd->acbe
attention/softmax/CastCaststrided_slice:output:0*

DstT0*

SrcT0
*0
_output_shapes
:џџџџџџџџџШ\
attention/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
attention/softmax/subSub attention/softmax/sub/x:output:0attention/softmax/Cast:y:0*
T0*0
_output_shapes
:џџџџџџџџџШ\
attention/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knЮ
attention/softmax/mulMulattention/softmax/sub:z:0 attention/softmax/mul/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџШ
attention/softmax/addAddV2 attention/einsum/Einsum:output:0attention/softmax/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџШШ{
attention/softmax/SoftmaxSoftmaxattention/softmax/add:z:0*
T0*1
_output_shapes
:џџџџџџџџџШШ
attention/dropout/IdentityIdentity#attention/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:џџџџџџџџџШШФ
attention/einsum_1/EinsumEinsum#attention/dropout/Identity:output:0attention/value/add:z:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationacbe,aecd->abcdМ
7attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp@attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0є
(attention/attention_output/einsum/EinsumEinsum"attention/einsum_1/Einsum:output:0?attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:џџџџџџџџџШ *
equationabcd,cde->abe 
-attention/attention_output/add/ReadVariableOpReadVariableOp6attention_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype0Ш
attention/attention_output/addAddV21attention/attention_output/einsum/Einsum:output:05attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ w
dropout/IdentityIdentity"attention/attention_output/add:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ i
add_1AddV2add:z:0dropout/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ |
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:И
 layer_normalization/moments/meanMean	add_1:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*,
_output_shapes
:џџџџџџџџџШЗ
-layer_normalization/moments/SquaredDifferenceSquaredDifference	add_1:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ш
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75О
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:џџџџџџџџџШІ
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0Т
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
#layer_normalization/batchnorm/mul_1Mul	add_1:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ Г
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0О
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ Г
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0i
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
 sequential/dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:j
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : џ
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ё
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ї
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : р
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ќ
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Н
$sequential/dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0*sequential/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ Н
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџН
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ l
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: j
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ы
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:З
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0А
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ w
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ z
dropout_1/IdentityIdentity#sequential/dense/Relu:activations:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
add_2AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ ~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:М
"layer_normalization_1/moments/meanMean	add_2:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:џџџџџџџџџШЛ
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_2:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ю
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75Ф
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:џџџџџџџџџШЊ
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0Ш
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
%layer_normalization_1/batchnorm/mul_1Mul	add_2:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ Й
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ Ђ
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0Ф
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ Й
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :М
global_average_pooling1d/MeanMean)layer_normalization_1/batchnorm/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ x
dropout_2/IdentityIdentity&global_average_pooling1d/Mean:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_1/MatMulMatMuldropout_2/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџl
dropout_3/IdentityIdentitydense_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_2/MatMulMatMuldropout_3/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџf
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџЁ
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  o
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Љ
Breview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0В
3review_classifier/dense_1/kernel/Regularizer/SquareSquareJreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 
2review_classifier/dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
0review_classifier/dense_1/kernel/Regularizer/SumSum7review_classifier/dense_1/kernel/Regularizer/Square:y:0;review_classifier/dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: w
2review_classifier/dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<а
0review_classifier/dense_1/kernel/Regularizer/mulMul;review_classifier/dense_1/kernel/Regularizer/mul/x:output:09review_classifier/dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ№
NoOpNoOp.^attention/attention_output/add/ReadVariableOp8^attention/attention_output/einsum/Einsum/ReadVariableOp!^attention/key/add/ReadVariableOp+^attention/key/einsum/Einsum/ReadVariableOp#^attention/query/add/ReadVariableOp-^attention/query/einsum/Einsum/ReadVariableOp#^attention/value/add/ReadVariableOp-^attention/value/einsum/Einsum/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp^p_emb/embedding_lookupC^review_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp^t_emb/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:џџџџџџџџџШ: : : : : : : : : : : : : : : : : : : : 2^
-attention/attention_output/add/ReadVariableOp-attention/attention_output/add/ReadVariableOp2r
7attention/attention_output/einsum/Einsum/ReadVariableOp7attention/attention_output/einsum/Einsum/ReadVariableOp2D
 attention/key/add/ReadVariableOp attention/key/add/ReadVariableOp2X
*attention/key/einsum/Einsum/ReadVariableOp*attention/key/einsum/Einsum/ReadVariableOp2H
"attention/query/add/ReadVariableOp"attention/query/add/ReadVariableOp2\
,attention/query/einsum/Einsum/ReadVariableOp,attention/query/einsum/Einsum/ReadVariableOp2H
"attention/value/add/ReadVariableOp"attention/value/add/ReadVariableOp2\
,attention/value/einsum/Einsum/ReadVariableOp,attention/value/einsum/Einsum/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp20
p_emb/embedding_lookupp_emb/embedding_lookup2
Breview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpBreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp20
t_emb/embedding_lookupt_emb/embedding_lookup:K G
(
_output_shapes
:џџџџџџџџџШ

_user_specified_namex
Ќ(
Ч
G__inference_sequential_layer_call_and_return_conditional_losses_7887365

inputs9
'dense_tensordot_readvariableop_resource:  3
%dense_biasadd_readvariableop_resource: 
identityЂdense/BiasAdd/ReadVariableOpЂdense/Tensordot/ReadVariableOpЂ.dense/kernel/Regularizer/Square/ReadVariableOp
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       K
dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/transpose	Transposeinputsdense/Tensordot/concat:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: _
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : П
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ a

dense/ReluReludense/BiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  o
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: l
IdentityIdentitydense/Relu:activations:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ З
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs


e
F__inference_dropout_1_layer_call_and_return_conditional_losses_7886057

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>Ћ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:џџџџџџџџџШ n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:џџџџџџџџџШ ^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ :T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
нe

N__inference_review_classifier_layer_call_and_return_conditional_losses_7886604
input_1 
p_emb_7886532:	Ш !
t_emb_7886535:
  '
attention_7886541:  #
attention_7886543: '
attention_7886545:  #
attention_7886547: '
attention_7886549:  #
attention_7886551: '
attention_7886553:  
attention_7886555: )
layer_normalization_7886561: )
layer_normalization_7886563: $
sequential_7886566:   
sequential_7886568: +
layer_normalization_1_7886573: +
layer_normalization_1_7886575: !
dense_1_7886580: 
dense_1_7886582:!
dense_2_7886586:
dense_2_7886588:
identityЂ!attention/StatefulPartitionedCallЂ.dense/kernel/Regularizer/Square/ReadVariableOpЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdropout/StatefulPartitionedCallЂ!dropout_1/StatefulPartitionedCallЂ!dropout_2/StatefulPartitionedCallЂ!dropout_3/StatefulPartitionedCallЂ+layer_normalization/StatefulPartitionedCallЂ-layer_normalization_1/StatefulPartitionedCallЂp_emb/StatefulPartitionedCallЂBreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpЂ"sequential/StatefulPartitionedCallЂt_emb/StatefulPartitionedCallL

NotEqual/yConst*
_output_shapes
: *
dtype0*
value	B : e
NotEqualNotEqualinput_1NotEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШl
strided_slice/stackConst*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                n
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            
strided_sliceStridedSliceNotEqual:z:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0
*0
_output_shapes
:џџџџџџџџџШ*

begin_mask	*
end_mask	*
new_axis_mask<
ShapeShapeinput_1*
T0*
_output_shapes
:h
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :q
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*
_output_shapes	
:Шй
p_emb/StatefulPartitionedCallStatefulPartitionedCallrange:output:0p_emb_7886532*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	Ш *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_p_emb_layer_call_and_return_conditional_losses_7885691п
t_emb/StatefulPartitionedCallStatefulPartitionedCallinput_1t_emb_7886535*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_t_emb_layer_call_and_return_conditional_losses_7885704R
t_emb/NotEqual/yConst*
_output_shapes
: *
dtype0*
value	B : q
t_emb/NotEqualNotEqualinput_1t_emb/NotEqual/y:output:0*
T0*(
_output_shapes
:џџџџџџџџџШ
addAddV2&t_emb/StatefulPartitionedCall:output:0&p_emb/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ П
!attention/StatefulPartitionedCallStatefulPartitionedCalladd:z:0add:z:0strided_slice:output:0attention_7886541attention_7886543attention_7886545attention_7886547attention_7886549attention_7886551attention_7886553attention_7886555*
Tin
2
*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:џџџџџџџџџШ :џџџџџџџџџШШ**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_attention_layer_call_and_return_conditional_losses_7886165ѓ
dropout/StatefulPartitionedCallStatefulPartitionedCall*attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_7886090x
add_1AddV2add:z:0(dropout/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ Њ
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCall	add_1:z:0layer_normalization_7886561layer_normalization_7886563*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_layer_normalization_layer_call_and_return_conditional_losses_7885803Б
"sequential/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0sequential_7886566sequential_7886568*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_7885602
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_7886057Ї
add_2AddV24layer_normalization/StatefulPartitionedCall:output:0*dropout_1/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ В
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall	add_2:z:0layer_normalization_1_7886573layer_normalization_1_7886575*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7885844
(global_average_pooling1d/PartitionedCallPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_7885658
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_7886024
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_1_7886580dense_1_7886582*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_7885875
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_3_layer_call_and_return_conditional_losses_7885991
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_2_7886586dense_2_7886588*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_7885899
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_7886566*
_output_shapes

:  *
dtype0
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  o
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
Breview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_1_7886580*
_output_shapes

: *
dtype0В
3review_classifier/dense_1/kernel/Regularizer/SquareSquareJreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 
2review_classifier/dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
0review_classifier/dense_1/kernel/Regularizer/SumSum7review_classifier/dense_1/kernel/Regularizer/Square:y:0;review_classifier/dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: w
2review_classifier/dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<а
0review_classifier/dense_1/kernel/Regularizer/mulMul;review_classifier/dense_1/kernel/Regularizer/mul/x:output:09review_classifier/dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџѕ
NoOpNoOp"^attention/StatefulPartitionedCall/^dense/kernel/Regularizer/Square/ReadVariableOp ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall^p_emb/StatefulPartitionedCallC^review_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp#^sequential/StatefulPartitionedCall^t_emb/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:џџџџџџџџџШ: : : : : : : : : : : : : : : : : : : : 2F
!attention/StatefulPartitionedCall!attention/StatefulPartitionedCall2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2>
p_emb/StatefulPartitionedCallp_emb/StatefulPartitionedCall2
Breview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpBreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2>
t_emb/StatefulPartitionedCallt_emb/StatefulPartitionedCall:Q M
(
_output_shapes
:џџџџџџџџџШ
!
_user_specified_name	input_1
Є
G
+__inference_dropout_3_layer_call_fn_7887587

inputs
identityД
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_3_layer_call_and_return_conditional_losses_7885886`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

q
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_7885658

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
 

ѕ
D__inference_dense_2_layer_call_and_return_conditional_losses_7885899

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
э
д
__inference_loss_fn_0_7887137]
Kreview_classifier_dense_1_kernel_regularizer_square_readvariableop_resource: 
identityЂBreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpЮ
Breview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpKreview_classifier_dense_1_kernel_regularizer_square_readvariableop_resource*
_output_shapes

: *
dtype0В
3review_classifier/dense_1/kernel/Regularizer/SquareSquareJreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 
2review_classifier/dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
0review_classifier/dense_1/kernel/Regularizer/SumSum7review_classifier/dense_1/kernel/Regularizer/Square:y:0;review_classifier/dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: w
2review_classifier/dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<а
0review_classifier/dense_1/kernel/Regularizer/mulMul;review_classifier/dense_1/kernel/Regularizer/mul/x:output:09review_classifier/dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: r
IdentityIdentity4review_classifier/dense_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOpC^review_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
Breview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpBreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp
џ

R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7885844

inputs3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identityЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ќ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџШb
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ 
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
И
G
+__inference_dropout_1_layer_call_fn_7887496

inputs
identityЙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_7885819e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ :T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
п

,__inference_sequential_layer_call_fn_7887319

inputs
unknown:  
	unknown_0: 
identityЂStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_7885559t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
і
d
+__inference_dropout_3_layer_call_fn_7887592

inputs
identityЂStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_3_layer_call_and_return_conditional_losses_7885991o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ќ(
Ч
G__inference_sequential_layer_call_and_return_conditional_losses_7887402

inputs9
'dense_tensordot_readvariableop_resource:  3
%dense_biasadd_readvariableop_resource: 
identityЂdense/BiasAdd/ReadVariableOpЂdense/Tensordot/ReadVariableOpЂ.dense/kernel/Regularizer/Square/ReadVariableOp
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       K
dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Д
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/transpose	Transposeinputsdense/Tensordot/concat:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: _
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : П
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ a

dense/ReluReludense/BiasAdd:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ 
.dense/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0
dense/kernel/Regularizer/SquareSquare6dense/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  o
dense/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense/kernel/Regularizer/SumSum#dense/kernel/Regularizer/Square:y:0'dense/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
dense/kernel/Regularizer/mulMul'dense/kernel/Regularizer/mul/x:output:0%dense/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: l
IdentityIdentitydense/Relu:activations:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ З
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp/^dense/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2`
.dense/kernel/Regularizer/Square/ReadVariableOp.dense/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
б
Ђ
B__inference_t_emb_layer_call_and_return_conditional_losses_7887153

inputs,
embedding_lookup_7887147:
  
identityЂembedding_lookupМ
embedding_lookupResourceGatherembedding_lookup_7887147inputs*
Tindices0*+
_class!
loc:@embedding_lookup/7887147*,
_output_shapes
:џџџџџџџџџШ *
dtype0Є
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/7887147*,
_output_shapes
:џџџџџџџџџШ 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:џџџџџџџџџШ: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:џџџџџџџџџШ
 
_user_specified_nameinputs
­
К
D__inference_dense_1_layer_call_and_return_conditional_losses_7885875

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂBreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџЁ
Breview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0В
3review_classifier/dense_1/kernel/Regularizer/SquareSquareJreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 
2review_classifier/dense_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
0review_classifier/dense_1/kernel/Regularizer/SumSum7review_classifier/dense_1/kernel/Regularizer/Square:y:0;review_classifier/dense_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: w
2review_classifier/dense_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<а
0review_classifier/dense_1/kernel/Regularizer/mulMul;review_classifier/dense_1/kernel/Regularizer/mul/x:output:09review_classifier/dense_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџМ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOpC^review_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2
Breview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOpBreview_classifier/dense_1/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
і
d
+__inference_dropout_2_layer_call_fn_7887539

inputs
identityЂStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_7886024o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
р1

F__inference_attention_layer_call_and_return_conditional_losses_7885754	
query	
value
attention_mask
A
+query_einsum_einsum_readvariableop_resource:  3
!query_add_readvariableop_resource: ?
)key_einsum_einsum_readvariableop_resource:  1
key_add_readvariableop_resource: A
+value_einsum_einsum_readvariableop_resource:  3
!value_add_readvariableop_resource: L
6attention_output_einsum_einsum_readvariableop_resource:  :
,attention_output_add_readvariableop_resource: 
identity

identity_1Ђ#attention_output/add/ReadVariableOpЂ-attention_output/einsum/Einsum/ReadVariableOpЂkey/add/ReadVariableOpЂ key/einsum/Einsum/ReadVariableOpЂquery/add/ReadVariableOpЂ"query/einsum/Einsum/ReadVariableOpЂvalue/add/ReadVariableOpЂ"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Б
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ 
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ 
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0Б
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџШ J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *ѓ5>d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџШ 
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:џџџџџџџџџШШ*
equationaecd,abcd->acben
softmax/CastCastattention_mask*

DstT0*

SrcT0
*0
_output_shapes
:џџџџџџџџџШR
softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
softmax/subSubsoftmax/sub/x:output:0softmax/Cast:y:0*
T0*0
_output_shapes
:џџџџџџџџџШR
softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(knЮv
softmax/mulMulsoftmax/sub:z:0softmax/mul/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџШy
softmax/addAddV2einsum/Einsum:output:0softmax/mul:z:0*
T0*1
_output_shapes
:џџџџџџџџџШШg
softmax/SoftmaxSoftmaxsoftmax/add:z:0*
T0*1
_output_shapes
:џџџџџџџџџШШs
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*1
_output_shapes
:џџџџџџџџџШШІ
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*0
_output_shapes
:џџџџџџџџџШ *
equationacbe,aecd->abcdЈ
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype0ж
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:џџџџџџџџџШ *
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype0Њ
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:џџџџџџџџџШ l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ t

Identity_1Identitysoftmax/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџШШи
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:џџџџџџџџџШ :џџџџџџџџџШ :џџџџџџџџџШ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:џџџџџџџџџШ 

_user_specified_namequery:SO
,
_output_shapes
:џџџџџџџџџШ 

_user_specified_namevalue:`\
0
_output_shapes
:џџџџџџџџџШ
(
_user_specified_nameattention_mask
э
Ѕ
3__inference_review_classifier_layer_call_fn_7886714
x
unknown:	Ш 
	unknown_0:
  
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:  

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16:

unknown_17:

unknown_18:
identityЂStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_review_classifier_layer_call_and_return_conditional_losses_7885918o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:џџџџџџџџџШ: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
(
_output_shapes
:џџџџџџџџџШ

_user_specified_namex
Х

)__inference_dense_2_layer_call_fn_7887618

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_7885899o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
џ
Ћ
3__inference_review_classifier_layer_call_fn_7886426
input_1
unknown:	Ш 
	unknown_0:
  
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7:  
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:  

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16:

unknown_17:

unknown_18:
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_review_classifier_layer_call_and_return_conditional_losses_7886338o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:џџџџџџџџџШ: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:џџџџџџџџџШ
!
_user_specified_name	input_1


c
D__inference_dropout_layer_call_and_return_conditional_losses_7886090

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>Ћ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:џџџџџџџџџШ n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:џџџџџџџџџШ ^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ :T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs

d
+__inference_dropout_1_layer_call_fn_7887501

inputs
identityЂStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_7886057t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs
ё
 
7__inference_layer_normalization_1_layer_call_fn_7887442

inputs
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџШ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7885844t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџШ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџШ : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs


e
F__inference_dropout_1_layer_call_and_return_conditional_losses_7887518

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nлЖ?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>Ћ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:џџџџџџџџџШ t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:џџџџџџџџџШ n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:џџџџџџџџџШ ^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:џџџџџџџџџШ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџШ :T P
,
_output_shapes
:џџџџџџџџџШ 
 
_user_specified_nameinputs"ПL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ќ
serving_default
<
input_11
serving_default_input_1:0џџџџџџџџџШ<
output_10
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ыв

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	token_emb
	pos_emb

att
ffn

layernorm1

layernorm2
dropout1
dropout2
pool
dropout3
	dense
dropout4
	stars
	optimizer

signatures"
_tf_keras_model
Ж
0
1
2
3
4
5
6
7
8
 9
!10
"11
#12
$13
%14
&15
'16
(17
)18
*19"
trackable_list_wrapper
Ж
0
1
2
3
4
5
6
7
8
 9
!10
"11
#12
$13
%14
&15
'16
(17
)18
*19"
trackable_list_wrapper
'
+0"
trackable_list_wrapper
Ъ
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object

1trace_0
2trace_1
3trace_2
4trace_32
3__inference_review_classifier_layer_call_fn_7885961
3__inference_review_classifier_layer_call_fn_7886714
3__inference_review_classifier_layer_call_fn_7886759
3__inference_review_classifier_layer_call_fn_7886426С
ИВД
FullArgSpec2
args*'
jself
jx

jtraining
j
return_att
varargs
 
varkw
 
defaults
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 z1trace_0z2trace_1z3trace_2z4trace_3
я
5trace_0
6trace_1
7trace_2
8trace_32
N__inference_review_classifier_layer_call_and_return_conditional_losses_7886923
N__inference_review_classifier_layer_call_and_return_conditional_losses_7887114
N__inference_review_classifier_layer_call_and_return_conditional_losses_7886515
N__inference_review_classifier_layer_call_and_return_conditional_losses_7886604С
ИВД
FullArgSpec2
args*'
jself
jx

jtraining
j
return_att
varargs
 
varkw
 
defaults
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 z5trace_0z6trace_1z7trace_2z8trace_3
ЭBЪ
"__inference__wrapped_model_7885502input_1"
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
Е
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
Е
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer

E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses
K_query_dense
L
_key_dense
M_value_dense
N_softmax
O_dropout_layer
P_output_dense"
_tf_keras_layer
б
Qlayer_with_weights-0
Qlayer-0
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ф
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^axis
	#gamma
$beta"
_tf_keras_layer
Ф
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses
eaxis
	%gamma
&beta"
_tf_keras_layer
М
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses
l_random_generator"
_tf_keras_layer
М
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses
s_random_generator"
_tf_keras_layer
Ѕ
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
Н
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
С
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

'kernel
(bias"
_tf_keras_layer
У
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
С
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

)kernel
*bias"
_tf_keras_layer
ш
	iter
beta_1
beta_2

decay
learning_ratemыmьmэmюmяm№mёmђmѓ mє!mѕ"mі#mї$mј%mљ&mњ'mћ(mќ)m§*mўvџvvvvvvvv v!v"v#v$v%v&v'v(v)v*v"
	optimizer
-
serving_default"
signature_map
6:4
  2"review_classifier/t_emb/embeddings
5:3	Ш 2"review_classifier/p_emb/embeddings
>:<  2(review_classifier/attention/query/kernel
8:6 2&review_classifier/attention/query/bias
<::  2&review_classifier/attention/key/kernel
6:4 2$review_classifier/attention/key/bias
>:<  2(review_classifier/attention/value/kernel
8:6 2&review_classifier/attention/value/bias
I:G  23review_classifier/attention/attention_output/kernel
?:= 21review_classifier/attention/attention_output/bias
:  2dense/kernel
: 2
dense/bias
9:7 2+review_classifier/layer_normalization/gamma
8:6 2*review_classifier/layer_normalization/beta
;:9 2-review_classifier/layer_normalization_1/gamma
::8 2,review_classifier/layer_normalization_1/beta
2:0 2 review_classifier/dense_1/kernel
,:*2review_classifier/dense_1/bias
2:02 review_classifier/dense_2/kernel
,:*2review_classifier/dense_2/bias
а
trace_02Б
__inference_loss_fn_0_7887137
В
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
annotationsЊ *Ђ ztrace_0
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
10
11
12"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
3__inference_review_classifier_layer_call_fn_7885961input_1"С
ИВД
FullArgSpec2
args*'
jself
jx

jtraining
j
return_att
varargs
 
varkw
 
defaults
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Bў
3__inference_review_classifier_layer_call_fn_7886714x"С
ИВД
FullArgSpec2
args*'
jself
jx

jtraining
j
return_att
varargs
 
varkw
 
defaults
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Bў
3__inference_review_classifier_layer_call_fn_7886759x"С
ИВД
FullArgSpec2
args*'
jself
jx

jtraining
j
return_att
varargs
 
varkw
 
defaults
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
3__inference_review_classifier_layer_call_fn_7886426input_1"С
ИВД
FullArgSpec2
args*'
jself
jx

jtraining
j
return_att
varargs
 
varkw
 
defaults
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
N__inference_review_classifier_layer_call_and_return_conditional_losses_7886923x"С
ИВД
FullArgSpec2
args*'
jself
jx

jtraining
j
return_att
varargs
 
varkw
 
defaults
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
B
N__inference_review_classifier_layer_call_and_return_conditional_losses_7887114x"С
ИВД
FullArgSpec2
args*'
jself
jx

jtraining
j
return_att
varargs
 
varkw
 
defaults
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЂB
N__inference_review_classifier_layer_call_and_return_conditional_losses_7886515input_1"С
ИВД
FullArgSpec2
args*'
jself
jx

jtraining
j
return_att
varargs
 
varkw
 
defaults
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЂB
N__inference_review_classifier_layer_call_and_return_conditional_losses_7886604input_1"С
ИВД
FullArgSpec2
args*'
jself
jx

jtraining
j
return_att
varargs
 
varkw
 
defaults
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
  layer_regularization_losses
Ёlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
э
Ђtrace_02Ю
'__inference_t_emb_layer_call_fn_7887144Ђ
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
 zЂtrace_0

Ѓtrace_02щ
B__inference_t_emb_layer_call_and_return_conditional_losses_7887153Ђ
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
 zЃtrace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Єnon_trainable_variables
Ѕlayers
Іmetrics
 Їlayer_regularization_losses
Јlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
э
Љtrace_02Ю
'__inference_p_emb_layer_call_fn_7887160Ђ
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
 zЉtrace_0

Њtrace_02щ
B__inference_p_emb_layer_call_and_return_conditional_losses_7887169Ђ
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
 zЊtrace_0
X
0
1
2
3
4
5
6
 7"
trackable_list_wrapper
X
0
1
2
3
4
5
6
 7"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ћnon_trainable_variables
Ќlayers
­metrics
 Ўlayer_regularization_losses
Џlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object

Аtrace_0
Бtrace_12й
+__inference_attention_layer_call_fn_7887194
+__inference_attention_layer_call_fn_7887219ќ
ѓВя
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zАtrace_0zБtrace_1
Ъ
Вtrace_0
Гtrace_12
F__inference_attention_layer_call_and_return_conditional_losses_7887262
F__inference_attention_layer_call_and_return_conditional_losses_7887304ќ
ѓВя
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 zВtrace_0zГtrace_1
є
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses
Кpartial_output_shape
Лfull_output_shape

kernel
bias"
_tf_keras_layer
є
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses
Тpartial_output_shape
Уfull_output_shape

kernel
bias"
_tf_keras_layer
є
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses
Ъpartial_output_shape
Ыfull_output_shape

kernel
bias"
_tf_keras_layer
Ћ
Ь	variables
Эtrainable_variables
Юregularization_losses
Я	keras_api
а__call__
+б&call_and_return_all_conditional_losses"
_tf_keras_layer
У
в	variables
гtrainable_variables
дregularization_losses
е	keras_api
ж__call__
+з&call_and_return_all_conditional_losses
и_random_generator"
_tf_keras_layer
є
й	variables
кtrainable_variables
лregularization_losses
м	keras_api
н__call__
+о&call_and_return_all_conditional_losses
пpartial_output_shape
рfull_output_shape

kernel
 bias"
_tf_keras_layer
С
с	variables
тtrainable_variables
уregularization_losses
ф	keras_api
х__call__
+ц&call_and_return_all_conditional_losses

!kernel
"bias"
_tf_keras_layer
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
(
ч0"
trackable_list_wrapper
В
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
ю
эtrace_0
юtrace_1
яtrace_2
№trace_32ћ
,__inference_sequential_layer_call_fn_7885566
,__inference_sequential_layer_call_fn_7887319
,__inference_sequential_layer_call_fn_7887328
,__inference_sequential_layer_call_fn_7885618Р
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
 zэtrace_0zюtrace_1zяtrace_2z№trace_3
к
ёtrace_0
ђtrace_1
ѓtrace_2
єtrace_32ч
G__inference_sequential_layer_call_and_return_conditional_losses_7887365
G__inference_sequential_layer_call_and_return_conditional_losses_7887402
G__inference_sequential_layer_call_and_return_conditional_losses_7885633
G__inference_sequential_layer_call_and_return_conditional_losses_7885648Р
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
 zёtrace_0zђtrace_1zѓtrace_2zєtrace_3
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
В
ѕnon_trainable_variables
іlayers
їmetrics
 јlayer_regularization_losses
љlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
ћ
њtrace_02м
5__inference_layer_normalization_layer_call_fn_7887411Ђ
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
 zњtrace_0

ћtrace_02ї
P__inference_layer_normalization_layer_call_and_return_conditional_losses_7887433Ђ
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
 zћtrace_0
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
ќnon_trainable_variables
§layers
ўmetrics
 џlayer_regularization_losses
layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
§
trace_02о
7__inference_layer_normalization_1_layer_call_fn_7887442Ђ
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
 ztrace_0

trace_02љ
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7887464Ђ
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
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
Ш
trace_0
trace_12
)__inference_dropout_layer_call_fn_7887469
)__inference_dropout_layer_call_fn_7887474Д
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
 ztrace_0ztrace_1
ў
trace_0
trace_12У
D__inference_dropout_layer_call_and_return_conditional_losses_7887479
D__inference_dropout_layer_call_and_return_conditional_losses_7887491Д
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
 ztrace_0ztrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
Ь
trace_0
trace_12
+__inference_dropout_1_layer_call_fn_7887496
+__inference_dropout_1_layer_call_fn_7887501Д
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
 ztrace_0ztrace_1

trace_0
trace_12Ч
F__inference_dropout_1_layer_call_and_return_conditional_losses_7887506
F__inference_dropout_1_layer_call_and_return_conditional_losses_7887518Д
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
 ztrace_0ztrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object

trace_02ю
:__inference_global_average_pooling1d_layer_call_fn_7887523Џ
ІВЂ
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
Ј
trace_02
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_7887529Џ
ІВЂ
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ь
Ёtrace_0
Ђtrace_12
+__inference_dropout_2_layer_call_fn_7887534
+__inference_dropout_2_layer_call_fn_7887539Д
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
 zЁtrace_0zЂtrace_1

Ѓtrace_0
Єtrace_12Ч
F__inference_dropout_2_layer_call_and_return_conditional_losses_7887544
F__inference_dropout_2_layer_call_and_return_conditional_losses_7887556Д
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
 zЃtrace_0zЄtrace_1
"
_generic_user_object
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
'
+0"
trackable_list_wrapper
И
Ѕnon_trainable_variables
Іlayers
Їmetrics
 Јlayer_regularization_losses
Љlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
я
Њtrace_02а
)__inference_dense_1_layer_call_fn_7887565Ђ
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
 zЊtrace_0

Ћtrace_02ы
D__inference_dense_1_layer_call_and_return_conditional_losses_7887582Ђ
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
 zЋtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ќnon_trainable_variables
­layers
Ўmetrics
 Џlayer_regularization_losses
Аlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ь
Бtrace_0
Вtrace_12
+__inference_dropout_3_layer_call_fn_7887587
+__inference_dropout_3_layer_call_fn_7887592Д
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
 zБtrace_0zВtrace_1

Гtrace_0
Дtrace_12Ч
F__inference_dropout_3_layer_call_and_return_conditional_losses_7887597
F__inference_dropout_3_layer_call_and_return_conditional_losses_7887609Д
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
 zГtrace_0zДtrace_1
"
_generic_user_object
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
я
Кtrace_02а
)__inference_dense_2_layer_call_fn_7887618Ђ
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
 zКtrace_0

Лtrace_02ы
D__inference_dense_2_layer_call_and_return_conditional_losses_7887629Ђ
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
 zЛtrace_0
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ЬBЩ
%__inference_signature_wrapper_7886669input_1"
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
ДBБ
__inference_loss_fn_0_7887137"
В
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
annotationsЊ *Ђ 
R
М	variables
Н	keras_api

Оtotal

Пcount"
_tf_keras_metric
c
Р	variables
С	keras_api

Тtotal

Уcount
Ф
_fn_kwargs"
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
trackable_dict_wrapper
лBи
'__inference_t_emb_layer_call_fn_7887144inputs"Ђ
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
іBѓ
B__inference_t_emb_layer_call_and_return_conditional_losses_7887153inputs"Ђ
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
лBи
'__inference_p_emb_layer_call_fn_7887160inputs"Ђ
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
іBѓ
B__inference_p_emb_layer_call_and_return_conditional_losses_7887169inputs"Ђ
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
J
K0
L1
M2
N3
O4
P5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЯBЬ
+__inference_attention_layer_call_fn_7887194queryvalueattention_mask"ќ
ѓВя
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЯBЬ
+__inference_attention_layer_call_fn_7887219queryvalueattention_mask"ќ
ѓВя
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ъBч
F__inference_attention_layer_call_and_return_conditional_losses_7887262queryvalueattention_mask"ќ
ѓВя
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ъBч
F__inference_attention_layer_call_and_return_conditional_losses_7887304queryvalueattention_mask"ќ
ѓВя
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
Ј2ЅЂ
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
Ј2ЅЂ
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
И
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
Ј2ЅЂ
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
Ј2ЅЂ
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
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
Ј2ЅЂ
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
Ј2ЅЂ
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
Ь	variables
Эtrainable_variables
Юregularization_losses
а__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
Е2ВЏ
ІВЂ
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Е2ВЏ
ІВЂ
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

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
И
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
в	variables
гtrainable_variables
дregularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
К2ЗД
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
К2ЗД
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
"
_generic_user_object
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
й	variables
кtrainable_variables
лregularization_losses
н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
Ј2ЅЂ
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
Ј2ЅЂ
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
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
(
ч0"
trackable_list_wrapper
И
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
с	variables
тtrainable_variables
уregularization_losses
х__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
э
шtrace_02Ю
'__inference_dense_layer_call_fn_7887638Ђ
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
 zшtrace_0

щtrace_02щ
B__inference_dense_layer_call_and_return_conditional_losses_7887675Ђ
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
 zщtrace_0
а
ъtrace_02Б
__inference_loss_fn_1_7887686
В
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
annotationsЊ *Ђ zъtrace_0
 "
trackable_list_wrapper
'
Q0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_layer_call_fn_7885566dense_input"Р
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
ўBћ
,__inference_sequential_layer_call_fn_7887319inputs"Р
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
ўBћ
,__inference_sequential_layer_call_fn_7887328inputs"Р
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
B
,__inference_sequential_layer_call_fn_7885618dense_input"Р
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
B
G__inference_sequential_layer_call_and_return_conditional_losses_7887365inputs"Р
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
B
G__inference_sequential_layer_call_and_return_conditional_losses_7887402inputs"Р
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
B
G__inference_sequential_layer_call_and_return_conditional_losses_7885633dense_input"Р
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
B
G__inference_sequential_layer_call_and_return_conditional_losses_7885648dense_input"Р
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
щBц
5__inference_layer_normalization_layer_call_fn_7887411inputs"Ђ
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
B
P__inference_layer_normalization_layer_call_and_return_conditional_losses_7887433inputs"Ђ
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ыBш
7__inference_layer_normalization_1_layer_call_fn_7887442inputs"Ђ
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
B
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7887464inputs"Ђ
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
яBь
)__inference_dropout_layer_call_fn_7887469inputs"Д
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
яBь
)__inference_dropout_layer_call_fn_7887474inputs"Д
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
B
D__inference_dropout_layer_call_and_return_conditional_losses_7887479inputs"Д
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
B
D__inference_dropout_layer_call_and_return_conditional_losses_7887491inputs"Д
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
ёBю
+__inference_dropout_1_layer_call_fn_7887496inputs"Д
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
ёBю
+__inference_dropout_1_layer_call_fn_7887501inputs"Д
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
B
F__inference_dropout_1_layer_call_and_return_conditional_losses_7887506inputs"Д
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
B
F__inference_dropout_1_layer_call_and_return_conditional_losses_7887518inputs"Д
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
ћBј
:__inference_global_average_pooling1d_layer_call_fn_7887523inputs"Џ
ІВЂ
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_7887529inputs"Џ
ІВЂ
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ёBю
+__inference_dropout_2_layer_call_fn_7887534inputs"Д
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
ёBю
+__inference_dropout_2_layer_call_fn_7887539inputs"Д
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
B
F__inference_dropout_2_layer_call_and_return_conditional_losses_7887544inputs"Д
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
B
F__inference_dropout_2_layer_call_and_return_conditional_losses_7887556inputs"Д
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
нBк
)__inference_dense_1_layer_call_fn_7887565inputs"Ђ
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
јBѕ
D__inference_dense_1_layer_call_and_return_conditional_losses_7887582inputs"Ђ
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ёBю
+__inference_dropout_3_layer_call_fn_7887587inputs"Д
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
ёBю
+__inference_dropout_3_layer_call_fn_7887592inputs"Д
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
B
F__inference_dropout_3_layer_call_and_return_conditional_losses_7887597inputs"Д
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
B
F__inference_dropout_3_layer_call_and_return_conditional_losses_7887609inputs"Д
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
нBк
)__inference_dense_2_layer_call_fn_7887618inputs"Ђ
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
јBѕ
D__inference_dense_2_layer_call_and_return_conditional_losses_7887629inputs"Ђ
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
0
О0
П1"
trackable_list_wrapper
.
М	variables"
_generic_user_object
:  (2total
:  (2count
0
Т0
У1"
trackable_list_wrapper
.
Р	variables"
_generic_user_object
:  (2total
:  (2count
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
ч0"
trackable_list_wrapper
 "
trackable_dict_wrapper
лBи
'__inference_dense_layer_call_fn_7887638inputs"Ђ
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
іBѓ
B__inference_dense_layer_call_and_return_conditional_losses_7887675inputs"Ђ
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
ДBБ
__inference_loss_fn_1_7887686"
В
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
annotationsЊ *Ђ 
;:9
  2)Adam/review_classifier/t_emb/embeddings/m
::8	Ш 2)Adam/review_classifier/p_emb/embeddings/m
C:A  2/Adam/review_classifier/attention/query/kernel/m
=:; 2-Adam/review_classifier/attention/query/bias/m
A:?  2-Adam/review_classifier/attention/key/kernel/m
;:9 2+Adam/review_classifier/attention/key/bias/m
C:A  2/Adam/review_classifier/attention/value/kernel/m
=:; 2-Adam/review_classifier/attention/value/bias/m
N:L  2:Adam/review_classifier/attention/attention_output/kernel/m
D:B 28Adam/review_classifier/attention/attention_output/bias/m
#:!  2Adam/dense/kernel/m
: 2Adam/dense/bias/m
>:< 22Adam/review_classifier/layer_normalization/gamma/m
=:; 21Adam/review_classifier/layer_normalization/beta/m
@:> 24Adam/review_classifier/layer_normalization_1/gamma/m
?:= 23Adam/review_classifier/layer_normalization_1/beta/m
7:5 2'Adam/review_classifier/dense_1/kernel/m
1:/2%Adam/review_classifier/dense_1/bias/m
7:52'Adam/review_classifier/dense_2/kernel/m
1:/2%Adam/review_classifier/dense_2/bias/m
;:9
  2)Adam/review_classifier/t_emb/embeddings/v
::8	Ш 2)Adam/review_classifier/p_emb/embeddings/v
C:A  2/Adam/review_classifier/attention/query/kernel/v
=:; 2-Adam/review_classifier/attention/query/bias/v
A:?  2-Adam/review_classifier/attention/key/kernel/v
;:9 2+Adam/review_classifier/attention/key/bias/v
C:A  2/Adam/review_classifier/attention/value/kernel/v
=:; 2-Adam/review_classifier/attention/value/bias/v
N:L  2:Adam/review_classifier/attention/attention_output/kernel/v
D:B 28Adam/review_classifier/attention/attention_output/bias/v
#:!  2Adam/dense/kernel/v
: 2Adam/dense/bias/v
>:< 22Adam/review_classifier/layer_normalization/gamma/v
=:; 21Adam/review_classifier/layer_normalization/beta/v
@:> 24Adam/review_classifier/layer_normalization_1/gamma/v
?:= 23Adam/review_classifier/layer_normalization_1/beta/v
7:5 2'Adam/review_classifier/dense_1/kernel/v
1:/2%Adam/review_classifier/dense_1/bias/v
7:52'Adam/review_classifier/dense_2/kernel/v
1:/2%Adam/review_classifier/dense_2/bias/vЄ
"__inference__wrapped_model_7885502~ #$!"%&'()*1Ђ.
'Ђ$
"
input_1џџџџџџџџџШ
Њ "3Њ0
.
output_1"
output_1џџџџџџџџџЯ
F__inference_attention_layer_call_and_return_conditional_losses_7887262 Ђ
Ђ
$!
queryџџџџџџџџџШ 
$!
valueџџџџџџџџџШ 

 
1.
attention_maskџџџџџџџџџШ

p
p 
Њ "ZЂW
PЂM
"
0/0џџџџџџџџџШ 
'$
0/1џџџџџџџџџШШ
 Я
F__inference_attention_layer_call_and_return_conditional_losses_7887304 Ђ
Ђ
$!
queryџџџџџџџџџШ 
$!
valueџџџџџџџџџШ 

 
1.
attention_maskџџџџџџџџџШ

p
p
Њ "ZЂW
PЂM
"
0/0џџџџџџџџџШ 
'$
0/1џџџџџџџџџШШ
 І
+__inference_attention_layer_call_fn_7887194і Ђ
Ђ
$!
queryџџџџџџџџџШ 
$!
valueџџџџџџџџџШ 

 
1.
attention_maskџџџџџџџџџШ

p
p 
Њ "LЂI
 
0џџџџџџџџџШ 
%"
1џџџџџџџџџШШІ
+__inference_attention_layer_call_fn_7887219і Ђ
Ђ
$!
queryџџџџџџџџџШ 
$!
valueџџџџџџџџџШ 

 
1.
attention_maskџџџџџџџџџШ

p
p
Њ "LЂI
 
0џџџџџџџџџШ 
%"
1џџџџџџџџџШШЄ
D__inference_dense_1_layer_call_and_return_conditional_losses_7887582\'(/Ђ,
%Ђ"
 
inputsџџџџџџџџџ 
Њ "%Ђ"

0џџџџџџџџџ
 |
)__inference_dense_1_layer_call_fn_7887565O'(/Ђ,
%Ђ"
 
inputsџџџџџџџџџ 
Њ "џџџџџџџџџЄ
D__inference_dense_2_layer_call_and_return_conditional_losses_7887629\)*/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 |
)__inference_dense_2_layer_call_fn_7887618O)*/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџЌ
B__inference_dense_layer_call_and_return_conditional_losses_7887675f!"4Ђ1
*Ђ'
%"
inputsџџџџџџџџџШ 
Њ "*Ђ'
 
0џџџџџџџџџШ 
 
'__inference_dense_layer_call_fn_7887638Y!"4Ђ1
*Ђ'
%"
inputsџџџџџџџџџШ 
Њ "џџџџџџџџџШ А
F__inference_dropout_1_layer_call_and_return_conditional_losses_7887506f8Ђ5
.Ђ+
%"
inputsџџџџџџџџџШ 
p 
Њ "*Ђ'
 
0џџџџџџџџџШ 
 А
F__inference_dropout_1_layer_call_and_return_conditional_losses_7887518f8Ђ5
.Ђ+
%"
inputsџџџџџџџџџШ 
p
Њ "*Ђ'
 
0џџџџџџџџџШ 
 
+__inference_dropout_1_layer_call_fn_7887496Y8Ђ5
.Ђ+
%"
inputsџџџџџџџџџШ 
p 
Њ "џџџџџџџџџШ 
+__inference_dropout_1_layer_call_fn_7887501Y8Ђ5
.Ђ+
%"
inputsџџџџџџџџџШ 
p
Њ "џџџџџџџџџШ І
F__inference_dropout_2_layer_call_and_return_conditional_losses_7887544\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ 
p 
Њ "%Ђ"

0џџџџџџџџџ 
 І
F__inference_dropout_2_layer_call_and_return_conditional_losses_7887556\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ 
p
Њ "%Ђ"

0џџџџџџџџџ 
 ~
+__inference_dropout_2_layer_call_fn_7887534O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ 
p 
Њ "џџџџџџџџџ ~
+__inference_dropout_2_layer_call_fn_7887539O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ 
p
Њ "џџџџџџџџџ І
F__inference_dropout_3_layer_call_and_return_conditional_losses_7887597\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p 
Њ "%Ђ"

0џџџџџџџџџ
 І
F__inference_dropout_3_layer_call_and_return_conditional_losses_7887609\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p
Њ "%Ђ"

0џџџџџџџџџ
 ~
+__inference_dropout_3_layer_call_fn_7887587O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p 
Њ "џџџџџџџџџ~
+__inference_dropout_3_layer_call_fn_7887592O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p
Њ "џџџџџџџџџЎ
D__inference_dropout_layer_call_and_return_conditional_losses_7887479f8Ђ5
.Ђ+
%"
inputsџџџџџџџџџШ 
p 
Њ "*Ђ'
 
0џџџџџџџџџШ 
 Ў
D__inference_dropout_layer_call_and_return_conditional_losses_7887491f8Ђ5
.Ђ+
%"
inputsџџџџџџџџџШ 
p
Њ "*Ђ'
 
0џџџџџџџџџШ 
 
)__inference_dropout_layer_call_fn_7887469Y8Ђ5
.Ђ+
%"
inputsџџџџџџџџџШ 
p 
Њ "џџџџџџџџџШ 
)__inference_dropout_layer_call_fn_7887474Y8Ђ5
.Ђ+
%"
inputsџџџџџџџџџШ 
p
Њ "џџџџџџџџџШ д
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_7887529{IЂF
?Ђ<
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
Њ ".Ђ+
$!
0џџџџџџџџџџџџџџџџџџ
 Ќ
:__inference_global_average_pooling1d_layer_call_fn_7887523nIЂF
?Ђ<
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
Њ "!џџџџџџџџџџџџџџџџџџМ
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_7887464f%&4Ђ1
*Ђ'
%"
inputsџџџџџџџџџШ 
Њ "*Ђ'
 
0џџџџџџџџџШ 
 
7__inference_layer_normalization_1_layer_call_fn_7887442Y%&4Ђ1
*Ђ'
%"
inputsџџџџџџџџџШ 
Њ "џџџџџџџџџШ К
P__inference_layer_normalization_layer_call_and_return_conditional_losses_7887433f#$4Ђ1
*Ђ'
%"
inputsџџџџџџџџџШ 
Њ "*Ђ'
 
0џџџџџџџџџШ 
 
5__inference_layer_normalization_layer_call_fn_7887411Y#$4Ђ1
*Ђ'
%"
inputsџџџџџџџџџШ 
Њ "џџџџџџџџџШ <
__inference_loss_fn_0_7887137'Ђ

Ђ 
Њ " <
__inference_loss_fn_1_7887686!Ђ

Ђ 
Њ " 
B__inference_p_emb_layer_call_and_return_conditional_losses_7887169G#Ђ 
Ђ

inputsШ
Њ "Ђ

0	Ш 
 e
'__inference_p_emb_layer_call_fn_7887160:#Ђ 
Ђ

inputsШ
Њ "	Ш Ъ
N__inference_review_classifier_layer_call_and_return_conditional_losses_7886515x #$!"%&'()*9Ђ6
/Ђ,
"
input_1џџџџџџџџџШ
p 
p 
Њ "%Ђ"

0џџџџџџџџџ
 Ъ
N__inference_review_classifier_layer_call_and_return_conditional_losses_7886604x #$!"%&'()*9Ђ6
/Ђ,
"
input_1џџџџџџџџџШ
p
p 
Њ "%Ђ"

0џџџџџџџџџ
 Ф
N__inference_review_classifier_layer_call_and_return_conditional_losses_7886923r #$!"%&'()*3Ђ0
)Ђ&

xџџџџџџџџџШ
p 
p 
Њ "%Ђ"

0џџџџџџџџџ
 Ф
N__inference_review_classifier_layer_call_and_return_conditional_losses_7887114r #$!"%&'()*3Ђ0
)Ђ&

xџџџџџџџџџШ
p
p 
Њ "%Ђ"

0џџџџџџџџџ
 Ђ
3__inference_review_classifier_layer_call_fn_7885961k #$!"%&'()*9Ђ6
/Ђ,
"
input_1џџџџџџџџџШ
p 
p 
Њ "џџџџџџџџџЂ
3__inference_review_classifier_layer_call_fn_7886426k #$!"%&'()*9Ђ6
/Ђ,
"
input_1џџџџџџџџџШ
p
p 
Њ "џџџџџџџџџ
3__inference_review_classifier_layer_call_fn_7886714e #$!"%&'()*3Ђ0
)Ђ&

xџџџџџџџџџШ
p 
p 
Њ "џџџџџџџџџ
3__inference_review_classifier_layer_call_fn_7886759e #$!"%&'()*3Ђ0
)Ђ&

xџџџџџџџџџШ
p
p 
Њ "џџџџџџџџџО
G__inference_sequential_layer_call_and_return_conditional_losses_7885633s!"AЂ>
7Ђ4
*'
dense_inputџџџџџџџџџШ 
p 

 
Њ "*Ђ'
 
0џџџџџџџџџШ 
 О
G__inference_sequential_layer_call_and_return_conditional_losses_7885648s!"AЂ>
7Ђ4
*'
dense_inputџџџџџџџџџШ 
p

 
Њ "*Ђ'
 
0џџџџџџџџџШ 
 Й
G__inference_sequential_layer_call_and_return_conditional_losses_7887365n!"<Ђ9
2Ђ/
%"
inputsџџџџџџџџџШ 
p 

 
Њ "*Ђ'
 
0џџџџџџџџџШ 
 Й
G__inference_sequential_layer_call_and_return_conditional_losses_7887402n!"<Ђ9
2Ђ/
%"
inputsџџџџџџџџџШ 
p

 
Њ "*Ђ'
 
0џџџџџџџџџШ 
 
,__inference_sequential_layer_call_fn_7885566f!"AЂ>
7Ђ4
*'
dense_inputџџџџџџџџџШ 
p 

 
Њ "џџџџџџџџџШ 
,__inference_sequential_layer_call_fn_7885618f!"AЂ>
7Ђ4
*'
dense_inputџџџџџџџџџШ 
p

 
Њ "џџџџџџџџџШ 
,__inference_sequential_layer_call_fn_7887319a!"<Ђ9
2Ђ/
%"
inputsџџџџџџџџџШ 
p 

 
Њ "џџџџџџџџџШ 
,__inference_sequential_layer_call_fn_7887328a!"<Ђ9
2Ђ/
%"
inputsџџџџџџџџџШ 
p

 
Њ "џџџџџџџџџШ Г
%__inference_signature_wrapper_7886669 #$!"%&'()*<Ђ9
Ђ 
2Њ/
-
input_1"
input_1џџџџџџџџџШ"3Њ0
.
output_1"
output_1џџџџџџџџџЇ
B__inference_t_emb_layer_call_and_return_conditional_losses_7887153a0Ђ-
&Ђ#
!
inputsџџџџџџџџџШ
Њ "*Ђ'
 
0џџџџџџџџџШ 
 
'__inference_t_emb_layer_call_fn_7887144T0Ђ-
&Ђ#
!
inputsџџџџџџџџџШ
Њ "џџџџџџџџџШ 