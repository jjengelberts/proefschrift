camera {
 location < 2.4, 1.6, -0.8>
 look_at < 0.28, 0.12, -0.18>
 sky < 0.18, 0, -1>
 angle 15
}
 light_source { <5, 5, -5> color rgb<1, 1, 1> shadowless }
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
<    -0.13041,     0.00000,     0.00000>,      0.01320
 texture { colorN }
 }
 cylinder {
<    -0.13041,     0.00000,     0.00000>, <     0.00000,     0.09445,     0.00083>,      0.01320
 texture { colorN }
 }
 cylinder {
<    -0.13041,     0.00000,     0.00000>, <    -0.08316,    -0.15695,     0.00000>,      0.01320
 texture { colorN }
 }
 cylinder {
<    -0.13041,     0.00000,     0.00000>, <    -0.18951,     0.01924,    -0.00297>,      0.01320
 texture { colorN }
 }
sphere { 
<     0.13041,     0.00000,     0.00000>,      0.01320
 texture { colorN }
 }
 cylinder {
<     0.13041,     0.00000,     0.00000>, <     0.00000,     0.09445,     0.00083>,      0.01320
 texture { colorN }
 }
 cylinder {
<     0.13041,     0.00000,     0.00000>, <     0.08316,    -0.15695,     0.00000>,      0.01320
 texture { colorN }
 }
 cylinder {
<     0.13041,     0.00000,     0.00000>, <     0.18951,     0.01924,    -0.00297>,      0.01320
 texture { colorN }
 }
sphere { 
<     0.00000,     0.09445,     0.00083>,      0.01320
 texture { colorN }
 }
 cylinder {
<     0.00000,     0.09445,     0.00083>, <     0.00000,     0.15642,    -0.00387>,      0.01320
 texture { colorN }
 }
sphere { 
<    -0.08316,    -0.15695,     0.00000>,      0.01320
 texture { colorN }
 }
 cylinder {
<    -0.08316,    -0.15695,     0.00000>, <     0.08316,    -0.15695,     0.00000>,      0.01320
 texture { colorN }
 }
 cylinder {
<    -0.08316,    -0.15695,     0.00000>, <    -0.11932,    -0.20618,     0.01168>,      0.01320
 texture { colorN }
 }
 cylinder {
<    -0.08316,    -0.15695,     0.00000>, <    -0.04158,    -0.16421,    -0.11513>,      0.01320
 texture { colorN }
 }
sphere { 
<     0.08316,    -0.15695,     0.00000>,      0.01320
 texture { colorN }
 }
 cylinder {
<     0.08316,    -0.15695,     0.00000>, <     0.11932,    -0.20618,     0.01168>,      0.01320
 texture { colorN }
 }
 cylinder {
<     0.08316,    -0.15695,     0.00000>, <     0.04158,    -0.16421,    -0.11513>,      0.01320
 texture { colorN }
 }
sphere { 
<    -0.24860,     0.03848,    -0.00594>,      0.01320
 texture { colorO }
 }
 cylinder {
<    -0.24860,     0.03848,    -0.00594>, <    -0.18951,     0.01924,    -0.00297>,      0.01320
 texture { colorO }
 }
sphere { 
<     0.24860,     0.03848,    -0.00594>,      0.01320
 texture { colorO }
 }
 cylinder {
<     0.24860,     0.03848,    -0.00594>, <     0.18951,     0.01924,    -0.00297>,      0.01320
 texture { colorO }
 }
sphere { 
<    -0.15547,    -0.25542,     0.02336>,      0.01320
 texture { colorO }
 }
 cylinder {
<    -0.15547,    -0.25542,     0.02336>, <    -0.11932,    -0.20618,     0.01168>,      0.01320
 texture { colorO }
 }
sphere { 
<     0.15547,    -0.25542,     0.02336>,      0.01320
 texture { colorO }
 }
 cylinder {
<     0.15547,    -0.25542,     0.02336>, <     0.11932,    -0.20618,     0.01168>,      0.01320
 texture { colorO }
 }
sphere { 
<     0.00000,     0.21840,    -0.00858>,      0.01320
 texture { colorO }
 }
 cylinder {
<     0.00000,     0.21840,    -0.00858>, <     0.00000,     0.15642,    -0.00387>,      0.01320
 texture { colorO }
 }
sphere { 
<     0.00000,    -0.17148,    -0.23027>,      0.01320
 texture { colorK }
 }
 cylinder {
<     0.00000,    -0.17148,    -0.23027>, <    -0.04158,    -0.16421,    -0.11513>,      0.01320
 texture { colorK }
 }
 cylinder {
<     0.00000,    -0.17148,    -0.23027>, <     0.04158,    -0.16421,    -0.11513>,      0.01320
 texture { colorK }
 }
 cylinder {
<     0.00000,    -0.17148,    -0.23027>, <     0.00000,    -0.26054,    -0.22848>,      0.01320
 texture { colorK }
 }
sphere { 
<     0.00000,    -0.34960,    -0.22669>,      0.01320
 texture { colorO }
 }
 cylinder {
<     0.00000,    -0.34960,    -0.22669>, <     0.00000,    -0.26054,    -0.22848>,      0.01320
 texture { colorO }
 }
 }
 object {molecule}
