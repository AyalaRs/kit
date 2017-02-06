////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                            OLLYDBG PLUGIN API                              //
//                                                                            //
//                               Version 1.07b                                //
//                                                                            //
//                    Copyright (C) 2001-2002 Oleh Yuschuk                    //
//                                                                            //
//              Internet:  http://home.t-online.de/home/Ollydbg               //
//                        Email:  ollydbg@t-online.de                         //
//                                                                            //
// This code is distributed "as is", without warranty of any kind, expressed  //
// or implied, including, but not limited to warranty of fitness for any      //
// particular purpose. In no event will Oleh Yuschuk be liable to you for any //
// special, incidental, indirect, consequential or any other damages caused   //
// by the use, misuse, or the inability to use of this code, including any    //
// lost profits or lost savings, even if Oleh Yuschuk has been advised of the //
// possibility of such damages.                                               //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////
//////////////////////////// IMPORTANT INFORMATION /////////////////////////////

// 1. Export all callback functions by name, NOT by ordinal!
// 2. Force byte alignment of OllyDbg structures!
// 3. Set default char type to unsigned!
// 4. Read documentation!

// If you prefere Borland, this will force necessary settings (but, as a side
// effect, may cause plenty of warnings if other include files will be compiled
// with different options):

#ifdef __BORLANDC__
#pragma option -a1                     // Byte alignment
#pragma option -K                      // Unsigned char
#endif

// And here I check that settings are correct:

typedef struct t_aligntest {
  char           a;
  long           b;
} t_aligntest;

#if sizeof(t_aligntest)!=sizeof(char)+sizeof(long)
#error Please assure byte alignment of OllyDbg structures
#endif

#if (char)0xFF!=255
#error Please set default char type to unsigned
#endif

#undef t_aligntest

////////////////////////////////////////////////////////////////////////////////
///////////////////////////// GENERAL DECLARATIONS /////////////////////////////

#define PLUGIN_VERSION 107             // Version of plugin interface

#ifdef __cplusplus
#define extc           extern "C"      // Assure that names are not mangled
#else
#define extc           extern
#endif

typedef unsigned char  uchar;          // Unsigned character (byte)
typedef unsigned short ushort;         // Unsigned short
typedef unsigned int   uint;           // Unsigned integer
typedef unsigned long  ulong;          // Unsigned long

#define TEXTLEN        256             // Maximal length of text string
#define ARGLEN         1024            // Maximal length of argument string
#define USERLEN        4096            // Maximal length of record in .udd file
#define SHORTLEN       8               // Maximal length of short name

#define BLACK          0               // Indexes of colours used by OllyDbg
#define BLUE           1
#define GREEN          2
#define CYAN           3
#define RED            4
#define MAGENTA        5
#define BROWN          6
#define LIGHTGRAY      7
#define DARKGRAY       8
#define LIGHTBLUE      9
#define LIGHTGREEN     10
#define LIGHTCYAN      11
#define LIGHTRED       12
#define LIGHTMAGENTA   13
#define YELLOW         14
#define WHITE          15
#define MINT           16
#define SKYBLUE        17
#define IVORY          18
#define GRAY           19

#define NCOLORS        20              // Total number of defined colours

#define BLACKWHITE     0               // Colour schemes used by OllyDbg
#define BLUEGOLD       1
#define SKYWIND        2
#define NIGHTSTARS     3
#define SCHEME4        4
#define SCHEME5        5
#define SCHEME6        6
#define SCHEME7        7

#define FIXEDFONT      0               // Fonts used by OllyDbg. Variable-pitch
#define TERMINAL6      1               // fonts are placed at the end of this
#define FIXEDSYS       2               // table.
#define COURIERFONT    3
#define LUCIDACONS     4
#define FONT5          5
#define FONT6          6
#define FONT7          7
#define MAINFONT       8
#define SYSFONT        9
#define INFOFONT       10

////////////////////////////////////////////////////////////////////////////////
//////////////////////////// INFORMATION FUNCTIONS /////////////////////////////

extc void    cdecl Addtolist(long addr,int highlight,char *format,...);
extc void    cdecl Updatelist(void);
extc HWND    cdecl Createlistwindow(void);
extc void    cdecl Error(char *format,...);
extc void    cdecl Message(ulong addr,char *format,...);
extc void    cdecl Infoline(char *format,...);
extc void    cdecl Progress(int promille,char *format,...);
extc void    cdecl Flash(char *format,...);

////////////////////////////////////////////////////////////////////////////////
////////////////////////// DATA FORMATTING FUNCTIONS ///////////////////////////

// Bits used in Decodeaddress(), Decoderelativeoffset() and  Decodethreadname()
// to specify decoding mode:
#define ADC_DEFAULT    0x0000          // Default decoding mode
#define ADC_DIFFMOD    0x0001          // Show module only if different
#define ADC_NOMODNAME  0x0002          // Never show module name
#define ADC_VALID      0x0004          // Only decode if allocated memory
#define ADC_INMODULE   0x0008          // Only decode if in some module
#define ADC_SAMEMOD    0x0010          // Decode only address in same module
#define ADC_SYMBOL     0x0020          // Only decode if symbolic name
#define ADC_JUMP       0x0040          // Check if points to JMP/CALL command
#define ADC_OFFSET     0x0080          // Check if symbol for data
#define ADC_STRING     0x0100          // Check if pointer to ASCII or UNICODE
#define ADC_ENTRY      0x0200          // Check if entry to subroutine
#define ADC_UPPERCASE  0x0400          // First letter in uppercase if possible
#define ADC_WIDEFORM   0x0800          // Extended form of decoded name
#define ADC_NONTRIVIAL 0x1000          // Name + non-zero offset
#define ADC_DYNAMIC    0x2000          // JMP/CALL to dynamically loaded name

#define PLAINASCII     0x01            // Plain ASCII character
#define DIACRITICAL    0x02            // Diacritical character
#define RAREASCII      0x10            // Rare ASCII character

extc int     cdecl Decodeaddress(ulong addr,ulong base,int addrmode,
               char *symb,int nsymb,char *comment);
extc int     cdecl Decoderelativeoffset(ulong addr,int addrmode,
               char *symb,int nsymb);
extc int     cdecl Decodecharacter(char *s,uint c);
extc int     cdecl Printfloat4(char *s,float f);
extc int     cdecl Printfloat8(char *s,double d);
extc int     cdecl Printfloat10(char *s,long double ext);
extc int     cdecl Print3dnow(char *s,uchar *f);
extc int     cdecl Printsse(char *s,char *f);
extc int     cdecl IstextA(char c);
extc int     cdecl IstextW(wchar_t w);
extc int     cdecl Stringtotext(char *data,int ndata,char *text,int ntext);

////////////////////////////////////////////////////////////////////////////////
///////////////////////////// DATA INPUT FUNCTIONS /////////////////////////////

#define MAXCMDSIZE     16              // Maximal length of 80x86 command
#define NSEQ           8               // Max length of command sequence
#define NMODELS        8               // Number of assembler search models

// Note that each of dialog functions decodes only subset of listed flags.
#define DIA_ASKGLOBAL  0x0001          // Display checkbox "Global search"
#define DIA_HEXONLY    0x0002          // Hexadecimal format only
#define DIA_ALIGNED    0x0004          // Display checkbox "Aligned search"
#define DIA_DEFHEX     0x0000          // On startup, cursor in hex control
#define DIA_DEFASCII   0x0010          // On startup, cursor in ASCII control
#define DIA_DEFUNICODE 0x0020          // On startup, cursor in UNICODE control
#define DIA_SEARCH     0x0040          // Is a search dialog

// Status of animation or trace.
#define ANIMATE_OFF    0               // No animation
#define ANIMATE_IN     1               // Animate into
#define ANIMATE_OVER   2               // Animate over
#define ANIMATE_RET    3               // Execute till RET
#define ANIMATE_SKPRET 4               // Skip RET instruction
#define ANIMATE_USER   5               // Execute till user code
#define ANIMATE_TRIN   6               // Run trace in
#define ANIMATE_TROVER 7               // Run trace over
#define ANIMATE_STOP   8               // Gracefully stop animation

typedef struct t_hexstr {              // String used for hex/text search
  int            n;                    // String length
  uchar          data[TEXTLEN];        // Data
  uchar          mask[TEXTLEN];        // Mask, 0 bits are masked
} t_hexstr;

typedef struct t_asmmodel {            // Model to search for assembler command
  uchar          code[MAXCMDSIZE];     // Binary code
  uchar          mask[MAXCMDSIZE];     // Mask for binary code (0: bit ignored)
  int            length;               // Length of code, bytes (0: empty)
  int            jmpsize;              // Offset size if relative jump
  int            jmpoffset;            // Offset relative to IP
  int            jmppos;               // Position of jump offset in command
} t_asmmodel;

