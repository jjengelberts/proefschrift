camera {
 location <-2.5, 1.8, 1.0>
 look_at <0.0, 0.0, 0.1>
 sky <0.0, -0.18, 1.0>
 angle 15
}
 light_source { <-5, 5, 5> color rgb<1, 1, 1> shadowless }
 background { color rgb <1, 1, 1> }
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
 pigment { rgb<  1.0  1.0  1.0 >}
 finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC}
 }
 # declare molecule = union { 
sphere { 
<    -0.14088,     0.00000,     0.00000>,      0.01378
 texture { colorN }
 }
 cylinder {
<    -0.14088,     0.00000,     0.00000>, <     0.00000,     0.11062,     0.00791>,      0.01378
 texture { colorN }
 }
 cylinder {
<    -0.14088,     0.00000,     0.00000>, <    -0.08724,    -0.15359,     0.00000>,      0.01378
 texture { colorN }
 }
 cylinder {
<    -0.14088,     0.00000,     0.00000>, <    -0.20272,     0.01986,    -0.00040>,      0.01378
 texture { colorN }
 }
sphere { 
<     0.14088,     0.00000,     0.00000>,      0.01378
 texture { colorN }
 }
 cylinder {
<     0.14088,     0.00000,     0.00000>, <     0.00000,     0.11062,     0.00791>,      0.01378
 texture { colorN }
 }
 cylinder {
<     0.14088,     0.00000,     0.00000>, <     0.08724,    -0.15359,     0.00000>,      0.01378
 texture { colorN }
 }
 cylinder {
<     0.14088,     0.00000,     0.00000>, <     0.20272,     0.01986,    -0.00040>,      0.01378
 texture { colorN }
 }
sphere { 
<     0.00000,     0.11062,     0.00791>,      0.01378
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.11062,     0.00791>, <     0.00000,     0.15916,    -0.03652>,      0.01378
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.11062,     0.00791>, <     0.00000,     0.15999,     0.11158>,      0.01378
 texture { colorN }
 }
sphere { 
<    -0.08724,    -0.15359,     0.00000>,      0.01378
 texture { colorN }
 }
 cylinder {
<    -0.08724,    -0.15359,     0.00000>, <     0.08724,    -0.15359,     0.00000>,      0.01378
 texture { colorN }
 }
 cylinder {
<    -0.08724,    -0.15359,     0.00000>, <    -0.12421,    -0.20706,     0.00002>,      0.01378
 texture { colorN }
 }
sphere { 
<     0.08724,    -0.15359,     0.00000>,      0.01378
 texture { colorN }
 }
 cylinder {
<     0.08724,    -0.15359,     0.00000>, <     0.12421,    -0.20706,     0.00002>,      0.01378
 texture { colorN }
 }
sphere { 
<    -0.26455,     0.03971,    -0.00079>,      0.01378
 texture { colorO }
 }
 cylinder {
<    -0.26455,     0.03971,    -0.00079>, <    -0.20272,     0.01986,    -0.00040>,      0.01378
 texture { colorO }
 }
sphere { 
<     0.26455,     0.03971,    -0.00079>,      0.01378
 texture { colorO }
 }
 cylinder {
<     0.26455,     0.03971,    -0.00079>, <     0.20272,     0.01986,    -0.00040>,      0.01378
 texture { colorO }
 }
sphere { 
<    -0.16117,    -0.26052,     0.00005>,      0.01378
 texture { colorO }
 }
 cylinder {
<    -0.16117,    -0.26052,     0.00005>, <    -0.12421,    -0.20706,     0.00002>,      0.01378
 texture { colorO }
 }
sphere { 
<     0.16117,    -0.26052,     0.00005>,      0.01378
 texture { colorO }
 }
 cylinder {
<     0.16117,    -0.26052,     0.00005>, <     0.12421,    -0.20706,     0.00002>,      0.01378
 texture { colorO }
 }
sphere { 
<     0.00000,     0.20770,    -0.08094>,      0.01378
 texture { colorO }
 }
 cylinder {
<     0.00000,     0.20770,    -0.08094>, <     0.00000,     0.15916,    -0.03652>,      0.01378
 texture { colorO }
 }
sphere { 
<     0.00000,     0.20937,     0.21526>,      0.01378
 texture { colorK }
 }
 cylinder {
<     0.00000,     0.20937,     0.21526>, <     0.00000,     0.15999,     0.11158>,      0.01378
 texture { colorK }
 }
 cylinder {
<     0.00000,     0.20937,     0.21526>, <     0.00000,     0.14688,     0.27856>,      0.01378
 texture { colorK }
 }
 cylinder {
<     0.00000,     0.20937,     0.21526>, <     0.07214,     0.26128,     0.22458>,      0.01378
 texture { colorK }
 }
 cylinder {
<     0.00000,     0.20937,     0.21526>, <    -0.07214,     0.26128,     0.22458>,      0.01378
 texture { colorK }
 }
sphere { 
<     0.00000,     0.08439,     0.34186>,      0.01378
 texture { colorO }
 }
 cylinder {
<     0.00000,     0.08439,     0.34186>, <     0.00000,     0.14688,     0.27856>,      0.01378
 texture { colorO }
 }
sphere { 
<     0.14427,     0.31319,     0.23389>,      0.01378
 texture { colorO }
 }
 cylinder {
<     0.14427,     0.31319,     0.23389>, <     0.07214,     0.26128,     0.22458>,      0.01378
 texture { colorO }
 }
sphere { 
<    -0.14427,     0.31319,     0.23389>,      0.01378
 texture { colorO }
 }
 cylinder {
<    -0.14427,     0.31319,     0.23389>, <    -0.07214,     0.26128,     0.22458>,      0.01378
 texture { colorO }
 }
 }
 object {molecule}
