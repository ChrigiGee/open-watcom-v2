 emms
 movd x,mm7
 movd cs:0aH[bx+di],mm7
 movd cs:0aH[ebx+eax*2],mm7
 movd mm1,x
 movd mm1,cs:0aH[bx+di]
 movd mm1,cs:0aH[ebx+eax*2]
 movd mm3,ebx
 movd ebx,mm7
 movq x,mm1
 movq cs:0aH[bx+di],mm1
 movq cs:0aH[ebx+eax*2],mm1
 movq mm1,mm7
 movq mm1,x
 movq mm1,cs:0aH[bx+di]
 movq mm1,cs:0aH[ebx+eax*2]
 packssdw mm1,mm7
 packssdw mm1,x
 packssdw mm1,cs:0aH[bx+di]
 packssdw mm1,cs:0aH[ebx+eax*2]
 packsswb mm1,mm7
 packsswb mm1,x
 packsswb mm1,cs:0aH[bx+di]
 packsswb mm1,cs:0aH[ebx+eax*2]
 packuswb mm1,mm7
 packuswb mm1,x
 packuswb mm1,cs:0aH[bx+di]
 packuswb mm1,cs:0aH[ebx+eax*2]
 paddb mm1,mm7
 paddb mm1,x
 paddb mm1,cs:0aH[bx+di]
 paddb mm1,cs:0aH[ebx+eax*2]
 paddd mm1,mm7
 paddd mm1,x
 paddd mm1,cs:0aH[bx+di]
 paddd mm1,cs:0aH[ebx+eax*2]
 paddsb mm1,mm7
 paddsb mm1,x
 paddsb mm1,cs:0aH[bx+di]
 paddsb mm1,cs:0aH[ebx+eax*2]
 paddsw mm1,mm7
 paddsw mm1,x
 paddsw mm1,cs:0aH[bx+di]
 paddsw mm1,cs:0aH[ebx+eax*2]
 paddusb mm1,mm7
 paddusb mm1,x
 paddusb mm1,cs:0aH[bx+di]
 paddusb mm1,cs:0aH[ebx+eax*2]
 paddusw mm1,mm7
 paddusw mm1,x
 paddusw mm1,cs:0aH[bx+di]
 paddusw mm1,cs:0aH[ebx+eax*2]
 paddw mm1,mm7
 paddw mm1,x
 paddw mm1,cs:0aH[bx+di]
 paddw mm1,cs:0aH[ebx+eax*2]
 pand mm1,mm7
 pand mm1,x
 pand mm1,cs:0aH[bx+di]
 pand mm1,cs:0aH[ebx+eax*2]
 pandn mm1,mm7
 pandn mm1,x
 pandn mm1,cs:0aH[bx+di]
 pandn mm1,cs:0aH[ebx+eax*2]
 pcmpeqb mm1,mm7
 pcmpeqb mm1,x
 pcmpeqb mm1,cs:0aH[bx+di]
 pcmpeqb mm1,cs:0aH[ebx+eax*2]
 pcmpeqd mm1,mm7
 pcmpeqd mm1,x
 pcmpeqd mm1,cs:0aH[bx+di]
 pcmpeqd mm1,cs:0aH[ebx+eax*2]
 pcmpeqw mm1,mm7
 pcmpeqw mm1,x
 pcmpeqw mm1,cs:0aH[bx+di]
 pcmpeqw mm1,cs:0aH[ebx+eax*2]
 pcmpgtb mm1,mm7
 pcmpgtb mm1,x
 pcmpgtb mm1,cs:0aH[bx+di]
 pcmpgtb mm1,cs:0aH[ebx+eax*2]
 pcmpgtd mm1,mm7
 pcmpgtd mm1,x
 pcmpgtd mm1,cs:0aH[bx+di]
 pcmpgtd mm1,cs:0aH[ebx+eax*2]
 pcmpgtw mm1,mm7
 pcmpgtw mm1,x
 pcmpgtw mm1,cs:0aH[bx+di]
 pcmpgtw mm1,cs:0aH[ebx+eax*2]
 pmaddwd mm1,mm7
 pmaddwd mm1,x
 pmaddwd mm1,cs:0aH[bx+di]
 pmaddwd mm1,cs:0aH[ebx+eax*2]
 pmulhw mm1,mm7
 pmulhw mm1,x
 pmulhw mm1,cs:0aH[bx+di]
 pmulhw mm1,cs:0aH[ebx+eax*2]
 pmullw mm1,mm7
 pmullw mm1,x
 pmullw mm1,cs:0aH[bx+di]
 pmullw mm1,cs:0aH[ebx+eax*2]
 por mm1,mm7
 por mm1,x
 por mm1,cs:0aH[bx+di]
 por mm1,cs:0aH[ebx+eax*2]
 pslld mm7,0ffH
 pslld mm1,mm7
 pslld mm1,x
 pslld mm1,cs:0aH[bx+di]
 pslld mm1,cs:0aH[ebx+eax*2]
 psllq mm7,0ffH
 psllq mm1,mm7
 psllq mm1,x
 psllq mm1,cs:0aH[bx+di]
 psllq mm1,cs:0aH[ebx+eax*2]
 psllw mm7,0ffH
 psllw mm1,mm7
 psllw mm1,x
 psllw mm1,cs:0aH[bx+di]
 psllw mm1,cs:0aH[ebx+eax*2]
 psrad mm7,0ffH
 psrad mm1,mm7
 psrad mm1,x
 psrad mm1,cs:0aH[bx+di]
 psrad mm1,cs:0aH[ebx+eax*2]
 psraw mm7,0ffH
 psraw mm1,mm7
 psraw mm1,x
 psraw mm1,cs:0aH[bx+di]
 psraw mm1,cs:0aH[ebx+eax*2]
 psrld mm7,0ffH
 psrld mm1,mm7
 psrld mm1,x
 psrld mm1,cs:0aH[bx+di]
 psrld mm1,cs:0aH[ebx+eax*2]
 psrlq mm7,0ffH
 psrlq mm1,mm7
 psrlq mm1,x
 psrlq mm1,cs:0aH[bx+di]
 psrlq mm1,cs:0aH[ebx+eax*2]
 psrlw mm7,0ffH
 psrlw mm1,mm7
 psrlw mm1,x
 psrlw mm1,cs:0aH[bx+di]
 psrlw mm1,cs:0aH[ebx+eax*2]
 psubb mm1,mm7
 psubb mm1,x
 psubb mm1,cs:0aH[bx+di]
 psubb mm1,cs:0aH[ebx+eax*2]
 psubd mm1,mm7
 psubd mm1,x
 psubd mm1,cs:0aH[bx+di]
 psubd mm1,cs:0aH[ebx+eax*2]
 psubsb mm1,mm7
 psubsb mm1,x
 psubsb mm1,cs:0aH[bx+di]
 psubsb mm1,cs:0aH[ebx+eax*2]
 psubsw mm1,mm7
 psubsw mm1,x
 psubsw mm1,cs:0aH[bx+di]
 psubsw mm1,cs:0aH[ebx+eax*2]
 psubusb mm1,mm7
 psubusb mm1,x
 psubusb mm1,cs:0aH[bx+di]
 psubusb mm1,cs:0aH[ebx+eax*2]
 psubusw mm1,mm7
 psubusw mm1,x
 psubusw mm1,cs:0aH[bx+di]
 psubusw mm1,cs:0aH[ebx+eax*2]
 psubw mm1,mm7
 psubw mm1,x
 psubw mm1,cs:0aH[bx+di]
 psubw mm1,cs:0aH[ebx+eax*2]
 punpckhbw mm1,mm7
 punpckhbw mm1,x
 punpckhbw mm1,cs:0aH[bx+di]
 punpckhbw mm1,cs:0aH[ebx+eax*2]
 punpckhdq mm1,mm7
 punpckhdq mm1,x
 punpckhdq mm1,cs:0aH[bx+di]
 punpckhdq mm1,cs:0aH[ebx+eax*2]
 punpckhwd mm1,mm7
 punpckhwd mm1,x
 punpckhwd mm1,cs:0aH[bx+di]
 punpckhwd mm1,cs:0aH[ebx+eax*2]
 punpcklbw mm1,mm7
 punpcklbw mm1,x
 punpcklbw mm1,cs:0aH[bx+di]
 punpcklbw mm1,cs:0aH[ebx+eax*2]
 punpckldq mm1,mm7
 punpckldq mm1,x
 punpckldq mm1,cs:0aH[bx+di]
 punpckldq mm1,cs:0aH[ebx+eax*2]
 punpcklwd mm1,mm7
 punpcklwd mm1,x
 punpcklwd mm1,cs:0aH[bx+di]
 punpcklwd mm1,cs:0aH[ebx+eax*2]
 pxor mm1,mm7
 pxor mm1,x
 pxor mm1,cs:0aH[bx+di]
 pxor mm1,cs:0aH[ebx+eax*2]
