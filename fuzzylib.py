#**********************************************************************
# Project           : simple fuzzy member function library
# Program name      : fuzzylib.h
#
#    * Author            : Diego Vallejo
#    *
#    * Date created      : 12/10/2017
#
# Purpose          :  data for the study of fuzzy inference systems.
#**********************************************************************

class GlobalMembers(object):
	def __init__(self):
		self._PI = Math.acos(-1)

	def trapecioAbiertoDer(u, a, b):
		if u > b:
			return 1.0
		if u < a:
			return 0.0
		if a <= u != 0 and u <= b:
			return (u - a) / (b - a)

	trapecioAbiertoDer = staticmethod(trapecioAbiertoDer)

	def trapecioAbiertoIzq(u, a, b):
		if u > b:
			return 0.0
		if u < a:
			return 1.0
		if a <= u != 0 and u <= b:
			return (b - u) / (b - a)

	trapecioAbiertoIzq = staticmethod(trapecioAbiertoIzq)

	def triangular(u, a, b, c):
		if u < a or u > c:
			return 0.0
		if a <= u != 0 and u < b:
			return (u - a) / (b - a)
		if b <= u != 0 and u <= c:
			return (c - u) / (c - b)

	triangular = staticmethod(triangular)

	def Trapezoidal(u, a, b, c, d):
		if u < a or u > d:
			return 0.0
		if b <= u != 0 and u <= c:
			return 1.0
		if a <= u != 0 and u < b:
			return (u - a) / (b - a)
		if c < u and u <= d:
			return (d - u) / (d - c)

	Trapezoidal = staticmethod(Trapezoidal)

	def curvaS(u, a, b):
		if u > b:
			return 1.0
		if u < a:
			return 0.0
		if a <= u != 0 and u <= b:
			return 0.5 * (1 + Math.Cos((u - b) / (b - a) * self._PI))

	curvaS = staticmethod(curvaS)

	def curvaZ(u, a, b):
		if u > b:
			return 0.0
		if u < a:
			return 1.0
		if a <= u != 0 and u <= b:
			return 0.5 * (1 + Math.Cos((u - a) / (b - a) * self._PI))

	curvaZ = staticmethod(curvaZ)

	def triangularSuave(u, a, b, c):
		if u < a or u > c:
			return 0.0
		if a <= u != 0 and u < b:
			return 0.5 * (1 + Math.Cos((u - b) / (b - a) * self._PI))
		if b <= u != 0 and u <= c:
			return 0.5 * (1 + Math.Cos((b - u) / (c - b) * self._PI))
 
triangularSuave = staticmethod(triangularSuave)

def TrapezoidalSuave(u, a, b, c, d):
		if u < a or u > d:
			return 0.0
		if b <= u != 0 and u <= c:
			return 1.0
		if a <= u != 0 and u < b:
			return 0.5 * (1 + Math.Cos((u - b) / (b - a) * self._PI))
		if c < u and u <= d:
			return 0.5 * (1 + Math.Cos((c - u) / (d - c) * self._PI))

	TrapezoidalSuave = staticmethod(TrapezoidalSuave)

	# FUNCIONES DE APOYO
	def Min(a, b):
		if a < b:
			return a
		return b

	Min = staticmethod(Min)

	def Min(a, b, c):
		if a < c and a < b:
			return a
		if b < c and b < a:
			return b
		if c < a and c < b:
			return c

	Min = staticmethod(Min)

	def Max(a, b):
		if a > b:
			return a
		return b

	Max = staticmethod(Max)

	# OPERADORES LOGICOS FUZZY
	def compAND(ma_u, mb_u):
		return GlobalMembers.Min(ma_u, mb_u)

	compAND = staticmethod(compAND)

	def compOR(ma_u, mb_u):
		return GlobalMembers.Max(ma_u, mb_u)

	compOR = staticmethod(compOR)

	# IMPLICACION FUZZY
	def implicaZadeh(ma_x, mb_y):
		return GlobalMembers.Max(GlobalMembers.Min(ma_x, mb_y, -(ma_x)))

	implicaZadeh = staticmethod(implicaZadeh)

	def implicaMamdani(ma_x, mb_y):
		return GlobalMembers.Min(ma_x, mb_y)

	implicaMamdani = staticmethod(implicaMamdani)

	def implicaGodel(ma_x, mb_y):
		if ma_x <= mb_y:
			return 1.0
		return mb_y

	implicaGodel = staticmethod(implicaGodel)