typedef struct t_extmodel {            // Model for extended command search
  char           code[MAXCMDSIZE];     // Binary code
  char           mask[MAXCMDSIZE];     // Mask for binary code (0: bit ignored)
  int            length;               // Length of code, bytes (0: empty)
  int            jmpsize;              // Offset size if relative jump
  int            jmpoffset;            // Offset relative to IP
  int            jmppos;               // Position of jump offset in command
  int            isany;                // Count for ANY's argument
  int            cmdoffset;            // Offset of command in the source
  char           ramask[MAXCMDSIZE];   // Mask for pseudoregister RA
  char           rbmask[MAXCMDSIZE];   // Mask for pseudoregister RB
} t_extmodel;

extc int     cdecl Getlong(char *title,ulong *data,int datasize,
               char letter,int mode);
extc int     cdecl Getlongxy(char *title,ulong *data,int datasize,
               char letter,int mode,int x,int y);
extc int     cdecl Getline(char *title,ulong *data);
extc int     cdecl Getlinexy(char *title,ulong *data,int x,int y);
extc int     cdecl Getfloat10(char *title,long double *fdata,
               uchar *tag,char letter,int mode);
extc int     cdecl Getfloat10xy(char *title,long double *fdata,
               char *tag,char letter,int mode,int x,int y);
extc int     cdecl Getfloat(char *title,void *fdata,int size,
               char letter,int mode);
extc int     cdecl Getfloatxy(char *title,void *fdata,int size,
               char letter,int mode,int x,int y);
extc void    cdecl Getasmfindmodel(t_asmmodel model[NMODELS],
               char letter,int searchall);
extc void    cdecl Getasmfindmodelxy(t_asmmodel model[NMODELS],
               char letter,int searchall,int x,int y);
extc int     cdecl Gettext(char *title,char *text,
               char letter,int type,int fontindex);
extc int     cdecl Gettextxy(char *title,char *text,char letter,
               int type,int fontindex,int x,int y);
extc int     cdecl Gethexstring(char *title,t_hexstr *hs,
               int mode,int fontindex,char letter);
extc int     cdecl Gethexstringxy(char *title,t_hexstr *hs,int mode,
               int fontindex,char letter,int x,int y);
extc int     cdecl Getmmx(char *title,uchar *data,int mode);
extc int     cdecl Getmmxxy(char *title,char *data,int mode,int x,int y);
extc int     cdecl Get3dnow(char *title,uchar *data,int mode);
extc int     cdecl Get3dnowxy(char *title,char *data,int mode,int x,int y);
extc int     cdecl Browsefilename(char *title,char *name,char *defext,
               int getarguments);
extc int     cdecl OpenEXEfile(char *path,int dropped);
extc void    cdecl Animate(int animation);

////////////////////////////////////////////////////////////////////////////////
//////////////////////////// SORTED DATA FUNCTIONS /////////////////////////////

#define NBAR           17              // Max allowed number of segments in bar

#define BAR_PRESSED    0x01            // Bar segment pressed, used internally
#define BAR_DISABLED   0x02            // Bar segment disabled
#define BAR_NOSORT     0x04            // Flat bar column, supports no sorting
#define BAR_NORESIZE   0x08            // Bar column cannot be resized
#define BAR_BUTTON     0x10            // Segment sends WM_USER_BAR
#define BAR_SHIFTSEL   0x20            // Selection shifted 1/2 char to left

#define CAPT_FREE      0               // Bar and data are not captured

#define TABLE_DIR      0x0001          // Bottom-to-top table
#define TABLE_COPYMENU 0x0002          // Attach copy item
#define TABLE_SORTMENU 0x0004          // Attach sort menu
#define TABLE_APPMENU  0x0010          // Attach appearance menu
#define TABLE_WIDECOL  0x0020          // Attach wide columns menu item
#define TABLE_USERAPP  0x0040          // Attach user-processed appearance menu
#define TABLE_USERDEF  0x0080          // User-drawn table
#define TABLE_NOHSCR   0x0100          // Table contains no horizontal scroll
#define TABLE_SAVEPOS  0x0200          // Save position & appearance to .ini
#define TABLE_CPU      0x0400          // Table belongs to CPU window
#define TABLE_FASTSEL  0x0800          // Update when selection changes
#define TABLE_COLSEL   0x1000          // Column-wide selection
#define TABLE_SAVEAPP  0x2000          // Save multiinstance appearance to .ini

#define DRAW_NORMAL    0x0000          // Normal plain text
#define DRAW_GRAY      0x0001          // Grayed text
#define DRAW_HILITE    0x0002          // Highlighted text
#define DRAW_UL        0x0004          // Underlined text
#define DRAW_SELECT    0x0008          // Selected background
#define DRAW_EIP       0x0010          // Inverted normal text/background
#define DRAW_BREAK     0x0020          // Breakpoint background
#define DRAW_GRAPH     0x0040          // Graphical element
#define DRAW_MASK      0x0080          // Use mask to set individual colors
#define DRAW_EXTSEL    0x0100          // Extend mask till end of column
#define DRAW_UNICODE   0x0200          // Text in UNICODE
#define DRAW_TOP       0x0400          // Draw upper half of text
#define DRAW_BOTTOM    0x0800          // Draw lower half of text

// Please note: Although types here contain mostly unique bit assignments, it's
// not really necessary. Same bits, except for reserved general types, can be
// freely shared between different types of sorted data.
// General item types:
#define TY_NEW         0x00000001      // Item is new
#define TY_CONFIRMED   0x00000002      // Item still exists
#define TY_MAIN        0x00000004      // Main item (thread or module)
#define TY_INVALID     0x00000008      // Invalid type (item does not exist)
#define TY_SELECTED    0x80000000      // Reserved for multiple selection
// Module-specific types:
#define TY_REPORTED    0x00000010      // Stop on module was reported
// Reference-specific types:
#define TY_REFERENCE   0x00000020      // Item is a real reference
#define TY_ORIGIN      0x00000040      // Item is a search origin
// Breakpoint-specific types:
#define TY_STOPAN      0x00000080      // Stop animation if TY_ONESHOT
#define TY_SET         0x00000100      // Code INT3 is in memory
#define TY_ACTIVE      0x00000200      // Permanent breakpoint
#define TY_DISABLED    0x00000400      // Permanent disabled breakpoint
#define TY_ONESHOT     0x00000800      // Temporary stop
#define TY_TEMP        0x00001000      // Temporary breakpoint
#define TY_KEEPCODE    0x00002000      // Set and keep command code
#define TY_KEEPCOND    0x00004000      // Keep condition unchanged (0: remove)
#define TY_NOUPDATE    0x00008000      // Don't redraw breakpoint window
#define TY_RTRACE      0x00010000      // Pseudotype of run trace breakpoint
// Namelist-specific types:
#define TY_EXPORT      0x00010000      // Exported name
#define TY_IMPORT      0x00020000      // Imported name
#define TY_LIBRARY     0x00040000      // Name extracted from object file
#define TY_LABEL       0x00080000      // User-defined name
#define TY_ANYNAME     0x000F0000      // Any of the namelist flags above
#define TY_KNOWN       0x00100000      // Name of known function
// Memory-specific types:
#define TY_SFX         0x00080000      // Contains self-extractor
#define TY_CODE        0x00100000      // Contains image of code section
#define TY_DATA        0x00200000      // Contains image of data section
#define TY_IMPDATA     0x00400000      // Memory block includes import data
#define TY_EXPDATA     0x00800000      // Memory block includes export data
#define TY_RSRC        0x01000000      // Memory block includes resources
#define TY_RELOC       0x02000000      // Memory block includes relocation data
#define TY_STACK       0x04000000      // Contains stack of some thread
#define TY_THREAD      0x08000000      // Contains data block of some thread
#define TY_HEADER      0x10000000      // COFF header
#define TY_ANYMEM      0x1FF80000      // Any of the memory flags above
#define TY_GUARDED     0x20000000      // NT only: guarded memory block
// Procedure data-specific types:
#define TY_PASCAL      0x00010000      // Procedure ends with RET nnn
#define TY_C           0x00020000      // ADD ESP,nnn after call to procedure

typedef struct t_scheme {              // Color scheme
  char           *name;                // Name of the scheme
  int            textcolor;            // Colour used to draw text
  int            hitextcolor;          // Colour used to draw highlited text
  int            lowcolor;             // Colour used to draw auxiliary text
  int            bkcolor;              // Colour used to draw backgrounds
  int            selbkcolor;           // Colour used for selecting background
  int            linecolor;            // Colour used for separating lines
  int            auxcolor;             // Colour used for auxiliary objects
  int            condbkcolor;          // Colour used for background of cond brk
} t_scheme;

typedef struct t_schemeopt {           // Color scheme, alternative form
  char           *name;                // Name of the scheme
  int            color[8];             // Colours used as in t_scheme
} t_schemeopt;

