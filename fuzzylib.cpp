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

#include <iostream>
#include <cmath>
#include <cerrno>



using std::cos;

namespace fuzzy{

    const double PI = std::acos(-1);
    /*FUNCIONES DE MEMBRESIA*/
    double trapecioAbiertoDer(double u, double a, double b){
        if(u > b) return 1.0;
        if(u < a) return 0.0;
        if(a <= u and u <=b) return (u-a)/(b-a);
    }

    double trapecioAbiertoIzq(double u, double a, double b){
        if(u > b) return 0.0;
        if(u < a) return 1.0;
        if(a <= u and u <= b) return (b-u)/(b-a);
    }

    double triangular(double u, double a, double b, double c){
        if(u < a or u > c)    return 0.0;
        if(a <= u and u < b)  return (u-a)/(b-a);
        if(b <= u and u <= c) return (c-u)/(c-b);
    }

    double Trapezoidal(double u, double a, double b, double c, double d){
        if(u < a or u > d)    return 0.0;
        if(b <= u and u <= c) return 1.0;
        if(a <= u and u <  b) return (u-a)/(b-a);
        if(c < u  and u <= d) return (d-u)/(d-c);
    }

    double curvaS(double u, double a, double b){
        if(u > b) return 1.0;
        if(u < a) return 0.0;
        if(a <= u and u <= b) return 0.5*(1 + cos((u-b)/(b-a)*PI));
    }

    double curvaZ(double u, double a, double b){
        if(u > b) return 0.0;
        if(u < a) return 1.0;
        if(a <= u and u <= b) return 0.5*(1 + cos((u-a)/(b-a)*PI));
    }

    double triangularSuave(double u, double a, double b, double c){
        if(u < a or u > c)    return 0.0;
        if(a <= u and u < b)  return 0.5*(1 + cos((u-b)/(b-a)*PI));
        if(b <= u and u <= c) return 0.5*(1 + cos((b-u)/(c-b)*PI));
    }

    double TrapezoidalSuave(double u, double a, double b, double c, double d){
        if(u < a or u > d)    return 0.0;
        if(b <= u and u <= c) return 1.0;
        if(a <= u and u <  b) return 0.5*(1 + cos((u-b)/(b-a)*PI));
        if(c < u  and u <= d) return 0.5*(1 + cos((c-u)/(d-c)*PI));
    }
    /*FUNCIONES DE APOYO*/
    double Min(double a, double b){
        if(a < b) return a;
        return b;
    }
    double Min(double a, double b, double c){
        if(a < c and a < b) return a;
        if(b < c and b < a) return b;
        if(c < a and c < b) return c;
    }

    double Max(double a, double b){
        if(a > b) return a;
        return b;
    }

    /*OPERADORES LOGICOS FUZZY*/
    double compAND(double ma_u, double mb_u){
        return Min(ma_u,mb_u);
    }

    double compOR(double ma_u, double mb_u){
        return Max(ma_u,mb_u);
    }

    /*IMPLICACION FUZZY*/
    double implicaZadeh(double ma_x, double mb_y){
        return Max(Min(ma_x,mb_y,-(ma_x)));
    }

    double implicaMamdani(double ma_x, double mb_y){
        return Min(ma_x,mb_y);
    }
    double implicaGodel(double ma_x, double mb_y){
        if(ma_x <= mb_y) return 1.0;
        return mb_y;
    }
}