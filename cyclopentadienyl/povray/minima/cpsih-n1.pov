camera {
 location < -2.5, 2.5, 1>
 look_at < 0, 0, 0>
 sky < 0.05, 0, 1>
 angle 15
}
 light_source { <-5, 5, 5> color rgb<1, 1, 1> shadowless }
 background { color rgb<1, 1, 1> }
 #declare BSAMBI = 0.2;
 #declare BSDIFF = 0.8;
 #declare BSSPEC = 0.8;
#declare colorK = 
 texture { 
 pigment { rgb<  0.8  0.8  0.8 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
#declare colorN = 
 texture { 
 pigment { rgb<  0.4  0.4  0.4 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
#declare colorO = 
 texture { 
 pigment { rgb<  1.0  1.0 1.0 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
 # declare molecule = union { 
sphere { 
<    -0.16282,     0.00000,     0.00000>,      0.01634
 texture { colorN }
 }
 cylinder {
<    -0.16282,     0.00000,     0.00000>, <     0.00000,     0.11953,    -0.02332>,      0.01634
 texture { colorN }
 }
 cylinder {
<    -0.16282,     0.00000,     0.00000>, <    -0.09809,    -0.19421,     0.00000>,      0.01634
 texture { colorN }
 }
 cylinder {
<    -0.16282,     0.00000,     0.00000>, <    -0.23598,     0.02344,    -0.00493>,      0.01634
 texture { colorN }
 }
 cylinder {
<    -0.16282,     0.00000,     0.00000>, <    -0.08141,     0.03905,     0.13679>,      0.01634
 texture { colorN }
 }
sphere { 
<     0.16282,     0.00000,     0.00000>,      0.01634
 texture { colorN }
 }
 cylinder {
<     0.16282,     0.00000,     0.00000>, <     0.00000,     0.11953,    -0.02332>,      0.01634
 texture { colorN }
 }
 cylinder {
<     0.16282,     0.00000,     0.00000>, <     0.09809,    -0.19421,     0.00000>,      0.01634
 texture { colorN }
 }
 cylinder {
<     0.16282,     0.00000,     0.00000>, <     0.23598,     0.02344,    -0.00493>,      0.01634
 texture { colorN }
 }
 cylinder {
<     0.16282,     0.00000,     0.00000>, <     0.08141,     0.03905,     0.13679>,      0.01634
 texture { colorN }
 }
sphere { 
<     0.00000,     0.11953,    -0.02332>,      0.01634
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.11953,    -0.02332>, <     0.00000,     0.19450,    -0.03977>,      0.01634
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.11953,    -0.02332>, <     0.00000,     0.09881,     0.12513>,      0.01634
 texture { colorN }
 }
sphere { 
<    -0.09809,    -0.19421,     0.00000>,      0.01634
 texture { colorN }
 }
 cylinder {
<    -0.09809,    -0.19421,     0.00000>, <     0.09809,    -0.19421,     0.00000>,      0.01634
 texture { colorN }
 }
 cylinder {
<    -0.09809,    -0.19421,     0.00000>, <    -0.14363,    -0.25561,     0.00876>,      0.01634
 texture { colorN }
 }
sphere { 
<     0.09809,    -0.19421,     0.00000>,      0.01634
 texture { colorN }
 }
 cylinder {
<     0.09809,    -0.19421,     0.00000>, <     0.14363,    -0.25561,     0.00876>,      0.01634
 texture { colorN }
 }
sphere { 
<    -0.30914,     0.04688,    -0.00987>,      0.01634
 texture { colorO }
 }
 cylinder {
<    -0.30914,     0.04688,    -0.00987>, <    -0.23598,     0.02344,    -0.00493>,      0.01634
 texture { colorO }
 }
sphere { 
<     0.30914,     0.04688,    -0.00987>,      0.01634
 texture { colorO }
 }
 cylinder {
<     0.30914,     0.04688,    -0.00987>, <     0.23598,     0.02344,    -0.00493>,      0.01634
 texture { colorO }
 }
sphere { 
<    -0.18918,    -0.31701,     0.01751>,      0.01634
 texture { colorO }
 }
 cylinder {
<    -0.18918,    -0.31701,     0.01751>, <    -0.14363,    -0.25561,     0.00876>,      0.01634
 texture { colorO }
 }
sphere { 
<     0.18918,    -0.31701,     0.01751>,      0.01634
 texture { colorO }
 }
 cylinder {
<     0.18918,    -0.31701,     0.01751>, <     0.14363,    -0.25561,     0.00876>,      0.01634
 texture { colorO }
 }
sphere { 
<     0.00000,     0.26948,    -0.05622>,      0.01634
 texture { colorO }
 }
 cylinder {
<     0.00000,     0.26948,    -0.05622>, <     0.00000,     0.19450,    -0.03977>,      0.01634
 texture { colorO }
 }
sphere { 
<     0.00000,     0.07810,     0.27358>,      0.01634
 texture { colorK }
 }
 cylinder {
<     0.00000,     0.07810,     0.27358>, <    -0.08141,     0.03905,     0.13679>,      0.01634
 texture { colorK }
 }
 cylinder {
<     0.00000,     0.07810,     0.27358>, <     0.08141,     0.03905,     0.13679>,      0.01634
 texture { colorK }
 }
 cylinder {
<     0.00000,     0.07810,     0.27358>, <     0.00000,     0.09881,     0.12513>,      0.01634
 texture { colorK }
 }
 cylinder {
<     0.00000,     0.07810,     0.27358>, <     0.00000,     0.18844,     0.28200>,      0.01634
 texture { colorK }
 }
sphere { 
<     0.00000,     0.29878,     0.29042>,      0.01634
 texture { colorO }
 }
 cylinder {
<     0.00000,     0.29878,     0.29042>, <     0.00000,     0.18844,     0.28200>,      0.01634
 texture { colorO }
 }
 }
 object {molecule}