#Archivo​ ​members.rb 
class​ ​Members
​ ​def​ ​self​.​trapecio_abierto_der​(​u​,​ ​a​,​ ​b​)
​ ​ ​ ​if​ ​u​ ​>​ ​b
​ ​ ​ ​ ​ ​1
​ ​ ​ ​elsif​ ​u​ ​<​ ​a
​ ​ ​ ​ ​ ​0
​ ​ ​ ​elsif​ ​a​ ​<=​ ​u​ ​&&​ ​u​ ​<=​ ​b
​ ​ ​ ​ ​ ​(​u​ ​-​ ​a​)​ ​/​ ​(​b​ ​-​ ​a​)
​ ​ ​ ​end
​ ​end
​ ​def​ ​self​.​trapecio_abierto_izq​(​u​,​ ​a​,​ ​b​)
​ ​ ​ ​if​ ​u​ ​>​ ​b
​ ​ ​ ​ ​ ​0
​ ​ ​ ​elsif​ ​u​ ​<​ ​a
​ ​ ​ ​ ​ ​1
​ ​ ​ ​elsif​ ​a​ ​<=​ ​u​ ​&&​ ​u​ ​<=​ ​b
​ ​ ​ ​ ​ ​(​b​ ​-​ ​u​)​ ​/​ ​(​b​ ​-​ ​a​)
​ ​ ​ ​end
​ ​end
​ ​def​ ​self​.​triangular​(​u​,​ ​a​,​ ​b​,​ ​c​)
​ ​ ​ ​if​ ​u​ ​<​ ​a​ ​||​ ​u​ ​>​ ​c
​ ​ ​ ​ ​ ​0
​ ​ ​ ​elsif​ ​a​ ​<=​ ​u​ ​&&​ ​u​ ​<​ ​b
​ ​ ​ ​ ​ ​(​u​ ​-​ ​a​)​ ​/​ ​(​b​ ​-​ ​a​)
​ ​ ​ ​elsif​ ​b​ ​<=​ ​u​ ​&&​ ​u​ ​<=​ ​c
​ ​ ​ ​ ​ ​(​c​ ​-​ ​u​)​ ​/​ ​(​c​ ​-​ ​b​)
​ ​ ​ ​end
​ ​end
​ ​def​ ​self​.​trapezoidal​(​u​,​ ​a​,​ ​b​,​ c​ ​,​ ​d​)
​ ​ ​ ​if​ ​u​ ​<​ ​a​ ​||​ ​u​ ​>​ ​d
​ ​ ​ ​ ​ ​0
​ ​ ​ ​elsif​ ​b​ ​<=​ ​u​ ​&&​ ​u​ ​<=​ ​c
​ ​ ​ ​ ​ ​1
​ ​ ​ ​elsif​ ​a​ ​<=​ ​u​ ​&&​ ​u​ ​<​ ​b
​ ​ ​ ​ ​ ​(​u​ ​-​ ​a​)​ ​/​ ​(​b​ ​-​ ​a​)
​ ​ ​ ​elsif​ ​a​ ​<=​ ​u​ ​&&​ ​u​ ​<=​ ​b
​ ​ ​ ​ ​ ​(​d​ ​-​ ​u​)​ ​/​ ​(​d​ ​-​ ​c​)
​ ​ ​ ​end