typedef struct t_bar {
  int            nbar;                 // Number of active columns
  int            font;                 // Font used for bar segments
  int            dx[NBAR];             // Actual widths of columns, pixels
  int            defdx[NBAR];          // Default widths of columns, chars
  char           *name[NBAR];          // Column names (may be NULL)
  uchar          mode[NBAR];           // Combination of BAR_xxx bits
  int            captured;             // One of CAPT_xxx, set to CAPT_FREE
  int            active;               // Info about how mouse is captured
  int            prevx;                // Previous mouse coordinate
} t_bar;

typedef struct t_sortheader {          // Header of sorted data field
  ulong          addr;                 // Base address of the entry
  ulong          size;                 // Size address of the entry
  ulong          type;                 // Entry type, TY_xxx
} t_sortheader;

typedef int  SORTFUNC(const t_sortheader *,const t_sortheader *,const int);
typedef int  DRAWFUNC(char *,char *,int *,t_sortheader *,int);
typedef void DESTFUNC(t_sortheader *);

#define AUTOARRANGE    ((SORTFUNC *)1) // Autoarrangeable sorted data

typedef struct t_sorted {              // Descriptor of sorted table
  char           name[MAXPATH];        // Name of table, as appears in error
  int            n;                    // Actual number of entries
  int            nmax;                 // Maximal number of entries
  int            selected;             // Index of selected entry or -1
  ulong          seladdr;              // Base address of selected entry
  int            itemsize;             // Size of single entry
  ulong          version;              // Unique version of table
  void           *data;                // Entries, sorted by address
  SORTFUNC       *sortfunc;            // Function which sorts data or NULL
  DESTFUNC       *destfunc;            // Destructor function or NULL
  int            sort;                 // Sorting criterium (column)
  int            sorted;               // Whether indexes are sorted
  int            *index;               // Indexes, sorted by criterium
  int            suppresserr;          // Suppress multiple overflow errors
} t_sorted;

typedef struct t_table {               // Window with sorted data and bar
  HWND           hw;                   // Handle of window or NULL
  t_sorted       data;                 // Sorted data
  t_bar          bar;                  // Description of bar
  int            showbar;              // Bar: 1-displayed, 0-hidden, -1-absent
  int            hscroll;              // Horiz. scroll: 1-displayed, 0-hidden
  int            mode;                 // Combination of bits TABLE_xxx
  int            font;                 // Font used by window
  int            scheme;               // Colour scheme used by window
  int            offset;               // First displayed row
  int            xshift;               // Shift in X direction, pixels
  DRAWFUNC       *drawfunc;            // Function which decodes table fields
} t_table;

extc int     cdecl Createsorteddata(t_sorted *sd,char *name,int itemsize,
               int nmax,SORTFUNC *sortfunc,DESTFUNC *destfunc);
extc void    cdecl Destroysorteddata(t_sorted *sd);
extc void    cdecl *Addsorteddata(t_sorted *sd,void *item);
extc void    cdecl Deletesorteddata(t_sorted *sd,ulong addr);
extc void    cdecl Deletesorteddatarange(t_sorted *sd,ulong addr0,ulong addr1);
extc int     cdecl Deletenonconfirmedsorteddata(t_sorted *sd);
extc void*   cdecl Findsorteddata(t_sorted *sd,ulong addr);
extc void*   cdecl Findsorteddatarange(t_sorted *sd,ulong addr0,ulong addr1);
extc int     cdecl Findsorteddataindex(t_sorted *sd,ulong addr0,ulong addr1);
extc int     cdecl Sortsorteddata(t_sorted *sd,int sort);
extc void*   cdecl Getsortedbyselection(t_sorted *sd,int index);
extc void    cdecl Defaultbar(t_bar *pb);
extc int     cdecl Tablefunction(t_table *pt,
               HWND hw,UINT msg,WPARAM wp,LPARAM lp);
extc void    cdecl Painttable(HWND hw,t_table *pt,DRAWFUNC getline);
extc int     cdecl Gettableselectionxy(t_table *pt,int column,int *px,int *py);
extc void    cdecl Selectandscroll(t_table *pt,int index,int mode);

////////////////////////////////////////////////////////////////////////////////
//////////////////////////////// NAME FUNCTIONS ////////////////////////////////

// Types of names used in name functions. Note that higher-priority types have
// smaller identifiers!
#define NM_NONAME      0x00            // Undefined name
#define NM_ANYNAME     0xFF            // Name of any type
// Names saved in the data file of module they appear.
#define NM_LABEL       0x31            // User-defined label
#define NM_EXPORT      0x32            // Exported (global) name
#define NM_IMPORT      0x33            // Imported name
#define NM_LIBRARY     0x34            // Name from library or object file
#define NM_CONST       0x35            // User-defined constant
#define NM_COMMENT     0x36            // User-defined comment
#define NM_LIBCOMM     0x37            // Comment from library or object file
#define NM_BREAK       0x38            // Condition related with breakpoint
#define NM_ARG         0x39            // Arguments decoded by analyzer
#define NM_ANALYSE     0x3A            // Comment added by analyzer
#define NM_BREAKEXPR   0x3B            // Expression related with breakpoint
#define NM_BREAKEXPL   0x3C            // Explanation related with breakpoint
#define NM_ASSUME      0x3D            // Assume function with known arguments
#define NM_STRUCT      0x3E            // Code structure decoded by analyzer
#define NM_CASE        0x3F            // Case description decoded by analyzer
// Names saved in the data file of main module.
#define NM_INSPECT     0x40            // Several last inspect expressions
#define NM_WATCH       0x41            // Watch expressions
#define NM_ASM         0x42            // Several last assembled strings
#define NM_FINDASM     0x43            // Several last find assembler strings
#define NM_LASTWATCH   0x48            // Several last watch expressions
#define NM_SOURCE      0x49            // Several last source search strings
#define NM_REFTXT      0x4A            // Several last ref text search strings
#define NM_GOTO        0x4B            // Several last expressions to follow
#define NM_GOTODUMP    0x4C            // Several expressions to follow in Dump
#define NM_TRPAUSE     0x4D            // Several expressions to pause trace

#define NMHISTORY      0x40            // Converts NM_xxx to type of init list

extc int     cdecl Insertname(ulong addr,int type,char *name);
extc int     cdecl Quickinsertname(ulong addr,int type,char *name);
extc void    cdecl Mergequicknames(void);
extc void    cdecl Discardquicknames(void);
extc int     cdecl Findname(ulong addr,int type,char *name);
extc int     cdecl Decodename(ulong addr,int type,char *name);
extc ulong   cdecl Findnextname(char *name);
extc int     cdecl Findlabel(ulong addr,char *name);
extc void    cdecl Deletenamerange(ulong addr0,ulong addr1,int type);
extc int     cdecl Findlabelbyname(char *name,ulong *addr,
               ulong addr0,ulong addr1);
extc ulong   cdecl Findimportbyname(char *name,ulong addr0,ulong addr1);
extc int     cdecl Demanglename(char *name,int type,char *undecorated);
extc int     cdecl Findsymbolicname(ulong addr,char *fname);

////////////////////////////////////////////////////////////////////////////////
//////////////////////////// DISASSEMBLY FUNCTIONS /////////////////////////////

#define REG_EAX        0               // Indexes of general-purpose registers
#define REG_ECX        1               // in t_reg.
#define REG_EDX        2
#define REG_EBX        3
#define REG_ESP        4
#define REG_EBP        5
#define REG_ESI        6
#define REG_EDI        7

#define SEG_UNDEF     -1
#define SEG_ES         0               // Indexes of segment/selector registers
#define SEG_CS         1               // in t_reg.
#define SEG_SS         2
#define SEG_DS         3
#define SEG_FS         4
#define SEG_GS         5

// Selected items in register window.
#define RS_NONE        0x0000          // No selection
#define RS_INT         0x0010          // General-purpose 32-bit registers
#define RS_EIP         0x0020          // EIP (instruction pointer)
#define RS_FLG         0x0030          // 1-bit decoded flags
#define RS_SEG         0x0040          // Segment (selector) registers
#define RS_EFL         0x0050          // 32-bit flag register
#define RS_TAG         0x0060          // FPU register tag
#define RS_FPU         0x0070          // 80-bit FPU registers
#define RS_FST         0x0080          // FPU status
#define RS_FCO         0x0090          // FPU condition bits
#define RS_FER         0x00A0          // FPU error bits
#define RS_FCW         0x00B0          // FPU control word
#define RS_FPR         0x00C0          // FPU precision fields
#define RS_FEM         0x00D0          // FPU error mask bits
#define RS_MMX         0x00E0          // MMX registers
#define RS_3DN         0x00F0          // 3DNow! registers
#define RS_SSE         0x0100          // SSE registers
#define RS_CSR         0x0110          // SSE MXCSR register
#define RS_CSB         0x0120          // SSE MXCSR bits
#define RS_CPR         0x0130          // SSE rounding control
#define RS_ERR         0x0140          // Last thread error

