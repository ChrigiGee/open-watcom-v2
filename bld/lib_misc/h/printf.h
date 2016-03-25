/****************************************************************************
*
*                            Open Watcom Project
*
*    Portions Copyright (c) 1983-2002 Sybase, Inc. All Rights Reserved.
*
*  ========================================================================
*
*    This file contains Original Code and/or Modifications of Original
*    Code as defined in and that are subject to the Sybase Open Watcom
*    Public License version 1.0 (the 'License'). You may not use this file
*    except in compliance with the License. BY USING THIS FILE YOU AGREE TO
*    ALL TERMS AND CONDITIONS OF THE LICENSE. A copy of the License is
*    provided with the Original Code and Modifications, and is also
*    available at www.sybase.com/developer/opensource.
*
*    The Original Code and all software distributed under the License are
*    distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER
*    EXPRESS OR IMPLIED, AND SYBASE AND ALL CONTRIBUTORS HEREBY DISCLAIM
*    ALL SUCH WARRANTIES, INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF
*    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR
*    NON-INFRINGEMENT. Please see the License for the specific language
*    governing rights and limitations under the License.
*
*  ========================================================================
*
* Description:  Definitions needed by callers to internal string formatter
*               __prtf() for printf() style handling.
*
****************************************************************************/


#ifndef _PRINTF_H_INCLUDED
#define _PRINTF_H_INCLUDED

#if defined(__QNX__)
    #define __SLIB          _WCI86FAR
#elif defined( __HUGE__ )
    #define __SLIB          _WCI86FAR
#else
    #define __SLIB
#endif

#define SPECS_VERSION           200

/*
 * This is the __prtf specs structure. NB - should be naturally aligned.
 *
 * There are both wide and MBCS versions explicitly because part of __wprtf
 * needs to access both kinds of structure.
 */

typedef struct
{
    char    __SLIB *_dest;
    short           _flags;         // flags (see below)
    short           _version;       // structure version # (2.0 --> 200)
    int             _fld_width;     // field width
    int             _prec;          // precision
    int             _output_count;  // # of characters outputted for %n
    int             _n0;            // number of chars to deliver first
    int             _nz0;           // number of zeros to deliver next
    int             _n1;            // number of chars to deliver next
    int             _nz1;           // number of zeros to deliver next
    int             _n2;            // number of chars to deliver next
    int             _nz2;           // number of zeros to deliver next
    char            _character;     // format character
    char            _pad_char;
    char            _padding[2];    // to keep struct aligned
} _mbcs_SPECS;

typedef struct
{
    wchar_t __SLIB *_dest;
    short           _flags;         // flags (see below)
    short           _version;       // structure version # (2.0 --> 200)
    int             _fld_width;     // field width
    int             _prec;          // precision
    int             _output_count;  // # of characters outputted for %n
    int             _n0;            // number of chars to deliver first
    int             _nz0;           // number of zeros to deliver next
    int             _n1;            // number of chars to deliver next
    int             _nz1;           // number of zeros to deliver next
    int             _n2;            // number of chars to deliver next
    int             _nz2;           // number of zeros to deliver next
    wchar_t         _character;     // format character
    wchar_t         _pad_char;
} _wide_SPECS;

#ifdef __WIDECHAR__
    #define SPECS               _wide_SPECS
#else
    #define SPECS               _mbcs_SPECS
#endif

#if defined(__QNX__)
    #define OUTC_PARM       int
#elif defined( __WIDECHAR__ )
    #define OUTC_PARM       wchar_t
#else
    #define OUTC_PARM       char
#endif

#if defined(__QNX__)
    #if defined(__386__)
        #define __SLIB_CALLBACK _WCFAR
        #pragma aux slib_callback_t __far parm [eax] [edx] modify [eax edx];
    #elif defined( __SMALL_DATA__ )
        #define __SLIB_CALLBACK _WCFAR __loadds
    #else
        #define __SLIB_CALLBACK _WCFAR
    #endif
#else
    #define __SLIB_CALLBACK
    #if defined( __WINDOWS_386__ )
        #ifdef __SW_3S
            #pragma aux slib_callback_t modify [eax edx ecx fs gs];
        #else
            #pragma aux slib_callback_t modify [fs gs];
        #endif
    #endif
#endif
typedef void (__SLIB_CALLBACK slib_callback_t)( SPECS __SLIB *, OUTC_PARM );

/* specification flags... (values for _flags field above) */

#define SPF_ALT         0x0001
#define SPF_BLANK       0x0002
#define SPF_FORCE_SIGN  0x0004
#define SPF_LEFT_ADJUST 0x0008
#define SPF_CHAR        0x0010
#define SPF_SHORT       0x0020
#define SPF_LONG        0x0040
#define SPF_LONG_LONG   0x0080
#define SPF_LONG_DOUBLE 0x0100          // may be also used for __int64
#define SPF_NEAR        0x0200
#define SPF_FAR         0x0400
#define SPF_CVT         0x0800          // __cvt function

#ifdef __QNX__
#define SPF_ZERO_PAD    0x8000
#endif // __QNX__

#if defined( __STDC_WANT_LIB_EXT1__ ) && __STDC_WANT_LIB_EXT1__ == 1

#ifdef __WIDECHAR__
extern int __wprtf_s( void __SLIB *dest, const wchar_t * __restrict format,
                            va_list args, const char **errmsg, slib_callback_t *out_putc );
#else
extern int __prtf_s( void __SLIB *dest, const char * __restrict format,
                            va_list args, const char **errmsg, slib_callback_t *out_putc );
#endif
/* dest         parm for use by out_putc    */
/* format       pointer to format string    */
/* args         pointer to pointer to args  */
/* errmsg       constraint violation msg    */
/* out_putc     character output routine    */

#else

#ifdef __WIDECHAR__
extern int __wprtf( void __SLIB *dest, const wchar_t *format, va_list args, slib_callback_t *out_putc );
#else
extern int __prtf( void __SLIB *dest, const char *format, va_list args, slib_callback_t *out_putc );
#endif
/* dest         parm for use by out_putc    */
/* format       pointer to format string    */
/* args         pointer to pointer to args  */
/* out_putc     character output routine    */

#ifdef __QNX__
extern int __prtf_slib( void __SLIB *dest, const char * format, char **args, slib_callback_t *out_putc, int ptr_size );
/* dest         parm for use by out_putc    */
/* format       pointer to format string    */
/* args         pointer to pointer to args  */
/* out_putc     character output routine    */
/* ptr_size     size of pointer in bytes    */

    #if !defined(IN_SLIB) && defined(_M_I86)
        extern int ( _WCFAR * ( _WCFAR *__f)) ();
        #define __prtf(a,b,c,d) __prtf_slib(a,b,c,d,sizeof(void *))
        #define __prtf_slib(a,b,c,d,e) ((int(_WCFAR *) (void _WCFAR *,const char _WCFAR *,char * _WCFAR *args,slib_callback_t *__out,int)) __f[24])(a,b,c,d,e)
    #endif
#endif

#endif  /* Safer C */

#endif
