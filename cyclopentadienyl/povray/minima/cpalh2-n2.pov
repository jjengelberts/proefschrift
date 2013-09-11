camera {
 location <0.8, 1.6, 1.6>
 look_at <0.1, -0.07, 0.0>
 sky < 1, -0.07 , 0>
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
<     0.00000,     0.00000,    -0.12136>,      0.01225
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.00000,    -0.12136>, <    -0.00051,     0.08737,     0.00000>,      0.01225
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.00000,    -0.12136>, <     0.00000,    -0.14519,    -0.07762>,      0.01225
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.00000,    -0.12136>, <     0.00179,     0.01800,    -0.17616>,      0.01225
 texture { colorN }
 }
sphere { 
<     0.00000,     0.00000,     0.12136>,      0.01225
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.00000,     0.12136>, <    -0.00051,     0.08737,     0.00000>,      0.01225
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.00000,     0.12136>, <     0.00000,    -0.14519,     0.07762>,      0.01225
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.00000,     0.12136>, <     0.00179,     0.01800,     0.17616>,      0.01225
 texture { colorN }
 }
sphere { 
<    -0.00051,     0.08737,     0.00000>,      0.01225
 texture { colorN }
 }
 cylinder {
<    -0.00051,     0.08737,     0.00000>, <     0.00334,     0.14490,     0.00000>,      0.01225
 texture { colorN }
 }
sphere { 
<     0.00000,    -0.14519,    -0.07762>,      0.01225
 texture { colorN }
 }
 cylinder {
<     0.00000,    -0.14519,    -0.07762>, <     0.00000,    -0.14519,     0.07762>,      0.01225
 texture { colorN }
 }
 cylinder {
<     0.00000,    -0.14519,    -0.07762>, <    -0.01073,    -0.19110,    -0.11099>,      0.01225
 texture { colorN }
 }
 cylinder {
<     0.00000,    -0.14519,    -0.07762>, <     0.10701,    -0.14833,    -0.03881>,      0.01225
 texture { colorN }
 }
sphere { 
<     0.00000,    -0.14519,     0.07762>,      0.01225
 texture { colorN }
 }
 cylinder {
<     0.00000,    -0.14519,     0.07762>, <    -0.01073,    -0.19110,     0.11099>,      0.01225
 texture { colorN }
 }
 cylinder {
<     0.00000,    -0.14519,     0.07762>, <     0.10701,    -0.14833,     0.03881>,      0.01225
 texture { colorN }
 }
sphere { 
<     0.00358,     0.03600,    -0.23096>,      0.01225
 texture { colorO }
 }
 cylinder {
<     0.00358,     0.03600,    -0.23096>, <     0.00179,     0.01800,    -0.17616>,      0.01225
 texture { colorO }
 }
sphere { 
<     0.00358,     0.03600,     0.23096>,      0.01225
 texture { colorO }
 }
 cylinder {
<     0.00358,     0.03600,     0.23096>, <     0.00179,     0.01800,     0.17616>,      0.01225
 texture { colorO }
 }
sphere { 
<    -0.02146,    -0.23700,    -0.14435>,      0.01225
 texture { colorO }
 }
 cylinder {
<    -0.02146,    -0.23700,    -0.14435>, <    -0.01073,    -0.19110,    -0.11099>,      0.01225
 texture { colorO }
 }
sphere { 
<    -0.02146,    -0.23700,     0.14435>,      0.01225
 texture { colorO }
 }
 cylinder {
<    -0.02146,    -0.23700,     0.14435>, <    -0.01073,    -0.19110,     0.11099>,      0.01225
 texture { colorO }
 }
sphere { 
<     0.00718,     0.20244,     0.00000>,      0.01225
 texture { colorO }
 }
 cylinder {
<     0.00718,     0.20244,     0.00000>, <     0.00334,     0.14490,     0.00000>,      0.01225
 texture { colorO }
 }
sphere { 
<     0.21403,    -0.15146,     0.00000>,      0.01225
 texture { colorG }
 }
 cylinder {
<     0.21403,    -0.15146,     0.00000>, <     0.10701,    -0.14833,    -0.03881>,      0.01225
 texture { colorG }
 }
 cylinder {
<     0.21403,    -0.15146,     0.00000>, <     0.10701,    -0.14833,     0.03881>,      0.01225
 texture { colorG }
 }
 cylinder {
<     0.21403,    -0.15146,     0.00000>, <     0.24753,    -0.22954,     0.00000>,      0.01225
 texture { colorG }
 }
 cylinder {
<     0.21403,    -0.15146,     0.00000>, <     0.26098,    -0.08196,     0.00000>,      0.01225
 texture { colorG }
 }
sphere { 
<     0.28104,    -0.30762,     0.00000>,      0.01225
 texture { colorO }
 }
 cylinder {
<     0.28104,    -0.30762,     0.00000>, <     0.24753,    -0.22954,     0.00000>,      0.01225
 texture { colorO }
 }
sphere { 
<     0.30793,    -0.01246,     0.00000>,      0.01225
 texture { colorO }
 }
 cylinder {
<     0.30793,    -0.01246,     0.00000>, <     0.26098,    -0.08196,     0.00000>,      0.01225
 texture { colorO }
 }
 }
 object {molecule}