#define RS_GROUP       0x01F0          // Mask to extract group of registers
#define RS_INDEX       0x000F          // Mask to extract index of register

#define NREGSTACK      32              // Length of stack trace buffer
#define MAXCALSIZE     8               // Max length of CALL without prefixes

#define INT3           0xCC            // Code of 1-byte breakpoint
#define NOP            0x90            // Code of 1-byte NOP command
#define TRAPFLAG       0x00000100      // Trap flag in CPU flag register

#define C_TYPEMASK     0xF0            // Mask for command type
#define   C_CMD        0x00            // Ordinary instruction
#define   C_PSH        0x10            // PUSH instruction
#define   C_POP        0x20            // POP instruction
#define   C_MMX        0x30            // MMX instruction
#define   C_FLT        0x40            // FPU instruction
#define   C_JMP        0x50            // JUMP instruction
#define   C_JMC        0x60            // Conditional JUMP instruction
#define   C_CAL        0x70            // CALL instruction
#define   C_RET        0x80            // RET instruction
#define   C_FLG        0x90            // Changes system flags
#define   C_RTF        0xA0            // C_JMP and C_FLG simultaneously
#define   C_REP        0xB0            // Instruction with REPxx prefix
#define   C_PRI        0xC0            // Privileged instruction
#define   C_SSE        0xD0            // SSE instruction
#define   C_NOW        0xE0            // 3DNow! instruction
#define   C_BAD        0xF0            // Unrecognized command
#define C_RARE         0x08            // Rare command, seldom used in programs
#define C_SIZEMASK     0x07            // MMX data size or special flag
#define   C_EXPL       0x01            // (non-MMX) Specify explicit memory size

#define C_DANGER95     0x01            // Command is dangerous under Win95/98
#define C_DANGER       0x03            // Command is dangerous everywhere
#define C_DANGERLOCK   0x07            // Dangerous with LOCK prefix

#define DEC_TYPEMASK   0x1F            // Type of memory byte
#define   DEC_UNKNOWN  0x00            // Unknown type
#define   DEC_BYTE     0x01            // Accessed as byte
#define   DEC_WORD     0x02            // Accessed as short
#define   DEC_NEXTDATA 0x03            // Subsequent byte of data
#define   DEC_DWORD    0x04            // Accessed as long
#define   DEC_FLOAT4   0x05            // Accessed as float
#define   DEC_FWORD    0x06            // Accessed as descriptor/long pointer
#define   DEC_FLOAT8   0x07            // Accessed as double
#define   DEC_QWORD    0x08            // Accessed as 8-byte integer
#define   DEC_FLOAT10  0x09            // Accessed as long double
#define   DEC_TBYTE    0x0A            // Accessed as 10-byte integer
#define   DEC_STRING   0x0B            // Zero-terminated ASCII string
#define   DEC_UNICODE  0x0C            // Zero-terminated UNICODE string
#define   DEC_3DNOW    0x0D            // Accessed as 3Dnow operand
#define   DEC_SSE      0x0E            // Accessed as SSE operand
#define   DEC_TEXT     0x10            // For use in t_result only
#define   DEC_BYTESW   0x11            // Accessed as byte index to switch
#define   DEC_NEXTCODE 0x13            // Subsequent byte of command
#define   DEC_COMMAND  0x1D            // First byte of command
#define   DEC_JMPDEST  0x1E            // Jump destination
#define   DEC_CALLDEST 0x1F            // Call (and maybe jump) destination
#define DEC_PROCMASK   0x60            // Procedure analysis
#define   DEC_PROC     0x20            // Start of procedure
#define   DEC_PBODY    0x40            // Body of procedure
#define   DEC_PEND     0x60            // End of procedure
#define DEC_CHECKED    0x80            // Byte was analysed
#define DEC_SIGNED     0x100           // For use in t_result only

#define DECR_TYPEMASK  0x3F            // Type of register or memory
#define   DECR_BYTE    0x21            // Byte register
#define   DECR_WORD    0x22            // Short integer register
#define   DECR_DWORD   0x24            // Long integer register
#define   DECR_QWORD   0x28            // MMX register
#define   DECR_FLOAT10 0x29            // Floating-point register
#define   DECR_SEG     0x2A            // Segment register
#define   DECR_3DNOW   0x2D            // 3Dnow! register
#define   DECR_SSE     0x2E            // SSE register
#define DECR_ISREG     0x20            // Mask to check that operand is register

#define DISASM_SIZE    0               // Determine command size only
#define DISASM_DATA    1               // Determine size and analysis data
#define DISASM_TRACE   2               // Trace integer registers
#define DISASM_FILE    3               // Disassembly, no symbols/registers
#define DISASM_CODE    4               // Disassembly, registers undefined
#define DISASM_ALL     5               // Complete disassembly
#define DISASM_RTRACE  6               // Disassemble with run-trace registers

// Warnings issued by Disasm():
#define DAW_FARADDR    0x0001          // Command is a far jump, call or return
#define DAW_SEGMENT    0x0002          // Command loads segment register
#define DAW_PRIV       0x0004          // Privileged command
#define DAW_IO         0x0008          // I/O command
#define DAW_SHIFT      0x0010          // Shift constant out of range 1..31
#define DAW_PREFIX     0x0020          // Superfluous prefix
#define DAW_LOCK       0x0040          // Command has LOCK prefix
#define DAW_STACK      0x0080          // Unaligned stack operation
#define DAW_DANGER95   0x1000          // May mess up Win95/98 if executed
#define DAW_DANGEROUS  0x3000          // May mess up any OS if executed

#define RST_INVALID    0               // Register undefined
#define RST_VALUE      1               // Register contains regdata
#define RST_VFIXUP     2               // Reg contains regdata that is fixup
#define RST_INDIRECT   3               // Register contains [regdata]

#define NREGSTACK      32              // Length of stack trace buffer

typedef struct t_reg {                 // Excerpt from context
  int            modified;             // Some regs modified, update context
  int            modifiedbyuser;       // Among modified, some modified by user
  int            singlestep;           // Type of single step, SS_xxx
  ulong          r[8];                 // EAX,ECX,EDX,EBX,ESP,EBP,ESI,EDI
  ulong          ip;                   // Instruction pointer (EIP)
  ulong          flags;                // Flags
  int            top;                  // Index of top-of-stack
  long double    f[8];                 // Float registers, f[top] - top of stack
  uchar          tag[8];               // Float tags (0x3 - empty register)
  ulong          fst;                  // FPU status word
  ulong          fcw;                  // FPU control word
  ulong          s[6];                 // Segment registers ES,CS,SS,DS,FS,GS
  ulong          base[6];              // Segment bases
  ulong          limit[6];             // Segment limits
  uchar          big[6];               // Default size (0-16, 1-32 bit)
  ulong          dr6;                  // Debug register DR6
  ulong          threadid;             // ID of thread that owns registers
  ulong          lasterror;            // Last thread error or 0xFFFFFFFF
  int            ssevalid;             // Whether SSE registers valid
  int            ssemodified;          // Whether SSE registers modified
  char           ssereg[8][16];        // SSE registers
  ulong          mxcsr;                // SSE control and status register
  int            selected;             // Reports selected register to plugin
  ulong          dummy[4];             // Reserved for future compatibility
} t_reg;

typedef struct t_operand {             // Full decription of command's operand
  char           optype;               // DEC_xxx (mem) or DECR_xxx (reg,const)
  char           opsize;               // Size of operand
  char           regscale[8];          // Scales of registers
  char           seg;                  // Segment register
  ulong          opconst;              // Constant
} t_operand;

typedef struct t_disasm {              // Results of disassembling
  ulong          ip;                   // Instrucion pointer
  char           dump[TEXTLEN];        // Hexadecimal dump of the command
  char           result[TEXTLEN];      // Disassembled command
  char           comment[TEXTLEN];     // Brief comment
  char           opinfo[3][TEXTLEN];   // Comments to command's operands
  int            cmdtype;              // One of C_xxx
  int            memtype;              // Type of addressed variable in memory
  int            nprefix;              // Number of prefixes
  int            indexed;              // Address contains register(s)
  ulong          jmpconst;             // Constant jump address
  ulong          jmptable;             // Possible address of switch table
  ulong          adrconst;             // Constant part of address
  ulong          immconst;             // Immediate constant
  int            zeroconst;            // Whether contains zero constant
  int            fixupoffset;          // Possible offset of 32-bit fixups
  int            fixupsize;            // Possible total size of fixups or 0
  ulong          jmpaddr;              // Destination of jump/call/return
  int            condition;            // 0xFF:unconditional, 0:false, 1:true
  int            error;                // Error while disassembling command
  int            warnings;             // Combination of DAW_xxx
  int            optype[3];            // Type of operand (extended set DEC_xxx)
  int            opsize[3];            // Size of operand, bytes
  int            opgood[3];            // Whether address and data valid
  ulong          opaddr[3];            // Address if memory, index if register
  ulong          opdata[3];            // Actual value (only integer operands)
  t_operand      op[3];                // Full description of operand
  ulong          regdata[8];           // Registers after command is executed
  int            regstatus[8];         // Status of registers, one of RST_xxx
  ulong          addrdata;             // Traced memory address
  int            addrstatus;           // Status of addrdata, one of RST_xxx
  ulong          regstack[NREGSTACK];  // Stack tracing buffer
  int            rststatus[NREGSTACK]; // Status of stack items
  int            nregstack;            // Number of items in stack trace buffer
  ulong          reserved[29];         // Reserved for plugin compatibility
} t_disasm;

