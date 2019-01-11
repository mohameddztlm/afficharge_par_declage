#line 1 "C:/Users/mohamed/Desktop/ad/mikroc/affiharge_par_d_clage.c"
int i,j,k,l,m,o,sec;
void init(){
TRISA=0;
TRISB=0;
}

void aff(){
porta.ra1=1;porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;portb=i; porta.RA1=0; delay_ms(1);
porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;portb=j;delay_ms(1);
porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;portb=k; delay_ms(1);
porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;portb=l; delay_ms(1);
porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;portb=m; delay_ms(1);
porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;portb=o; delay_ms(1);
}

void main() {
init();
 for(i=0;i<=5;i++){
 for(j=0;j<=9;j++){
 for(k=0;k<=5;k++){
 for(l=0;l<=9;l++){
 for(m=0;m<=5;m++){
 for(o=0;o<=9;o++)
 {
 for(sec=0;sec<=166;sec++){
 aff();
 }


 }
 }
 }
 }
 }
 }
}
