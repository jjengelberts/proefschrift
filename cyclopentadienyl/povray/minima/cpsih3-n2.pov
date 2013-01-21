camera {
 location <-2.4, 1.8, 1.0>
 look_at <0.0, 0.0, 0.1>
 sky <0.0, -0.14, 1.0>
 angle 15
}
 light_source { <-5, 5, 5> color rgb<1, 1, 1> shadowless }
 background { color rgb<1, 1, 1> }
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
<    -0.12737,     0.00000,     0.00000>,      0.01280
 texture { colorN }
 }
 cylinder {
<    -0.12737,     0.00000,     0.00000>, <     0.00000,     0.09027,     0.00008>,      0.01280
 texture { colorN }
 }
 cylinder {
<    -0.12737,     0.00000,     0.00000>, <    -0.08192,    -0.15094,     0.00000>,      0.01280
 texture { colorN }
 }
 cylinder {
<    -0.12737,     0.00000,     0.00000>, <    -0.18453,     0.01897,     0.00258>,      0.01280
 texture { colorN }
 }
sphere { 
<     0.12737,     0.00000,     0.00000>,      0.01280
 texture { colorN }
 }
 cylinder {
<     0.12737,     0.00000,     0.00000>, <     0.00000,     0.09027,     0.00008>,      0.01280
 texture { colorN }
 }
 cylinder {
<     0.12737,     0.00000,     0.00000>, <     0.08192,    -0.15094,     0.00000>,      0.01280
 texture { colorN }
 }
 cylinder {
<     0.12737,     0.00000,     0.00000>, <     0.18453,     0.01897,     0.00258>,      0.01280
 texture { colorN }
 }
sphere { 
<     0.00000,     0.09027,     0.00008>,      0.01280
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.09027,     0.00008>, <     0.00000,     0.15053,     0.00301>,      0.01280
 texture { colorN }
 }
sphere { 
<    -0.08192,    -0.15094,     0.00000>,      0.01280
 texture { colorN }
 }
 cylinder {
<    -0.08192,    -0.15094,     0.00000>, <     0.08192,    -0.15094,     0.00000>,      0.01280
 texture { colorN }
 }
 cylinder {
<    -0.08192,    -0.15094,     0.00000>, <    -0.11623,    -0.19840,    -0.01463>,      0.01280
 texture { colorN }
 }
 cylinder {
<    -0.08192,    -0.15094,     0.00000>, <    -0.04096,    -0.17497,     0.10976>,      0.01280
 texture { colorN }
 }
sphere { 
<     0.08192,    -0.15094,     0.00000>,      0.01280
 texture { colorN }
 }
 cylinder {
<     0.08192,    -0.15094,     0.00000>, <     0.11623,    -0.19840,    -0.01463>,      0.01280
 texture { colorN }
 }
 cylinder {
<     0.08192,    -0.15094,     0.00000>, <     0.04096,    -0.17497,     0.10976>,      0.01280
 texture { colorN }
 }
sphere { 
<    -0.24170,     0.03793,     0.00516>,      0.01280
 texture { colorO }
 }
 cylinder {
<    -0.24170,     0.03793,     0.00516>, <    -0.18453,     0.01897,     0.00258>,      0.01280
 texture { colorO }
 }
sphere { 
<     0.24170,     0.03793,     0.00516>,      0.01280
 texture { colorO }
 }
 cylinder {
<     0.24170,     0.03793,     0.00516>, <     0.18453,     0.01897,     0.00258>,      0.01280
 texture { colorO }
 }
sphere { 
<    -0.15053,    -0.24587,    -0.02925>,      0.01280
 texture { colorO }
 }
 cylinder {
<    -0.15053,    -0.24587,    -0.02925>, <    -0.11623,    -0.19840,    -0.01463>,      0.01280
 texture { colorO }
 }
sphere { 
<     0.15053,    -0.24587,    -0.02925>,      0.01280
 texture { colorO }
 }
 cylinder {
<     0.15053,    -0.24587,    -0.02925>, <     0.11623,    -0.19840,    -0.01463>,      0.01280
 texture { colorO }
 }
sphere { 
<     0.00000,     0.21079,     0.00594>,      0.01280
 texture { colorO }
 }
 cylinder {
<     0.00000,     0.21079,     0.00594>, <     0.00000,     0.15053,     0.00301>,      0.01280
 texture { colorO }
 }
sphere { 
<     0.00000,    -0.19900,     0.21951>,      0.01280
 texture { colorK }
 }
 cylinder {
<     0.00000,    -0.19900,     0.21951>, <    -0.04096,    -0.17497,     0.10976>,      0.01280
 texture { colorK }
 }
 cylinder {
<     0.00000,    -0.19900,     0.21951>, <     0.04096,    -0.17497,     0.10976>,      0.01280
 texture { colorK }
 }
 cylinder {
<     0.00000,    -0.19900,     0.21951>, <     0.00000,    -0.12645,     0.25819>,      0.01280
 texture { colorK }
 }
 cylinder {
<     0.00000,    -0.19900,     0.21951>, <    -0.06500,    -0.24529,     0.24363>,      0.01280
 texture { colorK }
 }
 cylinder {
<     0.00000,    -0.19900,     0.21951>, <     0.06500,    -0.24529,     0.24363>,      0.01280
 texture { colorK }
 }
sphere { 
<     0.00000,    -0.05390,     0.29687>,      0.01280
 texture { colorO }
 }
 cylinder {
<     0.00000,    -0.05390,     0.29687>, <     0.00000,    -0.12645,     0.25819>,      0.01280
 texture { colorO }
 }
sphere { 
<    -0.12999,    -0.29158,     0.26775>,      0.01280
 texture { colorO }
 }
 cylinder {
<    -0.12999,    -0.29158,     0.26775>, <    -0.06500,    -0.24529,     0.24363>,      0.01280
 texture { colorO }
 }
sphere { 
<     0.12999,    -0.29158,     0.26775>,      0.01280
 texture { colorO }
 }
 cylinder {
<     0.12999,    -0.29158,     0.26775>, <     0.06500,    -0.24529,     0.24363>,      0.01280
 texture { colorO }
 }
 }
 object {molecule}