extc ulong   cdecl Disasm(uchar *src,ulong srcsize,ulong srcip,uchar *srcdec,
               t_disasm *disasm,int disasmmode,ulong threadid);
extc ulong   cdecl Disassembleback(uchar *block,ulong base,ulong size,
               ulong ip,int n,int usedec);
extc ulong   cdecl Disassembleforward(uchar *block,ulong base,ulong size,
               ulong ip,int n,int usedec);
extc int     cdecl Issuspicious(char *cmd,ulong size,ulong ip,
               ulong threadid,t_reg *preg,char *s);
extc int     cdecl Isfilling(ulong offset,char *data,ulong size,ulong align);

////////////////////////////////////////////////////////////////////////////////
////////////////////////////// ASSEMBLY FUNCTIONS //////////////////////////////

extc int     cdecl Assemble(char *cmd,ulong ip,t_asmmodel *model,int attempt,
               int constsize,char *errtext);
extc int     cdecl Checkcondition(int code,ulong flags);

////////////////////////////////////////////////////////////////////////////////
///////////////////////////////// EXPRESSIONS //////////////////////////////////

typedef struct t_result {              // Result of expression's evaluation
  int            type;                 // Type of expression, DEC(R)_xxx
  int            dtype;                // Type of data, DEC_xxx
  union {
    uchar        data[10];             // Binary form of expression's value
    ulong        u;                    // Value as unsigned integer
    long         l;                    // Value as signed integer
    long double  f; };                 // Value as 80-bit float
  union {
    char         value[TEXTLEN];       // ASCII form of expression's value
    wchar_t      wvalue[TEXTLEN/2]; }; // UNICODE form of expression's value
  ulong          lvaddr;               // Address of lvalue or NULL
} t_result;

extc int     cdecl Expression(t_result *result,char *expression,int a,int b,
               uchar *data,ulong database,ulong datasize,ulong threadid);

////////////////////////////////////////////////////////////////////////////////
/////////////////////////////// THREAD FUNCTIONS ///////////////////////////////

typedef struct t_thread {              // Information about active threads
  ulong          threadid;             // Thread identifier
  ulong          dummy;                // Always 1
  ulong          type;                 // Service information, TY_xxx
  HANDLE         thread;               // Thread handle
  ulong          datablock;            // Per-thread data block
  ulong          entry;                // Thread entry point
  ulong          stacktop;             // Working variable of Listmemory()
  ulong          stackbottom;          // Working variable of Listmemory()
  CONTEXT        context;              // Actual context of the thread
  t_reg          reg;                  // Actual contents of registers
  int            regvalid;             // Whether reg is valid
  t_reg          oldreg;               // Previous contents of registers
  int            oldregvalid;          // Whether oldreg is valid
  int            suspendcount;         // Suspension count (may be negative)
  long           usertime;             // Time in user mode, 1/10th ms, or -1
  long           systime;              // Time in system mode, 1/10th ms, or -1
  ulong          reserved[16];         // Reserved for future compatibility
} t_thread;

extc HWND    cdecl Createthreadwindow(void);
extc t_thread* cdecl Findthread(ulong threadid);
extc int     cdecl Decodethreadname(char *s,ulong threadid,int mode);
extc ulong   cdecl Getcputhreadid(void);
extc ulong   cdecl Runsinglethread(ulong threadid);
extc void    cdecl Restoreallthreads(void);


////////////////////////////////////////////////////////////////////////////////
/////////////////////////////// MEMORY FUNCTIONS ///////////////////////////////

// Mode bits recognized by Readmemory() and Writememory().
#define MM_RESTORE     0x01            // Restore or remove INT3 breakpoints
#define MM_SILENT      0x02            // Don't display error message
#define MM_DELANAL     0x04            // Delete analysis from the memory

typedef struct t_memory {              // Memory block descriptor
  ulong          base;                 // Base address of memory block
  ulong          size;                 // Size of block
  ulong          type;                 // Service information, TY_xxx
  ulong          owner;                // Address of owner of the memory
  ulong          initaccess;           // Initial read/write access
  ulong          access;               // Actual status and read/write access
  ulong          threadid;             // Block belongs to this thread or 0
  char           sect[SHORTLEN];       // Name of module section
  uchar          *copy;                // Copy used in CPU window or NULL
  ulong          reserved[8];          // Reserved for plugin compatibility
} t_memory;

extc t_memory* cdecl Findmemory(ulong addr);
extc int     cdecl Guardmemory(ulong base,ulong size,int guard);
extc void    cdecl Havecopyofmemory(uchar *copy,ulong base,ulong size);
extc ulong   cdecl Readmemory(void *buf,ulong addr,ulong size,int mode);
extc ulong   cdecl Writememory(void *buf,ulong addr,ulong size,int mode);
extc ulong   cdecl Readcommand(ulong ip,char *cmd);

////////////////////////////////////////////////////////////////////////////////
/////////////////////////////// MODULE FUNCTIONS ///////////////////////////////

typedef struct t_stringtable {         // Pointers to string resources
  ulong          name;                 // Name of block of strings
  ulong          language;             // Language identifier
  ulong          addr;                 // Address of block in memory
  ulong          size;                 // Size of block in memory
} t_stringtable;

typedef struct t_fixup {
  ulong          base;                 // Address of fixup
  ulong          size;                 // Size of fixup (usually 2 or 4 bytes)
} t_fixup;

typedef struct t_symvar {              // Symbolic variable from debug data
  int            next;                 // Index of next variable in chain or -1
  ushort         kind;                 // Kind of variable
  union {
    ulong        type;                 // Type of variable
    ulong        regs; };              // Registers in optvar
  union {
    ulong        addr;                 // Address or description of registers
    long         offset; };            // Offset for EBP-relative data
  ulong          size;                 // Size of variable or optvar data
  int            optvar;               // Index of optvar chain or -1
  ulong          nameaddr;             // NM_DEBUG address of var's name
} t_symvar;

typedef struct t_module {              // Executable module descriptor
  ulong          base;                 // Base address of module
  ulong          size;                 // Size occupied by module
  ulong          type;                 // Service information, TY_xxx
  ulong          codebase;             // Base address of module code block
  ulong          codesize;             // Size of module code block
  ulong          resbase;              // Base address of resources
  ulong          ressize;              // Size of resources
  t_stringtable  *stringtable;         // Pointers to string resources or NULL
  int            nstringtable;         // Actual number of used stringtable
  int            maxstringtable;       // Actual number of allocated stringtable
  ulong          entry;                // Address of <ModuleEntryPoint> or NULL
  ulong          database;             // Base address of module data block
  ulong          idatatable;           // Base address of import data table
  ulong          idatabase;            // Base address of import data block
  ulong          edatatable;           // Base address of export data table
  ulong          edatasize;            // Size of export data table
  ulong          reloctable;           // Base address of relocation table
  ulong          relocsize;            // Size of relocation table
  char           name[SHORTLEN];       // Short name of the module
  char           path[MAXPATH];        // Full name of the module
  int            nsect;                // Number of sections in the module
  IMAGE_SECTION_HEADER *sect;          // Copy of section headers from file
  ulong          headersize;           // Total size of headers in executable
  ulong          fixupbase;            // Base of image in executable file
  int            nfixup;               // Number of fixups in executable
  t_fixup        *fixup;               // Extracted fixups or NULL
  char           *codedec;             // Decoded code features or NULL
  ulong          codecrc;              // Code CRC for actual decoding
  char           *hittrace;            // Hit tracing data or NULL
  char           *hittracecopy;        // Copy of INT3-substituted code
  char           *datadec;             // Decoded data features or NULL
  t_table        namelist;             // List of module names
  t_symvar       *symvar;              // Descriptions of symbolic variables
  int            nsymvar;              // Actual number of elements in symvar
  int            maxsymvar;            // Maximal number of elements in symvar
  char           *globaltypes;         // Global types from debug info
  ulong          mainentry;            // Address of WinMain() etc. in dbg data
  ulong          realsfxentry;         // Entry of packed code or NULL
  int            updatenamelist;       // Request to update namelist
  ulong          origcodesize;         // Original size of module code block
  ulong          sfxbase;              // Base of memory block with SFX
  ulong          sfxsize;              // Size of memory block with SFX
  ulong          reserved[28];         // Reserved for plugin compatibility
} t_module;