​ ​end
​ ​def​ ​self​.​curva_s​(​u​,​ ​a​,​ ​b​)
​ ​ ​ ​if​ ​u​ ​>​ ​b
​ ​ ​ ​ ​ ​1
​ ​ ​ ​elsif​ ​u​ ​<​ ​a
​ ​ ​ ​ ​ ​0
​ ​ ​ ​elsif​ ​a​ ​<=​ ​u​ ​&&​ ​u​ ​<=​ ​b
​ ​ ​ ​ ​ ​(​1​ ​+​ ​Math.cos(((​u​ ​-​ ​b​)​ ​/​ ​(​b​ ​-​ ​a​))​ ​*​ ​Math.PI))​ ​/​ ​2
​ ​ ​ ​end
​ ​end
​ ​def​ ​self​.​curva_z​(​u​,​ ​a​,​ ​b​)
​ ​ ​ ​if​ ​u​ ​>​ ​b
​ ​ ​ ​ ​ ​1
​ ​ ​ ​elsif​ ​u​ ​<​ ​a
​ ​ ​ ​ ​ ​0
​ ​ ​ ​elsif​ ​a​ ​<=​ ​u​ ​&&​ ​u​ ​<=​ ​b
​ ​ ​ ​ ​ ​(​1​ ​+​ ​Math.cos(((​u​ ​-​ ​a​)​ ​/​ ​(​b​ ​-​ ​a​))​ ​*​ ​Math.PI))​ ​/​ ​2
​ ​ ​ ​end
​ ​end
​ ​def​ ​self​.​triangular_suave​(​u​,​ ​a​,​ ​b​,​ ​c​)
​ ​ ​ ​if​ ​u​ ​<​ ​a​ ​||​ ​u​ ​>​ ​c
​ ​ ​ ​ ​ ​0
​ ​ ​ ​elsif​ ​a​ ​<=​ ​u​ ​&&​ ​u​ ​<​ ​b
​ ​ ​ ​ ​ ​(​1​ ​+​ ​Math.cos(((​u​ ​-​ ​b​)​ ​/​ ​(​b​ ​-​ ​a​))​ ​*​ ​Math.PI))​ ​/​ ​2
​ ​ ​ ​elsif​ ​b​ ​<=​ ​u​ ​&&​ ​u​ ​<=​ ​c
​ ​ ​ ​ ​ ​(​1​ ​+​ ​Math.cos(((​b​ ​-​ ​u​)​ ​/​ ​(​c​ ​-​ ​b​))​ ​*​ ​Math.PI))​ ​/​ ​2
​ ​ ​ ​end
​ ​end
​ ​def​ ​self​.​trapezoidal_suave​(​u​,​ a
​ ​,​ ​b​,​ c​ ​,​ ​d​)
​ ​ ​ ​if​ ​u​ ​<​ ​a​ ​||​ ​u​ ​>​ ​d
​ ​ ​ ​ ​ ​0
​ ​ ​ ​elsif​ ​b​ ​<=​ ​u​ ​&&​ ​u​ ​<=​ ​c
​ ​ ​ ​ ​ ​1
​ ​ ​ ​elsif​ ​a​ ​<=​ ​u​ ​&&​ ​u​ ​<​ ​b
​ ​ ​ ​ ​ ​(​1​ ​+​ ​Math.cos(((​u​ ​-​ ​b​)​ ​/​ ​(​b​ ​-​ ​a​))​ ​*​ ​Math.PI))​ ​/​ ​2
​ ​ ​ ​elsif​ ​c​ ​<​ ​u​ ​&&​ ​u​ ​<=​ ​d
​ ​ ​ ​ ​ ​(​1​ ​+​ ​Math.cos(((​c​ ​-​ ​u​)​ ​/​ ​(​d​ ​-​ ​c​))​ ​*​ ​Math.PI))​ ​/​ ​2
​ ​ ​ ​end
​ ​end
end



#Archivo​ ​utils.rb 
class​ ​Utils
​ ​def​ ​self​.​min​(​a​,​ ​b​)
​ ​ ​ ​a​ ​<​ ​b​ ​?​ ​a​ ​:​ ​b
​ ​end
​ ​def​ ​self​.​max​(​a​,​ ​b​)
​ ​ ​ ​a​ ​<​ ​b​ ​?​ ​b​ ​:​ ​a
​ ​end
end



#Archivo​ ​operators.rb 
class​ ​Operators
​ ​def​ ​self​.​and​(​ma_u​,​ ​mb_u​)
​ ​ ​ ​Utils.min(​ma_u​,​ ​mb_u​)
​ ​end
​ ​def​ ​self​.​or​(​ma_u​,​ ​mb_u​)
​ ​ ​ ​Utils.max(​ma_u​,​ ​mb_u​)
​ ​end
​ ​def​ ​self​.​not​(​ma_u​)
​ ​ ​ ​1​ ​-​ ​ma_u
​ ​end
end



#Archivo​ ​fuzzy_implications.rb 
class​ ​FuzzyImplications
​ ​def​ ​self.​zadeh​(​ma_x​,​ ​mb_y​)
​ ​ ​ ​Utils.max(Utils.min(​ma_x​,​ ​mb_y​),​ ​Operators.not(​ma_x​))
​ ​end
​ ​def​ ​self.​mamdani​(​ma_x​,​ ​mb_y​)
​ ​ ​ ​Utils.min(​ma_x​,​ ​mb_y​)
​ ​end
​ ​def​ ​self.​godel​(​ma_x​,​ ​mb_y​)
​ ​ ​ ​ma_x​ ​<=​ ​mb_y​ ​?​ ​1​ ​:​ ​mb_y
​ ​end
end
