%include "asm_io.inc"

segment .text
    global Determinador_roor

Determinador_roor:
    
    enter 4, 0          ;ingreso a la pila (entra al chat epicamente)
    push ebx 
    
    ;primera multiplicacion cruzada
    mov ebx, [ebp+8]   ;agarro a y lo muevo a ebx
    mov eax, [ebp+20]  ;agarro d y lo muevo a eax
    imul ebx           ;agarro y multiplico lo que hay en eax x ebx y se guarda en eax
    mov ecx, eax       ;guardo el resultado en ecx

    ;segunda multiplicacion cruzada
    mov ebx, [ebp+12]   ;agarro b y lo muevo a ebx
    mov eax, [ebp+16]   ;agarro c y lo muevo a eax
    imul ebx            ;agarro y multiplico lo que hay en eax x ebx y se guarda en eax

    ;hago la resta 
    sub ecx, eax
    mov eax, ecx        ;muevo las cosas a eax asi lo puedo retornar, mucha paja cambiarlo arriba
    
    pop ebx             ;saco la wea
    leave 
    ret