
S
input/PlaceholderPlaceholder*
dtype0*$
shape:���������Z
M
input/Placeholder_1Placeholder*
dtype0*
shape:���������
Y
conv1/truncated_normal/shapeConst*%
valueB"   <      x   *
dtype0
H
conv1/truncated_normal/meanConst*
valueB
 *    *
dtype0
J
conv1/truncated_normal/stddevConst*
valueB
 *���=*
dtype0
�
&conv1/truncated_normal/TruncatedNormalTruncatedNormalconv1/truncated_normal/shape*
T0*
dtype0*
seed2 *

seed 
q
conv1/truncated_normal/mulMul&conv1/truncated_normal/TruncatedNormalconv1/truncated_normal/stddev*
T0
_
conv1/truncated_normalAddconv1/truncated_normal/mulconv1/truncated_normal/mean*
T0
h
conv1/weight
VariableV2*
dtype0*
shared_name *
shape:<x*
	container 
�
conv1/weight/AssignAssignconv1/weightconv1/truncated_normal*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv1/weight
U
conv1/weight/readIdentityconv1/weight*
T0*
_class
loc:@conv1/weight
=
conv1/ConstConst*
valueB�*    *
dtype0
[

conv1/bias
VariableV2*
dtype0*
shared_name *
shape:�*
	container 
�
conv1/bias/AssignAssign
conv1/biasconv1/Const*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv1/bias
O
conv1/bias/readIdentity
conv1/bias*
T0*
_class
loc:@conv1/bias
R
conv1/depthwise/ShapeConst*%
valueB"   <      x   *
dtype0
R
conv1/depthwise/dilation_rateConst*
valueB"      *
dtype0
�
conv1/depthwiseDepthwiseConv2dNativeinput/Placeholderconv1/weight/read*
T0*
strides
*
data_formatNHWC*
paddingVALID*
	dilations

;
	conv1/AddAddconv1/depthwiseconv1/bias/read*
T0
&

conv1/ReluRelu	conv1/Add*
T0
�
conv1/MaxPoolMaxPool
conv1/Relu*
T0*
strides
*
data_formatNHWC*
paddingVALID*
ksize

Y
conv2/truncated_normal/shapeConst*%
valueB"      h     *
dtype0
H
conv2/truncated_normal/meanConst*
valueB
 *    *
dtype0
J
conv2/truncated_normal/stddevConst*
valueB
 *���=*
dtype0
�
&conv2/truncated_normal/TruncatedNormalTruncatedNormalconv2/truncated_normal/shape*
T0*
dtype0*
seed2 *

seed 
q
conv2/truncated_normal/mulMul&conv2/truncated_normal/TruncatedNormalconv2/truncated_normal/stddev*
T0
_
conv2/truncated_normalAddconv2/truncated_normal/mulconv2/truncated_normal/mean*
T0
i
conv2/weight
VariableV2*
dtype0*
shared_name *
shape:�*
	container 
�
conv2/weight/AssignAssignconv2/weightconv2/truncated_normal*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv2/weight
U
conv2/weight/readIdentityconv2/weight*
T0*
_class
loc:@conv2/weight
=
conv2/ConstConst*
valueB�!*    *
dtype0
[

conv2/bias
VariableV2*
dtype0*
shared_name *
shape:�!*
	container 
�
conv2/bias/AssignAssign
conv2/biasconv2/Const*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv2/bias
O
conv2/bias/readIdentity
conv2/bias*
T0*
_class
loc:@conv2/bias
R
conv2/depthwise/ShapeConst*%
valueB"      h     *
dtype0
R
conv2/depthwise/dilation_rateConst*
valueB"      *
dtype0
�
conv2/depthwiseDepthwiseConv2dNativeconv1/MaxPoolconv2/weight/read*
T0*
strides
*
data_formatNHWC*
paddingVALID*
	dilations

;
	conv2/AddAddconv2/depthwiseconv2/bias/read*
T0
&

conv2/ReluRelu	conv2/Add*
T0
�
conv2/MaxPoolMaxPool
conv2/Relu*
T0*
strides
*
data_formatNHWC*
paddingVALID*
ksize

P
input_reshape/Reshape/shapeConst*
valueB"�����  *
dtype0
c
input_reshape/ReshapeReshapeconv2/MaxPoolinput_reshape/Reshape/shape*
T0*
Tshape0
[
&layer1/weights1/truncated_normal/shapeConst*
valueB"�  d   *
dtype0
R
%layer1/weights1/truncated_normal/meanConst*
valueB
 *    *
dtype0
T
'layer1/weights1/truncated_normal/stddevConst*
valueB
 *���=*
dtype0
�
0layer1/weights1/truncated_normal/TruncatedNormalTruncatedNormal&layer1/weights1/truncated_normal/shape*
T0*
dtype0*
seed2 *

seed 
�
$layer1/weights1/truncated_normal/mulMul0layer1/weights1/truncated_normal/TruncatedNormal'layer1/weights1/truncated_normal/stddev*
T0
}
 layer1/weights1/truncated_normalAdd$layer1/weights1/truncated_normal/mul%layer1/weights1/truncated_normal/mean*
T0
k
layer1/weights1/weight
VariableV2*
dtype0*
shared_name *
shape:	�!d*
	container 
�
layer1/weights1/weight/AssignAssignlayer1/weights1/weight layer1/weights1/truncated_normal*
T0*
use_locking(*
validate_shape(*)
_class
loc:@layer1/weights1/weight
s
layer1/weights1/weight/readIdentitylayer1/weights1/weight*
T0*)
_class
loc:@layer1/weights1/weight
H
layer1/weights1/summaries/RankConst*
value	B :*
dtype0
O
%layer1/weights1/summaries/range/startConst*
value	B : *
dtype0
O
%layer1/weights1/summaries/range/deltaConst*
value	B :*
dtype0
�
layer1/weights1/summaries/rangeRange%layer1/weights1/summaries/range/startlayer1/weights1/summaries/Rank%layer1/weights1/summaries/range/delta*

Tidx0
�
layer1/weights1/summaries/MeanMeanlayer1/weights1/weight/readlayer1/weights1/summaries/range*
	keep_dims( *
T0*

Tidx0
j
#layer1/weights1/summaries/mean/tagsConst*/
value&B$ Blayer1/weights1/summaries/mean*
dtype0
}
layer1/weights1/summaries/meanScalarSummary#layer1/weights1/summaries/mean/tagslayer1/weights1/summaries/Mean*
T0
q
$layer1/weights1/summaries/stddev/subSublayer1/weights1/weight/readlayer1/weights1/summaries/Mean*
T0
`
'layer1/weights1/summaries/stddev/SquareSquare$layer1/weights1/summaries/stddev/sub*
T0
[
&layer1/weights1/summaries/stddev/ConstConst*
valueB"       *
dtype0
�
%layer1/weights1/summaries/stddev/MeanMean'layer1/weights1/summaries/stddev/Square&layer1/weights1/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0
]
%layer1/weights1/summaries/stddev/SqrtSqrt%layer1/weights1/summaries/stddev/Mean*
T0
r
'layer1/weights1/summaries/stddev_1/tagsConst*3
value*B( B"layer1/weights1/summaries/stddev_1*
dtype0
�
"layer1/weights1/summaries/stddev_1ScalarSummary'layer1/weights1/summaries/stddev_1/tags%layer1/weights1/summaries/stddev/Sqrt*
T0
J
 layer1/weights1/summaries/Rank_1Const*
value	B :*
dtype0
Q
'layer1/weights1/summaries/range_1/startConst*
value	B : *
dtype0
Q
'layer1/weights1/summaries/range_1/deltaConst*
value	B :*
dtype0
�
!layer1/weights1/summaries/range_1Range'layer1/weights1/summaries/range_1/start layer1/weights1/summaries/Rank_1'layer1/weights1/summaries/range_1/delta*

Tidx0
�
layer1/weights1/summaries/MaxMaxlayer1/weights1/weight/read!layer1/weights1/summaries/range_1*
	keep_dims( *
T0*

Tidx0
h
"layer1/weights1/summaries/max/tagsConst*.
value%B# Blayer1/weights1/summaries/max*
dtype0
z
layer1/weights1/summaries/maxScalarSummary"layer1/weights1/summaries/max/tagslayer1/weights1/summaries/Max*
T0
J
 layer1/weights1/summaries/Rank_2Const*
value	B :*
dtype0
Q
'layer1/weights1/summaries/range_2/startConst*
value	B : *
dtype0
Q
'layer1/weights1/summaries/range_2/deltaConst*
value	B :*
dtype0
�
!layer1/weights1/summaries/range_2Range'layer1/weights1/summaries/range_2/start layer1/weights1/summaries/Rank_2'layer1/weights1/summaries/range_2/delta*

Tidx0
�
layer1/weights1/summaries/MinMinlayer1/weights1/weight/read!layer1/weights1/summaries/range_2*
	keep_dims( *
T0*

Tidx0
h
"layer1/weights1/summaries/min/tagsConst*.
value%B# Blayer1/weights1/summaries/min*
dtype0
z
layer1/weights1/summaries/minScalarSummary"layer1/weights1/summaries/min/tagslayer1/weights1/summaries/Min*
T0
s
'layer1/weights1/summaries/histogram/tagConst*4
value+B) B#layer1/weights1/summaries/histogram*
dtype0
�
#layer1/weights1/summaries/histogramHistogramSummary'layer1/weights1/summaries/histogram/taglayer1/weights1/weight/read*
T0
E
layer1/biases1/ConstConst*
valueBd*    *
dtype0
c
layer1/biases1/bias
VariableV2*
dtype0*
shared_name *
shape:d*
	container 
�
layer1/biases1/bias/AssignAssignlayer1/biases1/biaslayer1/biases1/Const*
T0*
use_locking(*
validate_shape(*&
_class
loc:@layer1/biases1/bias
j
layer1/biases1/bias/readIdentitylayer1/biases1/bias*
T0*&
_class
loc:@layer1/biases1/bias
G
layer1/biases1/summaries/RankConst*
value	B :*
dtype0
N
$layer1/biases1/summaries/range/startConst*
value	B : *
dtype0
N
$layer1/biases1/summaries/range/deltaConst*
value	B :*
dtype0
�
layer1/biases1/summaries/rangeRange$layer1/biases1/summaries/range/startlayer1/biases1/summaries/Rank$layer1/biases1/summaries/range/delta*

Tidx0
�
layer1/biases1/summaries/MeanMeanlayer1/biases1/bias/readlayer1/biases1/summaries/range*
	keep_dims( *
T0*

Tidx0
h
"layer1/biases1/summaries/mean/tagsConst*.
value%B# Blayer1/biases1/summaries/mean*
dtype0
z
layer1/biases1/summaries/meanScalarSummary"layer1/biases1/summaries/mean/tagslayer1/biases1/summaries/Mean*
T0
l
#layer1/biases1/summaries/stddev/subSublayer1/biases1/bias/readlayer1/biases1/summaries/Mean*
T0
^
&layer1/biases1/summaries/stddev/SquareSquare#layer1/biases1/summaries/stddev/sub*
T0
S
%layer1/biases1/summaries/stddev/ConstConst*
valueB: *
dtype0
�
$layer1/biases1/summaries/stddev/MeanMean&layer1/biases1/summaries/stddev/Square%layer1/biases1/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0
[
$layer1/biases1/summaries/stddev/SqrtSqrt$layer1/biases1/summaries/stddev/Mean*
T0
p
&layer1/biases1/summaries/stddev_1/tagsConst*2
value)B' B!layer1/biases1/summaries/stddev_1*
dtype0
�
!layer1/biases1/summaries/stddev_1ScalarSummary&layer1/biases1/summaries/stddev_1/tags$layer1/biases1/summaries/stddev/Sqrt*
T0
I
layer1/biases1/summaries/Rank_1Const*
value	B :*
dtype0
P
&layer1/biases1/summaries/range_1/startConst*
value	B : *
dtype0
P
&layer1/biases1/summaries/range_1/deltaConst*
value	B :*
dtype0
�
 layer1/biases1/summaries/range_1Range&layer1/biases1/summaries/range_1/startlayer1/biases1/summaries/Rank_1&layer1/biases1/summaries/range_1/delta*

Tidx0
�
layer1/biases1/summaries/MaxMaxlayer1/biases1/bias/read layer1/biases1/summaries/range_1*
	keep_dims( *
T0*

Tidx0
f
!layer1/biases1/summaries/max/tagsConst*-
value$B" Blayer1/biases1/summaries/max*
dtype0
w
layer1/biases1/summaries/maxScalarSummary!layer1/biases1/summaries/max/tagslayer1/biases1/summaries/Max*
T0
I
layer1/biases1/summaries/Rank_2Const*
value	B :*
dtype0
P
&layer1/biases1/summaries/range_2/startConst*
value	B : *
dtype0
P
&layer1/biases1/summaries/range_2/deltaConst*
value	B :*
dtype0
�
 layer1/biases1/summaries/range_2Range&layer1/biases1/summaries/range_2/startlayer1/biases1/summaries/Rank_2&layer1/biases1/summaries/range_2/delta*

Tidx0
�
layer1/biases1/summaries/MinMinlayer1/biases1/bias/read layer1/biases1/summaries/range_2*
	keep_dims( *
T0*

Tidx0
f
!layer1/biases1/summaries/min/tagsConst*-
value$B" Blayer1/biases1/summaries/min*
dtype0
w
layer1/biases1/summaries/minScalarSummary!layer1/biases1/summaries/min/tagslayer1/biases1/summaries/Min*
T0
q
&layer1/biases1/summaries/histogram/tagConst*3
value*B( B"layer1/biases1/summaries/histogram*
dtype0
�
"layer1/biases1/summaries/histogramHistogramSummary&layer1/biases1/summaries/histogram/taglayer1/biases1/bias/read*
T0

layer1/tanh/MatMulMatMulinput_reshape/Reshapelayer1/weights1/weight/read*
transpose_b( *
T0*
transpose_a( 
M
layer1/tanh/AddAddlayer1/tanh/MatMullayer1/biases1/bias/read*
T0
2
layer1/tanh/TanhTanhlayer1/tanh/Add*
T0
[
&layer2/weights2/truncated_normal/shapeConst*
valueB"d      *
dtype0
R
%layer2/weights2/truncated_normal/meanConst*
valueB
 *    *
dtype0
T
'layer2/weights2/truncated_normal/stddevConst*
valueB
 *���=*
dtype0
�
0layer2/weights2/truncated_normal/TruncatedNormalTruncatedNormal&layer2/weights2/truncated_normal/shape*
T0*
dtype0*
seed2 *

seed 
�
$layer2/weights2/truncated_normal/mulMul0layer2/weights2/truncated_normal/TruncatedNormal'layer2/weights2/truncated_normal/stddev*
T0
}
 layer2/weights2/truncated_normalAdd$layer2/weights2/truncated_normal/mul%layer2/weights2/truncated_normal/mean*
T0
j
layer2/weights2/weight
VariableV2*
dtype0*
shared_name *
shape
:d*
	container 
�
layer2/weights2/weight/AssignAssignlayer2/weights2/weight layer2/weights2/truncated_normal*
T0*
use_locking(*
validate_shape(*)
_class
loc:@layer2/weights2/weight
s
layer2/weights2/weight/readIdentitylayer2/weights2/weight*
T0*)
_class
loc:@layer2/weights2/weight
H
layer2/weights2/summaries/RankConst*
value	B :*
dtype0
O
%layer2/weights2/summaries/range/startConst*
value	B : *
dtype0
O
%layer2/weights2/summaries/range/deltaConst*
value	B :*
dtype0
�
layer2/weights2/summaries/rangeRange%layer2/weights2/summaries/range/startlayer2/weights2/summaries/Rank%layer2/weights2/summaries/range/delta*

Tidx0
�
layer2/weights2/summaries/MeanMeanlayer2/weights2/weight/readlayer2/weights2/summaries/range*
	keep_dims( *
T0*

Tidx0
j
#layer2/weights2/summaries/mean/tagsConst*/
value&B$ Blayer2/weights2/summaries/mean*
dtype0
}
layer2/weights2/summaries/meanScalarSummary#layer2/weights2/summaries/mean/tagslayer2/weights2/summaries/Mean*
T0
q
$layer2/weights2/summaries/stddev/subSublayer2/weights2/weight/readlayer2/weights2/summaries/Mean*
T0
`
'layer2/weights2/summaries/stddev/SquareSquare$layer2/weights2/summaries/stddev/sub*
T0
[
&layer2/weights2/summaries/stddev/ConstConst*
valueB"       *
dtype0
�
%layer2/weights2/summaries/stddev/MeanMean'layer2/weights2/summaries/stddev/Square&layer2/weights2/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0
]
%layer2/weights2/summaries/stddev/SqrtSqrt%layer2/weights2/summaries/stddev/Mean*
T0
r
'layer2/weights2/summaries/stddev_1/tagsConst*3
value*B( B"layer2/weights2/summaries/stddev_1*
dtype0
�
"layer2/weights2/summaries/stddev_1ScalarSummary'layer2/weights2/summaries/stddev_1/tags%layer2/weights2/summaries/stddev/Sqrt*
T0
J
 layer2/weights2/summaries/Rank_1Const*
value	B :*
dtype0
Q
'layer2/weights2/summaries/range_1/startConst*
value	B : *
dtype0
Q
'layer2/weights2/summaries/range_1/deltaConst*
value	B :*
dtype0
�
!layer2/weights2/summaries/range_1Range'layer2/weights2/summaries/range_1/start layer2/weights2/summaries/Rank_1'layer2/weights2/summaries/range_1/delta*

Tidx0
�
layer2/weights2/summaries/MaxMaxlayer2/weights2/weight/read!layer2/weights2/summaries/range_1*
	keep_dims( *
T0*

Tidx0
h
"layer2/weights2/summaries/max/tagsConst*.
value%B# Blayer2/weights2/summaries/max*
dtype0
z
layer2/weights2/summaries/maxScalarSummary"layer2/weights2/summaries/max/tagslayer2/weights2/summaries/Max*
T0
J
 layer2/weights2/summaries/Rank_2Const*
value	B :*
dtype0
Q
'layer2/weights2/summaries/range_2/startConst*
value	B : *
dtype0
Q
'layer2/weights2/summaries/range_2/deltaConst*
value	B :*
dtype0
�
!layer2/weights2/summaries/range_2Range'layer2/weights2/summaries/range_2/start layer2/weights2/summaries/Rank_2'layer2/weights2/summaries/range_2/delta*

Tidx0
�
layer2/weights2/summaries/MinMinlayer2/weights2/weight/read!layer2/weights2/summaries/range_2*
	keep_dims( *
T0*

Tidx0
h
"layer2/weights2/summaries/min/tagsConst*.
value%B# Blayer2/weights2/summaries/min*
dtype0
z
layer2/weights2/summaries/minScalarSummary"layer2/weights2/summaries/min/tagslayer2/weights2/summaries/Min*
T0
s
'layer2/weights2/summaries/histogram/tagConst*4
value+B) B#layer2/weights2/summaries/histogram*
dtype0
�
#layer2/weights2/summaries/histogramHistogramSummary'layer2/weights2/summaries/histogram/taglayer2/weights2/weight/read*
T0
E
layer2/biases2/ConstConst*
valueB*    *
dtype0
c
layer2/biases2/bias
VariableV2*
dtype0*
shared_name *
shape:*
	container 
�
layer2/biases2/bias/AssignAssignlayer2/biases2/biaslayer2/biases2/Const*
T0*
use_locking(*
validate_shape(*&
_class
loc:@layer2/biases2/bias
j
layer2/biases2/bias/readIdentitylayer2/biases2/bias*
T0*&
_class
loc:@layer2/biases2/bias
G
layer2/biases2/summaries/RankConst*
value	B :*
dtype0
N
$layer2/biases2/summaries/range/startConst*
value	B : *
dtype0
N
$layer2/biases2/summaries/range/deltaConst*
value	B :*
dtype0
�
layer2/biases2/summaries/rangeRange$layer2/biases2/summaries/range/startlayer2/biases2/summaries/Rank$layer2/biases2/summaries/range/delta*

Tidx0
�
layer2/biases2/summaries/MeanMeanlayer2/biases2/bias/readlayer2/biases2/summaries/range*
	keep_dims( *
T0*

Tidx0
h
"layer2/biases2/summaries/mean/tagsConst*.
value%B# Blayer2/biases2/summaries/mean*
dtype0
z
layer2/biases2/summaries/meanScalarSummary"layer2/biases2/summaries/mean/tagslayer2/biases2/summaries/Mean*
T0
l
#layer2/biases2/summaries/stddev/subSublayer2/biases2/bias/readlayer2/biases2/summaries/Mean*
T0
^
&layer2/biases2/summaries/stddev/SquareSquare#layer2/biases2/summaries/stddev/sub*
T0
S
%layer2/biases2/summaries/stddev/ConstConst*
valueB: *
dtype0
�
$layer2/biases2/summaries/stddev/MeanMean&layer2/biases2/summaries/stddev/Square%layer2/biases2/summaries/stddev/Const*
	keep_dims( *
T0*

Tidx0
[
$layer2/biases2/summaries/stddev/SqrtSqrt$layer2/biases2/summaries/stddev/Mean*
T0
p
&layer2/biases2/summaries/stddev_1/tagsConst*2
value)B' B!layer2/biases2/summaries/stddev_1*
dtype0
�
!layer2/biases2/summaries/stddev_1ScalarSummary&layer2/biases2/summaries/stddev_1/tags$layer2/biases2/summaries/stddev/Sqrt*
T0
I
layer2/biases2/summaries/Rank_1Const*
value	B :*
dtype0
P
&layer2/biases2/summaries/range_1/startConst*
value	B : *
dtype0
P
&layer2/biases2/summaries/range_1/deltaConst*
value	B :*
dtype0
�
 layer2/biases2/summaries/range_1Range&layer2/biases2/summaries/range_1/startlayer2/biases2/summaries/Rank_1&layer2/biases2/summaries/range_1/delta*

Tidx0
�
layer2/biases2/summaries/MaxMaxlayer2/biases2/bias/read layer2/biases2/summaries/range_1*
	keep_dims( *
T0*

Tidx0
f
!layer2/biases2/summaries/max/tagsConst*-
value$B" Blayer2/biases2/summaries/max*
dtype0
w
layer2/biases2/summaries/maxScalarSummary!layer2/biases2/summaries/max/tagslayer2/biases2/summaries/Max*
T0
I
layer2/biases2/summaries/Rank_2Const*
value	B :*
dtype0
P
&layer2/biases2/summaries/range_2/startConst*
value	B : *
dtype0
P
&layer2/biases2/summaries/range_2/deltaConst*
value	B :*
dtype0
�
 layer2/biases2/summaries/range_2Range&layer2/biases2/summaries/range_2/startlayer2/biases2/summaries/Rank_2&layer2/biases2/summaries/range_2/delta*

Tidx0
�
layer2/biases2/summaries/MinMinlayer2/biases2/bias/read layer2/biases2/summaries/range_2*
	keep_dims( *
T0*

Tidx0
f
!layer2/biases2/summaries/min/tagsConst*-
value$B" Blayer2/biases2/summaries/min*
dtype0
w
layer2/biases2/summaries/minScalarSummary!layer2/biases2/summaries/min/tagslayer2/biases2/summaries/Min*
T0
q
&layer2/biases2/summaries/histogram/tagConst*3
value*B( B"layer2/biases2/summaries/histogram*
dtype0
�
"layer2/biases2/summaries/histogramHistogramSummary&layer2/biases2/summaries/histogram/taglayer2/biases2/bias/read*
T0
}
layer2/softmax/MatMulMatMullayer1/tanh/Tanhlayer2/weights2/weight/read*
transpose_b( *
T0*
transpose_a( 
S
layer2/softmax/addAddlayer2/softmax/MatMullayer2/biases2/bias/read*
T0
>
layer2/softmax/SoftmaxSoftmaxlayer2/softmax/add*
T0
0
loss/LogLoglayer2/softmax/Softmax*
T0
7
loss/mulMulinput/Placeholder_1loss/Log*
T0
?

loss/ConstConst*
valueB"       *
dtype0
K
loss/SumSumloss/mul
loss/Const*
	keep_dims( *
T0*

Tidx0
"
loss/NegNegloss/Sum*
T0
@
loss/loss/tagsConst*
valueB B	loss/loss*
dtype0
=
	loss/lossScalarSummaryloss/loss/tagsloss/Neg*
T0
>
train/gradients/ShapeConst*
valueB *
dtype0
F
train/gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0
i
train/gradients/FillFilltrain/gradients/Shapetrain/gradients/grad_ys_0*
T0*

index_type0
G
!train/gradients/loss/Neg_grad/NegNegtrain/gradients/Fill*
T0
`
+train/gradients/loss/Sum_grad/Reshape/shapeConst*
valueB"      *
dtype0
�
%train/gradients/loss/Sum_grad/ReshapeReshape!train/gradients/loss/Neg_grad/Neg+train/gradients/loss/Sum_grad/Reshape/shape*
T0*
Tshape0
O
#train/gradients/loss/Sum_grad/ShapeShapeloss/mul*
T0*
out_type0
�
"train/gradients/loss/Sum_grad/TileTile%train/gradients/loss/Sum_grad/Reshape#train/gradients/loss/Sum_grad/Shape*
T0*

Tmultiples0
Z
#train/gradients/loss/mul_grad/ShapeShapeinput/Placeholder_1*
T0*
out_type0
Q
%train/gradients/loss/mul_grad/Shape_1Shapeloss/Log*
T0*
out_type0
�
3train/gradients/loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs#train/gradients/loss/mul_grad/Shape%train/gradients/loss/mul_grad/Shape_1*
T0
_
!train/gradients/loss/mul_grad/MulMul"train/gradients/loss/Sum_grad/Tileloss/Log*
T0
�
!train/gradients/loss/mul_grad/SumSum!train/gradients/loss/mul_grad/Mul3train/gradients/loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
�
%train/gradients/loss/mul_grad/ReshapeReshape!train/gradients/loss/mul_grad/Sum#train/gradients/loss/mul_grad/Shape*
T0*
Tshape0
l
#train/gradients/loss/mul_grad/Mul_1Mulinput/Placeholder_1"train/gradients/loss/Sum_grad/Tile*
T0
�
#train/gradients/loss/mul_grad/Sum_1Sum#train/gradients/loss/mul_grad/Mul_15train/gradients/loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
'train/gradients/loss/mul_grad/Reshape_1Reshape#train/gradients/loss/mul_grad/Sum_1%train/gradients/loss/mul_grad/Shape_1*
T0*
Tshape0
�
.train/gradients/loss/mul_grad/tuple/group_depsNoOp&^train/gradients/loss/mul_grad/Reshape(^train/gradients/loss/mul_grad/Reshape_1
�
6train/gradients/loss/mul_grad/tuple/control_dependencyIdentity%train/gradients/loss/mul_grad/Reshape/^train/gradients/loss/mul_grad/tuple/group_deps*
T0*8
_class.
,*loc:@train/gradients/loss/mul_grad/Reshape
�
8train/gradients/loss/mul_grad/tuple/control_dependency_1Identity'train/gradients/loss/mul_grad/Reshape_1/^train/gradients/loss/mul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@train/gradients/loss/mul_grad/Reshape_1
�
(train/gradients/loss/Log_grad/Reciprocal
Reciprocallayer2/softmax/Softmax9^train/gradients/loss/mul_grad/tuple/control_dependency_1*
T0
�
!train/gradients/loss/Log_grad/mulMul8train/gradients/loss/mul_grad/tuple/control_dependency_1(train/gradients/loss/Log_grad/Reciprocal*
T0
z
/train/gradients/layer2/softmax/Softmax_grad/mulMul!train/gradients/loss/Log_grad/mullayer2/softmax/Softmax*
T0
o
Atrain/gradients/layer2/softmax/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
dtype0
�
/train/gradients/layer2/softmax/Softmax_grad/SumSum/train/gradients/layer2/softmax/Softmax_grad/mulAtrain/gradients/layer2/softmax/Softmax_grad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0
n
9train/gradients/layer2/softmax/Softmax_grad/Reshape/shapeConst*
valueB"����   *
dtype0
�
3train/gradients/layer2/softmax/Softmax_grad/ReshapeReshape/train/gradients/layer2/softmax/Softmax_grad/Sum9train/gradients/layer2/softmax/Softmax_grad/Reshape/shape*
T0*
Tshape0
�
/train/gradients/layer2/softmax/Softmax_grad/subSub!train/gradients/loss/Log_grad/mul3train/gradients/layer2/softmax/Softmax_grad/Reshape*
T0
�
1train/gradients/layer2/softmax/Softmax_grad/mul_1Mul/train/gradients/layer2/softmax/Softmax_grad/sublayer2/softmax/Softmax*
T0
f
-train/gradients/layer2/softmax/add_grad/ShapeShapelayer2/softmax/MatMul*
T0*
out_type0
]
/train/gradients/layer2/softmax/add_grad/Shape_1Const*
valueB:*
dtype0
�
=train/gradients/layer2/softmax/add_grad/BroadcastGradientArgsBroadcastGradientArgs-train/gradients/layer2/softmax/add_grad/Shape/train/gradients/layer2/softmax/add_grad/Shape_1*
T0
�
+train/gradients/layer2/softmax/add_grad/SumSum1train/gradients/layer2/softmax/Softmax_grad/mul_1=train/gradients/layer2/softmax/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
�
/train/gradients/layer2/softmax/add_grad/ReshapeReshape+train/gradients/layer2/softmax/add_grad/Sum-train/gradients/layer2/softmax/add_grad/Shape*
T0*
Tshape0
�
-train/gradients/layer2/softmax/add_grad/Sum_1Sum1train/gradients/layer2/softmax/Softmax_grad/mul_1?train/gradients/layer2/softmax/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
1train/gradients/layer2/softmax/add_grad/Reshape_1Reshape-train/gradients/layer2/softmax/add_grad/Sum_1/train/gradients/layer2/softmax/add_grad/Shape_1*
T0*
Tshape0
�
8train/gradients/layer2/softmax/add_grad/tuple/group_depsNoOp0^train/gradients/layer2/softmax/add_grad/Reshape2^train/gradients/layer2/softmax/add_grad/Reshape_1
�
@train/gradients/layer2/softmax/add_grad/tuple/control_dependencyIdentity/train/gradients/layer2/softmax/add_grad/Reshape9^train/gradients/layer2/softmax/add_grad/tuple/group_deps*
T0*B
_class8
64loc:@train/gradients/layer2/softmax/add_grad/Reshape
�
Btrain/gradients/layer2/softmax/add_grad/tuple/control_dependency_1Identity1train/gradients/layer2/softmax/add_grad/Reshape_19^train/gradients/layer2/softmax/add_grad/tuple/group_deps*
T0*D
_class:
86loc:@train/gradients/layer2/softmax/add_grad/Reshape_1
�
1train/gradients/layer2/softmax/MatMul_grad/MatMulMatMul@train/gradients/layer2/softmax/add_grad/tuple/control_dependencylayer2/weights2/weight/read*
transpose_b(*
T0*
transpose_a( 
�
3train/gradients/layer2/softmax/MatMul_grad/MatMul_1MatMullayer1/tanh/Tanh@train/gradients/layer2/softmax/add_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
;train/gradients/layer2/softmax/MatMul_grad/tuple/group_depsNoOp2^train/gradients/layer2/softmax/MatMul_grad/MatMul4^train/gradients/layer2/softmax/MatMul_grad/MatMul_1
�
Ctrain/gradients/layer2/softmax/MatMul_grad/tuple/control_dependencyIdentity1train/gradients/layer2/softmax/MatMul_grad/MatMul<^train/gradients/layer2/softmax/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@train/gradients/layer2/softmax/MatMul_grad/MatMul
�
Etrain/gradients/layer2/softmax/MatMul_grad/tuple/control_dependency_1Identity3train/gradients/layer2/softmax/MatMul_grad/MatMul_1<^train/gradients/layer2/softmax/MatMul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@train/gradients/layer2/softmax/MatMul_grad/MatMul_1
�
.train/gradients/layer1/tanh/Tanh_grad/TanhGradTanhGradlayer1/tanh/TanhCtrain/gradients/layer2/softmax/MatMul_grad/tuple/control_dependency*
T0
`
*train/gradients/layer1/tanh/Add_grad/ShapeShapelayer1/tanh/MatMul*
T0*
out_type0
Z
,train/gradients/layer1/tanh/Add_grad/Shape_1Const*
valueB:d*
dtype0
�
:train/gradients/layer1/tanh/Add_grad/BroadcastGradientArgsBroadcastGradientArgs*train/gradients/layer1/tanh/Add_grad/Shape,train/gradients/layer1/tanh/Add_grad/Shape_1*
T0
�
(train/gradients/layer1/tanh/Add_grad/SumSum.train/gradients/layer1/tanh/Tanh_grad/TanhGrad:train/gradients/layer1/tanh/Add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
�
,train/gradients/layer1/tanh/Add_grad/ReshapeReshape(train/gradients/layer1/tanh/Add_grad/Sum*train/gradients/layer1/tanh/Add_grad/Shape*
T0*
Tshape0
�
*train/gradients/layer1/tanh/Add_grad/Sum_1Sum.train/gradients/layer1/tanh/Tanh_grad/TanhGrad<train/gradients/layer1/tanh/Add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
.train/gradients/layer1/tanh/Add_grad/Reshape_1Reshape*train/gradients/layer1/tanh/Add_grad/Sum_1,train/gradients/layer1/tanh/Add_grad/Shape_1*
T0*
Tshape0
�
5train/gradients/layer1/tanh/Add_grad/tuple/group_depsNoOp-^train/gradients/layer1/tanh/Add_grad/Reshape/^train/gradients/layer1/tanh/Add_grad/Reshape_1
�
=train/gradients/layer1/tanh/Add_grad/tuple/control_dependencyIdentity,train/gradients/layer1/tanh/Add_grad/Reshape6^train/gradients/layer1/tanh/Add_grad/tuple/group_deps*
T0*?
_class5
31loc:@train/gradients/layer1/tanh/Add_grad/Reshape
�
?train/gradients/layer1/tanh/Add_grad/tuple/control_dependency_1Identity.train/gradients/layer1/tanh/Add_grad/Reshape_16^train/gradients/layer1/tanh/Add_grad/tuple/group_deps*
T0*A
_class7
53loc:@train/gradients/layer1/tanh/Add_grad/Reshape_1
�
.train/gradients/layer1/tanh/MatMul_grad/MatMulMatMul=train/gradients/layer1/tanh/Add_grad/tuple/control_dependencylayer1/weights1/weight/read*
transpose_b(*
T0*
transpose_a( 
�
0train/gradients/layer1/tanh/MatMul_grad/MatMul_1MatMulinput_reshape/Reshape=train/gradients/layer1/tanh/Add_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
8train/gradients/layer1/tanh/MatMul_grad/tuple/group_depsNoOp/^train/gradients/layer1/tanh/MatMul_grad/MatMul1^train/gradients/layer1/tanh/MatMul_grad/MatMul_1
�
@train/gradients/layer1/tanh/MatMul_grad/tuple/control_dependencyIdentity.train/gradients/layer1/tanh/MatMul_grad/MatMul9^train/gradients/layer1/tanh/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@train/gradients/layer1/tanh/MatMul_grad/MatMul
�
Btrain/gradients/layer1/tanh/MatMul_grad/tuple/control_dependency_1Identity0train/gradients/layer1/tanh/MatMul_grad/MatMul_19^train/gradients/layer1/tanh/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@train/gradients/layer1/tanh/MatMul_grad/MatMul_1
a
0train/gradients/input_reshape/Reshape_grad/ShapeShapeconv2/MaxPool*
T0*
out_type0
�
2train/gradients/input_reshape/Reshape_grad/ReshapeReshape@train/gradients/layer1/tanh/MatMul_grad/tuple/control_dependency0train/gradients/input_reshape/Reshape_grad/Shape*
T0*
Tshape0
�
.train/gradients/conv2/MaxPool_grad/MaxPoolGradMaxPoolGrad
conv2/Reluconv2/MaxPool2train/gradients/input_reshape/Reshape_grad/Reshape*
strides
*
T0*
data_formatNHWC*
paddingVALID*
ksize

y
(train/gradients/conv2/Relu_grad/ReluGradReluGrad.train/gradients/conv2/MaxPool_grad/MaxPoolGrad
conv2/Relu*
T0
W
$train/gradients/conv2/Add_grad/ShapeShapeconv2/depthwise*
T0*
out_type0
U
&train/gradients/conv2/Add_grad/Shape_1Const*
valueB:�!*
dtype0
�
4train/gradients/conv2/Add_grad/BroadcastGradientArgsBroadcastGradientArgs$train/gradients/conv2/Add_grad/Shape&train/gradients/conv2/Add_grad/Shape_1*
T0
�
"train/gradients/conv2/Add_grad/SumSum(train/gradients/conv2/Relu_grad/ReluGrad4train/gradients/conv2/Add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
�
&train/gradients/conv2/Add_grad/ReshapeReshape"train/gradients/conv2/Add_grad/Sum$train/gradients/conv2/Add_grad/Shape*
T0*
Tshape0
�
$train/gradients/conv2/Add_grad/Sum_1Sum(train/gradients/conv2/Relu_grad/ReluGrad6train/gradients/conv2/Add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
(train/gradients/conv2/Add_grad/Reshape_1Reshape$train/gradients/conv2/Add_grad/Sum_1&train/gradients/conv2/Add_grad/Shape_1*
T0*
Tshape0
�
/train/gradients/conv2/Add_grad/tuple/group_depsNoOp'^train/gradients/conv2/Add_grad/Reshape)^train/gradients/conv2/Add_grad/Reshape_1
�
7train/gradients/conv2/Add_grad/tuple/control_dependencyIdentity&train/gradients/conv2/Add_grad/Reshape0^train/gradients/conv2/Add_grad/tuple/group_deps*
T0*9
_class/
-+loc:@train/gradients/conv2/Add_grad/Reshape
�
9train/gradients/conv2/Add_grad/tuple/control_dependency_1Identity(train/gradients/conv2/Add_grad/Reshape_10^train/gradients/conv2/Add_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/conv2/Add_grad/Reshape_1
[
*train/gradients/conv2/depthwise_grad/ShapeShapeconv1/MaxPool*
T0*
out_type0
�
Gtrain/gradients/conv2/depthwise_grad/DepthwiseConv2dNativeBackpropInput"DepthwiseConv2dNativeBackpropInput*train/gradients/conv2/depthwise_grad/Shapeconv2/weight/read7train/gradients/conv2/Add_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
paddingVALID*
	dilations

i
,train/gradients/conv2/depthwise_grad/Shape_1Const*%
valueB"      h     *
dtype0
�
Htrain/gradients/conv2/depthwise_grad/DepthwiseConv2dNativeBackpropFilter#DepthwiseConv2dNativeBackpropFilterconv1/MaxPool,train/gradients/conv2/depthwise_grad/Shape_17train/gradients/conv2/Add_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
paddingVALID*
	dilations

�
5train/gradients/conv2/depthwise_grad/tuple/group_depsNoOpH^train/gradients/conv2/depthwise_grad/DepthwiseConv2dNativeBackpropInputI^train/gradients/conv2/depthwise_grad/DepthwiseConv2dNativeBackpropFilter
�
=train/gradients/conv2/depthwise_grad/tuple/control_dependencyIdentityGtrain/gradients/conv2/depthwise_grad/DepthwiseConv2dNativeBackpropInput6^train/gradients/conv2/depthwise_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@train/gradients/conv2/depthwise_grad/DepthwiseConv2dNativeBackpropInput
�
?train/gradients/conv2/depthwise_grad/tuple/control_dependency_1IdentityHtrain/gradients/conv2/depthwise_grad/DepthwiseConv2dNativeBackpropFilter6^train/gradients/conv2/depthwise_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@train/gradients/conv2/depthwise_grad/DepthwiseConv2dNativeBackpropFilter
�
.train/gradients/conv1/MaxPool_grad/MaxPoolGradMaxPoolGrad
conv1/Reluconv1/MaxPool=train/gradients/conv2/depthwise_grad/tuple/control_dependency*
strides
*
T0*
data_formatNHWC*
paddingVALID*
ksize

y
(train/gradients/conv1/Relu_grad/ReluGradReluGrad.train/gradients/conv1/MaxPool_grad/MaxPoolGrad
conv1/Relu*
T0
W
$train/gradients/conv1/Add_grad/ShapeShapeconv1/depthwise*
T0*
out_type0
U
&train/gradients/conv1/Add_grad/Shape_1Const*
valueB:�*
dtype0
�
4train/gradients/conv1/Add_grad/BroadcastGradientArgsBroadcastGradientArgs$train/gradients/conv1/Add_grad/Shape&train/gradients/conv1/Add_grad/Shape_1*
T0
�
"train/gradients/conv1/Add_grad/SumSum(train/gradients/conv1/Relu_grad/ReluGrad4train/gradients/conv1/Add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
�
&train/gradients/conv1/Add_grad/ReshapeReshape"train/gradients/conv1/Add_grad/Sum$train/gradients/conv1/Add_grad/Shape*
T0*
Tshape0
�
$train/gradients/conv1/Add_grad/Sum_1Sum(train/gradients/conv1/Relu_grad/ReluGrad6train/gradients/conv1/Add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
�
(train/gradients/conv1/Add_grad/Reshape_1Reshape$train/gradients/conv1/Add_grad/Sum_1&train/gradients/conv1/Add_grad/Shape_1*
T0*
Tshape0
�
/train/gradients/conv1/Add_grad/tuple/group_depsNoOp'^train/gradients/conv1/Add_grad/Reshape)^train/gradients/conv1/Add_grad/Reshape_1
�
7train/gradients/conv1/Add_grad/tuple/control_dependencyIdentity&train/gradients/conv1/Add_grad/Reshape0^train/gradients/conv1/Add_grad/tuple/group_deps*
T0*9
_class/
-+loc:@train/gradients/conv1/Add_grad/Reshape
�
9train/gradients/conv1/Add_grad/tuple/control_dependency_1Identity(train/gradients/conv1/Add_grad/Reshape_10^train/gradients/conv1/Add_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/conv1/Add_grad/Reshape_1
_
*train/gradients/conv1/depthwise_grad/ShapeShapeinput/Placeholder*
T0*
out_type0
�
Gtrain/gradients/conv1/depthwise_grad/DepthwiseConv2dNativeBackpropInput"DepthwiseConv2dNativeBackpropInput*train/gradients/conv1/depthwise_grad/Shapeconv1/weight/read7train/gradients/conv1/Add_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
paddingVALID*
	dilations

i
,train/gradients/conv1/depthwise_grad/Shape_1Const*%
valueB"   <      x   *
dtype0
�
Htrain/gradients/conv1/depthwise_grad/DepthwiseConv2dNativeBackpropFilter#DepthwiseConv2dNativeBackpropFilterinput/Placeholder,train/gradients/conv1/depthwise_grad/Shape_17train/gradients/conv1/Add_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
paddingVALID*
	dilations

�
5train/gradients/conv1/depthwise_grad/tuple/group_depsNoOpH^train/gradients/conv1/depthwise_grad/DepthwiseConv2dNativeBackpropInputI^train/gradients/conv1/depthwise_grad/DepthwiseConv2dNativeBackpropFilter
�
=train/gradients/conv1/depthwise_grad/tuple/control_dependencyIdentityGtrain/gradients/conv1/depthwise_grad/DepthwiseConv2dNativeBackpropInput6^train/gradients/conv1/depthwise_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@train/gradients/conv1/depthwise_grad/DepthwiseConv2dNativeBackpropInput
�
?train/gradients/conv1/depthwise_grad/tuple/control_dependency_1IdentityHtrain/gradients/conv1/depthwise_grad/DepthwiseConv2dNativeBackpropFilter6^train/gradients/conv1/depthwise_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@train/gradients/conv1/depthwise_grad/DepthwiseConv2dNativeBackpropFilter
k
train/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*
_class
loc:@conv1/bias
|
train/beta1_power
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_class
loc:@conv1/bias
�
train/beta1_power/AssignAssigntrain/beta1_powertrain/beta1_power/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv1/bias
]
train/beta1_power/readIdentitytrain/beta1_power*
T0*
_class
loc:@conv1/bias
k
train/beta2_power/initial_valueConst*
valueB
 *w�?*
dtype0*
_class
loc:@conv1/bias
|
train/beta2_power
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_class
loc:@conv1/bias
�
train/beta2_power/AssignAssigntrain/beta2_powertrain/beta2_power/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv1/bias
]
train/beta2_power/readIdentitytrain/beta2_power*
T0*
_class
loc:@conv1/bias
�
3conv1/weight/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"   <      x   *
dtype0*
_class
loc:@conv1/weight
w
)conv1/weight/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@conv1/weight
�
#conv1/weight/Adam/Initializer/zerosFill3conv1/weight/Adam/Initializer/zeros/shape_as_tensor)conv1/weight/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@conv1/weight
�
conv1/weight/Adam
VariableV2*
dtype0*
shared_name *
shape:<x*
	container *
_class
loc:@conv1/weight
�
conv1/weight/Adam/AssignAssignconv1/weight/Adam#conv1/weight/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv1/weight
_
conv1/weight/Adam/readIdentityconv1/weight/Adam*
T0*
_class
loc:@conv1/weight
�
5conv1/weight/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"   <      x   *
dtype0*
_class
loc:@conv1/weight
y
+conv1/weight/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@conv1/weight
�
%conv1/weight/Adam_1/Initializer/zerosFill5conv1/weight/Adam_1/Initializer/zeros/shape_as_tensor+conv1/weight/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@conv1/weight
�
conv1/weight/Adam_1
VariableV2*
dtype0*
shared_name *
shape:<x*
	container *
_class
loc:@conv1/weight
�
conv1/weight/Adam_1/AssignAssignconv1/weight/Adam_1%conv1/weight/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv1/weight
c
conv1/weight/Adam_1/readIdentityconv1/weight/Adam_1*
T0*
_class
loc:@conv1/weight

1conv1/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:�*
dtype0*
_class
loc:@conv1/bias
s
'conv1/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@conv1/bias
�
!conv1/bias/Adam/Initializer/zerosFill1conv1/bias/Adam/Initializer/zeros/shape_as_tensor'conv1/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@conv1/bias

conv1/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:�*
	container *
_class
loc:@conv1/bias
�
conv1/bias/Adam/AssignAssignconv1/bias/Adam!conv1/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv1/bias
Y
conv1/bias/Adam/readIdentityconv1/bias/Adam*
T0*
_class
loc:@conv1/bias
�
3conv1/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:�*
dtype0*
_class
loc:@conv1/bias
u
)conv1/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@conv1/bias
�
#conv1/bias/Adam_1/Initializer/zerosFill3conv1/bias/Adam_1/Initializer/zeros/shape_as_tensor)conv1/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@conv1/bias
�
conv1/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:�*
	container *
_class
loc:@conv1/bias
�
conv1/bias/Adam_1/AssignAssignconv1/bias/Adam_1#conv1/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv1/bias
]
conv1/bias/Adam_1/readIdentityconv1/bias/Adam_1*
T0*
_class
loc:@conv1/bias
�
3conv2/weight/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"      h     *
dtype0*
_class
loc:@conv2/weight
w
)conv2/weight/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@conv2/weight
�
#conv2/weight/Adam/Initializer/zerosFill3conv2/weight/Adam/Initializer/zeros/shape_as_tensor)conv2/weight/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@conv2/weight
�
conv2/weight/Adam
VariableV2*
dtype0*
shared_name *
shape:�*
	container *
_class
loc:@conv2/weight
�
conv2/weight/Adam/AssignAssignconv2/weight/Adam#conv2/weight/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv2/weight
_
conv2/weight/Adam/readIdentityconv2/weight/Adam*
T0*
_class
loc:@conv2/weight
�
5conv2/weight/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      h     *
dtype0*
_class
loc:@conv2/weight
y
+conv2/weight/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@conv2/weight
�
%conv2/weight/Adam_1/Initializer/zerosFill5conv2/weight/Adam_1/Initializer/zeros/shape_as_tensor+conv2/weight/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@conv2/weight
�
conv2/weight/Adam_1
VariableV2*
dtype0*
shared_name *
shape:�*
	container *
_class
loc:@conv2/weight
�
conv2/weight/Adam_1/AssignAssignconv2/weight/Adam_1%conv2/weight/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv2/weight
c
conv2/weight/Adam_1/readIdentityconv2/weight/Adam_1*
T0*
_class
loc:@conv2/weight

1conv2/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:�!*
dtype0*
_class
loc:@conv2/bias
s
'conv2/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@conv2/bias
�
!conv2/bias/Adam/Initializer/zerosFill1conv2/bias/Adam/Initializer/zeros/shape_as_tensor'conv2/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@conv2/bias

conv2/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:�!*
	container *
_class
loc:@conv2/bias
�
conv2/bias/Adam/AssignAssignconv2/bias/Adam!conv2/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv2/bias
Y
conv2/bias/Adam/readIdentityconv2/bias/Adam*
T0*
_class
loc:@conv2/bias
�
3conv2/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:�!*
dtype0*
_class
loc:@conv2/bias
u
)conv2/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@conv2/bias
�
#conv2/bias/Adam_1/Initializer/zerosFill3conv2/bias/Adam_1/Initializer/zeros/shape_as_tensor)conv2/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@conv2/bias
�
conv2/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:�!*
	container *
_class
loc:@conv2/bias
�
conv2/bias/Adam_1/AssignAssignconv2/bias/Adam_1#conv2/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv2/bias
]
conv2/bias/Adam_1/readIdentityconv2/bias/Adam_1*
T0*
_class
loc:@conv2/bias
�
=layer1/weights1/weight/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"�  d   *
dtype0*)
_class
loc:@layer1/weights1/weight
�
3layer1/weights1/weight/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*)
_class
loc:@layer1/weights1/weight
�
-layer1/weights1/weight/Adam/Initializer/zerosFill=layer1/weights1/weight/Adam/Initializer/zeros/shape_as_tensor3layer1/weights1/weight/Adam/Initializer/zeros/Const*
T0*

index_type0*)
_class
loc:@layer1/weights1/weight
�
layer1/weights1/weight/Adam
VariableV2*
dtype0*
shared_name *
shape:	�!d*
	container *)
_class
loc:@layer1/weights1/weight
�
"layer1/weights1/weight/Adam/AssignAssignlayer1/weights1/weight/Adam-layer1/weights1/weight/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*)
_class
loc:@layer1/weights1/weight
}
 layer1/weights1/weight/Adam/readIdentitylayer1/weights1/weight/Adam*
T0*)
_class
loc:@layer1/weights1/weight
�
?layer1/weights1/weight/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"�  d   *
dtype0*)
_class
loc:@layer1/weights1/weight
�
5layer1/weights1/weight/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*)
_class
loc:@layer1/weights1/weight
�
/layer1/weights1/weight/Adam_1/Initializer/zerosFill?layer1/weights1/weight/Adam_1/Initializer/zeros/shape_as_tensor5layer1/weights1/weight/Adam_1/Initializer/zeros/Const*
T0*

index_type0*)
_class
loc:@layer1/weights1/weight
�
layer1/weights1/weight/Adam_1
VariableV2*
dtype0*
shared_name *
shape:	�!d*
	container *)
_class
loc:@layer1/weights1/weight
�
$layer1/weights1/weight/Adam_1/AssignAssignlayer1/weights1/weight/Adam_1/layer1/weights1/weight/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*)
_class
loc:@layer1/weights1/weight
�
"layer1/weights1/weight/Adam_1/readIdentitylayer1/weights1/weight/Adam_1*
T0*)
_class
loc:@layer1/weights1/weight
�
:layer1/biases1/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:d*
dtype0*&
_class
loc:@layer1/biases1/bias
�
0layer1/biases1/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*&
_class
loc:@layer1/biases1/bias
�
*layer1/biases1/bias/Adam/Initializer/zerosFill:layer1/biases1/bias/Adam/Initializer/zeros/shape_as_tensor0layer1/biases1/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*&
_class
loc:@layer1/biases1/bias
�
layer1/biases1/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:d*
	container *&
_class
loc:@layer1/biases1/bias
�
layer1/biases1/bias/Adam/AssignAssignlayer1/biases1/bias/Adam*layer1/biases1/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*&
_class
loc:@layer1/biases1/bias
t
layer1/biases1/bias/Adam/readIdentitylayer1/biases1/bias/Adam*
T0*&
_class
loc:@layer1/biases1/bias
�
<layer1/biases1/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:d*
dtype0*&
_class
loc:@layer1/biases1/bias
�
2layer1/biases1/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*&
_class
loc:@layer1/biases1/bias
�
,layer1/biases1/bias/Adam_1/Initializer/zerosFill<layer1/biases1/bias/Adam_1/Initializer/zeros/shape_as_tensor2layer1/biases1/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*&
_class
loc:@layer1/biases1/bias
�
layer1/biases1/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:d*
	container *&
_class
loc:@layer1/biases1/bias
�
!layer1/biases1/bias/Adam_1/AssignAssignlayer1/biases1/bias/Adam_1,layer1/biases1/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*&
_class
loc:@layer1/biases1/bias
x
layer1/biases1/bias/Adam_1/readIdentitylayer1/biases1/bias/Adam_1*
T0*&
_class
loc:@layer1/biases1/bias
�
=layer2/weights2/weight/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"d      *
dtype0*)
_class
loc:@layer2/weights2/weight
�
3layer2/weights2/weight/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*)
_class
loc:@layer2/weights2/weight
�
-layer2/weights2/weight/Adam/Initializer/zerosFill=layer2/weights2/weight/Adam/Initializer/zeros/shape_as_tensor3layer2/weights2/weight/Adam/Initializer/zeros/Const*
T0*

index_type0*)
_class
loc:@layer2/weights2/weight
�
layer2/weights2/weight/Adam
VariableV2*
dtype0*
shared_name *
shape
:d*
	container *)
_class
loc:@layer2/weights2/weight
�
"layer2/weights2/weight/Adam/AssignAssignlayer2/weights2/weight/Adam-layer2/weights2/weight/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*)
_class
loc:@layer2/weights2/weight
}
 layer2/weights2/weight/Adam/readIdentitylayer2/weights2/weight/Adam*
T0*)
_class
loc:@layer2/weights2/weight
�
?layer2/weights2/weight/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"d      *
dtype0*)
_class
loc:@layer2/weights2/weight
�
5layer2/weights2/weight/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*)
_class
loc:@layer2/weights2/weight
�
/layer2/weights2/weight/Adam_1/Initializer/zerosFill?layer2/weights2/weight/Adam_1/Initializer/zeros/shape_as_tensor5layer2/weights2/weight/Adam_1/Initializer/zeros/Const*
T0*

