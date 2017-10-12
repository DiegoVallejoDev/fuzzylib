
/**********************************************************************;
* Project           : simple fuzzy member function library
* Program name      : fuzzylib.h
*
    * Author            : Diego Vallejo
    *
    * Date created      : 12/10/2017
*
* Purpose          :  data for the study of fuzzy inference systems.
|**********************************************************************/


using System;



namespace fuzzy
{
	public static class GlobalMembers
	{
		public static readonly double PI = Math.PI;
		/*FUNCIONES DE MEMBRESIA*/
		public static double trapecioAbiertoDer(double u, double a, double b)
		{
			if (u > b)
			{
				return 1.0;
			}
			if (u < a)
			{
				return 0.0;
			}
			if (a <= u != 0 && u <= b)
			{
				return (u - a) / (b - a);
			}
		}

		public static double trapecioAbiertoIzq(double u, double a, double b)
		{
			if (u > b)
			{
				return 0.0;
			}
			if (u < a)
			{
				return 1.0;
			}
			if (a <= u != 0 && u <= b)
			{
				return (b - u) / (b - a);
			}
		}

		public static double triangular(double u, double a, double b, double c)
		{
			if (u < a || u > c)
			{
				return 0.0;
			}
			if (a <= u != 0 && u < b)
			{
				return (u - a) / (b - a);
			}
			if (b <= u != 0 && u <= c)
			{
				return (c - u) / (c - b);
			}
		}

		public static double Trapezoidal(double u, double a, double b, double c, double d)
		{
			if (u < a || u > d)
			{
				return 0.0;
			}
			if (b <= u != 0 && u <= c)
			{
				return 1.0;
			}
			if (a <= u != 0 && u < b)
			{
				return (u - a) / (b - a);
			}
			if (c < u && u <= d)
			{
				return (d - u) / (d - c);
			}
		}

		public static double curvaS(double u, double a, double b)
		{
			if (u > b)
			{
				return 1.0;
			}
			if (u < a)
			{
				return 0.0;
			}
			if (a <= u != 0 && u <= b)
			{
				return 0.5 * (1 + Math.Cos((u - b) / (b - a) * PI));
			}
		}

		public static double curvaZ(double u, double a, double b)
		{
			if (u > b)
			{
				return 0.0;
			}
			if (u < a)
			{
				return 1.0;
			}
			if (a <= u != 0 && u <= b)
			{
				return 0.5 * (1 + Math.Cos((u - a) / (b - a) * PI));
			}
		}

		public static double triangularSuave(double u, double a, double b, double c)
		{
			if (u < a || u > c)
			{
				return 0.0;
			}
			if (a <= u != 0 && u < b)
			{
				return 0.5 * (1 + Math.Cos((u - b) / (b - a) * PI));
			}
			if (b <= u != 0 && u <= c)
			{
				return 0.5 * (1 + Math.Cos((b - u) / (c - b) * PI));
			}
		}

		public static double TrapezoidalSuave(double u, double a, double b, double c, double d)
		{
			if (u < a || u > d)
			{
				return 0.0;
			}
			if (b <= u != 0 && u <= c)
			{
				return 1.0;
			}
			if (a <= u != 0 && u < b)
			{
				return 0.5 * (1 + Math.Cos((u - b) / (b - a) * PI));
			}
			if (c < u && u <= d)
			{
				return 0.5 * (1 + Math.Cos((c - u) / (d - c) * PI));
			}
		}
		/*FUNCIONES DE APOYO*/
		public static double Min(double a, double b)
		{
			if (a < b)
			{
				return a;
			}
			return b;
		}
		public static double Min(double a, double b, double c)
		{
			if (a < c && a < b)
			{
				return a;
			}
			if (b < c && b < a)
			{
				return b;
			}
			if (c < a && c < b)
			{
				return c;
			}
		}

		public static double Max(double a, double b)
		{
			if (a > b)
			{
				return a;
			}
			return b;
		}

		/*OPERADORES LOGICOS FUZZY*/
		public static double compAND(double ma_u, double mb_u)
		{
			return Min(ma_u, mb_u);
		}

		public static double compOR(double ma_u, double mb_u)
		{
			return Max(ma_u, mb_u);
		}

		/*IMPLICACION FUZZY*/
		public static double implicaZadeh(double ma_x, double mb_y)
		{
			return Max(Min(ma_x, mb_y, -(ma_x)));
		}

		public static double implicaMamdani(double ma_x, double mb_y)
		{
			return Min(ma_x, mb_y);
		}
		public static double implicaGodel(double ma_x, double mb_y)
		{
			if (ma_x <= mb_y)
			{
				return 1.0;
			}
			return mb_y;
		}
	}
}
 
