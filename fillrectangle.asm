	AREA	|.text|, CODE, ARM
	
	EXPORT fill_rectangle
	
	;r0-r3Ϊ����vp,w,h,stride
	;sp+0x10Ϊ����val,sp+0x14Ϊ����size
	;r0��w,r5��stride

|fill_rectangle| PROC
;�������
	stmdb     sp!, {r4 - r6, lr}
	
|$MAINPROGRAM|
    ;�����
    ;w      *= size;
    ;stride *= size;
    mov       r6, r0
	ldr       r4, [sp, #0x14]
	mul       r0, r1, r4
	mul       r5, r3, r4
	;��ʱr0=w,r5=stride,r6=vp
	
|$LWH224|
	;�����
    ;if(w==2 && h==2)
	cmp       r0, #2
	bne       |$LWH4124|
	cmp       r2, #2
	bne       |$LWH24|
	
	;�����
    ;*(uint16_t*)(p + 0)=*(uint16_t*)(p + stride)= size==4 ? val : val*0x0101;	
    cmp       r4, #4
    bne       |$LWH22SIZEN4|    
    ldr       r4, [sp, #0x10]
    mov       r0, r6
    strh      r4, [r0]
    strh      r4, [r0, +r5]
    ldmia     sp!, {r4 - r6, pc}
|$LWH22SIZEN4|
    ldr       r4, [sp, #0x10]
    ldr       r2, |$DATA1|
    mul       r0, r4, r2
    mov       r4, r0
    mov       r0, r6
    strh      r4, [r0]
    strh      r4, [r0, +r5] 
    ldmia     sp!, {r4 - r6, pc}   

|$LWH24|    
    ;�����
    ;else if(w==2 && h==4)
    cmp      r2, #4
    bne      |$RETURN| 
    ;�����
    ;*(uint16_t*)(p + 0*stride)=
    ;*(uint16_t*)(p + 1*stride)=
    ;*(uint16_t*)(p + 2*stride)=
    ;*(uint16_t*)(p + 3*stride)= size==4 ? val : val*0x0101;  
    cmp       r4, #4
    bne       |$LWH24SIZEN4|  
    ldr       r4, [sp, #0x10]
    mov       r0, r6
    strh      r4, [r0]
    strh      r4, [r0, +r5]!
    strh      r4, [r0, +r5]!
    strh      r4, [r0, +r5]
    ldmia     sp!, {r4 - r6, pc}
|$LWH24SIZEN4|
    ldr       r4, [sp, #0x10]
    ldr       r2, |$DATA1|
    mul       r0, r4, r2
    mov       r4, r0
    mov       r0, r6
    strh      r4, [r0]
    strh      r4, [r0, +r5] 
    strh      r4, [r0, +r5]!
    strh      r4, [r0, +r5]!
    strh      r4, [r0, +r5]
    ldmia     sp!, {r4 - r6, pc}      
	
|$LWH4124|
    ;�����
    ;else if(w==4 && h==1)
    cmp       r0, #4
    bne       |$LWH8124|
    cmp       r2, #1
    bne       |$LWH424|
    
    ;�����
    ;*(uint32_t*)(p + 0*stride)= size==4 ? val : val*0x01010101;
    cmp       r4, #4
    bne       |$LWH41SIZEN4|
    ldr       r4, [sp, #0x10]
    mov       r0, r6
    str       r4, [r0]
    ldmia     sp!, {r4 - r6, pc}
|$LWH41SIZEN4|
    ldr       r4, [sp, #0x10]
    ldr       r2, |$DATA2|
    mul       r0, r4, r2
    mov       r4, r0
    mov       r0, r6
    str       r4, [r0]
    ldmia     sp!, {r4 - r6, pc}  
    
|$LWH424|
    ;�����
    ;else if(w==4 && h==2)
    cmp       r2, #2
    bne       |$LWH44|
    
    ;�����
    ;*(uint32_t*)(p + 0*stride)=
    ;*(uint32_t*)(p + 1*stride)= size==4 ? val : val*0x01010101;
    cmp       r4, #4
    bne       |$LWH42SIZEN4|
    ldr       r4, [sp, #0x10]
    mov       r0, r6
    str       r4, [r0]
    str       r4, [r0, +r5]
    ldmia     sp!, {r4 - r6, pc}
|$LWH42SIZEN4|
    ldr       r4, [sp, #0x10]
    ldr       r2, |$DATA2|
    mul       r0, r4, r2
    mov       r4, r0
    mov       r0, r6
    str       r4, [r0]
    str       r4, [r0, +r5]
    ldmia     sp!, {r4 - r6, pc}      

|$LWH44|
    ;�����
    ;else if(w==4 && h==4)
    cmp      r2, #4
    bne      |$RETURN|
    ;�����
    ;*(uint32_t*)(p + 0*stride)=
    ;*(uint32_t*)(p + 1*stride)=
    ;*(uint32_t*)(p + 2*stride)=
    ;*(uint32_t*)(p + 3*stride)= size==4 ? val : val*0x01010101;
    cmp      r4, #4
    bne      |$LWH44SIZEN4|
    ldr       r4, [sp, #0x10]
    mov       r0, r6
    str       r4, [r0]
    str       r4, [r0, +r5]!
    str       r4, [r0, +r5]!
    str       r4, [r0, +r5]
    ldmia     sp!, {r4 - r6, pc}    
|$LWH44SIZEN4|
    ldr       r4, [sp, #0x10]
    ldr       r2, |$DATA2|
    mul       r0, r4, r2
    mov       r4, r0
    mov       r0, r6
    str       r4, [r0]
    str       r4, [r0, +r5] 
    str       r4, [r0, +r5]!
    str       r4, [r0, +r5]!
    str       r4, [r0, +r5]
    ldmia     sp!, {r4 - r6, pc}     
    
|$LWH8124|
    ;�����
    ;else if(w==8 && h==1)
    cmp       r0, #8
    bne       |$LWH1624|
    cmp       r2, #1
    bne       |$LWH824|
    
    ;�����
    ;*(uint32_t*)(p + 0)=
    ;*(uint32_t*)(p + 4)= size==4 ? val : val*0x01010101;
    cmp       r4, #4
    bne       |$LWH81SIZEN4|
    ldr       r4, [sp, #0x10]
    mov       r0, r6
    str       r4, [r0]
    str       r4, [r0, #4]
    ldmia     sp!, {r4 - r6, pc}   
|$LWH81SIZEN4|
    ldr       r4, [sp, #0x10]
    ldr       r2, |$DATA2|
    mul       r0, r4, r2
    mov       r4, r0
    mov       r0, r6
    str       r4, [r0]
    str       r4, [r0, #4]
    ldmia     sp!, {r4 - r6, pc}     
    
|$LWH824|
    ;�����
    ;else if(w==8 && h==2)
    cmp      r2, #2
    bne      |$LWH84|
    
    ;�����
    ;*(uint32_t*)(p + 0 + 0*stride)=
    ;*(uint32_t*)(p + 4 + 0*stride)=
    ;*(uint32_t*)(p + 0 + 1*stride)=
    ;*(uint32_t*)(p + 4 + 1*stride)=  size==4 ? val : val*0x01010101;
    cmp      r4, #4
    bne      |$LWH82SIZEN4|
    ldr       r4, [sp, #0x10]
    mov       r0, r6
    str       r4, [r0]
    str       r4, [r0, #4]
    add       r0, r0, r5
    str       r4, [r0]
    str       r4, [r0, #4]    
    ldmia     sp!, {r4 - r6, pc}   
|$LWH82SIZEN4|
    ldr       r4, [sp, #0x10]
    ldr       r2, |$DATA2|
    mul       r0, r4, r2
    mov       r4, r0
    mov       r0, r6
    str       r4, [r0]
    str       r4, [r0, #4]
    add       r0, r0, r5
    str       r4, [r0]
    str       r4, [r0, #4]    
    ldmia     sp!, {r4 - r6, pc}  
    
|$LWH84|
    ;�����
    ;else if(w==8 && h==4)
    cmp       r2, #4
    bne       |$RETURN|
    ;�����
    ;*(uint64_t*)(p + 0*stride)=
    ;*(uint64_t*)(p + 1*stride)=
    ;*(uint64_t*)(p + 2*stride)=
    ;*(uint64_t*)(p + 3*stride)= size==4 ? val*0x0100000001ULL : val*0x0101010101010101ULL;
    cmp       r4, #4
    bne       |$LWH84SIZEN4|
    ldr       r4, [sp, #0x10]
    mov       r0, r6
    str       r4, [r0]
    str       r4, [r0, +r5]!
    str       r4, [r0, +r5]!
    str       r4, [r0, +r5]
    mov       r0, r6
    add       r0, r0, #4
    str       r4, [r0]
    str       r4, [r0, +r5]!
    str       r4, [r0, +r5]!
    str       r4, [r0, +r5]
    ldmia     sp!, {r4 - r6, pc}
|$LWH84SIZEN4|
    ldr       r3, [sp, #0x10]
    ldr       r2, |$DATA2|
    mul       r0, r3, r2
    umull     r2, r3, r1, r3
    add       r3, r0, r3
    mov       r0, r6
    str       r2, [r0]
    str       r2, [r0, +r5]!
    str       r2, [r0, +r5]!
    str       r2, [r0, +r5]
    mov       r0, r6
    add       r0, r0, #4
    str       r3, [r0]
    str       r3, [r0, +r5]!
    str       r3, [r0, +r5]!
    str       r3, [r0, +r5]
    ldmia     sp!, {r4 - r6, pc}    
    
|$LWH1624|
    ;�����
    ;else if(w==16 && h==2)
    cmp      r0, #16
    bne      |$RETURN|
    cmp      r2, #2
    bne      |$LWH164|
    
    ;�����
    ;*(uint64_t*)(p + 0+0*stride)=
    ;*(uint64_t*)(p + 8+0*stride)=
    ;*(uint64_t*)(p + 0+1*stride)=
    ;*(uint64_t*)(p + 8+1*stride)= size==4 ? val*0x0100000001ULL : val*0x0101010101010101ULL;
    cmp       r4, #4
    bne       |$LWH162SIZEN4|
    ldr       r4, [sp, #0x10]
    mov       r0, r6
    str       r4, [r0]
    str       r4, [r0, +r5]
    mov       r0, r6
    add       r0, r0, #4
    str       r4, [r0]
    str       r4, [r0, +r5]
    mov       r0, r6
    add       r0, r0, #8
    str       r4, [r0]
    str       r4, [r0, +r5]
    mov       r0, r6
    add       r0, r0, #12
    str       r4, [r0]
    str       r4, [r0, +r5]    
    ldmia     sp!, {r4 - r6, pc}
|$LWH162SIZEN4|
    ldr       r3, [sp, #0x10]
    ldr       r2, |$DATA2|
    mul       r0, r3, r2
    umull     r2, r3, r1, r3
    add       r3, r0, r3
    mov       r0, r6
    str       r2, [r0]
    str       r2, [r0, +r5]
    mov       r0, r6
    add       r0, r0, #4
    str       r3, [r0]
    str       r3, [r0, +r5]
    mov       r0, r6
    add       r0, r0, #8
    str       r2, [r0]
    str       r2, [r0, +r5]
    mov       r0, r6
    add       r0, r0, #12
    str       r3, [r0]
    str       r3, [r0, +r5]    
    ldmia     sp!, {r4 - r6, pc} 
    
|$LWH164|
    ;�����
    ;else if(w==16 && h==4)
    cmp      r2, #4
    bne      |$RETURN|
    
    ;�����
    ;*(uint64_t*)(p + 0+0*stride)=
    ;*(uint64_t*)(p + 8+0*stride)=
    ;*(uint64_t*)(p + 0+1*stride)=
    ;*(uint64_t*)(p + 8+1*stride)=
    ;*(uint64_t*)(p + 0+2*stride)=
    ;*(uint64_t*)(p + 8+2*stride)=
    ;*(uint64_t*)(p + 0+3*stride)=
    ;*(uint64_t*)(p + 8+3*stride)= size==4 ? val*0x0100000001ULL : val*0x0101010101010101ULL;
    cmp       r4, #4
    bne       |$LWH164SIZEN4|
    ldr       r4, [sp, #0x10]
    mov       r0, r6
    str       r4, [r0]
    str       r4, [r0, +r5]!
    str       r4, [r0, +r5]!
    str       r4, [r0, +r5]
    mov       r0, r6
    add       r0, r0, #4
    str       r4, [r0]
    str       r4, [r0, +r5]!
    str       r4, [r0, +r5]!
    str       r4, [r0, +r5]
    mov       r0, r6
    add       r0, r0, #8
    str       r4, [r0]
    str       r4, [r0, +r5]!
    str       r4, [r0, +r5]!
    str       r4, [r0, +r5]
    mov       r0, r6
    add       r0, r0, #12
    str       r4, [r0]
    str       r4, [r0, +r5]!
    str       r4, [r0, +r5]!
    str       r4, [r0, +r5] 
    ldmia     sp!, {r4 - r6, pc}
|$LWH164SIZEN4|
    ldr       r3, [sp, #0x10]
    ldr       r2, |$DATA2|
    mul       r0, r3, r2
    umull     r2, r3, r1, r3
    add       r3, r0, r3
    mov       r0, r6
    str       r2, [r0]
    str       r2, [r0, +r5]!
    str       r2, [r0, +r5]!
    str       r2, [r0, +r5]
    mov       r0, r6
    add       r0, r0, #4
    str       r3, [r0]
    str       r3, [r0, +r5]!
    str       r3, [r0, +r5]!
    str       r3, [r0, +r5]
    mov       r0, r6
    add       r0, r0, #8
    str       r2, [r0]
    str       r2, [r0, +r5]!
    str       r2, [r0, +r5]!
    str       r2, [r0, +r5]
    mov       r0, r6
    add       r0, r0, #12
    str       r3, [r0]
    str       r3, [r0, +r5]!
    str       r3, [r0, +r5]!
    str       r3, [r0, +r5] 
    ldmia     sp!, {r4 - r6, pc} 
    
    
    


|$RETURN|
	ldmia     sp!, {r4 - r6, pc}
	
|$DATA1|
	DCD       0x0101
|$DATA2|
	DCD       0x01010101

    END

	ENDP  ; |fill_rectangle|