index_type0*)
_class
loc:@layer2/weights2/weight
�
layer2/weights2/weight/Adam_1
VariableV2*
dtype0*
shared_name *
shape
:d*
	container *)
_class
loc:@layer2/weights2/weight
�
$layer2/weights2/weight/Adam_1/AssignAssignlayer2/weights2/weight/Adam_1/layer2/weights2/weight/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*)
_class
loc:@layer2/weights2/weight
�
"layer2/weights2/weight/Adam_1/readIdentitylayer2/weights2/weight/Adam_1*
T0*)
_class
loc:@layer2/weights2/weight
�
:layer2/biases2/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*&
_class
loc:@layer2/biases2/bias
�
0layer2/biases2/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*&
_class
loc:@layer2/biases2/bias
�
*layer2/biases2/bias/Adam/Initializer/zerosFill:layer2/biases2/bias/Adam/Initializer/zeros/shape_as_tensor0layer2/biases2/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*&
_class
loc:@layer2/biases2/bias
�
layer2/biases2/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *&
_class
loc:@layer2/biases2/bias
�
layer2/biases2/bias/Adam/AssignAssignlayer2/biases2/bias/Adam*layer2/biases2/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*&
_class
loc:@layer2/biases2/bias
t
layer2/biases2/bias/Adam/readIdentitylayer2/biases2/bias/Adam*
T0*&
_class
loc:@layer2/biases2/bias
�
<layer2/biases2/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*&
_class
loc:@layer2/biases2/bias
�
2layer2/biases2/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*&
_class
loc:@layer2/biases2/bias
�
,layer2/biases2/bias/Adam_1/Initializer/zerosFill<layer2/biases2/bias/Adam_1/Initializer/zeros/shape_as_tensor2layer2/biases2/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*&
_class
loc:@layer2/biases2/bias
�
layer2/biases2/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *&
_class
loc:@layer2/biases2/bias
�
!layer2/biases2/bias/Adam_1/AssignAssignlayer2/biases2/bias/Adam_1,layer2/biases2/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*&
_class
loc:@layer2/biases2/bias
x
layer2/biases2/bias/Adam_1/readIdentitylayer2/biases2/bias/Adam_1*
T0*&
_class
loc:@layer2/biases2/bias
E
train/Adam/learning_rateConst*
valueB
 *��8*