extc t_module* cdecl Findmodule(ulong addr);
extc t_fixup* cdecl Findfixup(t_module *pmod,ulong addr);
extc uchar*  cdecl Finddecode(ulong addr,ulong *psize);
extc ulong   cdecl Findfileoffset(t_module *pmod,ulong addr);
extc int     cdecl Decoderange(ulong addr,ulong size,char *s);
extc int     cdecl Analysecode(t_module *pm);

////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////// DUMP /////////////////////////////////////

// Standard dump types.
#define DU_ESCAPABLE   0x20000L        // Create escapable dump window
#define DU_BACKUP      0x10000L        // Bit indicates that backup is displayed
#define DU_TYPE        0x0F000L        // Mask for dump type
#define DU_COUNT       0x00FF0L        // Mask for number of items/line
#define DU_SIZE        0x0000FL        // Mask for size of single item

#define DU_UNDEF       0x00000L        // Undefined dump type
#define DU_HEXTEXT     0x01000L        // Hexadecimal dump with ASCII text
#define DU_TEXT        0x02000L        // Character dump
#define DU_UNICODE     0x03000L        // Unicode dump
#define DU_INT         0x04000L        // Integer signed dump
#define DU_UINT        0x05000L        // Integer unsigned dump
#define DU_IHEX        0x06000L        // Integer hexadecimal dump
#define DU_FLOAT       0x07000L        // Floating-point dump
#define DU_ADDR        0x08000L        // Address dump
#define DU_DISASM      0x09000L        // Disassembly
#define DU_HEXUNI      0x0A000L        // Hexadecimal dump with UNICODE text
#define DU_ADRASC      0x0B000L        // Address dump with ASCII text
#define DU_ADRUNI      0x0C000L        // Address dump with UNICODE text
#define DU_SPEC        0x0D000L        // Special decoding
#define DU_PLUGIN      0x0E000L        // Menu items reserved by plugins

// Standard menu types.
#define MT_BACKUP      0x0001          // Backup, Undo
#define MT_COPY        0x0002          // Copy to clipboard
#define MT_EDIT        0x0004          // Edit, Modify, Assemble
#define MT_SEARCH      0x0008          // Search, Next

typedef ulong SPECFUNC(char *,ulong,ulong,ulong,t_disasm *,int);

typedef struct t_dump {                // Current status of dump window
  t_table        table;                // Treat dump window as custom table
  int            dimmed;               // Draw in lowcolor if nonzero
  ulong          threadid;             // Use decoding and registers if not 0
  int            dumptype;             // Current dump type, DU_xxx+count+size
  SPECFUNC       *specdump;            // Decoder of DU_SPEC dump types
  int            menutype;             // Standard menues, MT_xxx
  int            itemwidth;            // Length of displayed item, characters
  int            showstackframes;      // Show stack frames in address dump
  int            showstacklocals;      // Show names of locals in stack
  int            commentmode;          // 0: comment, 1: source, 2: profile
  char           filename[MAXPATH];    // Name of displayed or backup file
  ulong          base;                 // Start of memory block or file
  ulong          size;                 // Size of memory block or file
  ulong          addr;                 // Address of first displayed byte
  ulong          lastaddr;             // Address of last displayed byte + 1
  ulong          sel0;                 // Address of first selected byte
  ulong          sel1;                 // Last selected byte (not included!)
  ulong          startsel;             // Start of last selection
  int            captured;             // Mouse is captured by dump
  ulong          reladdr;              // Addresses relative to this
  char           relname[SHORTLEN];    // Symbol for relative zero address base
  uchar          *filecopy;            // Copy of the file or NULL
  uchar          *backup;              // Old backup of memory/file or NULL
  int            runtraceoffset;       // Offset back in run trace
  ulong          reserved[8];          // Reserved for the future extentions
} t_dump;

////////////////////////////////////////////////////////////////////////////////
/////////////////////////////// WINDOW FUNCTIONS ///////////////////////////////

#define WM_USER_MENU   (WM_USER+101)   // Activate context-sensitive menu
#define WM_USER_SCR    (WM_USER+102)   // Redraw scroll(s)
#define WM_USER_SAVE   (WM_USER+103)   // Save data to disk
#define WM_USER_VABS   (WM_USER+104)   // Scroll contents of window by lines
#define WM_USER_VREL   (WM_USER+105)   // Scroll contents of window by percent
#define WM_USER_VBYTE  (WM_USER+106)   // Scroll contents of window by bytes
#define WM_USER_STS    (WM_USER+107)   // Start selection in window
#define WM_USER_CNTS   (WM_USER+108)   // Continue selection in window
#define WM_USER_CHGS   (WM_USER+109)   // Move single-line selection
#define WM_USER_BAR    (WM_USER+110)   // Message from bar segment as button
#define WM_USER_DBLCLK (WM_USER+111)   // Doubleclick in column
#define WM_USER_SIZE   (WM_USER+112)   // Resize children in CPU window
#define WM_USER_FOCUS  (WM_USER+113)   // Set focus to child of CPU window
#define WM_USER_FILE   (WM_USER+114)   // Change state of file dump
#define WM_USER_HERE   (WM_USER+115)   // Query presence list
#define WM_USER_CHALL  (WM_USER+116)   // Redraw (almost) everything
#define WM_USER_CHMEM  (WM_USER+117)   // Range of debuggee's memory changed
#define WM_USER_CHREG  (WM_USER+118)   // Debuggee's register(s) changed
#define WM_USER_CHNAM  (WM_USER+119)   // Redraw name tables
#define WM_USER_MOUSE  (WM_USER+120)   // Check mouse coordinates

// Constants used for scrolling and selection.
#define MAXTRACK       16384           // Maximal scroll of user-drawn table
#define MOVETOP        0x7FFFFFFFL     // Move selection to top of table
#define MOVEBOTTOM     0x7FFFFFFEL     // Move selection to bottom of table

#define CONT_BROADCAST 0x0000          // Continue sending msg to other windows
#define STOP_BROADCAST 0x1234          // Stop sending message to other windows

// Dumpbackup() actions.
#define BKUP_CREATE    1               // Create or update backup copy
#define BKUP_VIEWDATA  2               // View original data
#define BKUP_VIEWCOPY  3               // View backup copy
#define BKUP_LOADCOPY  4               // Read backup copy from file
#define BKUP_SAVEDATA  5               // Save original data to file
#define BKUP_SAVECOPY  6               // Save backup copy to file
#define BKUP_DELETE    7               // Delete backup copy

extc int     cdecl Registerotclass(char *classname,
               char *iconname,WNDPROC classproc);
extc HWND    cdecl Newtablewindow(t_table *pt,int nlines,int maxcolumns,
               char *winclass,char *wintitle);
extc HWND    cdecl Quicktablewindow(t_table *pt,int nlines,int maxcolumns,
               char *winclass,char *wintitle);
extc HWND    cdecl Createdumpwindow(char *name,ulong base,ulong size,
               ulong addr,int type,SPECFUNC *specdump);
extc void    cdecl Setdumptype(t_dump *pd,int dumptype);
extc void    cdecl Dumpbackup(t_dump *pd,int action);
extc int     cdecl Broadcast(UINT msg,WPARAM wp,LPARAM lp);

////////////////////////////////////////////////////////////////////////////////
////////////////////////// DATA CONVERSION FUNCTIONS ///////////////////////////

extc ulong   cdecl Compress(uchar *bufin,ulong nbufin,
               uchar *bufout,ulong nbufout);
extc ulong   cdecl Getoriginaldatasize(char *bufin,ulong nbufin);
extc ulong   cdecl Decompress(uchar *bufin,ulong nbufin,
               uchar *bufout,ulong nbufout);
extc ulong   cdecl Calculatecrc(uchar *copy,ulong base,ulong size,
               t_module *pmod,ulong fixupoffset);

////////////////////////////////////////////////////////////////////////////////
//////////////////////////// REFERENCES AND SEARCH /////////////////////////////

typedef struct t_ref {                 // Description of reference
  ulong          addr;                 // Address of reference
  ulong          size;                 // 1: single command, otherwise size
  ulong          type;                 // Type of reference, TY_xxx
} t_ref;

extc int     cdecl Findreferences(ulong base,ulong size,ulong addr0,ulong addr1,
               ulong origin,int recurseonjump,char *title);
extc int     cdecl Findstrings(ulong base,ulong size,ulong origin,char *title);
extc int     cdecl Findallcommands(t_dump *pd,t_asmmodel *model,
               ulong origin,char *title);
