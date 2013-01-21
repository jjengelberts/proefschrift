camera {
 location <0.0, 3.0, 4.0>
 look_at <0.0, 0.0, 0.0>
 angle 15
}
 background { rgb <1,1,1> }
 light_source { <0, 0, 9> color rgb<.6, .6, .6> shadowless}
 light_source { <0, 9, 0> color rgb<.6, .6, .6> shadowless}
 light_source { <9, 0, 0> color rgb<.6, .6, .6> shadowless}
 #declare MeshGold = texture {
 pigment { color rgb<0.96, 0.82, 0.65> }
 finish { ambient 0.4 diffuse 0.4 specular 0.9}
 }
 #declare MeshRed = texture {
 pigment { color rgb<0.8, 0.2, 0.2> }
 finish { ambient 0.2 diffuse 0.6 specular 0.9}
 }
 #declare MeshBlue = texture {
 pigment { color rgb<0.2, 0.2, 0.8> }
 finish { ambient 0.2 diffuse 0.6 specular 0.9}
 }
 #declare BSAMBI = 0.2;
 #declare BSDIFF = 0.8;
 #declare BSSPEC = 0.8;
#declare colorA = 
 texture { 
 pigment { rgb<  0.1000  0.1000  0.1000 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
#declare colorB = 
 texture { 
 pigment { rgb<  1.0000  0.6235  0.0353 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
#declare colorC = 
 texture { 
 pigment { rgb<  0.0000  1.0000  0.0000 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
#declare colorD = 
 texture { 
 pigment { rgb<  0.3059  1.0000  0.7333 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
#declare colorE = 
 texture { 
 pigment { rgb<  0.0000  1.0000  1.0000 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
#declare colorF = 
 texture { 
 pigment { rgb<  1.0000  0.7490  0.0000 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
#declare colorG = 
 texture { 
 pigment { rgb<  0.5176  0.7569  0.8392 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
#declare colorH = 
 texture { 
 pigment { rgb<  0.4510  0.4510  0.4510 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
#declare colorI = 
 texture { 
 pigment { rgb<  0.7000  0.7000  0.7000 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
#declare colorJ = 
 texture { 
 pigment { rgb<  0.0627  0.6902  0.0627 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
#declare colorK = 
 texture { 
 pigment { rgb<  0.9373  0.7922  0.5490 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
#declare colorL = 
 texture { 
 pigment { rgb<  1.0000  0.4784  0.0000 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
#declare colorM = 
 texture { 
 pigment { rgb<  0.9020  0.8392  0.3608 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
#declare colorN = 
 texture { 
 pigment { rgb<  0.3000  0.3000  0.3000 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
#declare colorO = 
 texture { 
 pigment { rgb<  1.0000  1.0000  1.0000 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
 # declare molecule = union { 
sphere { 
<     0.20335,    -0.04535,    -0.12796>,      0.01669
 texture { colorN }
 }
 cylinder {
<     0.20335,    -0.04535,    -0.12796>, <     0.20335,    -0.04535,     0.12796>,      0.01669
 texture { colorN }
 }
 cylinder {
<     0.20335,    -0.04535,    -0.12796>, <    -0.04004,    -0.04535,    -0.20704>,      0.01669
 texture { colorN }
 }
 cylinder {
<     0.20335,    -0.04535,    -0.12796>, <     0.27380,    -0.04535,    -0.17914>,      0.01669
 texture { colorN }
 }
sphere { 
<     0.20335,    -0.04535,     0.12796>,      0.01669
 texture { colorN }
 }
 cylinder {
<     0.20335,    -0.04535,     0.12796>, <    -0.04004,    -0.04535,     0.20704>,      0.01669
 texture { colorN }
 }
 cylinder {
<     0.20335,    -0.04535,     0.12796>, <     0.27380,    -0.04535,     0.17914>,      0.01669
 texture { colorN }
 }
sphere { 
<    -0.04004,    -0.04535,     0.20704>,      0.01669
 texture { colorN }
 }
 cylinder {
<    -0.04004,    -0.04535,     0.20704>, <    -0.19047,    -0.04535,     0.00000>,      0.01669
 texture { colorN }
 }
 cylinder {
<    -0.04004,    -0.04535,     0.20704>, <    -0.06695,    -0.04535,     0.28986>,      0.01669
 texture { colorN }
 }
sphere { 
<    -0.04004,    -0.04535,    -0.20704>,      0.01669
 texture { colorN }
 }
 cylinder {
<    -0.04004,    -0.04535,    -0.20704>, <    -0.19047,    -0.04535,     0.00000>,      0.01669
 texture { colorN }
 }
 cylinder {
<    -0.04004,    -0.04535,    -0.20704>, <    -0.06695,    -0.04535,    -0.28986>,      0.01669
 texture { colorN }
 }
sphere { 
<    -0.19047,    -0.04535,     0.00000>,      0.01669
 texture { colorN }
 }
 cylinder {
<    -0.19047,    -0.04535,     0.00000>, <    -0.27754,    -0.04535,     0.00000>,      0.01669
 texture { colorN }
 }
sphere { 
<     0.34425,    -0.04535,    -0.23032>,      0.01669
 texture { colorO }
 }
 cylinder {
<     0.34425,    -0.04535,    -0.23032>, <     0.27380,    -0.04535,    -0.17914>,      0.01669
 texture { colorO }
 }
sphere { 
<     0.34425,    -0.04535,     0.23032>,      0.01669
 texture { colorO }
 }
 cylinder {
<     0.34425,    -0.04535,     0.23032>, <     0.27380,    -0.04535,     0.17914>,      0.01669
 texture { colorO }
 }
sphere { 
<    -0.09386,    -0.04535,     0.37267>,      0.01669
 texture { colorO }
 }
 cylinder {
<    -0.09386,    -0.04535,     0.37267>, <    -0.06695,    -0.04535,     0.28986>,      0.01669
 texture { colorO }
 }
sphere { 
<    -0.09386,    -0.04535,    -0.37267>,      0.01669
 texture { colorO }
 }
 cylinder {
<    -0.09386,    -0.04535,    -0.37267>, <    -0.06695,    -0.04535,    -0.28986>,      0.01669
 texture { colorO }
 }
sphere { 
<    -0.36462,    -0.04535,     0.00000>,      0.01669
 texture { colorO }
 }
 cylinder {
<    -0.36462,    -0.04535,     0.00000>, <    -0.27754,    -0.04535,     0.00000>,      0.01669
 texture { colorO }
 }
sphere { 
<     0.21,     0.31747,     0.00000>,      0.05
 texture { colorI }
 }
sphere { 
<     0.00,     0.00000,     0.05000>,      0.02
 texture { colorA }
 }
 }
 object {molecule}
