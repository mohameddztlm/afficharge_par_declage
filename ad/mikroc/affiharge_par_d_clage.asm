
_init:

;affiharge_par_d_clage.c,2 :: 		void init(){
;affiharge_par_d_clage.c,3 :: 		TRISA=0;
	CLRF       TRISA+0
;affiharge_par_d_clage.c,4 :: 		TRISB=0;
	CLRF       TRISB+0
;affiharge_par_d_clage.c,5 :: 		}
L_end_init:
	RETURN
; end of _init

_aff:

;affiharge_par_d_clage.c,7 :: 		void aff(){
;affiharge_par_d_clage.c,8 :: 		porta.ra1=1;porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;portb=i; porta.RA1=0; delay_ms(1);
	BSF        PORTA+0, 1
	BSF        PORTA+0, 0
	BCF        PORTA+0, 0
	BSF        PORTA+0, 2
	BCF        PORTA+0, 2
	MOVF       _i+0, 0
	MOVWF      PORTB+0
	BCF        PORTA+0, 1
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_aff0:
	DECFSZ     R13+0, 1
	GOTO       L_aff0
	DECFSZ     R12+0, 1
	GOTO       L_aff0
	NOP
	NOP
;affiharge_par_d_clage.c,9 :: 		porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;portb=j;delay_ms(1);
	BSF        PORTA+0, 0
	BCF        PORTA+0, 0
	BSF        PORTA+0, 2
	BCF        PORTA+0, 2
	MOVF       _j+0, 0
	MOVWF      PORTB+0
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_aff1:
	DECFSZ     R13+0, 1
	GOTO       L_aff1
	DECFSZ     R12+0, 1
	GOTO       L_aff1
	NOP
	NOP
;affiharge_par_d_clage.c,10 :: 		porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;portb=k; delay_ms(1);
	BSF        PORTA+0, 0
	BCF        PORTA+0, 0
	BSF        PORTA+0, 2
	BCF        PORTA+0, 2
	MOVF       _k+0, 0
	MOVWF      PORTB+0
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_aff2:
	DECFSZ     R13+0, 1
	GOTO       L_aff2
	DECFSZ     R12+0, 1
	GOTO       L_aff2
	NOP
	NOP
;affiharge_par_d_clage.c,11 :: 		porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;portb=l; delay_ms(1);
	BSF        PORTA+0, 0
	BCF        PORTA+0, 0
	BSF        PORTA+0, 2
	BCF        PORTA+0, 2
	MOVF       _l+0, 0
	MOVWF      PORTB+0
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_aff3:
	DECFSZ     R13+0, 1
	GOTO       L_aff3
	DECFSZ     R12+0, 1
	GOTO       L_aff3
	NOP
	NOP
;affiharge_par_d_clage.c,12 :: 		porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;portb=m; delay_ms(1);
	BSF        PORTA+0, 0
	BCF        PORTA+0, 0
	BSF        PORTA+0, 2
	BCF        PORTA+0, 2
	MOVF       _m+0, 0
	MOVWF      PORTB+0
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_aff4:
	DECFSZ     R13+0, 1
	GOTO       L_aff4
	DECFSZ     R12+0, 1
	GOTO       L_aff4
	NOP
	NOP
;affiharge_par_d_clage.c,13 :: 		porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;portb=o; delay_ms(1);
	BSF        PORTA+0, 0
	BCF        PORTA+0, 0
	BSF        PORTA+0, 2
	BCF        PORTA+0, 2
	MOVF       _o+0, 0
	MOVWF      PORTB+0
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_aff5:
	DECFSZ     R13+0, 1
	GOTO       L_aff5
	DECFSZ     R12+0, 1
	GOTO       L_aff5
	NOP
	NOP
;affiharge_par_d_clage.c,14 :: 		}
L_end_aff:
	RETURN
; end of _aff

_main:

