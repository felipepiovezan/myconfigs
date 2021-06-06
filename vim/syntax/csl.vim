" Vim syntax file
" Language: CSLang

if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "csl"

syn keyword cslStorage const var extern packed export pub noalias inline noinline comptime callconv volatile allowzero align linksection threadlocal anytype
syn keyword cslStructure struct enum union error opaque
syn keyword cslStatement break return continue asm defer errdefer unreachable try catch async nosuspend await suspend resume
syn keyword cslConditional if else switch and or orelse
syn keyword cslRepeat while for

syn keyword cslConstant null undefined
syn keyword cslKeyword fn usingnamespace test
syn keyword cslType bool f16 f32 f64 f128 void noreturn type anyerror anyframe
syn keyword cslType i0 u0 isize  usize comptime_int comptime_float
syn keyword cslType c_short c_ushort c_int c_uint c_long c_ulong c_longlong c_ulonglong c_longdouble c_void

syn keyword cslBoolean true false

syn match cslType "\v<[iu][1-9]\d*>"

syn match cslOperator display "\V\[-+/*=^&?|!><%~]"
syn match cslArrowCharacter display "\V->"

syn match cslBuiltinFn "\v\@(addWithOverflow|as|atomicLoad|atomicStore|bitCast|breakpoint)>"
syn match cslBuiltinFn "\v\@(alignCast|alignOf|cDefine|cImport|cInclude)>"
syn match cslBuiltinFn "\v\@(cUndef|canImplicitCast|clz|cmpxchgWeak|cmpxchgStrong|compileError)>"
syn match cslBuiltinFn "\v\@(compileLog|ctz|popCount|divExact|divFloor|divTrunc)>"
syn match cslBuiltinFn "\v\@(embedFile|export|tagName|TagType|errorName|call)>"
syn match cslBuiltinFn "\v\@(errorReturnTrace|fence|fieldParentPtr|field|unionInit)>"
syn match cslBuiltinFn "\v\@(frameAddress|import|newStackCall|asyncCall|intToPtr)>"
syn match cslBuiltinFn "\v\@(memcpy|memset|mod|mulWithOverflow|splat|src)>"
syn match cslBuiltinFn "\v\@(bitOffsetOf|byteOffsetOf|OpaqueType|panic|ptrCast)>"
syn match cslBuiltinFn "\v\@(ptrToInt|rem|returnAddress|setCold|Type|shuffle|reduce)>"
syn match cslBuiltinFn "\v\@(setRuntimeSafety|setEvalBranchQuota|setFloatMode)>"
syn match cslBuiltinFn "\v\@(setGlobalLinkage|setGlobalSection|shlExact|This|hasDecl|hasField)>"
syn match cslBuiltinFn "\v\@(shlWithOverflow|shrExact|sizeOf|bitSizeOf|sqrt|byteSwap|subWithOverflow|intCast|floatCast|intToFloat|floatToInt|boolToInt|errSetCast)>"
syn match cslBuiltinFn "\v\@(truncate|typeInfo|typeName|TypeOf|atomicRmw|bytesToSlice|sliceToBytes)>"
syn match cslBuiltinFn "\v\@(intToError|errorToInt|intToEnum|enumToInt|setAlignStack|frame|Frame|frameSize|bitReverse|Vector)>"
syn match cslBuiltinFn "\v\@(sin|cos|exp|exp2|log|log2|log10|fabs|floor|ceil|trunc|round)>"

"                                     12_34  (. but not ..)? (12_34)?     (exponent  12_34)?
syn match cslDecNumber display   "\v<\d%(_?\d)*%(\.\.@!)?%(\d%(_?\d)*)?%([eE][+-]?\d%(_?\d)*)?"
syn match cslHexNumber display "\v<0x\x%(_?\x)*%(\.\.@!)?%(\x%(_?\x)*)?%([pP][+-]?\d%(_?\d)*)?"
syn match cslOctNumber display "\v<0o\o%(_?\o)*"
syn match cslBinNumber display "\v<0b[01]%(_?[01])*"

syn match cslCharacterInvalid display contained /b\?'\zs[\n\r\t']\ze'/
syn match cslCharacterInvalidUnicode display contained /b'\zs[^[:cntrl:][:graph:][:alnum:][:space:]]\ze'/
syn match cslCharacter /b'\([^\\]\|\\\(.\|x\x\{2}\)\)'/ contains=cslEscape,cslEscapeError,cslCharacterInvalid,cslCharacterInvalidUnicode
syn match cslCharacter /'\([^\\]\|\\\(.\|x\x\{2}\|u\x\{4}\|U\x\{6}\)\)'/ contains=cslEscape,cslEscapeUnicode,cslEscapeError,cslCharacterInvalid

syn region cslBlock start="{" end="}" transparent fold

syn region cslCommentLine start="//" end="$" contains=cslTodo,@Spell
syn region cslCommentLineDoc start="//[/!]/\@!" end="$" contains=cslTodo,@Spell

" TODO: match only the first '\\' within the cslMultilineString as cslMultilineStringPrefix
syn match cslMultilineStringPrefix display contained /c\?\\\\/
syn region cslMultilineString start="c\?\\\\" end="$" contains=cslMultilineStringPrefix

syn keyword cslTodo contained TODO

syn match     cslEscapeError   display contained /\\./
syn match     cslEscape        display contained /\\\([nrt\\'"]\|x\x\{2}\)/
syn match     cslEscapeUnicode display contained /\\\(u\x\{4}\|U\x\{6}\)/
syn region    cslString      start=+c\?"+ skip=+\\\\\|\\"+ end=+"+ oneline contains=cslEscape,cslEscapeUnicode,cslEscapeError,@Spell

hi def link cslDecNumber cslNumber
hi def link cslHexNumber cslNumber
hi def link cslOctNumber cslNumber
hi def link cslBinNumber cslNumber

hi def link cslBuiltinFn Function
hi def link cslKeyword Keyword
hi def link cslType Type
hi def link cslCommentLine Comment
hi def link cslCommentLineDoc SpecialComment
hi def link cslTodo Todo
hi def link cslString String
hi def link cslMultilineString String
hi def link cslMultilineStringContent String
hi def link cslMultilineStringPrefix Comment
hi def link cslCharacterInvalid Error
hi def link cslCharacterInvalidUnicode cslCharacterInvalid
hi def link cslCharacter Character
hi def link cslEscape Special
hi def link cslEscapeUnicode cslEscape
hi def link cslEscapeError Error
hi def link cslBoolean Boolean
hi def link cslConstant Constant
hi def link cslNumber Number
hi def link cslArrowCharacter cslOperator
hi def link cslOperator Operator
hi def link cslStorage StorageClass
hi def link cslStructure Structure
hi def link cslStatement Statement
hi def link cslConditional Conditional
hi def link cslRepeat Repeat