dtype0
=
train/Adam/beta1Const*
valueB
 *fff?*
dtype0
=
train/Adam/beta2Const*
valueB
 *w�?*
dtype0
?
train/Adam/epsilonConst*
valueB
 *w�+2*
dtype0
�
(train/Adam/update_conv1/weight/ApplyAdam	ApplyAdamconv1/weightconv1/weight/Adamconv1/weight/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon?train/gradients/conv1/depthwise_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@conv1/weight*
use_nesterov( 
�
&train/Adam/update_conv1/bias/ApplyAdam	ApplyAdam
conv1/biasconv1/bias/Adamconv1/bias/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon9train/gradients/conv1/Add_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@conv1/bias*
use_nesterov( 
�
(train/Adam/update_conv2/weight/ApplyAdam	ApplyAdamconv2/weightconv2/weight/Adamconv2/weight/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon?train/gradients/conv2/depthwise_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@conv2/weight*
use_nesterov( 
�
&train/Adam/update_conv2/bias/ApplyAdam	ApplyAdam
conv2/biasconv2/bias/Adamconv2/bias/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon9train/gradients/conv2/Add_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@conv2/bias*
use_nesterov( 
�
2train/Adam/update_layer1/weights1/weight/ApplyAdam	ApplyAdamlayer1/weights1/weightlayer1/weights1/weight/Adamlayer1/weights1/weight/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonBtrain/gradients/layer1/tanh/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *)
_class
loc:@layer1/weights1/weight*
use_nesterov( 
�
/train/Adam/update_layer1/biases1/bias/ApplyAdam	ApplyAdamlayer1/biases1/biaslayer1/biases1/bias/Adamlayer1/biases1/bias/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon?train/gradients/layer1/tanh/Add_grad/tuple/control_dependency_1*
T0*
use_locking( *&
_class
loc:@layer1/biases1/bias*
use_nesterov( 
�
2train/Adam/update_layer2/weights2/weight/ApplyAdam	ApplyAdamlayer2/weights2/weightlayer2/weights2/weight/Adamlayer2/weights2/weight/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonEtrain/gradients/layer2/softmax/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *)
_class
loc:@layer2/weights2/weight*
use_nesterov( 
�
/train/Adam/update_layer2/biases2/bias/ApplyAdam	ApplyAdamlayer2/biases2/biaslayer2/biases2/bias/Adamlayer2/biases2/bias/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilonBtrain/gradients/layer2/softmax/add_grad/tuple/control_dependency_1*
T0*
use_locking( *&
_class
loc:@layer2/biases2/bias*
use_nesterov( 
�
train/Adam/mulMultrain/beta1_power/readtrain/Adam/beta1)^train/Adam/update_conv1/weight/ApplyAdam'^train/Adam/update_conv1/bias/ApplyAdam)^train/Adam/update_conv2/weight/ApplyAdam'^train/Adam/update_conv2/bias/ApplyAdam3^train/Adam/update_layer1/weights1/weight/ApplyAdam0^train/Adam/update_layer1/biases1/bias/ApplyAdam3^train/Adam/update_layer2/weights2/weight/ApplyAdam0^train/Adam/update_layer2/biases2/bias/ApplyAdam*
T0*
_class
loc:@conv1/bias
�
train/Adam/AssignAssigntrain/beta1_powertrain/Adam/mul*
T0*
use_locking( *
validate_shape(*
_class
loc:@conv1/bias
�
train/Adam/mul_1Multrain/beta2_power/readtrain/Adam/beta2)^train/Adam/update_conv1/weight/ApplyAdam'^train/Adam/update_conv1/bias/ApplyAdam)^train/Adam/update_conv2/weight/ApplyAdam'^train/Adam/update_conv2/bias/ApplyAdam3^train/Adam/update_layer1/weights1/weight/ApplyAdam0^train/Adam/update_layer1/biases1/bias/ApplyAdam3^train/Adam/update_layer2/weights2/weight/ApplyAdam0^train/Adam/update_layer2/biases2/bias/ApplyAdam*
T0*
_class
loc:@conv1/bias
�
train/Adam/Assign_1Assigntrain/beta2_powertrain/Adam/mul_1*
T0*
use_locking( *
validate_shape(*
_class
loc:@conv1/bias
�

train/AdamNoOp)^train/Adam/update_conv1/weight/ApplyAdam'^train/Adam/update_conv1/bias/ApplyAdam)^train/Adam/update_conv2/weight/ApplyAdam'^train/Adam/update_conv2/bias/ApplyAdam3^train/Adam/update_layer1/weights1/weight/ApplyAdam0^train/Adam/update_layer1/biases1/bias/ApplyAdam3^train/Adam/update_layer2/weights2/weight/ApplyAdam0^train/Adam/update_layer2/biases2/bias/ApplyAdam^train/Adam/Assign^train/Adam/Assign_1
V
,accuracy/correct_prediction/ArgMax/dimensionConst*
value	B :*
dtype0
�
"accuracy/correct_prediction/ArgMaxArgMaxlayer2/softmax/Softmax,accuracy/correct_prediction/ArgMax/dimension*
output_type0	*
T0*

Tidx0
X
.accuracy/correct_prediction/ArgMax_1/dimensionConst*
value	B :*
dtype0
�
$accuracy/correct_prediction/ArgMax_1ArgMaxinput/Placeholder_1.accuracy/correct_prediction/ArgMax_1/dimension*
output_type0	*
T0*

Tidx0
}
!accuracy/correct_prediction/EqualEqual"accuracy/correct_prediction/ArgMax$accuracy/correct_prediction/ArgMax_1*
T0	
Y
accuracy/accuracy/CastCast!accuracy/correct_prediction/Equal*

DstT0*

SrcT0

E
accuracy/accuracy/ConstConst*
valueB: *
dtype0
u
accuracy/accuracy/MeanMeanaccuracy/accuracy/Castaccuracy/accuracy/Const*
	keep_dims( *
T0*

Tidx0
b
accuracy/accuracy/accuracy/tagsConst*+
value"B  Baccuracy/accuracy/accuracy*
dtype0
m
accuracy/accuracy/accuracyScalarSummaryaccuracy/accuracy/accuracy/tagsaccuracy/accuracy/Mean*
T0
�
Merge/MergeSummaryMergeSummarylayer1/weights1/summaries/mean"layer1/weights1/summaries/stddev_1layer1/weights1/summaries/maxlayer1/weights1/summaries/min#layer1/weights1/summaries/histogramlayer1/biases1/summaries/mean!layer1/biases1/summaries/stddev_1layer1/biases1/summaries/maxlayer1/biases1/summaries/min"layer1/biases1/summaries/histogramlayer2/weights2/summaries/mean"layer2/weights2/summaries/stddev_1layer2/weights2/summaries/maxlayer2/weights2/summaries/min#layer2/weights2/summaries/histogramlayer2/biases2/summaries/mean!layer2/biases2/summaries/stddev_1layer2/biases2/summaries/maxlayer2/biases2/summaries/min"layer2/biases2/summaries/histogram	loss/lossaccuracy/accuracy/accuracy*
N
�
initNoOp^conv1/weight/Assign^conv1/bias/Assign^conv2/weight/Assign^conv2/bias/Assign^layer1/weights1/weight/Assign^layer1/biases1/bias/Assign^layer2/weights2/weight/Assign^layer2/biases2/bias/Assign^train/beta1_power/Assign^train/beta2_power/Assign^conv1/weight/Adam/Assign^conv1/weight/Adam_1/Assign^conv1/bias/Adam/Assign^conv1/bias/Adam_1/Assign^conv2/weight/Adam/Assign^conv2/weight/Adam_1/Assign^conv2/bias/Adam/Assign^conv2/bias/Adam_1/Assign#^layer1/weights1/weight/Adam/Assign%^layer1/weights1/weight/Adam_1/Assign ^layer1/biases1/bias/Adam/Assign"^layer1/biases1/bias/Adam_1/Assign#^layer2/weights2/weight/Adam/Assign%^layer2/weights2/weight/Adam_1/Assign ^layer2/biases2/bias/Adam/Assign"^layer2/biases2/bias/Adam_1/Assign
:
ArgMax/dimensionConst*
value	B :*
dtype0
b
ArgMaxArgMaxlayer2/softmax/SoftmaxArgMax/dimension*
output_type0	*
T0*

Tidx0"