;affiharge_par_d_clage.c,16 :: 		void main() {
;affiharge_par_d_clage.c,17 :: 		init();
	CALL       _init+0
;affiharge_par_d_clage.c,18 :: 		for(i=0;i<=5;i++){
	CLRF       _i+0
	CLRF       _i+1
L_main6:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main30
	MOVF       _i+0, 0
	SUBLW      5
L__main30:
	BTFSS      STATUS+0, 0
	GOTO       L_main7
;affiharge_par_d_clage.c,19 :: 		for(j=0;j<=9;j++){
	CLRF       _j+0
	CLRF       _j+1
L_main9:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _j+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main31
	MOVF       _j+0, 0
	SUBLW      9
L__main31:
	BTFSS      STATUS+0, 0
	GOTO       L_main10
;affiharge_par_d_clage.c,20 :: 		for(k=0;k<=5;k++){
	CLRF       _k+0
	CLRF       _k+1
L_main12:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _k+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main32
	MOVF       _k+0, 0
	SUBLW      5
L__main32:
	BTFSS      STATUS+0, 0
	GOTO       L_main13
;affiharge_par_d_clage.c,21 :: 		for(l=0;l<=9;l++){
	CLRF       _l+0
	CLRF       _l+1
L_main15:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _l+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main33
	MOVF       _l+0, 0
	SUBLW      9
L__main33:
	BTFSS      STATUS+0, 0
	GOTO       L_main16
;affiharge_par_d_clage.c,22 :: 		for(m=0;m<=5;m++){
	CLRF       _m+0
	CLRF       _m+1
L_main18:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _m+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main34
	MOVF       _m+0, 0
	SUBLW      5
L__main34:
	BTFSS      STATUS+0, 0
	GOTO       L_main19
;affiharge_par_d_clage.c,23 :: 		for(o=0;o<=9;o++)
	CLRF       _o+0
	CLRF       _o+1
L_main21:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _o+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main35
	MOVF       _o+0, 0
	SUBLW      9
L__main35:
	BTFSS      STATUS+0, 0
	GOTO       L_main22
;affiharge_par_d_clage.c,25 :: 		for(sec=0;sec<=166;sec++){
	CLRF       _sec+0
	CLRF       _sec+1
L_main24:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _sec+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main36
	MOVF       _sec+0, 0
	SUBLW      166
L__main36:
	BTFSS      STATUS+0, 0
	GOTO       L_main25
;affiharge_par_d_clage.c,26 :: 		aff();
	CALL       _aff+0
;affiharge_par_d_clage.c,25 :: 		for(sec=0;sec<=166;sec++){
	INCF       _sec+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sec+1, 1
;affiharge_par_d_clage.c,27 :: 		}
	GOTO       L_main24
L_main25:
;affiharge_par_d_clage.c,23 :: 		for(o=0;o<=9;o++)
	INCF       _o+0, 1
	BTFSC      STATUS+0, 2
	INCF       _o+1, 1
;affiharge_par_d_clage.c,30 :: 		}
	GOTO       L_main21
L_main22:
;affiharge_par_d_clage.c,22 :: 		for(m=0;m<=5;m++){
	INCF       _m+0, 1
	BTFSC      STATUS+0, 2
	INCF       _m+1, 1
;affiharge_par_d_clage.c,31 :: 		}
	GOTO       L_main18
L_main19:
;affiharge_par_d_clage.c,21 :: 		for(l=0;l<=9;l++){
	INCF       _l+0, 1
	BTFSC      STATUS+0, 2
	INCF       _l+1, 1
;affiharge_par_d_clage.c,32 :: 		}
	GOTO       L_main15
L_main16:
;affiharge_par_d_clage.c,20 :: 		for(k=0;k<=5;k++){
	INCF       _k+0, 1
	BTFSC      STATUS+0, 2
	INCF       _k+1, 1
;affiharge_par_d_clage.c,33 :: 		}
	GOTO       L_main12
L_main13:
;affiharge_par_d_clage.c,19 :: 		for(j=0;j<=9;j++){
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;affiharge_par_d_clage.c,34 :: 		}
	GOTO       L_main9
L_main10:
;affiharge_par_d_clage.c,18 :: 		for(i=0;i<=5;i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;affiharge_par_d_clage.c,35 :: 		}
	GOTO       L_main6
L_main7:
;affiharge_par_d_clage.c,36 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
