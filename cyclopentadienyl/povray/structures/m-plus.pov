camera { location <-4.5, -1.5, 0.0> look_at <0.0, -0.07, 0.0> sky <0.0, -0.1, 0.0> angle 15} light_source { <-9, 0, 0> color rgb<0.7, 0.7, 0.7> shadowless} light_source { <0, -9, 0> color rgb<0.7, 0.7, 0.7> shadowless} background {<1, 1, 1>} #declare MeshRed = texture { pigment { color rgb<0.9, 0.9, 0.9> } finish { ambient 0.2 diffuse 0.6 specular 0.9} } #declare MeshBlue = texture { pigment { color rgb<0.5, 0.5, 0.5> } finish { ambient 0.2 diffuse 0.6 specular 0.9} } #declare BSAMBI = 0.2; #declare BSDIFF = 0.8; #declare BSSPEC = 0.8;#declare colorA =  texture {  pigment { rgb<  1.0000  0.0000  0.0000 >} finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC} }#declare colorG =  texture {  pigment { rgb<  1.00  1.00  1.00 >} finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC} }#declare colorN =  texture {  pigment { rgb<  0.2  0.2  0.2 >} finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC} }#declare colorO =  texture {  pigment { rgb<  1.0000  1.0000  1.0000 >} finish {ambient BSAMBI diffuse BSDIFF specular BSSPEC} } # declare molecule = union { sphere { <    -0.11300,    -0.27429,     0.00000>,      0.07 texture { colorG } } } object {molecule}