extc int     cdecl Findallsequences(t_dump *pd,t_extmodel model[NSEQ][NMODELS],
               ulong origin,char *title);
extc ulong   cdecl Walkreference(int dir);
extc ulong   cdecl Walkreferenceex(int dir,ulong *size);

////////////////////////////////////////////////////////////////////////////////
//////////////////////// BREAKPOINT AND TRACE FUNCTIONS ////////////////////////

#define MEMBP_READ     0x0001          // Memory breakpoint on read
#define MEMBP_WRITE    0x0002          // Memory breakpoint on write
#define MEMBP_SFX      0x1000          // Skip self-extraction

// Bits of module hit trace buffer.
#define TR_HIT         0x01            // Command was executed during trace
#define TR_SET         0x02            // Code INT3 is in memory, copy valid
#define TR_RTSKIP      0x20            // Disable run trace on command
#define TR_RTRACE      0x40            // Force run trace on command
#define TR_TRACE       0x80            // Command is included in trace

#define HB_FREE        0               // Breakpoint is not used
#define HB_CODE        1               // Active on command execution
#define HB_ACCESS      2               // Active on read/write access
#define HB_WRITE       3               // Active on write access
#define HB_IO          4               // Active on port I/O
#define HB_ONESHOT     5               // One-shot on command execution
#define HB_STOPAN      6               // One-shot on command and stop
#define HB_TEMP        7               // Temporary on command execution

// Parameter mode of function Modifyhittrace().
#define ATR_ADD        1               // Add trace to buffer
#define ATR_ADDPROC    2               // Add only recognized procedures
#define ATR_RESET      3               // Mark range as not traced
#define ATR_REMOVE     4               // Remove range and breakpoints
#define ATR_REMOVEALL  5               // Destroy range and breakpoints
#define ATR_RESTORE    6               // Restore breakpoints
#define ATR_RTRADD     7               // Add trace and force run trace
#define ATR_RTRJUMPS   8               // Add trace and run trace jumps only
#define ATR_RTRENTRY   9               // Add trace and run trace entries only
#define ATR_RTREMOVE   10              // Remove trace from range
#define ATR_RTSKIP     11              // Skip when run tracing

typedef struct t_bpoint {              // Description of INT3 breakpoint
  ulong          addr;                 // Address of breakpoint
  ulong          dummy;                // Always 1
  ulong          type;                 // Type of breakpoint, TY_xxx
  uchar          cmd;                  // Old value of command
} t_bpoint;

typedef struct t_hardbpoint {
  ulong          addr;                 // Base address of hardware breakpoint
  int            size;                 // Size of hardware breakpoint
  int            type;                 // Type of breakpoint, one of HB_xxx
  ulong          reserved[4];          // Reserved for the future
} t_hardbpoint;

extc int     cdecl Setbreakpoint(ulong addr,ulong type,uchar cmd);
extc int     cdecl Manualbreakpoint(ulong addr,
               int key,int shiftkey,ulong nametype,int font);
extc void    cdecl Deletebreakpoints(ulong addr0,ulong addr1,int silent);
extc ulong   cdecl Getbreakpointtype(ulong addr);
extc ulong   cdecl Getnextbreakpoint(ulong addr,ulong *type,int *cmd);
extc int     cdecl Hardbreakpoints(int closeondelete);
extc int     cdecl Sethardwarebreakpoint(ulong addr,int size,int type);
extc int     cdecl Deletehardwarebreakpoint(int index);
extc int     cdecl Deletehardwarebreakbyaddr(ulong addr);
extc int     cdecl Setmembreakpoint(int type,ulong addr,ulong size);
extc uchar*  cdecl Findhittrace(ulong addr,uchar **ptracecopy,ulong *psize);
extc int     cdecl Modifyhittrace(ulong addr0,ulong addr1,int mode);
extc ulong   cdecl Isretaddr(ulong retaddr,ulong *procaddr);
extc HWND    cdecl Creatertracewindow(void);
extc void    cdecl Settracecondition(char *cond,int onsuspicious,
               ulong in0,ulong in1,ulong out0,ulong out1);
extc int     cdecl Startruntrace(t_reg *preg);
extc void    cdecl Deleteruntrace(void);
extc int     cdecl Runtracesize(void);
extc int     cdecl Findprevruntraceip(ulong ip,int startback);
extc int     cdecl Findnextruntraceip(ulong ip,int startback);
extc int     cdecl Getruntraceregisters(int nback,t_reg *preg,
               t_reg *pold,char *cmd,char *comment);
extc int     cdecl Getruntraceprofile(ulong addr,ulong size,ulong *profile);
extc void    cdecl Scrollruntracewindow(int back);
extc HWND    cdecl Createprofilewindow(ulong base,ulong size);


////////////////////////////////////////////////////////////////////////////////
//////////////////////////////// CODE INJECTION ////////////////////////////////

typedef int INJECTANSWER(char *data,ulong datasize,ulong parm2);

typedef struct t_inject {              // Description of injected code
  ulong          codesize;             // Size of code, including INT3
  char           *code;                // Pointer to code
  int            stacksize;            // Stack size to save
  int            datatype;             // 0: in/out, 1: in, 2: out
} t_inject;

extc int     cdecl Injectcode(ulong threadid,t_inject *inject,char *data,
               ulong datasize,ulong parm1,ulong parm2,
               INJECTANSWER *answerfunc);


////////////////////////////////////////////////////////////////////////////////
//////////////////////////// CPU-SPECIFIC FUNCTIONS ////////////////////////////

// Setcpu modes.
#define CPU_ASMHIST    0x00001         // Add change to Disassembler history
#define CPU_ASMCENTER  0x00004         // Make address in the middle of window
#define CPU_ASMFOCUS   0x00008         // Move focus to Disassembler
#define CPU_DUMPHIST   0x00010         // Add change to Dump history
#define CPU_DUMPFIRST  0x00020         // Make address the first byte in Dump
#define CPU_DUMPFOCUS  0x00080         // Move focus to Dump
#define CPU_REGAUTO    0x00100         // Automatically switch to FPU/MMX/3DNow!
#define CPU_RUNTRACE   0x00200         // Show run trace data at offset asmaddr
#define CPU_STACKFOCUS 0x00800         // Move focus to Stack
#define CPU_NOCREATE   0x04000         // Don't create CPU window if absent
#define CPU_REDRAW     0x08000         // Redraw CPU window immediately
#define CPU_NOFOCUS    0x10000         // Don't assign focus to main window

extc void    cdecl Setcpu(ulong threadid,ulong asmaddr,
               ulong dumpaddr,ulong stackaddr,int mode);
extc void    cdecl Setdisasm(ulong asmaddr,ulong selsize,int mode);
extc void    cdecl Redrawdisassembler(void);
extc void    cdecl Getdisassemblerrange(ulong *pbase,ulong *psize);
extc ulong   cdecl Findprocbegin(ulong addr);
extc ulong   cdecl Findprocend(ulong addr);
extc ulong   cdecl Findprevproc(ulong addr);
extc ulong   cdecl Findnextproc(ulong addr);
extc int     cdecl Getproclimits(ulong addr,ulong *start,ulong *end);
extc void    cdecl Sendshortcut(int where,ulong addr,
               int msg,int ctrl,int shift,int vkcode);

////////////////////////////////////////////////////////////////////////////////
/////////////////////////////// PROCESS CONTROL ////////////////////////////////

// Parameter stepmode in call to Go().
#define STEP_SAME      0               // Same action as on previous call
#define STEP_RUN       1               // Run program
#define STEP_OVER      2               // Step over
#define STEP_IN        3               // Step in
#define STEP_SKIP      4               // Skip sequence

typedef enum t_status {                // Thread/process status
  STAT_NONE=0,                         // Thread/process is empty
  STAT_STOPPED,                        // Thread/process suspended
  STAT_EVENT,                          // Processing debug event, process paused
  STAT_RUNNING,                        // Thread/process running
  STAT_FINISHED                        // Process finished
} t_status;

extc t_status cdecl Getstatus(void);
extc int     cdecl Go(ulong threadid,ulong tilladdr,int stepmode,
               int givechance,int backupregs);
extc int     cdecl Suspendprocess(int processevents);

////////////////////////////////////////////////////////////////////////////////
//////////////////////////// DECODING OF ARGUMENTS /////////////////////////////

#define DASC_TEST      0               // Test whether a string
#define DASC_NOHEX     1               // Test, print nothing if not a string
#define DASC_ASCII     2               // Force ASCII
#define DASC_PASCAL    3               // Force Pascal

extc uchar*  cdecl Findknownfunction(ulong addr,int direct,
               int level,char *fname);
extc int     cdecl Decodeknownargument(ulong addr,uchar *arg,ulong value,
               int valid,char *s,char *mask,uchar *pset[]);
extc char    cdecl *Findunknownfunction(ulong ip,char *code,char *dec,
               ulong size,char *fname);
