;-- Programas de prueba para Simplez
;-- t03.asm: Pruebas de WAIT

;---------------------------------------------------------------------------------
; NOTA: En yosys/icestorm hay un bug que hace que el contenido de la
; posicion 0 de la RAM se ponga a 0 esporádicamente al arrancar
; Por ello la primera instruccion se debe ignorar. El programa debe empezar
; en la direccion 1
;
; $ yosys -V
; Yosys 0.5+397 (git sha1 c86fbae, clang 3.6.2-1 -fPIC -Os)
;---------------------------------------------------------------------------------
NOP  DATA 0    ;-- Ignorar esta intruccion

;-- El programa comienza aqui
     LD /val1
     WAIT
     LD /val2
     WAIT

     HALT        ;-- Terminar


;--- Datos
val1    DATA  h'9
val2    DATA  h'6
