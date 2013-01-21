camera {
 location <1.0, 2.0, 2.0>
 look_at <0.1, -0.07, 0.0>
 sky < 1, 0 , 0>
 angle 15
}
 light_source { <9, 9, 9> color rgb<1, 1, 1> shadowless }
 background { color rgb<1, 1, 1> }
 #declare BSAMBI = 0.2;
 #declare BSDIFF = 0.8;
 #declare BSSPEC = 0.8;
#declare colorG = 
 texture { 
 pigment { rgb<  0.7  0.7  0.7 >}
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
<     0.00000,     0.00000,    -0.15047>,      0.01502
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.00000,    -0.15047>, <    -0.01045,     0.11018,     0.00000>,      0.01502
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.00000,    -0.15047>, <     0.00000,    -0.17691,    -0.09115>,      0.01502
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.00000,    -0.15047>, <    -0.00382,     0.02184,    -0.21765>,      0.01502
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.00000,    -0.15047>, <     0.12892,     0.01554,    -0.07523>,      0.01502
 texture { colorN }
 }
sphere { 
<     0.00000,     0.00000,     0.15047>,      0.01502
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.00000,     0.15047>, <    -0.01045,     0.11018,     0.00000>,      0.01502
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.00000,     0.15047>, <     0.00000,    -0.17691,     0.09115>,      0.01502
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.00000,     0.15047>, <    -0.00382,     0.02184,     0.21765>,      0.01502
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.00000,     0.15047>, <     0.12892,     0.01554,     0.07523>,      0.01502
 texture { colorN }
 }
sphere { 
<    -0.01045,     0.11018,     0.00000>,      0.01502
 texture { colorN }
 }
 cylinder {
<    -0.01045,     0.11018,     0.00000>, <    -0.01605,     0.18066,     0.00000>,      0.01502
 texture { colorN }
 }
 cylinder {
<    -0.01045,     0.11018,     0.00000>, <     0.12369,     0.07063,     0.00000>,      0.01502
 texture { colorN }
 }
sphere { 
<     0.00000,    -0.17691,    -0.09115>,      0.01502
 texture { colorN }
 }
 cylinder {
<     0.00000,    -0.17691,    -0.09115>, <     0.00000,    -0.17691,     0.09115>,      0.01502
 texture { colorN }
 }
 cylinder {
<     0.00000,    -0.17691,    -0.09115>, <     0.00557,    -0.23383,    -0.13273>,      0.01502
 texture { colorN }
 }
sphere { 
<     0.00000,    -0.17691,     0.09115>,      0.01502
 texture { colorN }
 }
 cylinder {
<     0.00000,    -0.17691,     0.09115>, <     0.00557,    -0.23383,     0.13273>,      0.01502
 texture { colorN }
 }
sphere { 
<    -0.00764,     0.04369,    -0.28484>,      0.01502
 texture { colorO }
 }
 cylinder {
<    -0.00764,     0.04369,    -0.28484>, <    -0.00382,     0.02184,    -0.21765>,      0.01502
 texture { colorO }
 }
sphere { 
<    -0.00764,     0.04369,     0.28484>,      0.01502
 texture { colorO }
 }
 cylinder {
<    -0.00764,     0.04369,     0.28484>, <    -0.00382,     0.02184,     0.21765>,      0.01502
 texture { colorO }
 }
sphere { 
<     0.01113,    -0.29074,    -0.17430>,      0.01502
 texture { colorO }
 }
 cylinder {
<     0.01113,    -0.29074,    -0.17430>, <     0.00557,    -0.23383,    -0.13273>,      0.01502
 texture { colorO }
 }
sphere { 
<     0.01113,    -0.29074,     0.17430>,      0.01502
 texture { colorO }
 }
 cylinder {
<     0.01113,    -0.29074,     0.17430>, <     0.00557,    -0.23383,     0.13273>,      0.01502
 texture { colorO }
 }
sphere { 
<    -0.02165,     0.25115,     0.00000>,      0.01502
 texture { colorO }
 }
 cylinder {
<    -0.02165,     0.25115,     0.00000>, <    -0.01605,     0.18066,     0.00000>,      0.01502
 texture { colorO }
 }
sphere { 
<     0.25783,     0.03108,     0.00000>,      0.01502
 texture { colorG }
 }
 cylinder {
<     0.25783,     0.03108,     0.00000>, <     0.12892,     0.01554,    -0.07523>,      0.01502
 texture { colorG }
 }
 cylinder {
<     0.25783,     0.03108,     0.00000>, <     0.12892,     0.01554,     0.07523>,      0.01502
 texture { colorG }
 }
 cylinder {
<     0.25783,     0.03108,     0.00000>, <     0.12369,     0.07063,     0.00000>,      0.01502
 texture { colorG }
 }
 cylinder {
<     0.25783,     0.03108,     0.00000>, <     0.31558,    -0.05427,     0.00000>,      0.01502
 texture { colorG }
 }
 cylinder {
<     0.25783,     0.03108,     0.00000>, <     0.30738,     0.12303,     0.00000>,      0.01502
 texture { colorG }
 }
sphere { 
<     0.37333,    -0.13962,     0.00000>,      0.01502
 texture { colorO }
 }
 cylinder {
<     0.37333,    -0.13962,     0.00000>, <     0.31558,    -0.05427,     0.00000>,      0.01502
 texture { colorO }
 }
sphere { 
<     0.35693,     0.21497,     0.00000>,      0.01502
 texture { colorO }
 }
 cylinder {
<     0.35693,     0.21497,     0.00000>, <     0.30738,     0.12303,     0.00000>,      0.01502
 texture { colorO }
 }
 }
 object {molecule}