extc int     cdecl Decodeascii(ulong value,char *s,int len,int mode);
extc int     cdecl Decodeunicode(ulong value,char *s,int len);

////////////////////////////////////////////////////////////////////////////////
///////////////////////////// SOURCE CODE SUPPORT //////////////////////////////

#define FIRST_CODE_LINE 0xFFFFFFFF     // First available source line

typedef struct t_sourceline {          // Source line descriptor
  ulong          addr;                 // Start address of corresponding code
  ulong          size;                 // Code size
  ulong          srcname;              // Index of source name (as NM_DEBUG)
  ulong          line;                 // 0-based line number
} t_sourceline;

extc HWND    cdecl Showsourcefromaddress(ulong addr,int show);
extc int     cdecl Getresourcestring(t_module *pm,ulong id,char *s);
extc t_sourceline* cdecl Getlinefromaddress(ulong addr);
extc ulong   cdecl Getaddressfromline(ulong addr0,ulong addr1,
               char *path,ulong line);
extc int     cdecl Getsourcefilelimits(ulong nameaddr,
               ulong *addr0,ulong *addr1);
extc int     cdecl Decodefullvarname(t_module *pmod,t_symvar *psym,
               int offset,char *name);
extc int     cdecl Getbprelname(t_module *pmod,ulong addr,long offset,
               char *s,int nsymb);

////////////////////////////////////////////////////////////////////////////////
//////////////////////////////// WATCH SUPPORT /////////////////////////////////

extc HWND    cdecl Createwatchwindow(void);
extc int     cdecl Deletewatch(int indexone);
extc int     cdecl Insertwatch(int indexone,char *text);
extc int     cdecl Getwatch(int indexone,char *text);

////////////////////////////////////////////////////////////////////////////////
////////////////////////// WINDOWS-SPECIFIC FUNCTIONS //////////////////////////

extc HWND    cdecl Createwinwindow(void);


////////////////////////////////////////////////////////////////////////////////
////////////////////////// PLUGIN-SPECIFIC FUNCTIONS ///////////////////////////

// Parameters of Plugingetvalue().
#define VAL_HINST              1       // Current program instance
#define VAL_HWMAIN             2       // Handle of the main window
#define VAL_HWCLIENT           3       // Handle of the MDI client window
#define VAL_NCOLORS            4       // Number of common colors
#define VAL_COLORS             5       // RGB values of common colors
#define VAL_BRUSHES            6       // Handles of common color brushes
#define VAL_PENS               7       // Handles of common color pens
#define VAL_NFONTS             8       // Number of common fonts
#define VAL_FONTS              9       // Handles of common fonts
#define VAL_FONTNAMES          10      // Internal font names
#define VAL_FONTWIDTHS         11      // Average widths of common fonts
#define VAL_FONTHEIGHTS        12      // Average heigths of common fonts
#define VAL_NFIXFONTS          13      // Actual number of fixed-pitch fonts
#define VAL_DEFFONT            14      // Index of default font
#define VAL_NSCHEMES           15      // Number of color schemes
#define VAL_SCHEMES            16      // Color schemes
#define VAL_DEFSCHEME          17      // Index of default colour scheme
#define VAL_DEFHSCROLL         18      // Default horizontal scroll
#define VAL_RESTOREWINDOWPOS   19      // Restore window positions from .ini
#define VAL_HPROCESS           20      // Handle of Debuggee
#define VAL_PROCESSID          21      // Process ID of Debuggee
#define VAL_HMAINTHREAD        22      // Handle of main thread
#define VAL_MAINTHREADID       23      // Thread ID of main thread
#define VAL_MAINBASE           24      // Base of main module in the process
#define VAL_PROCESSNAME        25      // Name of the active process
#define VAL_EXEFILENAME        26      // Name of the main debugged file
#define VAL_CURRENTDIR         27      // Current directory for debugged process
#define VAL_SYSTEMDIR          28      // Windows system directory
#define VAL_DECODEANYIP        29      // Decode registers dependless on EIP
#define VAL_PASCALSTRINGS      30      // Decode Pascal-style string constants
#define VAL_ONLYASCII          31      // Only printable ASCII chars in dump
#define VAL_DIACRITICALS       32      // Allow diacritical symbols in strings
#define VAL_GLOBALSEARCH       33      // Search from the beginning of block
#define VAL_ALIGNEDSEARCH      34      // Search aligned to item's size
#define VAL_IGNORECASE         35      // Ignore case in string search
#define VAL_SEARCHMARGIN       36      // Floating search allows error margin
#define VAL_KEEPSELSIZE        37      // Keep size of hex edit selection
#define VAL_MMXDISPLAY         38      // MMX display mode in dialog
#define VAL_WINDOWFONT         39      // Use calling window's font in dialog
#define VAL_TABSTOPS           40      // Distance between tab stops
#define VAL_MODULES            41      // Table of modules (.EXE and .DLL)
#define VAL_MEMORY             42      // Table of allocated memory blocks
#define VAL_THREADS            43      // Table of active threads
#define VAL_BREAKPOINTS        44      // Table of active breakpoints
#define VAL_REFERENCES         45      // Table with found references
#define VAL_SOURCELIST         46      // Table of source files
#define VAL_WATCHES            47      // Table of watches
#define VAL_CPUFEATURES        50      // CPU feature bits
#define VAL_TRACEFILE          51      // Handle of run trace log file
#define VAL_ALIGNDIALOGS       52      // Whether to align dialogs
#define VAL_CPUDASM            53      // Dump descriptor of CPU Disassembler
#define VAL_CPUDDUMP           54      // Dump descriptor of CPU Dump
#define VAL_CPUDSTACK          55      // Dump descriptor of CPU Stack
#define VAL_APIHELP            56      // Name of selected API help file
#define VAL_HARDBP             57      // Whether hardware breakpoints enabled

extc int     cdecl Registerpluginclass(char *classname,char *iconname,
               HINSTANCE dllinst,WNDPROC classproc);
extc void    cdecl Unregisterpluginclass(char *classname);
extc int     cdecl Pluginwriteinttoini(HINSTANCE dllinst,char *key,int value);
extc int     cdecl Pluginwritestringtoini(HINSTANCE dllinst,char *key,char *s);
extc int     cdecl Pluginreadintfromini(HINSTANCE dllinst,char *key,int def);
extc int     cdecl Pluginreadstringfromini(HINSTANCE dllinst,char *key,
               char *s,char *def);
extc int     cdecl Pluginsaverecord(ulong tag,ulong size,void *data);
extc int     cdecl Plugingetvalue(int type);

////////////////////////////////////////////////////////////////////////////////
////////////////////// EXPORTED PLUGIN CALLBACK FUNCTIONS //////////////////////

// Origins of standard OllyDbg windows as passed to plugin. In parenthesis is
// the type of item you get in ODBG_Pluginmenu(), ODBG_Pluginaction() and
// ODBG_Pluginshortcut(). Note that this item can be NULL!
#define PM_MAIN        0               // Main window        (NULL)
#define PM_DUMP        10              // Any Dump window    (t_dump*)
#define PM_MODULES     11              // Modules window     (t_module*)
#define PM_MEMORY      12              // Memory window      (t_memory*)
#define PM_THREADS     13              // Threads window     (t_thread*)
#define PM_BREAKPOINTS 14              // Breakpoints window (t_bpoint*)
#define PM_REFERENCES  15              // References window  (t_ref*)
#define PM_RTRACE      16              // Run trace window   (int*)
#define PM_WATCHES     17              // Watches window     (1-based index)
#define PM_WINDOWS     18              // Windows window     (t_window*)
#define PM_DISASM      31              // CPU Disassembler   (t_dump*)
#define PM_CPUDUMP     32              // CPU Dump           (t_dump*)
#define PM_CPUSTACK    33              // CPU Stack          (t_dump*)
#define PM_CPUREGS     34              // CPU Registers      (t_reg*)

extc int     cdecl ODBG_Plugindata(char shortname[32]);
extc int     cdecl ODBG_Plugininit(int ollydbgversion,HWND hw,
               ulong *features);
extc void    cdecl ODBG_Pluginmainloop(DEBUG_EVENT *debugevent);
extc void    cdecl ODBG_Pluginsaveudd(t_module *pmod,int ismainmodule);
extc int     cdecl ODBG_Pluinuddrecord(t_module *pmod,int ismainmodule,
               ulong tag,ulong size,void *data);
extc int     cdecl ODBG_Pluginmenu(int origin,char data[4096],void *item);
extc void    cdecl ODBG_Pluginaction(int origin,int action,void *item);
extc int     cdecl ODBG_Pluginshortcut(
               int origin,int ctrl,int alt,int shift,int key,void *item);
extc void    cdecl ODBG_Pluginreset(void);
extc void    cdecl ODBG_Plugindestroy(void);

