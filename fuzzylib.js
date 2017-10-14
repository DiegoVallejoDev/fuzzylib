/**********************************************************************;
* Project           : simple fuzzy member function library
* Program name      : fuzzylib.js
*
    * Author            : Diego Vallejo
    *
    * Date created      : 12/10/2017
*
* Purpose          :  data for the study of fuzzy inference systems.
|**********************************************************************/

function Fuzzy(){
    /*FUNCIONES DE MEMBRESIA*/
     this.trapecioAbiertoDer = function( u,  a,  b){
        if(u > b) return 1.0;
        if(u < a) return 0.0;
        if(a <= u and u <=b) return (u-a)/(b-a);
    }

     this.trapecioAbiertoIzq = function( u,  a,  b){
        if(u > b) return 0.0;
        if(u < a) return 1.0;
        if(a <= u and u <= b) return (b-u)/(b-a);
    }

     this.triangular = function( u,  a,  b,  c){
        if(u < a or u > c)    return 0.0;
        if(a <= u and u < b)  return (u-a)/(b-a);
        if(b <= u and u <= c) return (c-u)/(c-b);
    }

     this.Trapezoidal = function( u,  a,  b,  c,  d){
        if(u < a or u > d)    return 0.0;
        if(b <= u and u <= c) return 1.0;
        if(a <= u and u <  b) return (u-a)/(b-a);
        if(c < u  and u <= d) return (d-u)/(d-c);
    }

     this.curvaS = function( u,  a,  b){
        if(u > b) return 1.0;
        if(u < a) return 0.0;
        if(a <= u and u <= b) return 0.5*(1 + cos((u-b)/(b-a)*Math.PI));
    }

     this.curvaZ = function( u,  a,  b){
        if(u > b) return 0.0;
        if(u < a) return 1.0;
        if(a <= u and u <= b) return 0.5*(1 + cos((u-a)/(b-a)*Math.PI));
    }

     this.triangularSuave = function( u,  a,  b,  c){
        if(u < a or u > c)    return 0.0;
        if(a <= u and u < b)  return 0.5*(1 + cos((u-b)/(b-a)*Math.PI));
        if(b <= u and u <= c) return 0.5*(1 + cos((b-u)/(c-b)*Math.PI));
    }

     this.TrapezoidalSuave = function( u,  a,  b,  c,  d){
        if(u < a or u > d)    return 0.0;
        if(b <= u and u <= c) return 1.0;
        if(a <= u and u <  b) return 0.5*(1 + cos((u-b)/(b-a)*Math.PI));
        if(c < u  and u <= d) return 0.5*(1 + cos((c-u)/(d-c)*Math.PI));
    }
    /*FUNCIONES DE APOYO*/
     this.Min = function( a,  b){
        if(a < b) return a;
        return b;
    }
     this.Min = function( a,  b,  c){
        if(a < c and a < b) return a;
        if(b < c and b < a) return b;
        if(c < a and c < b) return c;
    }

     this.Max = function( a,  b){
        if(a > b) return a;
        return b;
    }

    /*OPERADORES LOGICOS FUZZY*/
     this.compAND = function( ma_u,  mb_u){
        return Min(ma_u,mb_u);
    }

     this.compOR = function( ma_u,  mb_u){
        return Max(ma_u,mb_u);
    }

    /*IMPLICACION FUZZY*/
     this.implicaZadeh = function( ma_x,  mb_y){
        return Max(Min(ma_x,mb_y,-(ma_x)));
    }

     this.implicaMamdani = function( ma_x,  mb_y){
        return Min(ma_x,mb_y);
    }
     this.implicaGodel = function( ma_x,  mb_y){
        if(ma_x <= mb_y) return 1.0;
        return mb_y;
    }
}
