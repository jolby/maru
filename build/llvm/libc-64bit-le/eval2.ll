%word = type i64
%ptr = type i8*
@str4 = private unnamed_addr constant [7 x i8] c"%3ld: \00"
@str8 = private unnamed_addr constant [10 x i8] c"\09callee: \00"
@str12 = private unnamed_addr constant [8 x i8] c"\09args: \00"
define %ptr @print-backtrace() {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%r1 = load %ptr, %ptr* @"*call-stack-index*"
	store %ptr %r1, %ptr* %t1
	br label %L2
L1:
	%r2 = load %ptr, %ptr* @"*call-stack*"
	%r3 = load %ptr, %ptr* %t1
	%r4 = call %ptr @"k/array-at"(%ptr %r2, %ptr %r3)
	store %ptr %r4, %ptr* %t2
	%r5 = getelementptr [7 x i8], [7 x i8]* @str4, %word 0, %word 0
	%r7 = load %ptr, %ptr* %t1
	%r8 = call i32 (%ptr, ...) @printf(%ptr %r5, %ptr %r7)
	%r9 = sext i32 %r8 to %word
	%r10 = inttoptr %word %r9 to %ptr
	%r11 = inttoptr %word 0 to %ptr
	%r12 = load %ptr, %ptr* %t2
	%r16 = bitcast %ptr %r12 to [0 x %ptr]*
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = getelementptr [0 x %ptr], [0 x %ptr]* %r16, %word 0, %word %r15
	%r13 = load %ptr, %ptr* %r14
	%r17 = call %ptr @"k/dumpln"(%ptr %r13)
	%r18 = inttoptr %word 1 to %ptr
	%r19 = load %ptr, %ptr* %t2
	%r23 = bitcast %ptr %r19 to [0 x %ptr]*
	%r22 = ptrtoint %ptr %r18 to %word
	%r21 = getelementptr [0 x %ptr], [0 x %ptr]* %r23, %word 0, %word %r22
	%r20 = load %ptr, %ptr* %r21
	store %ptr %r20, %ptr* %t3
	%r24 = load %ptr, %ptr* %t3
	%r26 = ptrtoint %ptr %r24 to %word
	%r25 = icmp ne %word %r26, 0
	br i1 %r25, label %L5, label %L6
L5:
	%r27 = getelementptr [10 x i8], [10 x i8]* @str8, %word 0, %word 0
	%r29 = call i32 (%ptr, ...) @printf(%ptr %r27)
	%r30 = sext i32 %r29 to %word
	%r31 = inttoptr %word %r30 to %ptr
	%r32 = load %ptr, %ptr* %t3
	%r33 = call %ptr @"k/dumpln"(%ptr %r32)
	store %ptr %r33, %ptr* %t4
	br label %L7
L6:
	%r34 = inttoptr %word 0 to %ptr
	store %ptr %r34, %ptr* %t4
	br label %L7
L7:
	%r35 = load %ptr, %ptr* %t4
	%r36 = inttoptr %word 2 to %ptr
	%r37 = load %ptr, %ptr* %t2
	%r41 = bitcast %ptr %r37 to [0 x %ptr]*
	%r40 = ptrtoint %ptr %r36 to %word
	%r39 = getelementptr [0 x %ptr], [0 x %ptr]* %r41, %word 0, %word %r40
	%r38 = load %ptr, %ptr* %r39
	store %ptr %r38, %ptr* %t3
	%r42 = load %ptr, %ptr* %t3
	%r44 = ptrtoint %ptr %r42 to %word
	%r43 = icmp ne %word %r44, 0
	br i1 %r43, label %L9, label %L10
L9:
	%r45 = getelementptr [8 x i8], [8 x i8]* @str12, %word 0, %word 0
	%r47 = call i32 (%ptr, ...) @printf(%ptr %r45)
	%r48 = sext i32 %r47 to %word
	%r49 = inttoptr %word %r48 to %ptr
	%r50 = load %ptr, %ptr* %t3
	%r51 = call %ptr @"k/dumpln"(%ptr %r50)
	store %ptr %r51, %ptr* %t4
	br label %L11
L10:
	%r52 = inttoptr %word 0 to %ptr
	store %ptr %r52, %ptr* %t4
	br label %L11
L11:
	%r53 = load %ptr, %ptr* %t4
	%r54 = call %ptr @"libc/flush-streams"()
	br label %L2
L2:
	%r55 = inttoptr %word 1 to %ptr
	%r56 = load %ptr, %ptr* %t1
	%r60 = ptrtoint %ptr %r56 to %word
	%r59 = ptrtoint %ptr %r55 to %word
	%r58 = sub %word %r60, %r59
	%r57 = inttoptr %word %r58 to %ptr
	store %ptr %r57, %ptr* %t1
	%r61 = inttoptr %word 0 to %ptr
	%r65 = ptrtoint %ptr %r61 to %word
	%r64 = ptrtoint %ptr %r57 to %word
	%r63 = icmp sle %word %r65, %r64
	%r62 = inttoptr i1 %r63 to %ptr
	%r67 = ptrtoint %ptr %r62 to %word
	%r66 = icmp ne %word %r67, 0
	br i1 %r66, label %L1, label %L3
L3:
	ret %ptr %r62
}
@str13 = private unnamed_addr constant [8 x i8] c"*input*\00"
@str14 = private unnamed_addr constant [25 x i8] c"*command-line-arguments*\00"
@str15 = private unnamed_addr constant [12 x i8] c"*verbosity*\00"
@str16 = private unnamed_addr constant [12 x i8] c"*optimised*\00"
@str17 = private unnamed_addr constant [12 x i8] c"*expanders*\00"
@str18 = private unnamed_addr constant [11 x i8] c"*encoders*\00"
@str19 = private unnamed_addr constant [13 x i8] c"*evaluators*\00"
@str20 = private unnamed_addr constant [14 x i8] c"*applicators*\00"
@str21 = private unnamed_addr constant [6 x i8] c"+end+\00"
@str22 = private unnamed_addr constant [6 x i8] c"+end+\00"
@str23 = private unnamed_addr constant [5 x i8] c"true\00"
@str24 = private unnamed_addr constant [7 x i8] c"define\00"
@str25 = private unnamed_addr constant [9 x i8] c"defined?\00"
@str26 = private unnamed_addr constant [7 x i8] c"lambda\00"
@str27 = private unnamed_addr constant [4 x i8] c"let\00"
@str28 = private unnamed_addr constant [4 x i8] c"set\00"
@str29 = private unnamed_addr constant [6 x i8] c"while\00"
@str30 = private unnamed_addr constant [3 x i8] c"if\00"
@str31 = private unnamed_addr constant [3 x i8] c"or\00"
@str32 = private unnamed_addr constant [4 x i8] c"and\00"
@str33 = private unnamed_addr constant [6 x i8] c"quote\00"
@str34 = private unnamed_addr constant [4 x i8] c"not\00"
@str35 = private unnamed_addr constant [6 x i8] c"fixed\00"
@str36 = private unnamed_addr constant [9 x i8] c"variable\00"
@str37 = private unnamed_addr constant [12 x i8] c"environment\00"
@str38 = private unnamed_addr constant [19 x i8] c"environment-define\00"
@str39 = private unnamed_addr constant [2 x i8] c"-\00"
@str40 = private unnamed_addr constant [2 x i8] c"+\00"
@str41 = private unnamed_addr constant [2 x i8] c"/\00"
@str42 = private unnamed_addr constant [2 x i8] c"*\00"
@str43 = private unnamed_addr constant [12 x i8] c"bitwise-and\00"
@str44 = private unnamed_addr constant [11 x i8] c"bitwise-or\00"
@str45 = private unnamed_addr constant [12 x i8] c"bitwise-xor\00"
@str46 = private unnamed_addr constant [12 x i8] c"bitwise-not\00"
@str47 = private unnamed_addr constant [14 x i8] c"bitwise-shift\00"
@str48 = private unnamed_addr constant [2 x i8] c"<\00"
@str49 = private unnamed_addr constant [3 x i8] c"<=\00"
@str50 = private unnamed_addr constant [3 x i8] c">=\00"
@str51 = private unnamed_addr constant [2 x i8] c">\00"
@str52 = private unnamed_addr constant [2 x i8] c"=\00"
@str53 = private unnamed_addr constant [3 x i8] c"!=\00"
@str54 = private unnamed_addr constant [6 x i8] c"abort\00"
@str55 = private unnamed_addr constant [5 x i8] c"exit\00"
@str56 = private unnamed_addr constant [11 x i8] c"libc/fopen\00"
@str57 = private unnamed_addr constant [12 x i8] c"libc/fclose\00"
@str58 = private unnamed_addr constant [11 x i8] c"libc/fgetc\00"
@str59 = private unnamed_addr constant [11 x i8] c"libc/fputc\00"
@str60 = private unnamed_addr constant [12 x i8] c"libc/format\00"
@str61 = private unnamed_addr constant [5 x i8] c"load\00"
@str62 = private unnamed_addr constant [12 x i8] c"repl-stream\00"
@str63 = private unnamed_addr constant [5 x i8] c"dump\00"
@str64 = private unnamed_addr constant [6 x i8] c"print\00"
@str65 = private unnamed_addr constant [5 x i8] c"warn\00"
@str66 = private unnamed_addr constant [6 x i8] c"apply\00"
@str67 = private unnamed_addr constant [5 x i8] c"eval\00"
@str68 = private unnamed_addr constant [7 x i8] c"encode\00"
@str69 = private unnamed_addr constant [7 x i8] c"expand\00"
@str70 = private unnamed_addr constant [5 x i8] c"cons\00"
@str71 = private unnamed_addr constant [7 x i8] c"string\00"
@str72 = private unnamed_addr constant [6 x i8] c"array\00"
@str73 = private unnamed_addr constant [5 x i8] c"form\00"
@str74 = private unnamed_addr constant [9 x i8] c"allocate\00"
@str75 = private unnamed_addr constant [14 x i8] c"allocate-data\00"
@str76 = private unnamed_addr constant [8 x i8] c"type-of\00"
@str77 = private unnamed_addr constant [8 x i8] c"string?\00"
@str78 = private unnamed_addr constant [8 x i8] c"symbol?\00"
@str79 = private unnamed_addr constant [6 x i8] c"pair?\00"
@str80 = private unnamed_addr constant [7 x i8] c"array?\00"
@str81 = private unnamed_addr constant [4 x i8] c"car\00"
@str82 = private unnamed_addr constant [4 x i8] c"cdr\00"
@str83 = private unnamed_addr constant [8 x i8] c"set-car\00"
@str84 = private unnamed_addr constant [8 x i8] c"set-cdr\00"
@str85 = private unnamed_addr constant [10 x i8] c"copy-oops\00"
@str86 = private unnamed_addr constant [7 x i8] c"oop-at\00"
@str87 = private unnamed_addr constant [11 x i8] c"set-oop-at\00"
@str88 = private unnamed_addr constant [11 x i8] c"address-of\00"
@str89 = private unnamed_addr constant [11 x i8] c"copy-bytes\00"
@str90 = private unnamed_addr constant [8 x i8] c"byte-at\00"
@str91 = private unnamed_addr constant [12 x i8] c"set-byte-at\00"
@str92 = private unnamed_addr constant [13 x i8] c"array-length\00"
@str93 = private unnamed_addr constant [14 x i8] c"string-length\00"
@str94 = private unnamed_addr constant [9 x i8] c"array-at\00"
@str95 = private unnamed_addr constant [10 x i8] c"string-at\00"
@str96 = private unnamed_addr constant [13 x i8] c"set-array-at\00"
@str97 = private unnamed_addr constant [14 x i8] c"set-string-at\00"
@str98 = private unnamed_addr constant [13 x i8] c"array-insert\00"
@str99 = private unnamed_addr constant [14 x i8] c"string-insert\00"
@str100 = private unnamed_addr constant [15 x i8] c"string->symbol\00"
@str101 = private unnamed_addr constant [15 x i8] c"symbol->string\00"
@str102 = private unnamed_addr constant [13 x i8] c"long->string\00"
@str103 = private unnamed_addr constant [13 x i8] c"string->long\00"
@str104 = private unnamed_addr constant [5 x i8] c"read\00"
@str105 = private unnamed_addr constant [15 x i8] c"current-module\00"
@str106 = private unnamed_addr constant [19 x i8] c"set-current-module\00"
@str107 = private unnamed_addr constant [14 x i8] c"create-module\00"
@str108 = private unnamed_addr constant [15 x i8] c"eval-in-module\00"
@str109 = private unnamed_addr constant [25 x i8] c"call-x86-64-machine-code\00"
define %ptr @populate-module-with-primitives(%ptr %module) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %module, %ptr* %t1
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = inttoptr %word 1 to %ptr
	%r4 = inttoptr %word 1 to %ptr
	%r5 = load %ptr, %ptr* %t1
	%r9 = bitcast %ptr %r5 to [0 x %ptr]*
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = getelementptr [0 x %ptr], [0 x %ptr]* %r9, %word 0, %word %r8
	%r6 = load %ptr, %ptr* %r7
	%r13 = bitcast %ptr %r6 to [0 x %ptr]*
	%r12 = ptrtoint %ptr %r3 to %word
	%r11 = getelementptr [0 x %ptr], [0 x %ptr]* %r13, %word 0, %word %r12
	%r10 = load %ptr, %ptr* %r11
	store %ptr %r10, %ptr* %t2
	%r14 = inttoptr %word 0 to %ptr
	store %ptr %r14, %ptr* %t3
	%r16 = getelementptr %ptr, %ptr* %t3, %word 0
	%r15 = bitcast %ptr* %r16 to %ptr
	%r17 = call %ptr @"gc/push-root"(%ptr %r15)
	%r18 = load %ptr, %ptr* %t2
	%r19 = getelementptr [8 x i8], [8 x i8]* @str13, %word 0, %word 0
	%r21 = call %ptr @"k/intern"(%ptr %r19)
	%r22 = inttoptr %word 0 to %ptr
	%r23 = call %ptr @"k/env/define"(%ptr %r18, %ptr %r21, %ptr %r22)
	%r24 = load %ptr, %ptr* %t2
	%r25 = getelementptr [25 x i8], [25 x i8]* @str14, %word 0, %word 0
	%r27 = call %ptr @"k/intern"(%ptr %r25)
	%r28 = inttoptr %word 0 to %ptr
	%r29 = call %ptr @"k/env/define"(%ptr %r24, %ptr %r27, %ptr %r28)
	%r30 = inttoptr %word 1 to %ptr
	%r31 = inttoptr %word 1 to %ptr
	%r32 = load %ptr, %ptr* @"*verbosity*"
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = shl %word %r36, %r35
	%r33 = inttoptr %word %r34 to %ptr
	%r40 = ptrtoint %ptr %r33 to %word
	%r39 = ptrtoint %ptr %r30 to %word
	%r38 = add %word %r40, %r39
	%r37 = inttoptr %word %r38 to %ptr
	store %ptr %r37, %ptr* %t3
	%r41 = load %ptr, %ptr* %t2
	%r42 = getelementptr [12 x i8], [12 x i8]* @str15, %word 0, %word 0
	%r44 = call %ptr @"k/intern"(%ptr %r42)
	%r45 = load %ptr, %ptr* %t3
	%r46 = call %ptr @"k/env/define"(%ptr %r41, %ptr %r44, %ptr %r45)
	%r47 = inttoptr %word 1 to %ptr
	%r48 = inttoptr %word 1 to %ptr
	%r49 = inttoptr %word 0 to %ptr
	%r53 = ptrtoint %ptr %r49 to %word
	%r52 = ptrtoint %ptr %r48 to %word
	%r51 = shl %word %r53, %r52
	%r50 = inttoptr %word %r51 to %ptr
	%r57 = ptrtoint %ptr %r50 to %word
	%r56 = ptrtoint %ptr %r47 to %word
	%r55 = add %word %r57, %r56
	%r54 = inttoptr %word %r55 to %ptr
	store %ptr %r54, %ptr* %t3
	%r58 = load %ptr, %ptr* %t2
	%r59 = getelementptr [12 x i8], [12 x i8]* @str16, %word 0, %word 0
	%r61 = call %ptr @"k/intern"(%ptr %r59)
	%r62 = load %ptr, %ptr* %t3
	%r63 = call %ptr @"k/env/define"(%ptr %r58, %ptr %r61, %ptr %r62)
	%r64 = inttoptr %word 0 to %ptr
	%r65 = call %ptr @"new-<array>"(%ptr %r64)
	store %ptr %r65, %ptr* %t3
	%r66 = load %ptr, %ptr* %t2
	%r67 = getelementptr [12 x i8], [12 x i8]* @str17, %word 0, %word 0
	%r69 = call %ptr @"k/intern"(%ptr %r67)
	%r70 = load %ptr, %ptr* %t3
	%r71 = call %ptr @"k/env/define"(%ptr %r66, %ptr %r69, %ptr %r70)
	%r72 = inttoptr %word 0 to %ptr
	%r73 = call %ptr @"new-<array>"(%ptr %r72)
	store %ptr %r73, %ptr* %t3
	%r74 = load %ptr, %ptr* %t2
	%r75 = getelementptr [11 x i8], [11 x i8]* @str18, %word 0, %word 0
	%r77 = call %ptr @"k/intern"(%ptr %r75)
	%r78 = load %ptr, %ptr* %t3
	%r79 = call %ptr @"k/env/define"(%ptr %r74, %ptr %r77, %ptr %r78)
	%r80 = inttoptr %word 0 to %ptr
	%r81 = call %ptr @"new-<array>"(%ptr %r80)
	store %ptr %r81, %ptr* %t3
	%r82 = load %ptr, %ptr* %t2
	%r83 = getelementptr [13 x i8], [13 x i8]* @str19, %word 0, %word 0
	%r85 = call %ptr @"k/intern"(%ptr %r83)
	%r86 = load %ptr, %ptr* %t3
	%r87 = call %ptr @"k/env/define"(%ptr %r82, %ptr %r85, %ptr %r86)
	%r88 = inttoptr %word 0 to %ptr
	%r89 = call %ptr @"new-<array>"(%ptr %r88)
	store %ptr %r89, %ptr* %t3
	%r90 = load %ptr, %ptr* %t2
	%r91 = getelementptr [14 x i8], [14 x i8]* @str20, %word 0, %word 0
	%r93 = call %ptr @"k/intern"(%ptr %r91)
	%r94 = load %ptr, %ptr* %t3
	%r95 = call %ptr @"k/env/define"(%ptr %r90, %ptr %r93, %ptr %r94)
	%r96 = getelementptr [6 x i8], [6 x i8]* @str21, %word 0, %word 0
	%r98 = call %ptr @"new-<symbol>"(%ptr %r96)
	store %ptr %r98, %ptr* %t3
	%r99 = load %ptr, %ptr* %t2
	%r100 = getelementptr [6 x i8], [6 x i8]* @str22, %word 0, %word 0
	%r102 = call %ptr @"k/intern"(%ptr %r100)
	%r103 = load %ptr, %ptr* %t3
	%r104 = call %ptr @"k/env/define"(%ptr %r99, %ptr %r102, %ptr %r103)
	store %ptr %r104, %ptr* %t4
	%r106 = getelementptr %ptr, %ptr* %t3, %word 0
	%r105 = bitcast %ptr* %r106 to %ptr
	%r107 = call %ptr @"gc/pop-root"(%ptr %r105)
	%r108 = load %ptr, %ptr* %t4
	%r109 = getelementptr [5 x i8], [5 x i8]* @str23, %word 0, %word 0
	%r111 = call %ptr @"k/intern"(%ptr %r109)
	store %ptr %r111, %ptr* %t3
	%r112 = load %ptr, %ptr* %t2
	%r113 = load %ptr, %ptr* %t3
	%r114 = load %ptr, %ptr* %t3
	%r115 = call %ptr @"k/env/define"(%ptr %r112, %ptr %r113, %ptr %r114)
	%r116 = getelementptr [7 x i8], [7 x i8]* @str24, %word 0, %word 0
	%r118 = bitcast %ptr (%ptr, %ptr)* @"subr/define" to %ptr
	%r119 = inttoptr %word 1 to %ptr
	%r120 = load %ptr, %ptr* %t1
	%r121 = call %ptr @"%instantiate-subr"(%ptr %r116, %ptr %r118, %ptr %r119, %ptr %r120)
	%r122 = getelementptr [9 x i8], [9 x i8]* @str25, %word 0, %word 0
	%r124 = bitcast %ptr (%ptr, %ptr)* @"subr/defined?" to %ptr
	%r125 = inttoptr %word 0 to %ptr
	%r126 = load %ptr, %ptr* %t1
	%r127 = call %ptr @"%instantiate-subr"(%ptr %r122, %ptr %r124, %ptr %r125, %ptr %r126)
	%r128 = getelementptr [7 x i8], [7 x i8]* @str26, %word 0, %word 0
	%r130 = bitcast %ptr (%ptr, %ptr)* @"subr/lambda" to %ptr
	%r131 = inttoptr %word 1 to %ptr
	%r132 = load %ptr, %ptr* %t1
	%r133 = call %ptr @"%instantiate-subr"(%ptr %r128, %ptr %r130, %ptr %r131, %ptr %r132)
	%r134 = getelementptr [4 x i8], [4 x i8]* @str27, %word 0, %word 0
	%r136 = bitcast %ptr (%ptr, %ptr)* @"subr/let" to %ptr
	%r137 = inttoptr %word 1 to %ptr
	%r138 = load %ptr, %ptr* %t1
	%r139 = call %ptr @"%instantiate-subr"(%ptr %r134, %ptr %r136, %ptr %r137, %ptr %r138)
	%r140 = getelementptr [4 x i8], [4 x i8]* @str28, %word 0, %word 0
	%r142 = bitcast %ptr (%ptr, %ptr)* @"subr/set" to %ptr
	%r143 = inttoptr %word 1 to %ptr
	%r144 = load %ptr, %ptr* %t1
	%r145 = call %ptr @"%instantiate-subr"(%ptr %r140, %ptr %r142, %ptr %r143, %ptr %r144)
	%r146 = getelementptr [6 x i8], [6 x i8]* @str29, %word 0, %word 0
	%r148 = bitcast %ptr (%ptr, %ptr)* @"subr/while" to %ptr
	%r149 = inttoptr %word 1 to %ptr
	%r150 = load %ptr, %ptr* %t1
	%r151 = call %ptr @"%instantiate-subr"(%ptr %r146, %ptr %r148, %ptr %r149, %ptr %r150)
	%r152 = getelementptr [3 x i8], [3 x i8]* @str30, %word 0, %word 0
	%r154 = bitcast %ptr (%ptr, %ptr)* @"subr/if" to %ptr
	%r155 = inttoptr %word 1 to %ptr
	%r156 = load %ptr, %ptr* %t1
	%r157 = call %ptr @"%instantiate-subr"(%ptr %r152, %ptr %r154, %ptr %r155, %ptr %r156)
	%r158 = getelementptr [3 x i8], [3 x i8]* @str31, %word 0, %word 0
	%r160 = bitcast %ptr (%ptr, %ptr)* @"subr/or" to %ptr
	%r161 = inttoptr %word 1 to %ptr
	%r162 = load %ptr, %ptr* %t1
	%r163 = call %ptr @"%instantiate-subr"(%ptr %r158, %ptr %r160, %ptr %r161, %ptr %r162)
	%r164 = getelementptr [4 x i8], [4 x i8]* @str32, %word 0, %word 0
	%r166 = bitcast %ptr (%ptr, %ptr)* @"subr/and" to %ptr
	%r167 = inttoptr %word 1 to %ptr
	%r168 = load %ptr, %ptr* %t1
	%r169 = call %ptr @"%instantiate-subr"(%ptr %r164, %ptr %r166, %ptr %r167, %ptr %r168)
	%r170 = getelementptr [6 x i8], [6 x i8]* @str33, %word 0, %word 0
	%r172 = bitcast %ptr (%ptr, %ptr)* @"subr/quote" to %ptr
	%r173 = inttoptr %word 1 to %ptr
	%r174 = load %ptr, %ptr* %t1
	%r175 = call %ptr @"%instantiate-subr"(%ptr %r170, %ptr %r172, %ptr %r173, %ptr %r174)
	%r176 = getelementptr [4 x i8], [4 x i8]* @str34, %word 0, %word 0
	%r178 = bitcast %ptr (%ptr, %ptr)* @"subr/not" to %ptr
	%r179 = inttoptr %word 0 to %ptr
	%r180 = load %ptr, %ptr* %t1
	%r181 = call %ptr @"%instantiate-subr"(%ptr %r176, %ptr %r178, %ptr %r179, %ptr %r180)
	%r182 = getelementptr [6 x i8], [6 x i8]* @str35, %word 0, %word 0
	%r184 = bitcast %ptr (%ptr, %ptr)* @"subr/fixed" to %ptr
	%r185 = inttoptr %word 0 to %ptr
	%r186 = load %ptr, %ptr* %t1
	%r187 = call %ptr @"%instantiate-subr"(%ptr %r182, %ptr %r184, %ptr %r185, %ptr %r186)
	%r188 = getelementptr [9 x i8], [9 x i8]* @str36, %word 0, %word 0
	%r190 = bitcast %ptr (%ptr, %ptr)* @"subr/variable" to %ptr
	%r191 = inttoptr %word 0 to %ptr
	%r192 = load %ptr, %ptr* %t1
	%r193 = call %ptr @"%instantiate-subr"(%ptr %r188, %ptr %r190, %ptr %r191, %ptr %r192)
	%r194 = getelementptr [12 x i8], [12 x i8]* @str37, %word 0, %word 0
	%r196 = bitcast %ptr (%ptr, %ptr)* @"subr/environment" to %ptr
	%r197 = inttoptr %word 0 to %ptr
	%r198 = load %ptr, %ptr* %t1
	%r199 = call %ptr @"%instantiate-subr"(%ptr %r194, %ptr %r196, %ptr %r197, %ptr %r198)
	%r200 = getelementptr [19 x i8], [19 x i8]* @str38, %word 0, %word 0
	%r202 = bitcast %ptr (%ptr, %ptr)* @"subr/environment-define" to %ptr
	%r203 = inttoptr %word 0 to %ptr
	%r204 = load %ptr, %ptr* %t1
	%r205 = call %ptr @"%instantiate-subr"(%ptr %r200, %ptr %r202, %ptr %r203, %ptr %r204)
	%r206 = getelementptr [2 x i8], [2 x i8]* @str39, %word 0, %word 0
	%r208 = bitcast %ptr (%ptr, %ptr)* @"subr/-" to %ptr
	%r209 = inttoptr %word 0 to %ptr
	%r210 = load %ptr, %ptr* %t1
	%r211 = call %ptr @"%instantiate-subr"(%ptr %r206, %ptr %r208, %ptr %r209, %ptr %r210)
	%r212 = getelementptr [2 x i8], [2 x i8]* @str40, %word 0, %word 0
	%r214 = bitcast %ptr (%ptr, %ptr)* @"subr/+" to %ptr
	%r215 = inttoptr %word 0 to %ptr
	%r216 = load %ptr, %ptr* %t1
	%r217 = call %ptr @"%instantiate-subr"(%ptr %r212, %ptr %r214, %ptr %r215, %ptr %r216)
	%r218 = getelementptr [2 x i8], [2 x i8]* @str41, %word 0, %word 0
	%r220 = bitcast %ptr (%ptr, %ptr)* @"subr//" to %ptr
	%r221 = inttoptr %word 0 to %ptr
	%r222 = load %ptr, %ptr* %t1
	%r223 = call %ptr @"%instantiate-subr"(%ptr %r218, %ptr %r220, %ptr %r221, %ptr %r222)
	%r224 = getelementptr [2 x i8], [2 x i8]* @str42, %word 0, %word 0
	%r226 = bitcast %ptr (%ptr, %ptr)* @"subr/*" to %ptr
	%r227 = inttoptr %word 0 to %ptr
	%r228 = load %ptr, %ptr* %t1
	%r229 = call %ptr @"%instantiate-subr"(%ptr %r224, %ptr %r226, %ptr %r227, %ptr %r228)
	%r230 = getelementptr [12 x i8], [12 x i8]* @str43, %word 0, %word 0
	%r232 = bitcast %ptr (%ptr, %ptr)* @"subr/bitwise-and" to %ptr
	%r233 = inttoptr %word 0 to %ptr
	%r234 = load %ptr, %ptr* %t1
	%r235 = call %ptr @"%instantiate-subr"(%ptr %r230, %ptr %r232, %ptr %r233, %ptr %r234)
	%r236 = getelementptr [11 x i8], [11 x i8]* @str44, %word 0, %word 0
	%r238 = bitcast %ptr (%ptr, %ptr)* @"subr/bitwise-or" to %ptr
	%r239 = inttoptr %word 0 to %ptr
	%r240 = load %ptr, %ptr* %t1
	%r241 = call %ptr @"%instantiate-subr"(%ptr %r236, %ptr %r238, %ptr %r239, %ptr %r240)
	%r242 = getelementptr [12 x i8], [12 x i8]* @str45, %word 0, %word 0
	%r244 = bitcast %ptr (%ptr, %ptr)* @"subr/bitwise-xor" to %ptr
	%r245 = inttoptr %word 0 to %ptr
	%r246 = load %ptr, %ptr* %t1
	%r247 = call %ptr @"%instantiate-subr"(%ptr %r242, %ptr %r244, %ptr %r245, %ptr %r246)
	%r248 = getelementptr [12 x i8], [12 x i8]* @str46, %word 0, %word 0
	%r250 = bitcast %ptr (%ptr, %ptr)* @"subr/bitwise-not" to %ptr
	%r251 = inttoptr %word 0 to %ptr
	%r252 = load %ptr, %ptr* %t1
	%r253 = call %ptr @"%instantiate-subr"(%ptr %r248, %ptr %r250, %ptr %r251, %ptr %r252)
	%r254 = getelementptr [14 x i8], [14 x i8]* @str47, %word 0, %word 0
	%r256 = bitcast %ptr (%ptr, %ptr)* @"subr/bitwise-shift" to %ptr
	%r257 = inttoptr %word 0 to %ptr
	%r258 = load %ptr, %ptr* %t1
	%r259 = call %ptr @"%instantiate-subr"(%ptr %r254, %ptr %r256, %ptr %r257, %ptr %r258)
	%r260 = getelementptr [2 x i8], [2 x i8]* @str48, %word 0, %word 0
	%r262 = bitcast %ptr (%ptr, %ptr)* @"subr/<" to %ptr
	%r263 = inttoptr %word 0 to %ptr
	%r264 = load %ptr, %ptr* %t1
	%r265 = call %ptr @"%instantiate-subr"(%ptr %r260, %ptr %r262, %ptr %r263, %ptr %r264)
	%r266 = getelementptr [3 x i8], [3 x i8]* @str49, %word 0, %word 0
	%r268 = bitcast %ptr (%ptr, %ptr)* @"subr/<=" to %ptr
	%r269 = inttoptr %word 0 to %ptr
	%r270 = load %ptr, %ptr* %t1
	%r271 = call %ptr @"%instantiate-subr"(%ptr %r266, %ptr %r268, %ptr %r269, %ptr %r270)
	%r272 = getelementptr [3 x i8], [3 x i8]* @str50, %word 0, %word 0
	%r274 = bitcast %ptr (%ptr, %ptr)* @"subr/>=" to %ptr
	%r275 = inttoptr %word 0 to %ptr
	%r276 = load %ptr, %ptr* %t1
	%r277 = call %ptr @"%instantiate-subr"(%ptr %r272, %ptr %r274, %ptr %r275, %ptr %r276)
	%r278 = getelementptr [2 x i8], [2 x i8]* @str51, %word 0, %word 0
	%r280 = bitcast %ptr (%ptr, %ptr)* @"subr/>" to %ptr
	%r281 = inttoptr %word 0 to %ptr
	%r282 = load %ptr, %ptr* %t1
	%r283 = call %ptr @"%instantiate-subr"(%ptr %r278, %ptr %r280, %ptr %r281, %ptr %r282)
	%r284 = getelementptr [2 x i8], [2 x i8]* @str52, %word 0, %word 0
	%r286 = bitcast %ptr (%ptr, %ptr)* @"subr/=" to %ptr
	%r287 = inttoptr %word 0 to %ptr
	%r288 = load %ptr, %ptr* %t1
	%r289 = call %ptr @"%instantiate-subr"(%ptr %r284, %ptr %r286, %ptr %r287, %ptr %r288)
	%r290 = getelementptr [3 x i8], [3 x i8]* @str53, %word 0, %word 0
	%r292 = bitcast %ptr (%ptr, %ptr)* @"subr/!=" to %ptr
	%r293 = inttoptr %word 0 to %ptr
	%r294 = load %ptr, %ptr* %t1
	%r295 = call %ptr @"%instantiate-subr"(%ptr %r290, %ptr %r292, %ptr %r293, %ptr %r294)
	%r296 = getelementptr [6 x i8], [6 x i8]* @str54, %word 0, %word 0
	%r298 = bitcast %ptr (%ptr, %ptr)* @"subr/abort" to %ptr
	%r299 = inttoptr %word 0 to %ptr
	%r300 = load %ptr, %ptr* %t1
	%r301 = call %ptr @"%instantiate-subr"(%ptr %r296, %ptr %r298, %ptr %r299, %ptr %r300)
	%r302 = getelementptr [5 x i8], [5 x i8]* @str55, %word 0, %word 0
	%r304 = bitcast %ptr (%ptr, %ptr)* @"subr/exit" to %ptr
	%r305 = inttoptr %word 0 to %ptr
	%r306 = load %ptr, %ptr* %t1
	%r307 = call %ptr @"%instantiate-subr"(%ptr %r302, %ptr %r304, %ptr %r305, %ptr %r306)
	%r308 = getelementptr [11 x i8], [11 x i8]* @str56, %word 0, %word 0
	%r310 = bitcast %ptr (%ptr, %ptr)* @"subr/libc/fopen" to %ptr
	%r311 = inttoptr %word 0 to %ptr
	%r312 = load %ptr, %ptr* %t1
	%r313 = call %ptr @"%instantiate-subr"(%ptr %r308, %ptr %r310, %ptr %r311, %ptr %r312)
	%r314 = getelementptr [12 x i8], [12 x i8]* @str57, %word 0, %word 0
	%r316 = bitcast %ptr (%ptr, %ptr)* @"subr/libc/fclose" to %ptr
	%r317 = inttoptr %word 0 to %ptr
	%r318 = load %ptr, %ptr* %t1
	%r319 = call %ptr @"%instantiate-subr"(%ptr %r314, %ptr %r316, %ptr %r317, %ptr %r318)
	%r320 = getelementptr [11 x i8], [11 x i8]* @str58, %word 0, %word 0
	%r322 = bitcast %ptr (%ptr, %ptr)* @"subr/libc/fgetc" to %ptr
	%r323 = inttoptr %word 0 to %ptr
	%r324 = load %ptr, %ptr* %t1
	%r325 = call %ptr @"%instantiate-subr"(%ptr %r320, %ptr %r322, %ptr %r323, %ptr %r324)
	%r326 = getelementptr [11 x i8], [11 x i8]* @str59, %word 0, %word 0
	%r328 = bitcast %ptr (%ptr, %ptr)* @"subr/libc/fputc" to %ptr
	%r329 = inttoptr %word 0 to %ptr
	%r330 = load %ptr, %ptr* %t1
	%r331 = call %ptr @"%instantiate-subr"(%ptr %r326, %ptr %r328, %ptr %r329, %ptr %r330)
	%r332 = getelementptr [12 x i8], [12 x i8]* @str60, %word 0, %word 0
	%r334 = bitcast %ptr (%ptr, %ptr)* @"subr/libc/format" to %ptr
	%r335 = inttoptr %word 0 to %ptr
	%r336 = load %ptr, %ptr* %t1
	%r337 = call %ptr @"%instantiate-subr"(%ptr %r332, %ptr %r334, %ptr %r335, %ptr %r336)
	%r338 = getelementptr [5 x i8], [5 x i8]* @str61, %word 0, %word 0
	%r340 = bitcast %ptr (%ptr, %ptr)* @"subr/load" to %ptr
	%r341 = inttoptr %word 0 to %ptr
	%r342 = load %ptr, %ptr* %t1
	%r343 = call %ptr @"%instantiate-subr"(%ptr %r338, %ptr %r340, %ptr %r341, %ptr %r342)
	%r344 = getelementptr [12 x i8], [12 x i8]* @str62, %word 0, %word 0
	%r346 = bitcast %ptr (%ptr, %ptr)* @"subr/repl-stream" to %ptr
	%r347 = inttoptr %word 0 to %ptr
	%r348 = load %ptr, %ptr* %t1
	%r349 = call %ptr @"%instantiate-subr"(%ptr %r344, %ptr %r346, %ptr %r347, %ptr %r348)
	%r350 = getelementptr [5 x i8], [5 x i8]* @str63, %word 0, %word 0
	%r352 = bitcast %ptr (%ptr, %ptr)* @"subr/dump" to %ptr
	%r353 = inttoptr %word 0 to %ptr
	%r354 = load %ptr, %ptr* %t1
	%r355 = call %ptr @"%instantiate-subr"(%ptr %r350, %ptr %r352, %ptr %r353, %ptr %r354)
	%r356 = getelementptr [6 x i8], [6 x i8]* @str64, %word 0, %word 0
	%r358 = bitcast %ptr (%ptr, %ptr)* @"subr/print" to %ptr
	%r359 = inttoptr %word 0 to %ptr
	%r360 = load %ptr, %ptr* %t1
	%r361 = call %ptr @"%instantiate-subr"(%ptr %r356, %ptr %r358, %ptr %r359, %ptr %r360)
	%r362 = getelementptr [5 x i8], [5 x i8]* @str65, %word 0, %word 0
	%r364 = bitcast %ptr (%ptr, %ptr)* @"subr/warn" to %ptr
	%r365 = inttoptr %word 0 to %ptr
	%r366 = load %ptr, %ptr* %t1
	%r367 = call %ptr @"%instantiate-subr"(%ptr %r362, %ptr %r364, %ptr %r365, %ptr %r366)
	%r368 = getelementptr [6 x i8], [6 x i8]* @str66, %word 0, %word 0
	%r370 = bitcast %ptr (%ptr, %ptr)* @"subr/apply" to %ptr
	%r371 = inttoptr %word 0 to %ptr
	%r372 = load %ptr, %ptr* %t1
	%r373 = call %ptr @"%instantiate-subr"(%ptr %r368, %ptr %r370, %ptr %r371, %ptr %r372)
	%r374 = getelementptr [5 x i8], [5 x i8]* @str67, %word 0, %word 0
	%r376 = bitcast %ptr (%ptr, %ptr)* @"subr/eval" to %ptr
	%r377 = inttoptr %word 0 to %ptr
	%r378 = load %ptr, %ptr* %t1
	%r379 = call %ptr @"%instantiate-subr"(%ptr %r374, %ptr %r376, %ptr %r377, %ptr %r378)
	%r380 = getelementptr [7 x i8], [7 x i8]* @str68, %word 0, %word 0
	%r382 = bitcast %ptr (%ptr, %ptr)* @"subr/encode" to %ptr
	%r383 = inttoptr %word 0 to %ptr
	%r384 = load %ptr, %ptr* %t1
	%r385 = call %ptr @"%instantiate-subr"(%ptr %r380, %ptr %r382, %ptr %r383, %ptr %r384)
	%r386 = getelementptr [7 x i8], [7 x i8]* @str69, %word 0, %word 0
	%r388 = bitcast %ptr (%ptr, %ptr)* @"subr/expand" to %ptr
	%r389 = inttoptr %word 0 to %ptr
	%r390 = load %ptr, %ptr* %t1
	%r391 = call %ptr @"%instantiate-subr"(%ptr %r386, %ptr %r388, %ptr %r389, %ptr %r390)
	%r392 = getelementptr [5 x i8], [5 x i8]* @str70, %word 0, %word 0
	%r394 = bitcast %ptr (%ptr, %ptr)* @"subr/cons" to %ptr
	%r395 = inttoptr %word 0 to %ptr
	%r396 = load %ptr, %ptr* %t1
	%r397 = call %ptr @"%instantiate-subr"(%ptr %r392, %ptr %r394, %ptr %r395, %ptr %r396)
	%r398 = getelementptr [7 x i8], [7 x i8]* @str71, %word 0, %word 0
	%r400 = bitcast %ptr (%ptr, %ptr)* @"subr/string" to %ptr
	%r401 = inttoptr %word 0 to %ptr
	%r402 = load %ptr, %ptr* %t1
	%r403 = call %ptr @"%instantiate-subr"(%ptr %r398, %ptr %r400, %ptr %r401, %ptr %r402)
	%r404 = getelementptr [6 x i8], [6 x i8]* @str72, %word 0, %word 0
	%r406 = bitcast %ptr (%ptr, %ptr)* @"subr/array" to %ptr
	%r407 = inttoptr %word 0 to %ptr
	%r408 = load %ptr, %ptr* %t1
	%r409 = call %ptr @"%instantiate-subr"(%ptr %r404, %ptr %r406, %ptr %r407, %ptr %r408)
	%r410 = getelementptr [5 x i8], [5 x i8]* @str73, %word 0, %word 0
	%r412 = bitcast %ptr (%ptr, %ptr)* @"subr/form" to %ptr
	%r413 = inttoptr %word 0 to %ptr
	%r414 = load %ptr, %ptr* %t1
	%r415 = call %ptr @"%instantiate-subr"(%ptr %r410, %ptr %r412, %ptr %r413, %ptr %r414)
	%r416 = getelementptr [9 x i8], [9 x i8]* @str74, %word 0, %word 0
	%r418 = bitcast %ptr (%ptr, %ptr)* @"subr/allocate" to %ptr
	%r419 = inttoptr %word 0 to %ptr
	%r420 = load %ptr, %ptr* %t1
	%r421 = call %ptr @"%instantiate-subr"(%ptr %r416, %ptr %r418, %ptr %r419, %ptr %r420)
	%r422 = getelementptr [14 x i8], [14 x i8]* @str75, %word 0, %word 0
	%r424 = bitcast %ptr (%ptr, %ptr)* @"subr/allocate-data" to %ptr
	%r425 = inttoptr %word 0 to %ptr
	%r426 = load %ptr, %ptr* %t1
	%r427 = call %ptr @"%instantiate-subr"(%ptr %r422, %ptr %r424, %ptr %r425, %ptr %r426)
	%r428 = getelementptr [8 x i8], [8 x i8]* @str76, %word 0, %word 0
	%r430 = bitcast %ptr (%ptr, %ptr)* @"subr/type-of" to %ptr
	%r431 = inttoptr %word 0 to %ptr
	%r432 = load %ptr, %ptr* %t1
	%r433 = call %ptr @"%instantiate-subr"(%ptr %r428, %ptr %r430, %ptr %r431, %ptr %r432)
	%r434 = getelementptr [8 x i8], [8 x i8]* @str77, %word 0, %word 0
	%r436 = bitcast %ptr (%ptr, %ptr)* @"subr/string?" to %ptr
	%r437 = inttoptr %word 0 to %ptr
	%r438 = load %ptr, %ptr* %t1
	%r439 = call %ptr @"%instantiate-subr"(%ptr %r434, %ptr %r436, %ptr %r437, %ptr %r438)
	%r440 = getelementptr [8 x i8], [8 x i8]* @str78, %word 0, %word 0
	%r442 = bitcast %ptr (%ptr, %ptr)* @"subr/symbol?" to %ptr
	%r443 = inttoptr %word 0 to %ptr
	%r444 = load %ptr, %ptr* %t1
	%r445 = call %ptr @"%instantiate-subr"(%ptr %r440, %ptr %r442, %ptr %r443, %ptr %r444)
	%r446 = getelementptr [6 x i8], [6 x i8]* @str79, %word 0, %word 0
	%r448 = bitcast %ptr (%ptr, %ptr)* @"subr/pair?" to %ptr
	%r449 = inttoptr %word 0 to %ptr
	%r450 = load %ptr, %ptr* %t1
	%r451 = call %ptr @"%instantiate-subr"(%ptr %r446, %ptr %r448, %ptr %r449, %ptr %r450)
	%r452 = getelementptr [7 x i8], [7 x i8]* @str80, %word 0, %word 0
	%r454 = bitcast %ptr (%ptr, %ptr)* @"subr/array?" to %ptr
	%r455 = inttoptr %word 0 to %ptr
	%r456 = load %ptr, %ptr* %t1
	%r457 = call %ptr @"%instantiate-subr"(%ptr %r452, %ptr %r454, %ptr %r455, %ptr %r456)
	%r458 = getelementptr [4 x i8], [4 x i8]* @str81, %word 0, %word 0
	%r460 = bitcast %ptr (%ptr, %ptr)* @"subr/car" to %ptr
	%r461 = inttoptr %word 0 to %ptr
	%r462 = load %ptr, %ptr* %t1
	%r463 = call %ptr @"%instantiate-subr"(%ptr %r458, %ptr %r460, %ptr %r461, %ptr %r462)
	%r464 = getelementptr [4 x i8], [4 x i8]* @str82, %word 0, %word 0
	%r466 = bitcast %ptr (%ptr, %ptr)* @"subr/cdr" to %ptr
	%r467 = inttoptr %word 0 to %ptr
	%r468 = load %ptr, %ptr* %t1
	%r469 = call %ptr @"%instantiate-subr"(%ptr %r464, %ptr %r466, %ptr %r467, %ptr %r468)
	%r470 = getelementptr [8 x i8], [8 x i8]* @str83, %word 0, %word 0
	%r472 = bitcast %ptr (%ptr, %ptr)* @"subr/set-car" to %ptr
	%r473 = inttoptr %word 0 to %ptr
	%r474 = load %ptr, %ptr* %t1
	%r475 = call %ptr @"%instantiate-subr"(%ptr %r470, %ptr %r472, %ptr %r473, %ptr %r474)
	%r476 = getelementptr [8 x i8], [8 x i8]* @str84, %word 0, %word 0
	%r478 = bitcast %ptr (%ptr, %ptr)* @"subr/set-cdr" to %ptr
	%r479 = inttoptr %word 0 to %ptr
	%r480 = load %ptr, %ptr* %t1
	%r481 = call %ptr @"%instantiate-subr"(%ptr %r476, %ptr %r478, %ptr %r479, %ptr %r480)
	%r482 = getelementptr [10 x i8], [10 x i8]* @str85, %word 0, %word 0
	%r484 = bitcast %ptr (%ptr, %ptr)* @"subr/copy-oops" to %ptr
	%r485 = inttoptr %word 0 to %ptr
	%r486 = load %ptr, %ptr* %t1
	%r487 = call %ptr @"%instantiate-subr"(%ptr %r482, %ptr %r484, %ptr %r485, %ptr %r486)
	%r488 = getelementptr [7 x i8], [7 x i8]* @str86, %word 0, %word 0
	%r490 = bitcast %ptr (%ptr, %ptr)* @"subr/oop-at" to %ptr
	%r491 = inttoptr %word 0 to %ptr
	%r492 = load %ptr, %ptr* %t1
	%r493 = call %ptr @"%instantiate-subr"(%ptr %r488, %ptr %r490, %ptr %r491, %ptr %r492)
	%r494 = getelementptr [11 x i8], [11 x i8]* @str87, %word 0, %word 0
	%r496 = bitcast %ptr (%ptr, %ptr)* @"subr/set-oop-at" to %ptr
	%r497 = inttoptr %word 0 to %ptr
	%r498 = load %ptr, %ptr* %t1
	%r499 = call %ptr @"%instantiate-subr"(%ptr %r494, %ptr %r496, %ptr %r497, %ptr %r498)
	%r500 = getelementptr [11 x i8], [11 x i8]* @str88, %word 0, %word 0
	%r502 = bitcast %ptr (%ptr, %ptr)* @"subr/address-of" to %ptr
	%r503 = inttoptr %word 0 to %ptr
	%r504 = load %ptr, %ptr* %t1
	%r505 = call %ptr @"%instantiate-subr"(%ptr %r500, %ptr %r502, %ptr %r503, %ptr %r504)
	%r506 = getelementptr [11 x i8], [11 x i8]* @str89, %word 0, %word 0
	%r508 = bitcast %ptr (%ptr, %ptr)* @"subr/copy-bytes" to %ptr
	%r509 = inttoptr %word 0 to %ptr
	%r510 = load %ptr, %ptr* %t1
	%r511 = call %ptr @"%instantiate-subr"(%ptr %r506, %ptr %r508, %ptr %r509, %ptr %r510)
	%r512 = getelementptr [8 x i8], [8 x i8]* @str90, %word 0, %word 0
	%r514 = bitcast %ptr (%ptr, %ptr)* @"subr/byte-at" to %ptr
	%r515 = inttoptr %word 0 to %ptr
	%r516 = load %ptr, %ptr* %t1
	%r517 = call %ptr @"%instantiate-subr"(%ptr %r512, %ptr %r514, %ptr %r515, %ptr %r516)
	%r518 = getelementptr [12 x i8], [12 x i8]* @str91, %word 0, %word 0
	%r520 = bitcast %ptr (%ptr, %ptr)* @"subr/set-byte-at" to %ptr
	%r521 = inttoptr %word 0 to %ptr
	%r522 = load %ptr, %ptr* %t1
	%r523 = call %ptr @"%instantiate-subr"(%ptr %r518, %ptr %r520, %ptr %r521, %ptr %r522)
	%r524 = getelementptr [13 x i8], [13 x i8]* @str92, %word 0, %word 0
	%r526 = bitcast %ptr (%ptr, %ptr)* @"subr/array-length" to %ptr
	%r527 = inttoptr %word 0 to %ptr
	%r528 = load %ptr, %ptr* %t1
	%r529 = call %ptr @"%instantiate-subr"(%ptr %r524, %ptr %r526, %ptr %r527, %ptr %r528)
	%r530 = getelementptr [14 x i8], [14 x i8]* @str93, %word 0, %word 0
	%r532 = bitcast %ptr (%ptr, %ptr)* @"subr/string-length" to %ptr
	%r533 = inttoptr %word 0 to %ptr
	%r534 = load %ptr, %ptr* %t1
	%r535 = call %ptr @"%instantiate-subr"(%ptr %r530, %ptr %r532, %ptr %r533, %ptr %r534)
	%r536 = getelementptr [9 x i8], [9 x i8]* @str94, %word 0, %word 0
	%r538 = bitcast %ptr (%ptr, %ptr)* @"subr/array-at" to %ptr
	%r539 = inttoptr %word 0 to %ptr
	%r540 = load %ptr, %ptr* %t1
	%r541 = call %ptr @"%instantiate-subr"(%ptr %r536, %ptr %r538, %ptr %r539, %ptr %r540)
	%r542 = getelementptr [10 x i8], [10 x i8]* @str95, %word 0, %word 0
	%r544 = bitcast %ptr (%ptr, %ptr)* @"subr/string-at" to %ptr
	%r545 = inttoptr %word 0 to %ptr
	%r546 = load %ptr, %ptr* %t1
	%r547 = call %ptr @"%instantiate-subr"(%ptr %r542, %ptr %r544, %ptr %r545, %ptr %r546)
	%r548 = getelementptr [13 x i8], [13 x i8]* @str96, %word 0, %word 0
	%r550 = bitcast %ptr (%ptr, %ptr)* @"subr/set-array-at" to %ptr
	%r551 = inttoptr %word 0 to %ptr
	%r552 = load %ptr, %ptr* %t1
	%r553 = call %ptr @"%instantiate-subr"(%ptr %r548, %ptr %r550, %ptr %r551, %ptr %r552)
	%r554 = getelementptr [14 x i8], [14 x i8]* @str97, %word 0, %word 0
	%r556 = bitcast %ptr (%ptr, %ptr)* @"subr/set-string-at" to %ptr
	%r557 = inttoptr %word 0 to %ptr
	%r558 = load %ptr, %ptr* %t1
	%r559 = call %ptr @"%instantiate-subr"(%ptr %r554, %ptr %r556, %ptr %r557, %ptr %r558)
	%r560 = getelementptr [13 x i8], [13 x i8]* @str98, %word 0, %word 0
	%r562 = bitcast %ptr (%ptr, %ptr)* @"subr/array-insert" to %ptr
	%r563 = inttoptr %word 0 to %ptr
	%r564 = load %ptr, %ptr* %t1
	%r565 = call %ptr @"%instantiate-subr"(%ptr %r560, %ptr %r562, %ptr %r563, %ptr %r564)
	%r566 = getelementptr [14 x i8], [14 x i8]* @str99, %word 0, %word 0
	%r568 = bitcast %ptr (%ptr, %ptr)* @"subr/string-insert" to %ptr
	%r569 = inttoptr %word 0 to %ptr
	%r570 = load %ptr, %ptr* %t1
	%r571 = call %ptr @"%instantiate-subr"(%ptr %r566, %ptr %r568, %ptr %r569, %ptr %r570)
	%r572 = getelementptr [15 x i8], [15 x i8]* @str100, %word 0, %word 0
	%r574 = bitcast %ptr (%ptr, %ptr)* @"subr/string->symbol" to %ptr
	%r575 = inttoptr %word 0 to %ptr
	%r576 = load %ptr, %ptr* %t1
	%r577 = call %ptr @"%instantiate-subr"(%ptr %r572, %ptr %r574, %ptr %r575, %ptr %r576)
	%r578 = getelementptr [15 x i8], [15 x i8]* @str101, %word 0, %word 0
	%r580 = bitcast %ptr (%ptr, %ptr)* @"subr/symbol->string" to %ptr
	%r581 = inttoptr %word 0 to %ptr
	%r582 = load %ptr, %ptr* %t1
	%r583 = call %ptr @"%instantiate-subr"(%ptr %r578, %ptr %r580, %ptr %r581, %ptr %r582)
	%r584 = getelementptr [13 x i8], [13 x i8]* @str102, %word 0, %word 0
	%r586 = bitcast %ptr (%ptr, %ptr)* @"subr/long->string" to %ptr
	%r587 = inttoptr %word 0 to %ptr
	%r588 = load %ptr, %ptr* %t1
	%r589 = call %ptr @"%instantiate-subr"(%ptr %r584, %ptr %r586, %ptr %r587, %ptr %r588)
	%r590 = getelementptr [13 x i8], [13 x i8]* @str103, %word 0, %word 0
	%r592 = bitcast %ptr (%ptr, %ptr)* @"subr/string->long" to %ptr
	%r593 = inttoptr %word 0 to %ptr
	%r594 = load %ptr, %ptr* %t1
	%r595 = call %ptr @"%instantiate-subr"(%ptr %r590, %ptr %r592, %ptr %r593, %ptr %r594)
	%r596 = getelementptr [5 x i8], [5 x i8]* @str104, %word 0, %word 0
	%r598 = bitcast %ptr (%ptr, %ptr)* @"subr/read" to %ptr
	%r599 = inttoptr %word 0 to %ptr
	%r600 = load %ptr, %ptr* %t1
	%r601 = call %ptr @"%instantiate-subr"(%ptr %r596, %ptr %r598, %ptr %r599, %ptr %r600)
	%r602 = getelementptr [15 x i8], [15 x i8]* @str105, %word 0, %word 0
	%r604 = bitcast %ptr (%ptr, %ptr)* @"subr/current-module" to %ptr
	%r605 = inttoptr %word 0 to %ptr
	%r606 = load %ptr, %ptr* %t1
	%r607 = call %ptr @"%instantiate-subr"(%ptr %r602, %ptr %r604, %ptr %r605, %ptr %r606)
	%r608 = getelementptr [19 x i8], [19 x i8]* @str106, %word 0, %word 0
	%r610 = bitcast %ptr (%ptr, %ptr)* @"subr/set-current-module" to %ptr
	%r611 = inttoptr %word 0 to %ptr
	%r612 = load %ptr, %ptr* %t1
	%r613 = call %ptr @"%instantiate-subr"(%ptr %r608, %ptr %r610, %ptr %r611, %ptr %r612)
	%r614 = getelementptr [14 x i8], [14 x i8]* @str107, %word 0, %word 0
	%r616 = bitcast %ptr (%ptr, %ptr)* @"subr/create-module" to %ptr
	%r617 = inttoptr %word 0 to %ptr
	%r618 = load %ptr, %ptr* %t1
	%r619 = call %ptr @"%instantiate-subr"(%ptr %r614, %ptr %r616, %ptr %r617, %ptr %r618)
	%r620 = getelementptr [15 x i8], [15 x i8]* @str108, %word 0, %word 0
	%r622 = bitcast %ptr (%ptr, %ptr)* @"subr/eval-in-module" to %ptr
	%r623 = inttoptr %word 0 to %ptr
	%r624 = load %ptr, %ptr* %t1
	%r625 = call %ptr @"%instantiate-subr"(%ptr %r620, %ptr %r622, %ptr %r623, %ptr %r624)
	%r626 = getelementptr [25 x i8], [25 x i8]* @str109, %word 0, %word 0
	%r628 = bitcast %ptr (%ptr, %ptr)* @"subr/call-x86-64-machine-code" to %ptr
	%r629 = inttoptr %word 0 to %ptr
	%r630 = load %ptr, %ptr* %t1
	%r631 = call %ptr @"%instantiate-subr"(%ptr %r626, %ptr %r628, %ptr %r629, %ptr %r630)
	ret %ptr %r631
}
@str110 = private unnamed_addr constant [5 x i8] c"true\00"
@str111 = private unnamed_addr constant [2 x i8] c".\00"
@str112 = private unnamed_addr constant [7 x i8] c"define\00"
@str113 = private unnamed_addr constant [4 x i8] c"set\00"
@str114 = private unnamed_addr constant [6 x i8] c"quote\00"
@str115 = private unnamed_addr constant [11 x i8] c"quasiquote\00"
@str116 = private unnamed_addr constant [8 x i8] c"unquote\00"
@str117 = private unnamed_addr constant [17 x i8] c"unquote-splicing\00"
@str118 = private unnamed_addr constant [7 x i8] c"expand\00"
@str119 = private unnamed_addr constant [7 x i8] c"encode\00"
@str120 = private unnamed_addr constant [6 x i8] c"apply\00"
@str121 = private unnamed_addr constant [6 x i8] c"+end+\00"
@str122 = private unnamed_addr constant [12 x i8] c"*expanders*\00"
@str123 = private unnamed_addr constant [11 x i8] c"*encoders*\00"
@str124 = private unnamed_addr constant [13 x i8] c"*evaluators*\00"
@str125 = private unnamed_addr constant [14 x i8] c"*applicators*\00"
@str126 = private unnamed_addr constant [8 x i8] c"*input*\00"
@str127 = private unnamed_addr constant [6 x i8] c"quote\00"
@str128 = private unnamed_addr constant [7 x i8] c"lambda\00"
@str129 = private unnamed_addr constant [4 x i8] c"let\00"
@str130 = private unnamed_addr constant [7 x i8] c"define\00"
@str131 = private unnamed_addr constant [4 x i8] c"set\00"
@str140 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str141 = private unnamed_addr constant [39 x i8] c"capture-well-known-vm-values: assert 2\00"
@str142 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @capture-well-known-vm-values() {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	%r1 = inttoptr %word 0 to %ptr
	%r2 = getelementptr [5 x i8], [5 x i8]* @str110, %word 0, %word 0
	%r4 = call %ptr @"k/intern"(%ptr %r2)
	store %ptr %r4, %ptr* @"symbol/true"
	%r5 = getelementptr [2 x i8], [2 x i8]* @str111, %word 0, %word 0
	%r7 = call %ptr @"k/intern"(%ptr %r5)
	store %ptr %r7, %ptr* @"symbol/dot"
	%r8 = getelementptr [7 x i8], [7 x i8]* @str112, %word 0, %word 0
	%r10 = call %ptr @"k/intern"(%ptr %r8)
	store %ptr %r10, %ptr* @"symbol/define"
	%r11 = getelementptr [4 x i8], [4 x i8]* @str113, %word 0, %word 0
	%r13 = call %ptr @"k/intern"(%ptr %r11)
	store %ptr %r13, %ptr* @"symbol/set"
	%r14 = getelementptr [6 x i8], [6 x i8]* @str114, %word 0, %word 0
	%r16 = call %ptr @"k/intern"(%ptr %r14)
	store %ptr %r16, %ptr* @"symbol/quote"
	%r17 = getelementptr [11 x i8], [11 x i8]* @str115, %word 0, %word 0
	%r19 = call %ptr @"k/intern"(%ptr %r17)
	store %ptr %r19, %ptr* @"symbol/quasiquote"
	%r20 = getelementptr [8 x i8], [8 x i8]* @str116, %word 0, %word 0
	%r22 = call %ptr @"k/intern"(%ptr %r20)
	store %ptr %r22, %ptr* @"symbol/unquote"
	%r23 = getelementptr [17 x i8], [17 x i8]* @str117, %word 0, %word 0
	%r25 = call %ptr @"k/intern"(%ptr %r23)
	store %ptr %r25, %ptr* @"symbol/unquote_splicing"
	%r26 = getelementptr [7 x i8], [7 x i8]* @str118, %word 0, %word 0
	%r28 = call %ptr @"k/intern"(%ptr %r26)
	store %ptr %r28, %ptr* @"symbol/expand"
	%r29 = getelementptr [7 x i8], [7 x i8]* @str119, %word 0, %word 0
	%r31 = call %ptr @"k/intern"(%ptr %r29)
	store %ptr %r31, %ptr* @"symbol/encode"
	%r32 = getelementptr [6 x i8], [6 x i8]* @str120, %word 0, %word 0
	%r34 = call %ptr @"k/intern"(%ptr %r32)
	store %ptr %r34, %ptr* @"symbol/apply"
	%r35 = inttoptr %word 1 to %ptr
	%r36 = inttoptr %word 1 to %ptr
	%r37 = load %ptr, %ptr* @"*module*"
	%r41 = bitcast %ptr %r37 to [0 x %ptr]*
	%r40 = ptrtoint %ptr %r36 to %word
	%r39 = getelementptr [0 x %ptr], [0 x %ptr]* %r41, %word 0, %word %r40
	%r38 = load %ptr, %ptr* %r39
	%r45 = bitcast %ptr %r38 to [0 x %ptr]*
	%r44 = ptrtoint %ptr %r35 to %word
	%r43 = getelementptr [0 x %ptr], [0 x %ptr]* %r45, %word 0, %word %r44
	%r42 = load %ptr, %ptr* %r43
	store %ptr %r42, %ptr* %t1
	%r46 = load %ptr, %ptr* %t1
	%r47 = getelementptr [6 x i8], [6 x i8]* @str121, %word 0, %word 0
	%r49 = call %ptr @"k/intern"(%ptr %r47)
	%r50 = call %ptr @"k/env/lookup-variable-or-die"(%ptr %r46, %ptr %r49)
	store %ptr %r50, %ptr* @"k/+end+"
	%r51 = load %ptr, %ptr* %t1
	%r52 = getelementptr [12 x i8], [12 x i8]* @str122, %word 0, %word 0
	%r54 = call %ptr @"k/intern"(%ptr %r52)
	%r55 = call %ptr @"k/env/lookup-variable-or-die"(%ptr %r51, %ptr %r54)
	store %ptr %r55, %ptr* @"var/*expanders*"
	%r56 = load %ptr, %ptr* %t1
	%r57 = getelementptr [11 x i8], [11 x i8]* @str123, %word 0, %word 0
	%r59 = call %ptr @"k/intern"(%ptr %r57)
	%r60 = call %ptr @"k/env/lookup-variable-or-die"(%ptr %r56, %ptr %r59)
	store %ptr %r60, %ptr* @"var/*encoders*"
	%r61 = load %ptr, %ptr* %t1
	%r62 = getelementptr [13 x i8], [13 x i8]* @str124, %word 0, %word 0
	%r64 = call %ptr @"k/intern"(%ptr %r62)
	%r65 = call %ptr @"k/env/lookup-variable-or-die"(%ptr %r61, %ptr %r64)
	store %ptr %r65, %ptr* @"var/*evaluators*"
	%r66 = load %ptr, %ptr* %t1
	%r67 = getelementptr [14 x i8], [14 x i8]* @str125, %word 0, %word 0
	%r69 = call %ptr @"k/intern"(%ptr %r67)
	%r70 = call %ptr @"k/env/lookup-variable-or-die"(%ptr %r66, %ptr %r69)
	store %ptr %r70, %ptr* @"var/*applicators*"
	%r71 = load %ptr, %ptr* %t1
	%r72 = getelementptr [8 x i8], [8 x i8]* @str126, %word 0, %word 0
	%r74 = call %ptr @"k/intern"(%ptr %r72)
	%r75 = call %ptr @"k/env/lookup-variable-or-die"(%ptr %r71, %ptr %r74)
	store %ptr %r75, %ptr* @"var/*input*"
	%r76 = load %ptr, %ptr* %t1
	%r77 = getelementptr [6 x i8], [6 x i8]* @str127, %word 0, %word 0
	%r79 = call %ptr @"k/intern"(%ptr %r77)
	%r80 = call %ptr @"k/env/variable-value"(%ptr %r76, %ptr %r79)
	store %ptr %r80, %ptr* @"fixed-subr/quote"
	%r81 = load %ptr, %ptr* %t1
	%r82 = getelementptr [7 x i8], [7 x i8]* @str128, %word 0, %word 0
	%r84 = call %ptr @"k/intern"(%ptr %r82)
	%r85 = call %ptr @"k/env/variable-value"(%ptr %r81, %ptr %r84)
	store %ptr %r85, %ptr* @"fixed-subr/lambda"
	%r86 = load %ptr, %ptr* %t1
	%r87 = getelementptr [4 x i8], [4 x i8]* @str129, %word 0, %word 0
	%r89 = call %ptr @"k/intern"(%ptr %r87)
	%r90 = call %ptr @"k/env/variable-value"(%ptr %r86, %ptr %r89)
	store %ptr %r90, %ptr* @"fixed-subr/let"
	%r91 = load %ptr, %ptr* %t1
	%r92 = getelementptr [7 x i8], [7 x i8]* @str130, %word 0, %word 0
	%r94 = call %ptr @"k/intern"(%ptr %r92)
	%r95 = call %ptr @"k/env/variable-value"(%ptr %r91, %ptr %r94)
	store %ptr %r95, %ptr* @"fixed-subr/define"
	%r96 = load %ptr, %ptr* %t1
	%r97 = getelementptr [4 x i8], [4 x i8]* @str131, %word 0, %word 0
	%r99 = call %ptr @"k/intern"(%ptr %r97)
	%r100 = call %ptr @"k/env/variable-value"(%ptr %r96, %ptr %r99)
	store %ptr %r100, %ptr* @"fixed-subr/set"
	%r101 = inttoptr %word 0 to %ptr
	store %ptr %r101, %ptr* %t2
	%r102 = inttoptr %word 1 to %ptr
	store %ptr %r102, %ptr* %t3
	%r103 = load %ptr, %ptr* @"fixed-subr/quote"
	%r104 = call %ptr @"get/type"(%ptr %r103)
	%r105 = inttoptr %word 11 to %ptr
	%r109 = ptrtoint %ptr %r105 to %word
	%r108 = ptrtoint %ptr %r104 to %word
	%r107 = icmp eq %word %r109, %r108
	%r106 = inttoptr i1 %r107 to %ptr
	store %ptr %r106, %ptr* %t3
	%r110 = inttoptr %word 0 to %ptr
	%r114 = ptrtoint %ptr %r110 to %word
	%r113 = ptrtoint %ptr %r106 to %word
	%r112 = icmp eq %word %r114, %r113
	%r111 = inttoptr i1 %r112 to %ptr
	%r116 = ptrtoint %ptr %r111 to %word
	%r115 = icmp ne %word %r116, 0
	br i1 %r115, label %L133, label %L134
L134:
	%r117 = load %ptr, %ptr* @"fixed-subr/lambda"
	%r118 = call %ptr @"get/type"(%ptr %r117)
	%r119 = inttoptr %word 11 to %ptr
	%r123 = ptrtoint %ptr %r119 to %word
	%r122 = ptrtoint %ptr %r118 to %word
	%r121 = icmp eq %word %r123, %r122
	%r120 = inttoptr i1 %r121 to %ptr
	store %ptr %r120, %ptr* %t3
	%r124 = inttoptr %word 0 to %ptr
	%r128 = ptrtoint %ptr %r124 to %word
	%r127 = ptrtoint %ptr %r120 to %word
	%r126 = icmp eq %word %r128, %r127
	%r125 = inttoptr i1 %r126 to %ptr
	%r130 = ptrtoint %ptr %r125 to %word
	%r129 = icmp ne %word %r130, 0
	br i1 %r129, label %L133, label %L135
L135:
	%r131 = load %ptr, %ptr* @"fixed-subr/let"
	%r132 = call %ptr @"get/type"(%ptr %r131)
	%r133 = inttoptr %word 11 to %ptr
	%r137 = ptrtoint %ptr %r133 to %word
	%r136 = ptrtoint %ptr %r132 to %word
	%r135 = icmp eq %word %r137, %r136
	%r134 = inttoptr i1 %r135 to %ptr
	store %ptr %r134, %ptr* %t3
	%r138 = inttoptr %word 0 to %ptr
	%r142 = ptrtoint %ptr %r138 to %word
	%r141 = ptrtoint %ptr %r134 to %word
	%r140 = icmp eq %word %r142, %r141
	%r139 = inttoptr i1 %r140 to %ptr
	%r144 = ptrtoint %ptr %r139 to %word
	%r143 = icmp ne %word %r144, 0
	br i1 %r143, label %L133, label %L136
L136:
	%r145 = load %ptr, %ptr* @"fixed-subr/define"
	%r146 = call %ptr @"get/type"(%ptr %r145)
	%r147 = inttoptr %word 11 to %ptr
	%r151 = ptrtoint %ptr %r147 to %word
	%r150 = ptrtoint %ptr %r146 to %word
	%r149 = icmp eq %word %r151, %r150
	%r148 = inttoptr i1 %r149 to %ptr
	store %ptr %r148, %ptr* %t3
	%r152 = inttoptr %word 0 to %ptr
	%r156 = ptrtoint %ptr %r152 to %word
	%r155 = ptrtoint %ptr %r148 to %word
	%r154 = icmp eq %word %r156, %r155
	%r153 = inttoptr i1 %r154 to %ptr
	%r158 = ptrtoint %ptr %r153 to %word
	%r157 = icmp ne %word %r158, 0
	br i1 %r157, label %L133, label %L137
L137:
	%r159 = load %ptr, %ptr* @"fixed-subr/set"
	%r160 = call %ptr @"get/type"(%ptr %r159)
	%r161 = inttoptr %word 11 to %ptr
	%r165 = ptrtoint %ptr %r161 to %word
	%r164 = ptrtoint %ptr %r160 to %word
	%r163 = icmp eq %word %r165, %r164
	%r162 = inttoptr i1 %r163 to %ptr
	store %ptr %r162, %ptr* %t3
	%r166 = inttoptr %word 0 to %ptr
	%r170 = ptrtoint %ptr %r166 to %word
	%r169 = ptrtoint %ptr %r162 to %word
	%r168 = icmp eq %word %r170, %r169
	%r167 = inttoptr i1 %r168 to %ptr
	%r172 = ptrtoint %ptr %r167 to %word
	%r171 = icmp ne %word %r172, 0
	br i1 %r171, label %L133, label %L138
L138:
	br label %L133
L133:
	%r173 = load %ptr, %ptr* %t3
	store %ptr %r173, %ptr* %t2
	%r174 = inttoptr %word 0 to %ptr
	%r178 = ptrtoint %ptr %r174 to %word
	%r177 = ptrtoint %ptr %r173 to %word
	%r176 = icmp eq %word %r178, %r177
	%r175 = inttoptr i1 %r176 to %ptr
	%r180 = ptrtoint %ptr %r175 to %word
	%r179 = icmp ne %word %r180, 0
	br i1 %r179, label %L139, label %L132
L139:
	%r181 = getelementptr [9 x i8], [9 x i8]* @str140, %word 0, %word 0
	%r183 = call i32 (%ptr, ...) @printf(%ptr %r181)
	%r184 = sext i32 %r183 to %word
	%r185 = inttoptr %word %r184 to %ptr
	%r186 = getelementptr [39 x i8], [39 x i8]* @str141, %word 0, %word 0
	%r188 = call i32 (%ptr, ...) @printf(%ptr %r186)
	%r189 = sext i32 %r188 to %word
	%r190 = inttoptr %word %r189 to %ptr
	%r191 = getelementptr [2 x i8], [2 x i8]* @str142, %word 0, %word 0
	%r193 = call i32 (%ptr, ...) @printf(%ptr %r191)
	%r194 = sext i32 %r193 to %word
	%r195 = inttoptr %word %r194 to %ptr
	%r196 = call %ptr @die()
	store %ptr %r196, %ptr* %t2
	%r197 = inttoptr %word 0 to %ptr
	%r201 = ptrtoint %ptr %r197 to %word
	%r200 = ptrtoint %ptr %r196 to %word
	%r199 = icmp eq %word %r201, %r200
	%r198 = inttoptr i1 %r199 to %ptr
	%r203 = ptrtoint %ptr %r198 to %word
	%r202 = icmp ne %word %r203, 0
	br i1 %r202, label %L143, label %L132
L143:
	br label %L132
L132:
	%r204 = load %ptr, %ptr* %t2
	%r205 = inttoptr %word 0 to %ptr
	ret %ptr %r205
}
define %ptr @"k/print"(%ptr %obj) {
	%t1 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r2 = inttoptr %word 0 to %ptr
	%r3 = call %ptr @do_print(%ptr %r1, %ptr %r2)
	ret %ptr %r3
}
@str214 = private unnamed_addr constant [37 x i8] c"error while reading from libc stream\00"
@str215 = private unnamed_addr constant [22 x i8] c"illegal character: %c\00"
define %ptr @"k/read"(%ptr %stream) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t9 = alloca %ptr
	%t10 = alloca %ptr
	%t11 = alloca %ptr
	%t12 = alloca %ptr
	%t13 = alloca %ptr
	%t14 = alloca %ptr
	%t15 = alloca %ptr
	%t16 = alloca %ptr
	%t17 = alloca %ptr
	%t18 = alloca %ptr
	%t19 = alloca %ptr
	%t20 = alloca %ptr
	store %ptr %stream, %ptr* %t1
	br label %L145
L144:
	%r1 = load %ptr, %ptr* %t1
	%r2 = call i32 @fgetc(%ptr %r1)
	%r3 = sext i32 %r2 to %word
	%r4 = inttoptr %word %r3 to %ptr
	store %ptr %r4, %ptr* %t2
	%r5 = load %ptr, %ptr* %t2
	%r6 = call %ptr @is_blank(%ptr %r5)
	%r8 = ptrtoint %ptr %r6 to %word
	%r7 = icmp ne %word %r8, 0
	br i1 %r7, label %L147, label %L148
L147:
	%r9 = inttoptr %word 0 to %ptr
	store %ptr %r9, %ptr* %t3
	br label %L149
L148:
	%r10 = load %ptr, %ptr* %t2
	%r11 = inttoptr %word 63 to %ptr
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = icmp eq %word %r15, %r14
	%r12 = inttoptr i1 %r13 to %ptr
	%r17 = ptrtoint %ptr %r12 to %word
	%r16 = icmp ne %word %r17, 0
	br i1 %r16, label %L150, label %L151
L150:
	%r18 = inttoptr %word 1 to %ptr
	%r19 = inttoptr %word 1 to %ptr
	%r20 = load %ptr, %ptr* %t1
	%r21 = call i32 @fgetc(%ptr %r20)
	%r22 = sext i32 %r21 to %word
	%r23 = inttoptr %word %r22 to %ptr
	%r24 = load %ptr, %ptr* %t1
	%r25 = call %ptr @read_char(%ptr %r23, %ptr %r24)
	%r29 = ptrtoint %ptr %r25 to %word
	%r28 = ptrtoint %ptr %r19 to %word
	%r27 = shl %word %r29, %r28
	%r26 = inttoptr %word %r27 to %ptr
	%r33 = ptrtoint %ptr %r26 to %word
	%r32 = ptrtoint %ptr %r18 to %word
	%r31 = add %word %r33, %r32
	%r30 = inttoptr %word %r31 to %ptr
	ret %ptr %r30
	store %ptr %r30, %ptr* %t4
	br label %L152
L151:
	%r35 = load %ptr, %ptr* %t2
	%r36 = inttoptr %word 45 to %ptr
	%r40 = ptrtoint %ptr %r36 to %word
	%r39 = ptrtoint %ptr %r35 to %word
	%r38 = icmp eq %word %r40, %r39
	%r37 = inttoptr i1 %r38 to %ptr
	%r42 = ptrtoint %ptr %r37 to %word
	%r41 = icmp ne %word %r42, 0
	br i1 %r41, label %L153, label %L154
L153:
	%r43 = load %ptr, %ptr* %t1
	%r44 = call i32 @fgetc(%ptr %r43)
	%r45 = sext i32 %r44 to %word
	%r46 = inttoptr %word %r45 to %ptr
	%r47 = load %ptr, %ptr* %t1
	%ffi-cast48 = ptrtoint %ptr %r46 to i32
	%r49 = call i32 @ungetc(i32 %ffi-cast48, %ptr %r47)
	%r50 = sext i32 %r49 to %word
	%r51 = inttoptr %word %r50 to %ptr
	%r52 = call %ptr @is_digit10(%ptr %r51)
	%r54 = ptrtoint %ptr %r52 to %word
	%r53 = icmp ne %word %r54, 0
	br i1 %r53, label %L156, label %L157
L156:
	%r55 = load %ptr, %ptr* %t2
	%r56 = load %ptr, %ptr* %t1
	%r57 = call %ptr @read_number(%ptr %r55, %ptr %r56)
	store %ptr %r57, %ptr* %t6
	br label %L158
L157:
	%r58 = load %ptr, %ptr* %t2
	%r59 = load %ptr, %ptr* %t1
	%r60 = call %ptr @read_symbol(%ptr %r58, %ptr %r59)
	store %ptr %r60, %ptr* %t6
	br label %L158
L158:
	%r61 = load %ptr, %ptr* %t6
	ret %ptr %r61
	store %ptr %r61, %ptr* %t5
	br label %L155
L154:
	%r63 = load %ptr, %ptr* %t2
	%r64 = inttoptr %word 39 to %ptr
	%r68 = ptrtoint %ptr %r64 to %word
	%r67 = ptrtoint %ptr %r63 to %word
	%r66 = icmp eq %word %r68, %r67
	%r65 = inttoptr i1 %r66 to %ptr
	%r70 = ptrtoint %ptr %r65 to %word
	%r69 = icmp ne %word %r70, 0
	br i1 %r69, label %L159, label %L160
L159:
	%r71 = load %ptr, %ptr* @"symbol/quote"
	%r72 = load %ptr, %ptr* %t1
	%r73 = call %ptr @read_quote(%ptr %r71, %ptr %r72)
	ret %ptr %r73
	store %ptr %r73, %ptr* %t6
	br label %L161
L160:
	%r75 = load %ptr, %ptr* %t2
	%r76 = inttoptr %word 96 to %ptr
	%r80 = ptrtoint %ptr %r76 to %word
	%r79 = ptrtoint %ptr %r75 to %word
	%r78 = icmp eq %word %r80, %r79
	%r77 = inttoptr i1 %r78 to %ptr
	%r82 = ptrtoint %ptr %r77 to %word
	%r81 = icmp ne %word %r82, 0
	br i1 %r81, label %L162, label %L163
L162:
	%r83 = load %ptr, %ptr* @"symbol/quasiquote"
	%r84 = load %ptr, %ptr* %t1
	%r85 = call %ptr @read_quote(%ptr %r83, %ptr %r84)
	ret %ptr %r85
	store %ptr %r85, %ptr* %t7
	br label %L164
L163:
	%r87 = load %ptr, %ptr* %t2
	%r88 = inttoptr %word 44 to %ptr
	%r92 = ptrtoint %ptr %r88 to %word
	%r91 = ptrtoint %ptr %r87 to %word
	%r90 = icmp eq %word %r92, %r91
	%r89 = inttoptr i1 %r90 to %ptr
	%r94 = ptrtoint %ptr %r89 to %word
	%r93 = icmp ne %word %r94, 0
	br i1 %r93, label %L165, label %L166
L165:
	%r95 = load %ptr, %ptr* %t1
	%r96 = call i32 @fgetc(%ptr %r95)
	%r97 = sext i32 %r96 to %word
	%r98 = inttoptr %word %r97 to %ptr
	store %ptr %r98, %ptr* %t9
	%r99 = load %ptr, %ptr* %t9
	%r100 = inttoptr %word 64 to %ptr
	%r104 = ptrtoint %ptr %r100 to %word
	%r103 = ptrtoint %ptr %r99 to %word
	%r102 = icmp eq %word %r104, %r103
	%r101 = inttoptr i1 %r102 to %ptr
	%r106 = ptrtoint %ptr %r101 to %word
	%r105 = icmp ne %word %r106, 0
	br i1 %r105, label %L168, label %L169
L168:
	%r107 = load %ptr, %ptr* @"symbol/unquote_splicing"
	%r108 = load %ptr, %ptr* %t1
	%r109 = call %ptr @read_quote(%ptr %r107, %ptr %r108)
	store %ptr %r109, %ptr* %t10
	br label %L170
L169:
	%r110 = load %ptr, %ptr* %t9
	%r111 = load %ptr, %ptr* %t1
	%ffi-cast112 = ptrtoint %ptr %r110 to i32
	%r113 = call i32 @ungetc(i32 %ffi-cast112, %ptr %r111)
	%r114 = sext i32 %r113 to %word
	%r115 = inttoptr %word %r114 to %ptr
	%r116 = load %ptr, %ptr* @"symbol/unquote"
	%r117 = load %ptr, %ptr* %t1
	%r118 = call %ptr @read_quote(%ptr %r116, %ptr %r117)
	store %ptr %r118, %ptr* %t10
	br label %L170
L170:
	%r119 = load %ptr, %ptr* %t10
	ret %ptr %r119
	store %ptr %r119, %ptr* %t8
	br label %L167
L166:
	%r121 = load %ptr, %ptr* %t2
	%r122 = call %ptr @is_letter(%ptr %r121)
	%r124 = ptrtoint %ptr %r122 to %word
	%r123 = icmp ne %word %r124, 0
	br i1 %r123, label %L171, label %L172
L171:
	%r125 = load %ptr, %ptr* %t2
	%r126 = load %ptr, %ptr* %t1
	%r127 = call %ptr @read_symbol(%ptr %r125, %ptr %r126)
	ret %ptr %r127
	store %ptr %r127, %ptr* %t9
	br label %L173
L172:
	%r129 = load %ptr, %ptr* %t2
	%r130 = inttoptr %word 40 to %ptr
	%r134 = ptrtoint %ptr %r130 to %word
	%r133 = ptrtoint %ptr %r129 to %word
	%r132 = icmp eq %word %r134, %r133
	%r131 = inttoptr i1 %r132 to %ptr
	%r136 = ptrtoint %ptr %r131 to %word
	%r135 = icmp ne %word %r136, 0
	br i1 %r135, label %L174, label %L175
L174:
	%r137 = inttoptr %word 41 to %ptr
	%r138 = load %ptr, %ptr* %t1
	%r139 = call %ptr @read_list(%ptr %r137, %ptr %r138)
	ret %ptr %r139
	store %ptr %r139, %ptr* %t10
	br label %L176
L175:
	%r141 = load %ptr, %ptr* %t2
	%r142 = inttoptr %word 41 to %ptr
	%r146 = ptrtoint %ptr %r142 to %word
	%r145 = ptrtoint %ptr %r141 to %word
	%r144 = icmp eq %word %r146, %r145
	%r143 = inttoptr i1 %r144 to %ptr
	%r148 = ptrtoint %ptr %r143 to %word
	%r147 = icmp ne %word %r148, 0
	br i1 %r147, label %L177, label %L178
L177:
	%r149 = load %ptr, %ptr* %t2
	%r150 = load %ptr, %ptr* %t1
	%ffi-cast151 = ptrtoint %ptr %r149 to i32
	%r152 = call i32 @ungetc(i32 %ffi-cast151, %ptr %r150)
	%r153 = sext i32 %r152 to %word
	%r154 = inttoptr %word %r153 to %ptr
	%r155 = load %ptr, %ptr* @"k/+end+"
	ret %ptr %r155
	store %ptr %r155, %ptr* %t11
	br label %L179
L178:
	%r157 = load %ptr, %ptr* %t2
	%r158 = inttoptr %word 91 to %ptr
	%r162 = ptrtoint %ptr %r158 to %word
	%r161 = ptrtoint %ptr %r157 to %word
	%r160 = icmp eq %word %r162, %r161
	%r159 = inttoptr i1 %r160 to %ptr
	%r164 = ptrtoint %ptr %r159 to %word
	%r163 = icmp ne %word %r164, 0
	br i1 %r163, label %L180, label %L181
L180:
	%r165 = inttoptr %word 93 to %ptr
	%r166 = load %ptr, %ptr* %t1
	%r167 = call %ptr @read_list(%ptr %r165, %ptr %r166)
	ret %ptr %r167
	store %ptr %r167, %ptr* %t12
	br label %L182
L181:
	%r169 = load %ptr, %ptr* %t2
	%r170 = inttoptr %word 93 to %ptr
	%r174 = ptrtoint %ptr %r170 to %word
	%r173 = ptrtoint %ptr %r169 to %word
	%r172 = icmp eq %word %r174, %r173
	%r171 = inttoptr i1 %r172 to %ptr
	%r176 = ptrtoint %ptr %r171 to %word
	%r175 = icmp ne %word %r176, 0
	br i1 %r175, label %L183, label %L184
L183:
	%r177 = load %ptr, %ptr* %t2
	%r178 = load %ptr, %ptr* %t1
	%ffi-cast179 = ptrtoint %ptr %r177 to i32
	%r180 = call i32 @ungetc(i32 %ffi-cast179, %ptr %r178)
	%r181 = sext i32 %r180 to %word
	%r182 = inttoptr %word %r181 to %ptr
	%r183 = load %ptr, %ptr* @"k/+end+"
	ret %ptr %r183
	store %ptr %r183, %ptr* %t13
	br label %L185
L184:
	%r185 = load %ptr, %ptr* %t2
	%r186 = inttoptr %word 123 to %ptr
	%r190 = ptrtoint %ptr %r186 to %word
	%r189 = ptrtoint %ptr %r185 to %word
	%r188 = icmp eq %word %r190, %r189
	%r187 = inttoptr i1 %r188 to %ptr
	%r192 = ptrtoint %ptr %r187 to %word
	%r191 = icmp ne %word %r192, 0
	br i1 %r191, label %L186, label %L187
L186:
	%r193 = inttoptr %word 125 to %ptr
	%r194 = load %ptr, %ptr* %t1
	%r195 = call %ptr @read_list(%ptr %r193, %ptr %r194)
	ret %ptr %r195
	store %ptr %r195, %ptr* %t14
	br label %L188
L187:
	%r197 = load %ptr, %ptr* %t2
	%r198 = inttoptr %word 125 to %ptr
	%r202 = ptrtoint %ptr %r198 to %word
	%r201 = ptrtoint %ptr %r197 to %word
	%r200 = icmp eq %word %r202, %r201
	%r199 = inttoptr i1 %r200 to %ptr
	%r204 = ptrtoint %ptr %r199 to %word
	%r203 = icmp ne %word %r204, 0
	br i1 %r203, label %L189, label %L190
L189:
	%r205 = load %ptr, %ptr* %t2
	%r206 = load %ptr, %ptr* %t1
	%ffi-cast207 = ptrtoint %ptr %r205 to i32
	%r208 = call i32 @ungetc(i32 %ffi-cast207, %ptr %r206)
	%r209 = sext i32 %r208 to %word
	%r210 = inttoptr %word %r209 to %ptr
	%r211 = load %ptr, %ptr* @"k/+end+"
	ret %ptr %r211
	store %ptr %r211, %ptr* %t15
	br label %L191
L190:
	%r213 = load %ptr, %ptr* %t2
	%r214 = call %ptr @is_digit10(%ptr %r213)
	%r216 = ptrtoint %ptr %r214 to %word
	%r215 = icmp ne %word %r216, 0
	br i1 %r215, label %L192, label %L193
L192:
	%r217 = load %ptr, %ptr* %t2
	%r218 = load %ptr, %ptr* %t1
	%r219 = call %ptr @read_number(%ptr %r217, %ptr %r218)
	ret %ptr %r219
	store %ptr %r219, %ptr* %t16
	br label %L194
L193:
	%r221 = load %ptr, %ptr* %t2
	%r222 = inttoptr %word 59 to %ptr
	%r226 = ptrtoint %ptr %r222 to %word
	%r225 = ptrtoint %ptr %r221 to %word
	%r224 = icmp eq %word %r226, %r225
	%r223 = inttoptr i1 %r224 to %ptr
	%r228 = ptrtoint %ptr %r223 to %word
	%r227 = icmp ne %word %r228, 0
	br i1 %r227, label %L195, label %L196
L195:
	br label %L199
L198:
	br label %L199
L199:
	%r229 = inttoptr %word 1 to %ptr
	store %ptr %r229, %ptr* %t18
	%r230 = load %ptr, %ptr* %t1
	%r231 = call i32 @fgetc(%ptr %r230)
	%r232 = sext i32 %r231 to %word
	%r233 = inttoptr %word %r232 to %ptr
	store %ptr %r233, %ptr* %t2
	%r234 = inttoptr %word 10 to %ptr
	%r238 = ptrtoint %ptr %r234 to %word
	%r237 = ptrtoint %ptr %r233 to %word
	%r236 = icmp ne %word %r238, %r237
	%r235 = inttoptr i1 %r236 to %ptr
	store %ptr %r235, %ptr* %t18
	%r239 = inttoptr %word 0 to %ptr
	%r243 = ptrtoint %ptr %r239 to %word
	%r242 = ptrtoint %ptr %r235 to %word
	%r241 = icmp eq %word %r243, %r242
	%r240 = inttoptr i1 %r241 to %ptr
	%r245 = ptrtoint %ptr %r240 to %word
	%r244 = icmp ne %word %r245, 0
	br i1 %r244, label %L201, label %L202
L202:
	%r246 = load %ptr, %ptr* %t2
	%r247 = inttoptr %word 13 to %ptr
	%r251 = ptrtoint %ptr %r247 to %word
	%r250 = ptrtoint %ptr %r246 to %word
	%r249 = icmp ne %word %r251, %r250
	%r248 = inttoptr i1 %r249 to %ptr
	store %ptr %r248, %ptr* %t18
	%r252 = inttoptr %word 0 to %ptr
	%r256 = ptrtoint %ptr %r252 to %word
	%r255 = ptrtoint %ptr %r248 to %word
	%r254 = icmp eq %word %r256, %r255
	%r253 = inttoptr i1 %r254 to %ptr
	%r258 = ptrtoint %ptr %r253 to %word
	%r257 = icmp ne %word %r258, 0
	br i1 %r257, label %L201, label %L203
L203:
	%r259 = load %ptr, %ptr* %t2
	%r260 = inttoptr %word -1 to %ptr
	%r264 = ptrtoint %ptr %r260 to %word
	%r263 = ptrtoint %ptr %r259 to %word
	%r262 = icmp ne %word %r264, %r263
	%r261 = inttoptr i1 %r262 to %ptr
	store %ptr %r261, %ptr* %t18
	%r265 = inttoptr %word 0 to %ptr
	%r269 = ptrtoint %ptr %r265 to %word
	%r268 = ptrtoint %ptr %r261 to %word
	%r267 = icmp eq %word %r269, %r268
	%r266 = inttoptr i1 %r267 to %ptr
	%r271 = ptrtoint %ptr %r266 to %word
	%r270 = icmp ne %word %r271, 0
	br i1 %r270, label %L201, label %L204
L204:
	br label %L201
L201:
	%r272 = load %ptr, %ptr* %t18
	%r274 = ptrtoint %ptr %r272 to %word
	%r273 = icmp ne %word %r274, 0
	br i1 %r273, label %L198, label %L200
L200:
	store %ptr %r272, %ptr* %t17
	br label %L197
L196:
	%r275 = load %ptr, %ptr* %t2
	%r276 = inttoptr %word 34 to %ptr
	%r280 = ptrtoint %ptr %r276 to %word
	%r279 = ptrtoint %ptr %r275 to %word
	%r278 = icmp eq %word %r280, %r279
	%r277 = inttoptr i1 %r278 to %ptr
	%r282 = ptrtoint %ptr %r277 to %word
	%r281 = icmp ne %word %r282, 0
	br i1 %r281, label %L205, label %L206
L205:
	%r283 = load %ptr, %ptr* %t2
	%r284 = load %ptr, %ptr* %t1
	%r285 = call %ptr @read_string(%ptr %r283, %ptr %r284)
	ret %ptr %r285
	store %ptr %r285, %ptr* %t18
	br label %L207
L206:
	%r287 = inttoptr %word -1 to %ptr
	%r288 = load %ptr, %ptr* %t2
	%r292 = ptrtoint %ptr %r288 to %word
	%r291 = ptrtoint %ptr %r287 to %word
	%r290 = icmp eq %word %r292, %r291
	%r289 = inttoptr i1 %r290 to %ptr
	%r294 = ptrtoint %ptr %r289 to %word
	%r293 = icmp ne %word %r294, 0
	br i1 %r293, label %L208, label %L209
L208:
	%r295 = load %ptr, %ptr* %t1
	%r296 = call i32 @feof(%ptr %r295)
	%r297 = sext i32 %r296 to %word
	%r298 = inttoptr %word %r297 to %ptr
	%r300 = ptrtoint %ptr %r298 to %word
	%r299 = icmp ne %word %r300, 0
	br i1 %r299, label %L211, label %L212
L211:
	%r301 = load %ptr, %ptr* @"k/+end+"
	ret %ptr %r301
	store %ptr %r301, %ptr* %t20
	br label %L213
L212:
	%r303 = getelementptr [37 x i8], [37 x i8]* @str214, %word 0, %word 0
	%r305 = call %ptr @fatal(%ptr %r303)
	store %ptr %r305, %ptr* %t20
	br label %L213
L213:
	%r306 = load %ptr, %ptr* %t20
	store %ptr %r306, %ptr* %t19
	br label %L210
L209:
	%r307 = getelementptr [22 x i8], [22 x i8]* @str215, %word 0, %word 0
	%r309 = load %ptr, %ptr* %t2
	%r310 = call %ptr @fatal1(%ptr %r307, %ptr %r309)
	store %ptr %r310, %ptr* %t19
	br label %L210
L210:
	%r311 = load %ptr, %ptr* %t19
	store %ptr %r311, %ptr* %t18
	br label %L207
L207:
	%r312 = load %ptr, %ptr* %t18
	store %ptr %r312, %ptr* %t17
	br label %L197
L197:
	%r313 = load %ptr, %ptr* %t17
	store %ptr %r313, %ptr* %t16
	br label %L194
L194:
	%r314 = load %ptr, %ptr* %t16
	store %ptr %r314, %ptr* %t15
	br label %L191
L191:
	%r315 = load %ptr, %ptr* %t15
	store %ptr %r315, %ptr* %t14
	br label %L188
L188:
	%r316 = load %ptr, %ptr* %t14
	store %ptr %r316, %ptr* %t13
	br label %L185
L185:
	%r317 = load %ptr, %ptr* %t13
	store %ptr %r317, %ptr* %t12
	br label %L182
L182:
	%r318 = load %ptr, %ptr* %t12
	store %ptr %r318, %ptr* %t11
	br label %L179
L179:
	%r319 = load %ptr, %ptr* %t11
	store %ptr %r319, %ptr* %t10
	br label %L176
L176:
	%r320 = load %ptr, %ptr* %t10
	store %ptr %r320, %ptr* %t9
	br label %L173
L173:
	%r321 = load %ptr, %ptr* %t9
	store %ptr %r321, %ptr* %t8
	br label %L167
L167:
	%r322 = load %ptr, %ptr* %t8
	store %ptr %r322, %ptr* %t7
	br label %L164
L164:
	%r323 = load %ptr, %ptr* %t7
	store %ptr %r323, %ptr* %t6
	br label %L161
L161:
	%r324 = load %ptr, %ptr* %t6
	store %ptr %r324, %ptr* %t5
	br label %L155
L155:
	%r325 = load %ptr, %ptr* %t5
	store %ptr %r325, %ptr* %t4
	br label %L152
L152:
	%r326 = load %ptr, %ptr* %t4
	store %ptr %r326, %ptr* %t3
	br label %L149
L149:
	%r327 = load %ptr, %ptr* %t3
	br label %L145
L145:
	%r328 = inttoptr %word 1 to %ptr
	%r330 = ptrtoint %ptr %r328 to %word
	%r329 = icmp ne %word %r330, 0
	br i1 %r329, label %L144, label %L146
L146:
	ret %ptr %r328
}
define %ptr @"k/encode/list"(%ptr %list, %ptr %env) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	store %ptr %list, %ptr* %t1
	store %ptr %env, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"get/type"(%ptr %r1)
	%r3 = inttoptr %word 19 to %ptr
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = icmp eq %word %r7, %r6
	%r4 = inttoptr i1 %r5 to %ptr
	%r9 = ptrtoint %ptr %r4 to %word
	%r8 = icmp ne %word %r9, 0
	br i1 %r8, label %L216, label %L217
L216:
	%r10 = inttoptr %word 0 to %ptr
	%r11 = load %ptr, %ptr* %t1
	%r15 = bitcast %ptr %r11 to [0 x %ptr]*
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = getelementptr [0 x %ptr], [0 x %ptr]* %r15, %word 0, %word %r14
	%r12 = load %ptr, %ptr* %r13
	%r16 = load %ptr, %ptr* %t2
	%r17 = call %ptr @"k/encode"(%ptr %r12, %ptr %r16)
	store %ptr %r17, %ptr* %t4
	%r19 = getelementptr %ptr, %ptr* %t4, %word 0
	%r18 = bitcast %ptr* %r19 to %ptr
	%r20 = call %ptr @"gc/push-root"(%ptr %r18)
	%r21 = inttoptr %word 1 to %ptr
	%r22 = load %ptr, %ptr* %t1
	%r26 = bitcast %ptr %r22 to [0 x %ptr]*
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = getelementptr [0 x %ptr], [0 x %ptr]* %r26, %word 0, %word %r25
	%r23 = load %ptr, %ptr* %r24
	%r27 = load %ptr, %ptr* %t2
	%r28 = call %ptr @"k/encode/list"(%ptr %r23, %ptr %r27)
	store %ptr %r28, %ptr* %t5
	%r30 = getelementptr %ptr, %ptr* %t5, %word 0
	%r29 = bitcast %ptr* %r30 to %ptr
	%r31 = call %ptr @"gc/push-root"(%ptr %r29)
	%r32 = load %ptr, %ptr* %t4
	%r33 = load %ptr, %ptr* %t5
	%r34 = call %ptr @"new-<pair>"(%ptr %r32, %ptr %r33)
	store %ptr %r34, %ptr* %t6
	%r36 = getelementptr %ptr, %ptr* %t5, %word 0
	%r35 = bitcast %ptr* %r36 to %ptr
	%r37 = call %ptr @"gc/pop-root"(%ptr %r35)
	%r38 = load %ptr, %ptr* %t6
	store %ptr %r38, %ptr* %t5
	%r40 = getelementptr %ptr, %ptr* %t4, %word 0
	%r39 = bitcast %ptr* %r40 to %ptr
	%r41 = call %ptr @"gc/pop-root"(%ptr %r39)
	%r42 = load %ptr, %ptr* %t5
	store %ptr %r42, %ptr* %t3
	br label %L218
L217:
	%r43 = load %ptr, %ptr* %t1
	%r44 = load %ptr, %ptr* %t2
	%r45 = call %ptr @"k/encode"(%ptr %r43, %ptr %r44)
	store %ptr %r45, %ptr* %t3
	br label %L218
L218:
	%r46 = load %ptr, %ptr* %t3
	ret %ptr %r46
}
@str222 = private unnamed_addr constant [53 x i8] c"infinite recursion guard triggered at call depth %ld\00"
define %ptr @"k/encode"(%ptr %exp, %ptr %env) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %exp, %ptr* %t1
	store %ptr %env, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = load %ptr, %ptr* @"symbol/encode"
	%r3 = inttoptr %word 0 to %ptr
	%r4 = load %ptr, %ptr* %t1
	%r5 = call %ptr @"%new-call-frame"(%ptr %r2, %ptr %r3, %ptr %r4)
	store %ptr %r5, %ptr* %t3
	%r6 = inttoptr %word 10000 to %ptr
	%r7 = inttoptr %word 1 to %ptr
	%r8 = load %ptr, %ptr* @"*call-stack-index*"
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = ptrtoint %ptr %r7 to %word
	%r10 = add %word %r12, %r11
	%r9 = inttoptr %word %r10 to %ptr
	store %ptr %r9, %ptr* @"*call-stack-index*"
	%r16 = ptrtoint %ptr %r9 to %word
	%r15 = ptrtoint %ptr %r6 to %word
	%r14 = icmp sgt %word %r16, %r15
	%r13 = inttoptr i1 %r14 to %ptr
	%r18 = ptrtoint %ptr %r13 to %word
	%r17 = icmp ne %word %r18, 0
	br i1 %r17, label %L219, label %L220
L219:
	%r19 = getelementptr [53 x i8], [53 x i8]* @str222, %word 0, %word 0
	%r21 = load %ptr, %ptr* @"*call-stack-index*"
	%r22 = call %ptr @fatal1(%ptr %r19, %ptr %r21)
	store %ptr %r22, %ptr* %t4
	br label %L221
L220:
	%r23 = inttoptr %word 0 to %ptr
	store %ptr %r23, %ptr* %t4
	br label %L221
L221:
	%r24 = load %ptr, %ptr* %t4
	%r25 = inttoptr %word 0 to %ptr
	%r26 = load %ptr, %ptr* %t1
	%r27 = call %ptr @"get/type"(%ptr %r26)
	%r28 = inttoptr %word 19 to %ptr
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = ptrtoint %ptr %r27 to %word
	%r30 = icmp eq %word %r32, %r31
	%r29 = inttoptr i1 %r30 to %ptr
	%r34 = ptrtoint %ptr %r29 to %word
	%r33 = icmp ne %word %r34, 0
	br i1 %r33, label %L223, label %L224
L223:
	%r35 = load %ptr, %ptr* %t1
	%r36 = load %ptr, %ptr* %t2
	%r37 = call %ptr @"k/encode/pair"(%ptr %r35, %ptr %r36)
	store %ptr %r37, %ptr* %t4
	br label %L225
L224:
	%r38 = load %ptr, %ptr* %t1
	%r39 = call %ptr @"get/type"(%ptr %r38)
	%r40 = inttoptr %word 18 to %ptr
	%r44 = ptrtoint %ptr %r40 to %word
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = icmp eq %word %r44, %r43
	%r41 = inttoptr i1 %r42 to %ptr
	%r46 = ptrtoint %ptr %r41 to %word
	%r45 = icmp ne %word %r46, 0
	br i1 %r45, label %L226, label %L227
L226:
	%r47 = load %ptr, %ptr* %t1
	%r48 = load %ptr, %ptr* %t2
	%r49 = call %ptr @"k/encode/symbol"(%ptr %r47, %ptr %r48)
	store %ptr %r49, %ptr* %t5
	br label %L228
L227:
	%r50 = load %ptr, %ptr* %t1
	%r51 = load %ptr, %ptr* %t2
	%r52 = call %ptr @"k/encode/other"(%ptr %r50, %ptr %r51)
	store %ptr %r52, %ptr* %t5
	br label %L228
L228:
	%r53 = load %ptr, %ptr* %t5
	store %ptr %r53, %ptr* %t4
	br label %L225
L225:
	%r54 = load %ptr, %ptr* %t4
	store %ptr %r54, %ptr* %t3
	%r55 = inttoptr %word 1 to %ptr
	%r56 = load %ptr, %ptr* @"*call-stack-index*"
	%r60 = ptrtoint %ptr %r56 to %word
	%r59 = ptrtoint %ptr %r55 to %word
	%r58 = sub %word %r60, %r59
	%r57 = inttoptr %word %r58 to %ptr
	store %ptr %r57, %ptr* @"*call-stack-index*"
	%r61 = load %ptr, %ptr* @"*call-stack-index*"
	%r62 = inttoptr %word 0 to %ptr
	%r66 = ptrtoint %ptr %r62 to %word
	%r65 = ptrtoint %ptr %r61 to %word
	%r64 = icmp sle %word %r66, %r65
	%r63 = inttoptr i1 %r64 to %ptr
	%r68 = ptrtoint %ptr %r63 to %word
	%r67 = icmp ne %word %r68, 0
	br i1 %r67, label %L229, label %L230
L229:
	%r69 = load %ptr, %ptr* @"*call-stack*"
	%r70 = load %ptr, %ptr* @"*call-stack-index*"
	%r71 = call %ptr @"k/array-at"(%ptr %r69, %ptr %r70)
	store %ptr %r71, %ptr* %t5
	%r72 = inttoptr %word 0 to %ptr
	%r73 = inttoptr %word 0 to %ptr
	%r74 = load %ptr, %ptr* %t5
	%r78 = bitcast %ptr %r74 to [0 x %ptr]*
	%r77 = ptrtoint %ptr %r73 to %word
	%r76 = getelementptr [0 x %ptr], [0 x %ptr]* %r78, %word 0, %word %r77
	store %ptr %r72, %ptr* %r76
	%r75 = bitcast %ptr %r72 to %ptr
	%r79 = inttoptr %word 0 to %ptr
	%r80 = inttoptr %word 1 to %ptr
	%r81 = load %ptr, %ptr* %t5
	%r85 = bitcast %ptr %r81 to [0 x %ptr]*
	%r84 = ptrtoint %ptr %r80 to %word
	%r83 = getelementptr [0 x %ptr], [0 x %ptr]* %r85, %word 0, %word %r84
	store %ptr %r79, %ptr* %r83
	%r82 = bitcast %ptr %r79 to %ptr
	%r86 = inttoptr %word 0 to %ptr
	%r87 = inttoptr %word 2 to %ptr
	%r88 = load %ptr, %ptr* %t5
	%r92 = bitcast %ptr %r88 to [0 x %ptr]*
	%r91 = ptrtoint %ptr %r87 to %word
	%r90 = getelementptr [0 x %ptr], [0 x %ptr]* %r92, %word 0, %word %r91
	store %ptr %r86, %ptr* %r90
	%r89 = bitcast %ptr %r86 to %ptr
	store %ptr %r89, %ptr* %t4
	br label %L231
L230:
	%r93 = inttoptr %word 0 to %ptr
	store %ptr %r93, %ptr* %t4
	br label %L231
L231:
	%r94 = load %ptr, %ptr* %t4
	%r95 = inttoptr %word 0 to %ptr
	%r96 = load %ptr, %ptr* %t3
	ret %ptr %r96
}
define %ptr @"k/expand/list"(%ptr %list, %ptr %env) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	store %ptr %list, %ptr* %t1
	store %ptr %env, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"get/type"(%ptr %r1)
	%r3 = inttoptr %word 19 to %ptr
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = icmp eq %word %r7, %r6
	%r4 = inttoptr i1 %r5 to %ptr
	%r9 = ptrtoint %ptr %r4 to %word
	%r8 = icmp ne %word %r9, 0
	br i1 %r8, label %L232, label %L233
L232:
	%r10 = inttoptr %word 0 to %ptr
	%r11 = load %ptr, %ptr* %t1
	%r15 = bitcast %ptr %r11 to [0 x %ptr]*
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = getelementptr [0 x %ptr], [0 x %ptr]* %r15, %word 0, %word %r14
	%r12 = load %ptr, %ptr* %r13
	%r16 = load %ptr, %ptr* %t2
	%r17 = call %ptr @"k/expand"(%ptr %r12, %ptr %r16)
	store %ptr %r17, %ptr* %t4
	%r19 = getelementptr %ptr, %ptr* %t4, %word 0
	%r18 = bitcast %ptr* %r19 to %ptr
	%r20 = call %ptr @"gc/push-root"(%ptr %r18)
	%r21 = inttoptr %word 1 to %ptr
	%r22 = load %ptr, %ptr* %t1
	%r26 = bitcast %ptr %r22 to [0 x %ptr]*
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = getelementptr [0 x %ptr], [0 x %ptr]* %r26, %word 0, %word %r25
	%r23 = load %ptr, %ptr* %r24
	%r27 = load %ptr, %ptr* %t2
	%r28 = call %ptr @"k/expand/list"(%ptr %r23, %ptr %r27)
	store %ptr %r28, %ptr* %t5
	%r30 = getelementptr %ptr, %ptr* %t5, %word 0
	%r29 = bitcast %ptr* %r30 to %ptr
	%r31 = call %ptr @"gc/push-root"(%ptr %r29)
	%r32 = load %ptr, %ptr* %t4
	%r33 = load %ptr, %ptr* %t5
	%r34 = call %ptr @"new-<pair>"(%ptr %r32, %ptr %r33)
	store %ptr %r34, %ptr* %t6
	%r36 = getelementptr %ptr, %ptr* %t5, %word 0
	%r35 = bitcast %ptr* %r36 to %ptr
	%r37 = call %ptr @"gc/pop-root"(%ptr %r35)
	%r38 = load %ptr, %ptr* %t6
	store %ptr %r38, %ptr* %t5
	%r40 = getelementptr %ptr, %ptr* %t4, %word 0
	%r39 = bitcast %ptr* %r40 to %ptr
	%r41 = call %ptr @"gc/pop-root"(%ptr %r39)
	%r42 = load %ptr, %ptr* %t5
	store %ptr %r42, %ptr* %t3
	br label %L234
L233:
	%r43 = load %ptr, %ptr* %t1
	%r44 = load %ptr, %ptr* %t2
	%r45 = call %ptr @"k/expand"(%ptr %r43, %ptr %r44)
	store %ptr %r45, %ptr* %t3
	br label %L234
L234:
	%r46 = load %ptr, %ptr* %t3
	ret %ptr %r46
}
@str238 = private unnamed_addr constant [6 x i8] c"  E  \00"
@str239 = private unnamed_addr constant [2 x i8] c" \00"
@str261 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str262 = private unnamed_addr constant [55 x i8] c"encountered a <symbol> in eval. this shouldn't happen!\00"
@str263 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @"k/eval"(%ptr %exp, %ptr %ctx) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t9 = alloca %ptr
	store %ptr %exp, %ptr* %t1
	store %ptr %ctx, %ptr* %t2
	%r1 = load %ptr, %ptr* @"*verbosity*"
	%r2 = inttoptr %word 2 to %ptr
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = ptrtoint %ptr %r1 to %word
	%r4 = icmp sle %word %r6, %r5
	%r3 = inttoptr i1 %r4 to %ptr
	%r8 = ptrtoint %ptr %r3 to %word
	%r7 = icmp ne %word %r8, 0
	br i1 %r7, label %L235, label %L236
L235:
	%r9 = getelementptr [6 x i8], [6 x i8]* @str238, %word 0, %word 0
	%r11 = call i32 (%ptr, ...) @printf(%ptr %r9)
	%r12 = sext i32 %r11 to %word
	%r13 = inttoptr %word %r12 to %ptr
	%r14 = load %ptr, %ptr* %t1
	%r15 = call %ptr @"k/dump"(%ptr %r14)
	%r16 = getelementptr [2 x i8], [2 x i8]* @str239, %word 0, %word 0
	%r18 = call i32 (%ptr, ...) @printf(%ptr %r16)
	%r19 = sext i32 %r18 to %word
	%r20 = inttoptr %word %r19 to %ptr
	%r21 = load %ptr, %ptr* %t2
	%r22 = call %ptr @"k/dumpln"(%ptr %r21)
	%r23 = call %ptr @"libc/flush-streams"()
	store %ptr %r23, %ptr* %t3
	br label %L237
L236:
	%r24 = inttoptr %word 0 to %ptr
	store %ptr %r24, %ptr* %t3
	br label %L237
L237:
	%r25 = load %ptr, %ptr* %t3
	%r26 = load %ptr, %ptr* %t1
	%r27 = call %ptr @"get/type"(%ptr %r26)
	store %ptr %r27, %ptr* %t3
	%r28 = inttoptr %word 5 to %ptr
	%r29 = load %ptr, %ptr* %t3
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = icmp eq %word %r33, %r32
	%r30 = inttoptr i1 %r31 to %ptr
	%r35 = ptrtoint %ptr %r30 to %word
	%r34 = icmp ne %word %r35, 0
	br i1 %r34, label %L240, label %L241
L240:
	%r36 = load %ptr, %ptr* %t1
	store %ptr %r36, %ptr* %t4
	br label %L242
L241:
	%r37 = inttoptr %word 6 to %ptr
	%r38 = load %ptr, %ptr* %t3
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = icmp eq %word %r42, %r41
	%r39 = inttoptr i1 %r40 to %ptr
	%r44 = ptrtoint %ptr %r39 to %word
	%r43 = icmp ne %word %r44, 0
	br i1 %r43, label %L243, label %L244
L243:
	%r45 = load %ptr, %ptr* %t1
	store %ptr %r45, %ptr* %t5
	br label %L245
L244:
	%r46 = inttoptr %word 8 to %ptr
	%r47 = load %ptr, %ptr* %t3
	%r51 = ptrtoint %ptr %r47 to %word
	%r50 = ptrtoint %ptr %r46 to %word
	%r49 = icmp eq %word %r51, %r50
	%r48 = inttoptr i1 %r49 to %ptr
	%r53 = ptrtoint %ptr %r48 to %word
	%r52 = icmp ne %word %r53, 0
	br i1 %r52, label %L246, label %L247
L246:
	%r54 = load %ptr, %ptr* %t1
	store %ptr %r54, %ptr* %t6
	br label %L248
L247:
	%r55 = inttoptr %word 13 to %ptr
	%r56 = load %ptr, %ptr* %t3
	%r60 = ptrtoint %ptr %r56 to %word
	%r59 = ptrtoint %ptr %r55 to %word
	%r58 = icmp eq %word %r60, %r59
	%r57 = inttoptr i1 %r58 to %ptr
	%r62 = ptrtoint %ptr %r57 to %word
	%r61 = icmp ne %word %r62, 0
	br i1 %r61, label %L249, label %L250
L249:
	%r63 = load %ptr, %ptr* %t1
	%r64 = call %ptr @"global-variable?"(%ptr %r63)
	%r66 = ptrtoint %ptr %r64 to %word
	%r65 = icmp ne %word %r66, 0
	br i1 %r65, label %L252, label %L253
L252:
	%r67 = inttoptr %word 1 to %ptr
	%r68 = load %ptr, %ptr* %t1
	%r72 = bitcast %ptr %r68 to [0 x %ptr]*
	%r71 = ptrtoint %ptr %r67 to %word
	%r70 = getelementptr [0 x %ptr], [0 x %ptr]* %r72, %word 0, %word %r71
	%r69 = load %ptr, %ptr* %r70
	store %ptr %r69, %ptr* %t8
	br label %L254
L253:
	%r73 = inttoptr %word 1 to %ptr
	%r74 = inttoptr %word 1 to %ptr
	%r75 = inttoptr %word 2 to %ptr
	%r76 = load %ptr, %ptr* %t1
	%r80 = bitcast %ptr %r76 to [0 x %ptr]*
	%r79 = ptrtoint %ptr %r75 to %word
	%r78 = getelementptr [0 x %ptr], [0 x %ptr]* %r80, %word 0, %word %r79
	%r77 = load %ptr, %ptr* %r78
	%r84 = bitcast %ptr %r77 to [0 x %ptr]*
	%r83 = ptrtoint %ptr %r74 to %word
	%r82 = getelementptr [0 x %ptr], [0 x %ptr]* %r84, %word 0, %word %r83
	%r81 = load %ptr, %ptr* %r82
	%r88 = ptrtoint %ptr %r81 to %word
	%r87 = ptrtoint %ptr %r73 to %word
	%r86 = ashr %word %r88, %r87
	%r85 = inttoptr %word %r86 to %ptr
	%r89 = inttoptr %word 1 to %ptr
	%r90 = inttoptr %word 1 to %ptr
	%r91 = inttoptr %word 1 to %ptr
	%r92 = load %ptr, %ptr* %t2
	%r96 = bitcast %ptr %r92 to [0 x %ptr]*
	%r95 = ptrtoint %ptr %r91 to %word
	%r94 = getelementptr [0 x %ptr], [0 x %ptr]* %r96, %word 0, %word %r95
	%r93 = load %ptr, %ptr* %r94
	%r100 = bitcast %ptr %r93 to [0 x %ptr]*
	%r99 = ptrtoint %ptr %r90 to %word
	%r98 = getelementptr [0 x %ptr], [0 x %ptr]* %r100, %word 0, %word %r99
	%r97 = load %ptr, %ptr* %r98
	%r104 = ptrtoint %ptr %r97 to %word
	%r103 = ptrtoint %ptr %r89 to %word
	%r102 = ashr %word %r104, %r103
	%r101 = inttoptr %word %r102 to %ptr
	%r108 = ptrtoint %ptr %r101 to %word
	%r107 = ptrtoint %ptr %r85 to %word
	%r106 = sub %word %r108, %r107
	%r105 = inttoptr %word %r106 to %ptr
	store %ptr %r105, %ptr* %t9
	br label %L256
L255:
	%r109 = inttoptr %word 0 to %ptr
	%r110 = load %ptr, %ptr* %t2
	%r114 = bitcast %ptr %r110 to [0 x %ptr]*
	%r113 = ptrtoint %ptr %r109 to %word
	%r112 = getelementptr [0 x %ptr], [0 x %ptr]* %r114, %word 0, %word %r113
	%r111 = load %ptr, %ptr* %r112
	store %ptr %r111, %ptr* %t2
	%r115 = inttoptr %word 1 to %ptr
	%r116 = load %ptr, %ptr* %t9
	%r120 = ptrtoint %ptr %r116 to %word
	%r119 = ptrtoint %ptr %r115 to %word
	%r118 = sub %word %r120, %r119
	%r117 = inttoptr %word %r118 to %ptr
	store %ptr %r117, %ptr* %t9
	br label %L256
L256:
	%r121 = load %ptr, %ptr* %t9
	%r122 = inttoptr %word 0 to %ptr
	%r126 = ptrtoint %ptr %r122 to %word
	%r125 = ptrtoint %ptr %r121 to %word
	%r124 = icmp slt %word %r126, %r125
	%r123 = inttoptr i1 %r124 to %ptr
	%r128 = ptrtoint %ptr %r123 to %word
	%r127 = icmp ne %word %r128, 0
	br i1 %r127, label %L255, label %L257
L257:
	%r129 = inttoptr %word 2 to %ptr
	%r130 = load %ptr, %ptr* %t2
	%r134 = bitcast %ptr %r130 to [0 x %ptr]*
	%r133 = ptrtoint %ptr %r129 to %word
	%r132 = getelementptr [0 x %ptr], [0 x %ptr]* %r134, %word 0, %word %r133
	%r131 = load %ptr, %ptr* %r132
	%r135 = inttoptr %word 1 to %ptr
	%r136 = inttoptr %word 3 to %ptr
	%r137 = load %ptr, %ptr* %t1
	%r141 = bitcast %ptr %r137 to [0 x %ptr]*
	%r140 = ptrtoint %ptr %r136 to %word
	%r139 = getelementptr [0 x %ptr], [0 x %ptr]* %r141, %word 0, %word %r140
	%r138 = load %ptr, %ptr* %r139
	%r145 = ptrtoint %ptr %r138 to %word
	%r144 = ptrtoint %ptr %r135 to %word
	%r143 = ashr %word %r145, %r144
	%r142 = inttoptr %word %r143 to %ptr
	%r146 = call %ptr @"k/array-at"(%ptr %r131, %ptr %r142)
	store %ptr %r146, %ptr* %t8
	br label %L254
L254:
	%r147 = load %ptr, %ptr* %t8
	store %ptr %r147, %ptr* %t7
	br label %L251
L250:
	%r148 = inttoptr %word 18 to %ptr
	%r149 = load %ptr, %ptr* %t3
	%r153 = ptrtoint %ptr %r149 to %word
	%r152 = ptrtoint %ptr %r148 to %word
	%r151 = icmp eq %word %r153, %r152
	%r150 = inttoptr i1 %r151 to %ptr
	%r155 = ptrtoint %ptr %r150 to %word
	%r154 = icmp ne %word %r155, 0
	br i1 %r154, label %L258, label %L259
L258:
	%r156 = getelementptr [9 x i8], [9 x i8]* @str261, %word 0, %word 0
	%r158 = call i32 (%ptr, ...) @printf(%ptr %r156)
	%r159 = sext i32 %r158 to %word
	%r160 = inttoptr %word %r159 to %ptr
	%r161 = getelementptr [55 x i8], [55 x i8]* @str262, %word 0, %word 0
	%r163 = call i32 (%ptr, ...) @printf(%ptr %r161)
	%r164 = sext i32 %r163 to %word
	%r165 = inttoptr %word %r164 to %ptr
	%r166 = getelementptr [2 x i8], [2 x i8]* @str263, %word 0, %word 0
	%r168 = call i32 (%ptr, ...) @printf(%ptr %r166)
	%r169 = sext i32 %r168 to %word
	%r170 = inttoptr %word %r169 to %ptr
	%r171 = call %ptr @die()
	store %ptr %r171, %ptr* %t8
	br label %L260
L259:
	%r172 = load %ptr, %ptr* %t3
	%r173 = load %ptr, %ptr* %t1
	%r174 = load %ptr, %ptr* %t2
	%r175 = call %ptr @"k/eval/with-backtrace"(%ptr %r172, %ptr %r173, %ptr %r174)
	store %ptr %r175, %ptr* %t8
	br label %L260
L260:
	%r176 = load %ptr, %ptr* %t8
	store %ptr %r176, %ptr* %t7
	br label %L251
L251:
	%r177 = load %ptr, %ptr* %t7
	store %ptr %r177, %ptr* %t6
	br label %L248
L248:
	%r178 = load %ptr, %ptr* %t6
	store %ptr %r178, %ptr* %t5
	br label %L245
L245:
	%r179 = load %ptr, %ptr* %t5
	store %ptr %r179, %ptr* %t4
	br label %L242
L242:
	%r180 = load %ptr, %ptr* %t4
	ret %ptr %r180
}
@"libc/stdin" = global %ptr inttoptr (%word 0 to %ptr)
@"libc/stdout" = global %ptr inttoptr (%word 0 to %ptr)
@"libc/stderr" = global %ptr inttoptr (%word 0 to %ptr)
declare void @abort()
declare void @exit(i32)
declare %ptr @malloc(i32)
declare void @free(%ptr)
declare %ptr @realloc(%ptr, i32)
declare %ptr @memset(%ptr, i32, i32)
declare %ptr @memcpy(%ptr, %ptr, i32)
declare %ptr @memmove(%ptr, %ptr, i32)
declare i32 @printf(%ptr, ...)
declare i32 @fprintf(%ptr, %ptr, ...)
declare i32 @sprintf(%ptr, %ptr, ...)
declare i32 @snprintf(%ptr, i32, %ptr, ...)
declare i32 @puts(%ptr)
declare i32 @fputc(%ptr, %ptr)
declare i32 @fgetc(%ptr)
declare i32 @ungetc(i32, %ptr)
declare %ptr @fopen(%ptr, %ptr)
declare %ptr @fdopen(i32, %ptr)
declare i32 @fclose(%ptr)
declare i32 @fflush(%ptr)
declare i32 @fscanf(%ptr, %ptr, ...)
declare i32 @feof(%ptr)
declare void @setbuf(%ptr, %ptr)
declare i32 @strlen(%ptr)
declare %ptr @strcpy(%ptr, %ptr)
declare %ptr @strncpy(%ptr, %ptr, i32)
declare i32 @strcmp(%ptr, %ptr)
declare i32 @strncmp(%ptr, %ptr, i32)
declare %ptr @strdup(%ptr)
declare i64 @strtoul(%ptr, %ptr, i32)
declare i64 @strtol(%ptr, %ptr, i32)
define %ptr @"libc/flush-streams"() {
	%r1 = load %ptr, %ptr* @"libc/stdout"
	%r2 = call i32 @fflush(%ptr %r1)
	%r3 = sext i32 %r2 to %word
	%r4 = inttoptr %word %r3 to %ptr
	%r5 = load %ptr, %ptr* @"libc/stderr"
	%r6 = call i32 @fflush(%ptr %r5)
	%r7 = sext i32 %r6 to %word
	%r8 = inttoptr %word %r7 to %ptr
	ret %ptr %r8
}
define %ptr @max(%ptr %a, %ptr %b) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %a, %ptr* %t1
	store %ptr %b, %ptr* %t2
	%r1 = load %ptr, %ptr* %t2
	%r2 = load %ptr, %ptr* %t1
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = ptrtoint %ptr %r1 to %word
	%r4 = icmp sgt %word %r6, %r5
	%r3 = inttoptr i1 %r4 to %ptr
	%r8 = ptrtoint %ptr %r3 to %word
	%r7 = icmp ne %word %r8, 0
	br i1 %r7, label %L264, label %L265
L264:
	%r9 = load %ptr, %ptr* %t1
	store %ptr %r9, %ptr* %t3
	br label %L266
L265:
	%r10 = load %ptr, %ptr* %t2
	store %ptr %r10, %ptr* %t3
	br label %L266
L266:
	%r11 = load %ptr, %ptr* %t3
	ret %ptr %r11
}
@"k/+end+" = global %ptr inttoptr (%word 0 to %ptr)
@"*call-stack-index*" = global %ptr inttoptr (%word 0 to %ptr)
@"*call-stack*" = global %ptr inttoptr (%word 0 to %ptr)
@"*verbosity*" = global %ptr inttoptr (%word 0 to %ptr)
@"*optimised*" = global %ptr inttoptr (%word 0 to %ptr)
@"*module*" = global %ptr inttoptr (%word 0 to %ptr)
@"*symbols*" = global %ptr inttoptr (%word 0 to %ptr)
@"var/*expanders*" = global %ptr inttoptr (%word 0 to %ptr)
@"var/*encoders*" = global %ptr inttoptr (%word 0 to %ptr)
@"var/*evaluators*" = global %ptr inttoptr (%word 0 to %ptr)
@"var/*applicators*" = global %ptr inttoptr (%word 0 to %ptr)
@"var/*input*" = global %ptr inttoptr (%word 0 to %ptr)
@"symbol/true" = global %ptr inttoptr (%word 0 to %ptr)
@"symbol/dot" = global %ptr inttoptr (%word 0 to %ptr)
@"symbol/define" = global %ptr inttoptr (%word 0 to %ptr)
@"symbol/set" = global %ptr inttoptr (%word 0 to %ptr)
@"symbol/quote" = global %ptr inttoptr (%word 0 to %ptr)
@"symbol/quasiquote" = global %ptr inttoptr (%word 0 to %ptr)
@"symbol/unquote" = global %ptr inttoptr (%word 0 to %ptr)
@"symbol/unquote_splicing" = global %ptr inttoptr (%word 0 to %ptr)
@"symbol/expand" = global %ptr inttoptr (%word 0 to %ptr)
@"symbol/encode" = global %ptr inttoptr (%word 0 to %ptr)
@"symbol/apply" = global %ptr inttoptr (%word 0 to %ptr)
@"fixed-subr/quote" = global %ptr inttoptr (%word 0 to %ptr)
@"fixed-subr/lambda" = global %ptr inttoptr (%word 0 to %ptr)
@"fixed-subr/let" = global %ptr inttoptr (%word 0 to %ptr)
@"fixed-subr/define" = global %ptr inttoptr (%word 0 to %ptr)
@"fixed-subr/set" = global %ptr inttoptr (%word 0 to %ptr)
@str267 = private unnamed_addr constant [16 x i8] c"\0ADIE called...\0A\00"
define %ptr @die() {
	%r1 = load %ptr, %ptr* @"libc/stderr"
	%r2 = getelementptr [16 x i8], [16 x i8]* @str267, %word 0, %word 0
	%r4 = call i32 (%ptr, %ptr, ...) @fprintf(%ptr %r1, %ptr %r2)
	%r5 = sext i32 %r4 to %word
	%r6 = inttoptr %word %r5 to %ptr
	%r7 = call %ptr @"libc/flush-streams"()
	%r8 = call %ptr @print-backtrace()
	%r9 = call %ptr @"libc/flush-streams"()
	call void @abort()
	%r11 = inttoptr %word 0 to %ptr
	ret %ptr %r11
}
@str268 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @fatal(%ptr %fmt) {
	%t1 = alloca %ptr
	store %ptr %fmt, %ptr* %t1
	%r1 = load %ptr, %ptr* @"libc/stderr"
	%r2 = load %ptr, %ptr* %t1
	%r3 = call i32 (%ptr, %ptr, ...) @fprintf(%ptr %r1, %ptr %r2)
	%r4 = sext i32 %r3 to %word
	%r5 = inttoptr %word %r4 to %ptr
	%r6 = load %ptr, %ptr* @"libc/stderr"
	%r7 = getelementptr [2 x i8], [2 x i8]* @str268, %word 0, %word 0
	%r9 = call i32 (%ptr, %ptr, ...) @fprintf(%ptr %r6, %ptr %r7)
	%r10 = sext i32 %r9 to %word
	%r11 = inttoptr %word %r10 to %ptr
	%r12 = call %ptr @die()
	ret %ptr %r12
}
@str269 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @fatal1(%ptr %fmt, %ptr %arg) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %fmt, %ptr* %t1
	store %ptr %arg, %ptr* %t2
	%r1 = load %ptr, %ptr* @"libc/stderr"
	%r2 = load %ptr, %ptr* %t1
	%r3 = load %ptr, %ptr* %t2
	%r4 = call i32 (%ptr, %ptr, ...) @fprintf(%ptr %r1, %ptr %r2, %ptr %r3)
	%r5 = sext i32 %r4 to %word
	%r6 = inttoptr %word %r5 to %ptr
	%r7 = load %ptr, %ptr* @"libc/stderr"
	%r8 = getelementptr [2 x i8], [2 x i8]* @str269, %word 0, %word 0
	%r10 = call i32 (%ptr, %ptr, ...) @fprintf(%ptr %r7, %ptr %r8)
	%r11 = sext i32 %r10 to %word
	%r12 = inttoptr %word %r11 to %ptr
	%r13 = call %ptr @die()
	ret %ptr %r13
}
@str270 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @fatal2(%ptr %fmt, %ptr %arg1, %ptr %arg2) {
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %fmt, %ptr* %t1
	store %ptr %arg1, %ptr* %t2
	store %ptr %arg2, %ptr* %t3
	%r1 = load %ptr, %ptr* @"libc/stderr"
	%r2 = load %ptr, %ptr* %t1
	%r3 = load %ptr, %ptr* %t2
	%r4 = load %ptr, %ptr* %t3
	%r5 = call i32 (%ptr, %ptr, ...) @fprintf(%ptr %r1, %ptr %r2, %ptr %r3, %ptr %r4)
	%r6 = sext i32 %r5 to %word
	%r7 = inttoptr %word %r6 to %ptr
	%r8 = load %ptr, %ptr* @"libc/stderr"
	%r9 = getelementptr [2 x i8], [2 x i8]* @str270, %word 0, %word 0
	%r11 = call i32 (%ptr, %ptr, ...) @fprintf(%ptr %r8, %ptr %r9)
	%r12 = sext i32 %r11 to %word
	%r13 = inttoptr %word %r12 to %ptr
	%r14 = call %ptr @die()
	ret %ptr %r14
}
@"gc/minimum-growth-unit" = global %ptr inttoptr (%word 51200 to %ptr)
@"gc/frequency" = global %ptr inttoptr (%word 32768 to %ptr)
@"gc/objects-live" = global %ptr inttoptr (%word 0 to %ptr)
@"gc/bytes-used" = global %ptr inttoptr (%word 0 to %ptr)
@"gc/bytes-free" = global %ptr inttoptr (%word 0 to %ptr)
@"gc/roots" = global %ptr inttoptr (%word 0 to %ptr)
@"gc/root-count" = global %ptr inttoptr (%word 0 to %ptr)
@"gc/root-max" = global %ptr inttoptr (%word 0 to %ptr)
@"gc/memory-base" = global %ptr inttoptr (%word 0 to %ptr)
@"gc/memory-last" = global %ptr inttoptr (%word 0 to %ptr)
@"gc/alloc-count" = global %ptr inttoptr (%word 0 to %ptr)
@"gc/collection-count" = global %ptr inttoptr (%word 0 to %ptr)
@str273 = private unnamed_addr constant [14 x i8] c"out of memory\00"
@str277 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str278 = private unnamed_addr constant [63 x i8] c"gc/acquire-new-heap-space: aligned-to-oop? has failed for ptr \00"
@str279 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @"gc/acquire-new-heap-space"(%ptr %size) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %size, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%ffi-cast2 = ptrtoint %ptr %r1 to i32
	%r3 = call %ptr @malloc(i32 %ffi-cast2)
	store %ptr %r3, %ptr* %t2
	%r4 = inttoptr %word 0 to %ptr
	store %ptr %r4, %ptr* %t3
	%r5 = load %ptr, %ptr* %t2
	store %ptr %r5, %ptr* %t3
	%r6 = inttoptr %word 0 to %ptr
	%r10 = ptrtoint %ptr %r6 to %word
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = icmp eq %word %r10, %r9
	%r7 = inttoptr i1 %r8 to %ptr
	%r12 = ptrtoint %ptr %r7 to %word
	%r11 = icmp ne %word %r12, 0
	br i1 %r11, label %L272, label %L271
L272:
	%r13 = getelementptr [14 x i8], [14 x i8]* @str273, %word 0, %word 0
	%r15 = call %ptr @fatal(%ptr %r13)
	store %ptr %r15, %ptr* %t3
	%r16 = inttoptr %word 0 to %ptr
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = icmp eq %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	%r22 = ptrtoint %ptr %r17 to %word
	%r21 = icmp ne %word %r22, 0
	br i1 %r21, label %L274, label %L271
L274:
	br label %L271
L271:
	%r23 = load %ptr, %ptr* %t3
	%r24 = inttoptr %word 32 to %ptr
	%r25 = load %ptr, %ptr* %t1
	%r29 = ptrtoint %ptr %r25 to %word
	%r28 = ptrtoint %ptr %r24 to %word
	%r27 = sub %word %r29, %r28
	%r26 = inttoptr %word %r27 to %ptr
	%r30 = inttoptr %word 0 to %ptr
	%r31 = load %ptr, %ptr* %t2
	%r35 = bitcast %ptr %r31 to [0 x %ptr]*
	%r34 = ptrtoint %ptr %r30 to %word
	%r33 = getelementptr [0 x %ptr], [0 x %ptr]* %r35, %word 0, %word %r34
	store %ptr %r26, %ptr* %r33
	%r32 = bitcast %ptr %r26 to %ptr
	%r36 = inttoptr %word 0 to %ptr
	%r37 = inttoptr %word 1 to %ptr
	%r38 = load %ptr, %ptr* %t2
	%r42 = bitcast %ptr %r38 to [0 x %ptr]*
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = getelementptr [0 x %ptr], [0 x %ptr]* %r42, %word 0, %word %r41
	store %ptr %r36, %ptr* %r40
	%r39 = bitcast %ptr %r36 to %ptr
	%r43 = load %ptr, %ptr* %t2
	%r44 = inttoptr %word 2 to %ptr
	%r45 = load %ptr, %ptr* %t2
	%r49 = bitcast %ptr %r45 to [0 x %ptr]*
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = getelementptr [0 x %ptr], [0 x %ptr]* %r49, %word 0, %word %r48
	store %ptr %r43, %ptr* %r47
	%r46 = bitcast %ptr %r43 to %ptr
	%r50 = inttoptr %word 0 to %ptr
	%r51 = inttoptr %word 0 to %ptr
	store %ptr %r51, %ptr* %t3
	%r52 = inttoptr %word 7 to %ptr
	%r53 = load %ptr, %ptr* %t2
	%r57 = ptrtoint %ptr %r53 to %word
	%r56 = ptrtoint %ptr %r52 to %word
	%r55 = and %word %r57, %r56
	%r54 = inttoptr %word %r55 to %ptr
	%r58 = inttoptr %word 0 to %ptr
	%r62 = ptrtoint %ptr %r58 to %word
	%r61 = ptrtoint %ptr %r54 to %word
	%r60 = icmp eq %word %r62, %r61
	%r59 = inttoptr i1 %r60 to %ptr
	store %ptr %r59, %ptr* %t3
	%r63 = inttoptr %word 0 to %ptr
	%r67 = ptrtoint %ptr %r63 to %word
	%r66 = ptrtoint %ptr %r59 to %word
	%r65 = icmp eq %word %r67, %r66
	%r64 = inttoptr i1 %r65 to %ptr
	%r69 = ptrtoint %ptr %r64 to %word
	%r68 = icmp ne %word %r69, 0
	br i1 %r68, label %L276, label %L275
L276:
	%r70 = getelementptr [9 x i8], [9 x i8]* @str277, %word 0, %word 0
	%r72 = call i32 (%ptr, ...) @printf(%ptr %r70)
	%r73 = sext i32 %r72 to %word
	%r74 = inttoptr %word %r73 to %ptr
	%r75 = getelementptr [63 x i8], [63 x i8]* @str278, %word 0, %word 0
	%r77 = call i32 (%ptr, ...) @printf(%ptr %r75)
	%r78 = sext i32 %r77 to %word
	%r79 = inttoptr %word %r78 to %ptr
	%r80 = load %ptr, %ptr* %t2
	%r81 = call %ptr @"k/print"(%ptr %r80)
	%r82 = getelementptr [2 x i8], [2 x i8]* @str279, %word 0, %word 0
	%r84 = call i32 (%ptr, ...) @printf(%ptr %r82)
	%r85 = sext i32 %r84 to %word
	%r86 = inttoptr %word %r85 to %ptr
	%r87 = call %ptr @die()
	store %ptr %r87, %ptr* %t3
	%r88 = inttoptr %word 0 to %ptr
	%r92 = ptrtoint %ptr %r88 to %word
	%r91 = ptrtoint %ptr %r87 to %word
	%r90 = icmp eq %word %r92, %r91
	%r89 = inttoptr i1 %r90 to %ptr
	%r94 = ptrtoint %ptr %r89 to %word
	%r93 = icmp ne %word %r94, 0
	br i1 %r93, label %L280, label %L275
L280:
	br label %L275
L275:
	%r95 = load %ptr, %ptr* %t3
	%r96 = load %ptr, %ptr* %t2
	ret %ptr %r96
}
define %ptr @"gc/grow-heap"(%ptr %size) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	store %ptr %size, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"gc/acquire-new-heap-space"(%ptr %r1)
	store %ptr %r2, %ptr* %t2
	%r3 = inttoptr %word 2 to %ptr
	%r4 = load %ptr, %ptr* @"gc/memory-last"
	%r8 = bitcast %ptr %r4 to [0 x %ptr]*
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = getelementptr [0 x %ptr], [0 x %ptr]* %r8, %word 0, %word %r7
	%r5 = load %ptr, %ptr* %r6
	%r9 = inttoptr %word 2 to %ptr
	%r10 = load %ptr, %ptr* %t2
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	store %ptr %r5, %ptr* %r12
	%r11 = bitcast %ptr %r5 to %ptr
	%r15 = load %ptr, %ptr* %t2
	%r16 = inttoptr %word 2 to %ptr
	%r17 = load %ptr, %ptr* @"gc/memory-last"
	%r21 = bitcast %ptr %r17 to [0 x %ptr]*
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = getelementptr [0 x %ptr], [0 x %ptr]* %r21, %word 0, %word %r20
	store %ptr %r15, %ptr* %r19
	%r18 = bitcast %ptr %r15 to %ptr
	%r22 = load %ptr, %ptr* %t2
	ret %ptr %r22
}
define %ptr @"gc/object-size"(%ptr %obj) {
	%t1 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 32 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = sub %word %r7, %r6
	%r4 = inttoptr %word %r5 to %ptr
	%r11 = bitcast %ptr %r4 to [0 x %ptr]*
	%r10 = ptrtoint %ptr %r1 to %word
	%r9 = getelementptr [0 x %ptr], [0 x %ptr]* %r11, %word 0, %word %r10
	%r8 = load %ptr, %ptr* %r9
	ret %ptr %r8
}
define %ptr @"%next-object-from-header"(%ptr %header) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	store %ptr %header, %ptr* %t1
	br label %L282
L281:
	%r1 = inttoptr %word 2 to %ptr
	%r2 = load %ptr, %ptr* %t1
	%r6 = bitcast %ptr %r2 to [0 x %ptr]*
	%r5 = ptrtoint %ptr %r1 to %word
	%r4 = getelementptr [0 x %ptr], [0 x %ptr]* %r6, %word 0, %word %r5
	%r3 = load %ptr, %ptr* %r4
	store %ptr %r3, %ptr* %t1
	%r7 = load %ptr, %ptr* @"gc/memory-base"
	%r8 = load %ptr, %ptr* %t1
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = ptrtoint %ptr %r7 to %word
	%r10 = icmp eq %word %r12, %r11
	%r9 = inttoptr i1 %r10 to %ptr
	%r14 = ptrtoint %ptr %r9 to %word
	%r13 = icmp ne %word %r14, 0
	br i1 %r13, label %L284, label %L285
L284:
	%r15 = inttoptr %word 0 to %ptr
	ret %ptr %r15
	store %ptr %r15, %ptr* %t2
	br label %L286
L285:
	%r17 = inttoptr %word 0 to %ptr
	store %ptr %r17, %ptr* %t2
	br label %L286
L286:
	%r18 = load %ptr, %ptr* %t2
	br label %L282
L282:
	%r19 = inttoptr %word 1 to %ptr
	%r20 = load %ptr, %ptr* %t1
	%r24 = bitcast %ptr %r20 to [0 x %ptr]*
	%r23 = ptrtoint %ptr %r19 to %word
	%r22 = getelementptr [0 x %ptr], [0 x %ptr]* %r24, %word 0, %word %r23
	%r21 = load %ptr, %ptr* %r22
	%r25 = inttoptr %word 1 to %ptr
	%r29 = ptrtoint %ptr %r25 to %word
	%r28 = ptrtoint %ptr %r21 to %word
	%r27 = and %word %r29, %r28
	%r26 = inttoptr %word %r27 to %ptr
	%r33 = ptrtoint %ptr %r26 to %word
	%r32 = icmp eq %word %r33, 0
	%r31 = zext i1 %r32 to %word
	%r30 = inttoptr %word %r31 to %ptr
	%r35 = ptrtoint %ptr %r30 to %word
	%r34 = icmp ne %word %r35, 0
	br i1 %r34, label %L281, label %L283
L283:
	%r36 = inttoptr %word 32 to %ptr
	%r37 = load %ptr, %ptr* %t1
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = ptrtoint %ptr %r36 to %word
	%r39 = add %word %r41, %r40
	%r38 = inttoptr %word %r39 to %ptr
	ret %ptr %r38
}
define %ptr @"gc/first-object"() {
	%r1 = inttoptr %word 2 to %ptr
	%r2 = load %ptr, %ptr* @"gc/memory-base"
	%r6 = bitcast %ptr %r2 to [0 x %ptr]*
	%r5 = ptrtoint %ptr %r1 to %word
	%r4 = getelementptr [0 x %ptr], [0 x %ptr]* %r6, %word 0, %word %r5
	%r3 = load %ptr, %ptr* %r4
	%r7 = call %ptr @"%next-object-from-header"(%ptr %r3)
	ret %ptr %r7
}
define %ptr @"gc/next-object"(%ptr %obj) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r3 = ptrtoint %ptr %r1 to %word
	%r2 = icmp ne %word %r3, 0
	br i1 %r2, label %L287, label %L288
L287:
	%r4 = inttoptr %word 2 to %ptr
	%r5 = inttoptr %word 32 to %ptr
	%r6 = load %ptr, %ptr* %t1
	%r10 = ptrtoint %ptr %r6 to %word
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = sub %word %r10, %r9
	%r7 = inttoptr %word %r8 to %ptr
	%r14 = bitcast %ptr %r7 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r4 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r15 = call %ptr @"%next-object-from-header"(%ptr %r11)
	store %ptr %r15, %ptr* %t2
	br label %L289
L288:
	%r16 = inttoptr %word 0 to %ptr
	store %ptr %r16, %ptr* %t2
	br label %L289
L289:
	%r17 = load %ptr, %ptr* %t2
	ret %ptr %r17
}
define %ptr @"gc/sweep"() {
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%r1 = inttoptr %word 0 to %ptr
	%r2 = load %ptr, %ptr* @"gc/memory-base"
	store %ptr %r2, %ptr* %t1
	%r3 = inttoptr %word 0 to %ptr
	store %ptr %r3, %ptr* %t2
	%r4 = inttoptr %word 0 to %ptr
	store %ptr %r4, %ptr* %t3
	%r5 = inttoptr %word 0 to %ptr
	store %ptr %r5, %ptr* %t4
	br label %L291
L290:
	%r6 = inttoptr %word 1 to %ptr
	%r7 = load %ptr, %ptr* %t1
	%r11 = bitcast %ptr %r7 to [0 x %ptr]*
	%r10 = ptrtoint %ptr %r6 to %word
	%r9 = getelementptr [0 x %ptr], [0 x %ptr]* %r11, %word 0, %word %r10
	%r8 = load %ptr, %ptr* %r9
	store %ptr %r8, %ptr* %t5
	%r12 = inttoptr %word 4 to %ptr
	%r13 = load %ptr, %ptr* %t5
	%r17 = ptrtoint %ptr %r13 to %word
	%r16 = ptrtoint %ptr %r12 to %word
	%r15 = and %word %r17, %r16
	%r14 = inttoptr %word %r15 to %ptr
	%r19 = ptrtoint %ptr %r14 to %word
	%r18 = icmp ne %word %r19, 0
	br i1 %r18, label %L293, label %L294
L293:
	%r20 = inttoptr %word 0 to %ptr
	%r21 = inttoptr %word 0 to %ptr
	%r22 = load %ptr, %ptr* %t1
	%r26 = bitcast %ptr %r22 to [0 x %ptr]*
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = getelementptr [0 x %ptr], [0 x %ptr]* %r26, %word 0, %word %r25
	%r23 = load %ptr, %ptr* %r24
	%r27 = load %ptr, %ptr* %t3
	%r31 = ptrtoint %ptr %r27 to %word
	%r30 = ptrtoint %ptr %r23 to %word
	%r29 = add %word %r31, %r30
	%r28 = inttoptr %word %r29 to %ptr
	store %ptr %r28, %ptr* %t3
	%r32 = inttoptr %word 1 to %ptr
	%r33 = load %ptr, %ptr* %t2
	%r37 = ptrtoint %ptr %r33 to %word
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = add %word %r37, %r36
	%r34 = inttoptr %word %r35 to %ptr
	store %ptr %r34, %ptr* %t2
	%r38 = inttoptr %word 4 to %ptr
	%r39 = load %ptr, %ptr* %t5
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = xor %word %r43, %r42
	%r40 = inttoptr %word %r41 to %ptr
	%r44 = inttoptr %word 1 to %ptr
	%r45 = load %ptr, %ptr* %t1
	%r49 = bitcast %ptr %r45 to [0 x %ptr]*
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = getelementptr [0 x %ptr], [0 x %ptr]* %r49, %word 0, %word %r48
	store %ptr %r40, %ptr* %r47
	%r46 = bitcast %ptr %r40 to %ptr
	store %ptr %r46, %ptr* %t6
	br label %L295
L294:
	%r50 = inttoptr %word 0 to %ptr
	%r51 = inttoptr %word 0 to %ptr
	%r52 = load %ptr, %ptr* %t1
	%r56 = bitcast %ptr %r52 to [0 x %ptr]*
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = getelementptr [0 x %ptr], [0 x %ptr]* %r56, %word 0, %word %r55
	%r53 = load %ptr, %ptr* %r54
	%r57 = load %ptr, %ptr* %t4
	%r61 = ptrtoint %ptr %r57 to %word
	%r60 = ptrtoint %ptr %r53 to %word
	%r59 = add %word %r61, %r60
	%r58 = inttoptr %word %r59 to %ptr
	store %ptr %r58, %ptr* %t4
	%r62 = inttoptr %word 0 to %ptr
	%r63 = inttoptr %word 1 to %ptr
	%r64 = load %ptr, %ptr* %t1
	%r68 = bitcast %ptr %r64 to [0 x %ptr]*
	%r67 = ptrtoint %ptr %r63 to %word
	%r66 = getelementptr [0 x %ptr], [0 x %ptr]* %r68, %word 0, %word %r67
	store %ptr %r62, %ptr* %r66
	%r65 = bitcast %ptr %r62 to %ptr
	%r69 = inttoptr %word 0 to %ptr
	%r70 = inttoptr %word 3 to %ptr
	%r71 = load %ptr, %ptr* %t1
	%r75 = bitcast %ptr %r71 to [0 x %ptr]*
	%r74 = ptrtoint %ptr %r70 to %word
	%r73 = getelementptr [0 x %ptr], [0 x %ptr]* %r75, %word 0, %word %r74
	store %ptr %r69, %ptr* %r73
	%r72 = bitcast %ptr %r69 to %ptr
	store %ptr %r72, %ptr* %t6
	br label %L295
L295:
	%r76 = load %ptr, %ptr* %t6
	%r77 = inttoptr %word 1 to %ptr
	store %ptr %r77, %ptr* %t5
	%r78 = inttoptr %word 2 to %ptr
	%r79 = load %ptr, %ptr* %t1
	%r83 = bitcast %ptr %r79 to [0 x %ptr]*
	%r82 = ptrtoint %ptr %r78 to %word
	%r81 = getelementptr [0 x %ptr], [0 x %ptr]* %r83, %word 0, %word %r82
	%r80 = load %ptr, %ptr* %r81
	store %ptr %r80, %ptr* %t1
	%r84 = load %ptr, %ptr* @"gc/memory-base"
	%r88 = ptrtoint %ptr %r84 to %word
	%r87 = ptrtoint %ptr %r80 to %word
	%r86 = icmp eq %word %r88, %r87
	%r85 = inttoptr i1 %r86 to %ptr
	store %ptr %r85, %ptr* %t5
	%r89 = inttoptr %word 0 to %ptr
	%r93 = ptrtoint %ptr %r89 to %word
	%r92 = ptrtoint %ptr %r85 to %word
	%r91 = icmp eq %word %r93, %r92
	%r90 = inttoptr i1 %r91 to %ptr
	%r95 = ptrtoint %ptr %r90 to %word
	%r94 = icmp ne %word %r95, 0
	br i1 %r94, label %L296, label %L297
L297:
	%r96 = inttoptr %word 0 to %ptr
	store %ptr %r96, %ptr* %t1
	store %ptr %r96, %ptr* %t5
	%r97 = inttoptr %word 0 to %ptr
	%r101 = ptrtoint %ptr %r97 to %word
	%r100 = ptrtoint %ptr %r96 to %word
	%r99 = icmp eq %word %r101, %r100
	%r98 = inttoptr i1 %r99 to %ptr
	%r103 = ptrtoint %ptr %r98 to %word
	%r102 = icmp ne %word %r103, 0
	br i1 %r102, label %L296, label %L298
L298:
	br label %L296
L296:
	%r104 = load %ptr, %ptr* %t5
	br label %L291
L291:
	%r105 = load %ptr, %ptr* %t1
	%r107 = ptrtoint %ptr %r105 to %word
	%r106 = icmp ne %word %r107, 0
	br i1 %r106, label %L290, label %L292
L292:
	%r108 = load %ptr, %ptr* %t2
	store %ptr %r108, %ptr* @"gc/objects-live"
	%r109 = load %ptr, %ptr* %t3
	store %ptr %r109, %ptr* @"gc/bytes-used"
	%r110 = load %ptr, %ptr* %t4
	store %ptr %r110, %ptr* @"gc/bytes-free"
	%r111 = inttoptr %word 0 to %ptr
	ret %ptr %r111
}
define %ptr @"gc/mark-and-trace"(%ptr %obj) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	%r1 = inttoptr %word 1 to %ptr
	store %ptr %r1, %ptr* %t2
	%r2 = load %ptr, %ptr* %t1
	store %ptr %r2, %ptr* %t2
	%r3 = inttoptr %word 0 to %ptr
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = icmp eq %word %r7, %r6
	%r4 = inttoptr i1 %r5 to %ptr
	%r9 = ptrtoint %ptr %r4 to %word
	%r8 = icmp ne %word %r9, 0
	br i1 %r8, label %L299, label %L300
L300:
	%r10 = inttoptr %word 7 to %ptr
	%r11 = load %ptr, %ptr* %t1
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = and %word %r15, %r14
	%r12 = inttoptr %word %r13 to %ptr
	%r16 = inttoptr %word 0 to %ptr
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r12 to %word
	%r18 = icmp eq %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	%r24 = ptrtoint %ptr %r17 to %word
	%r23 = icmp eq %word %r24, 0
	%r22 = zext i1 %r23 to %word
	%r21 = inttoptr %word %r22 to %ptr
	%r28 = ptrtoint %ptr %r21 to %word
	%r27 = icmp eq %word %r28, 0
	%r26 = zext i1 %r27 to %word
	%r25 = inttoptr %word %r26 to %ptr
	store %ptr %r25, %ptr* %t2
	%r29 = inttoptr %word 0 to %ptr
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = ptrtoint %ptr %r25 to %word
	%r31 = icmp eq %word %r33, %r32
	%r30 = inttoptr i1 %r31 to %ptr
	%r35 = ptrtoint %ptr %r30 to %word
	%r34 = icmp ne %word %r35, 0
	br i1 %r34, label %L299, label %L301
L301:
	%r36 = inttoptr %word 32 to %ptr
	%r37 = load %ptr, %ptr* %t1
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = ptrtoint %ptr %r36 to %word
	%r39 = sub %word %r41, %r40
	%r38 = inttoptr %word %r39 to %ptr
	store %ptr %r38, %ptr* %t3
	%r42 = inttoptr %word 1 to %ptr
	%r43 = load %ptr, %ptr* %t3
	%r47 = bitcast %ptr %r43 to [0 x %ptr]*
	%r46 = ptrtoint %ptr %r42 to %word
	%r45 = getelementptr [0 x %ptr], [0 x %ptr]* %r47, %word 0, %word %r46
	%r44 = load %ptr, %ptr* %r45
	store %ptr %r44, %ptr* %t4
	%r48 = inttoptr %word 0 to %ptr
	%r49 = inttoptr %word 0 to %ptr
	%r50 = inttoptr %word 0 to %ptr
	%r51 = inttoptr %word 0 to %ptr
	store %ptr %r51, %ptr* %t5
	%r52 = inttoptr %word 4 to %ptr
	%r53 = load %ptr, %ptr* %t4
	%r57 = ptrtoint %ptr %r53 to %word
	%r56 = ptrtoint %ptr %r52 to %word
	%r55 = and %word %r57, %r56
	%r54 = inttoptr %word %r55 to %ptr
	store %ptr %r54, %ptr* %t5
	%r58 = inttoptr %word 0 to %ptr
	%r62 = ptrtoint %ptr %r58 to %word
	%r61 = ptrtoint %ptr %r54 to %word
	%r60 = icmp eq %word %r62, %r61
	%r59 = inttoptr i1 %r60 to %ptr
	%r64 = ptrtoint %ptr %r59 to %word
	%r63 = icmp ne %word %r64, 0
	br i1 %r63, label %L303, label %L302
L303:
	%r65 = inttoptr %word 4 to %ptr
	%r66 = load %ptr, %ptr* %t4
	%r70 = ptrtoint %ptr %r66 to %word
	%r69 = ptrtoint %ptr %r65 to %word
	%r68 = or %word %r70, %r69
	%r67 = inttoptr %word %r68 to %ptr
	%r71 = inttoptr %word 1 to %ptr
	%r72 = load %ptr, %ptr* %t3
	%r76 = bitcast %ptr %r72 to [0 x %ptr]*
	%r75 = ptrtoint %ptr %r71 to %word
	%r74 = getelementptr [0 x %ptr], [0 x %ptr]* %r76, %word 0, %word %r75
	store %ptr %r67, %ptr* %r74
	%r73 = bitcast %ptr %r67 to %ptr
	%r77 = inttoptr %word 0 to %ptr
	store %ptr %r77, %ptr* %t6
	%r78 = inttoptr %word 2 to %ptr
	%r79 = load %ptr, %ptr* %t4
	%r83 = ptrtoint %ptr %r79 to %word
	%r82 = ptrtoint %ptr %r78 to %word
	%r81 = and %word %r83, %r82
	%r80 = inttoptr %word %r81 to %ptr
	store %ptr %r80, %ptr* %t6
	%r84 = inttoptr %word 0 to %ptr
	%r88 = ptrtoint %ptr %r84 to %word
	%r87 = ptrtoint %ptr %r80 to %word
	%r86 = icmp eq %word %r88, %r87
	%r85 = inttoptr i1 %r86 to %ptr
	%r90 = ptrtoint %ptr %r85 to %word
	%r89 = icmp ne %word %r90, 0
	br i1 %r89, label %L305, label %L304
L305:
	%r91 = inttoptr %word 8 to %ptr
	%r92 = inttoptr %word 0 to %ptr
	%r93 = load %ptr, %ptr* %t3
	%r97 = bitcast %ptr %r93 to [0 x %ptr]*
	%r96 = ptrtoint %ptr %r92 to %word
	%r95 = getelementptr [0 x %ptr], [0 x %ptr]* %r97, %word 0, %word %r96
	%r94 = load %ptr, %ptr* %r95
	%r101 = ptrtoint %ptr %r94 to %word
	%r100 = ptrtoint %ptr %r91 to %word
	%r99 = sdiv %word %r101, %r100
	%r98 = inttoptr %word %r99 to %ptr
	store %ptr %r98, %ptr* %t7
	%r102 = inttoptr %word 0 to %ptr
	%r103 = inttoptr %word 0 to %ptr
	br label %L307
L306:
	%r104 = inttoptr %word 1 to %ptr
	%r105 = load %ptr, %ptr* %t7
	%r109 = ptrtoint %ptr %r105 to %word
	%r108 = ptrtoint %ptr %r104 to %word
	%r107 = sub %word %r109, %r108
	%r106 = inttoptr %word %r107 to %ptr
	store %ptr %r106, %ptr* %t7
	%r110 = load %ptr, %ptr* %t7
	%r111 = load %ptr, %ptr* %t1
	%r115 = bitcast %ptr %r111 to [0 x %ptr]*
	%r114 = ptrtoint %ptr %r110 to %word
	%r113 = getelementptr [0 x %ptr], [0 x %ptr]* %r115, %word 0, %word %r114
	%r112 = load %ptr, %ptr* %r113
	%r116 = call %ptr @"gc/mark-and-trace"(%ptr %r112)
	br label %L307
L307:
	%r117 = load %ptr, %ptr* %t7
	%r119 = ptrtoint %ptr %r117 to %word
	%r118 = icmp ne %word %r119, 0
	br i1 %r118, label %L306, label %L308
L308:
	store %ptr %r117, %ptr* %t6
	%r120 = inttoptr %word 0 to %ptr
	%r124 = ptrtoint %ptr %r120 to %word
	%r123 = ptrtoint %ptr %r117 to %word
	%r122 = icmp eq %word %r124, %r123
	%r121 = inttoptr i1 %r122 to %ptr
	%r126 = ptrtoint %ptr %r121 to %word
	%r125 = icmp ne %word %r126, 0
	br i1 %r125, label %L309, label %L304
L309:
	br label %L304
L304:
	%r127 = load %ptr, %ptr* %t6
	store %ptr %r127, %ptr* %t5
	%r128 = inttoptr %word 0 to %ptr
	%r132 = ptrtoint %ptr %r128 to %word
	%r131 = ptrtoint %ptr %r127 to %word
	%r130 = icmp eq %word %r132, %r131
	%r129 = inttoptr i1 %r130 to %ptr
	%r134 = ptrtoint %ptr %r129 to %word
	%r133 = icmp ne %word %r134, 0
	br i1 %r133, label %L310, label %L302
L310:
	br label %L302
L302:
	%r135 = load %ptr, %ptr* %t5
	store %ptr %r135, %ptr* %t2
	%r136 = inttoptr %word 0 to %ptr
	%r140 = ptrtoint %ptr %r136 to %word
	%r139 = ptrtoint %ptr %r135 to %word
	%r138 = icmp eq %word %r140, %r139
	%r137 = inttoptr i1 %r138 to %ptr
	%r142 = ptrtoint %ptr %r137 to %word
	%r141 = icmp ne %word %r142, 0
	br i1 %r141, label %L299, label %L311
L311:
	br label %L299
L299:
	%r143 = load %ptr, %ptr* %t2
	ret %ptr %r143
}
define %ptr @"gc/collect"() {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* @"gc/roots"
	%r4 = call %ptr @"gc/mark-and-trace"(%ptr %r3)
	%r5 = inttoptr %word 0 to %ptr
	store %ptr %r5, %ptr* %t1
	%r6 = load %ptr, %ptr* @"gc/root-count"
	store %ptr %r6, %ptr* %t2
	br label %L313
L312:
	%r7 = load %ptr, %ptr* %t1
	%r8 = load %ptr, %ptr* @"gc/roots"
	%r12 = bitcast %ptr %r8 to [0 x %ptr]*
	%r11 = ptrtoint %ptr %r7 to %word
	%r10 = getelementptr [0 x %ptr], [0 x %ptr]* %r12, %word 0, %word %r11
	%r9 = load %ptr, %ptr* %r10
	store %ptr %r9, %ptr* %t3
	%r13 = inttoptr %word 0 to %ptr
	%r14 = load %ptr, %ptr* %t3
	%r18 = bitcast %ptr %r14 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r13 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 0 to %ptr
	%r20 = load %ptr, %ptr* %t4
	%r21 = call %ptr @"gc/mark-and-trace"(%ptr %r20)
	%r22 = inttoptr %word 1 to %ptr
	%r23 = load %ptr, %ptr* %t1
	%r27 = ptrtoint %ptr %r23 to %word
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = add %word %r27, %r26
	%r24 = inttoptr %word %r25 to %ptr
	store %ptr %r24, %ptr* %t1
	br label %L313
L313:
	%r28 = load %ptr, %ptr* %t2
	%r29 = load %ptr, %ptr* %t1
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = icmp slt %word %r33, %r32
	%r30 = inttoptr i1 %r31 to %ptr
	%r35 = ptrtoint %ptr %r30 to %word
	%r34 = icmp ne %word %r35, 0
	br i1 %r34, label %L312, label %L314
L314:
	%r36 = inttoptr %word 0 to %ptr
	%r37 = call %ptr @"gc/sweep"()
	%r38 = inttoptr %word 0 to %ptr
	store %ptr %r38, %ptr* @"gc/alloc-count"
	ret %ptr %r38
}
define %ptr @"gc/allocate"(%ptr %type, %ptr %requested-size) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t9 = alloca %ptr
	%t10 = alloca %ptr
	store %ptr %type, %ptr* %t1
	store %ptr %requested-size, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = inttoptr %word -8 to %ptr
	%r4 = inttoptr %word 7 to %ptr
	%r5 = load %ptr, %ptr* %t2
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = add %word %r9, %r8
	%r6 = inttoptr %word %r7 to %ptr
	%r13 = ptrtoint %ptr %r6 to %word
	%r12 = ptrtoint %ptr %r3 to %word
	%r11 = and %word %r13, %r12
	%r10 = inttoptr %word %r11 to %ptr
	store %ptr %r10, %ptr* %t2
	%r14 = inttoptr %word 1 to %ptr
	store %ptr %r14, %ptr* %t3
	%r15 = load %ptr, %ptr* @"gc/frequency"
	%r16 = load %ptr, %ptr* @"gc/alloc-count"
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = icmp eq %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	store %ptr %r17, %ptr* %t3
	%r21 = inttoptr %word 0 to %ptr
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ptrtoint %ptr %r17 to %word
	%r23 = icmp eq %word %r25, %r24
	%r22 = inttoptr i1 %r23 to %ptr
	%r27 = ptrtoint %ptr %r22 to %word
	%r26 = icmp ne %word %r27, 0
	br i1 %r26, label %L315, label %L316
L316:
	%r28 = call %ptr @"gc/collect"()
	store %ptr %r28, %ptr* %t3
	%r29 = inttoptr %word 0 to %ptr
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = icmp eq %word %r33, %r32
	%r30 = inttoptr i1 %r31 to %ptr
	%r35 = ptrtoint %ptr %r30 to %word
	%r34 = icmp ne %word %r35, 0
	br i1 %r34, label %L315, label %L317
L317:
	br label %L315
L315:
	%r36 = load %ptr, %ptr* %t3
	%r37 = inttoptr %word 2 to %ptr
	%r38 = load %ptr, %ptr* @"gc/memory-last"
	%r42 = bitcast %ptr %r38 to [0 x %ptr]*
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = getelementptr [0 x %ptr], [0 x %ptr]* %r42, %word 0, %word %r41
	%r39 = load %ptr, %ptr* %r40
	store %ptr %r39, %ptr* %t3
	%r43 = load %ptr, %ptr* %t3
	store %ptr %r43, %ptr* %t4
	%r44 = inttoptr %word 32 to %ptr
	%r45 = load %ptr, %ptr* %t2
	%r49 = ptrtoint %ptr %r45 to %word
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = add %word %r49, %r48
	%r46 = inttoptr %word %r47 to %ptr
	store %ptr %r46, %ptr* %t5
	br label %L319
L318:
	br label %L322
L321:
	br label %L322
L322:
	%r50 = inttoptr %word 0 to %ptr
	%r51 = inttoptr %word 1 to %ptr
	%r52 = load %ptr, %ptr* %t4
	%r56 = bitcast %ptr %r52 to [0 x %ptr]*
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = getelementptr [0 x %ptr], [0 x %ptr]* %r56, %word 0, %word %r55
	%r53 = load %ptr, %ptr* %r54
	%r57 = inttoptr %word 0 to %ptr
	%r61 = ptrtoint %ptr %r57 to %word
	%r60 = ptrtoint %ptr %r53 to %word
	%r59 = icmp eq %word %r61, %r60
	%r58 = inttoptr i1 %r59 to %ptr
	%r63 = ptrtoint %ptr %r58 to %word
	%r62 = icmp ne %word %r63, 0
	br i1 %r62, label %L324, label %L325
L324:
	%r64 = inttoptr %word 0 to %ptr
	%r65 = load %ptr, %ptr* %t4
	%r69 = bitcast %ptr %r65 to [0 x %ptr]*
	%r68 = ptrtoint %ptr %r64 to %word
	%r67 = getelementptr [0 x %ptr], [0 x %ptr]* %r69, %word 0, %word %r68
	%r66 = load %ptr, %ptr* %r67
	store %ptr %r66, %ptr* %t7
	br label %L328
L327:
	%r70 = inttoptr %word 2 to %ptr
	%r71 = load %ptr, %ptr* %t4
	%r75 = bitcast %ptr %r71 to [0 x %ptr]*
	%r74 = ptrtoint %ptr %r70 to %word
	%r73 = getelementptr [0 x %ptr], [0 x %ptr]* %r75, %word 0, %word %r74
	%r72 = load %ptr, %ptr* %r73
	store %ptr %r72, %ptr* %t8
	%r76 = inttoptr %word 2 to %ptr
	%r77 = load %ptr, %ptr* %t8
	%r81 = bitcast %ptr %r77 to [0 x %ptr]*
	%r80 = ptrtoint %ptr %r76 to %word
	%r79 = getelementptr [0 x %ptr], [0 x %ptr]* %r81, %word 0, %word %r80
	%r78 = load %ptr, %ptr* %r79
	%r82 = inttoptr %word 2 to %ptr
	%r83 = load %ptr, %ptr* %t4
	%r87 = bitcast %ptr %r83 to [0 x %ptr]*
	%r86 = ptrtoint %ptr %r82 to %word
	%r85 = getelementptr [0 x %ptr], [0 x %ptr]* %r87, %word 0, %word %r86
	store %ptr %r78, %ptr* %r85
	%r84 = bitcast %ptr %r78 to %ptr
	%r88 = inttoptr %word 0 to %ptr
	%r89 = load %ptr, %ptr* %t8
	%r93 = bitcast %ptr %r89 to [0 x %ptr]*
	%r92 = ptrtoint %ptr %r88 to %word
	%r91 = getelementptr [0 x %ptr], [0 x %ptr]* %r93, %word 0, %word %r92
	%r90 = load %ptr, %ptr* %r91
	%r94 = inttoptr %word 32 to %ptr
	%r98 = ptrtoint %ptr %r94 to %word
	%r97 = ptrtoint %ptr %r90 to %word
	%r96 = add %word %r98, %r97
	%r95 = inttoptr %word %r96 to %ptr
	%r99 = load %ptr, %ptr* %t7
	%r103 = ptrtoint %ptr %r99 to %word
	%r102 = ptrtoint %ptr %r95 to %word
	%r101 = add %word %r103, %r102
	%r100 = inttoptr %word %r101 to %ptr
	%r104 = inttoptr %word 0 to %ptr
	%r105 = load %ptr, %ptr* %t4
	%r109 = bitcast %ptr %r105 to [0 x %ptr]*
	%r108 = ptrtoint %ptr %r104 to %word
	%r107 = getelementptr [0 x %ptr], [0 x %ptr]* %r109, %word 0, %word %r108
	store %ptr %r100, %ptr* %r107
	%r106 = bitcast %ptr %r100 to %ptr
	store %ptr %r106, %ptr* %t7
	%r110 = inttoptr %word 1 to %ptr
	store %ptr %r110, %ptr* %t9
	%r111 = load %ptr, %ptr* @"gc/memory-last"
	%r112 = load %ptr, %ptr* %t8
	%r116 = ptrtoint %ptr %r112 to %word
	%r115 = ptrtoint %ptr %r111 to %word
	%r114 = icmp eq %word %r116, %r115
	%r113 = inttoptr i1 %r114 to %ptr
	store %ptr %r113, %ptr* %t9
	%r117 = inttoptr %word 0 to %ptr
	%r121 = ptrtoint %ptr %r117 to %word
	%r120 = ptrtoint %ptr %r113 to %word
	%r119 = icmp eq %word %r121, %r120
	%r118 = inttoptr i1 %r119 to %ptr
	%r123 = ptrtoint %ptr %r118 to %word
	%r122 = icmp ne %word %r123, 0
	br i1 %r122, label %L330, label %L331
L331:
	%r124 = load %ptr, %ptr* %t4
	store %ptr %r124, %ptr* @"gc/memory-last"
	store %ptr %r124, %ptr* %t9
	%r125 = inttoptr %word 0 to %ptr
	%r129 = ptrtoint %ptr %r125 to %word
	%r128 = ptrtoint %ptr %r124 to %word
	%r127 = icmp eq %word %r129, %r128
	%r126 = inttoptr i1 %r127 to %ptr
	%r131 = ptrtoint %ptr %r126 to %word
	%r130 = icmp ne %word %r131, 0
	br i1 %r130, label %L330, label %L332
L332:
	br label %L330
L330:
	%r132 = load %ptr, %ptr* %t9
	br label %L328
L328:
	%r133 = inttoptr %word 1 to %ptr
	store %ptr %r133, %ptr* %t8
	%r134 = inttoptr %word 1 to %ptr
	%r135 = inttoptr %word 2 to %ptr
	%r136 = load %ptr, %ptr* %t4
	%r140 = bitcast %ptr %r136 to [0 x %ptr]*
	%r139 = ptrtoint %ptr %r135 to %word
	%r138 = getelementptr [0 x %ptr], [0 x %ptr]* %r140, %word 0, %word %r139
	%r137 = load %ptr, %ptr* %r138
	%r144 = bitcast %ptr %r137 to [0 x %ptr]*
	%r143 = ptrtoint %ptr %r134 to %word
	%r142 = getelementptr [0 x %ptr], [0 x %ptr]* %r144, %word 0, %word %r143
	%r141 = load %ptr, %ptr* %r142
	%r145 = inttoptr %word 0 to %ptr
	%r149 = ptrtoint %ptr %r145 to %word
	%r148 = ptrtoint %ptr %r141 to %word
	%r147 = icmp eq %word %r149, %r148
	%r146 = inttoptr i1 %r147 to %ptr
	store %ptr %r146, %ptr* %t8
	%r150 = inttoptr %word 0 to %ptr
	%r154 = ptrtoint %ptr %r150 to %word
	%r153 = ptrtoint %ptr %r146 to %word
	%r152 = icmp eq %word %r154, %r153
	%r151 = inttoptr i1 %r152 to %ptr
	%r156 = ptrtoint %ptr %r151 to %word
	%r155 = icmp ne %word %r156, 0
	br i1 %r155, label %L333, label %L334
L334:
	%r157 = load %ptr, %ptr* %t7
	%r158 = inttoptr %word 32 to %ptr
	%r162 = ptrtoint %ptr %r158 to %word
	%r161 = ptrtoint %ptr %r157 to %word
	%r160 = add %word %r162, %r161
	%r159 = inttoptr %word %r160 to %ptr
	%r163 = load %ptr, %ptr* %t4
	%r167 = ptrtoint %ptr %r163 to %word
	%r166 = ptrtoint %ptr %r159 to %word
	%r165 = add %word %r167, %r166
	%r164 = inttoptr %word %r165 to %ptr
	%r168 = inttoptr %word 2 to %ptr
	%r169 = load %ptr, %ptr* %t4
	%r173 = bitcast %ptr %r169 to [0 x %ptr]*
	%r172 = ptrtoint %ptr %r168 to %word
	%r171 = getelementptr [0 x %ptr], [0 x %ptr]* %r173, %word 0, %word %r172
	%r170 = load %ptr, %ptr* %r171
	%r177 = ptrtoint %ptr %r170 to %word
	%r176 = ptrtoint %ptr %r164 to %word
	%r175 = icmp eq %word %r177, %r176
	%r174 = inttoptr i1 %r175 to %ptr
	store %ptr %r174, %ptr* %t8
	%r178 = inttoptr %word 0 to %ptr
	%r182 = ptrtoint %ptr %r178 to %word
	%r181 = ptrtoint %ptr %r174 to %word
	%r180 = icmp eq %word %r182, %r181
	%r179 = inttoptr i1 %r180 to %ptr
	%r184 = ptrtoint %ptr %r179 to %word
	%r183 = icmp ne %word %r184, 0
	br i1 %r183, label %L333, label %L335
L335:
	br label %L333
L333:
	%r185 = load %ptr, %ptr* %t8
	%r187 = ptrtoint %ptr %r185 to %word
	%r186 = icmp ne %word %r187, 0
	br i1 %r186, label %L327, label %L329
L329:
	%r188 = inttoptr %word 0 to %ptr
	store %ptr %r188, %ptr* %t9
	%r189 = load %ptr, %ptr* %t7
	%r190 = load %ptr, %ptr* %t5
	%r194 = ptrtoint %ptr %r190 to %word
	%r193 = ptrtoint %ptr %r189 to %word
	%r192 = icmp slt %word %r194, %r193
	%r191 = inttoptr i1 %r192 to %ptr
	store %ptr %r191, %ptr* %t9
	%r195 = inttoptr %word 0 to %ptr
	%r199 = ptrtoint %ptr %r195 to %word
	%r198 = ptrtoint %ptr %r191 to %word
	%r197 = icmp eq %word %r199, %r198
	%r196 = inttoptr i1 %r197 to %ptr
	%r201 = ptrtoint %ptr %r196 to %word
	%r200 = icmp ne %word %r201, 0
	br i1 %r200, label %L340, label %L339
L340:
	%r202 = load %ptr, %ptr* %t7
	%r203 = load %ptr, %ptr* %t2
	%r207 = ptrtoint %ptr %r203 to %word
	%r206 = ptrtoint %ptr %r202 to %word
	%r205 = icmp eq %word %r207, %r206
	%r204 = inttoptr i1 %r205 to %ptr
	store %ptr %r204, %ptr* %t9
	%r208 = inttoptr %word 0 to %ptr
	%r212 = ptrtoint %ptr %r208 to %word
	%r211 = ptrtoint %ptr %r204 to %word
	%r210 = icmp eq %word %r212, %r211
	%r209 = inttoptr i1 %r210 to %ptr
	%r214 = ptrtoint %ptr %r209 to %word
	%r213 = icmp ne %word %r214, 0
	br i1 %r213, label %L341, label %L339
L341:
	br label %L339
L339:
	%r215 = load %ptr, %ptr* %t9
	%r217 = ptrtoint %ptr %r215 to %word
	%r216 = icmp ne %word %r217, 0
	br i1 %r216, label %L336, label %L337
L336:
	%r218 = inttoptr %word 0 to %ptr
	%r219 = load %ptr, %ptr* %t5
	%r220 = load %ptr, %ptr* %t7
	%r224 = ptrtoint %ptr %r220 to %word
	%r223 = ptrtoint %ptr %r219 to %word
	%r222 = icmp sgt %word %r224, %r223
	%r221 = inttoptr i1 %r222 to %ptr
	%r226 = ptrtoint %ptr %r221 to %word
	%r225 = icmp ne %word %r226, 0
	br i1 %r225, label %L342, label %L343
L342:
	%r227 = load %ptr, %ptr* %t5
	%r228 = load %ptr, %ptr* %t4
	%r232 = ptrtoint %ptr %r228 to %word
	%r231 = ptrtoint %ptr %r227 to %word
	%r230 = add %word %r232, %r231
	%r229 = inttoptr %word %r230 to %ptr
	store %ptr %r229, %ptr* %t10
	%r233 = inttoptr %word 0 to %ptr
	%r234 = load %ptr, %ptr* %t5
	%r235 = load %ptr, %ptr* %t7
	%r239 = ptrtoint %ptr %r235 to %word
	%r238 = ptrtoint %ptr %r234 to %word
	%r237 = sub %word %r239, %r238
	%r236 = inttoptr %word %r237 to %ptr
	%r240 = inttoptr %word 0 to %ptr
	%r241 = load %ptr, %ptr* %t10
	%r245 = bitcast %ptr %r241 to [0 x %ptr]*
	%r244 = ptrtoint %ptr %r240 to %word
	%r243 = getelementptr [0 x %ptr], [0 x %ptr]* %r245, %word 0, %word %r244
	store %ptr %r236, %ptr* %r243
	%r242 = bitcast %ptr %r236 to %ptr
	%r246 = inttoptr %word 0 to %ptr
	%r247 = inttoptr %word 1 to %ptr
	%r248 = load %ptr, %ptr* %t10
	%r252 = bitcast %ptr %r248 to [0 x %ptr]*
	%r251 = ptrtoint %ptr %r247 to %word
	%r250 = getelementptr [0 x %ptr], [0 x %ptr]* %r252, %word 0, %word %r251
	store %ptr %r246, %ptr* %r250
	%r249 = bitcast %ptr %r246 to %ptr
	%r253 = inttoptr %word 2 to %ptr
	%r254 = load %ptr, %ptr* %t4
	%r258 = bitcast %ptr %r254 to [0 x %ptr]*
	%r257 = ptrtoint %ptr %r253 to %word
	%r256 = getelementptr [0 x %ptr], [0 x %ptr]* %r258, %word 0, %word %r257
	%r255 = load %ptr, %ptr* %r256
	%r259 = inttoptr %word 2 to %ptr
	%r260 = load %ptr, %ptr* %t10
	%r264 = bitcast %ptr %r260 to [0 x %ptr]*
	%r263 = ptrtoint %ptr %r259 to %word
	%r262 = getelementptr [0 x %ptr], [0 x %ptr]* %r264, %word 0, %word %r263
	store %ptr %r255, %ptr* %r262
	%r261 = bitcast %ptr %r255 to %ptr
	%r265 = load %ptr, %ptr* %t2
	%r266 = inttoptr %word 0 to %ptr
	%r267 = load %ptr, %ptr* %t4
	%r271 = bitcast %ptr %r267 to [0 x %ptr]*
	%r270 = ptrtoint %ptr %r266 to %word
	%r269 = getelementptr [0 x %ptr], [0 x %ptr]* %r271, %word 0, %word %r270
	store %ptr %r265, %ptr* %r269
	%r268 = bitcast %ptr %r265 to %ptr
	%r272 = load %ptr, %ptr* %t10
	%r273 = inttoptr %word 2 to %ptr
	%r274 = load %ptr, %ptr* %t4
	%r278 = bitcast %ptr %r274 to [0 x %ptr]*
	%r277 = ptrtoint %ptr %r273 to %word
	%r276 = getelementptr [0 x %ptr], [0 x %ptr]* %r278, %word 0, %word %r277
	store %ptr %r272, %ptr* %r276
	%r275 = bitcast %ptr %r272 to %ptr
	%r279 = load %ptr, %ptr* %t2
	store %ptr %r279, %ptr* %t7
	store %ptr %r279, %ptr* %t9
	br label %L344
L343:
	%r280 = inttoptr %word 0 to %ptr
	store %ptr %r280, %ptr* %t9
	br label %L344
L344:
	%r281 = load %ptr, %ptr* %t9
	%r282 = inttoptr %word 0 to %ptr
	%r283 = load %ptr, %ptr* %t4
	store %ptr %r283, %ptr* @"gc/memory-last"
	%r284 = inttoptr %word 1 to %ptr
	%r285 = load %ptr, %ptr* @"gc/alloc-count"
	%r289 = ptrtoint %ptr %r285 to %word
	%r288 = ptrtoint %ptr %r284 to %word
	%r287 = add %word %r289, %r288
	%r286 = inttoptr %word %r287 to %ptr
	store %ptr %r286, %ptr* @"gc/alloc-count"
	%r290 = load %ptr, %ptr* %t4
	store %ptr %r290, %ptr* %t9
	%r291 = inttoptr %word 32 to %ptr
	%r292 = load %ptr, %ptr* %t9
	%r296 = ptrtoint %ptr %r292 to %word
	%r295 = ptrtoint %ptr %r291 to %word
	%r294 = add %word %r296, %r295
	%r293 = inttoptr %word %r294 to %ptr
	store %ptr %r293, %ptr* %t10
	%r297 = inttoptr %word 1 to %ptr
	%r298 = inttoptr %word 1 to %ptr
	%r299 = load %ptr, %ptr* %t9
	%r303 = bitcast %ptr %r299 to [0 x %ptr]*
	%r302 = ptrtoint %ptr %r298 to %word
	%r301 = getelementptr [0 x %ptr], [0 x %ptr]* %r303, %word 0, %word %r302
	store %ptr %r297, %ptr* %r301
	%r300 = bitcast %ptr %r297 to %ptr
	%r304 = load %ptr, %ptr* %t1
	%r305 = inttoptr %word 3 to %ptr
	%r306 = load %ptr, %ptr* %t9
	%r310 = bitcast %ptr %r306 to [0 x %ptr]*
	%r309 = ptrtoint %ptr %r305 to %word
	%r308 = getelementptr [0 x %ptr], [0 x %ptr]* %r310, %word 0, %word %r309
	store %ptr %r304, %ptr* %r308
	%r307 = bitcast %ptr %r304 to %ptr
	%r311 = load %ptr, %ptr* %t10
	%r312 = inttoptr %word 0 to %ptr
	%r313 = load %ptr, %ptr* %t7
	%ffi-cast314 = ptrtoint %ptr %r312 to i32
	%ffi-cast315 = ptrtoint %ptr %r313 to i32
	%r316 = call %ptr @memset(%ptr %r311, i32 %ffi-cast314, i32 %ffi-cast315)
	%r317 = inttoptr %word 0 to %ptr
	%r318 = inttoptr %word 0 to %ptr
	%r319 = inttoptr %word 0 to %ptr
	%r320 = inttoptr %word 0 to %ptr
	%r321 = load %ptr, %ptr* %t10
	ret %ptr %r321
	store %ptr %r321, %ptr* %t8
	br label %L338
L337:
	%r323 = inttoptr %word 0 to %ptr
	store %ptr %r323, %ptr* %t8
	br label %L338
L338:
	%r324 = load %ptr, %ptr* %t8
	store %ptr %r324, %ptr* %t6
	br label %L326
L325:
	%r325 = inttoptr %word 0 to %ptr
	store %ptr %r325, %ptr* %t6
	br label %L326
L326:
	%r326 = load %ptr, %ptr* %t6
	%r327 = inttoptr %word 2 to %ptr
	%r328 = load %ptr, %ptr* %t4
	%r332 = bitcast %ptr %r328 to [0 x %ptr]*
	%r331 = ptrtoint %ptr %r327 to %word
	%r330 = getelementptr [0 x %ptr], [0 x %ptr]* %r332, %word 0, %word %r331
	%r329 = load %ptr, %ptr* %r330
	store %ptr %r329, %ptr* %t4
	%r333 = load %ptr, %ptr* %t3
	%r337 = ptrtoint %ptr %r333 to %word
	%r336 = ptrtoint %ptr %r329 to %word
	%r335 = icmp ne %word %r337, %r336
	%r334 = inttoptr i1 %r335 to %ptr
	%r339 = ptrtoint %ptr %r334 to %word
	%r338 = icmp ne %word %r339, 0
	br i1 %r338, label %L321, label %L323
L323:
	%r340 = load %ptr, %ptr* %t2
	%r341 = inttoptr %word 32 to %ptr
	%r345 = ptrtoint %ptr %r341 to %word
	%r344 = ptrtoint %ptr %r340 to %word
	%r343 = add %word %r345, %r344
	%r342 = inttoptr %word %r343 to %ptr
	%r346 = load %ptr, %ptr* @"gc/minimum-growth-unit"
	%r347 = call %ptr @max(%ptr %r342, %ptr %r346)
	%r348 = call %ptr @"gc/grow-heap"(%ptr %r347)
	br label %L319
L319:
	%r349 = inttoptr %word 1 to %ptr
	%r351 = ptrtoint %ptr %r349 to %word
	%r350 = icmp ne %word %r351, 0
	br i1 %r350, label %L318, label %L320
L320:
	ret %ptr %r349
}
define %ptr @"gc/allocate-opaque"(%ptr %type, %ptr %requested-size) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %type, %ptr* %t1
	store %ptr %requested-size, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = load %ptr, %ptr* %t2
	%r3 = call %ptr @"gc/allocate"(%ptr %r1, %ptr %r2)
	store %ptr %r3, %ptr* %t3
	%r4 = inttoptr %word 32 to %ptr
	%r5 = load %ptr, %ptr* %t3
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = sub %word %r9, %r8
	%r6 = inttoptr %word %r7 to %ptr
	store %ptr %r6, %ptr* %t4
	%r10 = inttoptr %word 2 to %ptr
	%r11 = inttoptr %word 1 to %ptr
	%r12 = load %ptr, %ptr* %t4
	%r16 = bitcast %ptr %r12 to [0 x %ptr]*
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = getelementptr [0 x %ptr], [0 x %ptr]* %r16, %word 0, %word %r15
	%r13 = load %ptr, %ptr* %r14
	%r20 = ptrtoint %ptr %r13 to %word
	%r19 = ptrtoint %ptr %r10 to %word
	%r18 = or %word %r20, %r19
	%r17 = inttoptr %word %r18 to %ptr
	%r21 = inttoptr %word 1 to %ptr
	%r22 = load %ptr, %ptr* %t4
	%r26 = bitcast %ptr %r22 to [0 x %ptr]*
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = getelementptr [0 x %ptr], [0 x %ptr]* %r26, %word 0, %word %r25
	store %ptr %r17, %ptr* %r24
	%r23 = bitcast %ptr %r17 to %ptr
	%r27 = load %ptr, %ptr* %t3
	ret %ptr %r27
}
define %ptr @"gc/grow-root-vector"() {
	%t1 = alloca %ptr
	%r1 = inttoptr %word 32 to %ptr
	%r2 = load %ptr, %ptr* @"gc/root-max"
	%r3 = inttoptr %word 2 to %ptr
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = mul %word %r7, %r6
	%r4 = inttoptr %word %r5 to %ptr
	%r8 = call %ptr @max(%ptr %r1, %ptr %r4)
	store %ptr %r8, %ptr* @"gc/root-max"
	%r9 = inttoptr %word 4 to %ptr
	%r10 = inttoptr %word 8 to %ptr
	%r11 = load %ptr, %ptr* @"gc/root-max"
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = mul %word %r15, %r14
	%r12 = inttoptr %word %r13 to %ptr
	%r16 = call %ptr @"gc/allocate-opaque"(%ptr %r9, %ptr %r12)
	store %ptr %r16, %ptr* %t1
	%r17 = load %ptr, %ptr* %t1
	%r18 = load %ptr, %ptr* @"gc/roots"
	%r19 = inttoptr %word 8 to %ptr
	%r20 = load %ptr, %ptr* @"gc/root-count"
	%r24 = ptrtoint %ptr %r20 to %word
	%r23 = ptrtoint %ptr %r19 to %word
	%r22 = mul %word %r24, %r23
	%r21 = inttoptr %word %r22 to %ptr
	%ffi-cast25 = ptrtoint %ptr %r21 to i32
	%r26 = call %ptr @memcpy(%ptr %r17, %ptr %r18, i32 %ffi-cast25)
	%r27 = load %ptr, %ptr* %t1
	store %ptr %r27, %ptr* @"gc/roots"
	ret %ptr %r27
}
define %ptr @"gc/push-root"(%ptr %_ptr_) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	store %ptr %_ptr_, %ptr* %t1
	%r1 = inttoptr %word 0 to %ptr
	%r2 = load %ptr, %ptr* %t1
	%r3 = load %ptr, %ptr* @"gc/root-count"
	%r4 = load %ptr, %ptr* @"gc/roots"
	%r8 = bitcast %ptr %r4 to [0 x %ptr]*
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = getelementptr [0 x %ptr], [0 x %ptr]* %r8, %word 0, %word %r7
	store %ptr %r2, %ptr* %r6
	%r5 = bitcast %ptr %r2 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* @"gc/root-count"
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = add %word %r14, %r13
	%r11 = inttoptr %word %r12 to %ptr
	store %ptr %r11, %ptr* @"gc/root-count"
	%r15 = load %ptr, %ptr* @"gc/root-max"
	%r16 = load %ptr, %ptr* @"gc/root-count"
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = icmp eq %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	%r22 = ptrtoint %ptr %r17 to %word
	%r21 = icmp ne %word %r22, 0
	br i1 %r21, label %L345, label %L346
L345:
	%r23 = call %ptr @"gc/grow-root-vector"()
	store %ptr %r23, %ptr* %t2
	br label %L347
L346:
	%r24 = inttoptr %word 0 to %ptr
	store %ptr %r24, %ptr* %t2
	br label %L347
L347:
	%r25 = load %ptr, %ptr* %t2
	ret %ptr %r25
}
define %ptr @"gc/pop-root"(%ptr %_ptr_) {
	%t1 = alloca %ptr
	store %ptr %_ptr_, %ptr* %t1
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = inttoptr %word 1 to %ptr
	%r4 = load %ptr, %ptr* @"gc/root-count"
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = sub %word %r8, %r7
	%r5 = inttoptr %word %r6 to %ptr
	store %ptr %r5, %ptr* @"gc/root-count"
	%r9 = inttoptr %word 0 to %ptr
	%r10 = inttoptr %word 0 to %ptr
	%r11 = load %ptr, %ptr* @"gc/root-count"
	%r12 = load %ptr, %ptr* @"gc/roots"
	%r16 = bitcast %ptr %r12 to [0 x %ptr]*
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = getelementptr [0 x %ptr], [0 x %ptr]* %r16, %word 0, %word %r15
	store %ptr %r10, %ptr* %r14
	%r13 = bitcast %ptr %r10 to %ptr
	ret %ptr %r13
}
define %ptr @"gc/initialise"() {
	%t1 = alloca %ptr
	%r1 = load %ptr, %ptr* @"gc/minimum-growth-unit"
	%r2 = call %ptr @"gc/acquire-new-heap-space"(%ptr %r1)
	store %ptr %r2, %ptr* %t1
	%r3 = load %ptr, %ptr* %t1
	store %ptr %r3, %ptr* @"gc/memory-base"
	%r4 = load %ptr, %ptr* %t1
	store %ptr %r4, %ptr* @"gc/memory-last"
	%r5 = call %ptr @"gc/grow-root-vector"()
	ret %ptr %r5
}
@str357 = private unnamed_addr constant [53 x i8] c"get/type: encountered something unidentifiable: {%p}\00"
define %ptr @"get/type"(%ptr %_ptr_) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %_ptr_, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r2 = inttoptr %word 0 to %ptr
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = ptrtoint %ptr %r1 to %word
	%r4 = icmp eq %word %r6, %r5
	%r3 = inttoptr i1 %r4 to %ptr
	%r8 = ptrtoint %ptr %r3 to %word
	%r7 = icmp ne %word %r8, 0
	br i1 %r7, label %L348, label %L349
L348:
	%r9 = inttoptr %word 5 to %ptr
	store %ptr %r9, %ptr* %t2
	br label %L350
L349:
	%r10 = inttoptr %word 7 to %ptr
	%r11 = load %ptr, %ptr* %t1
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = and %word %r15, %r14
	%r12 = inttoptr %word %r13 to %ptr
	%r16 = inttoptr %word 0 to %ptr
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r12 to %word
	%r18 = icmp eq %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	%r22 = ptrtoint %ptr %r17 to %word
	%r21 = icmp ne %word %r22, 0
	br i1 %r21, label %L351, label %L352
L351:
	%r23 = inttoptr %word 32 to %ptr
	%r24 = load %ptr, %ptr* %t1
	%r28 = ptrtoint %ptr %r24 to %word
	%r27 = ptrtoint %ptr %r23 to %word
	%r26 = sub %word %r28, %r27
	%r25 = inttoptr %word %r26 to %ptr
	store %ptr %r25, %ptr* %t4
	%r29 = inttoptr %word 0 to %ptr
	%r30 = inttoptr %word 0 to %ptr
	%r31 = inttoptr %word 3 to %ptr
	%r32 = load %ptr, %ptr* %t4
	%r36 = bitcast %ptr %r32 to [0 x %ptr]*
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = getelementptr [0 x %ptr], [0 x %ptr]* %r36, %word 0, %word %r35
	%r33 = load %ptr, %ptr* %r34
	store %ptr %r33, %ptr* %t3
	br label %L353
L352:
	%r37 = inttoptr %word 1 to %ptr
	%r38 = load %ptr, %ptr* %t1
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = and %word %r42, %r41
	%r39 = inttoptr %word %r40 to %ptr
	%r43 = inttoptr %word 1 to %ptr
	%r47 = ptrtoint %ptr %r43 to %word
	%r46 = ptrtoint %ptr %r39 to %word
	%r45 = icmp eq %word %r47, %r46
	%r44 = inttoptr i1 %r45 to %ptr
	%r49 = ptrtoint %ptr %r44 to %word
	%r48 = icmp ne %word %r49, 0
	br i1 %r48, label %L354, label %L355
L354:
	%r50 = inttoptr %word 6 to %ptr
	store %ptr %r50, %ptr* %t4
	br label %L356
L355:
	%r51 = getelementptr [53 x i8], [53 x i8]* @str357, %word 0, %word 0
	%r53 = load %ptr, %ptr* %t1
	%r54 = call %ptr @fatal1(%ptr %r51, %ptr %r53)
	store %ptr %r54, %ptr* %t4
	br label %L356
L356:
	%r55 = load %ptr, %ptr* %t4
	store %ptr %r55, %ptr* %t3
	br label %L353
L353:
	%r56 = load %ptr, %ptr* %t3
	store %ptr %r56, %ptr* %t2
	br label %L350
L350:
	%r57 = load %ptr, %ptr* %t2
	ret %ptr %r57
}
@str360 = private unnamed_addr constant [57 x i8] c"kernel get/put type error: expected type id %ld, got %ld\00"
define %ptr @"k/%accessor-typecheck"(%ptr %expected-type-id, %ptr %object) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %expected-type-id, %ptr* %t1
	store %ptr %object, %ptr* %t2
	%r1 = load %ptr, %ptr* %t2
	%r2 = call %ptr @"get/type"(%ptr %r1)
	store %ptr %r2, %ptr* %t3
	%r3 = inttoptr %word 0 to %ptr
	store %ptr %r3, %ptr* %t4
	%r4 = load %ptr, %ptr* %t1
	%r5 = load %ptr, %ptr* %t3
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = icmp eq %word %r9, %r8
	%r6 = inttoptr i1 %r7 to %ptr
	store %ptr %r6, %ptr* %t4
	%r10 = inttoptr %word 0 to %ptr
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = ptrtoint %ptr %r6 to %word
	%r12 = icmp eq %word %r14, %r13
	%r11 = inttoptr i1 %r12 to %ptr
	%r16 = ptrtoint %ptr %r11 to %word
	%r15 = icmp ne %word %r16, 0
	br i1 %r15, label %L359, label %L358
L359:
	%r17 = getelementptr [57 x i8], [57 x i8]* @str360, %word 0, %word 0
	%r19 = load %ptr, %ptr* %t1
	%r20 = load %ptr, %ptr* %t3
	%r21 = call %ptr @fatal2(%ptr %r17, %ptr %r19, %ptr %r20)
	store %ptr %r21, %ptr* %t4
	%r22 = inttoptr %word 0 to %ptr
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = icmp eq %word %r26, %r25
	%r23 = inttoptr i1 %r24 to %ptr
	%r28 = ptrtoint %ptr %r23 to %word
	%r27 = icmp ne %word %r28, 0
	br i1 %r27, label %L361, label %L358
L361:
	br label %L358
L358:
	%r29 = load %ptr, %ptr* %t4
	%r30 = load %ptr, %ptr* %t2
	ret %ptr %r30
}
@str367 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str368 = private unnamed_addr constant [27 x i8] c"k/car called on non-list: \00"
@str369 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @"k/car"(%ptr %list) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %list, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r3 = ptrtoint %ptr %r1 to %word
	%r2 = icmp ne %word %r3, 0
	br i1 %r2, label %L362, label %L363
L362:
	%r4 = inttoptr %word 0 to %ptr
	store %ptr %r4, %ptr* %t3
	%r5 = load %ptr, %ptr* %t1
	%r6 = call %ptr @"get/type"(%ptr %r5)
	%r7 = inttoptr %word 19 to %ptr
	%r11 = ptrtoint %ptr %r7 to %word
	%r10 = ptrtoint %ptr %r6 to %word
	%r9 = icmp eq %word %r11, %r10
	%r8 = inttoptr i1 %r9 to %ptr
	store %ptr %r8, %ptr* %t3
	%r12 = inttoptr %word 0 to %ptr
	%r16 = ptrtoint %ptr %r12 to %word
	%r15 = ptrtoint %ptr %r8 to %word
	%r14 = icmp eq %word %r16, %r15
	%r13 = inttoptr i1 %r14 to %ptr
	%r18 = ptrtoint %ptr %r13 to %word
	%r17 = icmp ne %word %r18, 0
	br i1 %r17, label %L366, label %L365
L366:
	%r19 = getelementptr [9 x i8], [9 x i8]* @str367, %word 0, %word 0
	%r21 = call i32 (%ptr, ...) @printf(%ptr %r19)
	%r22 = sext i32 %r21 to %word
	%r23 = inttoptr %word %r22 to %ptr
	%r24 = getelementptr [27 x i8], [27 x i8]* @str368, %word 0, %word 0
	%r26 = call i32 (%ptr, ...) @printf(%ptr %r24)
	%r27 = sext i32 %r26 to %word
	%r28 = inttoptr %word %r27 to %ptr
	%r29 = load %ptr, %ptr* %t1
	%r30 = call %ptr @"k/print"(%ptr %r29)
	%r31 = getelementptr [2 x i8], [2 x i8]* @str369, %word 0, %word 0
	%r33 = call i32 (%ptr, ...) @printf(%ptr %r31)
	%r34 = sext i32 %r33 to %word
	%r35 = inttoptr %word %r34 to %ptr
	%r36 = call %ptr @die()
	store %ptr %r36, %ptr* %t3
	%r37 = inttoptr %word 0 to %ptr
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = ptrtoint %ptr %r36 to %word
	%r39 = icmp eq %word %r41, %r40
	%r38 = inttoptr i1 %r39 to %ptr
	%r43 = ptrtoint %ptr %r38 to %word
	%r42 = icmp ne %word %r43, 0
	br i1 %r42, label %L370, label %L365
L370:
	br label %L365
L365:
	%r44 = load %ptr, %ptr* %t3
	%r45 = inttoptr %word 0 to %ptr
	%r46 = load %ptr, %ptr* %t1
	%r50 = bitcast %ptr %r46 to [0 x %ptr]*
	%r49 = ptrtoint %ptr %r45 to %word
	%r48 = getelementptr [0 x %ptr], [0 x %ptr]* %r50, %word 0, %word %r49
	%r47 = load %ptr, %ptr* %r48
	store %ptr %r47, %ptr* %t2
	br label %L364
L363:
	%r51 = inttoptr %word 0 to %ptr
	store %ptr %r51, %ptr* %t2
	br label %L364
L364:
	%r52 = load %ptr, %ptr* %t2
	ret %ptr %r52
}
@str376 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str377 = private unnamed_addr constant [27 x i8] c"k/cdr called on non-list: \00"
@str378 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @"k/cdr"(%ptr %list) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %list, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r3 = ptrtoint %ptr %r1 to %word
	%r2 = icmp ne %word %r3, 0
	br i1 %r2, label %L371, label %L372
L371:
	%r4 = inttoptr %word 0 to %ptr
	store %ptr %r4, %ptr* %t3
	%r5 = load %ptr, %ptr* %t1
	%r6 = call %ptr @"get/type"(%ptr %r5)
	%r7 = inttoptr %word 19 to %ptr
	%r11 = ptrtoint %ptr %r7 to %word
	%r10 = ptrtoint %ptr %r6 to %word
	%r9 = icmp eq %word %r11, %r10
	%r8 = inttoptr i1 %r9 to %ptr
	store %ptr %r8, %ptr* %t3
	%r12 = inttoptr %word 0 to %ptr
	%r16 = ptrtoint %ptr %r12 to %word
	%r15 = ptrtoint %ptr %r8 to %word
	%r14 = icmp eq %word %r16, %r15
	%r13 = inttoptr i1 %r14 to %ptr
	%r18 = ptrtoint %ptr %r13 to %word
	%r17 = icmp ne %word %r18, 0
	br i1 %r17, label %L375, label %L374
L375:
	%r19 = getelementptr [9 x i8], [9 x i8]* @str376, %word 0, %word 0
	%r21 = call i32 (%ptr, ...) @printf(%ptr %r19)
	%r22 = sext i32 %r21 to %word
	%r23 = inttoptr %word %r22 to %ptr
	%r24 = getelementptr [27 x i8], [27 x i8]* @str377, %word 0, %word 0
	%r26 = call i32 (%ptr, ...) @printf(%ptr %r24)
	%r27 = sext i32 %r26 to %word
	%r28 = inttoptr %word %r27 to %ptr
	%r29 = load %ptr, %ptr* %t1
	%r30 = call %ptr @"k/print"(%ptr %r29)
	%r31 = getelementptr [2 x i8], [2 x i8]* @str378, %word 0, %word 0
	%r33 = call i32 (%ptr, ...) @printf(%ptr %r31)
	%r34 = sext i32 %r33 to %word
	%r35 = inttoptr %word %r34 to %ptr
	%r36 = call %ptr @die()
	store %ptr %r36, %ptr* %t3
	%r37 = inttoptr %word 0 to %ptr
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = ptrtoint %ptr %r36 to %word
	%r39 = icmp eq %word %r41, %r40
	%r38 = inttoptr i1 %r39 to %ptr
	%r43 = ptrtoint %ptr %r38 to %word
	%r42 = icmp ne %word %r43, 0
	br i1 %r42, label %L379, label %L374
L379:
	br label %L374
L374:
	%r44 = load %ptr, %ptr* %t3
	%r45 = inttoptr %word 1 to %ptr
	%r46 = load %ptr, %ptr* %t1
	%r50 = bitcast %ptr %r46 to [0 x %ptr]*
	%r49 = ptrtoint %ptr %r45 to %word
	%r48 = getelementptr [0 x %ptr], [0 x %ptr]* %r50, %word 0, %word %r49
	%r47 = load %ptr, %ptr* %r48
	store %ptr %r47, %ptr* %t2
	br label %L373
L372:
	%r51 = inttoptr %word 0 to %ptr
	store %ptr %r51, %ptr* %t2
	br label %L373
L373:
	%r52 = load %ptr, %ptr* %t2
	ret %ptr %r52
}
define %ptr @"k/caar"(%ptr %list) {
	%t1 = alloca %ptr
	store %ptr %list, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"k/car"(%ptr %r1)
	%r3 = call %ptr @"k/car"(%ptr %r2)
	ret %ptr %r3
}
define %ptr @"k/cadr"(%ptr %list) {
	%t1 = alloca %ptr
	store %ptr %list, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"k/cdr"(%ptr %r1)
	%r3 = call %ptr @"k/car"(%ptr %r2)
	ret %ptr %r3
}
define %ptr @"k/cddr"(%ptr %list) {
	%t1 = alloca %ptr
	store %ptr %list, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"k/cdr"(%ptr %r1)
	%r3 = call %ptr @"k/cdr"(%ptr %r2)
	ret %ptr %r3
}
define %ptr @"k/caddr"(%ptr %list) {
	%t1 = alloca %ptr
	store %ptr %list, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"k/cdr"(%ptr %r1)
	%r3 = call %ptr @"k/cdr"(%ptr %r2)
	%r4 = call %ptr @"k/car"(%ptr %r3)
	ret %ptr %r4
}
define %ptr @"k/cadddr"(%ptr %list) {
	%t1 = alloca %ptr
	store %ptr %list, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"k/cdr"(%ptr %r1)
	%r3 = call %ptr @"k/cdr"(%ptr %r2)
	%r4 = call %ptr @"k/cdr"(%ptr %r3)
	%r5 = call %ptr @"k/car"(%ptr %r4)
	ret %ptr %r5
}
define %ptr @"new-<target-vm-pointer>"(%ptr %bits) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	store %ptr %bits, %ptr* %t1
	%r1 = inttoptr %word 17 to %ptr
	%r2 = inttoptr %word 8 to %ptr
	%r3 = call %ptr @"gc/allocate-opaque"(%ptr %r1, %ptr %r2)
	store %ptr %r3, %ptr* %t2
	%r4 = load %ptr, %ptr* %t1
	%r5 = inttoptr %word 0 to %ptr
	%r6 = load %ptr, %ptr* %t2
	%r10 = bitcast %ptr %r6 to [0 x %ptr]*
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = getelementptr [0 x %ptr], [0 x %ptr]* %r10, %word 0, %word %r9
	store %ptr %r4, %ptr* %r8
	%r7 = bitcast %ptr %r4 to %ptr
	%r11 = load %ptr, %ptr* %t2
	ret %ptr %r11
}
define %ptr @"new-<pair>"(%ptr %head, %ptr %tail) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %head, %ptr* %t1
	store %ptr %tail, %ptr* %t2
	%r1 = inttoptr %word 19 to %ptr
	%r2 = inttoptr %word 16 to %ptr
	%r3 = call %ptr @"gc/allocate"(%ptr %r1, %ptr %r2)
	store %ptr %r3, %ptr* %t3
	%r4 = load %ptr, %ptr* %t1
	%r5 = inttoptr %word 0 to %ptr
	%r6 = load %ptr, %ptr* %t3
	%r10 = bitcast %ptr %r6 to [0 x %ptr]*
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = getelementptr [0 x %ptr], [0 x %ptr]* %r10, %word 0, %word %r9
	store %ptr %r4, %ptr* %r8
	%r7 = bitcast %ptr %r4 to %ptr
	%r11 = load %ptr, %ptr* %t2
	%r12 = inttoptr %word 1 to %ptr
	%r13 = load %ptr, %ptr* %t3
	%r17 = bitcast %ptr %r13 to [0 x %ptr]*
	%r16 = ptrtoint %ptr %r12 to %word
	%r15 = getelementptr [0 x %ptr], [0 x %ptr]* %r17, %word 0, %word %r16
	store %ptr %r11, %ptr* %r15
	%r14 = bitcast %ptr %r11 to %ptr
	%r18 = load %ptr, %ptr* %t3
	ret %ptr %r18
}
define %ptr @"new-<string>-of-length"(%ptr %len) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %len, %ptr* %t1
	%r1 = inttoptr %word 8 to %ptr
	%r2 = inttoptr %word 16 to %ptr
	%r3 = call %ptr @"gc/allocate"(%ptr %r1, %ptr %r2)
	store %ptr %r3, %ptr* %t2
	%r5 = getelementptr %ptr, %ptr* %t2, %word 0
	%r4 = bitcast %ptr* %r5 to %ptr
	%r6 = call %ptr @"gc/push-root"(%ptr %r4)
	%r7 = inttoptr %word 1 to %ptr
	%r8 = inttoptr %word 1 to %ptr
	%r9 = load %ptr, %ptr* %t1
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = shl %word %r13, %r12
	%r10 = inttoptr %word %r11 to %ptr
	%r17 = ptrtoint %ptr %r10 to %word
	%r16 = ptrtoint %ptr %r7 to %word
	%r15 = add %word %r17, %r16
	%r14 = inttoptr %word %r15 to %ptr
	%r18 = inttoptr %word 0 to %ptr
	%r19 = load %ptr, %ptr* %t2
	%r23 = bitcast %ptr %r19 to [0 x %ptr]*
	%r22 = ptrtoint %ptr %r18 to %word
	%r21 = getelementptr [0 x %ptr], [0 x %ptr]* %r23, %word 0, %word %r22
	store %ptr %r14, %ptr* %r21
	%r20 = bitcast %ptr %r14 to %ptr
	%r24 = inttoptr %word 0 to %ptr
	%r25 = load %ptr, %ptr* %t1
	%r29 = ptrtoint %ptr %r25 to %word
	%r28 = ptrtoint %ptr %r24 to %word
	%r27 = icmp sgt %word %r29, %r28
	%r26 = inttoptr i1 %r27 to %ptr
	%r31 = ptrtoint %ptr %r26 to %word
	%r30 = icmp ne %word %r31, 0
	br i1 %r30, label %L380, label %L381
L380:
	%r32 = inttoptr %word 4 to %ptr
	%r33 = load %ptr, %ptr* %t1
	%r34 = call %ptr @"gc/allocate-opaque"(%ptr %r32, %ptr %r33)
	%r35 = inttoptr %word 1 to %ptr
	%r36 = load %ptr, %ptr* %t2
	%r40 = bitcast %ptr %r36 to [0 x %ptr]*
	%r39 = ptrtoint %ptr %r35 to %word
	%r38 = getelementptr [0 x %ptr], [0 x %ptr]* %r40, %word 0, %word %r39
	store %ptr %r34, %ptr* %r38
	%r37 = bitcast %ptr %r34 to %ptr
	store %ptr %r37, %ptr* %t3
	br label %L382
L381:
	%r41 = inttoptr %word 0 to %ptr
	store %ptr %r41, %ptr* %t3
	br label %L382
L382:
	%r42 = load %ptr, %ptr* %t3
	%r43 = load %ptr, %ptr* %t2
	store %ptr %r43, %ptr* %t3
	%r45 = getelementptr %ptr, %ptr* %t2, %word 0
	%r44 = bitcast %ptr* %r45 to %ptr
	%r46 = call %ptr @"gc/pop-root"(%ptr %r44)
	%r47 = load %ptr, %ptr* %t3
	ret %ptr %r47
}
define %ptr @"new-<string>-from-cstring"(%ptr %cstr) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %cstr, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r2 = call i32 @strlen(%ptr %r1)
	%r3 = sext i32 %r2 to %word
	%r4 = inttoptr %word %r3 to %ptr
	store %ptr %r4, %ptr* %t2
	%r5 = load %ptr, %ptr* %t2
	%r6 = call %ptr @"new-<string>-of-length"(%ptr %r5)
	store %ptr %r6, %ptr* %t3
	%r7 = inttoptr %word 1 to %ptr
	%r8 = load %ptr, %ptr* %t3
	%r12 = bitcast %ptr %r8 to [0 x %ptr]*
	%r11 = ptrtoint %ptr %r7 to %word
	%r10 = getelementptr [0 x %ptr], [0 x %ptr]* %r12, %word 0, %word %r11
	%r9 = load %ptr, %ptr* %r10
	%r13 = load %ptr, %ptr* %t1
	%r14 = load %ptr, %ptr* %t2
	%ffi-cast15 = ptrtoint %ptr %r14 to i32
	%r16 = call %ptr @memcpy(%ptr %r9, %ptr %r13, i32 %ffi-cast15)
	%r17 = load %ptr, %ptr* %t3
	ret %ptr %r17
}
define %ptr @"new-<symbol>"(%ptr %cstr) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %cstr, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r2 = call i32 @strlen(%ptr %r1)
	%r3 = sext i32 %r2 to %word
	%r4 = inttoptr %word %r3 to %ptr
	store %ptr %r4, %ptr* %t2
	%r5 = inttoptr %word 18 to %ptr
	%r6 = inttoptr %word 8 to %ptr
	%r7 = call %ptr @"gc/allocate"(%ptr %r5, %ptr %r6)
	store %ptr %r7, %ptr* %t3
	%r9 = getelementptr %ptr, %ptr* %t3, %word 0
	%r8 = bitcast %ptr* %r9 to %ptr
	%r10 = call %ptr @"gc/push-root"(%ptr %r8)
	%r11 = inttoptr %word 4 to %ptr
	%r12 = inttoptr %word 1 to %ptr
	%r13 = load %ptr, %ptr* %t2
	%r17 = ptrtoint %ptr %r13 to %word
	%r16 = ptrtoint %ptr %r12 to %word
	%r15 = add %word %r17, %r16
	%r14 = inttoptr %word %r15 to %ptr
	%r18 = call %ptr @"gc/allocate-opaque"(%ptr %r11, %ptr %r14)
	store %ptr %r18, %ptr* %t4
	%r20 = getelementptr %ptr, %ptr* %t4, %word 0
	%r19 = bitcast %ptr* %r20 to %ptr
	%r21 = call %ptr @"gc/push-root"(%ptr %r19)
	%r22 = load %ptr, %ptr* %t4
	%r23 = load %ptr, %ptr* %t1
	%r24 = inttoptr %word 1 to %ptr
	%r25 = load %ptr, %ptr* %t2
	%r29 = ptrtoint %ptr %r25 to %word
	%r28 = ptrtoint %ptr %r24 to %word
	%r27 = add %word %r29, %r28
	%r26 = inttoptr %word %r27 to %ptr
	%ffi-cast30 = ptrtoint %ptr %r26 to i32
	%r31 = call %ptr @memcpy(%ptr %r22, %ptr %r23, i32 %ffi-cast30)
	%r32 = load %ptr, %ptr* %t4
	%r33 = inttoptr %word 0 to %ptr
	%r34 = load %ptr, %ptr* %t3
	%r38 = bitcast %ptr %r34 to [0 x %ptr]*
	%r37 = ptrtoint %ptr %r33 to %word
	%r36 = getelementptr [0 x %ptr], [0 x %ptr]* %r38, %word 0, %word %r37
	store %ptr %r32, %ptr* %r36
	%r35 = bitcast %ptr %r32 to %ptr
	%r39 = load %ptr, %ptr* %t3
	store %ptr %r39, %ptr* %t5
	%r41 = getelementptr %ptr, %ptr* %t4, %word 0
	%r40 = bitcast %ptr* %r41 to %ptr
	%r42 = call %ptr @"gc/pop-root"(%ptr %r40)
	%r43 = load %ptr, %ptr* %t5
	store %ptr %r43, %ptr* %t4
	%r45 = getelementptr %ptr, %ptr* %t3, %word 0
	%r44 = bitcast %ptr* %r45 to %ptr
	%r46 = call %ptr @"gc/pop-root"(%ptr %r44)
	%r47 = load %ptr, %ptr* %t4
	ret %ptr %r47
}
define %ptr @"new-<array>"(%ptr %capacity) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %capacity, %ptr* %t1
	%r1 = inttoptr %word 7 to %ptr
	%r2 = inttoptr %word 16 to %ptr
	%r3 = call %ptr @"gc/allocate"(%ptr %r1, %ptr %r2)
	store %ptr %r3, %ptr* %t2
	%r5 = getelementptr %ptr, %ptr* %t2, %word 0
	%r4 = bitcast %ptr* %r5 to %ptr
	%r6 = call %ptr @"gc/push-root"(%ptr %r4)
	%r7 = inttoptr %word 1 to %ptr
	%r8 = inttoptr %word 1 to %ptr
	%r9 = inttoptr %word 0 to %ptr
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = shl %word %r13, %r12
	%r10 = inttoptr %word %r11 to %ptr
	%r17 = ptrtoint %ptr %r10 to %word
	%r16 = ptrtoint %ptr %r7 to %word
	%r15 = add %word %r17, %r16
	%r14 = inttoptr %word %r15 to %ptr
	%r18 = inttoptr %word 0 to %ptr
	%r19 = load %ptr, %ptr* %t2
	%r23 = bitcast %ptr %r19 to [0 x %ptr]*
	%r22 = ptrtoint %ptr %r18 to %word
	%r21 = getelementptr [0 x %ptr], [0 x %ptr]* %r23, %word 0, %word %r22
	store %ptr %r14, %ptr* %r21
	%r20 = bitcast %ptr %r14 to %ptr
	%r24 = inttoptr %word 0 to %ptr
	%r25 = load %ptr, %ptr* %t1
	%r29 = ptrtoint %ptr %r25 to %word
	%r28 = ptrtoint %ptr %r24 to %word
	%r27 = icmp sgt %word %r29, %r28
	%r26 = inttoptr i1 %r27 to %ptr
	%r31 = ptrtoint %ptr %r26 to %word
	%r30 = icmp ne %word %r31, 0
	br i1 %r30, label %L383, label %L384
L383:
	%r32 = inttoptr %word 4 to %ptr
	%r33 = inttoptr %word 8 to %ptr
	%r34 = load %ptr, %ptr* %t1
	%r38 = ptrtoint %ptr %r34 to %word
	%r37 = ptrtoint %ptr %r33 to %word
	%r36 = mul %word %r38, %r37
	%r35 = inttoptr %word %r36 to %ptr
	%r39 = call %ptr @"gc/allocate"(%ptr %r32, %ptr %r35)
	%r40 = inttoptr %word 1 to %ptr
	%r41 = load %ptr, %ptr* %t2
	%r45 = bitcast %ptr %r41 to [0 x %ptr]*
	%r44 = ptrtoint %ptr %r40 to %word
	%r43 = getelementptr [0 x %ptr], [0 x %ptr]* %r45, %word 0, %word %r44
	store %ptr %r39, %ptr* %r43
	%r42 = bitcast %ptr %r39 to %ptr
	store %ptr %r42, %ptr* %t3
	br label %L385
L384:
	%r46 = inttoptr %word 0 to %ptr
	store %ptr %r46, %ptr* %t3
	br label %L385
L385:
	%r47 = load %ptr, %ptr* %t3
	%r48 = load %ptr, %ptr* %t2
	store %ptr %r48, %ptr* %t3
	%r50 = getelementptr %ptr, %ptr* %t2, %word 0
	%r49 = bitcast %ptr* %r50 to %ptr
	%r51 = call %ptr @"gc/pop-root"(%ptr %r49)
	%r52 = load %ptr, %ptr* %t3
	ret %ptr %r52
}
define %ptr @"new-<expr>"(%ptr %parameters, %ptr %body, %ptr %env, %ptr %ctx) {
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %parameters, %ptr* %t1
	store %ptr %body, %ptr* %t2
	store %ptr %env, %ptr* %t3
	store %ptr %ctx, %ptr* %t4
	%r1 = inttoptr %word 9 to %ptr
	%r2 = inttoptr %word 40 to %ptr
	%r3 = call %ptr @"gc/allocate"(%ptr %r1, %ptr %r2)
	store %ptr %r3, %ptr* %t5
	%r4 = load %ptr, %ptr* %t1
	%r5 = inttoptr %word 0 to %ptr
	%r6 = load %ptr, %ptr* %t5
	%r10 = bitcast %ptr %r6 to [0 x %ptr]*
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = getelementptr [0 x %ptr], [0 x %ptr]* %r10, %word 0, %word %r9
	store %ptr %r4, %ptr* %r8
	%r7 = bitcast %ptr %r4 to %ptr
	%r11 = load %ptr, %ptr* %t2
	%r12 = inttoptr %word 1 to %ptr
	%r13 = load %ptr, %ptr* %t5
	%r17 = bitcast %ptr %r13 to [0 x %ptr]*
	%r16 = ptrtoint %ptr %r12 to %word
	%r15 = getelementptr [0 x %ptr], [0 x %ptr]* %r17, %word 0, %word %r16
	store %ptr %r11, %ptr* %r15
	%r14 = bitcast %ptr %r11 to %ptr
	%r18 = load %ptr, %ptr* %t3
	%r19 = inttoptr %word 2 to %ptr
	%r20 = load %ptr, %ptr* %t5
	%r24 = bitcast %ptr %r20 to [0 x %ptr]*
	%r23 = ptrtoint %ptr %r19 to %word
	%r22 = getelementptr [0 x %ptr], [0 x %ptr]* %r24, %word 0, %word %r23
	store %ptr %r18, %ptr* %r22
	%r21 = bitcast %ptr %r18 to %ptr
	%r25 = load %ptr, %ptr* %t4
	%r26 = inttoptr %word 3 to %ptr
	%r27 = load %ptr, %ptr* %t5
	%r31 = bitcast %ptr %r27 to [0 x %ptr]*
	%r30 = ptrtoint %ptr %r26 to %word
	%r29 = getelementptr [0 x %ptr], [0 x %ptr]* %r31, %word 0, %word %r30
	store %ptr %r25, %ptr* %r29
	%r28 = bitcast %ptr %r25 to %ptr
	%r32 = inttoptr %word 0 to %ptr
	%r33 = load %ptr, %ptr* %t5
	ret %ptr %r33
}
define %ptr @"new-<form>"(%ptr %fn, %ptr %sym) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %fn, %ptr* %t1
	store %ptr %sym, %ptr* %t2
	%r1 = inttoptr %word 10 to %ptr
	%r2 = inttoptr %word 16 to %ptr
	%r3 = call %ptr @"gc/allocate"(%ptr %r1, %ptr %r2)
	store %ptr %r3, %ptr* %t3
	%r4 = load %ptr, %ptr* %t1
	%r5 = inttoptr %word 0 to %ptr
	%r6 = load %ptr, %ptr* %t3
	%r10 = bitcast %ptr %r6 to [0 x %ptr]*
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = getelementptr [0 x %ptr], [0 x %ptr]* %r10, %word 0, %word %r9
	store %ptr %r4, %ptr* %r8
	%r7 = bitcast %ptr %r4 to %ptr
	%r11 = load %ptr, %ptr* %t2
	%r12 = inttoptr %word 1 to %ptr
	%r13 = load %ptr, %ptr* %t3
	%r17 = bitcast %ptr %r13 to [0 x %ptr]*
	%r16 = ptrtoint %ptr %r12 to %word
	%r15 = getelementptr [0 x %ptr], [0 x %ptr]* %r17, %word 0, %word %r16
	store %ptr %r11, %ptr* %r15
	%r14 = bitcast %ptr %r11 to %ptr
	%r18 = load %ptr, %ptr* %t3
	ret %ptr %r18
}
define %ptr @"new-<fixed>"(%ptr %fn) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	store %ptr %fn, %ptr* %t1
	%r1 = inttoptr %word 11 to %ptr
	%r2 = inttoptr %word 8 to %ptr
	%r3 = call %ptr @"gc/allocate"(%ptr %r1, %ptr %r2)
	store %ptr %r3, %ptr* %t2
	%r4 = load %ptr, %ptr* %t1
	%r5 = inttoptr %word 0 to %ptr
	%r6 = load %ptr, %ptr* %t2
	%r10 = bitcast %ptr %r6 to [0 x %ptr]*
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = getelementptr [0 x %ptr], [0 x %ptr]* %r10, %word 0, %word %r9
	store %ptr %r4, %ptr* %r8
	%r7 = bitcast %ptr %r4 to %ptr
	%r11 = load %ptr, %ptr* %t2
	ret %ptr %r11
}
define %ptr @"new-<subr>"(%ptr %_imp, %ptr %_name) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %_imp, %ptr* %t1
	store %ptr %_name, %ptr* %t2
	%r1 = inttoptr %word 12 to %ptr
	%r2 = inttoptr %word 16 to %ptr
	%r3 = call %ptr @"gc/allocate-opaque"(%ptr %r1, %ptr %r2)
	store %ptr %r3, %ptr* %t3
	%r4 = load %ptr, %ptr* %t1
	%r5 = inttoptr %word 0 to %ptr
	%r6 = load %ptr, %ptr* %t3
	%r10 = bitcast %ptr %r6 to [0 x %ptr]*
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = getelementptr [0 x %ptr], [0 x %ptr]* %r10, %word 0, %word %r9
	store %ptr %r4, %ptr* %r8
	%r7 = bitcast %ptr %r4 to %ptr
	%r11 = load %ptr, %ptr* %t2
	%r12 = inttoptr %word 1 to %ptr
	%r13 = load %ptr, %ptr* %t3
	%r17 = bitcast %ptr %r13 to [0 x %ptr]*
	%r16 = ptrtoint %ptr %r12 to %word
	%r15 = getelementptr [0 x %ptr], [0 x %ptr]* %r17, %word 0, %word %r16
	store %ptr %r11, %ptr* %r15
	%r14 = bitcast %ptr %r11 to %ptr
	%r18 = inttoptr %word 0 to %ptr
	%r19 = load %ptr, %ptr* %t3
	ret %ptr %r19
}
define %ptr @"new-<variable>"(%ptr %name, %ptr %value, %ptr %env, %ptr %index) {
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	store %ptr %name, %ptr* %t1
	store %ptr %value, %ptr* %t2
	store %ptr %env, %ptr* %t3
	store %ptr %index, %ptr* %t4
	%r1 = inttoptr %word 13 to %ptr
	%r2 = inttoptr %word 32 to %ptr
	%r3 = call %ptr @"gc/allocate"(%ptr %r1, %ptr %r2)
	store %ptr %r3, %ptr* %t5
	%r5 = getelementptr %ptr, %ptr* %t5, %word 0
	%r4 = bitcast %ptr* %r5 to %ptr
	%r6 = call %ptr @"gc/push-root"(%ptr %r4)
	%r7 = load %ptr, %ptr* %t1
	%r8 = inttoptr %word 0 to %ptr
	%r9 = load %ptr, %ptr* %t5
	%r13 = bitcast %ptr %r9 to [0 x %ptr]*
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = getelementptr [0 x %ptr], [0 x %ptr]* %r13, %word 0, %word %r12
	store %ptr %r7, %ptr* %r11
	%r10 = bitcast %ptr %r7 to %ptr
	%r14 = load %ptr, %ptr* %t2
	%r15 = inttoptr %word 1 to %ptr
	%r16 = load %ptr, %ptr* %t5
	%r20 = bitcast %ptr %r16 to [0 x %ptr]*
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = getelementptr [0 x %ptr], [0 x %ptr]* %r20, %word 0, %word %r19
	store %ptr %r14, %ptr* %r18
	%r17 = bitcast %ptr %r14 to %ptr
	%r21 = load %ptr, %ptr* %t3
	%r22 = inttoptr %word 2 to %ptr
	%r23 = load %ptr, %ptr* %t5
	%r27 = bitcast %ptr %r23 to [0 x %ptr]*
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = getelementptr [0 x %ptr], [0 x %ptr]* %r27, %word 0, %word %r26
	store %ptr %r21, %ptr* %r25
	%r24 = bitcast %ptr %r21 to %ptr
	%r28 = inttoptr %word 1 to %ptr
	%r29 = inttoptr %word 1 to %ptr
	%r30 = load %ptr, %ptr* %t4
	%r34 = ptrtoint %ptr %r30 to %word
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = shl %word %r34, %r33
	%r31 = inttoptr %word %r32 to %ptr
	%r38 = ptrtoint %ptr %r31 to %word
	%r37 = ptrtoint %ptr %r28 to %word
	%r36 = add %word %r38, %r37
	%r35 = inttoptr %word %r36 to %ptr
	%r39 = inttoptr %word 3 to %ptr
	%r40 = load %ptr, %ptr* %t5
	%r44 = bitcast %ptr %r40 to [0 x %ptr]*
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = getelementptr [0 x %ptr], [0 x %ptr]* %r44, %word 0, %word %r43
	store %ptr %r35, %ptr* %r42
	%r41 = bitcast %ptr %r35 to %ptr
	%r45 = load %ptr, %ptr* %t5
	store %ptr %r45, %ptr* %t6
	%r47 = getelementptr %ptr, %ptr* %t5, %word 0
	%r46 = bitcast %ptr* %r47 to %ptr
	%r48 = call %ptr @"gc/pop-root"(%ptr %r46)
	%r49 = load %ptr, %ptr* %t6
	ret %ptr %r49
}
define %ptr @"new-<env>"(%ptr %parent, %ptr %level, %ptr %offset) {
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %parent, %ptr* %t1
	store %ptr %level, %ptr* %t2
	store %ptr %offset, %ptr* %t3
	%r1 = inttoptr %word 14 to %ptr
	%r2 = inttoptr %word 40 to %ptr
	%r3 = call %ptr @"gc/allocate"(%ptr %r1, %ptr %r2)
	store %ptr %r3, %ptr* %t4
	%r5 = getelementptr %ptr, %ptr* %t4, %word 0
	%r4 = bitcast %ptr* %r5 to %ptr
	%r6 = call %ptr @"gc/push-root"(%ptr %r4)
	%r7 = load %ptr, %ptr* %t1
	%r8 = inttoptr %word 0 to %ptr
	%r9 = load %ptr, %ptr* %t4
	%r13 = bitcast %ptr %r9 to [0 x %ptr]*
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = getelementptr [0 x %ptr], [0 x %ptr]* %r13, %word 0, %word %r12
	store %ptr %r7, %ptr* %r11
	%r10 = bitcast %ptr %r7 to %ptr
	%r14 = inttoptr %word 1 to %ptr
	%r15 = inttoptr %word 1 to %ptr
	%r16 = load %ptr, %ptr* %t1
	%r18 = ptrtoint %ptr %r16 to %word
	%r17 = icmp ne %word %r18, 0
	br i1 %r17, label %L386, label %L387
L386:
	%r19 = load %ptr, %ptr* %t2
	%r20 = inttoptr %word 1 to %ptr
	%r21 = inttoptr %word 1 to %ptr
	%r22 = load %ptr, %ptr* %t1
	%r26 = bitcast %ptr %r22 to [0 x %ptr]*
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = getelementptr [0 x %ptr], [0 x %ptr]* %r26, %word 0, %word %r25
	%r23 = load %ptr, %ptr* %r24
	%r30 = ptrtoint %ptr %r23 to %word
	%r29 = ptrtoint %ptr %r20 to %word
	%r28 = ashr %word %r30, %r29
	%r27 = inttoptr %word %r28 to %ptr
	%r34 = ptrtoint %ptr %r27 to %word
	%r33 = ptrtoint %ptr %r19 to %word
	%r32 = add %word %r34, %r33
	%r31 = inttoptr %word %r32 to %ptr
	store %ptr %r31, %ptr* %t5
	br label %L388
L387:
	%r35 = inttoptr %word 0 to %ptr
	store %ptr %r35, %ptr* %t5
	br label %L388
L388:
	%r36 = load %ptr, %ptr* %t5
	%r40 = ptrtoint %ptr %r36 to %word
	%r39 = ptrtoint %ptr %r15 to %word
	%r38 = shl %word %r40, %r39
	%r37 = inttoptr %word %r38 to %ptr
	%r44 = ptrtoint %ptr %r37 to %word
	%r43 = ptrtoint %ptr %r14 to %word
	%r42 = add %word %r44, %r43
	%r41 = inttoptr %word %r42 to %ptr
	%r45 = inttoptr %word 1 to %ptr
	%r46 = load %ptr, %ptr* %t4
	%r50 = bitcast %ptr %r46 to [0 x %ptr]*
	%r49 = ptrtoint %ptr %r45 to %word
	%r48 = getelementptr [0 x %ptr], [0 x %ptr]* %r50, %word 0, %word %r49
	store %ptr %r41, %ptr* %r48
	%r47 = bitcast %ptr %r41 to %ptr
	%r51 = inttoptr %word 1 to %ptr
	%r52 = inttoptr %word 1 to %ptr
	%r53 = load %ptr, %ptr* %t3
	%r57 = ptrtoint %ptr %r53 to %word
	%r56 = ptrtoint %ptr %r52 to %word
	%r55 = shl %word %r57, %r56
	%r54 = inttoptr %word %r55 to %ptr
	%r61 = ptrtoint %ptr %r54 to %word
	%r60 = ptrtoint %ptr %r51 to %word
	%r59 = add %word %r61, %r60
	%r58 = inttoptr %word %r59 to %ptr
	%r62 = inttoptr %word 2 to %ptr
	%r63 = load %ptr, %ptr* %t4
	%r67 = bitcast %ptr %r63 to [0 x %ptr]*
	%r66 = ptrtoint %ptr %r62 to %word
	%r65 = getelementptr [0 x %ptr], [0 x %ptr]* %r67, %word 0, %word %r66
	store %ptr %r58, %ptr* %r65
	%r64 = bitcast %ptr %r58 to %ptr
	%r68 = inttoptr %word 0 to %ptr
	%r69 = call %ptr @"new-<array>"(%ptr %r68)
	%r70 = inttoptr %word 3 to %ptr
	%r71 = load %ptr, %ptr* %t4
	%r75 = bitcast %ptr %r71 to [0 x %ptr]*
	%r74 = ptrtoint %ptr %r70 to %word
	%r73 = getelementptr [0 x %ptr], [0 x %ptr]* %r75, %word 0, %word %r74
	store %ptr %r69, %ptr* %r73
	%r72 = bitcast %ptr %r69 to %ptr
	%r76 = load %ptr, %ptr* %t4
	store %ptr %r76, %ptr* %t5
	%r78 = getelementptr %ptr, %ptr* %t4, %word 0
	%r77 = bitcast %ptr* %r78 to %ptr
	%r79 = call %ptr @"gc/pop-root"(%ptr %r77)
	%r80 = load %ptr, %ptr* %t5
	ret %ptr %r80
}
define %ptr @"new-base-<context>"(%ptr %home, %ptr %caller, %ptr %env) {
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %home, %ptr* %t1
	store %ptr %caller, %ptr* %t2
	store %ptr %env, %ptr* %t3
	%r1 = inttoptr %word 15 to %ptr
	%r2 = inttoptr %word 40 to %ptr
	%r3 = call %ptr @"gc/allocate"(%ptr %r1, %ptr %r2)
	store %ptr %r3, %ptr* %t4
	%r5 = getelementptr %ptr, %ptr* %t4, %word 0
	%r4 = bitcast %ptr* %r5 to %ptr
	%r6 = call %ptr @"gc/push-root"(%ptr %r4)
	%r7 = load %ptr, %ptr* %t1
	%r8 = inttoptr %word 0 to %ptr
	%r9 = load %ptr, %ptr* %t4
	%r13 = bitcast %ptr %r9 to [0 x %ptr]*
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = getelementptr [0 x %ptr], [0 x %ptr]* %r13, %word 0, %word %r12
	store %ptr %r7, %ptr* %r11
	%r10 = bitcast %ptr %r7 to %ptr
	%r14 = load %ptr, %ptr* %t3
	%r15 = inttoptr %word 1 to %ptr
	%r16 = load %ptr, %ptr* %t4
	%r20 = bitcast %ptr %r16 to [0 x %ptr]*
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = getelementptr [0 x %ptr], [0 x %ptr]* %r20, %word 0, %word %r19
	store %ptr %r14, %ptr* %r18
	%r17 = bitcast %ptr %r14 to %ptr
	%r21 = inttoptr %word 0 to %ptr
	%r22 = call %ptr @"new-<array>"(%ptr %r21)
	%r23 = inttoptr %word 2 to %ptr
	%r24 = load %ptr, %ptr* %t4
	%r28 = bitcast %ptr %r24 to [0 x %ptr]*
	%r27 = ptrtoint %ptr %r23 to %word
	%r26 = getelementptr [0 x %ptr], [0 x %ptr]* %r28, %word 0, %word %r27
	store %ptr %r22, %ptr* %r26
	%r25 = bitcast %ptr %r22 to %ptr
	%r29 = load %ptr, %ptr* %t4
	store %ptr %r29, %ptr* %t5
	%r31 = getelementptr %ptr, %ptr* %t4, %word 0
	%r30 = bitcast %ptr* %r31 to %ptr
	%r32 = call %ptr @"gc/pop-root"(%ptr %r30)
	%r33 = load %ptr, %ptr* %t5
	ret %ptr %r33
}
define %ptr @"new-<context>"(%ptr %home, %ptr %caller, %ptr %env) {
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	store %ptr %home, %ptr* %t1
	store %ptr %caller, %ptr* %t2
	store %ptr %env, %ptr* %t3
	%r1 = inttoptr %word 0 to %ptr
	store %ptr %r1, %ptr* %t4
	%r2 = inttoptr %word 1 to %ptr
	store %ptr %r2, %ptr* %t6
	%r3 = load %ptr, %ptr* %t2
	store %ptr %r3, %ptr* %t6
	%r4 = inttoptr %word 0 to %ptr
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = icmp eq %word %r8, %r7
	%r5 = inttoptr i1 %r6 to %ptr
	%r10 = ptrtoint %ptr %r5 to %word
	%r9 = icmp ne %word %r10, 0
	br i1 %r9, label %L392, label %L393
L393:
	%r11 = inttoptr %word 3 to %ptr
	%r12 = load %ptr, %ptr* %t2
	%r16 = bitcast %ptr %r12 to [0 x %ptr]*
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = getelementptr [0 x %ptr], [0 x %ptr]* %r16, %word 0, %word %r15
	%r13 = load %ptr, %ptr* %r14
	store %ptr %r13, %ptr* %t4
	store %ptr %r13, %ptr* %t6
	%r17 = inttoptr %word 0 to %ptr
	%r21 = ptrtoint %ptr %r17 to %word
	%r20 = ptrtoint %ptr %r13 to %word
	%r19 = icmp eq %word %r21, %r20
	%r18 = inttoptr i1 %r19 to %ptr
	%r23 = ptrtoint %ptr %r18 to %word
	%r22 = icmp ne %word %r23, 0
	br i1 %r22, label %L392, label %L394
L394:
	br label %L392
L392:
	%r24 = load %ptr, %ptr* %t6
	%r26 = ptrtoint %ptr %r24 to %word
	%r25 = icmp ne %word %r26, 0
	br i1 %r25, label %L389, label %L390
L389:
	%r27 = load %ptr, %ptr* %t1
	%r28 = inttoptr %word 0 to %ptr
	%r29 = load %ptr, %ptr* %t4
	%r33 = bitcast %ptr %r29 to [0 x %ptr]*
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = getelementptr [0 x %ptr], [0 x %ptr]* %r33, %word 0, %word %r32
	store %ptr %r27, %ptr* %r31
	%r30 = bitcast %ptr %r27 to %ptr
	%r34 = load %ptr, %ptr* %t3
	%r35 = inttoptr %word 1 to %ptr
	%r36 = load %ptr, %ptr* %t4
	%r40 = bitcast %ptr %r36 to [0 x %ptr]*
	%r39 = ptrtoint %ptr %r35 to %word
	%r38 = getelementptr [0 x %ptr], [0 x %ptr]* %r40, %word 0, %word %r39
	store %ptr %r34, %ptr* %r38
	%r37 = bitcast %ptr %r34 to %ptr
	store %ptr %r37, %ptr* %t5
	br label %L391
L390:
	%r41 = load %ptr, %ptr* %t1
	%r42 = load %ptr, %ptr* %t2
	%r43 = load %ptr, %ptr* %t3
	%r44 = call %ptr @"new-base-<context>"(%ptr %r41, %ptr %r42, %ptr %r43)
	store %ptr %r44, %ptr* %t4
	%r45 = load %ptr, %ptr* %t2
	%r47 = ptrtoint %ptr %r45 to %word
	%r46 = icmp ne %word %r47, 0
	br i1 %r46, label %L395, label %L396
L395:
	%r48 = load %ptr, %ptr* %t4
	%r49 = inttoptr %word 3 to %ptr
	%r50 = load %ptr, %ptr* %t2
	%r54 = bitcast %ptr %r50 to [0 x %ptr]*
	%r53 = ptrtoint %ptr %r49 to %word
	%r52 = getelementptr [0 x %ptr], [0 x %ptr]* %r54, %word 0, %word %r53
	store %ptr %r48, %ptr* %r52
	%r51 = bitcast %ptr %r48 to %ptr
	store %ptr %r51, %ptr* %t6
	br label %L397
L396:
	%r55 = inttoptr %word 0 to %ptr
	store %ptr %r55, %ptr* %t6
	br label %L397
L397:
	%r56 = load %ptr, %ptr* %t6
	store %ptr %r56, %ptr* %t5
	br label %L391
L391:
	%r57 = load %ptr, %ptr* %t5
	%r58 = load %ptr, %ptr* %t4
	ret %ptr %r58
}
define %ptr @"k/concat-list"(%ptr %head, %ptr %tail) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %head, %ptr* %t1
	store %ptr %tail, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"get/type"(%ptr %r1)
	%r3 = inttoptr %word 19 to %ptr
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = icmp eq %word %r7, %r6
	%r4 = inttoptr i1 %r5 to %ptr
	%r9 = ptrtoint %ptr %r4 to %word
	%r8 = icmp ne %word %r9, 0
	br i1 %r8, label %L398, label %L399
L398:
	%r10 = inttoptr %word 1 to %ptr
	%r11 = load %ptr, %ptr* %t1
	%r15 = bitcast %ptr %r11 to [0 x %ptr]*
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = getelementptr [0 x %ptr], [0 x %ptr]* %r15, %word 0, %word %r14
	%r12 = load %ptr, %ptr* %r13
	%r16 = load %ptr, %ptr* %t2
	%r17 = call %ptr @"k/concat-list"(%ptr %r12, %ptr %r16)
	store %ptr %r17, %ptr* %t4
	%r19 = getelementptr %ptr, %ptr* %t4, %word 0
	%r18 = bitcast %ptr* %r19 to %ptr
	%r20 = call %ptr @"gc/push-root"(%ptr %r18)
	%r21 = inttoptr %word 0 to %ptr
	%r22 = load %ptr, %ptr* %t1
	%r26 = bitcast %ptr %r22 to [0 x %ptr]*
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = getelementptr [0 x %ptr], [0 x %ptr]* %r26, %word 0, %word %r25
	%r23 = load %ptr, %ptr* %r24
	%r27 = load %ptr, %ptr* %t4
	%r28 = call %ptr @"new-<pair>"(%ptr %r23, %ptr %r27)
	store %ptr %r28, %ptr* %t5
	%r30 = getelementptr %ptr, %ptr* %t4, %word 0
	%r29 = bitcast %ptr* %r30 to %ptr
	%r31 = call %ptr @"gc/pop-root"(%ptr %r29)
	%r32 = load %ptr, %ptr* %t5
	store %ptr %r32, %ptr* %t3
	br label %L400
L399:
	%r33 = load %ptr, %ptr* %t2
	store %ptr %r33, %ptr* %t3
	br label %L400
L400:
	%r34 = load %ptr, %ptr* %t3
	ret %ptr %r34
}
define %ptr @"k/array-length"(%ptr %obj) {
	%t1 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	%r1 = inttoptr %word 1 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	%r11 = ptrtoint %ptr %r4 to %word
	%r10 = ptrtoint %ptr %r1 to %word
	%r9 = ashr %word %r11, %r10
	%r8 = inttoptr %word %r9 to %ptr
	ret %ptr %r8
}
define %ptr @"k/array-at"(%ptr %obj, %ptr %idx) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	store %ptr %idx, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 1 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = load %ptr, %ptr* %t1
	%r9 = call %ptr @"k/array-length"(%ptr %r8)
	store %ptr %r9, %ptr* %t4
	%r10 = inttoptr %word 1 to %ptr
	store %ptr %r10, %ptr* %t5
	%r11 = load %ptr, %ptr* %t4
	%r12 = load %ptr, %ptr* %t2
	%r16 = ptrtoint %ptr %r12 to %word
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = icmp slt %word %r16, %r15
	%r13 = inttoptr i1 %r14 to %ptr
	store %ptr %r13, %ptr* %t5
	%r17 = inttoptr %word 0 to %ptr
	%r21 = ptrtoint %ptr %r17 to %word
	%r20 = ptrtoint %ptr %r13 to %word
	%r19 = icmp eq %word %r21, %r20
	%r18 = inttoptr i1 %r19 to %ptr
	%r23 = ptrtoint %ptr %r18 to %word
	%r22 = icmp ne %word %r23, 0
	br i1 %r22, label %L401, label %L402
L402:
	%r24 = load %ptr, %ptr* %t2
	%r25 = load %ptr, %ptr* %t3
	%r29 = bitcast %ptr %r25 to [0 x %ptr]*
	%r28 = ptrtoint %ptr %r24 to %word
	%r27 = getelementptr [0 x %ptr], [0 x %ptr]* %r29, %word 0, %word %r28
	%r26 = load %ptr, %ptr* %r27
	store %ptr %r26, %ptr* %t5
	%r30 = inttoptr %word 0 to %ptr
	%r34 = ptrtoint %ptr %r30 to %word
	%r33 = ptrtoint %ptr %r26 to %word
	%r32 = icmp eq %word %r34, %r33
	%r31 = inttoptr i1 %r32 to %ptr
	%r36 = ptrtoint %ptr %r31 to %word
	%r35 = icmp ne %word %r36, 0
	br i1 %r35, label %L401, label %L403
L403:
	br label %L401
L401:
	%r37 = load %ptr, %ptr* %t5
	ret %ptr %r37
}
define %ptr @"set-k/array-at"(%ptr %obj, %ptr %idx, %ptr %val) {
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t9 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	store %ptr %idx, %ptr* %t2
	store %ptr %val, %ptr* %t3
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 1 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t4
	%r8 = inttoptr %word 1 to %ptr
	%r9 = inttoptr %word 0 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = ptrtoint %ptr %r11 to %word
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = ashr %word %r18, %r17
	%r15 = inttoptr %word %r16 to %ptr
	store %ptr %r15, %ptr* %t5
	%r19 = load %ptr, %ptr* %t4
	%r21 = ptrtoint %ptr %r19 to %word
	%r20 = icmp ne %word %r21, 0
	br i1 %r20, label %L404, label %L405
L404:
	%r22 = inttoptr %word 8 to %ptr
	%r23 = load %ptr, %ptr* %t4
	%r24 = call %ptr @"gc/object-size"(%ptr %r23)
	%r28 = ptrtoint %ptr %r24 to %word
	%r27 = ptrtoint %ptr %r22 to %word
	%r26 = sdiv %word %r28, %r27
	%r25 = inttoptr %word %r26 to %ptr
	store %ptr %r25, %ptr* %t6
	br label %L406
L405:
	%r29 = inttoptr %word 0 to %ptr
	store %ptr %r29, %ptr* %t6
	br label %L406
L406:
	%r30 = load %ptr, %ptr* %t6
	store %ptr %r30, %ptr* %t6
	%r31 = load %ptr, %ptr* %t6
	%r32 = load %ptr, %ptr* %t2
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = icmp slt %word %r36, %r35
	%r33 = inttoptr i1 %r34 to %ptr
	%r38 = ptrtoint %ptr %r33 to %word
	%r37 = icmp ne %word %r38, 0
	br i1 %r37, label %L407, label %L408
L407:
	%r39 = inttoptr %word 0 to %ptr
	store %ptr %r39, %ptr* %t7
	br label %L409
L408:
	%r40 = load %ptr, %ptr* %t6
	%r41 = inttoptr %word 0 to %ptr
	%r45 = ptrtoint %ptr %r41 to %word
	%r44 = ptrtoint %ptr %r40 to %word
	%r43 = icmp eq %word %r45, %r44
	%r42 = inttoptr i1 %r43 to %ptr
	%r47 = ptrtoint %ptr %r42 to %word
	%r46 = icmp ne %word %r47, 0
	br i1 %r46, label %L410, label %L411
L410:
	%r48 = inttoptr %word 4 to %ptr
	store %ptr %r48, %ptr* %t6
	store %ptr %r48, %ptr* %t8
	br label %L412
L411:
	%r49 = inttoptr %word 0 to %ptr
	store %ptr %r49, %ptr* %t8
	br label %L412
L412:
	%r50 = load %ptr, %ptr* %t8
	br label %L414
L413:
	%r51 = inttoptr %word 2 to %ptr
	%r52 = load %ptr, %ptr* %t6
	%r56 = ptrtoint %ptr %r52 to %word
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = mul %word %r56, %r55
	%r53 = inttoptr %word %r54 to %ptr
	store %ptr %r53, %ptr* %t6
	br label %L414
L414:
	%r57 = load %ptr, %ptr* %t6
	%r58 = load %ptr, %ptr* %t2
	%r62 = ptrtoint %ptr %r58 to %word
	%r61 = ptrtoint %ptr %r57 to %word
	%r60 = icmp slt %word %r62, %r61
	%r59 = inttoptr i1 %r60 to %ptr
	%r66 = ptrtoint %ptr %r59 to %word
	%r65 = icmp eq %word %r66, 0
	%r64 = zext i1 %r65 to %word
	%r63 = inttoptr %word %r64 to %ptr
	%r68 = ptrtoint %ptr %r63 to %word
	%r67 = icmp ne %word %r68, 0
	br i1 %r67, label %L413, label %L415
L415:
	%r69 = inttoptr %word 4 to %ptr
	%r70 = inttoptr %word 8 to %ptr
	%r71 = load %ptr, %ptr* %t6
	%r75 = ptrtoint %ptr %r71 to %word
	%r74 = ptrtoint %ptr %r70 to %word
	%r73 = mul %word %r75, %r74
	%r72 = inttoptr %word %r73 to %ptr
	%r76 = call %ptr @"gc/allocate"(%ptr %r69, %ptr %r72)
	store %ptr %r76, %ptr* %t8
	%r78 = getelementptr %ptr, %ptr* %t8, %word 0
	%r77 = bitcast %ptr* %r78 to %ptr
	%r79 = call %ptr @"gc/push-root"(%ptr %r77)
	%r80 = load %ptr, %ptr* %t8
	%r81 = load %ptr, %ptr* %t4
	%r82 = inttoptr %word 8 to %ptr
	%r83 = load %ptr, %ptr* %t5
	%r87 = ptrtoint %ptr %r83 to %word
	%r86 = ptrtoint %ptr %r82 to %word
	%r85 = mul %word %r87, %r86
	%r84 = inttoptr %word %r85 to %ptr
	%ffi-cast88 = ptrtoint %ptr %r84 to i32
	%r89 = call %ptr @memcpy(%ptr %r80, %ptr %r81, i32 %ffi-cast88)
	%r90 = load %ptr, %ptr* %t8
	%r91 = inttoptr %word 1 to %ptr
	%r92 = load %ptr, %ptr* %t1
	%r96 = bitcast %ptr %r92 to [0 x %ptr]*
	%r95 = ptrtoint %ptr %r91 to %word
	%r94 = getelementptr [0 x %ptr], [0 x %ptr]* %r96, %word 0, %word %r95
	store %ptr %r90, %ptr* %r94
	%r93 = bitcast %ptr %r90 to %ptr
	store %ptr %r93, %ptr* %t4
	store %ptr %r93, %ptr* %t9
	%r98 = getelementptr %ptr, %ptr* %t8, %word 0
	%r97 = bitcast %ptr* %r98 to %ptr
	%r99 = call %ptr @"gc/pop-root"(%ptr %r97)
	%r100 = load %ptr, %ptr* %t9
	store %ptr %r100, %ptr* %t7
	br label %L409
L409:
	%r101 = load %ptr, %ptr* %t7
	%r102 = load %ptr, %ptr* %t2
	%r103 = load %ptr, %ptr* %t5
	%r107 = ptrtoint %ptr %r103 to %word
	%r106 = ptrtoint %ptr %r102 to %word
	%r105 = icmp sle %word %r107, %r106
	%r104 = inttoptr i1 %r105 to %ptr
	%r109 = ptrtoint %ptr %r104 to %word
	%r108 = icmp ne %word %r109, 0
	br i1 %r108, label %L416, label %L417
L416:
	%r110 = inttoptr %word 1 to %ptr
	%r111 = inttoptr %word 1 to %ptr
	%r112 = load %ptr, %ptr* %t2
	%r113 = inttoptr %word 1 to %ptr
	%r117 = ptrtoint %ptr %r113 to %word
	%r116 = ptrtoint %ptr %r112 to %word
	%r115 = add %word %r117, %r116
	%r114 = inttoptr %word %r115 to %ptr
	%r121 = ptrtoint %ptr %r114 to %word
	%r120 = ptrtoint %ptr %r111 to %word
	%r119 = shl %word %r121, %r120
	%r118 = inttoptr %word %r119 to %ptr
	%r125 = ptrtoint %ptr %r118 to %word
	%r124 = ptrtoint %ptr %r110 to %word
	%r123 = add %word %r125, %r124
	%r122 = inttoptr %word %r123 to %ptr
	%r126 = inttoptr %word 0 to %ptr
	%r127 = load %ptr, %ptr* %t1
	%r131 = bitcast %ptr %r127 to [0 x %ptr]*
	%r130 = ptrtoint %ptr %r126 to %word
	%r129 = getelementptr [0 x %ptr], [0 x %ptr]* %r131, %word 0, %word %r130
	store %ptr %r122, %ptr* %r129
	%r128 = bitcast %ptr %r122 to %ptr
	store %ptr %r128, %ptr* %t7
	br label %L418
L417:
	%r132 = inttoptr %word 0 to %ptr
	store %ptr %r132, %ptr* %t7
	br label %L418
L418:
	%r133 = load %ptr, %ptr* %t7
	%r134 = load %ptr, %ptr* %t3
	%r135 = load %ptr, %ptr* %t2
	%r136 = load %ptr, %ptr* %t4
	%r140 = bitcast %ptr %r136 to [0 x %ptr]*
	%r139 = ptrtoint %ptr %r135 to %word
	%r138 = getelementptr [0 x %ptr], [0 x %ptr]* %r140, %word 0, %word %r139
	store %ptr %r134, %ptr* %r138
	%r137 = bitcast %ptr %r134 to %ptr
	ret %ptr %r137
}
define %ptr @"k/array-append"(%ptr %obj, %ptr %val) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	store %ptr %val, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = load %ptr, %ptr* %t1
	%r3 = call %ptr @"k/array-length"(%ptr %r2)
	%r4 = load %ptr, %ptr* %t2
	%r5 = call %ptr @"set-k/array-at"(%ptr %r1, %ptr %r3, %ptr %r4)
	ret %ptr %r5
}
define %ptr @"k/array-insert"(%ptr %obj, %ptr %idx, %ptr %value) {
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	store %ptr %idx, %ptr* %t2
	store %ptr %value, %ptr* %t3
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"k/array-length"(%ptr %r1)
	store %ptr %r2, %ptr* %t4
	%r3 = load %ptr, %ptr* %t1
	%r4 = inttoptr %word 0 to %ptr
	%r5 = call %ptr @"k/array-append"(%ptr %r3, %ptr %r4)
	%r6 = load %ptr, %ptr* %t4
	%r7 = load %ptr, %ptr* %t2
	%r11 = ptrtoint %ptr %r7 to %word
	%r10 = ptrtoint %ptr %r6 to %word
	%r9 = icmp slt %word %r11, %r10
	%r8 = inttoptr i1 %r9 to %ptr
	%r13 = ptrtoint %ptr %r8 to %word
	%r12 = icmp ne %word %r13, 0
	br i1 %r12, label %L419, label %L420
L419:
	%r14 = inttoptr %word 1 to %ptr
	%r15 = load %ptr, %ptr* %t1
	%r19 = bitcast %ptr %r15 to [0 x %ptr]*
	%r18 = ptrtoint %ptr %r14 to %word
	%r17 = getelementptr [0 x %ptr], [0 x %ptr]* %r19, %word 0, %word %r18
	%r16 = load %ptr, %ptr* %r17
	store %ptr %r16, %ptr* %t6
	%r20 = inttoptr %word 8 to %ptr
	%r21 = load %ptr, %ptr* %t2
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ptrtoint %ptr %r20 to %word
	%r23 = mul %word %r25, %r24
	%r22 = inttoptr %word %r23 to %ptr
	%r26 = load %ptr, %ptr* %t6
	%r30 = ptrtoint %ptr %r26 to %word
	%r29 = ptrtoint %ptr %r22 to %word
	%r28 = add %word %r30, %r29
	%r27 = inttoptr %word %r28 to %ptr
	store %ptr %r27, %ptr* %t7
	%r31 = inttoptr %word 8 to %ptr
	%r32 = load %ptr, %ptr* %t7
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = add %word %r36, %r35
	%r33 = inttoptr %word %r34 to %ptr
	%r37 = load %ptr, %ptr* %t7
	%r38 = inttoptr %word 8 to %ptr
	%r39 = load %ptr, %ptr* %t2
	%r40 = load %ptr, %ptr* %t4
	%r44 = ptrtoint %ptr %r40 to %word
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = sub %word %r44, %r43
	%r41 = inttoptr %word %r42 to %ptr
	%r48 = ptrtoint %ptr %r41 to %word
	%r47 = ptrtoint %ptr %r38 to %word
	%r46 = mul %word %r48, %r47
	%r45 = inttoptr %word %r46 to %ptr
	%ffi-cast49 = ptrtoint %ptr %r45 to i32
	%r50 = call %ptr @memmove(%ptr %r33, %ptr %r37, i32 %ffi-cast49)
	store %ptr %r50, %ptr* %t5
	br label %L421
L420:
	%r51 = inttoptr %word 0 to %ptr
	store %ptr %r51, %ptr* %t5
	br label %L421
L421:
	%r52 = load %ptr, %ptr* %t5
	%r53 = load %ptr, %ptr* %t1
	%r54 = load %ptr, %ptr* %t2
	%r55 = load %ptr, %ptr* %t3
	%r56 = call %ptr @"set-k/array-at"(%ptr %r53, %ptr %r54, %ptr %r55)
	ret %ptr %r56
}
define %ptr @"k/array-ensure-zero-terminated"(%ptr %obj) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"k/array-length"(%ptr %r1)
	store %ptr %r2, %ptr* %t2
	%r3 = load %ptr, %ptr* %t1
	%r4 = load %ptr, %ptr* %t2
	%r5 = inttoptr %word 0 to %ptr
	%r6 = call %ptr @"set-k/array-at"(%ptr %r3, %ptr %r4, %ptr %r5)
	%r7 = inttoptr %word 1 to %ptr
	%r8 = inttoptr %word 1 to %ptr
	%r9 = load %ptr, %ptr* %t2
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = shl %word %r13, %r12
	%r10 = inttoptr %word %r11 to %ptr
	%r17 = ptrtoint %ptr %r10 to %word
	%r16 = ptrtoint %ptr %r7 to %word
	%r15 = add %word %r17, %r16
	%r14 = inttoptr %word %r15 to %ptr
	%r18 = inttoptr %word 0 to %ptr
	%r19 = load %ptr, %ptr* %t1
	%r23 = bitcast %ptr %r19 to [0 x %ptr]*
	%r22 = ptrtoint %ptr %r18 to %word
	%r21 = getelementptr [0 x %ptr], [0 x %ptr]* %r23, %word 0, %word %r22
	store %ptr %r14, %ptr* %r21
	%r20 = bitcast %ptr %r14 to %ptr
	%r24 = load %ptr, %ptr* %t1
	ret %ptr %r24
}
define %ptr @"k/string-length"(%ptr %obj) {
	%t1 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	%r1 = inttoptr %word 1 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	%r11 = ptrtoint %ptr %r4 to %word
	%r10 = ptrtoint %ptr %r1 to %word
	%r9 = ashr %word %r11, %r10
	%r8 = inttoptr %word %r9 to %ptr
	ret %ptr %r8
}
define %ptr @"k/string-at"(%ptr %obj, %ptr %idx) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	store %ptr %idx, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 1 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = load %ptr, %ptr* %t1
	%r9 = call %ptr @"k/string-length"(%ptr %r8)
	store %ptr %r9, %ptr* %t4
	%r10 = inttoptr %word 1 to %ptr
	store %ptr %r10, %ptr* %t5
	%r11 = load %ptr, %ptr* %t4
	%r12 = load %ptr, %ptr* %t2
	%r16 = ptrtoint %ptr %r12 to %word
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = icmp slt %word %r16, %r15
	%r13 = inttoptr i1 %r14 to %ptr
	store %ptr %r13, %ptr* %t5
	%r17 = inttoptr %word 0 to %ptr
	%r21 = ptrtoint %ptr %r17 to %word
	%r20 = ptrtoint %ptr %r13 to %word
	%r19 = icmp eq %word %r21, %r20
	%r18 = inttoptr i1 %r19 to %ptr
	%r23 = ptrtoint %ptr %r18 to %word
	%r22 = icmp ne %word %r23, 0
	br i1 %r22, label %L422, label %L423
L423:
	%r24 = load %ptr, %ptr* %t2
	%r25 = load %ptr, %ptr* %t3
	%r30 = bitcast %ptr %r25 to [0 x i8]*
	%r29 = ptrtoint %ptr %r24 to %word
	%r28 = getelementptr [0 x i8], [0 x i8]* %r30, %word 0, %word %r29
	%r27 = load i8, i8* %r28
	%r26 = inttoptr i8 %r27 to %ptr
	store %ptr %r26, %ptr* %t5
	%r31 = inttoptr %word 0 to %ptr
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = ptrtoint %ptr %r26 to %word
	%r33 = icmp eq %word %r35, %r34
	%r32 = inttoptr i1 %r33 to %ptr
	%r37 = ptrtoint %ptr %r32 to %word
	%r36 = icmp ne %word %r37, 0
	br i1 %r36, label %L422, label %L424
L424:
	br label %L422
L422:
	%r38 = load %ptr, %ptr* %t5
	ret %ptr %r38
}
define %ptr @"set-k/string-at"(%ptr %obj, %ptr %idx, %ptr %val) {
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t9 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	store %ptr %idx, %ptr* %t2
	store %ptr %val, %ptr* %t3
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 1 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t4
	%r8 = inttoptr %word 1 to %ptr
	%r9 = inttoptr %word 0 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = ptrtoint %ptr %r11 to %word
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = ashr %word %r18, %r17
	%r15 = inttoptr %word %r16 to %ptr
	store %ptr %r15, %ptr* %t5
	%r19 = load %ptr, %ptr* %t4
	%r21 = ptrtoint %ptr %r19 to %word
	%r20 = icmp ne %word %r21, 0
	br i1 %r20, label %L425, label %L426
L425:
	%r22 = inttoptr %word 1 to %ptr
	%r23 = load %ptr, %ptr* %t4
	%r24 = call %ptr @"gc/object-size"(%ptr %r23)
	%r28 = ptrtoint %ptr %r24 to %word
	%r27 = ptrtoint %ptr %r22 to %word
	%r26 = sdiv %word %r28, %r27
	%r25 = inttoptr %word %r26 to %ptr
	store %ptr %r25, %ptr* %t6
	br label %L427
L426:
	%r29 = inttoptr %word 0 to %ptr
	store %ptr %r29, %ptr* %t6
	br label %L427
L427:
	%r30 = load %ptr, %ptr* %t6
	store %ptr %r30, %ptr* %t6
	%r31 = load %ptr, %ptr* %t6
	%r32 = load %ptr, %ptr* %t2
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = icmp slt %word %r36, %r35
	%r33 = inttoptr i1 %r34 to %ptr
	%r38 = ptrtoint %ptr %r33 to %word
	%r37 = icmp ne %word %r38, 0
	br i1 %r37, label %L428, label %L429
L428:
	%r39 = inttoptr %word 0 to %ptr
	store %ptr %r39, %ptr* %t7
	br label %L430
L429:
	%r40 = load %ptr, %ptr* %t6
	%r41 = inttoptr %word 0 to %ptr
	%r45 = ptrtoint %ptr %r41 to %word
	%r44 = ptrtoint %ptr %r40 to %word
	%r43 = icmp eq %word %r45, %r44
	%r42 = inttoptr i1 %r43 to %ptr
	%r47 = ptrtoint %ptr %r42 to %word
	%r46 = icmp ne %word %r47, 0
	br i1 %r46, label %L431, label %L432
L431:
	%r48 = inttoptr %word 4 to %ptr
	store %ptr %r48, %ptr* %t6
	store %ptr %r48, %ptr* %t8
	br label %L433
L432:
	%r49 = inttoptr %word 0 to %ptr
	store %ptr %r49, %ptr* %t8
	br label %L433
L433:
	%r50 = load %ptr, %ptr* %t8
	br label %L435
L434:
	%r51 = inttoptr %word 2 to %ptr
	%r52 = load %ptr, %ptr* %t6
	%r56 = ptrtoint %ptr %r52 to %word
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = mul %word %r56, %r55
	%r53 = inttoptr %word %r54 to %ptr
	store %ptr %r53, %ptr* %t6
	br label %L435
L435:
	%r57 = load %ptr, %ptr* %t6
	%r58 = load %ptr, %ptr* %t2
	%r62 = ptrtoint %ptr %r58 to %word
	%r61 = ptrtoint %ptr %r57 to %word
	%r60 = icmp slt %word %r62, %r61
	%r59 = inttoptr i1 %r60 to %ptr
	%r66 = ptrtoint %ptr %r59 to %word
	%r65 = icmp eq %word %r66, 0
	%r64 = zext i1 %r65 to %word
	%r63 = inttoptr %word %r64 to %ptr
	%r68 = ptrtoint %ptr %r63 to %word
	%r67 = icmp ne %word %r68, 0
	br i1 %r67, label %L434, label %L436
L436:
	%r69 = inttoptr %word 4 to %ptr
	%r70 = inttoptr %word 1 to %ptr
	%r71 = load %ptr, %ptr* %t6
	%r75 = ptrtoint %ptr %r71 to %word
	%r74 = ptrtoint %ptr %r70 to %word
	%r73 = mul %word %r75, %r74
	%r72 = inttoptr %word %r73 to %ptr
	%r76 = call %ptr @"gc/allocate-opaque"(%ptr %r69, %ptr %r72)
	store %ptr %r76, %ptr* %t8
	%r78 = getelementptr %ptr, %ptr* %t8, %word 0
	%r77 = bitcast %ptr* %r78 to %ptr
	%r79 = call %ptr @"gc/push-root"(%ptr %r77)
	%r80 = load %ptr, %ptr* %t8
	%r81 = load %ptr, %ptr* %t4
	%r82 = load %ptr, %ptr* %t5
	%ffi-cast83 = ptrtoint %ptr %r82 to i32
	%r84 = call %ptr @memcpy(%ptr %r80, %ptr %r81, i32 %ffi-cast83)
	%r85 = load %ptr, %ptr* %t8
	%r86 = inttoptr %word 1 to %ptr
	%r87 = load %ptr, %ptr* %t1
	%r91 = bitcast %ptr %r87 to [0 x %ptr]*
	%r90 = ptrtoint %ptr %r86 to %word
	%r89 = getelementptr [0 x %ptr], [0 x %ptr]* %r91, %word 0, %word %r90
	store %ptr %r85, %ptr* %r89
	%r88 = bitcast %ptr %r85 to %ptr
	store %ptr %r88, %ptr* %t4
	store %ptr %r88, %ptr* %t9
	%r93 = getelementptr %ptr, %ptr* %t8, %word 0
	%r92 = bitcast %ptr* %r93 to %ptr
	%r94 = call %ptr @"gc/pop-root"(%ptr %r92)
	%r95 = load %ptr, %ptr* %t9
	store %ptr %r95, %ptr* %t7
	br label %L430
L430:
	%r96 = load %ptr, %ptr* %t7
	%r97 = load %ptr, %ptr* %t2
	%r98 = load %ptr, %ptr* %t5
	%r102 = ptrtoint %ptr %r98 to %word
	%r101 = ptrtoint %ptr %r97 to %word
	%r100 = icmp sle %word %r102, %r101
	%r99 = inttoptr i1 %r100 to %ptr
	%r104 = ptrtoint %ptr %r99 to %word
	%r103 = icmp ne %word %r104, 0
	br i1 %r103, label %L437, label %L438
L437:
	%r105 = inttoptr %word 1 to %ptr
	%r106 = inttoptr %word 1 to %ptr
	%r107 = load %ptr, %ptr* %t2
	%r108 = inttoptr %word 1 to %ptr
	%r112 = ptrtoint %ptr %r108 to %word
	%r111 = ptrtoint %ptr %r107 to %word
	%r110 = add %word %r112, %r111
	%r109 = inttoptr %word %r110 to %ptr
	%r116 = ptrtoint %ptr %r109 to %word
	%r115 = ptrtoint %ptr %r106 to %word
	%r114 = shl %word %r116, %r115
	%r113 = inttoptr %word %r114 to %ptr
	%r120 = ptrtoint %ptr %r113 to %word
	%r119 = ptrtoint %ptr %r105 to %word
	%r118 = add %word %r120, %r119
	%r117 = inttoptr %word %r118 to %ptr
	%r121 = inttoptr %word 0 to %ptr
	%r122 = load %ptr, %ptr* %t1
	%r126 = bitcast %ptr %r122 to [0 x %ptr]*
	%r125 = ptrtoint %ptr %r121 to %word
	%r124 = getelementptr [0 x %ptr], [0 x %ptr]* %r126, %word 0, %word %r125
	store %ptr %r117, %ptr* %r124
	%r123 = bitcast %ptr %r117 to %ptr
	store %ptr %r123, %ptr* %t7
	br label %L439
L438:
	%r127 = inttoptr %word 0 to %ptr
	store %ptr %r127, %ptr* %t7
	br label %L439
L439:
	%r128 = load %ptr, %ptr* %t7
	%r129 = load %ptr, %ptr* %t3
	%r130 = load %ptr, %ptr* %t2
	%r131 = load %ptr, %ptr* %t4
	%r137 = bitcast %ptr %r131 to [0 x i8]*
	%r136 = ptrtoint %ptr %r130 to %word
	%r135 = getelementptr [0 x i8], [0 x i8]* %r137, %word 0, %word %r136
	%r134 = ptrtoint %ptr %r129 to i8
	store i8 %r134, i8* %r135
	%r133 = zext i8 %r134 to %word
	%r132 = inttoptr %word %r133 to %ptr
	ret %ptr %r132
}
define %ptr @"k/string-append"(%ptr %obj, %ptr %val) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	store %ptr %val, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = load %ptr, %ptr* %t1
	%r3 = call %ptr @"k/string-length"(%ptr %r2)
	%r4 = load %ptr, %ptr* %t2
	%r5 = call %ptr @"set-k/string-at"(%ptr %r1, %ptr %r3, %ptr %r4)
	ret %ptr %r5
}
define %ptr @"k/string-insert"(%ptr %obj, %ptr %idx, %ptr %value) {
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	store %ptr %idx, %ptr* %t2
	store %ptr %value, %ptr* %t3
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"k/string-length"(%ptr %r1)
	store %ptr %r2, %ptr* %t4
	%r3 = load %ptr, %ptr* %t1
	%r4 = inttoptr %word 0 to %ptr
	%r5 = call %ptr @"k/string-append"(%ptr %r3, %ptr %r4)
	%r6 = load %ptr, %ptr* %t4
	%r7 = load %ptr, %ptr* %t2
	%r11 = ptrtoint %ptr %r7 to %word
	%r10 = ptrtoint %ptr %r6 to %word
	%r9 = icmp slt %word %r11, %r10
	%r8 = inttoptr i1 %r9 to %ptr
	%r13 = ptrtoint %ptr %r8 to %word
	%r12 = icmp ne %word %r13, 0
	br i1 %r12, label %L440, label %L441
L440:
	%r14 = inttoptr %word 1 to %ptr
	%r15 = load %ptr, %ptr* %t1
	%r19 = bitcast %ptr %r15 to [0 x %ptr]*
	%r18 = ptrtoint %ptr %r14 to %word
	%r17 = getelementptr [0 x %ptr], [0 x %ptr]* %r19, %word 0, %word %r18
	%r16 = load %ptr, %ptr* %r17
	store %ptr %r16, %ptr* %t6
	%r20 = inttoptr %word 1 to %ptr
	%r21 = load %ptr, %ptr* %t2
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ptrtoint %ptr %r20 to %word
	%r23 = mul %word %r25, %r24
	%r22 = inttoptr %word %r23 to %ptr
	%r26 = load %ptr, %ptr* %t6
	%r30 = ptrtoint %ptr %r26 to %word
	%r29 = ptrtoint %ptr %r22 to %word
	%r28 = add %word %r30, %r29
	%r27 = inttoptr %word %r28 to %ptr
	store %ptr %r27, %ptr* %t7
	%r31 = inttoptr %word 1 to %ptr
	%r32 = load %ptr, %ptr* %t7
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = add %word %r36, %r35
	%r33 = inttoptr %word %r34 to %ptr
	%r37 = load %ptr, %ptr* %t7
	%r38 = load %ptr, %ptr* %t2
	%r39 = load %ptr, %ptr* %t4
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = sub %word %r43, %r42
	%r40 = inttoptr %word %r41 to %ptr
	%ffi-cast44 = ptrtoint %ptr %r40 to i32
	%r45 = call %ptr @memmove(%ptr %r33, %ptr %r37, i32 %ffi-cast44)
	store %ptr %r45, %ptr* %t5
	br label %L442
L441:
	%r46 = inttoptr %word 0 to %ptr
	store %ptr %r46, %ptr* %t5
	br label %L442
L442:
	%r47 = load %ptr, %ptr* %t5
	%r48 = load %ptr, %ptr* %t1
	%r49 = load %ptr, %ptr* %t2
	%r50 = load %ptr, %ptr* %t3
	%r51 = call %ptr @"set-k/string-at"(%ptr %r48, %ptr %r49, %ptr %r50)
	ret %ptr %r51
}
define %ptr @"k/string-ensure-zero-terminated"(%ptr %obj) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"k/string-length"(%ptr %r1)
	store %ptr %r2, %ptr* %t2
	%r3 = load %ptr, %ptr* %t1
	%r4 = load %ptr, %ptr* %t2
	%r5 = inttoptr %word 0 to %ptr
	%r6 = call %ptr @"set-k/string-at"(%ptr %r3, %ptr %r4, %ptr %r5)
	%r7 = inttoptr %word 1 to %ptr
	%r8 = inttoptr %word 1 to %ptr
	%r9 = load %ptr, %ptr* %t2
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = shl %word %r13, %r12
	%r10 = inttoptr %word %r11 to %ptr
	%r17 = ptrtoint %ptr %r10 to %word
	%r16 = ptrtoint %ptr %r7 to %word
	%r15 = add %word %r17, %r16
	%r14 = inttoptr %word %r15 to %ptr
	%r18 = inttoptr %word 0 to %ptr
	%r19 = load %ptr, %ptr* %t1
	%r23 = bitcast %ptr %r19 to [0 x %ptr]*
	%r22 = ptrtoint %ptr %r18 to %word
	%r21 = getelementptr [0 x %ptr], [0 x %ptr]* %r23, %word 0, %word %r22
	store %ptr %r14, %ptr* %r21
	%r20 = bitcast %ptr %r14 to %ptr
	%r24 = load %ptr, %ptr* %t1
	ret %ptr %r24
}
define %ptr @array-binary-search(%ptr %array, %ptr %item, %ptr %comparator, %ptr %inserter) {
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t6 = alloca %ptr
	%t5 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t9 = alloca %ptr
	%t10 = alloca %ptr
	%t11 = alloca %ptr
	store %ptr %array, %ptr* %t1
	store %ptr %item, %ptr* %t2
	store %ptr %comparator, %ptr* %t3
	store %ptr %inserter, %ptr* %t4
	%r1 = inttoptr %word 0 to %ptr
	store %ptr %r1, %ptr* %t5
	%r2 = inttoptr %word 1 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r4 = call %ptr @"k/array-length"(%ptr %r3)
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = ptrtoint %ptr %r2 to %word
	%r6 = sub %word %r8, %r7
	%r5 = inttoptr %word %r6 to %ptr
	store %ptr %r5, %ptr* %t6
	br label %L444
L443:
	%r9 = inttoptr %word 2 to %ptr
	%r10 = load %ptr, %ptr* %t6
	%r11 = load %ptr, %ptr* %t5
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = add %word %r15, %r14
	%r12 = inttoptr %word %r13 to %ptr
	%r19 = ptrtoint %ptr %r12 to %word
	%r18 = ptrtoint %ptr %r9 to %word
	%r17 = sdiv %word %r19, %r18
	%r16 = inttoptr %word %r17 to %ptr
	store %ptr %r16, %ptr* %t7
	%r20 = load %ptr, %ptr* %t1
	%r21 = load %ptr, %ptr* %t7
	%r22 = call %ptr @"k/array-at"(%ptr %r20, %ptr %r21)
	store %ptr %r22, %ptr* %t8
	%r23 = load %ptr, %ptr* %t2
	%r24 = load %ptr, %ptr* %t8
	%r25 = load %ptr, %ptr* %t3
	%r27 = bitcast %ptr %r25 to %ptr (%ptr, %ptr)*
	%r26 = call %ptr %r27(%ptr %r23, %ptr %r24)
	store %ptr %r26, %ptr* %t9
	%r28 = inttoptr %word 0 to %ptr
	%r29 = load %ptr, %ptr* %t9
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = icmp slt %word %r33, %r32
	%r30 = inttoptr i1 %r31 to %ptr
	%r35 = ptrtoint %ptr %r30 to %word
	%r34 = icmp ne %word %r35, 0
	br i1 %r34, label %L446, label %L447
L446:
	%r36 = inttoptr %word 1 to %ptr
	%r37 = load %ptr, %ptr* %t7
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = ptrtoint %ptr %r36 to %word
	%r39 = sub %word %r41, %r40
	%r38 = inttoptr %word %r39 to %ptr
	store %ptr %r38, %ptr* %t6
	store %ptr %r38, %ptr* %t10
	br label %L448
L447:
	%r42 = inttoptr %word 0 to %ptr
	%r43 = load %ptr, %ptr* %t9
	%r47 = ptrtoint %ptr %r43 to %word
	%r46 = ptrtoint %ptr %r42 to %word
	%r45 = icmp sgt %word %r47, %r46
	%r44 = inttoptr i1 %r45 to %ptr
	%r49 = ptrtoint %ptr %r44 to %word
	%r48 = icmp ne %word %r49, 0
	br i1 %r48, label %L449, label %L450
L449:
	%r50 = inttoptr %word 1 to %ptr
	%r51 = load %ptr, %ptr* %t7
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = ptrtoint %ptr %r50 to %word
	%r53 = add %word %r55, %r54
	%r52 = inttoptr %word %r53 to %ptr
	store %ptr %r52, %ptr* %t5
	store %ptr %r52, %ptr* %t11
	br label %L451
L450:
	%r56 = load %ptr, %ptr* %t8
	ret %ptr %r56
	store %ptr %r56, %ptr* %t11
	br label %L451
L451:
	%r58 = load %ptr, %ptr* %t11
	store %ptr %r58, %ptr* %t10
	br label %L448
L448:
	%r59 = load %ptr, %ptr* %t10
	br label %L444
L444:
	%r60 = load %ptr, %ptr* %t6
	%r61 = load %ptr, %ptr* %t5
	%r65 = ptrtoint %ptr %r61 to %word
	%r64 = ptrtoint %ptr %r60 to %word
	%r63 = icmp sle %word %r65, %r64
	%r62 = inttoptr i1 %r63 to %ptr
	%r67 = ptrtoint %ptr %r62 to %word
	%r66 = icmp ne %word %r67, 0
	br i1 %r66, label %L443, label %L445
L445:
	%r68 = load %ptr, %ptr* %t4
	%r70 = ptrtoint %ptr %r68 to %word
	%r69 = icmp ne %word %r70, 0
	br i1 %r69, label %L452, label %L453
L452:
	%r71 = load %ptr, %ptr* %t1
	%r72 = load %ptr, %ptr* %t5
	%r73 = load %ptr, %ptr* %t2
	%r74 = load %ptr, %ptr* %t4
	%r76 = bitcast %ptr %r74 to %ptr (%ptr, %ptr, %ptr)*
	%r75 = call %ptr %r76(%ptr %r71, %ptr %r72, %ptr %r73)
	store %ptr %r75, %ptr* %t7
	br label %L454
L453:
	%r77 = inttoptr %word 0 to %ptr
	store %ptr %r77, %ptr* %t7
	br label %L454
L454:
	%r78 = load %ptr, %ptr* %t7
	ret %ptr %r78
}
define %ptr @buffer-length(%ptr %obj) {
	%t1 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	%r1 = inttoptr %word 1 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	%r11 = ptrtoint %ptr %r4 to %word
	%r10 = ptrtoint %ptr %r1 to %word
	%r9 = ashr %word %r11, %r10
	%r8 = inttoptr %word %r9 to %ptr
	ret %ptr %r8
}
define %ptr @buffer-at(%ptr %obj, %ptr %idx) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	store %ptr %idx, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 1 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = load %ptr, %ptr* %t1
	%r9 = call %ptr @buffer-length(%ptr %r8)
	store %ptr %r9, %ptr* %t4
	%r10 = inttoptr %word 1 to %ptr
	store %ptr %r10, %ptr* %t5
	%r11 = load %ptr, %ptr* %t4
	%r12 = load %ptr, %ptr* %t2
	%r16 = ptrtoint %ptr %r12 to %word
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = icmp slt %word %r16, %r15
	%r13 = inttoptr i1 %r14 to %ptr
	store %ptr %r13, %ptr* %t5
	%r17 = inttoptr %word 0 to %ptr
	%r21 = ptrtoint %ptr %r17 to %word
	%r20 = ptrtoint %ptr %r13 to %word
	%r19 = icmp eq %word %r21, %r20
	%r18 = inttoptr i1 %r19 to %ptr
	%r23 = ptrtoint %ptr %r18 to %word
	%r22 = icmp ne %word %r23, 0
	br i1 %r22, label %L455, label %L456
L456:
	%r24 = load %ptr, %ptr* %t2
	%r25 = load %ptr, %ptr* %t3
	%r30 = bitcast %ptr %r25 to [0 x i8]*
	%r29 = ptrtoint %ptr %r24 to %word
	%r28 = getelementptr [0 x i8], [0 x i8]* %r30, %word 0, %word %r29
	%r27 = load i8, i8* %r28
	%r26 = inttoptr i8 %r27 to %ptr
	store %ptr %r26, %ptr* %t5
	%r31 = inttoptr %word 0 to %ptr
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = ptrtoint %ptr %r26 to %word
	%r33 = icmp eq %word %r35, %r34
	%r32 = inttoptr i1 %r33 to %ptr
	%r37 = ptrtoint %ptr %r32 to %word
	%r36 = icmp ne %word %r37, 0
	br i1 %r36, label %L455, label %L457
L457:
	br label %L455
L455:
	%r38 = load %ptr, %ptr* %t5
	ret %ptr %r38
}
define %ptr @set-buffer-at(%ptr %obj, %ptr %idx, %ptr %val) {
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t9 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	store %ptr %idx, %ptr* %t2
	store %ptr %val, %ptr* %t3
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 1 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t4
	%r8 = inttoptr %word 1 to %ptr
	%r9 = inttoptr %word 0 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = ptrtoint %ptr %r11 to %word
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = ashr %word %r18, %r17
	%r15 = inttoptr %word %r16 to %ptr
	store %ptr %r15, %ptr* %t5
	%r19 = load %ptr, %ptr* %t4
	%r21 = ptrtoint %ptr %r19 to %word
	%r20 = icmp ne %word %r21, 0
	br i1 %r20, label %L458, label %L459
L458:
	%r22 = inttoptr %word 1 to %ptr
	%r23 = load %ptr, %ptr* %t4
	%r24 = call %ptr @"gc/object-size"(%ptr %r23)
	%r28 = ptrtoint %ptr %r24 to %word
	%r27 = ptrtoint %ptr %r22 to %word
	%r26 = sdiv %word %r28, %r27
	%r25 = inttoptr %word %r26 to %ptr
	store %ptr %r25, %ptr* %t6
	br label %L460
L459:
	%r29 = inttoptr %word 0 to %ptr
	store %ptr %r29, %ptr* %t6
	br label %L460
L460:
	%r30 = load %ptr, %ptr* %t6
	store %ptr %r30, %ptr* %t6
	%r31 = load %ptr, %ptr* %t6
	%r32 = load %ptr, %ptr* %t2
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = icmp slt %word %r36, %r35
	%r33 = inttoptr i1 %r34 to %ptr
	%r38 = ptrtoint %ptr %r33 to %word
	%r37 = icmp ne %word %r38, 0
	br i1 %r37, label %L461, label %L462
L461:
	%r39 = inttoptr %word 0 to %ptr
	store %ptr %r39, %ptr* %t7
	br label %L463
L462:
	%r40 = load %ptr, %ptr* %t6
	%r41 = inttoptr %word 0 to %ptr
	%r45 = ptrtoint %ptr %r41 to %word
	%r44 = ptrtoint %ptr %r40 to %word
	%r43 = icmp eq %word %r45, %r44
	%r42 = inttoptr i1 %r43 to %ptr
	%r47 = ptrtoint %ptr %r42 to %word
	%r46 = icmp ne %word %r47, 0
	br i1 %r46, label %L464, label %L465
L464:
	%r48 = inttoptr %word 4 to %ptr
	store %ptr %r48, %ptr* %t6
	store %ptr %r48, %ptr* %t8
	br label %L466
L465:
	%r49 = inttoptr %word 0 to %ptr
	store %ptr %r49, %ptr* %t8
	br label %L466
L466:
	%r50 = load %ptr, %ptr* %t8
	br label %L468
L467:
	%r51 = inttoptr %word 2 to %ptr
	%r52 = load %ptr, %ptr* %t6
	%r56 = ptrtoint %ptr %r52 to %word
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = mul %word %r56, %r55
	%r53 = inttoptr %word %r54 to %ptr
	store %ptr %r53, %ptr* %t6
	br label %L468
L468:
	%r57 = load %ptr, %ptr* %t6
	%r58 = load %ptr, %ptr* %t2
	%r62 = ptrtoint %ptr %r58 to %word
	%r61 = ptrtoint %ptr %r57 to %word
	%r60 = icmp slt %word %r62, %r61
	%r59 = inttoptr i1 %r60 to %ptr
	%r66 = ptrtoint %ptr %r59 to %word
	%r65 = icmp eq %word %r66, 0
	%r64 = zext i1 %r65 to %word
	%r63 = inttoptr %word %r64 to %ptr
	%r68 = ptrtoint %ptr %r63 to %word
	%r67 = icmp ne %word %r68, 0
	br i1 %r67, label %L467, label %L469
L469:
	%r69 = inttoptr %word 4 to %ptr
	%r70 = inttoptr %word 1 to %ptr
	%r71 = load %ptr, %ptr* %t6
	%r75 = ptrtoint %ptr %r71 to %word
	%r74 = ptrtoint %ptr %r70 to %word
	%r73 = mul %word %r75, %r74
	%r72 = inttoptr %word %r73 to %ptr
	%r76 = call %ptr @"gc/allocate-opaque"(%ptr %r69, %ptr %r72)
	store %ptr %r76, %ptr* %t8
	%r78 = getelementptr %ptr, %ptr* %t8, %word 0
	%r77 = bitcast %ptr* %r78 to %ptr
	%r79 = call %ptr @"gc/push-root"(%ptr %r77)
	%r80 = load %ptr, %ptr* %t8
	%r81 = load %ptr, %ptr* %t4
	%r82 = load %ptr, %ptr* %t5
	%ffi-cast83 = ptrtoint %ptr %r82 to i32
	%r84 = call %ptr @memcpy(%ptr %r80, %ptr %r81, i32 %ffi-cast83)
	%r85 = load %ptr, %ptr* %t8
	%r86 = inttoptr %word 1 to %ptr
	%r87 = load %ptr, %ptr* %t1
	%r91 = bitcast %ptr %r87 to [0 x %ptr]*
	%r90 = ptrtoint %ptr %r86 to %word
	%r89 = getelementptr [0 x %ptr], [0 x %ptr]* %r91, %word 0, %word %r90
	store %ptr %r85, %ptr* %r89
	%r88 = bitcast %ptr %r85 to %ptr
	store %ptr %r88, %ptr* %t4
	store %ptr %r88, %ptr* %t9
	%r93 = getelementptr %ptr, %ptr* %t8, %word 0
	%r92 = bitcast %ptr* %r93 to %ptr
	%r94 = call %ptr @"gc/pop-root"(%ptr %r92)
	%r95 = load %ptr, %ptr* %t9
	store %ptr %r95, %ptr* %t7
	br label %L463
L463:
	%r96 = load %ptr, %ptr* %t7
	%r97 = load %ptr, %ptr* %t2
	%r98 = load %ptr, %ptr* %t5
	%r102 = ptrtoint %ptr %r98 to %word
	%r101 = ptrtoint %ptr %r97 to %word
	%r100 = icmp sle %word %r102, %r101
	%r99 = inttoptr i1 %r100 to %ptr
	%r104 = ptrtoint %ptr %r99 to %word
	%r103 = icmp ne %word %r104, 0
	br i1 %r103, label %L470, label %L471
L470:
	%r105 = inttoptr %word 1 to %ptr
	%r106 = inttoptr %word 1 to %ptr
	%r107 = load %ptr, %ptr* %t2
	%r108 = inttoptr %word 1 to %ptr
	%r112 = ptrtoint %ptr %r108 to %word
	%r111 = ptrtoint %ptr %r107 to %word
	%r110 = add %word %r112, %r111
	%r109 = inttoptr %word %r110 to %ptr
	%r116 = ptrtoint %ptr %r109 to %word
	%r115 = ptrtoint %ptr %r106 to %word
	%r114 = shl %word %r116, %r115
	%r113 = inttoptr %word %r114 to %ptr
	%r120 = ptrtoint %ptr %r113 to %word
	%r119 = ptrtoint %ptr %r105 to %word
	%r118 = add %word %r120, %r119
	%r117 = inttoptr %word %r118 to %ptr
	%r121 = inttoptr %word 0 to %ptr
	%r122 = load %ptr, %ptr* %t1
	%r126 = bitcast %ptr %r122 to [0 x %ptr]*
	%r125 = ptrtoint %ptr %r121 to %word
	%r124 = getelementptr [0 x %ptr], [0 x %ptr]* %r126, %word 0, %word %r125
	store %ptr %r117, %ptr* %r124
	%r123 = bitcast %ptr %r117 to %ptr
	store %ptr %r123, %ptr* %t7
	br label %L472
L471:
	%r127 = inttoptr %word 0 to %ptr
	store %ptr %r127, %ptr* %t7
	br label %L472
L472:
	%r128 = load %ptr, %ptr* %t7
	%r129 = load %ptr, %ptr* %t3
	%r130 = load %ptr, %ptr* %t2
	%r131 = load %ptr, %ptr* %t4
	%r137 = bitcast %ptr %r131 to [0 x i8]*
	%r136 = ptrtoint %ptr %r130 to %word
	%r135 = getelementptr [0 x i8], [0 x i8]* %r137, %word 0, %word %r136
	%r134 = ptrtoint %ptr %r129 to i8
	store i8 %r134, i8* %r135
	%r133 = zext i8 %r134 to %word
	%r132 = inttoptr %word %r133 to %ptr
	ret %ptr %r132
}
define %ptr @buffer-append(%ptr %obj, %ptr %val) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	store %ptr %val, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = load %ptr, %ptr* %t1
	%r3 = call %ptr @buffer-length(%ptr %r2)
	%r4 = load %ptr, %ptr* %t2
	%r5 = call %ptr @set-buffer-at(%ptr %r1, %ptr %r3, %ptr %r4)
	ret %ptr %r5
}
define %ptr @buffer-insert(%ptr %obj, %ptr %idx, %ptr %value) {
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	store %ptr %idx, %ptr* %t2
	store %ptr %value, %ptr* %t3
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @buffer-length(%ptr %r1)
	store %ptr %r2, %ptr* %t4
	%r3 = load %ptr, %ptr* %t1
	%r4 = inttoptr %word 0 to %ptr
	%r5 = call %ptr @buffer-append(%ptr %r3, %ptr %r4)
	%r6 = load %ptr, %ptr* %t4
	%r7 = load %ptr, %ptr* %t2
	%r11 = ptrtoint %ptr %r7 to %word
	%r10 = ptrtoint %ptr %r6 to %word
	%r9 = icmp slt %word %r11, %r10
	%r8 = inttoptr i1 %r9 to %ptr
	%r13 = ptrtoint %ptr %r8 to %word
	%r12 = icmp ne %word %r13, 0
	br i1 %r12, label %L473, label %L474
L473:
	%r14 = inttoptr %word 1 to %ptr
	%r15 = load %ptr, %ptr* %t1
	%r19 = bitcast %ptr %r15 to [0 x %ptr]*
	%r18 = ptrtoint %ptr %r14 to %word
	%r17 = getelementptr [0 x %ptr], [0 x %ptr]* %r19, %word 0, %word %r18
	%r16 = load %ptr, %ptr* %r17
	store %ptr %r16, %ptr* %t6
	%r20 = inttoptr %word 1 to %ptr
	%r21 = load %ptr, %ptr* %t2
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ptrtoint %ptr %r20 to %word
	%r23 = mul %word %r25, %r24
	%r22 = inttoptr %word %r23 to %ptr
	%r26 = load %ptr, %ptr* %t6
	%r30 = ptrtoint %ptr %r26 to %word
	%r29 = ptrtoint %ptr %r22 to %word
	%r28 = add %word %r30, %r29
	%r27 = inttoptr %word %r28 to %ptr
	store %ptr %r27, %ptr* %t7
	%r31 = inttoptr %word 1 to %ptr
	%r32 = load %ptr, %ptr* %t7
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = add %word %r36, %r35
	%r33 = inttoptr %word %r34 to %ptr
	%r37 = load %ptr, %ptr* %t7
	%r38 = load %ptr, %ptr* %t2
	%r39 = load %ptr, %ptr* %t4
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = sub %word %r43, %r42
	%r40 = inttoptr %word %r41 to %ptr
	%ffi-cast44 = ptrtoint %ptr %r40 to i32
	%r45 = call %ptr @memmove(%ptr %r33, %ptr %r37, i32 %ffi-cast44)
	store %ptr %r45, %ptr* %t5
	br label %L475
L474:
	%r46 = inttoptr %word 0 to %ptr
	store %ptr %r46, %ptr* %t5
	br label %L475
L475:
	%r47 = load %ptr, %ptr* %t5
	%r48 = load %ptr, %ptr* %t1
	%r49 = load %ptr, %ptr* %t2
	%r50 = load %ptr, %ptr* %t3
	%r51 = call %ptr @set-buffer-at(%ptr %r48, %ptr %r49, %ptr %r50)
	ret %ptr %r51
}
define %ptr @buffer-ensure-zero-terminated(%ptr %obj) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @buffer-length(%ptr %r1)
	store %ptr %r2, %ptr* %t2
	%r3 = load %ptr, %ptr* %t1
	%r4 = load %ptr, %ptr* %t2
	%r5 = inttoptr %word 0 to %ptr
	%r6 = call %ptr @set-buffer-at(%ptr %r3, %ptr %r4, %ptr %r5)
	%r7 = inttoptr %word 1 to %ptr
	%r8 = inttoptr %word 1 to %ptr
	%r9 = load %ptr, %ptr* %t2
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = shl %word %r13, %r12
	%r10 = inttoptr %word %r11 to %ptr
	%r17 = ptrtoint %ptr %r10 to %word
	%r16 = ptrtoint %ptr %r7 to %word
	%r15 = add %word %r17, %r16
	%r14 = inttoptr %word %r15 to %ptr
	%r18 = inttoptr %word 0 to %ptr
	%r19 = load %ptr, %ptr* %t1
	%r23 = bitcast %ptr %r19 to [0 x %ptr]*
	%r22 = ptrtoint %ptr %r18 to %word
	%r21 = getelementptr [0 x %ptr], [0 x %ptr]* %r23, %word 0, %word %r22
	store %ptr %r14, %ptr* %r21
	%r20 = bitcast %ptr %r14 to %ptr
	%r24 = load %ptr, %ptr* %t1
	ret %ptr %r24
}
define %ptr @"new-<buffer>"() {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	%r1 = inttoptr %word 32 to %ptr
	store %ptr %r1, %ptr* %t1
	%r2 = inttoptr %word 23 to %ptr
	%r3 = inttoptr %word 16 to %ptr
	%r4 = call %ptr @"gc/allocate"(%ptr %r2, %ptr %r3)
	store %ptr %r4, %ptr* %t2
	%r6 = getelementptr %ptr, %ptr* %t2, %word 0
	%r5 = bitcast %ptr* %r6 to %ptr
	%r7 = call %ptr @"gc/push-root"(%ptr %r5)
	%r8 = inttoptr %word 4 to %ptr
	%r9 = load %ptr, %ptr* %t1
	%r10 = call %ptr @"gc/allocate-opaque"(%ptr %r8, %ptr %r9)
	%r11 = inttoptr %word 1 to %ptr
	%r12 = load %ptr, %ptr* %t2
	%r16 = bitcast %ptr %r12 to [0 x %ptr]*
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = getelementptr [0 x %ptr], [0 x %ptr]* %r16, %word 0, %word %r15
	store %ptr %r10, %ptr* %r14
	%r13 = bitcast %ptr %r10 to %ptr
	%r17 = inttoptr %word 1 to %ptr
	%r18 = inttoptr %word 1 to %ptr
	%r19 = inttoptr %word 0 to %ptr
	%r23 = ptrtoint %ptr %r19 to %word
	%r22 = ptrtoint %ptr %r18 to %word
	%r21 = shl %word %r23, %r22
	%r20 = inttoptr %word %r21 to %ptr
	%r27 = ptrtoint %ptr %r20 to %word
	%r26 = ptrtoint %ptr %r17 to %word
	%r25 = add %word %r27, %r26
	%r24 = inttoptr %word %r25 to %ptr
	%r28 = inttoptr %word 0 to %ptr
	%r29 = load %ptr, %ptr* %t2
	%r33 = bitcast %ptr %r29 to [0 x %ptr]*
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = getelementptr [0 x %ptr], [0 x %ptr]* %r33, %word 0, %word %r32
	store %ptr %r24, %ptr* %r31
	%r30 = bitcast %ptr %r24 to %ptr
	%r34 = load %ptr, %ptr* %t2
	store %ptr %r34, %ptr* %t3
	%r36 = getelementptr %ptr, %ptr* %t2, %word 0
	%r35 = bitcast %ptr* %r36 to %ptr
	%r37 = call %ptr @"gc/pop-root"(%ptr %r35)
	%r38 = load %ptr, %ptr* %t3
	ret %ptr %r38
}
define %ptr @buffer-contents(%ptr %self) {
	%t1 = alloca %ptr
	store %ptr %self, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @buffer-ensure-zero-terminated(%ptr %r1)
	%r3 = inttoptr %word 1 to %ptr
	%r4 = load %ptr, %ptr* %t1
	%r8 = bitcast %ptr %r4 to [0 x %ptr]*
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = getelementptr [0 x %ptr], [0 x %ptr]* %r8, %word 0, %word %r7
	%r5 = load %ptr, %ptr* %r6
	ret %ptr %r5
}
define %ptr @buffer-append-string(%ptr %buf, %ptr %str) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %buf, %ptr* %t1
	store %ptr %str, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	store %ptr %r1, %ptr* %t3
	%r2 = inttoptr %word 0 to %ptr
	store %ptr %r2, %ptr* %t4
	br label %L477
L476:
	%r3 = load %ptr, %ptr* %t1
	%r4 = load %ptr, %ptr* %t4
	%r5 = call %ptr @buffer-append(%ptr %r3, %ptr %r4)
	%r6 = inttoptr %word 1 to %ptr
	%r7 = load %ptr, %ptr* %t3
	%r11 = ptrtoint %ptr %r7 to %word
	%r10 = ptrtoint %ptr %r6 to %word
	%r9 = add %word %r11, %r10
	%r8 = inttoptr %word %r9 to %ptr
	store %ptr %r8, %ptr* %t3
	br label %L477
L477:
	%r12 = load %ptr, %ptr* %t3
	%r13 = load %ptr, %ptr* %t2
	%r18 = bitcast %ptr %r13 to [0 x i8]*
	%r17 = ptrtoint %ptr %r12 to %word
	%r16 = getelementptr [0 x i8], [0 x i8]* %r18, %word 0, %word %r17
	%r15 = load i8, i8* %r16
	%r14 = inttoptr i8 %r15 to %ptr
	store %ptr %r14, %ptr* %t4
	%r20 = ptrtoint %ptr %r14 to %word
	%r19 = icmp ne %word %r20, 0
	br i1 %r19, label %L476, label %L478
L478:
	ret %ptr %r14
}
@str482 = private unnamed_addr constant [3 x i8] c"()\00"
@str486 = private unnamed_addr constant [4 x i8] c"%ld\00"
@str493 = private unnamed_addr constant [3 x i8] c"%s\00"
@str494 = private unnamed_addr constant [2 x i8] c"\22\00"
@str507 = private unnamed_addr constant [3 x i8] c"\5C\22\00"
@str511 = private unnamed_addr constant [3 x i8] c"\5C\5C\00"
@str512 = private unnamed_addr constant [3 x i8] c"%c\00"
@str513 = private unnamed_addr constant [6 x i8] c"\5C%03o\00"
@str514 = private unnamed_addr constant [2 x i8] c"\22\00"
@str518 = private unnamed_addr constant [3 x i8] c"%s\00"
@str522 = private unnamed_addr constant [2 x i8] c"(\00"
@str528 = private unnamed_addr constant [2 x i8] c" \00"
@str532 = private unnamed_addr constant [4 x i8] c" . \00"
@str534 = private unnamed_addr constant [2 x i8] c")\00"
@str538 = private unnamed_addr constant [7 x i8] c"Array(\00"
@str544 = private unnamed_addr constant [2 x i8] c" \00"
@str546 = private unnamed_addr constant [2 x i8] c")\00"
@str550 = private unnamed_addr constant [6 x i8] c"Expr<\00"
@str551 = private unnamed_addr constant [2 x i8] c">\00"
@str555 = private unnamed_addr constant [6 x i8] c"Form<\00"
@str556 = private unnamed_addr constant [2 x i8] c",\00"
@str557 = private unnamed_addr constant [2 x i8] c">\00"
@str561 = private unnamed_addr constant [7 x i8] c"Fixed<\00"
@str562 = private unnamed_addr constant [2 x i8] c">\00"
@str566 = private unnamed_addr constant [9 x i8] c"Subr<%s>\00"
@str573 = private unnamed_addr constant [2 x i8] c".\00"
@str574 = private unnamed_addr constant [2 x i8] c"+\00"
@str584 = private unnamed_addr constant [13 x i8] c"Env<%ld,%ld>\00"
@str585 = private unnamed_addr constant [6 x i8] c"Env<>\00"
@str589 = private unnamed_addr constant [10 x i8] c"Context<>\00"
@str590 = private unnamed_addr constant [11 x i8] c"<type:%ld>\00"
define %ptr @do_print(%ptr %obj, %ptr %storing) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t10 = alloca %ptr
	%t9 = alloca %ptr
	%t12 = alloca %ptr
	%t11 = alloca %ptr
	%t13 = alloca %ptr
	%t14 = alloca %ptr
	%t15 = alloca %ptr
	%t17 = alloca %ptr
	%t16 = alloca %ptr
	%t18 = alloca %ptr
	%t19 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	store %ptr %storing, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = load %ptr, %ptr* %t1
	%r3 = call %ptr @"get/type"(%ptr %r2)
	store %ptr %r3, %ptr* %t3
	%r4 = inttoptr %word 5 to %ptr
	%r5 = load %ptr, %ptr* %t3
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = icmp eq %word %r9, %r8
	%r6 = inttoptr i1 %r7 to %ptr
	%r11 = ptrtoint %ptr %r6 to %word
	%r10 = icmp ne %word %r11, 0
	br i1 %r10, label %L479, label %L480
L479:
	%r12 = getelementptr [3 x i8], [3 x i8]* @str482, %word 0, %word 0
	%r14 = call i32 (%ptr, ...) @printf(%ptr %r12)
	%r15 = sext i32 %r14 to %word
	%r16 = inttoptr %word %r15 to %ptr
	store %ptr %r16, %ptr* %t4
	br label %L481
L480:
	%r17 = inttoptr %word 6 to %ptr
	%r18 = load %ptr, %ptr* %t3
	%r22 = ptrtoint %ptr %r18 to %word
	%r21 = ptrtoint %ptr %r17 to %word
	%r20 = icmp eq %word %r22, %r21
	%r19 = inttoptr i1 %r20 to %ptr
	%r24 = ptrtoint %ptr %r19 to %word
	%r23 = icmp ne %word %r24, 0
	br i1 %r23, label %L483, label %L484
L483:
	%r25 = getelementptr [4 x i8], [4 x i8]* @str486, %word 0, %word 0
	%r27 = inttoptr %word 1 to %ptr
	%r28 = load %ptr, %ptr* %t1
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = ptrtoint %ptr %r27 to %word
	%r30 = ashr %word %r32, %r31
	%r29 = inttoptr %word %r30 to %ptr
	%r33 = call i32 (%ptr, ...) @printf(%ptr %r25, %ptr %r29)
	%r34 = sext i32 %r33 to %word
	%r35 = inttoptr %word %r34 to %ptr
	store %ptr %r35, %ptr* %t5
	br label %L485
L484:
	%r36 = inttoptr %word 8 to %ptr
	%r37 = load %ptr, %ptr* %t3
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = ptrtoint %ptr %r36 to %word
	%r39 = icmp eq %word %r41, %r40
	%r38 = inttoptr i1 %r39 to %ptr
	%r43 = ptrtoint %ptr %r38 to %word
	%r42 = icmp ne %word %r43, 0
	br i1 %r42, label %L487, label %L488
L487:
	%r44 = load %ptr, %ptr* %t1
	%r45 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r44)
	%r46 = inttoptr %word 1 to %ptr
	%r47 = load %ptr, %ptr* %t1
	%r48 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r47)
	%r52 = bitcast %ptr %r48 to [0 x %ptr]*
	%r51 = ptrtoint %ptr %r46 to %word
	%r50 = getelementptr [0 x %ptr], [0 x %ptr]* %r52, %word 0, %word %r51
	%r49 = load %ptr, %ptr* %r50
	store %ptr %r49, %ptr* %t7
	%r53 = load %ptr, %ptr* %t2
	%r57 = ptrtoint %ptr %r53 to %word
	%r56 = icmp eq %word %r57, 0
	%r55 = zext i1 %r56 to %word
	%r54 = inttoptr %word %r55 to %ptr
	%r59 = ptrtoint %ptr %r54 to %word
	%r58 = icmp ne %word %r59, 0
	br i1 %r58, label %L490, label %L491
L490:
	%r60 = getelementptr [3 x i8], [3 x i8]* @str493, %word 0, %word 0
	%r62 = load %ptr, %ptr* %t7
	%r63 = call i32 (%ptr, ...) @printf(%ptr %r60, %ptr %r62)
	%r64 = sext i32 %r63 to %word
	%r65 = inttoptr %word %r64 to %ptr
	store %ptr %r65, %ptr* %t8
	br label %L492
L491:
	%r66 = inttoptr %word 0 to %ptr
	store %ptr %r66, %ptr* %t9
	%r67 = inttoptr %word 0 to %ptr
	store %ptr %r67, %ptr* %t10
	%r68 = getelementptr [2 x i8], [2 x i8]* @str494, %word 0, %word 0
	%r70 = call i32 (%ptr, ...) @printf(%ptr %r68)
	%r71 = sext i32 %r70 to %word
	%r72 = inttoptr %word %r71 to %ptr
	br label %L496
L495:
	%r73 = inttoptr %word 1 to %ptr
	store %ptr %r73, %ptr* %t12
	%r74 = load %ptr, %ptr* %t10
	%r75 = inttoptr %word 32 to %ptr
	%r79 = ptrtoint %ptr %r75 to %word
	%r78 = ptrtoint %ptr %r74 to %word
	%r77 = icmp sle %word %r79, %r78
	%r76 = inttoptr i1 %r77 to %ptr
	store %ptr %r76, %ptr* %t12
	%r80 = inttoptr %word 0 to %ptr
	%r84 = ptrtoint %ptr %r80 to %word
	%r83 = ptrtoint %ptr %r76 to %word
	%r82 = icmp eq %word %r84, %r83
	%r81 = inttoptr i1 %r82 to %ptr
	%r86 = ptrtoint %ptr %r81 to %word
	%r85 = icmp ne %word %r86, 0
	br i1 %r85, label %L501, label %L502
L502:
	%r87 = inttoptr %word 126 to %ptr
	%r88 = load %ptr, %ptr* %t10
	%r92 = ptrtoint %ptr %r88 to %word
	%r91 = ptrtoint %ptr %r87 to %word
	%r90 = icmp sle %word %r92, %r91
	%r89 = inttoptr i1 %r90 to %ptr
	store %ptr %r89, %ptr* %t12
	%r93 = inttoptr %word 0 to %ptr
	%r97 = ptrtoint %ptr %r93 to %word
	%r96 = ptrtoint %ptr %r89 to %word
	%r95 = icmp eq %word %r97, %r96
	%r94 = inttoptr i1 %r95 to %ptr
	%r99 = ptrtoint %ptr %r94 to %word
	%r98 = icmp ne %word %r99, 0
	br i1 %r98, label %L501, label %L503
L503:
	br label %L501
L501:
	%r100 = load %ptr, %ptr* %t12
	%r102 = ptrtoint %ptr %r100 to %word
	%r101 = icmp ne %word %r102, 0
	br i1 %r101, label %L498, label %L499
L498:
	%r103 = inttoptr %word 34 to %ptr
	%r104 = load %ptr, %ptr* %t10
	%r108 = ptrtoint %ptr %r104 to %word
	%r107 = ptrtoint %ptr %r103 to %word
	%r106 = icmp eq %word %r108, %r107
	%r105 = inttoptr i1 %r106 to %ptr
	%r110 = ptrtoint %ptr %r105 to %word
	%r109 = icmp ne %word %r110, 0
	br i1 %r109, label %L504, label %L505
L504:
	%r111 = getelementptr [3 x i8], [3 x i8]* @str507, %word 0, %word 0
	%r113 = call i32 (%ptr, ...) @printf(%ptr %r111)
	%r114 = sext i32 %r113 to %word
	%r115 = inttoptr %word %r114 to %ptr
	store %ptr %r115, %ptr* %t12
	br label %L506
L505:
	%r116 = inttoptr %word 92 to %ptr
	%r117 = load %ptr, %ptr* %t10
	%r121 = ptrtoint %ptr %r117 to %word
	%r120 = ptrtoint %ptr %r116 to %word
	%r119 = icmp eq %word %r121, %r120
	%r118 = inttoptr i1 %r119 to %ptr
	%r123 = ptrtoint %ptr %r118 to %word
	%r122 = icmp ne %word %r123, 0
	br i1 %r122, label %L508, label %L509
L508:
	%r124 = getelementptr [3 x i8], [3 x i8]* @str511, %word 0, %word 0
	%r126 = call i32 (%ptr, ...) @printf(%ptr %r124)
	%r127 = sext i32 %r126 to %word
	%r128 = inttoptr %word %r127 to %ptr
	store %ptr %r128, %ptr* %t13
	br label %L510
L509:
	%r129 = getelementptr [3 x i8], [3 x i8]* @str512, %word 0, %word 0
	%r131 = load %ptr, %ptr* %t10
	%r132 = call i32 (%ptr, ...) @printf(%ptr %r129, %ptr %r131)
	%r133 = sext i32 %r132 to %word
	%r134 = inttoptr %word %r133 to %ptr
	store %ptr %r134, %ptr* %t13
	br label %L510
L510:
	%r135 = load %ptr, %ptr* %t13
	store %ptr %r135, %ptr* %t12
	br label %L506
L506:
	%r136 = load %ptr, %ptr* %t12
	store %ptr %r136, %ptr* %t11
	br label %L500
L499:
	%r137 = getelementptr [6 x i8], [6 x i8]* @str513, %word 0, %word 0
	%r139 = load %ptr, %ptr* %t10
	%r140 = call i32 (%ptr, ...) @printf(%ptr %r137, %ptr %r139)
	%r141 = sext i32 %r140 to %word
	%r142 = inttoptr %word %r141 to %ptr
	store %ptr %r142, %ptr* %t11
	br label %L500
L500:
	%r143 = load %ptr, %ptr* %t11
	%r144 = load %ptr, %ptr* %t9
	%r145 = inttoptr %word 1 to %ptr
	%r149 = ptrtoint %ptr %r145 to %word
	%r148 = ptrtoint %ptr %r144 to %word
	%r147 = add %word %r149, %r148
	%r146 = inttoptr %word %r147 to %ptr
	store %ptr %r146, %ptr* %t9
	br label %L496
L496:
	%r150 = load %ptr, %ptr* %t9
	%r151 = load %ptr, %ptr* %t7
	%r156 = bitcast %ptr %r151 to [0 x i8]*
	%r155 = ptrtoint %ptr %r150 to %word
	%r154 = getelementptr [0 x i8], [0 x i8]* %r156, %word 0, %word %r155
	%r153 = load i8, i8* %r154
	%r152 = inttoptr i8 %r153 to %ptr
	store %ptr %r152, %ptr* %t10
	%r158 = ptrtoint %ptr %r152 to %word
	%r157 = icmp ne %word %r158, 0
	br i1 %r157, label %L495, label %L497
L497:
	%r159 = getelementptr [2 x i8], [2 x i8]* @str514, %word 0, %word 0
	%r161 = call i32 (%ptr, ...) @printf(%ptr %r159)
	%r162 = sext i32 %r161 to %word
	%r163 = inttoptr %word %r162 to %ptr
	store %ptr %r163, %ptr* %t8
	br label %L492
L492:
	%r164 = load %ptr, %ptr* %t8
	store %ptr %r164, %ptr* %t6
	br label %L489
L488:
	%r165 = inttoptr %word 18 to %ptr
	%r166 = load %ptr, %ptr* %t3
	%r170 = ptrtoint %ptr %r166 to %word
	%r169 = ptrtoint %ptr %r165 to %word
	%r168 = icmp eq %word %r170, %r169
	%r167 = inttoptr i1 %r168 to %ptr
	%r172 = ptrtoint %ptr %r167 to %word
	%r171 = icmp ne %word %r172, 0
	br i1 %r171, label %L515, label %L516
L515:
	%r173 = getelementptr [3 x i8], [3 x i8]* @str518, %word 0, %word 0
	%r175 = inttoptr %word 0 to %ptr
	%r176 = load %ptr, %ptr* %t1
	%r180 = bitcast %ptr %r176 to [0 x %ptr]*
	%r179 = ptrtoint %ptr %r175 to %word
	%r178 = getelementptr [0 x %ptr], [0 x %ptr]* %r180, %word 0, %word %r179
	%r177 = load %ptr, %ptr* %r178
	%r181 = call i32 (%ptr, ...) @printf(%ptr %r173, %ptr %r177)
	%r182 = sext i32 %r181 to %word
	%r183 = inttoptr %word %r182 to %ptr
	store %ptr %r183, %ptr* %t7
	br label %L517
L516:
	%r184 = inttoptr %word 19 to %ptr
	%r185 = load %ptr, %ptr* %t3
	%r189 = ptrtoint %ptr %r185 to %word
	%r188 = ptrtoint %ptr %r184 to %word
	%r187 = icmp eq %word %r189, %r188
	%r186 = inttoptr i1 %r187 to %ptr
	%r191 = ptrtoint %ptr %r186 to %word
	%r190 = icmp ne %word %r191, 0
	br i1 %r190, label %L519, label %L520
L519:
	%r192 = getelementptr [2 x i8], [2 x i8]* @str522, %word 0, %word 0
	%r194 = call i32 (%ptr, ...) @printf(%ptr %r192)
	%r195 = sext i32 %r194 to %word
	%r196 = inttoptr %word %r195 to %ptr
	br label %L524
L523:
	%r197 = inttoptr %word 0 to %ptr
	%r198 = load %ptr, %ptr* %t1
	%r202 = bitcast %ptr %r198 to [0 x %ptr]*
	%r201 = ptrtoint %ptr %r197 to %word
	%r200 = getelementptr [0 x %ptr], [0 x %ptr]* %r202, %word 0, %word %r201
	%r199 = load %ptr, %ptr* %r200
	%r203 = load %ptr, %ptr* %t2
	%r204 = call %ptr @do_print(%ptr %r199, %ptr %r203)
	%r205 = inttoptr %word 1 to %ptr
	store %ptr %r205, %ptr* %t10
	%r206 = inttoptr %word 1 to %ptr
	%r207 = load %ptr, %ptr* %t1
	%r211 = bitcast %ptr %r207 to [0 x %ptr]*
	%r210 = ptrtoint %ptr %r206 to %word
	%r209 = getelementptr [0 x %ptr], [0 x %ptr]* %r211, %word 0, %word %r210
	%r208 = load %ptr, %ptr* %r209
	store %ptr %r208, %ptr* %t1
	%r212 = call %ptr @"get/type"(%ptr %r208)
	%r213 = inttoptr %word 19 to %ptr
	%r217 = ptrtoint %ptr %r213 to %word
	%r216 = ptrtoint %ptr %r212 to %word
	%r215 = icmp eq %word %r217, %r216
	%r214 = inttoptr i1 %r215 to %ptr
	store %ptr %r214, %ptr* %t10
	%r218 = inttoptr %word 0 to %ptr
	%r222 = ptrtoint %ptr %r218 to %word
	%r221 = ptrtoint %ptr %r214 to %word
	%r220 = icmp eq %word %r222, %r221
	%r219 = inttoptr i1 %r220 to %ptr
	%r224 = ptrtoint %ptr %r219 to %word
	%r223 = icmp ne %word %r224, 0
	br i1 %r223, label %L526, label %L527
L527:
	%r225 = getelementptr [2 x i8], [2 x i8]* @str528, %word 0, %word 0
	%r227 = call i32 (%ptr, ...) @printf(%ptr %r225)
	%r228 = sext i32 %r227 to %word
	%r229 = inttoptr %word %r228 to %ptr
	store %ptr %r229, %ptr* %t10
	%r230 = inttoptr %word 0 to %ptr
	%r234 = ptrtoint %ptr %r230 to %word
	%r233 = ptrtoint %ptr %r229 to %word
	%r232 = icmp eq %word %r234, %r233
	%r231 = inttoptr i1 %r232 to %ptr
	%r236 = ptrtoint %ptr %r231 to %word
	%r235 = icmp ne %word %r236, 0
	br i1 %r235, label %L526, label %L529
L529:
	br label %L526
L526:
	%r237 = load %ptr, %ptr* %t10
	br label %L524
L524:
	%r238 = load %ptr, %ptr* %t1
	%r239 = call %ptr @"get/type"(%ptr %r238)
	%r240 = inttoptr %word 19 to %ptr
	%r244 = ptrtoint %ptr %r240 to %word
	%r243 = ptrtoint %ptr %r239 to %word
	%r242 = icmp eq %word %r244, %r243
	%r241 = inttoptr i1 %r242 to %ptr
	%r246 = ptrtoint %ptr %r241 to %word
	%r245 = icmp ne %word %r246, 0
	br i1 %r245, label %L523, label %L525
L525:
	%r247 = inttoptr %word 1 to %ptr
	store %ptr %r247, %ptr* %t10
	%r248 = load %ptr, %ptr* %t1
	store %ptr %r248, %ptr* %t10
	%r249 = inttoptr %word 0 to %ptr
	%r253 = ptrtoint %ptr %r249 to %word
	%r252 = ptrtoint %ptr %r248 to %word
	%r251 = icmp eq %word %r253, %r252
	%r250 = inttoptr i1 %r251 to %ptr
	%r255 = ptrtoint %ptr %r250 to %word
	%r254 = icmp ne %word %r255, 0
	br i1 %r254, label %L530, label %L531
L531:
	%r256 = getelementptr [4 x i8], [4 x i8]* @str532, %word 0, %word 0
	%r258 = call i32 (%ptr, ...) @printf(%ptr %r256)
	%r259 = sext i32 %r258 to %word
	%r260 = inttoptr %word %r259 to %ptr
	%r261 = load %ptr, %ptr* %t1
	%r262 = load %ptr, %ptr* %t2
	%r263 = call %ptr @do_print(%ptr %r261, %ptr %r262)
	store %ptr %r263, %ptr* %t10
	%r264 = inttoptr %word 0 to %ptr
	%r268 = ptrtoint %ptr %r264 to %word
	%r267 = ptrtoint %ptr %r263 to %word
	%r266 = icmp eq %word %r268, %r267
	%r265 = inttoptr i1 %r266 to %ptr
	%r270 = ptrtoint %ptr %r265 to %word
	%r269 = icmp ne %word %r270, 0
	br i1 %r269, label %L530, label %L533
L533:
	br label %L530
L530:
	%r271 = load %ptr, %ptr* %t10
	%r272 = getelementptr [2 x i8], [2 x i8]* @str534, %word 0, %word 0
	%r274 = call i32 (%ptr, ...) @printf(%ptr %r272)
	%r275 = sext i32 %r274 to %word
	%r276 = inttoptr %word %r275 to %ptr
	store %ptr %r276, %ptr* %t8
	br label %L521
L520:
	%r277 = inttoptr %word 7 to %ptr
	%r278 = load %ptr, %ptr* %t3
	%r282 = ptrtoint %ptr %r278 to %word
	%r281 = ptrtoint %ptr %r277 to %word
	%r280 = icmp eq %word %r282, %r281
	%r279 = inttoptr i1 %r280 to %ptr
	%r284 = ptrtoint %ptr %r279 to %word
	%r283 = icmp ne %word %r284, 0
	br i1 %r283, label %L535, label %L536
L535:
	%r285 = load %ptr, %ptr* %t1
	%r286 = call %ptr @"k/array-length"(%ptr %r285)
	store %ptr %r286, %ptr* %t9
	%r287 = getelementptr [7 x i8], [7 x i8]* @str538, %word 0, %word 0
	%r289 = call i32 (%ptr, ...) @printf(%ptr %r287)
	%r290 = sext i32 %r289 to %word
	%r291 = inttoptr %word %r290 to %ptr
	%r292 = inttoptr %word 0 to %ptr
	store %ptr %r292, %ptr* %t11
	%r293 = load %ptr, %ptr* %t9
	store %ptr %r293, %ptr* %t12
	br label %L540
L539:
	%r294 = inttoptr %word 1 to %ptr
	store %ptr %r294, %ptr* %t13
	%r295 = load %ptr, %ptr* %t11
	store %ptr %r295, %ptr* %t13
	%r296 = inttoptr %word 0 to %ptr
	%r300 = ptrtoint %ptr %r296 to %word
	%r299 = ptrtoint %ptr %r295 to %word
	%r298 = icmp eq %word %r300, %r299
	%r297 = inttoptr i1 %r298 to %ptr
	%r302 = ptrtoint %ptr %r297 to %word
	%r301 = icmp ne %word %r302, 0
	br i1 %r301, label %L542, label %L543
L543:
	%r303 = getelementptr [2 x i8], [2 x i8]* @str544, %word 0, %word 0
	%r305 = call i32 (%ptr, ...) @printf(%ptr %r303)
	%r306 = sext i32 %r305 to %word
	%r307 = inttoptr %word %r306 to %ptr
	store %ptr %r307, %ptr* %t13
	%r308 = inttoptr %word 0 to %ptr
	%r312 = ptrtoint %ptr %r308 to %word
	%r311 = ptrtoint %ptr %r307 to %word
	%r310 = icmp eq %word %r312, %r311
	%r309 = inttoptr i1 %r310 to %ptr
	%r314 = ptrtoint %ptr %r309 to %word
	%r313 = icmp ne %word %r314, 0
	br i1 %r313, label %L542, label %L545
L545:
	br label %L542
L542:
	%r315 = load %ptr, %ptr* %t13
	%r316 = load %ptr, %ptr* %t1
	%r317 = load %ptr, %ptr* %t11
	%r318 = call %ptr @"k/array-at"(%ptr %r316, %ptr %r317)
	%r319 = load %ptr, %ptr* %t2
	%r320 = call %ptr @do_print(%ptr %r318, %ptr %r319)
	%r321 = inttoptr %word 1 to %ptr
	%r322 = load %ptr, %ptr* %t11
	%r326 = ptrtoint %ptr %r322 to %word
	%r325 = ptrtoint %ptr %r321 to %word
	%r324 = add %word %r326, %r325
	%r323 = inttoptr %word %r324 to %ptr
	store %ptr %r323, %ptr* %t11
	br label %L540
L540:
	%r327 = load %ptr, %ptr* %t12
	%r328 = load %ptr, %ptr* %t11
	%r332 = ptrtoint %ptr %r328 to %word
	%r331 = ptrtoint %ptr %r327 to %word
	%r330 = icmp slt %word %r332, %r331
	%r329 = inttoptr i1 %r330 to %ptr
	%r334 = ptrtoint %ptr %r329 to %word
	%r333 = icmp ne %word %r334, 0
	br i1 %r333, label %L539, label %L541
L541:
	%r335 = getelementptr [2 x i8], [2 x i8]* @str546, %word 0, %word 0
	%r337 = call i32 (%ptr, ...) @printf(%ptr %r335)
	%r338 = sext i32 %r337 to %word
	%r339 = inttoptr %word %r338 to %ptr
	store %ptr %r339, %ptr* %t10
	br label %L537
L536:
	%r340 = inttoptr %word 9 to %ptr
	%r341 = load %ptr, %ptr* %t3
	%r345 = ptrtoint %ptr %r341 to %word
	%r344 = ptrtoint %ptr %r340 to %word
	%r343 = icmp eq %word %r345, %r344
	%r342 = inttoptr i1 %r343 to %ptr
	%r347 = ptrtoint %ptr %r342 to %word
	%r346 = icmp ne %word %r347, 0
	br i1 %r346, label %L547, label %L548
L547:
	%r348 = getelementptr [6 x i8], [6 x i8]* @str550, %word 0, %word 0
	%r350 = call i32 (%ptr, ...) @printf(%ptr %r348)
	%r351 = sext i32 %r350 to %word
	%r352 = inttoptr %word %r351 to %ptr
	%r353 = inttoptr %word 0 to %ptr
	%r354 = load %ptr, %ptr* %t1
	%r358 = bitcast %ptr %r354 to [0 x %ptr]*
	%r357 = ptrtoint %ptr %r353 to %word
	%r356 = getelementptr [0 x %ptr], [0 x %ptr]* %r358, %word 0, %word %r357
	%r355 = load %ptr, %ptr* %r356
	%r359 = load %ptr, %ptr* %t2
	%r360 = call %ptr @do_print(%ptr %r355, %ptr %r359)
	%r361 = getelementptr [2 x i8], [2 x i8]* @str551, %word 0, %word 0
	%r363 = call i32 (%ptr, ...) @printf(%ptr %r361)
	%r364 = sext i32 %r363 to %word
	%r365 = inttoptr %word %r364 to %ptr
	store %ptr %r365, %ptr* %t9
	br label %L549
L548:
	%r366 = inttoptr %word 10 to %ptr
	%r367 = load %ptr, %ptr* %t3
	%r371 = ptrtoint %ptr %r367 to %word
	%r370 = ptrtoint %ptr %r366 to %word
	%r369 = icmp eq %word %r371, %r370
	%r368 = inttoptr i1 %r369 to %ptr
	%r373 = ptrtoint %ptr %r368 to %word
	%r372 = icmp ne %word %r373, 0
	br i1 %r372, label %L552, label %L553
L552:
	%r374 = getelementptr [6 x i8], [6 x i8]* @str555, %word 0, %word 0
	%r376 = call i32 (%ptr, ...) @printf(%ptr %r374)
	%r377 = sext i32 %r376 to %word
	%r378 = inttoptr %word %r377 to %ptr
	%r379 = inttoptr %word 0 to %ptr
	%r380 = load %ptr, %ptr* %t1
	%r384 = bitcast %ptr %r380 to [0 x %ptr]*
	%r383 = ptrtoint %ptr %r379 to %word
	%r382 = getelementptr [0 x %ptr], [0 x %ptr]* %r384, %word 0, %word %r383
	%r381 = load %ptr, %ptr* %r382
	%r385 = load %ptr, %ptr* %t2
	%r386 = call %ptr @do_print(%ptr %r381, %ptr %r385)
	%r387 = getelementptr [2 x i8], [2 x i8]* @str556, %word 0, %word 0
	%r389 = call i32 (%ptr, ...) @printf(%ptr %r387)
	%r390 = sext i32 %r389 to %word
	%r391 = inttoptr %word %r390 to %ptr
	%r392 = inttoptr %word 1 to %ptr
	%r393 = load %ptr, %ptr* %t1
	%r397 = bitcast %ptr %r393 to [0 x %ptr]*
	%r396 = ptrtoint %ptr %r392 to %word
	%r395 = getelementptr [0 x %ptr], [0 x %ptr]* %r397, %word 0, %word %r396
	%r394 = load %ptr, %ptr* %r395
	%r398 = load %ptr, %ptr* %t2
	%r399 = call %ptr @do_print(%ptr %r394, %ptr %r398)
	%r400 = getelementptr [2 x i8], [2 x i8]* @str557, %word 0, %word 0
	%r402 = call i32 (%ptr, ...) @printf(%ptr %r400)
	%r403 = sext i32 %r402 to %word
	%r404 = inttoptr %word %r403 to %ptr
	store %ptr %r404, %ptr* %t12
	br label %L554
L553:
	%r405 = inttoptr %word 11 to %ptr
	%r406 = load %ptr, %ptr* %t3
	%r410 = ptrtoint %ptr %r406 to %word
	%r409 = ptrtoint %ptr %r405 to %word
	%r408 = icmp eq %word %r410, %r409
	%r407 = inttoptr i1 %r408 to %ptr
	%r412 = ptrtoint %ptr %r407 to %word
	%r411 = icmp ne %word %r412, 0
	br i1 %r411, label %L558, label %L559
L558:
	%r413 = getelementptr [7 x i8], [7 x i8]* @str561, %word 0, %word 0
	%r415 = call i32 (%ptr, ...) @printf(%ptr %r413)
	%r416 = sext i32 %r415 to %word
	%r417 = inttoptr %word %r416 to %ptr
	%r418 = inttoptr %word 0 to %ptr
	%r419 = load %ptr, %ptr* %t1
	%r423 = bitcast %ptr %r419 to [0 x %ptr]*
	%r422 = ptrtoint %ptr %r418 to %word
	%r421 = getelementptr [0 x %ptr], [0 x %ptr]* %r423, %word 0, %word %r422
	%r420 = load %ptr, %ptr* %r421
	%r424 = load %ptr, %ptr* %t2
	%r425 = call %ptr @do_print(%ptr %r420, %ptr %r424)
	%r426 = getelementptr [2 x i8], [2 x i8]* @str562, %word 0, %word 0
	%r428 = call i32 (%ptr, ...) @printf(%ptr %r426)
	%r429 = sext i32 %r428 to %word
	%r430 = inttoptr %word %r429 to %ptr
	store %ptr %r430, %ptr* %t11
	br label %L560
L559:
	%r431 = inttoptr %word 12 to %ptr
	%r432 = load %ptr, %ptr* %t3
	%r436 = ptrtoint %ptr %r432 to %word
	%r435 = ptrtoint %ptr %r431 to %word
	%r434 = icmp eq %word %r436, %r435
	%r433 = inttoptr i1 %r434 to %ptr
	%r438 = ptrtoint %ptr %r433 to %word
	%r437 = icmp ne %word %r438, 0
	br i1 %r437, label %L563, label %L564
L563:
	%r439 = getelementptr [9 x i8], [9 x i8]* @str566, %word 0, %word 0
	%r441 = inttoptr %word 1 to %ptr
	%r442 = load %ptr, %ptr* %t1
	%r446 = bitcast %ptr %r442 to [0 x %ptr]*
	%r445 = ptrtoint %ptr %r441 to %word
	%r444 = getelementptr [0 x %ptr], [0 x %ptr]* %r446, %word 0, %word %r445
	%r443 = load %ptr, %ptr* %r444
	%r447 = call i32 (%ptr, ...) @printf(%ptr %r439, %ptr %r443)
	%r448 = sext i32 %r447 to %word
	%r449 = inttoptr %word %r448 to %ptr
	store %ptr %r449, %ptr* %t13
	br label %L565
L564:
	%r450 = inttoptr %word 13 to %ptr
	%r451 = load %ptr, %ptr* %t3
	%r455 = ptrtoint %ptr %r451 to %word
	%r454 = ptrtoint %ptr %r450 to %word
	%r453 = icmp eq %word %r455, %r454
	%r452 = inttoptr i1 %r453 to %ptr
	%r457 = ptrtoint %ptr %r452 to %word
	%r456 = icmp ne %word %r457, 0
	br i1 %r456, label %L567, label %L568
L567:
	%r458 = inttoptr %word 2 to %ptr
	%r459 = load %ptr, %ptr* %t1
	%r463 = bitcast %ptr %r459 to [0 x %ptr]*
	%r462 = ptrtoint %ptr %r458 to %word
	%r461 = getelementptr [0 x %ptr], [0 x %ptr]* %r463, %word 0, %word %r462
	%r460 = load %ptr, %ptr* %r461
	store %ptr %r460, %ptr* %t15
	%r464 = inttoptr %word 0 to %ptr
	%r465 = load %ptr, %ptr* %t1
	%r469 = bitcast %ptr %r465 to [0 x %ptr]*
	%r468 = ptrtoint %ptr %r464 to %word
	%r467 = getelementptr [0 x %ptr], [0 x %ptr]* %r469, %word 0, %word %r468
	%r466 = load %ptr, %ptr* %r467
	%r470 = load %ptr, %ptr* %t2
	%r471 = call %ptr @do_print(%ptr %r466, %ptr %r470)
	%r472 = load %ptr, %ptr* %t15
	%r474 = ptrtoint %ptr %r472 to %word
	%r473 = icmp ne %word %r474, 0
	br i1 %r473, label %L570, label %L571
L570:
	%r475 = getelementptr [2 x i8], [2 x i8]* @str573, %word 0, %word 0
	%r477 = call i32 (%ptr, ...) @printf(%ptr %r475)
	%r478 = sext i32 %r477 to %word
	%r479 = inttoptr %word %r478 to %ptr
	%r480 = inttoptr %word 1 to %ptr
	%r481 = load %ptr, %ptr* %t15
	%r485 = bitcast %ptr %r481 to [0 x %ptr]*
	%r484 = ptrtoint %ptr %r480 to %word
	%r483 = getelementptr [0 x %ptr], [0 x %ptr]* %r485, %word 0, %word %r484
	%r482 = load %ptr, %ptr* %r483
	%r486 = load %ptr, %ptr* %t2
	%r487 = call %ptr @do_print(%ptr %r482, %ptr %r486)
	%r488 = getelementptr [2 x i8], [2 x i8]* @str574, %word 0, %word 0
	%r490 = call i32 (%ptr, ...) @printf(%ptr %r488)
	%r491 = sext i32 %r490 to %word
	%r492 = inttoptr %word %r491 to %ptr
	%r493 = inttoptr %word 3 to %ptr
	%r494 = load %ptr, %ptr* %t1
	%r498 = bitcast %ptr %r494 to [0 x %ptr]*
	%r497 = ptrtoint %ptr %r493 to %word
	%r496 = getelementptr [0 x %ptr], [0 x %ptr]* %r498, %word 0, %word %r497
	%r495 = load %ptr, %ptr* %r496
	%r499 = load %ptr, %ptr* %t2
	%r500 = call %ptr @do_print(%ptr %r495, %ptr %r499)
	store %ptr %r500, %ptr* %t16
	br label %L572
L571:
	%r501 = inttoptr %word 0 to %ptr
	store %ptr %r501, %ptr* %t16
	br label %L572
L572:
	%r502 = load %ptr, %ptr* %t16
	store %ptr %r502, %ptr* %t14
	br label %L569
L568:
	%r503 = inttoptr %word 14 to %ptr
	%r504 = load %ptr, %ptr* %t3
	%r508 = ptrtoint %ptr %r504 to %word
	%r507 = ptrtoint %ptr %r503 to %word
	%r506 = icmp eq %word %r508, %r507
	%r505 = inttoptr i1 %r506 to %ptr
	%r510 = ptrtoint %ptr %r505 to %word
	%r509 = icmp ne %word %r510, 0
	br i1 %r509, label %L575, label %L576
L575:
	%r511 = inttoptr %word 1 to %ptr
	%r512 = load %ptr, %ptr* %t1
	%r516 = bitcast %ptr %r512 to [0 x %ptr]*
	%r515 = ptrtoint %ptr %r511 to %word
	%r514 = getelementptr [0 x %ptr], [0 x %ptr]* %r516, %word 0, %word %r515
	%r513 = load %ptr, %ptr* %r514
	store %ptr %r513, %ptr* %t16
	%r517 = inttoptr %word 3 to %ptr
	%r518 = load %ptr, %ptr* %t1
	%r522 = bitcast %ptr %r518 to [0 x %ptr]*
	%r521 = ptrtoint %ptr %r517 to %word
	%r520 = getelementptr [0 x %ptr], [0 x %ptr]* %r522, %word 0, %word %r521
	%r519 = load %ptr, %ptr* %r520
	store %ptr %r519, %ptr* %t17
	%r523 = inttoptr %word 1 to %ptr
	store %ptr %r523, %ptr* %t19
	%r524 = load %ptr, %ptr* %t16
	store %ptr %r524, %ptr* %t19
	%r525 = inttoptr %word 0 to %ptr
	%r529 = ptrtoint %ptr %r525 to %word
	%r528 = ptrtoint %ptr %r524 to %word
	%r527 = icmp eq %word %r529, %r528
	%r526 = inttoptr i1 %r527 to %ptr
	%r531 = ptrtoint %ptr %r526 to %word
	%r530 = icmp ne %word %r531, 0
	br i1 %r530, label %L581, label %L582
L582:
	%r532 = load %ptr, %ptr* %t17
	store %ptr %r532, %ptr* %t19
	%r533 = inttoptr %word 0 to %ptr
	%r537 = ptrtoint %ptr %r533 to %word
	%r536 = ptrtoint %ptr %r532 to %word
	%r535 = icmp eq %word %r537, %r536
	%r534 = inttoptr i1 %r535 to %ptr
	%r539 = ptrtoint %ptr %r534 to %word
	%r538 = icmp ne %word %r539, 0
	br i1 %r538, label %L581, label %L583
L583:
	br label %L581
L581:
	%r540 = load %ptr, %ptr* %t19
	%r542 = ptrtoint %ptr %r540 to %word
	%r541 = icmp ne %word %r542, 0
	br i1 %r541, label %L578, label %L579
L578:
	%r543 = getelementptr [13 x i8], [13 x i8]* @str584, %word 0, %word 0
	%r545 = inttoptr %word 1 to %ptr
	%r546 = load %ptr, %ptr* %t16
	%r550 = ptrtoint %ptr %r546 to %word
	%r549 = ptrtoint %ptr %r545 to %word
	%r548 = ashr %word %r550, %r549
	%r547 = inttoptr %word %r548 to %ptr
	%r551 = load %ptr, %ptr* %t17
	%r552 = call %ptr @"k/array-length"(%ptr %r551)
	%r553 = call i32 (%ptr, ...) @printf(%ptr %r543, %ptr %r547, %ptr %r552)
	%r554 = sext i32 %r553 to %word
	%r555 = inttoptr %word %r554 to %ptr
	store %ptr %r555, %ptr* %t18
	br label %L580
L579:
	%r556 = getelementptr [6 x i8], [6 x i8]* @str585, %word 0, %word 0
	%r558 = call i32 (%ptr, ...) @printf(%ptr %r556)
	%r559 = sext i32 %r558 to %word
	%r560 = inttoptr %word %r559 to %ptr
	store %ptr %r560, %ptr* %t18
	br label %L580
L580:
	%r561 = load %ptr, %ptr* %t18
	store %ptr %r561, %ptr* %t15
	br label %L577
L576:
	%r562 = inttoptr %word 15 to %ptr
	%r563 = load %ptr, %ptr* %t3
	%r567 = ptrtoint %ptr %r563 to %word
	%r566 = ptrtoint %ptr %r562 to %word
	%r565 = icmp eq %word %r567, %r566
	%r564 = inttoptr i1 %r565 to %ptr
	%r569 = ptrtoint %ptr %r564 to %word
	%r568 = icmp ne %word %r569, 0
	br i1 %r568, label %L586, label %L587
L586:
	%r570 = getelementptr [10 x i8], [10 x i8]* @str589, %word 0, %word 0
	%r572 = call i32 (%ptr, ...) @printf(%ptr %r570)
	%r573 = sext i32 %r572 to %word
	%r574 = inttoptr %word %r573 to %ptr
	store %ptr %r574, %ptr* %t17
	br label %L588
L587:
	%r575 = getelementptr [11 x i8], [11 x i8]* @str590, %word 0, %word 0
	%r577 = load %ptr, %ptr* %t3
	%r578 = call i32 (%ptr, ...) @printf(%ptr %r575, %ptr %r577)
	%r579 = sext i32 %r578 to %word
	%r580 = inttoptr %word %r579 to %ptr
	store %ptr %r580, %ptr* %t17
	br label %L588
L588:
	%r581 = load %ptr, %ptr* %t17
	store %ptr %r581, %ptr* %t15
	br label %L577
L577:
	%r582 = load %ptr, %ptr* %t15
	store %ptr %r582, %ptr* %t14
	br label %L569
L569:
	%r583 = load %ptr, %ptr* %t14
	store %ptr %r583, %ptr* %t13
	br label %L565
L565:
	%r584 = load %ptr, %ptr* %t13
	store %ptr %r584, %ptr* %t11
	br label %L560
L560:
	%r585 = load %ptr, %ptr* %t11
	store %ptr %r585, %ptr* %t12
	br label %L554
L554:
	%r586 = load %ptr, %ptr* %t12
	store %ptr %r586, %ptr* %t9
	br label %L549
L549:
	%r587 = load %ptr, %ptr* %t9
	store %ptr %r587, %ptr* %t10
	br label %L537
L537:
	%r588 = load %ptr, %ptr* %t10
	store %ptr %r588, %ptr* %t8
	br label %L521
L521:
	%r589 = load %ptr, %ptr* %t8
	store %ptr %r589, %ptr* %t7
	br label %L517
L517:
	%r590 = load %ptr, %ptr* %t7
	store %ptr %r590, %ptr* %t6
	br label %L489
L489:
	%r591 = load %ptr, %ptr* %t6
	store %ptr %r591, %ptr* %t5
	br label %L485
L485:
	%r592 = load %ptr, %ptr* %t5
	store %ptr %r592, %ptr* %t4
	br label %L481
L481:
	%r593 = load %ptr, %ptr* %t4
	ret %ptr %r593
}
@str591 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @"k/println"(%ptr %obj) {
	%t1 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r2 = inttoptr %word 0 to %ptr
	%r3 = call %ptr @do_print(%ptr %r1, %ptr %r2)
	%r4 = getelementptr [2 x i8], [2 x i8]* @str591, %word 0, %word 0
	%r6 = call i32 (%ptr, ...) @printf(%ptr %r4)
	%r7 = sext i32 %r6 to %word
	%r8 = inttoptr %word %r7 to %ptr
	ret %ptr %r8
}
define %ptr @"k/dump"(%ptr %obj) {
	%t1 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r2 = inttoptr %word 1 to %ptr
	%r3 = call %ptr @do_print(%ptr %r1, %ptr %r2)
	ret %ptr %r3
}
@str592 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @"k/dumpln"(%ptr %obj) {
	%t1 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r2 = inttoptr %word 1 to %ptr
	%r3 = call %ptr @do_print(%ptr %r1, %ptr %r2)
	%r4 = getelementptr [2 x i8], [2 x i8]* @str592, %word 0, %word 0
	%r6 = call i32 (%ptr, ...) @printf(%ptr %r4)
	%r7 = sext i32 %r6 to %word
	%r8 = inttoptr %word %r7 to %ptr
	ret %ptr %r8
}
define %ptr @"global-variable?"(%ptr %var) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %var, %ptr* %t1
	%r1 = inttoptr %word 2 to %ptr
	%r2 = load %ptr, %ptr* %t1
	%r6 = bitcast %ptr %r2 to [0 x %ptr]*
	%r5 = ptrtoint %ptr %r1 to %word
	%r4 = getelementptr [0 x %ptr], [0 x %ptr]* %r6, %word 0, %word %r5
	%r3 = load %ptr, %ptr* %r4
	store %ptr %r3, %ptr* %t2
	%r7 = inttoptr %word 1 to %ptr
	store %ptr %r7, %ptr* %t3
	%r8 = load %ptr, %ptr* %t2
	store %ptr %r8, %ptr* %t3
	%r9 = inttoptr %word 0 to %ptr
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = icmp eq %word %r13, %r12
	%r10 = inttoptr i1 %r11 to %ptr
	%r15 = ptrtoint %ptr %r10 to %word
	%r14 = icmp ne %word %r15, 0
	br i1 %r14, label %L593, label %L594
L594:
	%r16 = inttoptr %word 1 to %ptr
	%r17 = inttoptr %word 1 to %ptr
	%r18 = load %ptr, %ptr* %t2
	%r22 = bitcast %ptr %r18 to [0 x %ptr]*
	%r21 = ptrtoint %ptr %r17 to %word
	%r20 = getelementptr [0 x %ptr], [0 x %ptr]* %r22, %word 0, %word %r21
	%r19 = load %ptr, %ptr* %r20
	%r26 = ptrtoint %ptr %r19 to %word
	%r25 = ptrtoint %ptr %r16 to %word
	%r24 = ashr %word %r26, %r25
	%r23 = inttoptr %word %r24 to %ptr
	%r27 = inttoptr %word 0 to %ptr
	%r31 = ptrtoint %ptr %r27 to %word
	%r30 = ptrtoint %ptr %r23 to %word
	%r29 = icmp eq %word %r31, %r30
	%r28 = inttoptr i1 %r29 to %ptr
	store %ptr %r28, %ptr* %t3
	%r32 = inttoptr %word 0 to %ptr
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = ptrtoint %ptr %r28 to %word
	%r34 = icmp eq %word %r36, %r35
	%r33 = inttoptr i1 %r34 to %ptr
	%r38 = ptrtoint %ptr %r33 to %word
	%r37 = icmp ne %word %r38, 0
	br i1 %r37, label %L593, label %L595
L595:
	br label %L593
L593:
	%r39 = load %ptr, %ptr* %t3
	ret %ptr %r39
}
define %ptr @"k/env/lookup-variable"(%ptr %env, %ptr %name) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	store %ptr %env, %ptr* %t1
	store %ptr %name, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	br label %L597
L596:
	%r3 = inttoptr %word 3 to %ptr
	%r4 = load %ptr, %ptr* %t1
	%r8 = bitcast %ptr %r4 to [0 x %ptr]*
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = getelementptr [0 x %ptr], [0 x %ptr]* %r8, %word 0, %word %r7
	%r5 = load %ptr, %ptr* %r6
	store %ptr %r5, %ptr* %t3
	%r9 = load %ptr, %ptr* %t3
	%r10 = call %ptr @"k/array-length"(%ptr %r9)
	store %ptr %r10, %ptr* %t4
	%r11 = inttoptr %word 1 to %ptr
	%r12 = load %ptr, %ptr* %t3
	%r16 = bitcast %ptr %r12 to [0 x %ptr]*
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = getelementptr [0 x %ptr], [0 x %ptr]* %r16, %word 0, %word %r15
	%r13 = load %ptr, %ptr* %r14
	store %ptr %r13, %ptr* %t5
	br label %L600
L599:
	%r17 = load %ptr, %ptr* %t4
	%r18 = load %ptr, %ptr* %t5
	%r22 = bitcast %ptr %r18 to [0 x %ptr]*
	%r21 = ptrtoint %ptr %r17 to %word
	%r20 = getelementptr [0 x %ptr], [0 x %ptr]* %r22, %word 0, %word %r21
	%r19 = load %ptr, %ptr* %r20
	store %ptr %r19, %ptr* %t6
	%r23 = inttoptr %word 1 to %ptr
	store %ptr %r23, %ptr* %t7
	%r24 = inttoptr %word 0 to %ptr
	%r25 = load %ptr, %ptr* %t6
	%r29 = bitcast %ptr %r25 to [0 x %ptr]*
	%r28 = ptrtoint %ptr %r24 to %word
	%r27 = getelementptr [0 x %ptr], [0 x %ptr]* %r29, %word 0, %word %r28
	%r26 = load %ptr, %ptr* %r27
	%r30 = load %ptr, %ptr* %t2
	%r34 = ptrtoint %ptr %r30 to %word
	%r33 = ptrtoint %ptr %r26 to %word
	%r32 = icmp eq %word %r34, %r33
	%r31 = inttoptr i1 %r32 to %ptr
	store %ptr %r31, %ptr* %t7
	%r35 = inttoptr %word 0 to %ptr
	%r39 = ptrtoint %ptr %r35 to %word
	%r38 = ptrtoint %ptr %r31 to %word
	%r37 = icmp eq %word %r39, %r38
	%r36 = inttoptr i1 %r37 to %ptr
	%r41 = ptrtoint %ptr %r36 to %word
	%r40 = icmp ne %word %r41, 0
	br i1 %r40, label %L602, label %L603
L603:
	%r42 = load %ptr, %ptr* %t6
	ret %ptr %r42
	store %ptr %r42, %ptr* %t7
	%r44 = inttoptr %word 0 to %ptr
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = ptrtoint %ptr %r42 to %word
	%r46 = icmp eq %word %r48, %r47
	%r45 = inttoptr i1 %r46 to %ptr
	%r50 = ptrtoint %ptr %r45 to %word
	%r49 = icmp ne %word %r50, 0
	br i1 %r49, label %L602, label %L604
L604:
	br label %L602
L602:
	%r51 = load %ptr, %ptr* %t7
	br label %L600
L600:
	%r52 = inttoptr %word 1 to %ptr
	%r53 = load %ptr, %ptr* %t4
	%r57 = ptrtoint %ptr %r53 to %word
	%r56 = ptrtoint %ptr %r52 to %word
	%r55 = sub %word %r57, %r56
	%r54 = inttoptr %word %r55 to %ptr
	store %ptr %r54, %ptr* %t4
	%r58 = inttoptr %word 0 to %ptr
	%r62 = ptrtoint %ptr %r58 to %word
	%r61 = ptrtoint %ptr %r54 to %word
	%r60 = icmp sle %word %r62, %r61
	%r59 = inttoptr i1 %r60 to %ptr
	%r64 = ptrtoint %ptr %r59 to %word
	%r63 = icmp ne %word %r64, 0
	br i1 %r63, label %L599, label %L601
L601:
	%r65 = inttoptr %word 0 to %ptr
	%r66 = load %ptr, %ptr* %t1
	%r70 = bitcast %ptr %r66 to [0 x %ptr]*
	%r69 = ptrtoint %ptr %r65 to %word
	%r68 = getelementptr [0 x %ptr], [0 x %ptr]* %r70, %word 0, %word %r69
	%r67 = load %ptr, %ptr* %r68
	store %ptr %r67, %ptr* %t1
	br label %L597
L597:
	%r71 = load %ptr, %ptr* %t1
	%r73 = ptrtoint %ptr %r71 to %word
	%r72 = icmp ne %word %r73, 0
	br i1 %r72, label %L596, label %L598
L598:
	ret %ptr %r71
}
@str610 = private unnamed_addr constant [43 x i8] c"k/env/lookup-variable-or-die failed for %s\00"
define %ptr @"k/env/lookup-variable-or-die"(%ptr %env, %ptr %name) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %env, %ptr* %t1
	store %ptr %name, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = load %ptr, %ptr* %t2
	%r3 = call %ptr @"k/env/lookup-variable"(%ptr %r1, %ptr %r2)
	store %ptr %r3, %ptr* %t3
	%r4 = inttoptr %word 0 to %ptr
	store %ptr %r4, %ptr* %t4
	%r5 = inttoptr %word 1 to %ptr
	store %ptr %r5, %ptr* %t5
	%r6 = load %ptr, %ptr* %t3
	store %ptr %r6, %ptr* %t5
	%r7 = inttoptr %word 0 to %ptr
	%r11 = ptrtoint %ptr %r7 to %word
	%r10 = ptrtoint %ptr %r6 to %word
	%r9 = icmp eq %word %r11, %r10
	%r8 = inttoptr i1 %r9 to %ptr
	%r13 = ptrtoint %ptr %r8 to %word
	%r12 = icmp ne %word %r13, 0
	br i1 %r12, label %L606, label %L607
L607:
	%r14 = load %ptr, %ptr* %t3
	%r15 = call %ptr @"get/type"(%ptr %r14)
	%r16 = inttoptr %word 13 to %ptr
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = icmp eq %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	store %ptr %r17, %ptr* %t5
	%r21 = inttoptr %word 0 to %ptr
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ptrtoint %ptr %r17 to %word
	%r23 = icmp eq %word %r25, %r24
	%r22 = inttoptr i1 %r23 to %ptr
	%r27 = ptrtoint %ptr %r22 to %word
	%r26 = icmp ne %word %r27, 0
	br i1 %r26, label %L606, label %L608
L608:
	br label %L606
L606:
	%r28 = load %ptr, %ptr* %t5
	store %ptr %r28, %ptr* %t4
	%r29 = inttoptr %word 0 to %ptr
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = icmp eq %word %r33, %r32
	%r30 = inttoptr i1 %r31 to %ptr
	%r35 = ptrtoint %ptr %r30 to %word
	%r34 = icmp ne %word %r35, 0
	br i1 %r34, label %L609, label %L605
L609:
	%r36 = getelementptr [43 x i8], [43 x i8]* @str610, %word 0, %word 0
	%r38 = inttoptr %word 0 to %ptr
	%r39 = load %ptr, %ptr* %t2
	%r43 = bitcast %ptr %r39 to [0 x %ptr]*
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = getelementptr [0 x %ptr], [0 x %ptr]* %r43, %word 0, %word %r42
	%r40 = load %ptr, %ptr* %r41
	%r44 = call %ptr @fatal1(%ptr %r36, %ptr %r40)
	store %ptr %r44, %ptr* %t4
	%r45 = inttoptr %word 0 to %ptr
	%r49 = ptrtoint %ptr %r45 to %word
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = icmp eq %word %r49, %r48
	%r46 = inttoptr i1 %r47 to %ptr
	%r51 = ptrtoint %ptr %r46 to %word
	%r50 = icmp ne %word %r51, 0
	br i1 %r50, label %L611, label %L605
L611:
	br label %L605
L605:
	%r52 = load %ptr, %ptr* %t4
	%r53 = load %ptr, %ptr* %t3
	ret %ptr %r53
}
@str615 = private unnamed_addr constant [45 x i8] c"undefined variable in env/variable-value: %s\00"
define %ptr @"k/env/variable-value"(%ptr %env, %ptr %name) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %env, %ptr* %t1
	store %ptr %name, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = load %ptr, %ptr* %t2
	%r3 = call %ptr @"k/env/lookup-variable"(%ptr %r1, %ptr %r2)
	store %ptr %r3, %ptr* %t3
	%r4 = load %ptr, %ptr* %t3
	%r6 = ptrtoint %ptr %r4 to %word
	%r5 = icmp ne %word %r6, 0
	br i1 %r5, label %L612, label %L613
L612:
	%r7 = inttoptr %word 1 to %ptr
	%r8 = load %ptr, %ptr* %t3
	%r12 = bitcast %ptr %r8 to [0 x %ptr]*
	%r11 = ptrtoint %ptr %r7 to %word
	%r10 = getelementptr [0 x %ptr], [0 x %ptr]* %r12, %word 0, %word %r11
	%r9 = load %ptr, %ptr* %r10
	store %ptr %r9, %ptr* %t4
	br label %L614
L613:
	%r13 = getelementptr [45 x i8], [45 x i8]* @str615, %word 0, %word 0
	%r15 = inttoptr %word 0 to %ptr
	%r16 = load %ptr, %ptr* %t2
	%r20 = bitcast %ptr %r16 to [0 x %ptr]*
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = getelementptr [0 x %ptr], [0 x %ptr]* %r20, %word 0, %word %r19
	%r17 = load %ptr, %ptr* %r18
	%r21 = call %ptr @fatal1(%ptr %r13, %ptr %r17)
	store %ptr %r21, %ptr* %t4
	br label %L614
L614:
	%r22 = load %ptr, %ptr* %t4
	ret %ptr %r22
}
define %ptr @"k/env/ensure-variable"(%ptr %env, %ptr %name) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	store %ptr %env, %ptr* %t1
	store %ptr %name, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = inttoptr %word 3 to %ptr
	%r4 = load %ptr, %ptr* %t1
	%r8 = bitcast %ptr %r4 to [0 x %ptr]*
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = getelementptr [0 x %ptr], [0 x %ptr]* %r8, %word 0, %word %r7
	%r5 = load %ptr, %ptr* %r6
	store %ptr %r5, %ptr* %t3
	%r9 = load %ptr, %ptr* %t3
	%r10 = call %ptr @"k/array-length"(%ptr %r9)
	store %ptr %r10, %ptr* %t4
	br label %L617
L616:
	%r11 = load %ptr, %ptr* %t3
	%r12 = load %ptr, %ptr* %t4
	%r13 = call %ptr @"k/array-at"(%ptr %r11, %ptr %r12)
	store %ptr %r13, %ptr* %t5
	%r14 = inttoptr %word 1 to %ptr
	store %ptr %r14, %ptr* %t6
	%r15 = inttoptr %word 0 to %ptr
	%r16 = load %ptr, %ptr* %t5
	%r20 = bitcast %ptr %r16 to [0 x %ptr]*
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = getelementptr [0 x %ptr], [0 x %ptr]* %r20, %word 0, %word %r19
	%r17 = load %ptr, %ptr* %r18
	%r21 = load %ptr, %ptr* %t2
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ptrtoint %ptr %r17 to %word
	%r23 = icmp eq %word %r25, %r24
	%r22 = inttoptr i1 %r23 to %ptr
	store %ptr %r22, %ptr* %t6
	%r26 = inttoptr %word 0 to %ptr
	%r30 = ptrtoint %ptr %r26 to %word
	%r29 = ptrtoint %ptr %r22 to %word
	%r28 = icmp eq %word %r30, %r29
	%r27 = inttoptr i1 %r28 to %ptr
	%r32 = ptrtoint %ptr %r27 to %word
	%r31 = icmp ne %word %r32, 0
	br i1 %r31, label %L619, label %L620
L620:
	%r33 = load %ptr, %ptr* %t5
	ret %ptr %r33
	store %ptr %r33, %ptr* %t6
	%r35 = inttoptr %word 0 to %ptr
	%r39 = ptrtoint %ptr %r35 to %word
	%r38 = ptrtoint %ptr %r33 to %word
	%r37 = icmp eq %word %r39, %r38
	%r36 = inttoptr i1 %r37 to %ptr
	%r41 = ptrtoint %ptr %r36 to %word
	%r40 = icmp ne %word %r41, 0
	br i1 %r40, label %L619, label %L621
L621:
	br label %L619
L619:
	%r42 = load %ptr, %ptr* %t6
	br label %L617
L617:
	%r43 = inttoptr %word 1 to %ptr
	%r44 = load %ptr, %ptr* %t4
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = ptrtoint %ptr %r43 to %word
	%r46 = sub %word %r48, %r47
	%r45 = inttoptr %word %r46 to %ptr
	store %ptr %r45, %ptr* %t4
	%r49 = inttoptr %word 0 to %ptr
	%r53 = ptrtoint %ptr %r49 to %word
	%r52 = ptrtoint %ptr %r45 to %word
	%r51 = icmp sle %word %r53, %r52
	%r50 = inttoptr i1 %r51 to %ptr
	%r55 = ptrtoint %ptr %r50 to %word
	%r54 = icmp ne %word %r55, 0
	br i1 %r54, label %L616, label %L618
L618:
	%r56 = inttoptr %word 1 to %ptr
	%r57 = inttoptr %word 2 to %ptr
	%r58 = load %ptr, %ptr* %t1
	%r62 = bitcast %ptr %r58 to [0 x %ptr]*
	%r61 = ptrtoint %ptr %r57 to %word
	%r60 = getelementptr [0 x %ptr], [0 x %ptr]* %r62, %word 0, %word %r61
	%r59 = load %ptr, %ptr* %r60
	%r66 = ptrtoint %ptr %r59 to %word
	%r65 = ptrtoint %ptr %r56 to %word
	%r64 = ashr %word %r66, %r65
	%r63 = inttoptr %word %r64 to %ptr
	store %ptr %r63, %ptr* %t5
	%r67 = load %ptr, %ptr* %t2
	%r68 = inttoptr %word 0 to %ptr
	%r69 = load %ptr, %ptr* %t1
	%r70 = load %ptr, %ptr* %t5
	%r71 = call %ptr @"new-<variable>"(%ptr %r67, %ptr %r68, %ptr %r69, %ptr %r70)
	store %ptr %r71, %ptr* %t6
	%r73 = getelementptr %ptr, %ptr* %t6, %word 0
	%r72 = bitcast %ptr* %r73 to %ptr
	%r74 = call %ptr @"gc/push-root"(%ptr %r72)
	%r75 = inttoptr %word 1 to %ptr
	%r76 = inttoptr %word 1 to %ptr
	%r77 = inttoptr %word 1 to %ptr
	%r78 = load %ptr, %ptr* %t5
	%r82 = ptrtoint %ptr %r78 to %word
	%r81 = ptrtoint %ptr %r77 to %word
	%r80 = add %word %r82, %r81
	%r79 = inttoptr %word %r80 to %ptr
	%r86 = ptrtoint %ptr %r79 to %word
	%r85 = ptrtoint %ptr %r76 to %word
	%r84 = shl %word %r86, %r85
	%r83 = inttoptr %word %r84 to %ptr
	%r90 = ptrtoint %ptr %r83 to %word
	%r89 = ptrtoint %ptr %r75 to %word
	%r88 = add %word %r90, %r89
	%r87 = inttoptr %word %r88 to %ptr
	%r91 = inttoptr %word 2 to %ptr
	%r92 = load %ptr, %ptr* %t1
	%r96 = bitcast %ptr %r92 to [0 x %ptr]*
	%r95 = ptrtoint %ptr %r91 to %word
	%r94 = getelementptr [0 x %ptr], [0 x %ptr]* %r96, %word 0, %word %r95
	store %ptr %r87, %ptr* %r94
	%r93 = bitcast %ptr %r87 to %ptr
	%r97 = load %ptr, %ptr* %t3
	%r98 = load %ptr, %ptr* %t6
	%r99 = call %ptr @"k/array-append"(%ptr %r97, %ptr %r98)
	store %ptr %r99, %ptr* %t7
	%r101 = getelementptr %ptr, %ptr* %t6, %word 0
	%r100 = bitcast %ptr* %r101 to %ptr
	%r102 = call %ptr @"gc/pop-root"(%ptr %r100)
	%r103 = load %ptr, %ptr* %t7
	ret %ptr %r103
}
define %ptr @"k/env/define"(%ptr %env, %ptr %name, %ptr %value) {
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %env, %ptr* %t1
	store %ptr %name, %ptr* %t2
	store %ptr %value, %ptr* %t3
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = inttoptr %word 0 to %ptr
	%r4 = load %ptr, %ptr* %t1
	%r5 = load %ptr, %ptr* %t2
	%r6 = call %ptr @"k/env/ensure-variable"(%ptr %r4, %ptr %r5)
	store %ptr %r6, %ptr* %t4
	%r7 = load %ptr, %ptr* %t3
	%r8 = inttoptr %word 1 to %ptr
	%r9 = load %ptr, %ptr* %t4
	%r13 = bitcast %ptr %r9 to [0 x %ptr]*
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = getelementptr [0 x %ptr], [0 x %ptr]* %r13, %word 0, %word %r12
	store %ptr %r7, %ptr* %r11
	%r10 = bitcast %ptr %r7 to %ptr
	%r14 = load %ptr, %ptr* %t4
	ret %ptr %r14
}
define %ptr @closure-628(%ptr %item, %ptr %candidate) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %item, %ptr* %t1
	store %ptr %candidate, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t2
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	%r8 = call i32 @strcmp(%ptr %r1, %ptr %r4)
	%r9 = sext i32 %r8 to %word
	%r10 = inttoptr %word %r9 to %ptr
	ret %ptr %r10
}
define %ptr @closure-629(%ptr %array, %ptr %index, %ptr %item) {
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %array, %ptr* %t1
	store %ptr %index, %ptr* %t2
	store %ptr %item, %ptr* %t3
	%r1 = inttoptr %word 0 to %ptr
	%r2 = load %ptr, %ptr* %t3
	%r3 = call %ptr @"new-<symbol>"(%ptr %r2)
	store %ptr %r3, %ptr* %t4
	%r5 = getelementptr %ptr, %ptr* %t4, %word 0
	%r4 = bitcast %ptr* %r5 to %ptr
	%r6 = call %ptr @"gc/push-root"(%ptr %r4)
	%r7 = load %ptr, %ptr* %t1
	%r8 = load %ptr, %ptr* %t2
	%r9 = load %ptr, %ptr* %t4
	%r10 = call %ptr @"k/array-insert"(%ptr %r7, %ptr %r8, %ptr %r9)
	%r11 = load %ptr, %ptr* %t4
	store %ptr %r11, %ptr* %t5
	%r13 = getelementptr %ptr, %ptr* %t4, %word 0
	%r12 = bitcast %ptr* %r13 to %ptr
	%r14 = call %ptr @"gc/pop-root"(%ptr %r12)
	%r15 = load %ptr, %ptr* %t5
	ret %ptr %r15
}
define %ptr @"k/intern"(%ptr %cstr) {
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t5 = alloca %ptr
	%t4 = alloca %ptr
	%t6 = alloca %ptr
	store %ptr %cstr, %ptr* %t1
	%r1 = load %ptr, %ptr* %t1
	%r2 = call i32 @strlen(%ptr %r1)
	%r3 = sext i32 %r2 to %word
	%r4 = inttoptr %word %r3 to %ptr
	store %ptr %r4, %ptr* %t2
	%r5 = inttoptr %word 0 to %ptr
	store %ptr %r5, %ptr* %t3
	%r6 = inttoptr %word 0 to %ptr
	store %ptr %r6, %ptr* %t4
	%r7 = load %ptr, %ptr* %t2
	store %ptr %r7, %ptr* %t5
	br label %L623
L622:
	%r8 = load %ptr, %ptr* %t4
	%r9 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r9 to [0 x i8]*
	%r13 = ptrtoint %ptr %r8 to %word
	%r12 = getelementptr [0 x i8], [0 x i8]* %r14, %word 0, %word %r13
	%r11 = load i8, i8* %r12
	%r10 = inttoptr i8 %r11 to %ptr
	%r15 = inttoptr %word 58 to %ptr
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = ptrtoint %ptr %r10 to %word
	%r17 = icmp eq %word %r19, %r18
	%r16 = inttoptr i1 %r17 to %ptr
	%r21 = ptrtoint %ptr %r16 to %word
	%r20 = icmp ne %word %r21, 0
	br i1 %r20, label %L625, label %L626
L625:
	%r22 = load %ptr, %ptr* %t4
	%r23 = load %ptr, %ptr* %t1
	%r27 = ptrtoint %ptr %r23 to %word
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = add %word %r27, %r26
	%r24 = inttoptr %word %r25 to %ptr
	%r28 = inttoptr %word 1 to %ptr
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = ptrtoint %ptr %r24 to %word
	%r30 = add %word %r32, %r31
	%r29 = inttoptr %word %r30 to %ptr
	%r33 = call %ptr @"k/intern"(%ptr %r29)
	ret %ptr %r33
	store %ptr %r33, %ptr* %t6
	br label %L627
L626:
	%r35 = inttoptr %word 0 to %ptr
	store %ptr %r35, %ptr* %t6
	br label %L627
L627:
	%r36 = load %ptr, %ptr* %t6
	%r37 = inttoptr %word 1 to %ptr
	%r38 = load %ptr, %ptr* %t4
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = add %word %r42, %r41
	%r39 = inttoptr %word %r40 to %ptr
	store %ptr %r39, %ptr* %t4
	br label %L623
L623:
	%r43 = load %ptr, %ptr* %t5
	%r44 = load %ptr, %ptr* %t4
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = ptrtoint %ptr %r43 to %word
	%r46 = icmp slt %word %r48, %r47
	%r45 = inttoptr i1 %r46 to %ptr
	%r50 = ptrtoint %ptr %r45 to %word
	%r49 = icmp ne %word %r50, 0
	br i1 %r49, label %L622, label %L624
L624:
	%r51 = load %ptr, %ptr* @"*symbols*"
	%r52 = load %ptr, %ptr* %t1
	%r53 = bitcast %ptr (%ptr, %ptr)* @closure-628 to %ptr
	%r54 = bitcast %ptr (%ptr, %ptr, %ptr)* @closure-629 to %ptr
	%r55 = call %ptr @array-binary-search(%ptr %r51, %ptr %r52, %ptr %r53, %ptr %r54)
	ret %ptr %r55
}
define %ptr @is_blank(%ptr %c) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	store %ptr %c, %ptr* %t1
	%r1 = inttoptr %word 0 to %ptr
	store %ptr %r1, %ptr* %t2
	%r2 = load %ptr, %ptr* %t1
	%r3 = inttoptr %word 32 to %ptr
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = icmp eq %word %r7, %r6
	%r4 = inttoptr i1 %r5 to %ptr
	store %ptr %r4, %ptr* %t2
	%r8 = inttoptr %word 0 to %ptr
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = ptrtoint %ptr %r4 to %word
	%r10 = icmp eq %word %r12, %r11
	%r9 = inttoptr i1 %r10 to %ptr
	%r14 = ptrtoint %ptr %r9 to %word
	%r13 = icmp ne %word %r14, 0
	br i1 %r13, label %L631, label %L630
L631:
	%r15 = load %ptr, %ptr* %t1
	%r16 = inttoptr %word 9 to %ptr
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = icmp eq %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	store %ptr %r17, %ptr* %t2
	%r21 = inttoptr %word 0 to %ptr
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ptrtoint %ptr %r17 to %word
	%r23 = icmp eq %word %r25, %r24
	%r22 = inttoptr i1 %r23 to %ptr
	%r27 = ptrtoint %ptr %r22 to %word
	%r26 = icmp ne %word %r27, 0
	br i1 %r26, label %L632, label %L630
L632:
	%r28 = load %ptr, %ptr* %t1
	%r29 = inttoptr %word 10 to %ptr
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = icmp eq %word %r33, %r32
	%r30 = inttoptr i1 %r31 to %ptr
	store %ptr %r30, %ptr* %t2
	%r34 = inttoptr %word 0 to %ptr
	%r38 = ptrtoint %ptr %r34 to %word
	%r37 = ptrtoint %ptr %r30 to %word
	%r36 = icmp eq %word %r38, %r37
	%r35 = inttoptr i1 %r36 to %ptr
	%r40 = ptrtoint %ptr %r35 to %word
	%r39 = icmp ne %word %r40, 0
	br i1 %r39, label %L633, label %L630
L633:
	%r41 = load %ptr, %ptr* %t1
	%r42 = inttoptr %word 11 to %ptr
	%r46 = ptrtoint %ptr %r42 to %word
	%r45 = ptrtoint %ptr %r41 to %word
	%r44 = icmp eq %word %r46, %r45
	%r43 = inttoptr i1 %r44 to %ptr
	store %ptr %r43, %ptr* %t2
	%r47 = inttoptr %word 0 to %ptr
	%r51 = ptrtoint %ptr %r47 to %word
	%r50 = ptrtoint %ptr %r43 to %word
	%r49 = icmp eq %word %r51, %r50
	%r48 = inttoptr i1 %r49 to %ptr
	%r53 = ptrtoint %ptr %r48 to %word
	%r52 = icmp ne %word %r53, 0
	br i1 %r52, label %L634, label %L630
L634:
	%r54 = load %ptr, %ptr* %t1
	%r55 = inttoptr %word 12 to %ptr
	%r59 = ptrtoint %ptr %r55 to %word
	%r58 = ptrtoint %ptr %r54 to %word
	%r57 = icmp eq %word %r59, %r58
	%r56 = inttoptr i1 %r57 to %ptr
	store %ptr %r56, %ptr* %t2
	%r60 = inttoptr %word 0 to %ptr
	%r64 = ptrtoint %ptr %r60 to %word
	%r63 = ptrtoint %ptr %r56 to %word
	%r62 = icmp eq %word %r64, %r63
	%r61 = inttoptr i1 %r62 to %ptr
	%r66 = ptrtoint %ptr %r61 to %word
	%r65 = icmp ne %word %r66, 0
	br i1 %r65, label %L635, label %L630
L635:
	%r67 = load %ptr, %ptr* %t1
	%r68 = inttoptr %word 13 to %ptr
	%r72 = ptrtoint %ptr %r68 to %word
	%r71 = ptrtoint %ptr %r67 to %word
	%r70 = icmp eq %word %r72, %r71
	%r69 = inttoptr i1 %r70 to %ptr
	store %ptr %r69, %ptr* %t2
	%r73 = inttoptr %word 0 to %ptr
	%r77 = ptrtoint %ptr %r73 to %word
	%r76 = ptrtoint %ptr %r69 to %word
	%r75 = icmp eq %word %r77, %r76
	%r74 = inttoptr i1 %r75 to %ptr
	%r79 = ptrtoint %ptr %r74 to %word
	%r78 = icmp ne %word %r79, 0
	br i1 %r78, label %L636, label %L630
L636:
	br label %L630
L630:
	%r80 = load %ptr, %ptr* %t2
	ret %ptr %r80
}
define %ptr @is_digit10(%ptr %c) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	store %ptr %c, %ptr* %t1
	%r1 = inttoptr %word 1 to %ptr
	store %ptr %r1, %ptr* %t2
	%r2 = load %ptr, %ptr* %t1
	%r3 = inttoptr %word 48 to %ptr
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = icmp sle %word %r7, %r6
	%r4 = inttoptr i1 %r5 to %ptr
	store %ptr %r4, %ptr* %t2
	%r8 = inttoptr %word 0 to %ptr
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = ptrtoint %ptr %r4 to %word
	%r10 = icmp eq %word %r12, %r11
	%r9 = inttoptr i1 %r10 to %ptr
	%r14 = ptrtoint %ptr %r9 to %word
	%r13 = icmp ne %word %r14, 0
	br i1 %r13, label %L637, label %L638
L638:
	%r15 = inttoptr %word 57 to %ptr
	%r16 = load %ptr, %ptr* %t1
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = icmp sle %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	store %ptr %r17, %ptr* %t2
	%r21 = inttoptr %word 0 to %ptr
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ptrtoint %ptr %r17 to %word
	%r23 = icmp eq %word %r25, %r24
	%r22 = inttoptr i1 %r23 to %ptr
	%r27 = ptrtoint %ptr %r22 to %word
	%r26 = icmp ne %word %r27, 0
	br i1 %r26, label %L637, label %L639
L639:
	br label %L637
L637:
	%r28 = load %ptr, %ptr* %t2
	ret %ptr %r28
}
define %ptr @is_digit16(%ptr %c) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %c, %ptr* %t1
	%r1 = inttoptr %word 0 to %ptr
	store %ptr %r1, %ptr* %t2
	%r2 = inttoptr %word 1 to %ptr
	store %ptr %r2, %ptr* %t3
	%r3 = load %ptr, %ptr* %t1
	%r4 = inttoptr %word 48 to %ptr
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = icmp sle %word %r8, %r7
	%r5 = inttoptr i1 %r6 to %ptr
	store %ptr %r5, %ptr* %t3
	%r9 = inttoptr %word 0 to %ptr
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = ptrtoint %ptr %r5 to %word
	%r11 = icmp eq %word %r13, %r12
	%r10 = inttoptr i1 %r11 to %ptr
	%r15 = ptrtoint %ptr %r10 to %word
	%r14 = icmp ne %word %r15, 0
	br i1 %r14, label %L641, label %L642
L642:
	%r16 = inttoptr %word 57 to %ptr
	%r17 = load %ptr, %ptr* %t1
	%r21 = ptrtoint %ptr %r17 to %word
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = icmp sle %word %r21, %r20
	%r18 = inttoptr i1 %r19 to %ptr
	store %ptr %r18, %ptr* %t3
	%r22 = inttoptr %word 0 to %ptr
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ptrtoint %ptr %r18 to %word
	%r24 = icmp eq %word %r26, %r25
	%r23 = inttoptr i1 %r24 to %ptr
	%r28 = ptrtoint %ptr %r23 to %word
	%r27 = icmp ne %word %r28, 0
	br i1 %r27, label %L641, label %L643
L643:
	br label %L641
L641:
	%r29 = load %ptr, %ptr* %t3
	store %ptr %r29, %ptr* %t2
	%r30 = inttoptr %word 0 to %ptr
	%r34 = ptrtoint %ptr %r30 to %word
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = icmp eq %word %r34, %r33
	%r31 = inttoptr i1 %r32 to %ptr
	%r36 = ptrtoint %ptr %r31 to %word
	%r35 = icmp ne %word %r36, 0
	br i1 %r35, label %L644, label %L640
L644:
	%r37 = inttoptr %word 1 to %ptr
	store %ptr %r37, %ptr* %t3
	%r38 = load %ptr, %ptr* %t1
	%r39 = inttoptr %word 97 to %ptr
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = icmp sle %word %r43, %r42
	%r40 = inttoptr i1 %r41 to %ptr
	store %ptr %r40, %ptr* %t3
	%r44 = inttoptr %word 0 to %ptr
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = ptrtoint %ptr %r40 to %word
	%r46 = icmp eq %word %r48, %r47
	%r45 = inttoptr i1 %r46 to %ptr
	%r50 = ptrtoint %ptr %r45 to %word
	%r49 = icmp ne %word %r50, 0
	br i1 %r49, label %L645, label %L646
L646:
	%r51 = inttoptr %word 102 to %ptr
	%r52 = load %ptr, %ptr* %t1
	%r56 = ptrtoint %ptr %r52 to %word
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = icmp sle %word %r56, %r55
	%r53 = inttoptr i1 %r54 to %ptr
	store %ptr %r53, %ptr* %t3
	%r57 = inttoptr %word 0 to %ptr
	%r61 = ptrtoint %ptr %r57 to %word
	%r60 = ptrtoint %ptr %r53 to %word
	%r59 = icmp eq %word %r61, %r60
	%r58 = inttoptr i1 %r59 to %ptr
	%r63 = ptrtoint %ptr %r58 to %word
	%r62 = icmp ne %word %r63, 0
	br i1 %r62, label %L645, label %L647
L647:
	br label %L645
L645:
	%r64 = load %ptr, %ptr* %t3
	store %ptr %r64, %ptr* %t2
	%r65 = inttoptr %word 0 to %ptr
	%r69 = ptrtoint %ptr %r65 to %word
	%r68 = ptrtoint %ptr %r64 to %word
	%r67 = icmp eq %word %r69, %r68
	%r66 = inttoptr i1 %r67 to %ptr
	%r71 = ptrtoint %ptr %r66 to %word
	%r70 = icmp ne %word %r71, 0
	br i1 %r70, label %L648, label %L640
L648:
	%r72 = inttoptr %word 1 to %ptr
	store %ptr %r72, %ptr* %t3
	%r73 = load %ptr, %ptr* %t1
	%r74 = inttoptr %word 65 to %ptr
	%r78 = ptrtoint %ptr %r74 to %word
	%r77 = ptrtoint %ptr %r73 to %word
	%r76 = icmp sle %word %r78, %r77
	%r75 = inttoptr i1 %r76 to %ptr
	store %ptr %r75, %ptr* %t3
	%r79 = inttoptr %word 0 to %ptr
	%r83 = ptrtoint %ptr %r79 to %word
	%r82 = ptrtoint %ptr %r75 to %word
	%r81 = icmp eq %word %r83, %r82
	%r80 = inttoptr i1 %r81 to %ptr
	%r85 = ptrtoint %ptr %r80 to %word
	%r84 = icmp ne %word %r85, 0
	br i1 %r84, label %L649, label %L650
L650:
	%r86 = inttoptr %word 70 to %ptr
	%r87 = load %ptr, %ptr* %t1
	%r91 = ptrtoint %ptr %r87 to %word
	%r90 = ptrtoint %ptr %r86 to %word
	%r89 = icmp sle %word %r91, %r90
	%r88 = inttoptr i1 %r89 to %ptr
	store %ptr %r88, %ptr* %t3
	%r92 = inttoptr %word 0 to %ptr
	%r96 = ptrtoint %ptr %r92 to %word
	%r95 = ptrtoint %ptr %r88 to %word
	%r94 = icmp eq %word %r96, %r95
	%r93 = inttoptr i1 %r94 to %ptr
	%r98 = ptrtoint %ptr %r93 to %word
	%r97 = icmp ne %word %r98, 0
	br i1 %r97, label %L649, label %L651
L651:
	br label %L649
L649:
	%r99 = load %ptr, %ptr* %t3
	store %ptr %r99, %ptr* %t2
	%r100 = inttoptr %word 0 to %ptr
	%r104 = ptrtoint %ptr %r100 to %word
	%r103 = ptrtoint %ptr %r99 to %word
	%r102 = icmp eq %word %r104, %r103
	%r101 = inttoptr i1 %r102 to %ptr
	%r106 = ptrtoint %ptr %r101 to %word
	%r105 = icmp ne %word %r106, 0
	br i1 %r105, label %L652, label %L640
L652:
	br label %L640
L640:
	%r107 = load %ptr, %ptr* %t2
	ret %ptr %r107
}
define %ptr @is_alpha(%ptr %c) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %c, %ptr* %t1
	%r1 = inttoptr %word 0 to %ptr
	store %ptr %r1, %ptr* %t2
	%r2 = inttoptr %word 1 to %ptr
	store %ptr %r2, %ptr* %t3
	%r3 = load %ptr, %ptr* %t1
	%r4 = inttoptr %word 97 to %ptr
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = icmp sle %word %r8, %r7
	%r5 = inttoptr i1 %r6 to %ptr
	store %ptr %r5, %ptr* %t3
	%r9 = inttoptr %word 0 to %ptr
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = ptrtoint %ptr %r5 to %word
	%r11 = icmp eq %word %r13, %r12
	%r10 = inttoptr i1 %r11 to %ptr
	%r15 = ptrtoint %ptr %r10 to %word
	%r14 = icmp ne %word %r15, 0
	br i1 %r14, label %L654, label %L655
L655:
	%r16 = inttoptr %word 122 to %ptr
	%r17 = load %ptr, %ptr* %t1
	%r21 = ptrtoint %ptr %r17 to %word
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = icmp sle %word %r21, %r20
	%r18 = inttoptr i1 %r19 to %ptr
	store %ptr %r18, %ptr* %t3
	%r22 = inttoptr %word 0 to %ptr
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ptrtoint %ptr %r18 to %word
	%r24 = icmp eq %word %r26, %r25
	%r23 = inttoptr i1 %r24 to %ptr
	%r28 = ptrtoint %ptr %r23 to %word
	%r27 = icmp ne %word %r28, 0
	br i1 %r27, label %L654, label %L656
L656:
	br label %L654
L654:
	%r29 = load %ptr, %ptr* %t3
	store %ptr %r29, %ptr* %t2
	%r30 = inttoptr %word 0 to %ptr
	%r34 = ptrtoint %ptr %r30 to %word
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = icmp eq %word %r34, %r33
	%r31 = inttoptr i1 %r32 to %ptr
	%r36 = ptrtoint %ptr %r31 to %word
	%r35 = icmp ne %word %r36, 0
	br i1 %r35, label %L657, label %L653
L657:
	%r37 = inttoptr %word 1 to %ptr
	store %ptr %r37, %ptr* %t3
	%r38 = load %ptr, %ptr* %t1
	%r39 = inttoptr %word 65 to %ptr
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = icmp sle %word %r43, %r42
	%r40 = inttoptr i1 %r41 to %ptr
	store %ptr %r40, %ptr* %t3
	%r44 = inttoptr %word 0 to %ptr
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = ptrtoint %ptr %r40 to %word
	%r46 = icmp eq %word %r48, %r47
	%r45 = inttoptr i1 %r46 to %ptr
	%r50 = ptrtoint %ptr %r45 to %word
	%r49 = icmp ne %word %r50, 0
	br i1 %r49, label %L658, label %L659
L659:
	%r51 = inttoptr %word 90 to %ptr
	%r52 = load %ptr, %ptr* %t1
	%r56 = ptrtoint %ptr %r52 to %word
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = icmp sle %word %r56, %r55
	%r53 = inttoptr i1 %r54 to %ptr
	store %ptr %r53, %ptr* %t3
	%r57 = inttoptr %word 0 to %ptr
	%r61 = ptrtoint %ptr %r57 to %word
	%r60 = ptrtoint %ptr %r53 to %word
	%r59 = icmp eq %word %r61, %r60
	%r58 = inttoptr i1 %r59 to %ptr
	%r63 = ptrtoint %ptr %r58 to %word
	%r62 = icmp ne %word %r63, 0
	br i1 %r62, label %L658, label %L660
L660:
	br label %L658
L658:
	%r64 = load %ptr, %ptr* %t3
	store %ptr %r64, %ptr* %t2
	%r65 = inttoptr %word 0 to %ptr
	%r69 = ptrtoint %ptr %r65 to %word
	%r68 = ptrtoint %ptr %r64 to %word
	%r67 = icmp eq %word %r69, %r68
	%r66 = inttoptr i1 %r67 to %ptr
	%r71 = ptrtoint %ptr %r66 to %word
	%r70 = icmp ne %word %r71, 0
	br i1 %r70, label %L661, label %L653
L661:
	br label %L653
L653:
	%r72 = load %ptr, %ptr* %t2
	ret %ptr %r72
}
define %ptr @is_letter(%ptr %c) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %c, %ptr* %t1
	%r1 = inttoptr %word 0 to %ptr
	store %ptr %r1, %ptr* %t2
	%r2 = load %ptr, %ptr* %t1
	%r3 = inttoptr %word 33 to %ptr
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = icmp eq %word %r7, %r6
	%r4 = inttoptr i1 %r5 to %ptr
	store %ptr %r4, %ptr* %t2
	%r8 = inttoptr %word 0 to %ptr
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = ptrtoint %ptr %r4 to %word
	%r10 = icmp eq %word %r12, %r11
	%r9 = inttoptr i1 %r10 to %ptr
	%r14 = ptrtoint %ptr %r9 to %word
	%r13 = icmp ne %word %r14, 0
	br i1 %r13, label %L663, label %L662
L663:
	%r15 = inttoptr %word 1 to %ptr
	store %ptr %r15, %ptr* %t3
	%r16 = load %ptr, %ptr* %t1
	%r17 = inttoptr %word 35 to %ptr
	%r21 = ptrtoint %ptr %r17 to %word
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = icmp sle %word %r21, %r20
	%r18 = inttoptr i1 %r19 to %ptr
	store %ptr %r18, %ptr* %t3
	%r22 = inttoptr %word 0 to %ptr
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ptrtoint %ptr %r18 to %word
	%r24 = icmp eq %word %r26, %r25
	%r23 = inttoptr i1 %r24 to %ptr
	%r28 = ptrtoint %ptr %r23 to %word
	%r27 = icmp ne %word %r28, 0
	br i1 %r27, label %L664, label %L665
L665:
	%r29 = inttoptr %word 38 to %ptr
	%r30 = load %ptr, %ptr* %t1
	%r34 = ptrtoint %ptr %r30 to %word
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = icmp sle %word %r34, %r33
	%r31 = inttoptr i1 %r32 to %ptr
	store %ptr %r31, %ptr* %t3
	%r35 = inttoptr %word 0 to %ptr
	%r39 = ptrtoint %ptr %r35 to %word
	%r38 = ptrtoint %ptr %r31 to %word
	%r37 = icmp eq %word %r39, %r38
	%r36 = inttoptr i1 %r37 to %ptr
	%r41 = ptrtoint %ptr %r36 to %word
	%r40 = icmp ne %word %r41, 0
	br i1 %r40, label %L664, label %L666
L666:
	br label %L664
L664:
	%r42 = load %ptr, %ptr* %t3
	store %ptr %r42, %ptr* %t2
	%r43 = inttoptr %word 0 to %ptr
	%r47 = ptrtoint %ptr %r43 to %word
	%r46 = ptrtoint %ptr %r42 to %word
	%r45 = icmp eq %word %r47, %r46
	%r44 = inttoptr i1 %r45 to %ptr
	%r49 = ptrtoint %ptr %r44 to %word
	%r48 = icmp ne %word %r49, 0
	br i1 %r48, label %L667, label %L662
L667:
	%r50 = inttoptr %word 1 to %ptr
	store %ptr %r50, %ptr* %t3
	%r51 = load %ptr, %ptr* %t1
	%r52 = inttoptr %word 42 to %ptr
	%r56 = ptrtoint %ptr %r52 to %word
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = icmp sle %word %r56, %r55
	%r53 = inttoptr i1 %r54 to %ptr
	store %ptr %r53, %ptr* %t3
	%r57 = inttoptr %word 0 to %ptr
	%r61 = ptrtoint %ptr %r57 to %word
	%r60 = ptrtoint %ptr %r53 to %word
	%r59 = icmp eq %word %r61, %r60
	%r58 = inttoptr i1 %r59 to %ptr
	%r63 = ptrtoint %ptr %r58 to %word
	%r62 = icmp ne %word %r63, 0
	br i1 %r62, label %L668, label %L669
L669:
	%r64 = inttoptr %word 47 to %ptr
	%r65 = load %ptr, %ptr* %t1
	%r69 = ptrtoint %ptr %r65 to %word
	%r68 = ptrtoint %ptr %r64 to %word
	%r67 = icmp sle %word %r69, %r68
	%r66 = inttoptr i1 %r67 to %ptr
	store %ptr %r66, %ptr* %t3
	%r70 = inttoptr %word 0 to %ptr
	%r74 = ptrtoint %ptr %r70 to %word
	%r73 = ptrtoint %ptr %r66 to %word
	%r72 = icmp eq %word %r74, %r73
	%r71 = inttoptr i1 %r72 to %ptr
	%r76 = ptrtoint %ptr %r71 to %word
	%r75 = icmp ne %word %r76, 0
	br i1 %r75, label %L668, label %L670
L670:
	br label %L668
L668:
	%r77 = load %ptr, %ptr* %t3
	store %ptr %r77, %ptr* %t2
	%r78 = inttoptr %word 0 to %ptr
	%r82 = ptrtoint %ptr %r78 to %word
	%r81 = ptrtoint %ptr %r77 to %word
	%r80 = icmp eq %word %r82, %r81
	%r79 = inttoptr i1 %r80 to %ptr
	%r84 = ptrtoint %ptr %r79 to %word
	%r83 = icmp ne %word %r84, 0
	br i1 %r83, label %L671, label %L662
L671:
	%r85 = load %ptr, %ptr* %t1
	%r86 = inttoptr %word 58 to %ptr
	%r90 = ptrtoint %ptr %r86 to %word
	%r89 = ptrtoint %ptr %r85 to %word
	%r88 = icmp eq %word %r90, %r89
	%r87 = inttoptr i1 %r88 to %ptr
	store %ptr %r87, %ptr* %t2
	%r91 = inttoptr %word 0 to %ptr
	%r95 = ptrtoint %ptr %r91 to %word
	%r94 = ptrtoint %ptr %r87 to %word
	%r93 = icmp eq %word %r95, %r94
	%r92 = inttoptr i1 %r93 to %ptr
	%r97 = ptrtoint %ptr %r92 to %word
	%r96 = icmp ne %word %r97, 0
	br i1 %r96, label %L672, label %L662
L672:
	%r98 = inttoptr %word 1 to %ptr
	store %ptr %r98, %ptr* %t3
	%r99 = load %ptr, %ptr* %t1
	%r100 = inttoptr %word 60 to %ptr
	%r104 = ptrtoint %ptr %r100 to %word
	%r103 = ptrtoint %ptr %r99 to %word
	%r102 = icmp sle %word %r104, %r103
	%r101 = inttoptr i1 %r102 to %ptr
	store %ptr %r101, %ptr* %t3
	%r105 = inttoptr %word 0 to %ptr
	%r109 = ptrtoint %ptr %r105 to %word
	%r108 = ptrtoint %ptr %r101 to %word
	%r107 = icmp eq %word %r109, %r108
	%r106 = inttoptr i1 %r107 to %ptr
	%r111 = ptrtoint %ptr %r106 to %word
	%r110 = icmp ne %word %r111, 0
	br i1 %r110, label %L673, label %L674
L674:
	%r112 = inttoptr %word 90 to %ptr
	%r113 = load %ptr, %ptr* %t1
	%r117 = ptrtoint %ptr %r113 to %word
	%r116 = ptrtoint %ptr %r112 to %word
	%r115 = icmp sle %word %r117, %r116
	%r114 = inttoptr i1 %r115 to %ptr
	store %ptr %r114, %ptr* %t3
	%r118 = inttoptr %word 0 to %ptr
	%r122 = ptrtoint %ptr %r118 to %word
	%r121 = ptrtoint %ptr %r114 to %word
	%r120 = icmp eq %word %r122, %r121
	%r119 = inttoptr i1 %r120 to %ptr
	%r124 = ptrtoint %ptr %r119 to %word
	%r123 = icmp ne %word %r124, 0
	br i1 %r123, label %L673, label %L675
L675:
	br label %L673
L673:
	%r125 = load %ptr, %ptr* %t3
	store %ptr %r125, %ptr* %t2
	%r126 = inttoptr %word 0 to %ptr
	%r130 = ptrtoint %ptr %r126 to %word
	%r129 = ptrtoint %ptr %r125 to %word
	%r128 = icmp eq %word %r130, %r129
	%r127 = inttoptr i1 %r128 to %ptr
	%r132 = ptrtoint %ptr %r127 to %word
	%r131 = icmp ne %word %r132, 0
	br i1 %r131, label %L676, label %L662
L676:
	%r133 = load %ptr, %ptr* %t1
	%r134 = inttoptr %word 92 to %ptr
	%r138 = ptrtoint %ptr %r134 to %word
	%r137 = ptrtoint %ptr %r133 to %word
	%r136 = icmp eq %word %r138, %r137
	%r135 = inttoptr i1 %r136 to %ptr
	store %ptr %r135, %ptr* %t2
	%r139 = inttoptr %word 0 to %ptr
	%r143 = ptrtoint %ptr %r139 to %word
	%r142 = ptrtoint %ptr %r135 to %word
	%r141 = icmp eq %word %r143, %r142
	%r140 = inttoptr i1 %r141 to %ptr
	%r145 = ptrtoint %ptr %r140 to %word
	%r144 = icmp ne %word %r145, 0
	br i1 %r144, label %L677, label %L662
L677:
	%r146 = load %ptr, %ptr* %t1
	%r147 = inttoptr %word 94 to %ptr
	%r151 = ptrtoint %ptr %r147 to %word
	%r150 = ptrtoint %ptr %r146 to %word
	%r149 = icmp eq %word %r151, %r150
	%r148 = inttoptr i1 %r149 to %ptr
	store %ptr %r148, %ptr* %t2
	%r152 = inttoptr %word 0 to %ptr
	%r156 = ptrtoint %ptr %r152 to %word
	%r155 = ptrtoint %ptr %r148 to %word
	%r154 = icmp eq %word %r156, %r155
	%r153 = inttoptr i1 %r154 to %ptr
	%r158 = ptrtoint %ptr %r153 to %word
	%r157 = icmp ne %word %r158, 0
	br i1 %r157, label %L678, label %L662
L678:
	%r159 = load %ptr, %ptr* %t1
	%r160 = inttoptr %word 95 to %ptr
	%r164 = ptrtoint %ptr %r160 to %word
	%r163 = ptrtoint %ptr %r159 to %word
	%r162 = icmp eq %word %r164, %r163
	%r161 = inttoptr i1 %r162 to %ptr
	store %ptr %r161, %ptr* %t2
	%r165 = inttoptr %word 0 to %ptr
	%r169 = ptrtoint %ptr %r165 to %word
	%r168 = ptrtoint %ptr %r161 to %word
	%r167 = icmp eq %word %r169, %r168
	%r166 = inttoptr i1 %r167 to %ptr
	%r171 = ptrtoint %ptr %r166 to %word
	%r170 = icmp ne %word %r171, 0
	br i1 %r170, label %L679, label %L662
L679:
	%r172 = inttoptr %word 1 to %ptr
	store %ptr %r172, %ptr* %t3
	%r173 = load %ptr, %ptr* %t1
	%r174 = inttoptr %word 97 to %ptr
	%r178 = ptrtoint %ptr %r174 to %word
	%r177 = ptrtoint %ptr %r173 to %word
	%r176 = icmp sle %word %r178, %r177
	%r175 = inttoptr i1 %r176 to %ptr
	store %ptr %r175, %ptr* %t3
	%r179 = inttoptr %word 0 to %ptr
	%r183 = ptrtoint %ptr %r179 to %word
	%r182 = ptrtoint %ptr %r175 to %word
	%r181 = icmp eq %word %r183, %r182
	%r180 = inttoptr i1 %r181 to %ptr
	%r185 = ptrtoint %ptr %r180 to %word
	%r184 = icmp ne %word %r185, 0
	br i1 %r184, label %L680, label %L681
L681:
	%r186 = inttoptr %word 122 to %ptr
	%r187 = load %ptr, %ptr* %t1
	%r191 = ptrtoint %ptr %r187 to %word
	%r190 = ptrtoint %ptr %r186 to %word
	%r189 = icmp sle %word %r191, %r190
	%r188 = inttoptr i1 %r189 to %ptr
	store %ptr %r188, %ptr* %t3
	%r192 = inttoptr %word 0 to %ptr
	%r196 = ptrtoint %ptr %r192 to %word
	%r195 = ptrtoint %ptr %r188 to %word
	%r194 = icmp eq %word %r196, %r195
	%r193 = inttoptr i1 %r194 to %ptr
	%r198 = ptrtoint %ptr %r193 to %word
	%r197 = icmp ne %word %r198, 0
	br i1 %r197, label %L680, label %L682
L682:
	br label %L680
L680:
	%r199 = load %ptr, %ptr* %t3
	store %ptr %r199, %ptr* %t2
	%r200 = inttoptr %word 0 to %ptr
	%r204 = ptrtoint %ptr %r200 to %word
	%r203 = ptrtoint %ptr %r199 to %word
	%r202 = icmp eq %word %r204, %r203
	%r201 = inttoptr i1 %r202 to %ptr
	%r206 = ptrtoint %ptr %r201 to %word
	%r205 = icmp ne %word %r206, 0
	br i1 %r205, label %L683, label %L662
L683:
	%r207 = load %ptr, %ptr* %t1
	%r208 = inttoptr %word 124 to %ptr
	%r212 = ptrtoint %ptr %r208 to %word
	%r211 = ptrtoint %ptr %r207 to %word
	%r210 = icmp eq %word %r212, %r211
	%r209 = inttoptr i1 %r210 to %ptr
	store %ptr %r209, %ptr* %t2
	%r213 = inttoptr %word 0 to %ptr
	%r217 = ptrtoint %ptr %r213 to %word
	%r216 = ptrtoint %ptr %r209 to %word
	%r215 = icmp eq %word %r217, %r216
	%r214 = inttoptr i1 %r215 to %ptr
	%r219 = ptrtoint %ptr %r214 to %word
	%r218 = icmp ne %word %r219, 0
	br i1 %r218, label %L684, label %L662
L684:
	%r220 = load %ptr, %ptr* %t1
	%r221 = inttoptr %word 126 to %ptr
	%r225 = ptrtoint %ptr %r221 to %word
	%r224 = ptrtoint %ptr %r220 to %word
	%r223 = icmp eq %word %r225, %r224
	%r222 = inttoptr i1 %r223 to %ptr
	store %ptr %r222, %ptr* %t2
	%r226 = inttoptr %word 0 to %ptr
	%r230 = ptrtoint %ptr %r226 to %word
	%r229 = ptrtoint %ptr %r222 to %word
	%r228 = icmp eq %word %r230, %r229
	%r227 = inttoptr i1 %r228 to %ptr
	%r232 = ptrtoint %ptr %r227 to %word
	%r231 = icmp ne %word %r232, 0
	br i1 %r231, label %L685, label %L662
L685:
	br label %L662
L662:
	%r233 = load %ptr, %ptr* %t2
	ret %ptr %r233
}
define %ptr @is_octal(%ptr %c) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	store %ptr %c, %ptr* %t1
	%r1 = inttoptr %word 1 to %ptr
	store %ptr %r1, %ptr* %t2
	%r2 = load %ptr, %ptr* %t1
	%r3 = inttoptr %word 48 to %ptr
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = icmp sle %word %r7, %r6
	%r4 = inttoptr i1 %r5 to %ptr
	store %ptr %r4, %ptr* %t2
	%r8 = inttoptr %word 0 to %ptr
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = ptrtoint %ptr %r4 to %word
	%r10 = icmp eq %word %r12, %r11
	%r9 = inttoptr i1 %r10 to %ptr
	%r14 = ptrtoint %ptr %r9 to %word
	%r13 = icmp ne %word %r14, 0
	br i1 %r13, label %L686, label %L687
L687:
	%r15 = inttoptr %word 55 to %ptr
	%r16 = load %ptr, %ptr* %t1
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = icmp sle %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	store %ptr %r17, %ptr* %t2
	%r21 = inttoptr %word 0 to %ptr
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ptrtoint %ptr %r17 to %word
	%r23 = icmp eq %word %r25, %r24
	%r22 = inttoptr i1 %r23 to %ptr
	%r27 = ptrtoint %ptr %r22 to %word
	%r26 = icmp ne %word %r27, 0
	br i1 %r26, label %L686, label %L688
L688:
	br label %L686
L686:
	%r28 = load %ptr, %ptr* %t2
	ret %ptr %r28
}
define %ptr @is_hexadecimal(%ptr %c) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %c, %ptr* %t1
	%r1 = inttoptr %word 0 to %ptr
	store %ptr %r1, %ptr* %t2
	%r2 = inttoptr %word 1 to %ptr
	store %ptr %r2, %ptr* %t3
	%r3 = load %ptr, %ptr* %t1
	%r4 = inttoptr %word 48 to %ptr
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = icmp sle %word %r8, %r7
	%r5 = inttoptr i1 %r6 to %ptr
	store %ptr %r5, %ptr* %t3
	%r9 = inttoptr %word 0 to %ptr
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = ptrtoint %ptr %r5 to %word
	%r11 = icmp eq %word %r13, %r12
	%r10 = inttoptr i1 %r11 to %ptr
	%r15 = ptrtoint %ptr %r10 to %word
	%r14 = icmp ne %word %r15, 0
	br i1 %r14, label %L690, label %L691
L691:
	%r16 = inttoptr %word 57 to %ptr
	%r17 = load %ptr, %ptr* %t1
	%r21 = ptrtoint %ptr %r17 to %word
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = icmp sle %word %r21, %r20
	%r18 = inttoptr i1 %r19 to %ptr
	store %ptr %r18, %ptr* %t3
	%r22 = inttoptr %word 0 to %ptr
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ptrtoint %ptr %r18 to %word
	%r24 = icmp eq %word %r26, %r25
	%r23 = inttoptr i1 %r24 to %ptr
	%r28 = ptrtoint %ptr %r23 to %word
	%r27 = icmp ne %word %r28, 0
	br i1 %r27, label %L690, label %L692
L692:
	br label %L690
L690:
	%r29 = load %ptr, %ptr* %t3
	store %ptr %r29, %ptr* %t2
	%r30 = inttoptr %word 0 to %ptr
	%r34 = ptrtoint %ptr %r30 to %word
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = icmp eq %word %r34, %r33
	%r31 = inttoptr i1 %r32 to %ptr
	%r36 = ptrtoint %ptr %r31 to %word
	%r35 = icmp ne %word %r36, 0
	br i1 %r35, label %L693, label %L689
L693:
	%r37 = inttoptr %word 1 to %ptr
	store %ptr %r37, %ptr* %t3
	%r38 = load %ptr, %ptr* %t1
	%r39 = inttoptr %word 97 to %ptr
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = icmp sle %word %r43, %r42
	%r40 = inttoptr i1 %r41 to %ptr
	store %ptr %r40, %ptr* %t3
	%r44 = inttoptr %word 0 to %ptr
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = ptrtoint %ptr %r40 to %word
	%r46 = icmp eq %word %r48, %r47
	%r45 = inttoptr i1 %r46 to %ptr
	%r50 = ptrtoint %ptr %r45 to %word
	%r49 = icmp ne %word %r50, 0
	br i1 %r49, label %L694, label %L695
L695:
	%r51 = inttoptr %word 102 to %ptr
	%r52 = load %ptr, %ptr* %t1
	%r56 = ptrtoint %ptr %r52 to %word
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = icmp sle %word %r56, %r55
	%r53 = inttoptr i1 %r54 to %ptr
	store %ptr %r53, %ptr* %t3
	%r57 = inttoptr %word 0 to %ptr
	%r61 = ptrtoint %ptr %r57 to %word
	%r60 = ptrtoint %ptr %r53 to %word
	%r59 = icmp eq %word %r61, %r60
	%r58 = inttoptr i1 %r59 to %ptr
	%r63 = ptrtoint %ptr %r58 to %word
	%r62 = icmp ne %word %r63, 0
	br i1 %r62, label %L694, label %L696
L696:
	br label %L694
L694:
	%r64 = load %ptr, %ptr* %t3
	store %ptr %r64, %ptr* %t2
	%r65 = inttoptr %word 0 to %ptr
	%r69 = ptrtoint %ptr %r65 to %word
	%r68 = ptrtoint %ptr %r64 to %word
	%r67 = icmp eq %word %r69, %r68
	%r66 = inttoptr i1 %r67 to %ptr
	%r71 = ptrtoint %ptr %r66 to %word
	%r70 = icmp ne %word %r71, 0
	br i1 %r70, label %L697, label %L689
L697:
	%r72 = inttoptr %word 1 to %ptr
	store %ptr %r72, %ptr* %t3
	%r73 = load %ptr, %ptr* %t1
	%r74 = inttoptr %word 65 to %ptr
	%r78 = ptrtoint %ptr %r74 to %word
	%r77 = ptrtoint %ptr %r73 to %word
	%r76 = icmp sle %word %r78, %r77
	%r75 = inttoptr i1 %r76 to %ptr
	store %ptr %r75, %ptr* %t3
	%r79 = inttoptr %word 0 to %ptr
	%r83 = ptrtoint %ptr %r79 to %word
	%r82 = ptrtoint %ptr %r75 to %word
	%r81 = icmp eq %word %r83, %r82
	%r80 = inttoptr i1 %r81 to %ptr
	%r85 = ptrtoint %ptr %r80 to %word
	%r84 = icmp ne %word %r85, 0
	br i1 %r84, label %L698, label %L699
L699:
	%r86 = inttoptr %word 70 to %ptr
	%r87 = load %ptr, %ptr* %t1
	%r91 = ptrtoint %ptr %r87 to %word
	%r90 = ptrtoint %ptr %r86 to %word
	%r89 = icmp sle %word %r91, %r90
	%r88 = inttoptr i1 %r89 to %ptr
	store %ptr %r88, %ptr* %t3
	%r92 = inttoptr %word 0 to %ptr
	%r96 = ptrtoint %ptr %r92 to %word
	%r95 = ptrtoint %ptr %r88 to %word
	%r94 = icmp eq %word %r96, %r95
	%r93 = inttoptr i1 %r94 to %ptr
	%r98 = ptrtoint %ptr %r93 to %word
	%r97 = icmp ne %word %r98, 0
	br i1 %r97, label %L698, label %L700
L700:
	br label %L698
L698:
	%r99 = load %ptr, %ptr* %t3
	store %ptr %r99, %ptr* %t2
	%r100 = inttoptr %word 0 to %ptr
	%r104 = ptrtoint %ptr %r100 to %word
	%r103 = ptrtoint %ptr %r99 to %word
	%r102 = icmp eq %word %r104, %r103
	%r101 = inttoptr i1 %r102 to %ptr
	%r106 = ptrtoint %ptr %r101 to %word
	%r105 = icmp ne %word %r106, 0
	br i1 %r105, label %L701, label %L689
L701:
	br label %L689
L689:
	%r107 = load %ptr, %ptr* %t2
	ret %ptr %r107
}
@str720 = private unnamed_addr constant [38 x i8] c"illegal digit in character escape: %c\00"
define %ptr @digit_value(%ptr %c) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %c, %ptr* %t1
	%r1 = inttoptr %word 1 to %ptr
	store %ptr %r1, %ptr* %t3
	%r2 = load %ptr, %ptr* %t1
	%r3 = inttoptr %word 48 to %ptr
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = icmp sle %word %r7, %r6
	%r4 = inttoptr i1 %r5 to %ptr
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = ptrtoint %ptr %r4 to %word
	%r10 = icmp eq %word %r12, %r11
	%r9 = inttoptr i1 %r10 to %ptr
	%r14 = ptrtoint %ptr %r9 to %word
	%r13 = icmp ne %word %r14, 0
	br i1 %r13, label %L705, label %L706
L706:
	%r15 = inttoptr %word 57 to %ptr
	%r16 = load %ptr, %ptr* %t1
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = icmp sle %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	store %ptr %r17, %ptr* %t3
	%r21 = inttoptr %word 0 to %ptr
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ptrtoint %ptr %r17 to %word
	%r23 = icmp eq %word %r25, %r24
	%r22 = inttoptr i1 %r23 to %ptr
	%r27 = ptrtoint %ptr %r22 to %word
	%r26 = icmp ne %word %r27, 0
	br i1 %r26, label %L705, label %L707
L707:
	br label %L705
L705:
	%r28 = load %ptr, %ptr* %t3
	%r30 = ptrtoint %ptr %r28 to %word
	%r29 = icmp ne %word %r30, 0
	br i1 %r29, label %L702, label %L703
L702:
	%r31 = inttoptr %word 48 to %ptr
	%r32 = load %ptr, %ptr* %t1
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = sub %word %r36, %r35
	%r33 = inttoptr %word %r34 to %ptr
	store %ptr %r33, %ptr* %t2
	br label %L704
L703:
	%r37 = inttoptr %word 1 to %ptr
	store %ptr %r37, %ptr* %t4
	%r38 = load %ptr, %ptr* %t1
	%r39 = inttoptr %word 97 to %ptr
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = icmp sle %word %r43, %r42
	%r40 = inttoptr i1 %r41 to %ptr
	store %ptr %r40, %ptr* %t4
	%r44 = inttoptr %word 0 to %ptr
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = ptrtoint %ptr %r40 to %word
	%r46 = icmp eq %word %r48, %r47
	%r45 = inttoptr i1 %r46 to %ptr
	%r50 = ptrtoint %ptr %r45 to %word
	%r49 = icmp ne %word %r50, 0
	br i1 %r49, label %L711, label %L712
L712:
	%r51 = inttoptr %word 122 to %ptr
	%r52 = load %ptr, %ptr* %t1
	%r56 = ptrtoint %ptr %r52 to %word
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = icmp sle %word %r56, %r55
	%r53 = inttoptr i1 %r54 to %ptr
	store %ptr %r53, %ptr* %t4
	%r57 = inttoptr %word 0 to %ptr
	%r61 = ptrtoint %ptr %r57 to %word
	%r60 = ptrtoint %ptr %r53 to %word
	%r59 = icmp eq %word %r61, %r60
	%r58 = inttoptr i1 %r59 to %ptr
	%r63 = ptrtoint %ptr %r58 to %word
	%r62 = icmp ne %word %r63, 0
	br i1 %r62, label %L711, label %L713
L713:
	br label %L711
L711:
	%r64 = load %ptr, %ptr* %t4
	%r66 = ptrtoint %ptr %r64 to %word
	%r65 = icmp ne %word %r66, 0
	br i1 %r65, label %L708, label %L709
L708:
	%r67 = inttoptr %word 10 to %ptr
	%r68 = inttoptr %word 97 to %ptr
	%r72 = ptrtoint %ptr %r68 to %word
	%r71 = ptrtoint %ptr %r67 to %word
	%r70 = sub %word %r72, %r71
	%r69 = inttoptr %word %r70 to %ptr
	%r73 = load %ptr, %ptr* %t1
	%r77 = ptrtoint %ptr %r73 to %word
	%r76 = ptrtoint %ptr %r69 to %word
	%r75 = sub %word %r77, %r76
	%r74 = inttoptr %word %r75 to %ptr
	store %ptr %r74, %ptr* %t3
	br label %L710
L709:
	%r78 = inttoptr %word 1 to %ptr
	store %ptr %r78, %ptr* %t5
	%r79 = load %ptr, %ptr* %t1
	%r80 = inttoptr %word 65 to %ptr
	%r84 = ptrtoint %ptr %r80 to %word
	%r83 = ptrtoint %ptr %r79 to %word
	%r82 = icmp sle %word %r84, %r83
	%r81 = inttoptr i1 %r82 to %ptr
	store %ptr %r81, %ptr* %t5
	%r85 = inttoptr %word 0 to %ptr
	%r89 = ptrtoint %ptr %r85 to %word
	%r88 = ptrtoint %ptr %r81 to %word
	%r87 = icmp eq %word %r89, %r88
	%r86 = inttoptr i1 %r87 to %ptr
	%r91 = ptrtoint %ptr %r86 to %word
	%r90 = icmp ne %word %r91, 0
	br i1 %r90, label %L717, label %L718
L718:
	%r92 = inttoptr %word 90 to %ptr
	%r93 = load %ptr, %ptr* %t1
	%r97 = ptrtoint %ptr %r93 to %word
	%r96 = ptrtoint %ptr %r92 to %word
	%r95 = icmp sle %word %r97, %r96
	%r94 = inttoptr i1 %r95 to %ptr
	store %ptr %r94, %ptr* %t5
	%r98 = inttoptr %word 0 to %ptr
	%r102 = ptrtoint %ptr %r98 to %word
	%r101 = ptrtoint %ptr %r94 to %word
	%r100 = icmp eq %word %r102, %r101
	%r99 = inttoptr i1 %r100 to %ptr
	%r104 = ptrtoint %ptr %r99 to %word
	%r103 = icmp ne %word %r104, 0
	br i1 %r103, label %L717, label %L719
L719:
	br label %L717
L717:
	%r105 = load %ptr, %ptr* %t5
	%r107 = ptrtoint %ptr %r105 to %word
	%r106 = icmp ne %word %r107, 0
	br i1 %r106, label %L714, label %L715
L714:
	%r108 = inttoptr %word 10 to %ptr
	%r109 = inttoptr %word 65 to %ptr
	%r113 = ptrtoint %ptr %r109 to %word
	%r112 = ptrtoint %ptr %r108 to %word
	%r111 = sub %word %r113, %r112
	%r110 = inttoptr %word %r111 to %ptr
	%r114 = load %ptr, %ptr* %t1
	%r118 = ptrtoint %ptr %r114 to %word
	%r117 = ptrtoint %ptr %r110 to %word
	%r116 = sub %word %r118, %r117
	%r115 = inttoptr %word %r116 to %ptr
	store %ptr %r115, %ptr* %t4
	br label %L716
L715:
	%r119 = getelementptr [38 x i8], [38 x i8]* @str720, %word 0, %word 0
	%r121 = load %ptr, %ptr* %t1
	%r122 = call %ptr @fatal1(%ptr %r119, %ptr %r121)
	store %ptr %r122, %ptr* %t4
	br label %L716
L716:
	%r123 = load %ptr, %ptr* %t4
	store %ptr %r123, %ptr* %t3
	br label %L710
L710:
	%r124 = load %ptr, %ptr* %t3
	store %ptr %r124, %ptr* %t2
	br label %L704
L704:
	%r125 = load %ptr, %ptr* %t2
	ret %ptr %r125
}
@str755 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str756 = private unnamed_addr constant [25 x i8] c"illegal character escape\00"
@str757 = private unnamed_addr constant [2 x i8] c"\0A\00"
@str768 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str769 = private unnamed_addr constant [25 x i8] c"illegal character escape\00"
@str770 = private unnamed_addr constant [2 x i8] c"\0A\00"
@str783 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str784 = private unnamed_addr constant [25 x i8] c"illegal character escape\00"
@str785 = private unnamed_addr constant [2 x i8] c"\0A\00"
@str792 = private unnamed_addr constant [30 x i8] c"illegal character escape: \5C%c\00"
define %ptr @read_char(%ptr %c, %ptr %stream) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t9 = alloca %ptr
	%t10 = alloca %ptr
	%t11 = alloca %ptr
	%t15 = alloca %ptr
	%t14 = alloca %ptr
	%t13 = alloca %ptr
	%t12 = alloca %ptr
	%t16 = alloca %ptr
	%t17 = alloca %ptr
	store %ptr %c, %ptr* %t1
	store %ptr %stream, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = inttoptr %word 92 to %ptr
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = ptrtoint %ptr %r1 to %word
	%r4 = icmp eq %word %r6, %r5
	%r3 = inttoptr i1 %r4 to %ptr
	%r8 = ptrtoint %ptr %r3 to %word
	%r7 = icmp ne %word %r8, 0
	br i1 %r7, label %L721, label %L722
L721:
	%r9 = load %ptr, %ptr* %t2
	%r10 = call i32 @fgetc(%ptr %r9)
	%r11 = sext i32 %r10 to %word
	%r12 = inttoptr %word %r11 to %ptr
	store %ptr %r12, %ptr* %t1
	%r13 = inttoptr %word 97 to %ptr
	%r14 = load %ptr, %ptr* %t1
	%r18 = ptrtoint %ptr %r14 to %word
	%r17 = ptrtoint %ptr %r13 to %word
	%r16 = icmp eq %word %r18, %r17
	%r15 = inttoptr i1 %r16 to %ptr
	%r20 = ptrtoint %ptr %r15 to %word
	%r19 = icmp ne %word %r20, 0
	br i1 %r19, label %L724, label %L725
L724:
	%r21 = inttoptr %word 7 to %ptr
	store %ptr %r21, %ptr* %t4
	br label %L726
L725:
	%r22 = inttoptr %word 98 to %ptr
	%r23 = load %ptr, %ptr* %t1
	%r27 = ptrtoint %ptr %r23 to %word
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = icmp eq %word %r27, %r26
	%r24 = inttoptr i1 %r25 to %ptr
	%r29 = ptrtoint %ptr %r24 to %word
	%r28 = icmp ne %word %r29, 0
	br i1 %r28, label %L727, label %L728
L727:
	%r30 = inttoptr %word 8 to %ptr
	store %ptr %r30, %ptr* %t5
	br label %L729
L728:
	%r31 = inttoptr %word 102 to %ptr
	%r32 = load %ptr, %ptr* %t1
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = icmp eq %word %r36, %r35
	%r33 = inttoptr i1 %r34 to %ptr
	%r38 = ptrtoint %ptr %r33 to %word
	%r37 = icmp ne %word %r38, 0
	br i1 %r37, label %L730, label %L731
L730:
	%r39 = inttoptr %word 12 to %ptr
	store %ptr %r39, %ptr* %t6
	br label %L732
L731:
	%r40 = inttoptr %word 110 to %ptr
	%r41 = load %ptr, %ptr* %t1
	%r45 = ptrtoint %ptr %r41 to %word
	%r44 = ptrtoint %ptr %r40 to %word
	%r43 = icmp eq %word %r45, %r44
	%r42 = inttoptr i1 %r43 to %ptr
	%r47 = ptrtoint %ptr %r42 to %word
	%r46 = icmp ne %word %r47, 0
	br i1 %r46, label %L733, label %L734
L733:
	%r48 = inttoptr %word 10 to %ptr
	store %ptr %r48, %ptr* %t7
	br label %L735
L734:
	%r49 = inttoptr %word 114 to %ptr
	%r50 = load %ptr, %ptr* %t1
	%r54 = ptrtoint %ptr %r50 to %word
	%r53 = ptrtoint %ptr %r49 to %word
	%r52 = icmp eq %word %r54, %r53
	%r51 = inttoptr i1 %r52 to %ptr
	%r56 = ptrtoint %ptr %r51 to %word
	%r55 = icmp ne %word %r56, 0
	br i1 %r55, label %L736, label %L737
L736:
	%r57 = inttoptr %word 13 to %ptr
	store %ptr %r57, %ptr* %t8
	br label %L738
L737:
	%r58 = inttoptr %word 116 to %ptr
	%r59 = load %ptr, %ptr* %t1
	%r63 = ptrtoint %ptr %r59 to %word
	%r62 = ptrtoint %ptr %r58 to %word
	%r61 = icmp eq %word %r63, %r62
	%r60 = inttoptr i1 %r61 to %ptr
	%r65 = ptrtoint %ptr %r60 to %word
	%r64 = icmp ne %word %r65, 0
	br i1 %r64, label %L739, label %L740
L739:
	%r66 = inttoptr %word 9 to %ptr
	store %ptr %r66, %ptr* %t9
	br label %L741
L740:
	%r67 = inttoptr %word 118 to %ptr
	%r68 = load %ptr, %ptr* %t1
	%r72 = ptrtoint %ptr %r68 to %word
	%r71 = ptrtoint %ptr %r67 to %word
	%r70 = icmp eq %word %r72, %r71
	%r69 = inttoptr i1 %r70 to %ptr
	%r74 = ptrtoint %ptr %r69 to %word
	%r73 = icmp ne %word %r74, 0
	br i1 %r73, label %L742, label %L743
L742:
	%r75 = inttoptr %word 11 to %ptr
	store %ptr %r75, %ptr* %t10
	br label %L744
L743:
	%r76 = inttoptr %word 117 to %ptr
	%r77 = load %ptr, %ptr* %t1
	%r81 = ptrtoint %ptr %r77 to %word
	%r80 = ptrtoint %ptr %r76 to %word
	%r79 = icmp eq %word %r81, %r80
	%r78 = inttoptr i1 %r79 to %ptr
	%r83 = ptrtoint %ptr %r78 to %word
	%r82 = icmp ne %word %r83, 0
	br i1 %r82, label %L745, label %L746
L745:
	%r84 = load %ptr, %ptr* %t2
	%r85 = call i32 @fgetc(%ptr %r84)
	%r86 = sext i32 %r85 to %word
	%r87 = inttoptr %word %r86 to %ptr
	store %ptr %r87, %ptr* %t12
	%r88 = load %ptr, %ptr* %t2
	%r89 = call i32 @fgetc(%ptr %r88)
	%r90 = sext i32 %r89 to %word
	%r91 = inttoptr %word %r90 to %ptr
	store %ptr %r91, %ptr* %t13
	%r92 = load %ptr, %ptr* %t2
	%r93 = call i32 @fgetc(%ptr %r92)
	%r94 = sext i32 %r93 to %word
	%r95 = inttoptr %word %r94 to %ptr
	store %ptr %r95, %ptr* %t14
	%r96 = load %ptr, %ptr* %t2
	%r97 = call i32 @fgetc(%ptr %r96)
	%r98 = sext i32 %r97 to %word
	%r99 = inttoptr %word %r98 to %ptr
	store %ptr %r99, %ptr* %t15
	%r100 = inttoptr %word 0 to %ptr
	store %ptr %r100, %ptr* %t16
	%r101 = inttoptr %word 1 to %ptr
	store %ptr %r101, %ptr* %t17
	%r102 = load %ptr, %ptr* %t12
	%r103 = call %ptr @is_hexadecimal(%ptr %r102)
	store %ptr %r103, %ptr* %t17
	%r104 = inttoptr %word 0 to %ptr
	%r108 = ptrtoint %ptr %r104 to %word
	%r107 = ptrtoint %ptr %r103 to %word
	%r106 = icmp eq %word %r108, %r107
	%r105 = inttoptr i1 %r106 to %ptr
	%r110 = ptrtoint %ptr %r105 to %word
	%r109 = icmp ne %word %r110, 0
	br i1 %r109, label %L749, label %L750
L750:
	%r111 = load %ptr, %ptr* %t13
	%r112 = call %ptr @is_hexadecimal(%ptr %r111)
	store %ptr %r112, %ptr* %t17
	%r113 = inttoptr %word 0 to %ptr
	%r117 = ptrtoint %ptr %r113 to %word
	%r116 = ptrtoint %ptr %r112 to %word
	%r115 = icmp eq %word %r117, %r116
	%r114 = inttoptr i1 %r115 to %ptr
	%r119 = ptrtoint %ptr %r114 to %word
	%r118 = icmp ne %word %r119, 0
	br i1 %r118, label %L749, label %L751
L751:
	%r120 = load %ptr, %ptr* %t14
	%r121 = call %ptr @is_hexadecimal(%ptr %r120)
	store %ptr %r121, %ptr* %t17
	%r122 = inttoptr %word 0 to %ptr
	%r126 = ptrtoint %ptr %r122 to %word
	%r125 = ptrtoint %ptr %r121 to %word
	%r124 = icmp eq %word %r126, %r125
	%r123 = inttoptr i1 %r124 to %ptr
	%r128 = ptrtoint %ptr %r123 to %word
	%r127 = icmp ne %word %r128, 0
	br i1 %r127, label %L749, label %L752
L752:
	%r129 = load %ptr, %ptr* %t15
	%r130 = call %ptr @is_hexadecimal(%ptr %r129)
	store %ptr %r130, %ptr* %t17
	%r131 = inttoptr %word 0 to %ptr
	%r135 = ptrtoint %ptr %r131 to %word
	%r134 = ptrtoint %ptr %r130 to %word
	%r133 = icmp eq %word %r135, %r134
	%r132 = inttoptr i1 %r133 to %ptr
	%r137 = ptrtoint %ptr %r132 to %word
	%r136 = icmp ne %word %r137, 0
	br i1 %r136, label %L749, label %L753
L753:
	br label %L749
L749:
	%r138 = load %ptr, %ptr* %t17
	store %ptr %r138, %ptr* %t16
	%r139 = inttoptr %word 0 to %ptr
	%r143 = ptrtoint %ptr %r139 to %word
	%r142 = ptrtoint %ptr %r138 to %word
	%r141 = icmp eq %word %r143, %r142
	%r140 = inttoptr i1 %r141 to %ptr
	%r145 = ptrtoint %ptr %r140 to %word
	%r144 = icmp ne %word %r145, 0
	br i1 %r144, label %L754, label %L748
L754:
	%r146 = getelementptr [9 x i8], [9 x i8]* @str755, %word 0, %word 0
	%r148 = call i32 (%ptr, ...) @printf(%ptr %r146)
	%r149 = sext i32 %r148 to %word
	%r150 = inttoptr %word %r149 to %ptr
	%r151 = getelementptr [25 x i8], [25 x i8]* @str756, %word 0, %word 0
	%r153 = call i32 (%ptr, ...) @printf(%ptr %r151)
	%r154 = sext i32 %r153 to %word
	%r155 = inttoptr %word %r154 to %ptr
	%r156 = getelementptr [2 x i8], [2 x i8]* @str757, %word 0, %word 0
	%r158 = call i32 (%ptr, ...) @printf(%ptr %r156)
	%r159 = sext i32 %r158 to %word
	%r160 = inttoptr %word %r159 to %ptr
	%r161 = call %ptr @die()
	store %ptr %r161, %ptr* %t16
	%r162 = inttoptr %word 0 to %ptr
	%r166 = ptrtoint %ptr %r162 to %word
	%r165 = ptrtoint %ptr %r161 to %word
	%r164 = icmp eq %word %r166, %r165
	%r163 = inttoptr i1 %r164 to %ptr
	%r168 = ptrtoint %ptr %r163 to %word
	%r167 = icmp ne %word %r168, 0
	br i1 %r167, label %L758, label %L748
L758:
	br label %L748
L748:
	%r169 = load %ptr, %ptr* %t16
	%r170 = load %ptr, %ptr* %t15
	%r171 = call %ptr @digit_value(%ptr %r170)
	%r172 = inttoptr %word 8 to %ptr
	%r173 = load %ptr, %ptr* %t14
	%r174 = call %ptr @digit_value(%ptr %r173)
	%r178 = ptrtoint %ptr %r174 to %word
	%r177 = ptrtoint %ptr %r172 to %word
	%r176 = shl %word %r178, %r177
	%r175 = inttoptr %word %r176 to %ptr
	%r182 = ptrtoint %ptr %r175 to %word
	%r181 = ptrtoint %ptr %r171 to %word
	%r180 = add %word %r182, %r181
	%r179 = inttoptr %word %r180 to %ptr
	%r183 = inttoptr %word 16 to %ptr
	%r184 = load %ptr, %ptr* %t13
	%r185 = call %ptr @digit_value(%ptr %r184)
	%r189 = ptrtoint %ptr %r185 to %word
	%r188 = ptrtoint %ptr %r183 to %word
	%r187 = shl %word %r189, %r188
	%r186 = inttoptr %word %r187 to %ptr
	%r193 = ptrtoint %ptr %r186 to %word
	%r192 = ptrtoint %ptr %r179 to %word
	%r191 = add %word %r193, %r192
	%r190 = inttoptr %word %r191 to %ptr
	%r194 = inttoptr %word 24 to %ptr
	%r195 = load %ptr, %ptr* %t12
	%r196 = call %ptr @digit_value(%ptr %r195)
	%r200 = ptrtoint %ptr %r196 to %word
	%r199 = ptrtoint %ptr %r194 to %word
	%r198 = shl %word %r200, %r199
	%r197 = inttoptr %word %r198 to %ptr
	%r204 = ptrtoint %ptr %r197 to %word
	%r203 = ptrtoint %ptr %r190 to %word
	%r202 = add %word %r204, %r203
	%r201 = inttoptr %word %r202 to %ptr
	store %ptr %r201, %ptr* %t11
	br label %L747
L746:
	%r205 = inttoptr %word 120 to %ptr
	%r206 = load %ptr, %ptr* %t1
	%r210 = ptrtoint %ptr %r206 to %word
	%r209 = ptrtoint %ptr %r205 to %word
	%r208 = icmp eq %word %r210, %r209
	%r207 = inttoptr i1 %r208 to %ptr
	%r212 = ptrtoint %ptr %r207 to %word
	%r211 = icmp ne %word %r212, 0
	br i1 %r211, label %L759, label %L760
L759:
	%r213 = inttoptr %word 0 to %ptr
	store %ptr %r213, %ptr* %t14
	%r214 = load %ptr, %ptr* %t2
	%r215 = call i32 @fgetc(%ptr %r214)
	%r216 = sext i32 %r215 to %word
	%r217 = inttoptr %word %r216 to %ptr
	store %ptr %r217, %ptr* %t1
	%r218 = call %ptr @is_hexadecimal(%ptr %r217)
	%r220 = ptrtoint %ptr %r218 to %word
	%r219 = icmp ne %word %r220, 0
	br i1 %r219, label %L762, label %L763
L762:
	%r221 = load %ptr, %ptr* %t1
	%r222 = call %ptr @digit_value(%ptr %r221)
	store %ptr %r222, %ptr* %t14
	%r223 = load %ptr, %ptr* %t2
	%r224 = call i32 @fgetc(%ptr %r223)
	%r225 = sext i32 %r224 to %word
	%r226 = inttoptr %word %r225 to %ptr
	store %ptr %r226, %ptr* %t1
	%r227 = call %ptr @is_hexadecimal(%ptr %r226)
	%r229 = ptrtoint %ptr %r227 to %word
	%r228 = icmp ne %word %r229, 0
	br i1 %r228, label %L765, label %L766
L765:
	%r230 = load %ptr, %ptr* %t1
	%r231 = call %ptr @digit_value(%ptr %r230)
	%r232 = inttoptr %word 16 to %ptr
	%r233 = load %ptr, %ptr* %t14
	%r237 = ptrtoint %ptr %r233 to %word
	%r236 = ptrtoint %ptr %r232 to %word
	%r235 = mul %word %r237, %r236
	%r234 = inttoptr %word %r235 to %ptr
	%r241 = ptrtoint %ptr %r234 to %word
	%r240 = ptrtoint %ptr %r231 to %word
	%r239 = add %word %r241, %r240
	%r238 = inttoptr %word %r239 to %ptr
	store %ptr %r238, %ptr* %t14
	%r242 = load %ptr, %ptr* %t2
	%r243 = call i32 @fgetc(%ptr %r242)
	%r244 = sext i32 %r243 to %word
	%r245 = inttoptr %word %r244 to %ptr
	store %ptr %r245, %ptr* %t1
	store %ptr %r245, %ptr* %t12
	br label %L767
L766:
	%r246 = getelementptr [9 x i8], [9 x i8]* @str768, %word 0, %word 0
	%r248 = call i32 (%ptr, ...) @printf(%ptr %r246)
	%r249 = sext i32 %r248 to %word
	%r250 = inttoptr %word %r249 to %ptr
	%r251 = getelementptr [25 x i8], [25 x i8]* @str769, %word 0, %word 0
	%r253 = call i32 (%ptr, ...) @printf(%ptr %r251)
	%r254 = sext i32 %r253 to %word
	%r255 = inttoptr %word %r254 to %ptr
	%r256 = getelementptr [2 x i8], [2 x i8]* @str770, %word 0, %word 0
	%r258 = call i32 (%ptr, ...) @printf(%ptr %r256)
	%r259 = sext i32 %r258 to %word
	%r260 = inttoptr %word %r259 to %ptr
	%r261 = call %ptr @die()
	store %ptr %r261, %ptr* %t12
	br label %L767
L767:
	%r262 = load %ptr, %ptr* %t12
	store %ptr %r262, %ptr* %t13
	br label %L764
L763:
	%r263 = inttoptr %word 0 to %ptr
	store %ptr %r263, %ptr* %t13
	br label %L764
L764:
	%r264 = load %ptr, %ptr* %t13
	%r265 = load %ptr, %ptr* %t1
	%r266 = load %ptr, %ptr* %t2
	%ffi-cast267 = ptrtoint %ptr %r265 to i32
	%r268 = call i32 @ungetc(i32 %ffi-cast267, %ptr %r266)
	%r269 = sext i32 %r268 to %word
	%r270 = inttoptr %word %r269 to %ptr
	%r271 = load %ptr, %ptr* %t14
	store %ptr %r271, %ptr* %t15
	br label %L761
L760:
	%r272 = inttoptr %word 1 to %ptr
	store %ptr %r272, %ptr* %t13
	%r273 = load %ptr, %ptr* %t1
	%r274 = inttoptr %word 48 to %ptr
	%r278 = ptrtoint %ptr %r274 to %word
	%r277 = ptrtoint %ptr %r273 to %word
	%r276 = icmp sle %word %r278, %r277
	%r275 = inttoptr i1 %r276 to %ptr
	store %ptr %r275, %ptr* %t13
	%r279 = inttoptr %word 0 to %ptr
	%r283 = ptrtoint %ptr %r279 to %word
	%r282 = ptrtoint %ptr %r275 to %word
	%r281 = icmp eq %word %r283, %r282
	%r280 = inttoptr i1 %r281 to %ptr
	%r285 = ptrtoint %ptr %r280 to %word
	%r284 = icmp ne %word %r285, 0
	br i1 %r284, label %L774, label %L775
L775:
	%r286 = inttoptr %word 55 to %ptr
	%r287 = load %ptr, %ptr* %t1
	%r291 = ptrtoint %ptr %r287 to %word
	%r290 = ptrtoint %ptr %r286 to %word
	%r289 = icmp sle %word %r291, %r290
	%r288 = inttoptr i1 %r289 to %ptr
	store %ptr %r288, %ptr* %t13
	%r292 = inttoptr %word 0 to %ptr
	%r296 = ptrtoint %ptr %r292 to %word
	%r295 = ptrtoint %ptr %r288 to %word
	%r294 = icmp eq %word %r296, %r295
	%r293 = inttoptr i1 %r294 to %ptr
	%r298 = ptrtoint %ptr %r293 to %word
	%r297 = icmp ne %word %r298, 0
	br i1 %r297, label %L774, label %L776
L776:
	br label %L774
L774:
	%r299 = load %ptr, %ptr* %t13
	%r301 = ptrtoint %ptr %r299 to %word
	%r300 = icmp ne %word %r301, 0
	br i1 %r300, label %L771, label %L772
L771:
	%r302 = load %ptr, %ptr* %t1
	%r303 = call %ptr @digit_value(%ptr %r302)
	store %ptr %r303, %ptr* %t13
	%r304 = load %ptr, %ptr* %t2
	%r305 = call i32 @fgetc(%ptr %r304)
	%r306 = sext i32 %r305 to %word
	%r307 = inttoptr %word %r306 to %ptr
	store %ptr %r307, %ptr* %t1
	%r308 = call %ptr @is_octal(%ptr %r307)
	%r310 = ptrtoint %ptr %r308 to %word
	%r309 = icmp ne %word %r310, 0
	br i1 %r309, label %L777, label %L778
L777:
	%r311 = load %ptr, %ptr* %t1
	%r312 = call %ptr @digit_value(%ptr %r311)
	%r313 = inttoptr %word 8 to %ptr
	%r314 = load %ptr, %ptr* %t13
	%r318 = ptrtoint %ptr %r314 to %word
	%r317 = ptrtoint %ptr %r313 to %word
	%r316 = mul %word %r318, %r317
	%r315 = inttoptr %word %r316 to %ptr
	%r322 = ptrtoint %ptr %r315 to %word
	%r321 = ptrtoint %ptr %r312 to %word
	%r320 = add %word %r322, %r321
	%r319 = inttoptr %word %r320 to %ptr
	store %ptr %r319, %ptr* %t13
	%r323 = load %ptr, %ptr* %t2
	%r324 = call i32 @fgetc(%ptr %r323)
	%r325 = sext i32 %r324 to %word
	%r326 = inttoptr %word %r325 to %ptr
	store %ptr %r326, %ptr* %t1
	%r327 = call %ptr @is_octal(%ptr %r326)
	%r329 = ptrtoint %ptr %r327 to %word
	%r328 = icmp ne %word %r329, 0
	br i1 %r328, label %L780, label %L781
L780:
	%r330 = load %ptr, %ptr* %t1
	%r331 = call %ptr @digit_value(%ptr %r330)
	%r332 = inttoptr %word 8 to %ptr
	%r333 = load %ptr, %ptr* %t13
	%r337 = ptrtoint %ptr %r333 to %word
	%r336 = ptrtoint %ptr %r332 to %word
	%r335 = mul %word %r337, %r336
	%r334 = inttoptr %word %r335 to %ptr
	%r341 = ptrtoint %ptr %r334 to %word
	%r340 = ptrtoint %ptr %r331 to %word
	%r339 = add %word %r341, %r340
	%r338 = inttoptr %word %r339 to %ptr
	store %ptr %r338, %ptr* %t13
	%r342 = load %ptr, %ptr* %t2
	%r343 = call i32 @fgetc(%ptr %r342)
	%r344 = sext i32 %r343 to %word
	%r345 = inttoptr %word %r344 to %ptr
	store %ptr %r345, %ptr* %t1
	store %ptr %r345, %ptr* %t16
	br label %L782
L781:
	%r346 = getelementptr [9 x i8], [9 x i8]* @str783, %word 0, %word 0
	%r348 = call i32 (%ptr, ...) @printf(%ptr %r346)
	%r349 = sext i32 %r348 to %word
	%r350 = inttoptr %word %r349 to %ptr
	%r351 = getelementptr [25 x i8], [25 x i8]* @str784, %word 0, %word 0
	%r353 = call i32 (%ptr, ...) @printf(%ptr %r351)
	%r354 = sext i32 %r353 to %word
	%r355 = inttoptr %word %r354 to %ptr
	%r356 = getelementptr [2 x i8], [2 x i8]* @str785, %word 0, %word 0
	%r358 = call i32 (%ptr, ...) @printf(%ptr %r356)
	%r359 = sext i32 %r358 to %word
	%r360 = inttoptr %word %r359 to %ptr
	%r361 = call %ptr @die()
	store %ptr %r361, %ptr* %t16
	br label %L782
L782:
	%r362 = load %ptr, %ptr* %t16
	store %ptr %r362, %ptr* %t12
	br label %L779
L778:
	%r363 = inttoptr %word 0 to %ptr
	store %ptr %r363, %ptr* %t12
	br label %L779
L779:
	%r364 = load %ptr, %ptr* %t12
	%r365 = load %ptr, %ptr* %t1
	%r366 = load %ptr, %ptr* %t2
	%ffi-cast367 = ptrtoint %ptr %r365 to i32
	%r368 = call i32 @ungetc(i32 %ffi-cast367, %ptr %r366)
	%r369 = sext i32 %r368 to %word
	%r370 = inttoptr %word %r369 to %ptr
	%r371 = load %ptr, %ptr* %t13
	store %ptr %r371, %ptr* %t14
	br label %L773
L772:
	%r372 = inttoptr %word 0 to %ptr
	store %ptr %r372, %ptr* %t12
	%r373 = load %ptr, %ptr* %t1
	%r374 = call %ptr @is_alpha(%ptr %r373)
	store %ptr %r374, %ptr* %t12
	%r375 = inttoptr %word 0 to %ptr
	%r379 = ptrtoint %ptr %r375 to %word
	%r378 = ptrtoint %ptr %r374 to %word
	%r377 = icmp eq %word %r379, %r378
	%r376 = inttoptr i1 %r377 to %ptr
	%r381 = ptrtoint %ptr %r376 to %word
	%r380 = icmp ne %word %r381, 0
	br i1 %r380, label %L790, label %L789
L790:
	%r382 = load %ptr, %ptr* %t1
	%r383 = call %ptr @is_digit10(%ptr %r382)
	store %ptr %r383, %ptr* %t12
	%r384 = inttoptr %word 0 to %ptr
	%r388 = ptrtoint %ptr %r384 to %word
	%r387 = ptrtoint %ptr %r383 to %word
	%r386 = icmp eq %word %r388, %r387
	%r385 = inttoptr i1 %r386 to %ptr
	%r390 = ptrtoint %ptr %r385 to %word
	%r389 = icmp ne %word %r390, 0
	br i1 %r389, label %L791, label %L789
L791:
	br label %L789
L789:
	%r391 = load %ptr, %ptr* %t12
	%r393 = ptrtoint %ptr %r391 to %word
	%r392 = icmp ne %word %r393, 0
	br i1 %r392, label %L786, label %L787
L786:
	%r394 = getelementptr [30 x i8], [30 x i8]* @str792, %word 0, %word 0
	%r396 = load %ptr, %ptr* %t1
	%r397 = call %ptr @fatal1(%ptr %r394, %ptr %r396)
	store %ptr %r397, %ptr* %t13
	br label %L788
L787:
	%r398 = load %ptr, %ptr* %t1
	store %ptr %r398, %ptr* %t13
	br label %L788
L788:
	%r399 = load %ptr, %ptr* %t13
	store %ptr %r399, %ptr* %t14
	br label %L773
L773:
	%r400 = load %ptr, %ptr* %t14
	store %ptr %r400, %ptr* %t15
	br label %L761
L761:
	%r401 = load %ptr, %ptr* %t15
	store %ptr %r401, %ptr* %t11
	br label %L747
L747:
	%r402 = load %ptr, %ptr* %t11
	store %ptr %r402, %ptr* %t10
	br label %L744
L744:
	%r403 = load %ptr, %ptr* %t10
	store %ptr %r403, %ptr* %t9
	br label %L741
L741:
	%r404 = load %ptr, %ptr* %t9
	store %ptr %r404, %ptr* %t8
	br label %L738
L738:
	%r405 = load %ptr, %ptr* %t8
	store %ptr %r405, %ptr* %t7
	br label %L735
L735:
	%r406 = load %ptr, %ptr* %t7
	store %ptr %r406, %ptr* %t6
	br label %L732
L732:
	%r407 = load %ptr, %ptr* %t6
	store %ptr %r407, %ptr* %t5
	br label %L729
L729:
	%r408 = load %ptr, %ptr* %t5
	store %ptr %r408, %ptr* %t4
	br label %L726
L726:
	%r409 = load %ptr, %ptr* %t4
	store %ptr %r409, %ptr* %t3
	br label %L723
L722:
	%r410 = load %ptr, %ptr* %t1
	store %ptr %r410, %ptr* %t3
	br label %L723
L723:
	%r411 = load %ptr, %ptr* %t3
	ret %ptr %r411
}
@str815 = private unnamed_addr constant [2 x i8] c"1\00"
@str818 = private unnamed_addr constant [92 x i8] c"invalid number in source code, libc/strtoul failed for '%s' (printed without the sign here)\00"
define %ptr @read_number(%ptr %c, %ptr %stream) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t5 = alloca %ptr
	%t4 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t9 = alloca %ptr
	%t10 = alloca %ptr
	%t11 = alloca %ptr
	store %ptr %c, %ptr* %t1
	store %ptr %stream, %ptr* %t2
	%r1 = call %ptr @"new-<buffer>"()
	store %ptr %r1, %ptr* %t3
	%r3 = getelementptr %ptr, %ptr* %t3, %word 0
	%r2 = bitcast %ptr* %r3 to %ptr
	%r4 = call %ptr @"gc/push-root"(%ptr %r2)
	%r5 = inttoptr %word 0 to %ptr
	store %ptr %r5, %ptr* %t4
	%r6 = inttoptr %word 10 to %ptr
	store %ptr %r6, %ptr* %t5
	%r7 = load %ptr, %ptr* %t1
	%r8 = inttoptr %word 45 to %ptr
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = ptrtoint %ptr %r7 to %word
	%r10 = icmp eq %word %r12, %r11
	%r9 = inttoptr i1 %r10 to %ptr
	%r14 = ptrtoint %ptr %r9 to %word
	%r13 = icmp ne %word %r14, 0
	br i1 %r13, label %L793, label %L794
L793:
	%r15 = inttoptr %word 1 to %ptr
	store %ptr %r15, %ptr* %t4
	store %ptr %r15, %ptr* %t6
	br label %L795
L794:
	%r16 = load %ptr, %ptr* %t3
	%r17 = load %ptr, %ptr* %t1
	%r18 = call %ptr @buffer-append(%ptr %r16, %ptr %r17)
	store %ptr %r18, %ptr* %t6
	br label %L795
L795:
	%r19 = load %ptr, %ptr* %t6
	br label %L797
L796:
	%r20 = load %ptr, %ptr* %t3
	%r21 = load %ptr, %ptr* %t1
	%r22 = call %ptr @buffer-append(%ptr %r20, %ptr %r21)
	br label %L797
L797:
	%r23 = load %ptr, %ptr* %t2
	%r24 = call i32 @fgetc(%ptr %r23)
	%r25 = sext i32 %r24 to %word
	%r26 = inttoptr %word %r25 to %ptr
	store %ptr %r26, %ptr* %t1
	%r27 = call %ptr @is_digit10(%ptr %r26)
	%r29 = ptrtoint %ptr %r27 to %word
	%r28 = icmp ne %word %r29, 0
	br i1 %r28, label %L796, label %L798
L798:
	%r30 = inttoptr %word 1 to %ptr
	store %ptr %r30, %ptr* %t7
	%r31 = load %ptr, %ptr* %t1
	%r32 = inttoptr %word 120 to %ptr
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = icmp eq %word %r36, %r35
	%r33 = inttoptr i1 %r34 to %ptr
	store %ptr %r33, %ptr* %t7
	%r37 = inttoptr %word 0 to %ptr
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = ptrtoint %ptr %r33 to %word
	%r39 = icmp eq %word %r41, %r40
	%r38 = inttoptr i1 %r39 to %ptr
	%r43 = ptrtoint %ptr %r38 to %word
	%r42 = icmp ne %word %r43, 0
	br i1 %r42, label %L802, label %L803
L803:
	%r44 = load %ptr, %ptr* %t3
	%r45 = call %ptr @buffer-length(%ptr %r44)
	%r46 = inttoptr %word 1 to %ptr
	%r50 = ptrtoint %ptr %r46 to %word
	%r49 = ptrtoint %ptr %r45 to %word
	%r48 = icmp eq %word %r50, %r49
	%r47 = inttoptr i1 %r48 to %ptr
	store %ptr %r47, %ptr* %t7
	%r51 = inttoptr %word 0 to %ptr
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = ptrtoint %ptr %r47 to %word
	%r53 = icmp eq %word %r55, %r54
	%r52 = inttoptr i1 %r53 to %ptr
	%r57 = ptrtoint %ptr %r52 to %word
	%r56 = icmp ne %word %r57, 0
	br i1 %r56, label %L802, label %L804
L804:
	br label %L802
L802:
	%r58 = load %ptr, %ptr* %t7
	%r60 = ptrtoint %ptr %r58 to %word
	%r59 = icmp ne %word %r60, 0
	br i1 %r59, label %L799, label %L800
L799:
	%r61 = inttoptr %word 16 to %ptr
	store %ptr %r61, %ptr* %t5
	%r62 = load %ptr, %ptr* %t3
	%r63 = load %ptr, %ptr* %t1
	%r64 = call %ptr @buffer-append(%ptr %r62, %ptr %r63)
	br label %L806
L805:
	%r65 = load %ptr, %ptr* %t3
	%r66 = load %ptr, %ptr* %t1
	%r67 = call %ptr @buffer-append(%ptr %r65, %ptr %r66)
	br label %L806
L806:
	%r68 = load %ptr, %ptr* %t2
	%r69 = call i32 @fgetc(%ptr %r68)
	%r70 = sext i32 %r69 to %word
	%r71 = inttoptr %word %r70 to %ptr
	store %ptr %r71, %ptr* %t1
	%r72 = call %ptr @is_digit16(%ptr %r71)
	%r74 = ptrtoint %ptr %r72 to %word
	%r73 = icmp ne %word %r74, 0
	br i1 %r73, label %L805, label %L807
L807:
	store %ptr %r72, %ptr* %t6
	br label %L801
L800:
	%r75 = inttoptr %word 0 to %ptr
	store %ptr %r75, %ptr* %t6
	br label %L801
L801:
	%r76 = load %ptr, %ptr* %t6
	%r77 = load %ptr, %ptr* %t1
	%r78 = load %ptr, %ptr* %t2
	%ffi-cast79 = ptrtoint %ptr %r77 to i32
	%r80 = call i32 @ungetc(i32 %ffi-cast79, %ptr %r78)
	%r81 = sext i32 %r80 to %word
	%r82 = inttoptr %word %r81 to %ptr
	%r83 = load %ptr, %ptr* %t3
	%r84 = call %ptr @buffer-contents(%ptr %r83)
	store %ptr %r84, %ptr* %t6
	%r85 = load %ptr, %ptr* %t6
	store %ptr %r85, %ptr* %t7
	%r86 = load %ptr, %ptr* %t6
	%r88 = getelementptr %ptr, %ptr* %t7, %word 0
	%r87 = bitcast %ptr* %r88 to %ptr
	%r89 = load %ptr, %ptr* %t5
	%ffi-cast90 = ptrtoint %ptr %r89 to i32
	%r91 = call i64 @strtoul(%ptr %r86, %ptr %r87, i32 %ffi-cast90)
	%r92 = inttoptr %word %r91 to %ptr
	store %ptr %r92, %ptr* %t8
	%r93 = inttoptr %word 1 to %ptr
	store %ptr %r93, %ptr* %t10
	%r94 = load %ptr, %ptr* %t8
	%r95 = inttoptr %word -1 to %ptr
	%r99 = ptrtoint %ptr %r95 to %word
	%r98 = ptrtoint %ptr %r94 to %word
	%r97 = icmp eq %word %r99, %r98
	%r96 = inttoptr i1 %r97 to %ptr
	store %ptr %r96, %ptr* %t10
	%r100 = inttoptr %word 0 to %ptr
	%r104 = ptrtoint %ptr %r100 to %word
	%r103 = ptrtoint %ptr %r96 to %word
	%r102 = icmp eq %word %r104, %r103
	%r101 = inttoptr i1 %r102 to %ptr
	%r106 = ptrtoint %ptr %r101 to %word
	%r105 = icmp ne %word %r106, 0
	br i1 %r105, label %L811, label %L812
L812:
	%r107 = inttoptr %word 0 to %ptr
	store %ptr %r107, %ptr* %t11
	%r108 = load %ptr, %ptr* %t4
	%r112 = ptrtoint %ptr %r108 to %word
	%r111 = icmp eq %word %r112, 0
	%r110 = zext i1 %r111 to %word
	%r109 = inttoptr %word %r110 to %ptr
	store %ptr %r109, %ptr* %t11
	%r113 = inttoptr %word 0 to %ptr
	%r117 = ptrtoint %ptr %r113 to %word
	%r116 = ptrtoint %ptr %r109 to %word
	%r115 = icmp eq %word %r117, %r116
	%r114 = inttoptr i1 %r115 to %ptr
	%r119 = ptrtoint %ptr %r114 to %word
	%r118 = icmp ne %word %r119, 0
	br i1 %r118, label %L814, label %L813
L814:
	%r120 = load %ptr, %ptr* %t6
	%r121 = getelementptr [2 x i8], [2 x i8]* @str815, %word 0, %word 0
	%r123 = call i32 @strcmp(%ptr %r120, %ptr %r121)
	%r124 = sext i32 %r123 to %word
	%r125 = inttoptr %word %r124 to %ptr
	%r126 = inttoptr %word 0 to %ptr
	%r130 = ptrtoint %ptr %r126 to %word
	%r129 = ptrtoint %ptr %r125 to %word
	%r128 = icmp eq %word %r130, %r129
	%r127 = inttoptr i1 %r128 to %ptr
	%r134 = ptrtoint %ptr %r127 to %word
	%r133 = icmp eq %word %r134, 0
	%r132 = zext i1 %r133 to %word
	%r131 = inttoptr %word %r132 to %ptr
	store %ptr %r131, %ptr* %t11
	%r135 = inttoptr %word 0 to %ptr
	%r139 = ptrtoint %ptr %r135 to %word
	%r138 = ptrtoint %ptr %r131 to %word
	%r137 = icmp eq %word %r139, %r138
	%r136 = inttoptr i1 %r137 to %ptr
	%r141 = ptrtoint %ptr %r136 to %word
	%r140 = icmp ne %word %r141, 0
	br i1 %r140, label %L816, label %L813
L816:
	br label %L813
L813:
	%r142 = load %ptr, %ptr* %t11
	store %ptr %r142, %ptr* %t10
	%r143 = inttoptr %word 0 to %ptr
	%r147 = ptrtoint %ptr %r143 to %word
	%r146 = ptrtoint %ptr %r142 to %word
	%r145 = icmp eq %word %r147, %r146
	%r144 = inttoptr i1 %r145 to %ptr
	%r149 = ptrtoint %ptr %r144 to %word
	%r148 = icmp ne %word %r149, 0
	br i1 %r148, label %L811, label %L817
L817:
	br label %L811
L811:
	%r150 = load %ptr, %ptr* %t10
	%r152 = ptrtoint %ptr %r150 to %word
	%r151 = icmp ne %word %r152, 0
	br i1 %r151, label %L808, label %L809
L808:
	%r153 = getelementptr [92 x i8], [92 x i8]* @str818, %word 0, %word 0
	%r155 = load %ptr, %ptr* %t6
	%r156 = call %ptr @fatal1(%ptr %r153, %ptr %r155)
	store %ptr %r156, %ptr* %t9
	br label %L810
L809:
	%r157 = inttoptr %word 0 to %ptr
	store %ptr %r157, %ptr* %t9
	br label %L810
L810:
	%r158 = load %ptr, %ptr* %t9
	%r159 = inttoptr %word 1 to %ptr
	%r160 = inttoptr %word 1 to %ptr
	%r161 = load %ptr, %ptr* %t4
	%r163 = ptrtoint %ptr %r161 to %word
	%r162 = icmp ne %word %r163, 0
	br i1 %r162, label %L819, label %L820
L819:
	%r164 = load %ptr, %ptr* %t8
	%r167 = ptrtoint %ptr %r164 to %word
	%r166 = sub nsw %word 0, %r167
	%r165 = inttoptr %word %r166 to %ptr
	store %ptr %r165, %ptr* %t9
	br label %L821
L820:
	%r168 = load %ptr, %ptr* %t8
	store %ptr %r168, %ptr* %t9
	br label %L821
L821:
	%r169 = load %ptr, %ptr* %t9
	%r173 = ptrtoint %ptr %r169 to %word
	%r172 = ptrtoint %ptr %r160 to %word
	%r171 = shl %word %r173, %r172
	%r170 = inttoptr %word %r171 to %ptr
	%r177 = ptrtoint %ptr %r170 to %word
	%r176 = ptrtoint %ptr %r159 to %word
	%r175 = add %word %r177, %r176
	%r174 = inttoptr %word %r175 to %ptr
	store %ptr %r174, %ptr* %t5
	%r179 = getelementptr %ptr, %ptr* %t3, %word 0
	%r178 = bitcast %ptr* %r179 to %ptr
	%r180 = call %ptr @"gc/pop-root"(%ptr %r178)
	%r181 = load %ptr, %ptr* %t5
	ret %ptr %r181
}
define %ptr @read_symbol(%ptr %c, %ptr %stream) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %c, %ptr* %t1
	store %ptr %stream, %ptr* %t2
	%r1 = call %ptr @"new-<buffer>"()
	store %ptr %r1, %ptr* %t3
	%r3 = getelementptr %ptr, %ptr* %t3, %word 0
	%r2 = bitcast %ptr* %r3 to %ptr
	%r4 = call %ptr @"gc/push-root"(%ptr %r2)
	br label %L823
L822:
	%r5 = load %ptr, %ptr* %t3
	%r6 = load %ptr, %ptr* %t1
	%r7 = call %ptr @buffer-append(%ptr %r5, %ptr %r6)
	%r8 = load %ptr, %ptr* %t2
	%r9 = call i32 @fgetc(%ptr %r8)
	%r10 = sext i32 %r9 to %word
	%r11 = inttoptr %word %r10 to %ptr
	store %ptr %r11, %ptr* %t1
	br label %L823
L823:
	%r12 = inttoptr %word 0 to %ptr
	store %ptr %r12, %ptr* %t4
	%r13 = load %ptr, %ptr* %t1
	%r14 = call %ptr @is_letter(%ptr %r13)
	store %ptr %r14, %ptr* %t4
	%r15 = inttoptr %word 0 to %ptr
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = ptrtoint %ptr %r14 to %word
	%r17 = icmp eq %word %r19, %r18
	%r16 = inttoptr i1 %r17 to %ptr
	%r21 = ptrtoint %ptr %r16 to %word
	%r20 = icmp ne %word %r21, 0
	br i1 %r20, label %L826, label %L825
L826:
	%r22 = load %ptr, %ptr* %t1
	%r23 = call %ptr @is_digit10(%ptr %r22)
	store %ptr %r23, %ptr* %t4
	%r24 = inttoptr %word 0 to %ptr
	%r28 = ptrtoint %ptr %r24 to %word
	%r27 = ptrtoint %ptr %r23 to %word
	%r26 = icmp eq %word %r28, %r27
	%r25 = inttoptr i1 %r26 to %ptr
	%r30 = ptrtoint %ptr %r25 to %word
	%r29 = icmp ne %word %r30, 0
	br i1 %r29, label %L827, label %L825
L827:
	br label %L825
L825:
	%r31 = load %ptr, %ptr* %t4
	%r33 = ptrtoint %ptr %r31 to %word
	%r32 = icmp ne %word %r33, 0
	br i1 %r32, label %L822, label %L824
L824:
	%r34 = load %ptr, %ptr* %t1
	%r35 = load %ptr, %ptr* %t2
	%ffi-cast36 = ptrtoint %ptr %r34 to i32
	%r37 = call i32 @ungetc(i32 %ffi-cast36, %ptr %r35)
	%r38 = sext i32 %r37 to %word
	%r39 = inttoptr %word %r38 to %ptr
	%r40 = load %ptr, %ptr* %t3
	%r41 = call %ptr @buffer-contents(%ptr %r40)
	%r42 = call %ptr @"k/intern"(%ptr %r41)
	store %ptr %r42, %ptr* %t4
	%r44 = getelementptr %ptr, %ptr* %t3, %word 0
	%r43 = bitcast %ptr* %r44 to %ptr
	%r45 = call %ptr @"gc/pop-root"(%ptr %r43)
	%r46 = load %ptr, %ptr* %t4
	ret %ptr %r46
}
@str834 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str835 = private unnamed_addr constant [28 x i8] c"unterminated string literal\00"
@str836 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @read_string(%ptr %c, %ptr %stream) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %c, %ptr* %t1
	store %ptr %stream, %ptr* %t2
	%r1 = call %ptr @"new-<buffer>"()
	store %ptr %r1, %ptr* %t3
	%r3 = getelementptr %ptr, %ptr* %t3, %word 0
	%r2 = bitcast %ptr* %r3 to %ptr
	%r4 = call %ptr @"gc/push-root"(%ptr %r2)
	br label %L829
L828:
	%r5 = load %ptr, %ptr* %t1
	%r6 = load %ptr, %ptr* %t2
	%r7 = call %ptr @read_char(%ptr %r5, %ptr %r6)
	store %ptr %r7, %ptr* %t1
	%r8 = load %ptr, %ptr* %t1
	%r9 = inttoptr %word -1 to %ptr
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = icmp eq %word %r13, %r12
	%r10 = inttoptr i1 %r11 to %ptr
	%r15 = ptrtoint %ptr %r10 to %word
	%r14 = icmp ne %word %r15, 0
	br i1 %r14, label %L831, label %L832
L831:
	%r16 = getelementptr [9 x i8], [9 x i8]* @str834, %word 0, %word 0
	%r18 = call i32 (%ptr, ...) @printf(%ptr %r16)
	%r19 = sext i32 %r18 to %word
	%r20 = inttoptr %word %r19 to %ptr
	%r21 = getelementptr [28 x i8], [28 x i8]* @str835, %word 0, %word 0
	%r23 = call i32 (%ptr, ...) @printf(%ptr %r21)
	%r24 = sext i32 %r23 to %word
	%r25 = inttoptr %word %r24 to %ptr
	%r26 = getelementptr [2 x i8], [2 x i8]* @str836, %word 0, %word 0
	%r28 = call i32 (%ptr, ...) @printf(%ptr %r26)
	%r29 = sext i32 %r28 to %word
	%r30 = inttoptr %word %r29 to %ptr
	%r31 = call %ptr @die()
	store %ptr %r31, %ptr* %t4
	br label %L833
L832:
	%r32 = inttoptr %word 0 to %ptr
	store %ptr %r32, %ptr* %t4
	br label %L833
L833:
	%r33 = load %ptr, %ptr* %t4
	%r34 = load %ptr, %ptr* %t3
	%r35 = load %ptr, %ptr* %t1
	%r36 = call %ptr @buffer-append(%ptr %r34, %ptr %r35)
	br label %L829
L829:
	%r37 = load %ptr, %ptr* %t2
	%r38 = call i32 @fgetc(%ptr %r37)
	%r39 = sext i32 %r38 to %word
	%r40 = inttoptr %word %r39 to %ptr
	store %ptr %r40, %ptr* %t1
	%r41 = inttoptr %word 34 to %ptr
	%r45 = ptrtoint %ptr %r41 to %word
	%r44 = ptrtoint %ptr %r40 to %word
	%r43 = icmp ne %word %r45, %r44
	%r42 = inttoptr i1 %r43 to %ptr
	%r47 = ptrtoint %ptr %r42 to %word
	%r46 = icmp ne %word %r47, 0
	br i1 %r46, label %L828, label %L830
L830:
	%r48 = load %ptr, %ptr* %t3
	%r49 = call %ptr @buffer-contents(%ptr %r48)
	%r50 = call %ptr @"new-<string>-from-cstring"(%ptr %r49)
	store %ptr %r50, %ptr* %t4
	%r52 = getelementptr %ptr, %ptr* %t3, %word 0
	%r51 = bitcast %ptr* %r52 to %ptr
	%r53 = call %ptr @"gc/pop-root"(%ptr %r51)
	%r54 = load %ptr, %ptr* %t4
	ret %ptr %r54
}
@str849 = private unnamed_addr constant [50 x i8] c"missing closing '%c' delimiter while reading list\00"
define %ptr @read_list(%ptr %delim, %ptr %stream) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	store %ptr %delim, %ptr* %t1
	store %ptr %stream, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = call %ptr @"new-<pair>"(%ptr %r1, %ptr %r2)
	store %ptr %r3, %ptr* %t3
	%r4 = load %ptr, %ptr* %t3
	store %ptr %r4, %ptr* %t4
	%r5 = inttoptr %word 0 to %ptr
	store %ptr %r5, %ptr* %t5
	%r7 = getelementptr %ptr, %ptr* %t3, %word 0
	%r6 = bitcast %ptr* %r7 to %ptr
	%r8 = call %ptr @"gc/push-root"(%ptr %r6)
	%r10 = getelementptr %ptr, %ptr* %t5, %word 0
	%r9 = bitcast %ptr* %r10 to %ptr
	%r11 = call %ptr @"gc/push-root"(%ptr %r9)
	br label %L838
L837:
	%r12 = load %ptr, %ptr* %t5
	%r13 = inttoptr %word 0 to %ptr
	%r14 = call %ptr @"new-<pair>"(%ptr %r12, %ptr %r13)
	store %ptr %r14, %ptr* %t5
	%r15 = load %ptr, %ptr* %t5
	%r16 = inttoptr %word 1 to %ptr
	%r17 = load %ptr, %ptr* %t4
	%r21 = bitcast %ptr %r17 to [0 x %ptr]*
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = getelementptr [0 x %ptr], [0 x %ptr]* %r21, %word 0, %word %r20
	store %ptr %r15, %ptr* %r19
	%r18 = bitcast %ptr %r15 to %ptr
	store %ptr %r18, %ptr* %t4
	br label %L838
L838:
	%r22 = inttoptr %word 1 to %ptr
	store %ptr %r22, %ptr* %t6
	%r23 = load %ptr, %ptr* %t2
	%r24 = call %ptr @"k/read"(%ptr %r23)
	store %ptr %r24, %ptr* %t5
	%r25 = load %ptr, %ptr* @"k/+end+"
	%r29 = ptrtoint %ptr %r25 to %word
	%r28 = ptrtoint %ptr %r24 to %word
	%r27 = icmp ne %word %r29, %r28
	%r26 = inttoptr i1 %r27 to %ptr
	store %ptr %r26, %ptr* %t6
	%r30 = inttoptr %word 0 to %ptr
	%r34 = ptrtoint %ptr %r30 to %word
	%r33 = ptrtoint %ptr %r26 to %word
	%r32 = icmp eq %word %r34, %r33
	%r31 = inttoptr i1 %r32 to %ptr
	%r36 = ptrtoint %ptr %r31 to %word
	%r35 = icmp ne %word %r36, 0
	br i1 %r35, label %L840, label %L841
L841:
	%r37 = load %ptr, %ptr* %t5
	%r38 = load %ptr, %ptr* @"symbol/dot"
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = icmp ne %word %r42, %r41
	%r39 = inttoptr i1 %r40 to %ptr
	store %ptr %r39, %ptr* %t6
	%r43 = inttoptr %word 0 to %ptr
	%r47 = ptrtoint %ptr %r43 to %word
	%r46 = ptrtoint %ptr %r39 to %word
	%r45 = icmp eq %word %r47, %r46
	%r44 = inttoptr i1 %r45 to %ptr
	%r49 = ptrtoint %ptr %r44 to %word
	%r48 = icmp ne %word %r49, 0
	br i1 %r48, label %L840, label %L842
L842:
	br label %L840
L840:
	%r50 = load %ptr, %ptr* %t6
	%r52 = ptrtoint %ptr %r50 to %word
	%r51 = icmp ne %word %r52, 0
	br i1 %r51, label %L837, label %L839
L839:
	%r53 = inttoptr %word 1 to %ptr
	store %ptr %r53, %ptr* %t6
	%r54 = load %ptr, %ptr* %t5
	%r55 = load %ptr, %ptr* @"symbol/dot"
	%r59 = ptrtoint %ptr %r55 to %word
	%r58 = ptrtoint %ptr %r54 to %word
	%r57 = icmp eq %word %r59, %r58
	%r56 = inttoptr i1 %r57 to %ptr
	store %ptr %r56, %ptr* %t6
	%r60 = inttoptr %word 0 to %ptr
	%r64 = ptrtoint %ptr %r60 to %word
	%r63 = ptrtoint %ptr %r56 to %word
	%r62 = icmp eq %word %r64, %r63
	%r61 = inttoptr i1 %r62 to %ptr
	%r66 = ptrtoint %ptr %r61 to %word
	%r65 = icmp ne %word %r66, 0
	br i1 %r65, label %L843, label %L844
L844:
	%r67 = load %ptr, %ptr* %t2
	%r68 = call %ptr @"k/read"(%ptr %r67)
	%r69 = inttoptr %word 1 to %ptr
	%r70 = load %ptr, %ptr* %t4
	%r74 = bitcast %ptr %r70 to [0 x %ptr]*
	%r73 = ptrtoint %ptr %r69 to %word
	%r72 = getelementptr [0 x %ptr], [0 x %ptr]* %r74, %word 0, %word %r73
	store %ptr %r68, %ptr* %r72
	%r71 = bitcast %ptr %r68 to %ptr
	store %ptr %r71, %ptr* %t6
	%r75 = inttoptr %word 0 to %ptr
	%r79 = ptrtoint %ptr %r75 to %word
	%r78 = ptrtoint %ptr %r71 to %word
	%r77 = icmp eq %word %r79, %r78
	%r76 = inttoptr i1 %r77 to %ptr
	%r81 = ptrtoint %ptr %r76 to %word
	%r80 = icmp ne %word %r81, 0
	br i1 %r80, label %L843, label %L845
L845:
	br label %L843
L843:
	%r82 = load %ptr, %ptr* %t6
	store %ptr %r82, %ptr* %t6
	%r84 = getelementptr %ptr, %ptr* %t5, %word 0
	%r83 = bitcast %ptr* %r84 to %ptr
	%r85 = call %ptr @"gc/pop-root"(%ptr %r83)
	%r87 = getelementptr %ptr, %ptr* %t3, %word 0
	%r86 = bitcast %ptr* %r87 to %ptr
	%r88 = call %ptr @"gc/pop-root"(%ptr %r86)
	%r89 = load %ptr, %ptr* %t6
	%r90 = load %ptr, %ptr* %t2
	%r91 = call i32 @fgetc(%ptr %r90)
	%r92 = sext i32 %r91 to %word
	%r93 = inttoptr %word %r92 to %ptr
	store %ptr %r93, %ptr* %t6
	%r94 = load %ptr, %ptr* %t6
	%r95 = load %ptr, %ptr* %t1
	%r99 = ptrtoint %ptr %r95 to %word
	%r98 = ptrtoint %ptr %r94 to %word
	%r97 = icmp eq %word %r99, %r98
	%r96 = inttoptr i1 %r97 to %ptr
	%r101 = ptrtoint %ptr %r96 to %word
	%r100 = icmp ne %word %r101, 0
	br i1 %r100, label %L846, label %L847
L846:
	%r102 = inttoptr %word 1 to %ptr
	%r103 = load %ptr, %ptr* %t3
	%r107 = bitcast %ptr %r103 to [0 x %ptr]*
	%r106 = ptrtoint %ptr %r102 to %word
	%r105 = getelementptr [0 x %ptr], [0 x %ptr]* %r107, %word 0, %word %r106
	%r104 = load %ptr, %ptr* %r105
	store %ptr %r104, %ptr* %t7
	br label %L848
L847:
	%r108 = getelementptr [50 x i8], [50 x i8]* @str849, %word 0, %word 0
	%r110 = load %ptr, %ptr* %t1
	%r111 = call %ptr @fatal1(%ptr %r108, %ptr %r110)
	store %ptr %r111, %ptr* %t7
	br label %L848
L848:
	%r112 = load %ptr, %ptr* %t7
	ret %ptr %r112
}
@str853 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str854 = private unnamed_addr constant [33 x i8] c"EOF while reading quoted literal\00"
@str855 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @read_quote(%ptr %prefix, %ptr %stream) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %prefix, %ptr* %t1
	store %ptr %stream, %ptr* %t2
	%r1 = load %ptr, %ptr* %t2
	%r2 = call %ptr @"k/read"(%ptr %r1)
	store %ptr %r2, %ptr* %t3
	%r4 = getelementptr %ptr, %ptr* %t3, %word 0
	%r3 = bitcast %ptr* %r4 to %ptr
	%r5 = call %ptr @"gc/push-root"(%ptr %r3)
	%r6 = load %ptr, %ptr* %t3
	%r7 = load %ptr, %ptr* @"k/+end+"
	%r11 = ptrtoint %ptr %r7 to %word
	%r10 = ptrtoint %ptr %r6 to %word
	%r9 = icmp eq %word %r11, %r10
	%r8 = inttoptr i1 %r9 to %ptr
	%r13 = ptrtoint %ptr %r8 to %word
	%r12 = icmp ne %word %r13, 0
	br i1 %r12, label %L850, label %L851
L850:
	%r14 = getelementptr [9 x i8], [9 x i8]* @str853, %word 0, %word 0
	%r16 = call i32 (%ptr, ...) @printf(%ptr %r14)
	%r17 = sext i32 %r16 to %word
	%r18 = inttoptr %word %r17 to %ptr
	%r19 = getelementptr [33 x i8], [33 x i8]* @str854, %word 0, %word 0
	%r21 = call i32 (%ptr, ...) @printf(%ptr %r19)
	%r22 = sext i32 %r21 to %word
	%r23 = inttoptr %word %r22 to %ptr
	%r24 = getelementptr [2 x i8], [2 x i8]* @str855, %word 0, %word 0
	%r26 = call i32 (%ptr, ...) @printf(%ptr %r24)
	%r27 = sext i32 %r26 to %word
	%r28 = inttoptr %word %r27 to %ptr
	%r29 = call %ptr @die()
	store %ptr %r29, %ptr* %t4
	br label %L852
L851:
	%r30 = inttoptr %word 0 to %ptr
	store %ptr %r30, %ptr* %t4
	br label %L852
L852:
	%r31 = load %ptr, %ptr* %t4
	%r32 = load %ptr, %ptr* %t3
	%r33 = inttoptr %word 0 to %ptr
	%r34 = call %ptr @"new-<pair>"(%ptr %r32, %ptr %r33)
	store %ptr %r34, %ptr* %t3
	%r35 = load %ptr, %ptr* %t1
	%r36 = load %ptr, %ptr* %t3
	%r37 = call %ptr @"new-<pair>"(%ptr %r35, %ptr %r36)
	store %ptr %r37, %ptr* %t3
	%r38 = load %ptr, %ptr* %t3
	store %ptr %r38, %ptr* %t4
	%r40 = getelementptr %ptr, %ptr* %t3, %word 0
	%r39 = bitcast %ptr* %r40 to %ptr
	%r41 = call %ptr @"gc/pop-root"(%ptr %r39)
	%r42 = load %ptr, %ptr* %t4
	ret %ptr %r42
}
define %ptr @"%new-call-frame"(%ptr %callee-designator, %ptr %callee, %ptr %args) {
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	store %ptr %callee-designator, %ptr* %t1
	store %ptr %callee, %ptr* %t2
	store %ptr %args, %ptr* %t3
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* @"*call-stack*"
	%r4 = load %ptr, %ptr* @"*call-stack-index*"
	%r5 = call %ptr @"k/array-at"(%ptr %r3, %ptr %r4)
	store %ptr %r5, %ptr* %t4
	%r6 = load %ptr, %ptr* %t4
	%r8 = ptrtoint %ptr %r6 to %word
	%r7 = icmp ne %word %r8, 0
	br i1 %r7, label %L856, label %L857
L856:
	%r9 = inttoptr %word 0 to %ptr
	store %ptr %r9, %ptr* %t5
	br label %L858
L857:
	%r10 = inttoptr %word 24 to %ptr
	%r11 = inttoptr %word 24 to %ptr
	%r12 = call %ptr @"gc/allocate"(%ptr %r10, %ptr %r11)
	store %ptr %r12, %ptr* %t6
	%r14 = getelementptr %ptr, %ptr* %t6, %word 0
	%r13 = bitcast %ptr* %r14 to %ptr
	%r15 = call %ptr @"gc/push-root"(%ptr %r13)
	%r16 = load %ptr, %ptr* @"*call-stack*"
	%r17 = load %ptr, %ptr* @"*call-stack-index*"
	%r18 = load %ptr, %ptr* %t6
	%r19 = call %ptr @"set-k/array-at"(%ptr %r16, %ptr %r17, %ptr %r18)
	%r20 = load %ptr, %ptr* %t6
	store %ptr %r20, %ptr* %t4
	store %ptr %r20, %ptr* %t7
	%r22 = getelementptr %ptr, %ptr* %t6, %word 0
	%r21 = bitcast %ptr* %r22 to %ptr
	%r23 = call %ptr @"gc/pop-root"(%ptr %r21)
	%r24 = load %ptr, %ptr* %t7
	store %ptr %r24, %ptr* %t5
	br label %L858
L858:
	%r25 = load %ptr, %ptr* %t5
	%r26 = load %ptr, %ptr* %t1
	%r27 = inttoptr %word 0 to %ptr
	%r28 = load %ptr, %ptr* %t4
	%r32 = bitcast %ptr %r28 to [0 x %ptr]*
	%r31 = ptrtoint %ptr %r27 to %word
	%r30 = getelementptr [0 x %ptr], [0 x %ptr]* %r32, %word 0, %word %r31
	store %ptr %r26, %ptr* %r30
	%r29 = bitcast %ptr %r26 to %ptr
	%r33 = load %ptr, %ptr* %t2
	%r34 = inttoptr %word 1 to %ptr
	%r35 = load %ptr, %ptr* %t4
	%r39 = bitcast %ptr %r35 to [0 x %ptr]*
	%r38 = ptrtoint %ptr %r34 to %word
	%r37 = getelementptr [0 x %ptr], [0 x %ptr]* %r39, %word 0, %word %r38
	store %ptr %r33, %ptr* %r37
	%r36 = bitcast %ptr %r33 to %ptr
	%r40 = load %ptr, %ptr* %t3
	%r41 = inttoptr %word 2 to %ptr
	%r42 = load %ptr, %ptr* %t4
	%r46 = bitcast %ptr %r42 to [0 x %ptr]*
	%r45 = ptrtoint %ptr %r41 to %word
	%r44 = getelementptr [0 x %ptr], [0 x %ptr]* %r46, %word 0, %word %r45
	store %ptr %r40, %ptr* %r44
	%r43 = bitcast %ptr %r40 to %ptr
	%r47 = load %ptr, %ptr* %t4
	ret %ptr %r47
}
define %ptr @current-call-frame() {
	%t1 = alloca %ptr
	%r1 = load %ptr, %ptr* @"*call-stack-index*"
	%r2 = inttoptr %word 0 to %ptr
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = ptrtoint %ptr %r1 to %word
	%r4 = icmp slt %word %r6, %r5
	%r3 = inttoptr i1 %r4 to %ptr
	%r8 = ptrtoint %ptr %r3 to %word
	%r7 = icmp ne %word %r8, 0
	br i1 %r7, label %L859, label %L860
L859:
	%r9 = load %ptr, %ptr* @"*call-stack*"
	%r10 = inttoptr %word 1 to %ptr
	%r11 = load %ptr, %ptr* @"*call-stack-index*"
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = sub %word %r15, %r14
	%r12 = inttoptr %word %r13 to %ptr
	%r16 = call %ptr @"k/array-at"(%ptr %r9, %ptr %r12)
	store %ptr %r16, %ptr* %t1
	br label %L861
L860:
	%r17 = inttoptr %word 0 to %ptr
	store %ptr %r17, %ptr* %t1
	br label %L861
L861:
	%r18 = load %ptr, %ptr* %t1
	ret %ptr %r18
}
@str865 = private unnamed_addr constant [6 x i8] c"  A  \00"
@str866 = private unnamed_addr constant [2 x i8] c" \00"
@str867 = private unnamed_addr constant [2 x i8] c" \00"
@str873 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str874 = private unnamed_addr constant [23 x i8] c"too few arguments for \00"
@str875 = private unnamed_addr constant [3 x i8] c": \00"
@str876 = private unnamed_addr constant [2 x i8] c"\0A\00"
@str884 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str885 = private unnamed_addr constant [24 x i8] c"too many arguments for \00"
@str886 = private unnamed_addr constant [3 x i8] c": \00"
@str887 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @"k/apply-expr"(%ptr %fun, %ptr %arguments, %ptr %parent-ctx) {
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t5 = alloca %ptr
	%t4 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t9 = alloca %ptr
	store %ptr %fun, %ptr* %t1
	store %ptr %arguments, %ptr* %t2
	store %ptr %parent-ctx, %ptr* %t3
	%r1 = load %ptr, %ptr* @"*verbosity*"
	%r2 = inttoptr %word 2 to %ptr
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = ptrtoint %ptr %r1 to %word
	%r4 = icmp sle %word %r6, %r5
	%r3 = inttoptr i1 %r4 to %ptr
	%r8 = ptrtoint %ptr %r3 to %word
	%r7 = icmp ne %word %r8, 0
	br i1 %r7, label %L862, label %L863
L862:
	%r9 = getelementptr [6 x i8], [6 x i8]* @str865, %word 0, %word 0
	%r11 = call i32 (%ptr, ...) @printf(%ptr %r9)
	%r12 = sext i32 %r11 to %word
	%r13 = inttoptr %word %r12 to %ptr
	%r14 = load %ptr, %ptr* %t1
	%r15 = call %ptr @"k/dump"(%ptr %r14)
	%r16 = getelementptr [2 x i8], [2 x i8]* @str866, %word 0, %word 0
	%r18 = call i32 (%ptr, ...) @printf(%ptr %r16)
	%r19 = sext i32 %r18 to %word
	%r20 = inttoptr %word %r19 to %ptr
	%r21 = load %ptr, %ptr* %t2
	%r22 = call %ptr @"k/dump"(%ptr %r21)
	%r23 = getelementptr [2 x i8], [2 x i8]* @str867, %word 0, %word 0
	%r25 = call i32 (%ptr, ...) @printf(%ptr %r23)
	%r26 = sext i32 %r25 to %word
	%r27 = inttoptr %word %r26 to %ptr
	%r28 = load %ptr, %ptr* %t3
	%r29 = call %ptr @"k/dumpln"(%ptr %r28)
	%r30 = call %ptr @"libc/flush-streams"()
	store %ptr %r30, %ptr* %t4
	br label %L864
L863:
	%r31 = inttoptr %word 0 to %ptr
	store %ptr %r31, %ptr* %t4
	br label %L864
L864:
	%r32 = load %ptr, %ptr* %t4
	%r33 = inttoptr %word 2 to %ptr
	%r34 = load %ptr, %ptr* %t1
	%r38 = bitcast %ptr %r34 to [0 x %ptr]*
	%r37 = ptrtoint %ptr %r33 to %word
	%r36 = getelementptr [0 x %ptr], [0 x %ptr]* %r38, %word 0, %word %r37
	%r35 = load %ptr, %ptr* %r36
	store %ptr %r35, %ptr* %t4
	%r39 = inttoptr %word 0 to %ptr
	%r40 = load %ptr, %ptr* %t1
	%r44 = bitcast %ptr %r40 to [0 x %ptr]*
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = getelementptr [0 x %ptr], [0 x %ptr]* %r44, %word 0, %word %r43
	%r41 = load %ptr, %ptr* %r42
	store %ptr %r41, %ptr* %t5
	%r45 = inttoptr %word 3 to %ptr
	%r46 = load %ptr, %ptr* %t1
	%r50 = bitcast %ptr %r46 to [0 x %ptr]*
	%r49 = ptrtoint %ptr %r45 to %word
	%r48 = getelementptr [0 x %ptr], [0 x %ptr]* %r50, %word 0, %word %r49
	%r47 = load %ptr, %ptr* %r48
	%r51 = load %ptr, %ptr* %t3
	%r52 = load %ptr, %ptr* %t4
	%r53 = call %ptr @"new-<context>"(%ptr %r47, %ptr %r51, %ptr %r52)
	store %ptr %r53, %ptr* %t6
	%r55 = getelementptr %ptr, %ptr* %t6, %word 0
	%r54 = bitcast %ptr* %r55 to %ptr
	%r56 = call %ptr @"gc/push-root"(%ptr %r54)
	%r57 = inttoptr %word 2 to %ptr
	%r58 = load %ptr, %ptr* %t6
	%r62 = bitcast %ptr %r58 to [0 x %ptr]*
	%r61 = ptrtoint %ptr %r57 to %word
	%r60 = getelementptr [0 x %ptr], [0 x %ptr]* %r62, %word 0, %word %r61
	%r59 = load %ptr, %ptr* %r60
	store %ptr %r59, %ptr* %t7
	%r63 = load %ptr, %ptr* %t2
	store %ptr %r63, %ptr* %t8
	br label %L869
L868:
	%r64 = inttoptr %word 0 to %ptr
	store %ptr %r64, %ptr* %t9
	%r65 = load %ptr, %ptr* %t8
	%r66 = call %ptr @"get/type"(%ptr %r65)
	%r67 = inttoptr %word 19 to %ptr
	%r71 = ptrtoint %ptr %r67 to %word
	%r70 = ptrtoint %ptr %r66 to %word
	%r69 = icmp eq %word %r71, %r70
	%r68 = inttoptr i1 %r69 to %ptr
	store %ptr %r68, %ptr* %t9
	%r72 = inttoptr %word 0 to %ptr
	%r76 = ptrtoint %ptr %r72 to %word
	%r75 = ptrtoint %ptr %r68 to %word
	%r74 = icmp eq %word %r76, %r75
	%r73 = inttoptr i1 %r74 to %ptr
	%r78 = ptrtoint %ptr %r73 to %word
	%r77 = icmp ne %word %r78, 0
	br i1 %r77, label %L872, label %L871
L872:
	%r79 = getelementptr [9 x i8], [9 x i8]* @str873, %word 0, %word 0
	%r81 = call i32 (%ptr, ...) @printf(%ptr %r79)
	%r82 = sext i32 %r81 to %word
	%r83 = inttoptr %word %r82 to %ptr
	%r84 = getelementptr [23 x i8], [23 x i8]* @str874, %word 0, %word 0
	%r86 = call i32 (%ptr, ...) @printf(%ptr %r84)
	%r87 = sext i32 %r86 to %word
	%r88 = inttoptr %word %r87 to %ptr
	%r89 = load %ptr, %ptr* %t1
	%r90 = call %ptr @"k/print"(%ptr %r89)
	%r91 = getelementptr [3 x i8], [3 x i8]* @str875, %word 0, %word 0
	%r93 = call i32 (%ptr, ...) @printf(%ptr %r91)
	%r94 = sext i32 %r93 to %word
	%r95 = inttoptr %word %r94 to %ptr
	%r96 = load %ptr, %ptr* %t2
	%r97 = call %ptr @"k/print"(%ptr %r96)
	%r98 = getelementptr [2 x i8], [2 x i8]* @str876, %word 0, %word 0
	%r100 = call i32 (%ptr, ...) @printf(%ptr %r98)
	%r101 = sext i32 %r100 to %word
	%r102 = inttoptr %word %r101 to %ptr
	%r103 = call %ptr @die()
	store %ptr %r103, %ptr* %t9
	%r104 = inttoptr %word 0 to %ptr
	%r108 = ptrtoint %ptr %r104 to %word
	%r107 = ptrtoint %ptr %r103 to %word
	%r106 = icmp eq %word %r108, %r107
	%r105 = inttoptr i1 %r106 to %ptr
	%r110 = ptrtoint %ptr %r105 to %word
	%r109 = icmp ne %word %r110, 0
	br i1 %r109, label %L877, label %L871
L877:
	br label %L871
L871:
	%r111 = load %ptr, %ptr* %t9
	%r112 = load %ptr, %ptr* %t7
	%r113 = inttoptr %word 1 to %ptr
	%r114 = inttoptr %word 3 to %ptr
	%r115 = inttoptr %word 0 to %ptr
	%r116 = load %ptr, %ptr* %t5
	%r120 = bitcast %ptr %r116 to [0 x %ptr]*
	%r119 = ptrtoint %ptr %r115 to %word
	%r118 = getelementptr [0 x %ptr], [0 x %ptr]* %r120, %word 0, %word %r119
	%r117 = load %ptr, %ptr* %r118
	%r124 = bitcast %ptr %r117 to [0 x %ptr]*
	%r123 = ptrtoint %ptr %r114 to %word
	%r122 = getelementptr [0 x %ptr], [0 x %ptr]* %r124, %word 0, %word %r123
	%r121 = load %ptr, %ptr* %r122
	%r128 = ptrtoint %ptr %r121 to %word
	%r127 = ptrtoint %ptr %r113 to %word
	%r126 = ashr %word %r128, %r127
	%r125 = inttoptr %word %r126 to %ptr
	%r129 = inttoptr %word 0 to %ptr
	%r130 = load %ptr, %ptr* %t8
	%r134 = bitcast %ptr %r130 to [0 x %ptr]*
	%r133 = ptrtoint %ptr %r129 to %word
	%r132 = getelementptr [0 x %ptr], [0 x %ptr]* %r134, %word 0, %word %r133
	%r131 = load %ptr, %ptr* %r132
	%r135 = call %ptr @"set-k/array-at"(%ptr %r112, %ptr %r125, %ptr %r131)
	%r136 = inttoptr %word 1 to %ptr
	%r137 = load %ptr, %ptr* %t5
	%r141 = bitcast %ptr %r137 to [0 x %ptr]*
	%r140 = ptrtoint %ptr %r136 to %word
	%r139 = getelementptr [0 x %ptr], [0 x %ptr]* %r141, %word 0, %word %r140
	%r138 = load %ptr, %ptr* %r139
	store %ptr %r138, %ptr* %t5
	%r142 = inttoptr %word 1 to %ptr
	%r143 = load %ptr, %ptr* %t8
	%r147 = bitcast %ptr %r143 to [0 x %ptr]*
	%r146 = ptrtoint %ptr %r142 to %word
	%r145 = getelementptr [0 x %ptr], [0 x %ptr]* %r147, %word 0, %word %r146
	%r144 = load %ptr, %ptr* %r145
	store %ptr %r144, %ptr* %t8
	br label %L869
L869:
	%r148 = load %ptr, %ptr* %t5
	%r149 = call %ptr @"get/type"(%ptr %r148)
	%r150 = inttoptr %word 19 to %ptr
	%r154 = ptrtoint %ptr %r150 to %word
	%r153 = ptrtoint %ptr %r149 to %word
	%r152 = icmp eq %word %r154, %r153
	%r151 = inttoptr i1 %r152 to %ptr
	%r156 = ptrtoint %ptr %r151 to %word
	%r155 = icmp ne %word %r156, 0
	br i1 %r155, label %L868, label %L870
L870:
	%r157 = load %ptr, %ptr* %t5
	%r158 = call %ptr @"get/type"(%ptr %r157)
	%r159 = inttoptr %word 13 to %ptr
	%r163 = ptrtoint %ptr %r159 to %word
	%r162 = ptrtoint %ptr %r158 to %word
	%r161 = icmp eq %word %r163, %r162
	%r160 = inttoptr i1 %r161 to %ptr
	%r165 = ptrtoint %ptr %r160 to %word
	%r164 = icmp ne %word %r165, 0
	br i1 %r164, label %L878, label %L879
L878:
	%r166 = load %ptr, %ptr* %t7
	%r167 = inttoptr %word 1 to %ptr
	%r168 = inttoptr %word 3 to %ptr
	%r169 = load %ptr, %ptr* %t5
	%r173 = bitcast %ptr %r169 to [0 x %ptr]*
	%r172 = ptrtoint %ptr %r168 to %word
	%r171 = getelementptr [0 x %ptr], [0 x %ptr]* %r173, %word 0, %word %r172
	%r170 = load %ptr, %ptr* %r171
	%r177 = ptrtoint %ptr %r170 to %word
	%r176 = ptrtoint %ptr %r167 to %word
	%r175 = ashr %word %r177, %r176
	%r174 = inttoptr %word %r175 to %ptr
	%r178 = load %ptr, %ptr* %t8
	%r179 = call %ptr @"set-k/array-at"(%ptr %r166, %ptr %r174, %ptr %r178)
	%r180 = inttoptr %word 0 to %ptr
	store %ptr %r180, %ptr* %t8
	store %ptr %r180, %ptr* %t9
	br label %L880
L879:
	%r181 = inttoptr %word 0 to %ptr
	store %ptr %r181, %ptr* %t9
	br label %L880
L880:
	%r182 = load %ptr, %ptr* %t9
	%r183 = load %ptr, %ptr* %t8
	%r185 = ptrtoint %ptr %r183 to %word
	%r184 = icmp ne %word %r185, 0
	br i1 %r184, label %L881, label %L882
L881:
	%r186 = getelementptr [9 x i8], [9 x i8]* @str884, %word 0, %word 0
	%r188 = call i32 (%ptr, ...) @printf(%ptr %r186)
	%r189 = sext i32 %r188 to %word
	%r190 = inttoptr %word %r189 to %ptr
	%r191 = getelementptr [24 x i8], [24 x i8]* @str885, %word 0, %word 0
	%r193 = call i32 (%ptr, ...) @printf(%ptr %r191)
	%r194 = sext i32 %r193 to %word
	%r195 = inttoptr %word %r194 to %ptr
	%r196 = load %ptr, %ptr* %t1
	%r197 = call %ptr @"k/print"(%ptr %r196)
	%r198 = getelementptr [3 x i8], [3 x i8]* @str886, %word 0, %word 0
	%r200 = call i32 (%ptr, ...) @printf(%ptr %r198)
	%r201 = sext i32 %r200 to %word
	%r202 = inttoptr %word %r201 to %ptr
	%r203 = load %ptr, %ptr* %t2
	%r204 = call %ptr @"k/print"(%ptr %r203)
	%r205 = getelementptr [2 x i8], [2 x i8]* @str887, %word 0, %word 0
	%r207 = call i32 (%ptr, ...) @printf(%ptr %r205)
	%r208 = sext i32 %r207 to %word
	%r209 = inttoptr %word %r208 to %ptr
	%r210 = call %ptr @die()
	store %ptr %r210, %ptr* %t9
	br label %L883
L882:
	%r211 = inttoptr %word 0 to %ptr
	store %ptr %r211, %ptr* %t9
	br label %L883
L883:
	%r212 = load %ptr, %ptr* %t9
	%r213 = inttoptr %word 1 to %ptr
	%r214 = load %ptr, %ptr* %t1
	%r218 = bitcast %ptr %r214 to [0 x %ptr]*
	%r217 = ptrtoint %ptr %r213 to %word
	%r216 = getelementptr [0 x %ptr], [0 x %ptr]* %r218, %word 0, %word %r217
	%r215 = load %ptr, %ptr* %r216
	store %ptr %r215, %ptr* %t8
	%r219 = inttoptr %word 0 to %ptr
	store %ptr %r219, %ptr* %t7
	br label %L889
L888:
	%r220 = inttoptr %word 0 to %ptr
	%r221 = load %ptr, %ptr* %t8
	%r225 = bitcast %ptr %r221 to [0 x %ptr]*
	%r224 = ptrtoint %ptr %r220 to %word
	%r223 = getelementptr [0 x %ptr], [0 x %ptr]* %r225, %word 0, %word %r224
	%r222 = load %ptr, %ptr* %r223
	%r226 = load %ptr, %ptr* %t6
	%r227 = call %ptr @"k/eval"(%ptr %r222, %ptr %r226)
	store %ptr %r227, %ptr* %t7
	%r228 = inttoptr %word 1 to %ptr
	%r229 = load %ptr, %ptr* %t8
	%r233 = bitcast %ptr %r229 to [0 x %ptr]*
	%r232 = ptrtoint %ptr %r228 to %word
	%r231 = getelementptr [0 x %ptr], [0 x %ptr]* %r233, %word 0, %word %r232
	%r230 = load %ptr, %ptr* %r231
	store %ptr %r230, %ptr* %t8
	br label %L889
L889:
	%r234 = load %ptr, %ptr* %t8
	%r235 = call %ptr @"get/type"(%ptr %r234)
	%r236 = inttoptr %word 19 to %ptr
	%r240 = ptrtoint %ptr %r236 to %word
	%r239 = ptrtoint %ptr %r235 to %word
	%r238 = icmp eq %word %r240, %r239
	%r237 = inttoptr i1 %r238 to %ptr
	%r242 = ptrtoint %ptr %r237 to %word
	%r241 = icmp ne %word %r242, 0
	br i1 %r241, label %L888, label %L890
L890:
	%r243 = inttoptr %word 4 to %ptr
	%r244 = load %ptr, %ptr* %t4
	%r248 = bitcast %ptr %r244 to [0 x %ptr]*
	%r247 = ptrtoint %ptr %r243 to %word
	%r246 = getelementptr [0 x %ptr], [0 x %ptr]* %r248, %word 0, %word %r247
	%r245 = load %ptr, %ptr* %r246
	%r250 = ptrtoint %ptr %r245 to %word
	%r249 = icmp ne %word %r250, 0
	br i1 %r249, label %L891, label %L892
L891:
	%r251 = inttoptr %word 0 to %ptr
	%r252 = inttoptr %word 3 to %ptr
	%r253 = load %ptr, %ptr* %t6
	%r257 = bitcast %ptr %r253 to [0 x %ptr]*
	%r256 = ptrtoint %ptr %r252 to %word
	%r255 = getelementptr [0 x %ptr], [0 x %ptr]* %r257, %word 0, %word %r256
	store %ptr %r251, %ptr* %r255
	%r254 = bitcast %ptr %r251 to %ptr
	store %ptr %r254, %ptr* %t9
	br label %L893
L892:
	%r258 = inttoptr %word 0 to %ptr
	store %ptr %r258, %ptr* %t9
	br label %L893
L893:
	%r259 = load %ptr, %ptr* %t9
	%r260 = load %ptr, %ptr* %t7
	store %ptr %r260, %ptr* %t7
	%r262 = getelementptr %ptr, %ptr* %t6, %word 0
	%r261 = bitcast %ptr* %r262 to %ptr
	%r263 = call %ptr @"gc/pop-root"(%ptr %r261)
	%r264 = load %ptr, %ptr* %t7
	ret %ptr %r264
}
@str897 = private unnamed_addr constant [53 x i8] c"infinite recursion guard triggered at call depth %ld\00"
@str910 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str911 = private unnamed_addr constant [15 x i8] c"cannot apply: \00"
@str912 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @"k/apply"(%ptr %fun, %ptr %arguments, %ptr %ctx) {
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t9 = alloca %ptr
	%t10 = alloca %ptr
	%t11 = alloca %ptr
	%t12 = alloca %ptr
	store %ptr %fun, %ptr* %t1
	store %ptr %arguments, %ptr* %t2
	store %ptr %ctx, %ptr* %t3
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* @"symbol/apply"
	%r4 = load %ptr, %ptr* %t1
	%r5 = load %ptr, %ptr* %t2
	%r6 = call %ptr @"%new-call-frame"(%ptr %r3, %ptr %r4, %ptr %r5)
	store %ptr %r6, %ptr* %t4
	%r7 = inttoptr %word 10000 to %ptr
	%r8 = inttoptr %word 1 to %ptr
	%r9 = load %ptr, %ptr* @"*call-stack-index*"
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = add %word %r13, %r12
	%r10 = inttoptr %word %r11 to %ptr
	store %ptr %r10, %ptr* @"*call-stack-index*"
	%r17 = ptrtoint %ptr %r10 to %word
	%r16 = ptrtoint %ptr %r7 to %word
	%r15 = icmp sgt %word %r17, %r16
	%r14 = inttoptr i1 %r15 to %ptr
	%r19 = ptrtoint %ptr %r14 to %word
	%r18 = icmp ne %word %r19, 0
	br i1 %r18, label %L894, label %L895
L894:
	%r20 = getelementptr [53 x i8], [53 x i8]* @str897, %word 0, %word 0
	%r22 = load %ptr, %ptr* @"*call-stack-index*"
	%r23 = call %ptr @fatal1(%ptr %r20, %ptr %r22)
	store %ptr %r23, %ptr* %t5
	br label %L896
L895:
	%r24 = inttoptr %word 0 to %ptr
	store %ptr %r24, %ptr* %t5
	br label %L896
L896:
	%r25 = load %ptr, %ptr* %t5
	%r26 = load %ptr, %ptr* %t1
	%r27 = call %ptr @"get/type"(%ptr %r26)
	store %ptr %r27, %ptr* %t5
	%r28 = inttoptr %word 9 to %ptr
	%r29 = load %ptr, %ptr* %t5
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = icmp eq %word %r33, %r32
	%r30 = inttoptr i1 %r31 to %ptr
	%r35 = ptrtoint %ptr %r30 to %word
	%r34 = icmp ne %word %r35, 0
	br i1 %r34, label %L898, label %L899
L898:
	%r36 = load %ptr, %ptr* %t1
	%r37 = load %ptr, %ptr* %t2
	%r38 = load %ptr, %ptr* %t3
	%r39 = call %ptr @"k/apply-expr"(%ptr %r36, %ptr %r37, %ptr %r38)
	store %ptr %r39, %ptr* %t6
	br label %L900
L899:
	%r40 = inttoptr %word 11 to %ptr
	%r41 = load %ptr, %ptr* %t5
	%r45 = ptrtoint %ptr %r41 to %word
	%r44 = ptrtoint %ptr %r40 to %word
	%r43 = icmp eq %word %r45, %r44
	%r42 = inttoptr i1 %r43 to %ptr
	%r47 = ptrtoint %ptr %r42 to %word
	%r46 = icmp ne %word %r47, 0
	br i1 %r46, label %L901, label %L902
L901:
	%r48 = inttoptr %word 0 to %ptr
	%r49 = load %ptr, %ptr* %t1
	%r53 = bitcast %ptr %r49 to [0 x %ptr]*
	%r52 = ptrtoint %ptr %r48 to %word
	%r51 = getelementptr [0 x %ptr], [0 x %ptr]* %r53, %word 0, %word %r52
	%r50 = load %ptr, %ptr* %r51
	%r54 = load %ptr, %ptr* %t2
	%r55 = load %ptr, %ptr* %t3
	%r56 = call %ptr @"k/apply"(%ptr %r50, %ptr %r54, %ptr %r55)
	store %ptr %r56, %ptr* %t7
	br label %L903
L902:
	%r57 = inttoptr %word 12 to %ptr
	%r58 = load %ptr, %ptr* %t5
	%r62 = ptrtoint %ptr %r58 to %word
	%r61 = ptrtoint %ptr %r57 to %word
	%r60 = icmp eq %word %r62, %r61
	%r59 = inttoptr i1 %r60 to %ptr
	%r64 = ptrtoint %ptr %r59 to %word
	%r63 = icmp ne %word %r64, 0
	br i1 %r63, label %L904, label %L905
L904:
	%r65 = load %ptr, %ptr* %t2
	%r66 = load %ptr, %ptr* %t3
	%r67 = inttoptr %word 0 to %ptr
	%r68 = load %ptr, %ptr* %t1
	%r72 = bitcast %ptr %r68 to [0 x %ptr]*
	%r71 = ptrtoint %ptr %r67 to %word
	%r70 = getelementptr [0 x %ptr], [0 x %ptr]* %r72, %word 0, %word %r71
	%r69 = load %ptr, %ptr* %r70
	%r74 = bitcast %ptr %r69 to %ptr (%ptr, %ptr)*
	%r73 = call %ptr %r74(%ptr %r65, %ptr %r66)
	store %ptr %r73, %ptr* %t8
	br label %L906
L905:
	%r75 = inttoptr %word 1 to %ptr
	%r76 = load %ptr, %ptr* @"var/*applicators*"
	%r80 = bitcast %ptr %r76 to [0 x %ptr]*
	%r79 = ptrtoint %ptr %r75 to %word
	%r78 = getelementptr [0 x %ptr], [0 x %ptr]* %r80, %word 0, %word %r79
	%r77 = load %ptr, %ptr* %r78
	%r81 = load %ptr, %ptr* %t1
	%r82 = call %ptr @"get/type"(%ptr %r81)
	%r83 = call %ptr @"k/array-at"(%ptr %r77, %ptr %r82)
	store %ptr %r83, %ptr* %t9
	%r84 = load %ptr, %ptr* %t9
	%r86 = ptrtoint %ptr %r84 to %word
	%r85 = icmp ne %word %r86, 0
	br i1 %r85, label %L907, label %L908
L907:
	%r87 = load %ptr, %ptr* %t2
	store %ptr %r87, %ptr* %t11
	%r89 = getelementptr %ptr, %ptr* %t11, %word 0
	%r88 = bitcast %ptr* %r89 to %ptr
	%r90 = call %ptr @"gc/push-root"(%ptr %r88)
	%r91 = load %ptr, %ptr* %t1
	%r92 = load %ptr, %ptr* %t11
	%r93 = call %ptr @"new-<pair>"(%ptr %r91, %ptr %r92)
	store %ptr %r93, %ptr* %t11
	%r94 = load %ptr, %ptr* %t9
	%r95 = load %ptr, %ptr* %t11
	%r96 = load %ptr, %ptr* %t3
	%r97 = call %ptr @"k/apply"(%ptr %r94, %ptr %r95, %ptr %r96)
	store %ptr %r97, %ptr* %t12
	%r99 = getelementptr %ptr, %ptr* %t11, %word 0
	%r98 = bitcast %ptr* %r99 to %ptr
	%r100 = call %ptr @"gc/pop-root"(%ptr %r98)
	%r101 = load %ptr, %ptr* %t12
	store %ptr %r101, %ptr* %t10
	br label %L909
L908:
	%r102 = getelementptr [9 x i8], [9 x i8]* @str910, %word 0, %word 0
	%r104 = call i32 (%ptr, ...) @printf(%ptr %r102)
	%r105 = sext i32 %r104 to %word
	%r106 = inttoptr %word %r105 to %ptr
	%r107 = getelementptr [15 x i8], [15 x i8]* @str911, %word 0, %word 0
	%r109 = call i32 (%ptr, ...) @printf(%ptr %r107)
	%r110 = sext i32 %r109 to %word
	%r111 = inttoptr %word %r110 to %ptr
	%r112 = load %ptr, %ptr* %t1
	%r113 = call %ptr @"k/print"(%ptr %r112)
	%r114 = getelementptr [2 x i8], [2 x i8]* @str912, %word 0, %word 0
	%r116 = call i32 (%ptr, ...) @printf(%ptr %r114)
	%r117 = sext i32 %r116 to %word
	%r118 = inttoptr %word %r117 to %ptr
	%r119 = call %ptr @die()
	store %ptr %r119, %ptr* %t10
	br label %L909
L909:
	%r120 = load %ptr, %ptr* %t10
	store %ptr %r120, %ptr* %t8
	br label %L906
L906:
	%r121 = load %ptr, %ptr* %t8
	store %ptr %r121, %ptr* %t7
	br label %L903
L903:
	%r122 = load %ptr, %ptr* %t7
	store %ptr %r122, %ptr* %t6
	br label %L900
L900:
	%r123 = load %ptr, %ptr* %t6
	store %ptr %r123, %ptr* %t4
	%r124 = inttoptr %word 1 to %ptr
	%r125 = load %ptr, %ptr* @"*call-stack-index*"
	%r129 = ptrtoint %ptr %r125 to %word
	%r128 = ptrtoint %ptr %r124 to %word
	%r127 = sub %word %r129, %r128
	%r126 = inttoptr %word %r127 to %ptr
	store %ptr %r126, %ptr* @"*call-stack-index*"
	%r130 = load %ptr, %ptr* @"*call-stack-index*"
	%r131 = inttoptr %word 0 to %ptr
	%r135 = ptrtoint %ptr %r131 to %word
	%r134 = ptrtoint %ptr %r130 to %word
	%r133 = icmp sle %word %r135, %r134
	%r132 = inttoptr i1 %r133 to %ptr
	%r137 = ptrtoint %ptr %r132 to %word
	%r136 = icmp ne %word %r137, 0
	br i1 %r136, label %L913, label %L914
L913:
	%r138 = load %ptr, %ptr* @"*call-stack*"
	%r139 = load %ptr, %ptr* @"*call-stack-index*"
	%r140 = call %ptr @"k/array-at"(%ptr %r138, %ptr %r139)
	store %ptr %r140, %ptr* %t6
	%r141 = inttoptr %word 0 to %ptr
	%r142 = inttoptr %word 0 to %ptr
	%r143 = load %ptr, %ptr* %t6
	%r147 = bitcast %ptr %r143 to [0 x %ptr]*
	%r146 = ptrtoint %ptr %r142 to %word
	%r145 = getelementptr [0 x %ptr], [0 x %ptr]* %r147, %word 0, %word %r146
	store %ptr %r141, %ptr* %r145
	%r144 = bitcast %ptr %r141 to %ptr
	%r148 = inttoptr %word 0 to %ptr
	%r149 = inttoptr %word 1 to %ptr
	%r150 = load %ptr, %ptr* %t6
	%r154 = bitcast %ptr %r150 to [0 x %ptr]*
	%r153 = ptrtoint %ptr %r149 to %word
	%r152 = getelementptr [0 x %ptr], [0 x %ptr]* %r154, %word 0, %word %r153
	store %ptr %r148, %ptr* %r152
	%r151 = bitcast %ptr %r148 to %ptr
	%r155 = inttoptr %word 0 to %ptr
	%r156 = inttoptr %word 2 to %ptr
	%r157 = load %ptr, %ptr* %t6
	%r161 = bitcast %ptr %r157 to [0 x %ptr]*
	%r160 = ptrtoint %ptr %r156 to %word
	%r159 = getelementptr [0 x %ptr], [0 x %ptr]* %r161, %word 0, %word %r160
	store %ptr %r155, %ptr* %r159
	%r158 = bitcast %ptr %r155 to %ptr
	store %ptr %r158, %ptr* %t5
	br label %L915
L914:
	%r162 = inttoptr %word 0 to %ptr
	store %ptr %r162, %ptr* %t5
	br label %L915
L915:
	%r163 = load %ptr, %ptr* %t5
	%r164 = inttoptr %word 0 to %ptr
	%r165 = load %ptr, %ptr* %t4
	ret %ptr %r165
}
@str919 = private unnamed_addr constant [53 x i8] c"infinite recursion guard triggered at call depth %ld\00"
@str943 = private unnamed_addr constant [5 x i8] c"set-\00"
define %ptr @"k/expand"(%ptr %exp, %ptr %env) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t9 = alloca %ptr
	%t10 = alloca %ptr
	%t11 = alloca %ptr
	%t12 = alloca %ptr
	%t13 = alloca %ptr
	store %ptr %exp, %ptr* %t1
	store %ptr %env, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = load %ptr, %ptr* %t1
	store %ptr %r2, %ptr* %t3
	%r3 = load %ptr, %ptr* @"symbol/expand"
	%r4 = inttoptr %word 0 to %ptr
	%r5 = load %ptr, %ptr* %t1
	%r6 = call %ptr @"%new-call-frame"(%ptr %r3, %ptr %r4, %ptr %r5)
	store %ptr %r6, %ptr* %t4
	%r7 = inttoptr %word 10000 to %ptr
	%r8 = inttoptr %word 1 to %ptr
	%r9 = load %ptr, %ptr* @"*call-stack-index*"
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = add %word %r13, %r12
	%r10 = inttoptr %word %r11 to %ptr
	store %ptr %r10, %ptr* @"*call-stack-index*"
	%r17 = ptrtoint %ptr %r10 to %word
	%r16 = ptrtoint %ptr %r7 to %word
	%r15 = icmp sgt %word %r17, %r16
	%r14 = inttoptr i1 %r15 to %ptr
	%r19 = ptrtoint %ptr %r14 to %word
	%r18 = icmp ne %word %r19, 0
	br i1 %r18, label %L916, label %L917
L916:
	%r20 = getelementptr [53 x i8], [53 x i8]* @str919, %word 0, %word 0
	%r22 = load %ptr, %ptr* @"*call-stack-index*"
	%r23 = call %ptr @fatal1(%ptr %r20, %ptr %r22)
	store %ptr %r23, %ptr* %t5
	br label %L918
L917:
	%r24 = inttoptr %word 0 to %ptr
	store %ptr %r24, %ptr* %t5
	br label %L918
L918:
	%r25 = load %ptr, %ptr* %t5
	%r26 = load %ptr, %ptr* %t1
	%r27 = call %ptr @"get/type"(%ptr %r26)
	%r28 = inttoptr %word 19 to %ptr
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = ptrtoint %ptr %r27 to %word
	%r30 = icmp eq %word %r32, %r31
	%r29 = inttoptr i1 %r30 to %ptr
	%r34 = ptrtoint %ptr %r29 to %word
	%r33 = icmp ne %word %r34, 0
	br i1 %r33, label %L920, label %L921
L920:
	%r35 = inttoptr %word 0 to %ptr
	%r36 = load %ptr, %ptr* %t1
	%r40 = bitcast %ptr %r36 to [0 x %ptr]*
	%r39 = ptrtoint %ptr %r35 to %word
	%r38 = getelementptr [0 x %ptr], [0 x %ptr]* %r40, %word 0, %word %r39
	%r37 = load %ptr, %ptr* %r38
	%r41 = load %ptr, %ptr* %t2
	%r42 = call %ptr @"k/expand"(%ptr %r37, %ptr %r41)
	store %ptr %r42, %ptr* %t6
	%r44 = getelementptr %ptr, %ptr* %t6, %word 0
	%r43 = bitcast %ptr* %r44 to %ptr
	%r45 = call %ptr @"gc/push-root"(%ptr %r43)
	%r46 = inttoptr %word 0 to %ptr
	%r47 = load %ptr, %ptr* %t1
	%r51 = bitcast %ptr %r47 to [0 x %ptr]*
	%r50 = ptrtoint %ptr %r46 to %word
	%r49 = getelementptr [0 x %ptr], [0 x %ptr]* %r51, %word 0, %word %r50
	%r48 = load %ptr, %ptr* %r49
	%r52 = inttoptr %word 0 to %ptr
	%r53 = load %ptr, %ptr* %t4
	%r57 = bitcast %ptr %r53 to [0 x %ptr]*
	%r56 = ptrtoint %ptr %r52 to %word
	%r55 = getelementptr [0 x %ptr], [0 x %ptr]* %r57, %word 0, %word %r56
	store %ptr %r48, %ptr* %r55
	%r54 = bitcast %ptr %r48 to %ptr
	%r58 = load %ptr, %ptr* %t6
	%r59 = inttoptr %word 1 to %ptr
	%r60 = load %ptr, %ptr* %t4
	%r64 = bitcast %ptr %r60 to [0 x %ptr]*
	%r63 = ptrtoint %ptr %r59 to %word
	%r62 = getelementptr [0 x %ptr], [0 x %ptr]* %r64, %word 0, %word %r63
	store %ptr %r58, %ptr* %r62
	%r61 = bitcast %ptr %r58 to %ptr
	%r65 = inttoptr %word 1 to %ptr
	%r66 = load %ptr, %ptr* %t1
	%r70 = bitcast %ptr %r66 to [0 x %ptr]*
	%r69 = ptrtoint %ptr %r65 to %word
	%r68 = getelementptr [0 x %ptr], [0 x %ptr]* %r70, %word 0, %word %r69
	%r67 = load %ptr, %ptr* %r68
	%r71 = inttoptr %word 2 to %ptr
	%r72 = load %ptr, %ptr* %t4
	%r76 = bitcast %ptr %r72 to [0 x %ptr]*
	%r75 = ptrtoint %ptr %r71 to %word
	%r74 = getelementptr [0 x %ptr], [0 x %ptr]* %r76, %word 0, %word %r75
	store %ptr %r67, %ptr* %r74
	%r73 = bitcast %ptr %r67 to %ptr
	%r77 = inttoptr %word 0 to %ptr
	store %ptr %r77, %ptr* %t7
	%r78 = inttoptr %word 0 to %ptr
	store %ptr %r78, %ptr* %t8
	%r79 = inttoptr %word 1 to %ptr
	store %ptr %r79, %ptr* %t10
	%r80 = load %ptr, %ptr* %t6
	%r81 = call %ptr @"get/type"(%ptr %r80)
	%r82 = inttoptr %word 18 to %ptr
	%r86 = ptrtoint %ptr %r82 to %word
	%r85 = ptrtoint %ptr %r81 to %word
	%r84 = icmp eq %word %r86, %r85
	%r83 = inttoptr i1 %r84 to %ptr
	store %ptr %r83, %ptr* %t10
	%r87 = inttoptr %word 0 to %ptr
	%r91 = ptrtoint %ptr %r87 to %word
	%r90 = ptrtoint %ptr %r83 to %word
	%r89 = icmp eq %word %r91, %r90
	%r88 = inttoptr i1 %r89 to %ptr
	%r93 = ptrtoint %ptr %r88 to %word
	%r92 = icmp ne %word %r93, 0
	br i1 %r92, label %L926, label %L927
L927:
	%r94 = load %ptr, %ptr* %t2
	%r95 = load %ptr, %ptr* %t6
	%r96 = call %ptr @"k/env/lookup-variable"(%ptr %r94, %ptr %r95)
	store %ptr %r96, %ptr* %t7
	store %ptr %r96, %ptr* %t10
	%r97 = inttoptr %word 0 to %ptr
	%r101 = ptrtoint %ptr %r97 to %word
	%r100 = ptrtoint %ptr %r96 to %word
	%r99 = icmp eq %word %r101, %r100
	%r98 = inttoptr i1 %r99 to %ptr
	%r103 = ptrtoint %ptr %r98 to %word
	%r102 = icmp ne %word %r103, 0
	br i1 %r102, label %L926, label %L928
L928:
	%r104 = load %ptr, %ptr* %t7
	%r105 = call %ptr @"get/type"(%ptr %r104)
	%r106 = inttoptr %word 13 to %ptr
	%r110 = ptrtoint %ptr %r106 to %word
	%r109 = ptrtoint %ptr %r105 to %word
	%r108 = icmp eq %word %r110, %r109
	%r107 = inttoptr i1 %r108 to %ptr
	store %ptr %r107, %ptr* %t10
	%r111 = inttoptr %word 0 to %ptr
	%r115 = ptrtoint %ptr %r111 to %word
	%r114 = ptrtoint %ptr %r107 to %word
	%r113 = icmp eq %word %r115, %r114
	%r112 = inttoptr i1 %r113 to %ptr
	%r117 = ptrtoint %ptr %r112 to %word
	%r116 = icmp ne %word %r117, 0
	br i1 %r116, label %L926, label %L929
L929:
	%r118 = inttoptr %word 1 to %ptr
	%r119 = load %ptr, %ptr* %t7
	%r123 = bitcast %ptr %r119 to [0 x %ptr]*
	%r122 = ptrtoint %ptr %r118 to %word
	%r121 = getelementptr [0 x %ptr], [0 x %ptr]* %r123, %word 0, %word %r122
	%r120 = load %ptr, %ptr* %r121
	store %ptr %r120, %ptr* %t7
	store %ptr %r120, %ptr* %t10
	%r124 = inttoptr %word 0 to %ptr
	%r128 = ptrtoint %ptr %r124 to %word
	%r127 = ptrtoint %ptr %r120 to %word
	%r126 = icmp eq %word %r128, %r127
	%r125 = inttoptr i1 %r126 to %ptr
	%r130 = ptrtoint %ptr %r125 to %word
	%r129 = icmp ne %word %r130, 0
	br i1 %r129, label %L926, label %L930
L930:
	%r131 = load %ptr, %ptr* %t7
	%r132 = call %ptr @"get/type"(%ptr %r131)
	%r133 = inttoptr %word 10 to %ptr
	%r137 = ptrtoint %ptr %r133 to %word
	%r136 = ptrtoint %ptr %r132 to %word
	%r135 = icmp eq %word %r137, %r136
	%r134 = inttoptr i1 %r135 to %ptr
	store %ptr %r134, %ptr* %t10
	%r138 = inttoptr %word 0 to %ptr
	%r142 = ptrtoint %ptr %r138 to %word
	%r141 = ptrtoint %ptr %r134 to %word
	%r140 = icmp eq %word %r142, %r141
	%r139 = inttoptr i1 %r140 to %ptr
	%r144 = ptrtoint %ptr %r139 to %word
	%r143 = icmp ne %word %r144, 0
	br i1 %r143, label %L926, label %L931
L931:
	%r145 = inttoptr %word 0 to %ptr
	%r146 = load %ptr, %ptr* %t7
	%r150 = bitcast %ptr %r146 to [0 x %ptr]*
	%r149 = ptrtoint %ptr %r145 to %word
	%r148 = getelementptr [0 x %ptr], [0 x %ptr]* %r150, %word 0, %word %r149
	%r147 = load %ptr, %ptr* %r148
	store %ptr %r147, %ptr* %t8
	store %ptr %r147, %ptr* %t10
	%r151 = inttoptr %word 0 to %ptr
	%r155 = ptrtoint %ptr %r151 to %word
	%r154 = ptrtoint %ptr %r147 to %word
	%r153 = icmp eq %word %r155, %r154
	%r152 = inttoptr i1 %r153 to %ptr
	%r157 = ptrtoint %ptr %r152 to %word
	%r156 = icmp ne %word %r157, 0
	br i1 %r156, label %L926, label %L932
L932:
	br label %L926
L926:
	%r158 = load %ptr, %ptr* %t10
	%r160 = ptrtoint %ptr %r158 to %word
	%r159 = icmp ne %word %r160, 0
	br i1 %r159, label %L923, label %L924
L923:
	%r161 = load %ptr, %ptr* %t2
	%r162 = inttoptr %word 1 to %ptr
	%r163 = load %ptr, %ptr* %t1
	%r167 = bitcast %ptr %r163 to [0 x %ptr]*
	%r166 = ptrtoint %ptr %r162 to %word
	%r165 = getelementptr [0 x %ptr], [0 x %ptr]* %r167, %word 0, %word %r166
	%r164 = load %ptr, %ptr* %r165
	%r168 = call %ptr @"new-<pair>"(%ptr %r161, %ptr %r164)
	store %ptr %r168, %ptr* %t10
	%r170 = getelementptr %ptr, %ptr* %t10, %word 0
	%r169 = bitcast %ptr* %r170 to %ptr
	%r171 = call %ptr @"gc/push-root"(%ptr %r169)
	%r172 = load %ptr, %ptr* %t8
	%r173 = load %ptr, %ptr* %t10
	%r174 = inttoptr %word 0 to %ptr
	%r175 = call %ptr @"k/apply"(%ptr %r172, %ptr %r173, %ptr %r174)
	store %ptr %r175, %ptr* %t3
	%r176 = load %ptr, %ptr* %t3
	%r177 = load %ptr, %ptr* %t2
	%r178 = call %ptr @"k/expand"(%ptr %r176, %ptr %r177)
	store %ptr %r178, %ptr* %t3
	store %ptr %r178, %ptr* %t11
	%r180 = getelementptr %ptr, %ptr* %t10, %word 0
	%r179 = bitcast %ptr* %r180 to %ptr
	%r181 = call %ptr @"gc/pop-root"(%ptr %r179)
	%r182 = load %ptr, %ptr* %t11
	store %ptr %r182, %ptr* %t9
	br label %L925
L924:
	%r183 = inttoptr %word 1 to %ptr
	%r184 = load %ptr, %ptr* %t1
	%r188 = bitcast %ptr %r184 to [0 x %ptr]*
	%r187 = ptrtoint %ptr %r183 to %word
	%r186 = getelementptr [0 x %ptr], [0 x %ptr]* %r188, %word 0, %word %r187
	%r185 = load %ptr, %ptr* %r186
	store %ptr %r185, %ptr* %t10
	%r190 = getelementptr %ptr, %ptr* %t10, %word 0
	%r189 = bitcast %ptr* %r190 to %ptr
	%r191 = call %ptr @"gc/push-root"(%ptr %r189)
	%r192 = load %ptr, %ptr* @"symbol/quote"
	%r193 = load %ptr, %ptr* %t6
	%r197 = ptrtoint %ptr %r193 to %word
	%r196 = ptrtoint %ptr %r192 to %word
	%r195 = icmp eq %word %r197, %r196
	%r194 = inttoptr i1 %r195 to %ptr
	%r199 = ptrtoint %ptr %r194 to %word
	%r198 = icmp ne %word %r199, 0
	br i1 %r198, label %L933, label %L934
L933:
	%r200 = inttoptr %word 0 to %ptr
	store %ptr %r200, %ptr* %t11
	br label %L935
L934:
	%r201 = load %ptr, %ptr* %t10
	%r202 = load %ptr, %ptr* %t2
	%r203 = call %ptr @"k/expand/list"(%ptr %r201, %ptr %r202)
	store %ptr %r203, %ptr* %t10
	store %ptr %r203, %ptr* %t11
	br label %L935
L935:
	%r204 = load %ptr, %ptr* %t11
	%r205 = inttoptr %word 1 to %ptr
	store %ptr %r205, %ptr* %t12
	%r206 = load %ptr, %ptr* %t6
	%r207 = load %ptr, %ptr* @"symbol/set"
	%r211 = ptrtoint %ptr %r207 to %word
	%r210 = ptrtoint %ptr %r206 to %word
	%r209 = icmp eq %word %r211, %r210
	%r208 = inttoptr i1 %r209 to %ptr
	store %ptr %r208, %ptr* %t12
	%r212 = inttoptr %word 0 to %ptr
	%r216 = ptrtoint %ptr %r212 to %word
	%r215 = ptrtoint %ptr %r208 to %word
	%r214 = icmp eq %word %r216, %r215
	%r213 = inttoptr i1 %r214 to %ptr
	%r218 = ptrtoint %ptr %r213 to %word
	%r217 = icmp ne %word %r218, 0
	br i1 %r217, label %L939, label %L940
L940:
	%r219 = load %ptr, %ptr* %t10
	%r220 = call %ptr @"k/car"(%ptr %r219)
	%r221 = call %ptr @"get/type"(%ptr %r220)
	%r222 = inttoptr %word 19 to %ptr
	%r226 = ptrtoint %ptr %r222 to %word
	%r225 = ptrtoint %ptr %r221 to %word
	%r224 = icmp eq %word %r226, %r225
	%r223 = inttoptr i1 %r224 to %ptr
	store %ptr %r223, %ptr* %t12
	%r227 = inttoptr %word 0 to %ptr
	%r231 = ptrtoint %ptr %r227 to %word
	%r230 = ptrtoint %ptr %r223 to %word
	%r229 = icmp eq %word %r231, %r230
	%r228 = inttoptr i1 %r229 to %ptr
	%r233 = ptrtoint %ptr %r228 to %word
	%r232 = icmp ne %word %r233, 0
	br i1 %r232, label %L939, label %L941
L941:
	%r234 = load %ptr, %ptr* %t10
	%r235 = call %ptr @"k/caar"(%ptr %r234)
	%r236 = call %ptr @"get/type"(%ptr %r235)
	%r237 = inttoptr %word 18 to %ptr
	%r241 = ptrtoint %ptr %r237 to %word
	%r240 = ptrtoint %ptr %r236 to %word
	%r239 = icmp eq %word %r241, %r240
	%r238 = inttoptr i1 %r239 to %ptr
	store %ptr %r238, %ptr* %t12
	%r242 = inttoptr %word 0 to %ptr
	%r246 = ptrtoint %ptr %r242 to %word
	%r245 = ptrtoint %ptr %r238 to %word
	%r244 = icmp eq %word %r246, %r245
	%r243 = inttoptr i1 %r244 to %ptr
	%r248 = ptrtoint %ptr %r243 to %word
	%r247 = icmp ne %word %r248, 0
	br i1 %r247, label %L939, label %L942
L942:
	br label %L939
L939:
	%r249 = load %ptr, %ptr* %t12
	%r251 = ptrtoint %ptr %r249 to %word
	%r250 = icmp ne %word %r251, 0
	br i1 %r250, label %L936, label %L937
L936:
	%r252 = call %ptr @"new-<buffer>"()
	store %ptr %r252, %ptr* %t12
	%r254 = getelementptr %ptr, %ptr* %t12, %word 0
	%r253 = bitcast %ptr* %r254 to %ptr
	%r255 = call %ptr @"gc/push-root"(%ptr %r253)
	%r256 = load %ptr, %ptr* %t12
	%r257 = getelementptr [5 x i8], [5 x i8]* @str943, %word 0, %word 0
	%r259 = call %ptr @buffer-append-string(%ptr %r256, %ptr %r257)
	%r260 = load %ptr, %ptr* %t12
	%r261 = inttoptr %word 0 to %ptr
	%r262 = inttoptr %word 0 to %ptr
	%r263 = inttoptr %word 0 to %ptr
	%r264 = load %ptr, %ptr* %t10
	%r268 = bitcast %ptr %r264 to [0 x %ptr]*
	%r267 = ptrtoint %ptr %r263 to %word
	%r266 = getelementptr [0 x %ptr], [0 x %ptr]* %r268, %word 0, %word %r267
	%r265 = load %ptr, %ptr* %r266
	%r272 = bitcast %ptr %r265 to [0 x %ptr]*
	%r271 = ptrtoint %ptr %r262 to %word
	%r270 = getelementptr [0 x %ptr], [0 x %ptr]* %r272, %word 0, %word %r271
	%r269 = load %ptr, %ptr* %r270
	%r276 = bitcast %ptr %r269 to [0 x %ptr]*
	%r275 = ptrtoint %ptr %r261 to %word
	%r274 = getelementptr [0 x %ptr], [0 x %ptr]* %r276, %word 0, %word %r275
	%r273 = load %ptr, %ptr* %r274
	%r277 = call %ptr @buffer-append-string(%ptr %r260, %ptr %r273)
	%r278 = load %ptr, %ptr* %t12
	%r279 = call %ptr @buffer-contents(%ptr %r278)
	%r280 = call %ptr @"k/intern"(%ptr %r279)
	store %ptr %r280, %ptr* %t6
	%r281 = inttoptr %word 1 to %ptr
	%r282 = inttoptr %word 0 to %ptr
	%r283 = load %ptr, %ptr* %t10
	%r287 = bitcast %ptr %r283 to [0 x %ptr]*
	%r286 = ptrtoint %ptr %r282 to %word
	%r285 = getelementptr [0 x %ptr], [0 x %ptr]* %r287, %word 0, %word %r286
	%r284 = load %ptr, %ptr* %r285
	%r291 = bitcast %ptr %r284 to [0 x %ptr]*
	%r290 = ptrtoint %ptr %r281 to %word
	%r289 = getelementptr [0 x %ptr], [0 x %ptr]* %r291, %word 0, %word %r290
	%r288 = load %ptr, %ptr* %r289
	%r292 = inttoptr %word 1 to %ptr
	%r293 = load %ptr, %ptr* %t10
	%r297 = bitcast %ptr %r293 to [0 x %ptr]*
	%r296 = ptrtoint %ptr %r292 to %word
	%r295 = getelementptr [0 x %ptr], [0 x %ptr]* %r297, %word 0, %word %r296
	%r294 = load %ptr, %ptr* %r295
	%r298 = call %ptr @"k/concat-list"(%ptr %r288, %ptr %r294)
	store %ptr %r298, %ptr* %t10
	store %ptr %r298, %ptr* %t13
	%r300 = getelementptr %ptr, %ptr* %t12, %word 0
	%r299 = bitcast %ptr* %r300 to %ptr
	%r301 = call %ptr @"gc/pop-root"(%ptr %r299)
	%r302 = load %ptr, %ptr* %t13
	store %ptr %r302, %ptr* %t11
	br label %L938
L937:
	%r303 = inttoptr %word 0 to %ptr
	store %ptr %r303, %ptr* %t11
	br label %L938
L938:
	%r304 = load %ptr, %ptr* %t11
	%r305 = load %ptr, %ptr* %t6
	%r306 = load %ptr, %ptr* %t10
	%r307 = call %ptr @"new-<pair>"(%ptr %r305, %ptr %r306)
	store %ptr %r307, %ptr* %t3
	store %ptr %r307, %ptr* %t11
	%r309 = getelementptr %ptr, %ptr* %t10, %word 0
	%r308 = bitcast %ptr* %r309 to %ptr
	%r310 = call %ptr @"gc/pop-root"(%ptr %r308)
	%r311 = load %ptr, %ptr* %t11
	store %ptr %r311, %ptr* %t9
	br label %L925
L925:
	%r312 = load %ptr, %ptr* %t9
	store %ptr %r312, %ptr* %t8
	%r314 = getelementptr %ptr, %ptr* %t6, %word 0
	%r313 = bitcast %ptr* %r314 to %ptr
	%r315 = call %ptr @"gc/pop-root"(%ptr %r313)
	%r316 = load %ptr, %ptr* %t8
	store %ptr %r316, %ptr* %t5
	br label %L922
L921:
	%r317 = load %ptr, %ptr* %t1
	%r318 = call %ptr @"get/type"(%ptr %r317)
	%r319 = inttoptr %word 18 to %ptr
	%r323 = ptrtoint %ptr %r319 to %word
	%r322 = ptrtoint %ptr %r318 to %word
	%r321 = icmp eq %word %r323, %r322
	%r320 = inttoptr i1 %r321 to %ptr
	%r325 = ptrtoint %ptr %r320 to %word
	%r324 = icmp ne %word %r325, 0
	br i1 %r324, label %L944, label %L945
L944:
	%r326 = inttoptr %word 0 to %ptr
	store %ptr %r326, %ptr* %t8
	%r327 = inttoptr %word 0 to %ptr
	store %ptr %r327, %ptr* %t7
	%r328 = inttoptr %word 1 to %ptr
	store %ptr %r328, %ptr* %t10
	%r329 = load %ptr, %ptr* %t2
	%r330 = load %ptr, %ptr* %t1
	%r331 = call %ptr @"k/env/lookup-variable"(%ptr %r329, %ptr %r330)
	store %ptr %r331, %ptr* %t8
	store %ptr %r331, %ptr* %t10
	%r332 = inttoptr %word 0 to %ptr
	%r336 = ptrtoint %ptr %r332 to %word
	%r335 = ptrtoint %ptr %r331 to %word
	%r334 = icmp eq %word %r336, %r335
	%r333 = inttoptr i1 %r334 to %ptr
	%r338 = ptrtoint %ptr %r333 to %word
	%r337 = icmp ne %word %r338, 0
	br i1 %r337, label %L950, label %L951
L951:
	%r339 = load %ptr, %ptr* %t8
	%r340 = call %ptr @"get/type"(%ptr %r339)
	%r341 = inttoptr %word 13 to %ptr
	%r345 = ptrtoint %ptr %r341 to %word
	%r344 = ptrtoint %ptr %r340 to %word
	%r343 = icmp eq %word %r345, %r344
	%r342 = inttoptr i1 %r343 to %ptr
	store %ptr %r342, %ptr* %t10
	%r346 = inttoptr %word 0 to %ptr
	%r350 = ptrtoint %ptr %r346 to %word
	%r349 = ptrtoint %ptr %r342 to %word
	%r348 = icmp eq %word %r350, %r349
	%r347 = inttoptr i1 %r348 to %ptr
	%r352 = ptrtoint %ptr %r347 to %word
	%r351 = icmp ne %word %r352, 0
	br i1 %r351, label %L950, label %L952
L952:
	%r353 = inttoptr %word 1 to %ptr
	%r354 = load %ptr, %ptr* %t8
	%r358 = bitcast %ptr %r354 to [0 x %ptr]*
	%r357 = ptrtoint %ptr %r353 to %word
	%r356 = getelementptr [0 x %ptr], [0 x %ptr]* %r358, %word 0, %word %r357
	%r355 = load %ptr, %ptr* %r356
	store %ptr %r355, %ptr* %t8
	store %ptr %r355, %ptr* %t10
	%r359 = inttoptr %word 0 to %ptr
	%r363 = ptrtoint %ptr %r359 to %word
	%r362 = ptrtoint %ptr %r355 to %word
	%r361 = icmp eq %word %r363, %r362
	%r360 = inttoptr i1 %r361 to %ptr
	%r365 = ptrtoint %ptr %r360 to %word
	%r364 = icmp ne %word %r365, 0
	br i1 %r364, label %L950, label %L953
L953:
	%r366 = load %ptr, %ptr* %t8
	%r367 = call %ptr @"get/type"(%ptr %r366)
	%r368 = inttoptr %word 10 to %ptr
	%r372 = ptrtoint %ptr %r368 to %word
	%r371 = ptrtoint %ptr %r367 to %word
	%r370 = icmp eq %word %r372, %r371
	%r369 = inttoptr i1 %r370 to %ptr
	store %ptr %r369, %ptr* %t10
	%r373 = inttoptr %word 0 to %ptr
	%r377 = ptrtoint %ptr %r373 to %word
	%r376 = ptrtoint %ptr %r369 to %word
	%r375 = icmp eq %word %r377, %r376
	%r374 = inttoptr i1 %r375 to %ptr
	%r379 = ptrtoint %ptr %r374 to %word
	%r378 = icmp ne %word %r379, 0
	br i1 %r378, label %L950, label %L954
L954:
	%r380 = inttoptr %word 1 to %ptr
	%r381 = load %ptr, %ptr* %t8
	%r385 = bitcast %ptr %r381 to [0 x %ptr]*
	%r384 = ptrtoint %ptr %r380 to %word
	%r383 = getelementptr [0 x %ptr], [0 x %ptr]* %r385, %word 0, %word %r384
	%r382 = load %ptr, %ptr* %r383
	store %ptr %r382, %ptr* %t7
	store %ptr %r382, %ptr* %t10
	%r386 = inttoptr %word 0 to %ptr
	%r390 = ptrtoint %ptr %r386 to %word
	%r389 = ptrtoint %ptr %r382 to %word
	%r388 = icmp eq %word %r390, %r389
	%r387 = inttoptr i1 %r388 to %ptr
	%r392 = ptrtoint %ptr %r387 to %word
	%r391 = icmp ne %word %r392, 0
	br i1 %r391, label %L950, label %L955
L955:
	br label %L950
L950:
	%r393 = load %ptr, %ptr* %t10
	%r395 = ptrtoint %ptr %r393 to %word
	%r394 = icmp ne %word %r395, 0
	br i1 %r394, label %L947, label %L948
L947:
	%r396 = load %ptr, %ptr* %t1
	%r397 = inttoptr %word 0 to %ptr
	%r398 = call %ptr @"new-<pair>"(%ptr %r396, %ptr %r397)
	store %ptr %r398, %ptr* %t10
	%r400 = getelementptr %ptr, %ptr* %t10, %word 0
	%r399 = bitcast %ptr* %r400 to %ptr
	%r401 = call %ptr @"gc/push-root"(%ptr %r399)
	%r402 = load %ptr, %ptr* %t2
	%r403 = load %ptr, %ptr* %t10
	%r404 = call %ptr @"new-<pair>"(%ptr %r402, %ptr %r403)
	store %ptr %r404, %ptr* %t10
	%r405 = load %ptr, %ptr* %t7
	%r406 = load %ptr, %ptr* %t10
	%r407 = inttoptr %word 0 to %ptr
	%r408 = call %ptr @"k/apply"(%ptr %r405, %ptr %r406, %ptr %r407)
	store %ptr %r408, %ptr* %t10
	%r409 = load %ptr, %ptr* %t10
	%r410 = load %ptr, %ptr* %t2
	%r411 = call %ptr @"k/expand"(%ptr %r409, %ptr %r410)
	store %ptr %r411, %ptr* %t3
	store %ptr %r411, %ptr* %t11
	%r413 = getelementptr %ptr, %ptr* %t10, %word 0
	%r412 = bitcast %ptr* %r413 to %ptr
	%r414 = call %ptr @"gc/pop-root"(%ptr %r412)
	%r415 = load %ptr, %ptr* %t11
	store %ptr %r415, %ptr* %t9
	br label %L949
L948:
	%r416 = inttoptr %word 0 to %ptr
	store %ptr %r416, %ptr* %t9
	br label %L949
L949:
	%r417 = load %ptr, %ptr* %t9
	store %ptr %r417, %ptr* %t6
	br label %L946
L945:
	%r418 = inttoptr %word 1 to %ptr
	%r419 = load %ptr, %ptr* @"var/*expanders*"
	%r423 = bitcast %ptr %r419 to [0 x %ptr]*
	%r422 = ptrtoint %ptr %r418 to %word
	%r421 = getelementptr [0 x %ptr], [0 x %ptr]* %r423, %word 0, %word %r422
	%r420 = load %ptr, %ptr* %r421
	%r424 = load %ptr, %ptr* %t1
	%r425 = call %ptr @"get/type"(%ptr %r424)
	%r426 = call %ptr @"k/array-at"(%ptr %r420, %ptr %r425)
	store %ptr %r426, %ptr* %t7
	%r427 = load %ptr, %ptr* %t7
	%r429 = ptrtoint %ptr %r427 to %word
	%r428 = icmp ne %word %r429, 0
	br i1 %r428, label %L956, label %L957
L956:
	%r430 = load %ptr, %ptr* %t1
	%r431 = inttoptr %word 0 to %ptr
	%r432 = call %ptr @"new-<pair>"(%ptr %r430, %ptr %r431)
	store %ptr %r432, %ptr* %t9
	%r434 = getelementptr %ptr, %ptr* %t9, %word 0
	%r433 = bitcast %ptr* %r434 to %ptr
	%r435 = call %ptr @"gc/push-root"(%ptr %r433)
	%r436 = load %ptr, %ptr* %t7
	%r437 = load %ptr, %ptr* %t9
	%r438 = inttoptr %word 0 to %ptr
	%r439 = call %ptr @"k/apply"(%ptr %r436, %ptr %r437, %ptr %r438)
	store %ptr %r439, %ptr* %t3
	store %ptr %r439, %ptr* %t10
	%r441 = getelementptr %ptr, %ptr* %t9, %word 0
	%r440 = bitcast %ptr* %r441 to %ptr
	%r442 = call %ptr @"gc/pop-root"(%ptr %r440)
	%r443 = load %ptr, %ptr* %t10
	store %ptr %r443, %ptr* %t8
	br label %L958
L957:
	%r444 = inttoptr %word 0 to %ptr
	store %ptr %r444, %ptr* %t8
	br label %L958
L958:
	%r445 = load %ptr, %ptr* %t8
	store %ptr %r445, %ptr* %t6
	br label %L946
L946:
	%r446 = load %ptr, %ptr* %t6
	store %ptr %r446, %ptr* %t5
	br label %L922
L922:
	%r447 = load %ptr, %ptr* %t5
	store %ptr %r447, %ptr* %t4
	%r448 = inttoptr %word 1 to %ptr
	%r449 = load %ptr, %ptr* @"*call-stack-index*"
	%r453 = ptrtoint %ptr %r449 to %word
	%r452 = ptrtoint %ptr %r448 to %word
	%r451 = sub %word %r453, %r452
	%r450 = inttoptr %word %r451 to %ptr
	store %ptr %r450, %ptr* @"*call-stack-index*"
	%r454 = load %ptr, %ptr* @"*call-stack-index*"
	%r455 = inttoptr %word 0 to %ptr
	%r459 = ptrtoint %ptr %r455 to %word
	%r458 = ptrtoint %ptr %r454 to %word
	%r457 = icmp sle %word %r459, %r458
	%r456 = inttoptr i1 %r457 to %ptr
	%r461 = ptrtoint %ptr %r456 to %word
	%r460 = icmp ne %word %r461, 0
	br i1 %r460, label %L959, label %L960
L959:
	%r462 = load %ptr, %ptr* @"*call-stack*"
	%r463 = load %ptr, %ptr* @"*call-stack-index*"
	%r464 = call %ptr @"k/array-at"(%ptr %r462, %ptr %r463)
	store %ptr %r464, %ptr* %t6
	%r465 = inttoptr %word 0 to %ptr
	%r466 = inttoptr %word 0 to %ptr
	%r467 = load %ptr, %ptr* %t6
	%r471 = bitcast %ptr %r467 to [0 x %ptr]*
	%r470 = ptrtoint %ptr %r466 to %word
	%r469 = getelementptr [0 x %ptr], [0 x %ptr]* %r471, %word 0, %word %r470
	store %ptr %r465, %ptr* %r469
	%r468 = bitcast %ptr %r465 to %ptr
	%r472 = inttoptr %word 0 to %ptr
	%r473 = inttoptr %word 1 to %ptr
	%r474 = load %ptr, %ptr* %t6
	%r478 = bitcast %ptr %r474 to [0 x %ptr]*
	%r477 = ptrtoint %ptr %r473 to %word
	%r476 = getelementptr [0 x %ptr], [0 x %ptr]* %r478, %word 0, %word %r477
	store %ptr %r472, %ptr* %r476
	%r475 = bitcast %ptr %r472 to %ptr
	%r479 = inttoptr %word 0 to %ptr
	%r480 = inttoptr %word 2 to %ptr
	%r481 = load %ptr, %ptr* %t6
	%r485 = bitcast %ptr %r481 to [0 x %ptr]*
	%r484 = ptrtoint %ptr %r480 to %word
	%r483 = getelementptr [0 x %ptr], [0 x %ptr]* %r485, %word 0, %word %r484
	store %ptr %r479, %ptr* %r483
	%r482 = bitcast %ptr %r479 to %ptr
	store %ptr %r482, %ptr* %t5
	br label %L961
L960:
	%r486 = inttoptr %word 0 to %ptr
	store %ptr %r486, %ptr* %t5
	br label %L961
L961:
	%r487 = load %ptr, %ptr* %t5
	%r488 = inttoptr %word 0 to %ptr
	%r489 = load %ptr, %ptr* %t4
	%r490 = load %ptr, %ptr* %t3
	ret %ptr %r490
}
@str988 = private unnamed_addr constant [28 x i8] c"set: undefined variable: %s\00"
@str995 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str996 = private unnamed_addr constant [34 x i8] c"encode: malformed SET expression \00"
@str997 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @"k/encode/pair"(%ptr %exp, %ptr %env) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t9 = alloca %ptr
	%t10 = alloca %ptr
	%t11 = alloca %ptr
	store %ptr %exp, %ptr* %t1
	store %ptr %env, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = load %ptr, %ptr* %t1
	%r6 = bitcast %ptr %r2 to [0 x %ptr]*
	%r5 = ptrtoint %ptr %r1 to %word
	%r4 = getelementptr [0 x %ptr], [0 x %ptr]* %r6, %word 0, %word %r5
	%r3 = load %ptr, %ptr* %r4
	%r7 = load %ptr, %ptr* %t2
	%r8 = call %ptr @"k/encode"(%ptr %r3, %ptr %r7)
	store %ptr %r8, %ptr* %t3
	%r10 = getelementptr %ptr, %ptr* %t3, %word 0
	%r9 = bitcast %ptr* %r10 to %ptr
	%r11 = call %ptr @"gc/push-root"(%ptr %r9)
	%r12 = inttoptr %word 1 to %ptr
	%r13 = load %ptr, %ptr* %t1
	%r17 = bitcast %ptr %r13 to [0 x %ptr]*
	%r16 = ptrtoint %ptr %r12 to %word
	%r15 = getelementptr [0 x %ptr], [0 x %ptr]* %r17, %word 0, %word %r16
	%r14 = load %ptr, %ptr* %r15
	store %ptr %r14, %ptr* %t4
	%r19 = getelementptr %ptr, %ptr* %t4, %word 0
	%r18 = bitcast %ptr* %r19 to %ptr
	%r20 = call %ptr @"gc/push-root"(%ptr %r18)
	%r21 = load %ptr, %ptr* @"fixed-subr/let"
	%r22 = load %ptr, %ptr* %t3
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = icmp eq %word %r26, %r25
	%r23 = inttoptr i1 %r24 to %ptr
	%r28 = ptrtoint %ptr %r23 to %word
	%r27 = icmp ne %word %r28, 0
	br i1 %r27, label %L962, label %L963
L962:
	%r29 = load %ptr, %ptr* %t1
	%r30 = call %ptr @"k/cadr"(%ptr %r29)
	store %ptr %r30, %ptr* %t6
	%r31 = load %ptr, %ptr* %t2
	%r32 = inttoptr %word 0 to %ptr
	%r33 = inttoptr %word 1 to %ptr
	%r34 = inttoptr %word 2 to %ptr
	%r35 = load %ptr, %ptr* %t2
	%r39 = bitcast %ptr %r35 to [0 x %ptr]*
	%r38 = ptrtoint %ptr %r34 to %word
	%r37 = getelementptr [0 x %ptr], [0 x %ptr]* %r39, %word 0, %word %r38
	%r36 = load %ptr, %ptr* %r37
	%r43 = ptrtoint %ptr %r36 to %word
	%r42 = ptrtoint %ptr %r33 to %word
	%r41 = ashr %word %r43, %r42
	%r40 = inttoptr %word %r41 to %ptr
	%r44 = call %ptr @"new-<env>"(%ptr %r31, %ptr %r32, %ptr %r40)
	store %ptr %r44, %ptr* %t7
	%r46 = getelementptr %ptr, %ptr* %t7, %word 0
	%r45 = bitcast %ptr* %r46 to %ptr
	%r47 = call %ptr @"gc/push-root"(%ptr %r45)
	br label %L966
L965:
	%r48 = inttoptr %word 0 to %ptr
	%r49 = load %ptr, %ptr* %t6
	%r53 = bitcast %ptr %r49 to [0 x %ptr]*
	%r52 = ptrtoint %ptr %r48 to %word
	%r51 = getelementptr [0 x %ptr], [0 x %ptr]* %r53, %word 0, %word %r52
	%r50 = load %ptr, %ptr* %r51
	store %ptr %r50, %ptr* %t8
	%r54 = inttoptr %word 1 to %ptr
	store %ptr %r54, %ptr* %t9
	%r55 = load %ptr, %ptr* %t8
	%r56 = call %ptr @"get/type"(%ptr %r55)
	%r57 = inttoptr %word 19 to %ptr
	%r61 = ptrtoint %ptr %r57 to %word
	%r60 = ptrtoint %ptr %r56 to %word
	%r59 = icmp eq %word %r61, %r60
	%r58 = inttoptr i1 %r59 to %ptr
	store %ptr %r58, %ptr* %t9
	%r62 = inttoptr %word 0 to %ptr
	%r66 = ptrtoint %ptr %r62 to %word
	%r65 = ptrtoint %ptr %r58 to %word
	%r64 = icmp eq %word %r66, %r65
	%r63 = inttoptr i1 %r64 to %ptr
	%r68 = ptrtoint %ptr %r63 to %word
	%r67 = icmp ne %word %r68, 0
	br i1 %r67, label %L968, label %L969
L969:
	%r69 = inttoptr %word 0 to %ptr
	%r70 = load %ptr, %ptr* %t8
	%r74 = bitcast %ptr %r70 to [0 x %ptr]*
	%r73 = ptrtoint %ptr %r69 to %word
	%r72 = getelementptr [0 x %ptr], [0 x %ptr]* %r74, %word 0, %word %r73
	%r71 = load %ptr, %ptr* %r72
	store %ptr %r71, %ptr* %t8
	store %ptr %r71, %ptr* %t9
	%r75 = inttoptr %word 0 to %ptr
	%r79 = ptrtoint %ptr %r75 to %word
	%r78 = ptrtoint %ptr %r71 to %word
	%r77 = icmp eq %word %r79, %r78
	%r76 = inttoptr i1 %r77 to %ptr
	%r81 = ptrtoint %ptr %r76 to %word
	%r80 = icmp ne %word %r81, 0
	br i1 %r80, label %L968, label %L970
L970:
	br label %L968
L968:
	%r82 = load %ptr, %ptr* %t9
	%r83 = load %ptr, %ptr* %t7
	%r84 = load %ptr, %ptr* %t8
	%r85 = inttoptr %word 0 to %ptr
	%r86 = call %ptr @"k/env/define"(%ptr %r83, %ptr %r84, %ptr %r85)
	%r87 = inttoptr %word 1 to %ptr
	%r88 = load %ptr, %ptr* %t6
	%r92 = bitcast %ptr %r88 to [0 x %ptr]*
	%r91 = ptrtoint %ptr %r87 to %word
	%r90 = getelementptr [0 x %ptr], [0 x %ptr]* %r92, %word 0, %word %r91
	%r89 = load %ptr, %ptr* %r90
	store %ptr %r89, %ptr* %t6
	br label %L966
L966:
	%r93 = load %ptr, %ptr* %t6
	%r94 = call %ptr @"get/type"(%ptr %r93)
	%r95 = inttoptr %word 19 to %ptr
	%r99 = ptrtoint %ptr %r95 to %word
	%r98 = ptrtoint %ptr %r94 to %word
	%r97 = icmp eq %word %r99, %r98
	%r96 = inttoptr i1 %r97 to %ptr
	%r101 = ptrtoint %ptr %r96 to %word
	%r100 = icmp ne %word %r101, 0
	br i1 %r100, label %L965, label %L967
L967:
	%r102 = load %ptr, %ptr* %t4
	%r103 = load %ptr, %ptr* %t7
	%r104 = call %ptr @"k/encode/list"(%ptr %r102, %ptr %r103)
	store %ptr %r104, %ptr* %t4
	%r105 = load %ptr, %ptr* %t7
	%r106 = load %ptr, %ptr* %t4
	%r107 = call %ptr @"new-<pair>"(%ptr %r105, %ptr %r106)
	store %ptr %r107, %ptr* %t4
	store %ptr %r107, %ptr* %t8
	%r109 = getelementptr %ptr, %ptr* %t7, %word 0
	%r108 = bitcast %ptr* %r109 to %ptr
	%r110 = call %ptr @"gc/pop-root"(%ptr %r108)
	%r111 = load %ptr, %ptr* %t8
	store %ptr %r111, %ptr* %t5
	br label %L964
L963:
	%r112 = load %ptr, %ptr* @"fixed-subr/lambda"
	%r113 = load %ptr, %ptr* %t3
	%r117 = ptrtoint %ptr %r113 to %word
	%r116 = ptrtoint %ptr %r112 to %word
	%r115 = icmp eq %word %r117, %r116
	%r114 = inttoptr i1 %r115 to %ptr
	%r119 = ptrtoint %ptr %r114 to %word
	%r118 = icmp ne %word %r119, 0
	br i1 %r118, label %L971, label %L972
L971:
	%r120 = load %ptr, %ptr* %t1
	%r121 = call %ptr @"k/cadr"(%ptr %r120)
	store %ptr %r121, %ptr* %t7
	%r122 = load %ptr, %ptr* %t2
	%r123 = inttoptr %word 1 to %ptr
	%r124 = inttoptr %word 0 to %ptr
	%r125 = call %ptr @"new-<env>"(%ptr %r122, %ptr %r123, %ptr %r124)
	store %ptr %r125, %ptr* %t8
	%r127 = getelementptr %ptr, %ptr* %t8, %word 0
	%r126 = bitcast %ptr* %r127 to %ptr
	%r128 = call %ptr @"gc/push-root"(%ptr %r126)
	br label %L975
L974:
	%r129 = load %ptr, %ptr* %t8
	%r130 = inttoptr %word 0 to %ptr
	%r131 = load %ptr, %ptr* %t7
	%r135 = bitcast %ptr %r131 to [0 x %ptr]*
	%r134 = ptrtoint %ptr %r130 to %word
	%r133 = getelementptr [0 x %ptr], [0 x %ptr]* %r135, %word 0, %word %r134
	%r132 = load %ptr, %ptr* %r133
	%r136 = inttoptr %word 0 to %ptr
	%r137 = call %ptr @"k/env/define"(%ptr %r129, %ptr %r132, %ptr %r136)
	%r138 = inttoptr %word 1 to %ptr
	%r139 = load %ptr, %ptr* %t7
	%r143 = bitcast %ptr %r139 to [0 x %ptr]*
	%r142 = ptrtoint %ptr %r138 to %word
	%r141 = getelementptr [0 x %ptr], [0 x %ptr]* %r143, %word 0, %word %r142
	%r140 = load %ptr, %ptr* %r141
	store %ptr %r140, %ptr* %t7
	br label %L975
L975:
	%r144 = load %ptr, %ptr* %t7
	%r145 = call %ptr @"get/type"(%ptr %r144)
	%r146 = inttoptr %word 19 to %ptr
	%r150 = ptrtoint %ptr %r146 to %word
	%r149 = ptrtoint %ptr %r145 to %word
	%r148 = icmp eq %word %r150, %r149
	%r147 = inttoptr i1 %r148 to %ptr
	%r152 = ptrtoint %ptr %r147 to %word
	%r151 = icmp ne %word %r152, 0
	br i1 %r151, label %L974, label %L976
L976:
	%r153 = inttoptr %word 1 to %ptr
	store %ptr %r153, %ptr* %t9
	%r154 = load %ptr, %ptr* %t7
	store %ptr %r154, %ptr* %t9
	%r155 = inttoptr %word 0 to %ptr
	%r159 = ptrtoint %ptr %r155 to %word
	%r158 = ptrtoint %ptr %r154 to %word
	%r157 = icmp eq %word %r159, %r158
	%r156 = inttoptr i1 %r157 to %ptr
	%r161 = ptrtoint %ptr %r156 to %word
	%r160 = icmp ne %word %r161, 0
	br i1 %r160, label %L977, label %L978
L978:
	%r162 = load %ptr, %ptr* %t8
	%r163 = load %ptr, %ptr* %t7
	%r164 = inttoptr %word 0 to %ptr
	%r165 = call %ptr @"k/env/define"(%ptr %r162, %ptr %r163, %ptr %r164)
	store %ptr %r165, %ptr* %t9
	%r166 = inttoptr %word 0 to %ptr
	%r170 = ptrtoint %ptr %r166 to %word
	%r169 = ptrtoint %ptr %r165 to %word
	%r168 = icmp eq %word %r170, %r169
	%r167 = inttoptr i1 %r168 to %ptr
	%r172 = ptrtoint %ptr %r167 to %word
	%r171 = icmp ne %word %r172, 0
	br i1 %r171, label %L977, label %L979
L979:
	br label %L977
L977:
	%r173 = load %ptr, %ptr* %t9
	%r174 = load %ptr, %ptr* %t4
	%r175 = load %ptr, %ptr* %t8
	%r176 = call %ptr @"k/encode/list"(%ptr %r174, %ptr %r175)
	store %ptr %r176, %ptr* %t4
	%r177 = load %ptr, %ptr* %t8
	%r178 = load %ptr, %ptr* %t4
	%r179 = call %ptr @"new-<pair>"(%ptr %r177, %ptr %r178)
	store %ptr %r179, %ptr* %t4
	store %ptr %r179, %ptr* %t9
	%r181 = getelementptr %ptr, %ptr* %t8, %word 0
	%r180 = bitcast %ptr* %r181 to %ptr
	%r182 = call %ptr @"gc/pop-root"(%ptr %r180)
	%r183 = load %ptr, %ptr* %t9
	store %ptr %r183, %ptr* %t6
	br label %L973
L972:
	%r184 = load %ptr, %ptr* @"fixed-subr/define"
	%r185 = load %ptr, %ptr* %t3
	%r189 = ptrtoint %ptr %r185 to %word
	%r188 = ptrtoint %ptr %r184 to %word
	%r187 = icmp eq %word %r189, %r188
	%r186 = inttoptr i1 %r187 to %ptr
	%r191 = ptrtoint %ptr %r186 to %word
	%r190 = icmp ne %word %r191, 0
	br i1 %r190, label %L980, label %L981
L980:
	%r192 = inttoptr %word 1 to %ptr
	%r193 = inttoptr %word 1 to %ptr
	%r194 = load %ptr, %ptr* @"*module*"
	%r198 = bitcast %ptr %r194 to [0 x %ptr]*
	%r197 = ptrtoint %ptr %r193 to %word
	%r196 = getelementptr [0 x %ptr], [0 x %ptr]* %r198, %word 0, %word %r197
	%r195 = load %ptr, %ptr* %r196
	%r202 = bitcast %ptr %r195 to [0 x %ptr]*
	%r201 = ptrtoint %ptr %r192 to %word
	%r200 = getelementptr [0 x %ptr], [0 x %ptr]* %r202, %word 0, %word %r201
	%r199 = load %ptr, %ptr* %r200
	%r203 = load %ptr, %ptr* %t4
	%r204 = call %ptr @"k/car"(%ptr %r203)
	%r205 = call %ptr @"k/env/ensure-variable"(%ptr %r199, %ptr %r204)
	store %ptr %r205, %ptr* %t8
	%r206 = load %ptr, %ptr* %t4
	%r207 = call %ptr @"k/cdr"(%ptr %r206)
	%r208 = load %ptr, %ptr* %t2
	%r209 = call %ptr @"k/encode/list"(%ptr %r207, %ptr %r208)
	store %ptr %r209, %ptr* %t4
	%r210 = load %ptr, %ptr* %t8
	%r211 = load %ptr, %ptr* %t4
	%r212 = call %ptr @"new-<pair>"(%ptr %r210, %ptr %r211)
	store %ptr %r212, %ptr* %t4
	store %ptr %r212, %ptr* %t7
	br label %L982
L981:
	%r213 = load %ptr, %ptr* @"fixed-subr/set"
	%r214 = load %ptr, %ptr* %t3
	%r218 = ptrtoint %ptr %r214 to %word
	%r217 = ptrtoint %ptr %r213 to %word
	%r216 = icmp eq %word %r218, %r217
	%r215 = inttoptr i1 %r216 to %ptr
	%r220 = ptrtoint %ptr %r215 to %word
	%r219 = icmp ne %word %r220, 0
	br i1 %r219, label %L983, label %L984
L983:
	%r221 = load %ptr, %ptr* %t2
	%r222 = load %ptr, %ptr* %t4
	%r223 = call %ptr @"k/car"(%ptr %r222)
	%r224 = call %ptr @"k/env/lookup-variable"(%ptr %r221, %ptr %r223)
	store %ptr %r224, %ptr* %t9
	%r225 = inttoptr %word 0 to %ptr
	store %ptr %r225, %ptr* %t10
	%r226 = load %ptr, %ptr* %t9
	store %ptr %r226, %ptr* %t10
	%r227 = inttoptr %word 0 to %ptr
	%r231 = ptrtoint %ptr %r227 to %word
	%r230 = ptrtoint %ptr %r226 to %word
	%r229 = icmp eq %word %r231, %r230
	%r228 = inttoptr i1 %r229 to %ptr
	%r233 = ptrtoint %ptr %r228 to %word
	%r232 = icmp ne %word %r233, 0
	br i1 %r232, label %L987, label %L986
L987:
	%r234 = getelementptr [28 x i8], [28 x i8]* @str988, %word 0, %word 0
	%r236 = inttoptr %word 0 to %ptr
	%r237 = load %ptr, %ptr* %t4
	%r238 = call %ptr @"k/car"(%ptr %r237)
	%r242 = bitcast %ptr %r238 to [0 x %ptr]*
	%r241 = ptrtoint %ptr %r236 to %word
	%r240 = getelementptr [0 x %ptr], [0 x %ptr]* %r242, %word 0, %word %r241
	%r239 = load %ptr, %ptr* %r240
	%r243 = call %ptr @fatal1(%ptr %r234, %ptr %r239)
	store %ptr %r243, %ptr* %t10
	%r244 = inttoptr %word 0 to %ptr
	%r248 = ptrtoint %ptr %r244 to %word
	%r247 = ptrtoint %ptr %r243 to %word
	%r246 = icmp eq %word %r248, %r247
	%r245 = inttoptr i1 %r246 to %ptr
	%r250 = ptrtoint %ptr %r245 to %word
	%r249 = icmp ne %word %r250, 0
	br i1 %r249, label %L989, label %L986
L989:
	br label %L986
L986:
	%r251 = load %ptr, %ptr* %t10
	%r252 = inttoptr %word 1 to %ptr
	store %ptr %r252, %ptr* %t10
	%r253 = inttoptr %word 0 to %ptr
	store %ptr %r253, %ptr* %t11
	%r254 = load %ptr, %ptr* %t4
	%r255 = call %ptr @"k/car"(%ptr %r254)
	%r259 = ptrtoint %ptr %r255 to %word
	%r258 = icmp eq %word %r259, 0
	%r257 = zext i1 %r258 to %word
	%r256 = inttoptr %word %r257 to %ptr
	store %ptr %r256, %ptr* %t11
	%r260 = inttoptr %word 0 to %ptr
	%r264 = ptrtoint %ptr %r260 to %word
	%r263 = ptrtoint %ptr %r256 to %word
	%r262 = icmp eq %word %r264, %r263
	%r261 = inttoptr i1 %r262 to %ptr
	%r266 = ptrtoint %ptr %r261 to %word
	%r265 = icmp ne %word %r266, 0
	br i1 %r265, label %L992, label %L991
L992:
	%r267 = load %ptr, %ptr* %t4
	%r268 = call %ptr @"k/cddr"(%ptr %r267)
	store %ptr %r268, %ptr* %t11
	%r269 = inttoptr %word 0 to %ptr
	%r273 = ptrtoint %ptr %r269 to %word
	%r272 = ptrtoint %ptr %r268 to %word
	%r271 = icmp eq %word %r273, %r272
	%r270 = inttoptr i1 %r271 to %ptr
	%r275 = ptrtoint %ptr %r270 to %word
	%r274 = icmp ne %word %r275, 0
	br i1 %r274, label %L993, label %L991
L993:
	br label %L991
L991:
	%r276 = load %ptr, %ptr* %t11
	store %ptr %r276, %ptr* %t10
	%r277 = inttoptr %word 0 to %ptr
	%r281 = ptrtoint %ptr %r277 to %word
	%r280 = ptrtoint %ptr %r276 to %word
	%r279 = icmp eq %word %r281, %r280
	%r278 = inttoptr i1 %r279 to %ptr
	%r283 = ptrtoint %ptr %r278 to %word
	%r282 = icmp ne %word %r283, 0
	br i1 %r282, label %L990, label %L994
L994:
	%r284 = getelementptr [9 x i8], [9 x i8]* @str995, %word 0, %word 0
	%r286 = call i32 (%ptr, ...) @printf(%ptr %r284)
	%r287 = sext i32 %r286 to %word
	%r288 = inttoptr %word %r287 to %ptr
	%r289 = getelementptr [34 x i8], [34 x i8]* @str996, %word 0, %word 0
	%r291 = call i32 (%ptr, ...) @printf(%ptr %r289)
	%r292 = sext i32 %r291 to %word
	%r293 = inttoptr %word %r292 to %ptr
	%r294 = load %ptr, %ptr* %t1
	%r295 = call %ptr @"k/print"(%ptr %r294)
	%r296 = getelementptr [2 x i8], [2 x i8]* @str997, %word 0, %word 0
	%r298 = call i32 (%ptr, ...) @printf(%ptr %r296)
	%r299 = sext i32 %r298 to %word
	%r300 = inttoptr %word %r299 to %ptr
	%r301 = call %ptr @die()
	store %ptr %r301, %ptr* %t10
	%r302 = inttoptr %word 0 to %ptr
	%r306 = ptrtoint %ptr %r302 to %word
	%r305 = ptrtoint %ptr %r301 to %word
	%r304 = icmp eq %word %r306, %r305
	%r303 = inttoptr i1 %r304 to %ptr
	%r308 = ptrtoint %ptr %r303 to %word
	%r307 = icmp ne %word %r308, 0
	br i1 %r307, label %L990, label %L998
L998:
	br label %L990
L990:
	%r309 = load %ptr, %ptr* %t10
	%r310 = load %ptr, %ptr* %t4
	%r311 = call %ptr @"k/cdr"(%ptr %r310)
	%r312 = load %ptr, %ptr* %t2
	%r313 = call %ptr @"k/encode/list"(%ptr %r311, %ptr %r312)
	store %ptr %r313, %ptr* %t4
	%r314 = load %ptr, %ptr* %t9
	%r315 = load %ptr, %ptr* %t4
	%r316 = call %ptr @"new-<pair>"(%ptr %r314, %ptr %r315)
	store %ptr %r316, %ptr* %t4
	store %ptr %r316, %ptr* %t8
	br label %L985
L984:
	%r317 = load %ptr, %ptr* @"fixed-subr/quote"
	%r318 = load %ptr, %ptr* %t3
	%r322 = ptrtoint %ptr %r318 to %word
	%r321 = ptrtoint %ptr %r317 to %word
	%r320 = icmp ne %word %r322, %r321
	%r319 = inttoptr i1 %r320 to %ptr
	%r324 = ptrtoint %ptr %r319 to %word
	%r323 = icmp ne %word %r324, 0
	br i1 %r323, label %L999, label %L1000
L999:
	%r325 = load %ptr, %ptr* %t4
	%r326 = load %ptr, %ptr* %t2
	%r327 = call %ptr @"k/encode/list"(%ptr %r325, %ptr %r326)
	store %ptr %r327, %ptr* %t4
	store %ptr %r327, %ptr* %t9
	br label %L1001
L1000:
	%r328 = inttoptr %word 0 to %ptr
	store %ptr %r328, %ptr* %t9
	br label %L1001
L1001:
	%r329 = load %ptr, %ptr* %t9
	store %ptr %r329, %ptr* %t8
	br label %L985
L985:
	%r330 = load %ptr, %ptr* %t8
	store %ptr %r330, %ptr* %t7
	br label %L982
L982:
	%r331 = load %ptr, %ptr* %t7
	store %ptr %r331, %ptr* %t6
	br label %L973
L973:
	%r332 = load %ptr, %ptr* %t6
	store %ptr %r332, %ptr* %t5
	br label %L964
L964:
	%r333 = load %ptr, %ptr* %t5
	%r334 = load %ptr, %ptr* %t3
	%r335 = load %ptr, %ptr* %t4
	%r336 = call %ptr @"new-<pair>"(%ptr %r334, %ptr %r335)
	store %ptr %r336, %ptr* %t5
	%r338 = getelementptr %ptr, %ptr* %t4, %word 0
	%r337 = bitcast %ptr* %r338 to %ptr
	%r339 = call %ptr @"gc/pop-root"(%ptr %r337)
	%r340 = load %ptr, %ptr* %t5
	store %ptr %r340, %ptr* %t4
	%r342 = getelementptr %ptr, %ptr* %t3, %word 0
	%r341 = bitcast %ptr* %r342 to %ptr
	%r343 = call %ptr @"gc/pop-root"(%ptr %r341)
	%r344 = load %ptr, %ptr* %t4
	ret %ptr %r344
}
@str1004 = private unnamed_addr constant [35 x i8] c"undefined variable in encode: '%s'\00"
define %ptr @"k/encode/symbol"(%ptr %exp, %ptr %env) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	store %ptr %exp, %ptr* %t1
	store %ptr %env, %ptr* %t2
	%r1 = load %ptr, %ptr* %t2
	%r2 = load %ptr, %ptr* %t1
	%r3 = call %ptr @"k/env/lookup-variable"(%ptr %r1, %ptr %r2)
	store %ptr %r3, %ptr* %t3
	%r4 = inttoptr %word 0 to %ptr
	store %ptr %r4, %ptr* %t4
	%r5 = load %ptr, %ptr* %t3
	store %ptr %r5, %ptr* %t4
	%r6 = inttoptr %word 0 to %ptr
	%r10 = ptrtoint %ptr %r6 to %word
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = icmp eq %word %r10, %r9
	%r7 = inttoptr i1 %r8 to %ptr
	%r12 = ptrtoint %ptr %r7 to %word
	%r11 = icmp ne %word %r12, 0
	br i1 %r11, label %L1003, label %L1002
L1003:
	%r13 = getelementptr [35 x i8], [35 x i8]* @str1004, %word 0, %word 0
	%r15 = inttoptr %word 0 to %ptr
	%r16 = load %ptr, %ptr* %t1
	%r20 = bitcast %ptr %r16 to [0 x %ptr]*
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = getelementptr [0 x %ptr], [0 x %ptr]* %r20, %word 0, %word %r19
	%r17 = load %ptr, %ptr* %r18
	%r21 = call %ptr @fatal1(%ptr %r13, %ptr %r17)
	store %ptr %r21, %ptr* %t4
	%r22 = inttoptr %word 0 to %ptr
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = icmp eq %word %r26, %r25
	%r23 = inttoptr i1 %r24 to %ptr
	%r28 = ptrtoint %ptr %r23 to %word
	%r27 = icmp ne %word %r28, 0
	br i1 %r27, label %L1005, label %L1002
L1005:
	br label %L1002
L1002:
	%r29 = load %ptr, %ptr* %t4
	%r30 = load %ptr, %ptr* %t3
	store %ptr %r30, %ptr* %t1
	%r31 = load %ptr, %ptr* %t1
	%r32 = call %ptr @"global-variable?"(%ptr %r31)
	%r34 = ptrtoint %ptr %r32 to %word
	%r33 = icmp ne %word %r34, 0
	br i1 %r33, label %L1006, label %L1007
L1006:
	%r35 = inttoptr %word 1 to %ptr
	%r36 = load %ptr, %ptr* %t1
	%r40 = bitcast %ptr %r36 to [0 x %ptr]*
	%r39 = ptrtoint %ptr %r35 to %word
	%r38 = getelementptr [0 x %ptr], [0 x %ptr]* %r40, %word 0, %word %r39
	%r37 = load %ptr, %ptr* %r38
	store %ptr %r37, %ptr* %t5
	%r41 = inttoptr %word 0 to %ptr
	store %ptr %r41, %ptr* %t7
	%r42 = load %ptr, %ptr* %t5
	%r43 = call %ptr @"get/type"(%ptr %r42)
	%r44 = inttoptr %word 10 to %ptr
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = ptrtoint %ptr %r43 to %word
	%r46 = icmp eq %word %r48, %r47
	%r45 = inttoptr i1 %r46 to %ptr
	store %ptr %r45, %ptr* %t7
	%r49 = inttoptr %word 0 to %ptr
	%r53 = ptrtoint %ptr %r49 to %word
	%r52 = ptrtoint %ptr %r45 to %word
	%r51 = icmp eq %word %r53, %r52
	%r50 = inttoptr i1 %r51 to %ptr
	%r55 = ptrtoint %ptr %r50 to %word
	%r54 = icmp ne %word %r55, 0
	br i1 %r54, label %L1013, label %L1012
L1013:
	%r56 = load %ptr, %ptr* %t5
	%r57 = call %ptr @"get/type"(%ptr %r56)
	%r58 = inttoptr %word 11 to %ptr
	%r62 = ptrtoint %ptr %r58 to %word
	%r61 = ptrtoint %ptr %r57 to %word
	%r60 = icmp eq %word %r62, %r61
	%r59 = inttoptr i1 %r60 to %ptr
	store %ptr %r59, %ptr* %t7
	%r63 = inttoptr %word 0 to %ptr
	%r67 = ptrtoint %ptr %r63 to %word
	%r66 = ptrtoint %ptr %r59 to %word
	%r65 = icmp eq %word %r67, %r66
	%r64 = inttoptr i1 %r65 to %ptr
	%r69 = ptrtoint %ptr %r64 to %word
	%r68 = icmp ne %word %r69, 0
	br i1 %r68, label %L1014, label %L1012
L1014:
	br label %L1012
L1012:
	%r70 = load %ptr, %ptr* %t7
	%r72 = ptrtoint %ptr %r70 to %word
	%r71 = icmp ne %word %r72, 0
	br i1 %r71, label %L1009, label %L1010
L1009:
	%r73 = load %ptr, %ptr* %t5
	store %ptr %r73, %ptr* %t1
	store %ptr %r73, %ptr* %t6
	br label %L1011
L1010:
	%r74 = inttoptr %word 0 to %ptr
	store %ptr %r74, %ptr* %t6
	br label %L1011
L1011:
	%r75 = load %ptr, %ptr* %t6
	store %ptr %r75, %ptr* %t4
	br label %L1008
L1007:
	%r76 = inttoptr %word 2 to %ptr
	%r77 = load %ptr, %ptr* %t1
	%r81 = bitcast %ptr %r77 to [0 x %ptr]*
	%r80 = ptrtoint %ptr %r76 to %word
	%r79 = getelementptr [0 x %ptr], [0 x %ptr]* %r81, %word 0, %word %r80
	%r78 = load %ptr, %ptr* %r79
	store %ptr %r78, %ptr* %t5
	%r82 = inttoptr %word 1 to %ptr
	%r83 = inttoptr %word 1 to %ptr
	%r84 = load %ptr, %ptr* %t2
	%r88 = bitcast %ptr %r84 to [0 x %ptr]*
	%r87 = ptrtoint %ptr %r83 to %word
	%r86 = getelementptr [0 x %ptr], [0 x %ptr]* %r88, %word 0, %word %r87
	%r85 = load %ptr, %ptr* %r86
	%r92 = ptrtoint %ptr %r85 to %word
	%r91 = ptrtoint %ptr %r82 to %word
	%r90 = ashr %word %r92, %r91
	%r89 = inttoptr %word %r90 to %ptr
	%r93 = inttoptr %word 1 to %ptr
	%r94 = inttoptr %word 1 to %ptr
	%r95 = load %ptr, %ptr* %t5
	%r99 = bitcast %ptr %r95 to [0 x %ptr]*
	%r98 = ptrtoint %ptr %r94 to %word
	%r97 = getelementptr [0 x %ptr], [0 x %ptr]* %r99, %word 0, %word %r98
	%r96 = load %ptr, %ptr* %r97
	%r103 = ptrtoint %ptr %r96 to %word
	%r102 = ptrtoint %ptr %r93 to %word
	%r101 = ashr %word %r103, %r102
	%r100 = inttoptr %word %r101 to %ptr
	%r107 = ptrtoint %ptr %r100 to %word
	%r106 = ptrtoint %ptr %r89 to %word
	%r105 = icmp eq %word %r107, %r106
	%r104 = inttoptr i1 %r105 to %ptr
	%r109 = ptrtoint %ptr %r104 to %word
	%r108 = icmp ne %word %r109, 0
	br i1 %r108, label %L1015, label %L1016
L1015:
	%r110 = inttoptr %word 0 to %ptr
	store %ptr %r110, %ptr* %t6
	br label %L1017
L1016:
	%r111 = load %ptr, %ptr* @"symbol/true"
	%r112 = inttoptr %word 4 to %ptr
	%r113 = load %ptr, %ptr* %t5
	%r117 = bitcast %ptr %r113 to [0 x %ptr]*
	%r116 = ptrtoint %ptr %r112 to %word
	%r115 = getelementptr [0 x %ptr], [0 x %ptr]* %r117, %word 0, %word %r116
	store %ptr %r111, %ptr* %r115
	%r114 = bitcast %ptr %r111 to %ptr
	store %ptr %r114, %ptr* %t6
	br label %L1017
L1017:
	%r118 = load %ptr, %ptr* %t6
	store %ptr %r118, %ptr* %t4
	br label %L1008
L1008:
	%r119 = load %ptr, %ptr* %t4
	%r120 = load %ptr, %ptr* %t1
	ret %ptr %r120
}
define %ptr @"k/encode/other"(%ptr %exp, %ptr %env) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	store %ptr %exp, %ptr* %t1
	store %ptr %env, %ptr* %t2
	%r1 = inttoptr %word 1 to %ptr
	%r2 = load %ptr, %ptr* @"var/*encoders*"
	%r6 = bitcast %ptr %r2 to [0 x %ptr]*
	%r5 = ptrtoint %ptr %r1 to %word
	%r4 = getelementptr [0 x %ptr], [0 x %ptr]* %r6, %word 0, %word %r5
	%r3 = load %ptr, %ptr* %r4
	%r7 = load %ptr, %ptr* %t1
	%r8 = call %ptr @"get/type"(%ptr %r7)
	%r9 = call %ptr @"k/array-at"(%ptr %r3, %ptr %r8)
	store %ptr %r9, %ptr* %t3
	%r10 = inttoptr %word 0 to %ptr
	%r11 = load %ptr, %ptr* %t3
	%r13 = ptrtoint %ptr %r11 to %word
	%r12 = icmp ne %word %r13, 0
	br i1 %r12, label %L1018, label %L1019
L1018:
	%r14 = load %ptr, %ptr* %t2
	%r15 = inttoptr %word 0 to %ptr
	%r16 = call %ptr @"new-<pair>"(%ptr %r14, %ptr %r15)
	store %ptr %r16, %ptr* %t5
	%r18 = getelementptr %ptr, %ptr* %t5, %word 0
	%r17 = bitcast %ptr* %r18 to %ptr
	%r19 = call %ptr @"gc/push-root"(%ptr %r17)
	%r20 = load %ptr, %ptr* %t1
	%r21 = load %ptr, %ptr* %t5
	%r22 = call %ptr @"new-<pair>"(%ptr %r20, %ptr %r21)
	store %ptr %r22, %ptr* %t5
	%r23 = inttoptr %word 0 to %ptr
	%r24 = load %ptr, %ptr* %t3
	%r25 = load %ptr, %ptr* %t5
	%r26 = inttoptr %word 0 to %ptr
	%r27 = call %ptr @"k/apply"(%ptr %r24, %ptr %r25, %ptr %r26)
	store %ptr %r27, %ptr* %t1
	store %ptr %r27, %ptr* %t6
	%r29 = getelementptr %ptr, %ptr* %t5, %word 0
	%r28 = bitcast %ptr* %r29 to %ptr
	%r30 = call %ptr @"gc/pop-root"(%ptr %r28)
	%r31 = load %ptr, %ptr* %t6
	store %ptr %r31, %ptr* %t4
	br label %L1020
L1019:
	%r32 = inttoptr %word 0 to %ptr
	store %ptr %r32, %ptr* %t4
	br label %L1020
L1020:
	%r33 = load %ptr, %ptr* %t4
	%r34 = load %ptr, %ptr* %t1
	ret %ptr %r34
}
define %ptr @"k/eval/list"(%ptr %obj, %ptr %ctx) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	store %ptr %obj, %ptr* %t1
	store %ptr %ctx, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"get/type"(%ptr %r1)
	%r3 = inttoptr %word 19 to %ptr
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = icmp eq %word %r7, %r6
	%r4 = inttoptr i1 %r5 to %ptr
	%r9 = ptrtoint %ptr %r4 to %word
	%r8 = icmp ne %word %r9, 0
	br i1 %r8, label %L1021, label %L1022
L1021:
	%r10 = inttoptr %word 0 to %ptr
	%r11 = load %ptr, %ptr* %t1
	%r15 = bitcast %ptr %r11 to [0 x %ptr]*
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = getelementptr [0 x %ptr], [0 x %ptr]* %r15, %word 0, %word %r14
	%r12 = load %ptr, %ptr* %r13
	%r16 = load %ptr, %ptr* %t2
	%r17 = call %ptr @"k/eval"(%ptr %r12, %ptr %r16)
	store %ptr %r17, %ptr* %t4
	%r19 = getelementptr %ptr, %ptr* %t4, %word 0
	%r18 = bitcast %ptr* %r19 to %ptr
	%r20 = call %ptr @"gc/push-root"(%ptr %r18)
	%r21 = inttoptr %word 1 to %ptr
	%r22 = load %ptr, %ptr* %t1
	%r26 = bitcast %ptr %r22 to [0 x %ptr]*
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = getelementptr [0 x %ptr], [0 x %ptr]* %r26, %word 0, %word %r25
	%r23 = load %ptr, %ptr* %r24
	%r27 = load %ptr, %ptr* %t2
	%r28 = call %ptr @"k/eval/list"(%ptr %r23, %ptr %r27)
	store %ptr %r28, %ptr* %t5
	%r30 = getelementptr %ptr, %ptr* %t5, %word 0
	%r29 = bitcast %ptr* %r30 to %ptr
	%r31 = call %ptr @"gc/push-root"(%ptr %r29)
	%r32 = load %ptr, %ptr* %t4
	%r33 = load %ptr, %ptr* %t5
	%r34 = call %ptr @"new-<pair>"(%ptr %r32, %ptr %r33)
	store %ptr %r34, %ptr* %t6
	%r36 = getelementptr %ptr, %ptr* %t5, %word 0
	%r35 = bitcast %ptr* %r36 to %ptr
	%r37 = call %ptr @"gc/pop-root"(%ptr %r35)
	%r38 = load %ptr, %ptr* %t6
	store %ptr %r38, %ptr* %t5
	%r40 = getelementptr %ptr, %ptr* %t4, %word 0
	%r39 = bitcast %ptr* %r40 to %ptr
	%r41 = call %ptr @"gc/pop-root"(%ptr %r39)
	%r42 = load %ptr, %ptr* %t5
	store %ptr %r42, %ptr* %t3
	br label %L1023
L1022:
	%r43 = load %ptr, %ptr* %t1
	store %ptr %r43, %ptr* %t3
	br label %L1023
L1023:
	%r44 = load %ptr, %ptr* %t3
	ret %ptr %r44
}
@str1027 = private unnamed_addr constant [53 x i8] c"infinite recursion guard triggered at call depth %ld\00"
define %ptr @"k/eval/with-backtrace"(%ptr %type, %ptr %exp, %ptr %ctx) {
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t9 = alloca %ptr
	store %ptr %type, %ptr* %t1
	store %ptr %exp, %ptr* %t2
	store %ptr %ctx, %ptr* %t3
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = inttoptr %word 0 to %ptr
	%r4 = call %ptr @"%new-call-frame"(%ptr %r1, %ptr %r2, %ptr %r3)
	store %ptr %r4, %ptr* %t4
	%r5 = inttoptr %word 10000 to %ptr
	%r6 = inttoptr %word 1 to %ptr
	%r7 = load %ptr, %ptr* @"*call-stack-index*"
	%r11 = ptrtoint %ptr %r7 to %word
	%r10 = ptrtoint %ptr %r6 to %word
	%r9 = add %word %r11, %r10
	%r8 = inttoptr %word %r9 to %ptr
	store %ptr %r8, %ptr* @"*call-stack-index*"
	%r15 = ptrtoint %ptr %r8 to %word
	%r14 = ptrtoint %ptr %r5 to %word
	%r13 = icmp sgt %word %r15, %r14
	%r12 = inttoptr i1 %r13 to %ptr
	%r17 = ptrtoint %ptr %r12 to %word
	%r16 = icmp ne %word %r17, 0
	br i1 %r16, label %L1024, label %L1025
L1024:
	%r18 = getelementptr [53 x i8], [53 x i8]* @str1027, %word 0, %word 0
	%r20 = load %ptr, %ptr* @"*call-stack-index*"
	%r21 = call %ptr @fatal1(%ptr %r18, %ptr %r20)
	store %ptr %r21, %ptr* %t5
	br label %L1026
L1025:
	%r22 = inttoptr %word 0 to %ptr
	store %ptr %r22, %ptr* %t5
	br label %L1026
L1026:
	%r23 = load %ptr, %ptr* %t5
	%r24 = inttoptr %word 19 to %ptr
	%r25 = load %ptr, %ptr* %t1
	%r29 = ptrtoint %ptr %r25 to %word
	%r28 = ptrtoint %ptr %r24 to %word
	%r27 = icmp eq %word %r29, %r28
	%r26 = inttoptr i1 %r27 to %ptr
	%r31 = ptrtoint %ptr %r26 to %word
	%r30 = icmp ne %word %r31, 0
	br i1 %r30, label %L1028, label %L1029
L1028:
	%r32 = inttoptr %word 0 to %ptr
	%r33 = load %ptr, %ptr* %t2
	%r37 = bitcast %ptr %r33 to [0 x %ptr]*
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = getelementptr [0 x %ptr], [0 x %ptr]* %r37, %word 0, %word %r36
	%r34 = load %ptr, %ptr* %r35
	%r38 = inttoptr %word 0 to %ptr
	%r39 = load %ptr, %ptr* %t4
	%r43 = bitcast %ptr %r39 to [0 x %ptr]*
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = getelementptr [0 x %ptr], [0 x %ptr]* %r43, %word 0, %word %r42
	store %ptr %r34, %ptr* %r41
	%r40 = bitcast %ptr %r34 to %ptr
	%r44 = inttoptr %word 1 to %ptr
	%r45 = load %ptr, %ptr* %t2
	%r49 = bitcast %ptr %r45 to [0 x %ptr]*
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = getelementptr [0 x %ptr], [0 x %ptr]* %r49, %word 0, %word %r48
	%r46 = load %ptr, %ptr* %r47
	%r50 = inttoptr %word 2 to %ptr
	%r51 = load %ptr, %ptr* %t4
	%r55 = bitcast %ptr %r51 to [0 x %ptr]*
	%r54 = ptrtoint %ptr %r50 to %word
	%r53 = getelementptr [0 x %ptr], [0 x %ptr]* %r55, %word 0, %word %r54
	store %ptr %r46, %ptr* %r53
	%r52 = bitcast %ptr %r46 to %ptr
	%r56 = inttoptr %word 0 to %ptr
	%r57 = load %ptr, %ptr* %t2
	%r61 = bitcast %ptr %r57 to [0 x %ptr]*
	%r60 = ptrtoint %ptr %r56 to %word
	%r59 = getelementptr [0 x %ptr], [0 x %ptr]* %r61, %word 0, %word %r60
	%r58 = load %ptr, %ptr* %r59
	%r62 = load %ptr, %ptr* %t3
	%r63 = call %ptr @"k/eval"(%ptr %r58, %ptr %r62)
	store %ptr %r63, %ptr* %t6
	%r65 = getelementptr %ptr, %ptr* %t6, %word 0
	%r64 = bitcast %ptr* %r65 to %ptr
	%r66 = call %ptr @"gc/push-root"(%ptr %r64)
	%r67 = inttoptr %word 0 to %ptr
	%r68 = load %ptr, %ptr* %t6
	%r69 = inttoptr %word 1 to %ptr
	%r70 = load %ptr, %ptr* %t4
	%r74 = bitcast %ptr %r70 to [0 x %ptr]*
	%r73 = ptrtoint %ptr %r69 to %word
	%r72 = getelementptr [0 x %ptr], [0 x %ptr]* %r74, %word 0, %word %r73
	store %ptr %r68, %ptr* %r72
	%r71 = bitcast %ptr %r68 to %ptr
	%r75 = load %ptr, %ptr* %t6
	%r76 = call %ptr @"get/type"(%ptr %r75)
	%r77 = inttoptr %word 11 to %ptr
	%r81 = ptrtoint %ptr %r77 to %word
	%r80 = ptrtoint %ptr %r76 to %word
	%r79 = icmp eq %word %r81, %r80
	%r78 = inttoptr i1 %r79 to %ptr
	%r83 = ptrtoint %ptr %r78 to %word
	%r82 = icmp ne %word %r83, 0
	br i1 %r82, label %L1031, label %L1032
L1031:
	%r84 = inttoptr %word 0 to %ptr
	%r85 = load %ptr, %ptr* %t6
	%r89 = bitcast %ptr %r85 to [0 x %ptr]*
	%r88 = ptrtoint %ptr %r84 to %word
	%r87 = getelementptr [0 x %ptr], [0 x %ptr]* %r89, %word 0, %word %r88
	%r86 = load %ptr, %ptr* %r87
	%r90 = inttoptr %word 1 to %ptr
	%r91 = load %ptr, %ptr* %t2
	%r95 = bitcast %ptr %r91 to [0 x %ptr]*
	%r94 = ptrtoint %ptr %r90 to %word
	%r93 = getelementptr [0 x %ptr], [0 x %ptr]* %r95, %word 0, %word %r94
	%r92 = load %ptr, %ptr* %r93
	%r96 = load %ptr, %ptr* %t3
	%r97 = call %ptr @"k/apply"(%ptr %r86, %ptr %r92, %ptr %r96)
	store %ptr %r97, %ptr* %t7
	br label %L1033
L1032:
	%r98 = inttoptr %word 1 to %ptr
	%r99 = load %ptr, %ptr* %t2
	%r103 = bitcast %ptr %r99 to [0 x %ptr]*
	%r102 = ptrtoint %ptr %r98 to %word
	%r101 = getelementptr [0 x %ptr], [0 x %ptr]* %r103, %word 0, %word %r102
	%r100 = load %ptr, %ptr* %r101
	%r104 = load %ptr, %ptr* %t3
	%r105 = call %ptr @"k/eval/list"(%ptr %r100, %ptr %r104)
	store %ptr %r105, %ptr* %t8
	%r107 = getelementptr %ptr, %ptr* %t8, %word 0
	%r106 = bitcast %ptr* %r107 to %ptr
	%r108 = call %ptr @"gc/push-root"(%ptr %r106)
	%r109 = load %ptr, %ptr* %t8
	%r110 = inttoptr %word 2 to %ptr
	%r111 = load %ptr, %ptr* %t4
	%r115 = bitcast %ptr %r111 to [0 x %ptr]*
	%r114 = ptrtoint %ptr %r110 to %word
	%r113 = getelementptr [0 x %ptr], [0 x %ptr]* %r115, %word 0, %word %r114
	store %ptr %r109, %ptr* %r113
	%r112 = bitcast %ptr %r109 to %ptr
	%r116 = load %ptr, %ptr* %t6
	%r117 = load %ptr, %ptr* %t8
	%r118 = load %ptr, %ptr* %t3
	%r119 = call %ptr @"k/apply"(%ptr %r116, %ptr %r117, %ptr %r118)
	store %ptr %r119, %ptr* %t9
	%r121 = getelementptr %ptr, %ptr* %t8, %word 0
	%r120 = bitcast %ptr* %r121 to %ptr
	%r122 = call %ptr @"gc/pop-root"(%ptr %r120)
	%r123 = load %ptr, %ptr* %t9
	store %ptr %r123, %ptr* %t7
	br label %L1033
L1033:
	%r124 = load %ptr, %ptr* %t7
	store %ptr %r124, %ptr* %t7
	%r126 = getelementptr %ptr, %ptr* %t6, %word 0
	%r125 = bitcast %ptr* %r126 to %ptr
	%r127 = call %ptr @"gc/pop-root"(%ptr %r125)
	%r128 = load %ptr, %ptr* %t7
	store %ptr %r128, %ptr* %t5
	br label %L1030
L1029:
	%r129 = load %ptr, %ptr* %t2
	%r130 = inttoptr %word 0 to %ptr
	%r131 = load %ptr, %ptr* %t4
	%r135 = bitcast %ptr %r131 to [0 x %ptr]*
	%r134 = ptrtoint %ptr %r130 to %word
	%r133 = getelementptr [0 x %ptr], [0 x %ptr]* %r135, %word 0, %word %r134
	store %ptr %r129, %ptr* %r133
	%r132 = bitcast %ptr %r129 to %ptr
	%r136 = inttoptr %word 1 to %ptr
	%r137 = load %ptr, %ptr* @"var/*evaluators*"
	%r141 = bitcast %ptr %r137 to [0 x %ptr]*
	%r140 = ptrtoint %ptr %r136 to %word
	%r139 = getelementptr [0 x %ptr], [0 x %ptr]* %r141, %word 0, %word %r140
	%r138 = load %ptr, %ptr* %r139
	%r142 = load %ptr, %ptr* %t1
	%r143 = call %ptr @"k/array-at"(%ptr %r138, %ptr %r142)
	store %ptr %r143, %ptr* %t6
	%r144 = load %ptr, %ptr* %t6
	%r146 = ptrtoint %ptr %r144 to %word
	%r145 = icmp ne %word %r146, 0
	br i1 %r145, label %L1034, label %L1035
L1034:
	%r147 = load %ptr, %ptr* %t2
	%r148 = inttoptr %word 0 to %ptr
	%r149 = call %ptr @"new-<pair>"(%ptr %r147, %ptr %r148)
	store %ptr %r149, %ptr* %t8
	%r151 = getelementptr %ptr, %ptr* %t8, %word 0
	%r150 = bitcast %ptr* %r151 to %ptr
	%r152 = call %ptr @"gc/push-root"(%ptr %r150)
	%r153 = load %ptr, %ptr* %t6
	%r154 = inttoptr %word 1 to %ptr
	%r155 = load %ptr, %ptr* %t4
	%r159 = bitcast %ptr %r155 to [0 x %ptr]*
	%r158 = ptrtoint %ptr %r154 to %word
	%r157 = getelementptr [0 x %ptr], [0 x %ptr]* %r159, %word 0, %word %r158
	store %ptr %r153, %ptr* %r157
	%r156 = bitcast %ptr %r153 to %ptr
	%r160 = load %ptr, %ptr* %t6
	%r161 = load %ptr, %ptr* %t8
	%r162 = load %ptr, %ptr* %t3
	%r163 = call %ptr @"k/apply"(%ptr %r160, %ptr %r161, %ptr %r162)
	store %ptr %r163, %ptr* %t9
	%r165 = getelementptr %ptr, %ptr* %t8, %word 0
	%r164 = bitcast %ptr* %r165 to %ptr
	%r166 = call %ptr @"gc/pop-root"(%ptr %r164)
	%r167 = load %ptr, %ptr* %t9
	store %ptr %r167, %ptr* %t7
	br label %L1036
L1035:
	%r168 = load %ptr, %ptr* %t2
	store %ptr %r168, %ptr* %t7
	br label %L1036
L1036:
	%r169 = load %ptr, %ptr* %t7
	store %ptr %r169, %ptr* %t5
	br label %L1030
L1030:
	%r170 = load %ptr, %ptr* %t5
	store %ptr %r170, %ptr* %t4
	%r171 = inttoptr %word 1 to %ptr
	%r172 = load %ptr, %ptr* @"*call-stack-index*"
	%r176 = ptrtoint %ptr %r172 to %word
	%r175 = ptrtoint %ptr %r171 to %word
	%r174 = sub %word %r176, %r175
	%r173 = inttoptr %word %r174 to %ptr
	store %ptr %r173, %ptr* @"*call-stack-index*"
	%r177 = load %ptr, %ptr* @"*call-stack-index*"
	%r178 = inttoptr %word 0 to %ptr
	%r182 = ptrtoint %ptr %r178 to %word
	%r181 = ptrtoint %ptr %r177 to %word
	%r180 = icmp sle %word %r182, %r181
	%r179 = inttoptr i1 %r180 to %ptr
	%r184 = ptrtoint %ptr %r179 to %word
	%r183 = icmp ne %word %r184, 0
	br i1 %r183, label %L1037, label %L1038
L1037:
	%r185 = load %ptr, %ptr* @"*call-stack*"
	%r186 = load %ptr, %ptr* @"*call-stack-index*"
	%r187 = call %ptr @"k/array-at"(%ptr %r185, %ptr %r186)
	store %ptr %r187, %ptr* %t6
	%r188 = inttoptr %word 0 to %ptr
	%r189 = inttoptr %word 0 to %ptr
	%r190 = load %ptr, %ptr* %t6
	%r194 = bitcast %ptr %r190 to [0 x %ptr]*
	%r193 = ptrtoint %ptr %r189 to %word
	%r192 = getelementptr [0 x %ptr], [0 x %ptr]* %r194, %word 0, %word %r193
	store %ptr %r188, %ptr* %r192
	%r191 = bitcast %ptr %r188 to %ptr
	%r195 = inttoptr %word 0 to %ptr
	%r196 = inttoptr %word 1 to %ptr
	%r197 = load %ptr, %ptr* %t6
	%r201 = bitcast %ptr %r197 to [0 x %ptr]*
	%r200 = ptrtoint %ptr %r196 to %word
	%r199 = getelementptr [0 x %ptr], [0 x %ptr]* %r201, %word 0, %word %r200
	store %ptr %r195, %ptr* %r199
	%r198 = bitcast %ptr %r195 to %ptr
	%r202 = inttoptr %word 0 to %ptr
	%r203 = inttoptr %word 2 to %ptr
	%r204 = load %ptr, %ptr* %t6
	%r208 = bitcast %ptr %r204 to [0 x %ptr]*
	%r207 = ptrtoint %ptr %r203 to %word
	%r206 = getelementptr [0 x %ptr], [0 x %ptr]* %r208, %word 0, %word %r207
	store %ptr %r202, %ptr* %r206
	%r205 = bitcast %ptr %r202 to %ptr
	store %ptr %r205, %ptr* %t5
	br label %L1039
L1038:
	%r209 = inttoptr %word 0 to %ptr
	store %ptr %r209, %ptr* %t5
	br label %L1039
L1039:
	%r210 = load %ptr, %ptr* %t5
	%r211 = inttoptr %word 0 to %ptr
	%r212 = load %ptr, %ptr* %t4
	ret %ptr %r212
}
@str1043 = private unnamed_addr constant [5 x i8] c";;; \00"
@str1047 = private unnamed_addr constant [9 x i8] c"expd--> \00"
@str1051 = private unnamed_addr constant [9 x i8] c"encd--> \00"
@str1055 = private unnamed_addr constant [8 x i8] c";;; => \00"
define %ptr @"k/expand-encode-eval"(%ptr %form, %ptr %env) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %form, %ptr* %t1
	store %ptr %env, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	store %ptr %r1, %ptr* %t3
	%r3 = getelementptr %ptr, %ptr* %t3, %word 0
	%r2 = bitcast %ptr* %r3 to %ptr
	%r4 = call %ptr @"gc/push-root"(%ptr %r2)
	%r5 = inttoptr %word 0 to %ptr
	%r6 = inttoptr %word 0 to %ptr
	%r7 = load %ptr, %ptr* %t2
	%r8 = call %ptr @"new-base-<context>"(%ptr %r5, %ptr %r6, %ptr %r7)
	store %ptr %r8, %ptr* %t4
	%r10 = getelementptr %ptr, %ptr* %t4, %word 0
	%r9 = bitcast %ptr* %r10 to %ptr
	%r11 = call %ptr @"gc/push-root"(%ptr %r9)
	%r12 = load %ptr, %ptr* @"*verbosity*"
	%r13 = inttoptr %word 2 to %ptr
	%r17 = ptrtoint %ptr %r13 to %word
	%r16 = ptrtoint %ptr %r12 to %word
	%r15 = icmp sle %word %r17, %r16
	%r14 = inttoptr i1 %r15 to %ptr
	%r19 = ptrtoint %ptr %r14 to %word
	%r18 = icmp ne %word %r19, 0
	br i1 %r18, label %L1040, label %L1041
L1040:
	%r20 = getelementptr [5 x i8], [5 x i8]* @str1043, %word 0, %word 0
	%r22 = call i32 (%ptr, ...) @printf(%ptr %r20)
	%r23 = sext i32 %r22 to %word
	%r24 = inttoptr %word %r23 to %ptr
	%r25 = load %ptr, %ptr* %t3
	%r26 = call %ptr @"k/dumpln"(%ptr %r25)
	store %ptr %r26, %ptr* %t5
	br label %L1042
L1041:
	%r27 = inttoptr %word 0 to %ptr
	store %ptr %r27, %ptr* %t5
	br label %L1042
L1042:
	%r28 = load %ptr, %ptr* %t5
	%r29 = load %ptr, %ptr* %t3
	%r30 = load %ptr, %ptr* %t2
	%r31 = call %ptr @"k/expand"(%ptr %r29, %ptr %r30)
	store %ptr %r31, %ptr* %t3
	%r32 = load %ptr, %ptr* @"*verbosity*"
	%r33 = inttoptr %word 3 to %ptr
	%r37 = ptrtoint %ptr %r33 to %word
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = icmp sle %word %r37, %r36
	%r34 = inttoptr i1 %r35 to %ptr
	%r39 = ptrtoint %ptr %r34 to %word
	%r38 = icmp ne %word %r39, 0
	br i1 %r38, label %L1044, label %L1045
L1044:
	%r40 = getelementptr [9 x i8], [9 x i8]* @str1047, %word 0, %word 0
	%r42 = call i32 (%ptr, ...) @printf(%ptr %r40)
	%r43 = sext i32 %r42 to %word
	%r44 = inttoptr %word %r43 to %ptr
	%r45 = load %ptr, %ptr* %t3
	%r46 = call %ptr @"k/dumpln"(%ptr %r45)
	store %ptr %r46, %ptr* %t5
	br label %L1046
L1045:
	%r47 = inttoptr %word 0 to %ptr
	store %ptr %r47, %ptr* %t5
	br label %L1046
L1046:
	%r48 = load %ptr, %ptr* %t5
	%r49 = load %ptr, %ptr* %t3
	%r50 = load %ptr, %ptr* %t2
	%r51 = call %ptr @"k/encode"(%ptr %r49, %ptr %r50)
	store %ptr %r51, %ptr* %t3
	%r52 = load %ptr, %ptr* @"*verbosity*"
	%r53 = inttoptr %word 3 to %ptr
	%r57 = ptrtoint %ptr %r53 to %word
	%r56 = ptrtoint %ptr %r52 to %word
	%r55 = icmp sle %word %r57, %r56
	%r54 = inttoptr i1 %r55 to %ptr
	%r59 = ptrtoint %ptr %r54 to %word
	%r58 = icmp ne %word %r59, 0
	br i1 %r58, label %L1048, label %L1049
L1048:
	%r60 = getelementptr [9 x i8], [9 x i8]* @str1051, %word 0, %word 0
	%r62 = call i32 (%ptr, ...) @printf(%ptr %r60)
	%r63 = sext i32 %r62 to %word
	%r64 = inttoptr %word %r63 to %ptr
	%r65 = load %ptr, %ptr* %t3
	%r66 = call %ptr @"k/dumpln"(%ptr %r65)
	store %ptr %r66, %ptr* %t5
	br label %L1050
L1049:
	%r67 = inttoptr %word 0 to %ptr
	store %ptr %r67, %ptr* %t5
	br label %L1050
L1050:
	%r68 = load %ptr, %ptr* %t5
	%r69 = load %ptr, %ptr* %t3
	%r70 = load %ptr, %ptr* %t4
	%r71 = call %ptr @"k/eval"(%ptr %r69, %ptr %r70)
	store %ptr %r71, %ptr* %t3
	%r72 = load %ptr, %ptr* @"*verbosity*"
	%r73 = inttoptr %word 2 to %ptr
	%r77 = ptrtoint %ptr %r73 to %word
	%r76 = ptrtoint %ptr %r72 to %word
	%r75 = icmp sle %word %r77, %r76
	%r74 = inttoptr i1 %r75 to %ptr
	%r79 = ptrtoint %ptr %r74 to %word
	%r78 = icmp ne %word %r79, 0
	br i1 %r78, label %L1052, label %L1053
L1052:
	%r80 = getelementptr [8 x i8], [8 x i8]* @str1055, %word 0, %word 0
	%r82 = call i32 (%ptr, ...) @printf(%ptr %r80)
	%r83 = sext i32 %r82 to %word
	%r84 = inttoptr %word %r83 to %ptr
	%r85 = load %ptr, %ptr* %t3
	%r86 = call %ptr @"k/dumpln"(%ptr %r85)
	store %ptr %r86, %ptr* %t5
	br label %L1054
L1053:
	%r87 = inttoptr %word 0 to %ptr
	store %ptr %r87, %ptr* %t5
	br label %L1054
L1054:
	%r88 = load %ptr, %ptr* %t5
	%r89 = load %ptr, %ptr* %t3
	store %ptr %r89, %ptr* %t5
	%r91 = getelementptr %ptr, %ptr* %t4, %word 0
	%r90 = bitcast %ptr* %r91 to %ptr
	%r92 = call %ptr @"gc/pop-root"(%ptr %r90)
	%r93 = load %ptr, %ptr* %t5
	store %ptr %r93, %ptr* %t4
	%r95 = getelementptr %ptr, %ptr* %t3, %word 0
	%r94 = bitcast %ptr* %r95 to %ptr
	%r96 = call %ptr @"gc/pop-root"(%ptr %r94)
	%r97 = load %ptr, %ptr* %t4
	ret %ptr %r97
}
@str1059 = private unnamed_addr constant [10 x i8] c"#!%*[^\0A\0D]\00"
@str1066 = private unnamed_addr constant [6 x i8] c"print\00"
@str1070 = private unnamed_addr constant [2 x i8] c".\00"
@str1073 = private unnamed_addr constant [23 x i8] c"\0Amorituri te salutant\0A\00"
define %ptr @"k/repl-stream"(%ptr %stream) {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	store %ptr %stream, %ptr* %t1
	%r1 = inttoptr %word 1 to %ptr
	%r2 = inttoptr %word 1 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = shl %word %r7, %r6
	%r4 = inttoptr %word %r5 to %ptr
	%r11 = ptrtoint %ptr %r4 to %word
	%r10 = ptrtoint %ptr %r1 to %word
	%r9 = add %word %r11, %r10
	%r8 = inttoptr %word %r9 to %ptr
	%r12 = inttoptr %word 1 to %ptr
	%r13 = load %ptr, %ptr* @"var/*input*"
	%r17 = bitcast %ptr %r13 to [0 x %ptr]*
	%r16 = ptrtoint %ptr %r12 to %word
	%r15 = getelementptr [0 x %ptr], [0 x %ptr]* %r17, %word 0, %word %r16
	store %ptr %r8, %ptr* %r15
	%r14 = bitcast %ptr %r8 to %ptr
	%r18 = load %ptr, %ptr* %t1
	%r19 = load %ptr, %ptr* @"libc/stdin"
	%r23 = ptrtoint %ptr %r19 to %word
	%r22 = ptrtoint %ptr %r18 to %word
	%r21 = icmp eq %word %r23, %r22
	%r20 = inttoptr i1 %r21 to %ptr
	%r25 = ptrtoint %ptr %r20 to %word
	%r24 = icmp ne %word %r25, 0
	br i1 %r24, label %L1056, label %L1057
L1056:
	%r26 = inttoptr %word 0 to %ptr
	store %ptr %r26, %ptr* %t2
	br label %L1058
L1057:
	%r27 = load %ptr, %ptr* %t1
	%r28 = getelementptr [10 x i8], [10 x i8]* @str1059, %word 0, %word 0
	%r30 = call i32 (%ptr, %ptr, ...) @fscanf(%ptr %r27, %ptr %r28)
	%r31 = sext i32 %r30 to %word
	%r32 = inttoptr %word %r31 to %ptr
	store %ptr %r32, %ptr* %t2
	br label %L1058
L1058:
	%r33 = load %ptr, %ptr* %t2
	%r34 = inttoptr %word 0 to %ptr
	store %ptr %r34, %ptr* %t2
	%r36 = getelementptr %ptr, %ptr* %t2, %word 0
	%r35 = bitcast %ptr* %r36 to %ptr
	%r37 = call %ptr @"gc/push-root"(%ptr %r35)
	br label %L1061
L1060:
	%r38 = inttoptr %word 1 to %ptr
	%r39 = inttoptr %word 1 to %ptr
	%r40 = load %ptr, %ptr* @"*module*"
	%r44 = bitcast %ptr %r40 to [0 x %ptr]*
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = getelementptr [0 x %ptr], [0 x %ptr]* %r44, %word 0, %word %r43
	%r41 = load %ptr, %ptr* %r42
	%r48 = bitcast %ptr %r41 to [0 x %ptr]*
	%r47 = ptrtoint %ptr %r38 to %word
	%r46 = getelementptr [0 x %ptr], [0 x %ptr]* %r48, %word 0, %word %r47
	%r45 = load %ptr, %ptr* %r46
	%r49 = inttoptr %word 1 to %ptr
	%r50 = inttoptr %word 0 to %ptr
	%r51 = call %ptr @"new-<env>"(%ptr %r45, %ptr %r49, %ptr %r50)
	store %ptr %r51, %ptr* %t3
	%r53 = getelementptr %ptr, %ptr* %t3, %word 0
	%r52 = bitcast %ptr* %r53 to %ptr
	%r54 = call %ptr @"gc/push-root"(%ptr %r52)
	%r55 = load %ptr, %ptr* %t2
	%r56 = load %ptr, %ptr* %t3
	%r57 = call %ptr @"k/expand-encode-eval"(%ptr %r55, %ptr %r56)
	store %ptr %r57, %ptr* %t2
	%r58 = load %ptr, %ptr* %t1
	%r59 = load %ptr, %ptr* @"libc/stdin"
	%r63 = ptrtoint %ptr %r59 to %word
	%r62 = ptrtoint %ptr %r58 to %word
	%r61 = icmp eq %word %r63, %r62
	%r60 = inttoptr i1 %r61 to %ptr
	%r65 = ptrtoint %ptr %r60 to %word
	%r64 = icmp ne %word %r65, 0
	br i1 %r64, label %L1063, label %L1064
L1063:
	%r66 = load %ptr, %ptr* %t2
	%r67 = inttoptr %word 0 to %ptr
	%r68 = call %ptr @"new-<pair>"(%ptr %r66, %ptr %r67)
	store %ptr %r68, %ptr* %t5
	%r70 = getelementptr %ptr, %ptr* %t5, %word 0
	%r69 = bitcast %ptr* %r70 to %ptr
	%r71 = call %ptr @"gc/push-root"(%ptr %r69)
	%r72 = load %ptr, %ptr* @"symbol/quote"
	%r73 = load %ptr, %ptr* %t5
	%r74 = call %ptr @"new-<pair>"(%ptr %r72, %ptr %r73)
	%r75 = inttoptr %word 0 to %ptr
	%r76 = call %ptr @"new-<pair>"(%ptr %r74, %ptr %r75)
	store %ptr %r76, %ptr* %t5
	%r77 = getelementptr [6 x i8], [6 x i8]* @str1066, %word 0, %word 0
	%r79 = call %ptr @"k/intern"(%ptr %r77)
	%r80 = load %ptr, %ptr* %t5
	%r81 = call %ptr @"new-<pair>"(%ptr %r79, %ptr %r80)
	store %ptr %r81, %ptr* %t5
	%r82 = load %ptr, %ptr* %t5
	%r83 = load %ptr, %ptr* %t3
	%r84 = call %ptr @"k/expand-encode-eval"(%ptr %r82, %ptr %r83)
	store %ptr %r84, %ptr* %t6
	%r86 = getelementptr %ptr, %ptr* %t5, %word 0
	%r85 = bitcast %ptr* %r86 to %ptr
	%r87 = call %ptr @"gc/pop-root"(%ptr %r85)
	%r88 = load %ptr, %ptr* %t6
	%r89 = call %ptr @"libc/flush-streams"()
	store %ptr %r89, %ptr* %t4
	br label %L1065
L1064:
	%r90 = inttoptr %word 0 to %ptr
	store %ptr %r90, %ptr* %t4
	br label %L1065
L1065:
	%r91 = load %ptr, %ptr* %t4
	store %ptr %r91, %ptr* %t4
	%r93 = getelementptr %ptr, %ptr* %t3, %word 0
	%r92 = bitcast %ptr* %r93 to %ptr
	%r94 = call %ptr @"gc/pop-root"(%ptr %r92)
	%r95 = load %ptr, %ptr* %t4
	br label %L1061
L1061:
	%r96 = load %ptr, %ptr* %t1
	%r97 = load %ptr, %ptr* @"libc/stdin"
	%r101 = ptrtoint %ptr %r97 to %word
	%r100 = ptrtoint %ptr %r96 to %word
	%r99 = icmp eq %word %r101, %r100
	%r98 = inttoptr i1 %r99 to %ptr
	%r103 = ptrtoint %ptr %r98 to %word
	%r102 = icmp ne %word %r103, 0
	br i1 %r102, label %L1067, label %L1068
L1067:
	%r104 = getelementptr [2 x i8], [2 x i8]* @str1070, %word 0, %word 0
	%r106 = call i32 (%ptr, ...) @printf(%ptr %r104)
	%r107 = sext i32 %r106 to %word
	%r108 = inttoptr %word %r107 to %ptr
	%r109 = call %ptr @"libc/flush-streams"()
	store %ptr %r109, %ptr* %t3
	br label %L1069
L1068:
	%r110 = inttoptr %word 0 to %ptr
	store %ptr %r110, %ptr* %t3
	br label %L1069
L1069:
	%r111 = load %ptr, %ptr* %t3
	%r112 = load %ptr, %ptr* %t1
	%r113 = call %ptr @"k/read"(%ptr %r112)
	store %ptr %r113, %ptr* %t2
	%r114 = load %ptr, %ptr* @"k/+end+"
	%r118 = ptrtoint %ptr %r114 to %word
	%r117 = ptrtoint %ptr %r113 to %word
	%r116 = icmp ne %word %r118, %r117
	%r115 = inttoptr i1 %r116 to %ptr
	%r120 = ptrtoint %ptr %r115 to %word
	%r119 = icmp ne %word %r120, 0
	br i1 %r119, label %L1060, label %L1062
L1062:
	%r121 = inttoptr %word 1 to %ptr
	store %ptr %r121, %ptr* %t3
	%r122 = load %ptr, %ptr* %t1
	%r123 = load %ptr, %ptr* @"libc/stdin"
	%r127 = ptrtoint %ptr %r123 to %word
	%r126 = ptrtoint %ptr %r122 to %word
	%r125 = icmp eq %word %r127, %r126
	%r124 = inttoptr i1 %r125 to %ptr
	store %ptr %r124, %ptr* %t3
	%r128 = inttoptr %word 0 to %ptr
	%r132 = ptrtoint %ptr %r128 to %word
	%r131 = ptrtoint %ptr %r124 to %word
	%r130 = icmp eq %word %r132, %r131
	%r129 = inttoptr i1 %r130 to %ptr
	%r134 = ptrtoint %ptr %r129 to %word
	%r133 = icmp ne %word %r134, 0
	br i1 %r133, label %L1071, label %L1072
L1072:
	%r135 = getelementptr [23 x i8], [23 x i8]* @str1073, %word 0, %word 0
	%r137 = call i32 (%ptr, ...) @printf(%ptr %r135)
	%r138 = sext i32 %r137 to %word
	%r139 = inttoptr %word %r138 to %ptr
	store %ptr %r139, %ptr* %t3
	%r140 = inttoptr %word 0 to %ptr
	%r144 = ptrtoint %ptr %r140 to %word
	%r143 = ptrtoint %ptr %r139 to %word
	%r142 = icmp eq %word %r144, %r143
	%r141 = inttoptr i1 %r142 to %ptr
	%r146 = ptrtoint %ptr %r141 to %word
	%r145 = icmp ne %word %r146, 0
	br i1 %r145, label %L1071, label %L1074
L1074:
	br label %L1071
L1071:
	%r147 = load %ptr, %ptr* %t3
	%r148 = load %ptr, %ptr* %t2
	store %ptr %r148, %ptr* %t3
	%r150 = getelementptr %ptr, %ptr* %t2, %word 0
	%r149 = bitcast %ptr* %r150 to %ptr
	%r151 = call %ptr @"gc/pop-root"(%ptr %r149)
	%r152 = load %ptr, %ptr* %t3
	ret %ptr %r152
}
@str1075 = private unnamed_addr constant [10 x i8] c"*globals*\00"
define %ptr @"new-<module>"() {
	%t1 = alloca %ptr
	%t2 = alloca %ptr
	%t3 = alloca %ptr
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 16 to %ptr
	%r3 = inttoptr %word 16 to %ptr
	%r4 = call %ptr @"gc/allocate"(%ptr %r2, %ptr %r3)
	store %ptr %r4, %ptr* %t1
	%r6 = getelementptr %ptr, %ptr* %t1, %word 0
	%r5 = bitcast %ptr* %r6 to %ptr
	%r7 = call %ptr @"gc/push-root"(%ptr %r5)
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 0 to %ptr
	%r10 = inttoptr %word 0 to %ptr
	%r11 = call %ptr @"new-<env>"(%ptr %r8, %ptr %r9, %ptr %r10)
	store %ptr %r11, %ptr* %t2
	%r13 = getelementptr %ptr, %ptr* %t2, %word 0
	%r12 = bitcast %ptr* %r13 to %ptr
	%r14 = call %ptr @"gc/push-root"(%ptr %r12)
	%r15 = inttoptr %word 0 to %ptr
	%r16 = call %ptr @"new-<array>"(%ptr %r15)
	%r17 = inttoptr %word 0 to %ptr
	%r18 = load %ptr, %ptr* %t1
	%r22 = bitcast %ptr %r18 to [0 x %ptr]*
	%r21 = ptrtoint %ptr %r17 to %word
	%r20 = getelementptr [0 x %ptr], [0 x %ptr]* %r22, %word 0, %word %r21
	store %ptr %r16, %ptr* %r20
	%r19 = bitcast %ptr %r16 to %ptr
	%r23 = load %ptr, %ptr* %t2
	%r24 = getelementptr [10 x i8], [10 x i8]* @str1075, %word 0, %word 0
	%r26 = call %ptr @"k/intern"(%ptr %r24)
	%r27 = load %ptr, %ptr* %t2
	%r28 = call %ptr @"k/env/define"(%ptr %r23, %ptr %r26, %ptr %r27)
	%r29 = inttoptr %word 1 to %ptr
	%r30 = load %ptr, %ptr* %t1
	%r34 = bitcast %ptr %r30 to [0 x %ptr]*
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = getelementptr [0 x %ptr], [0 x %ptr]* %r34, %word 0, %word %r33
	store %ptr %r28, %ptr* %r32
	%r31 = bitcast %ptr %r28 to %ptr
	%r35 = load %ptr, %ptr* %t1
	%r36 = call %ptr @populate-module-with-primitives(%ptr %r35)
	%r37 = inttoptr %word 0 to %ptr
	%r38 = load %ptr, %ptr* %t1
	store %ptr %r38, %ptr* %t3
	%r40 = getelementptr %ptr, %ptr* %t2, %word 0
	%r39 = bitcast %ptr* %r40 to %ptr
	%r41 = call %ptr @"gc/pop-root"(%ptr %r39)
	%r42 = load %ptr, %ptr* %t3
	store %ptr %r42, %ptr* %t2
	%r44 = getelementptr %ptr, %ptr* %t1, %word 0
	%r43 = bitcast %ptr* %r44 to %ptr
	%r45 = call %ptr @"gc/pop-root"(%ptr %r43)
	%r46 = load %ptr, %ptr* %t2
	ret %ptr %r46
}
define %ptr @"k/set-current-module"(%ptr %module) {
	%t1 = alloca %ptr
	store %ptr %module, %ptr* %t1
	%r1 = inttoptr %word 0 to %ptr
	%r2 = load %ptr, %ptr* %t1
	store %ptr %r2, %ptr* @"*module*"
	%r3 = call %ptr @capture-well-known-vm-values()
	ret %ptr %r3
}
@str1087 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str1088 = private unnamed_addr constant [11 x i8] c"Operator '\00"
@str1089 = private unnamed_addr constant [46 x i8] c"' called with the wrong number of arguments: \00"
@str1090 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @"%check-arity"(%ptr %op, %ptr %arity, %ptr %args) {
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t5 = alloca %ptr
	%t4 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	store %ptr %op, %ptr* %t1
	store %ptr %arity, %ptr* %t2
	store %ptr %args, %ptr* %t3
	%r1 = load %ptr, %ptr* %t2
	store %ptr %r1, %ptr* %t4
	%r2 = load %ptr, %ptr* %t3
	store %ptr %r2, %ptr* %t5
	br label %L1077
L1076:
	%r3 = inttoptr %word 1 to %ptr
	%r4 = load %ptr, %ptr* %t5
	%r8 = bitcast %ptr %r4 to [0 x %ptr]*
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = getelementptr [0 x %ptr], [0 x %ptr]* %r8, %word 0, %word %r7
	%r5 = load %ptr, %ptr* %r6
	store %ptr %r5, %ptr* %t5
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t4
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = sub %word %r14, %r13
	%r11 = inttoptr %word %r12 to %ptr
	store %ptr %r11, %ptr* %t4
	br label %L1077
L1077:
	%r15 = inttoptr %word 1 to %ptr
	store %ptr %r15, %ptr* %t6
	%r16 = load %ptr, %ptr* %t4
	%r17 = inttoptr %word 0 to %ptr
	%r21 = ptrtoint %ptr %r17 to %word
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = icmp slt %word %r21, %r20
	%r18 = inttoptr i1 %r19 to %ptr
	store %ptr %r18, %ptr* %t6
	%r22 = inttoptr %word 0 to %ptr
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ptrtoint %ptr %r18 to %word
	%r24 = icmp eq %word %r26, %r25
	%r23 = inttoptr i1 %r24 to %ptr
	%r28 = ptrtoint %ptr %r23 to %word
	%r27 = icmp ne %word %r28, 0
	br i1 %r27, label %L1079, label %L1080
L1080:
	%r29 = load %ptr, %ptr* %t5
	%r30 = call %ptr @"get/type"(%ptr %r29)
	%r31 = inttoptr %word 19 to %ptr
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = ptrtoint %ptr %r30 to %word
	%r33 = icmp eq %word %r35, %r34
	%r32 = inttoptr i1 %r33 to %ptr
	store %ptr %r32, %ptr* %t6
	%r36 = inttoptr %word 0 to %ptr
	%r40 = ptrtoint %ptr %r36 to %word
	%r39 = ptrtoint %ptr %r32 to %word
	%r38 = icmp eq %word %r40, %r39
	%r37 = inttoptr i1 %r38 to %ptr
	%r42 = ptrtoint %ptr %r37 to %word
	%r41 = icmp ne %word %r42, 0
	br i1 %r41, label %L1079, label %L1081
L1081:
	br label %L1079
L1079:
	%r43 = load %ptr, %ptr* %t6
	%r45 = ptrtoint %ptr %r43 to %word
	%r44 = icmp ne %word %r45, 0
	br i1 %r44, label %L1076, label %L1078
L1078:
	%r46 = inttoptr %word 0 to %ptr
	store %ptr %r46, %ptr* %t6
	%r47 = inttoptr %word 1 to %ptr
	store %ptr %r47, %ptr* %t7
	%r48 = load %ptr, %ptr* %t4
	%r49 = inttoptr %word 0 to %ptr
	%r53 = ptrtoint %ptr %r49 to %word
	%r52 = ptrtoint %ptr %r48 to %word
	%r51 = icmp eq %word %r53, %r52
	%r50 = inttoptr i1 %r51 to %ptr
	store %ptr %r50, %ptr* %t7
	%r54 = inttoptr %word 0 to %ptr
	%r58 = ptrtoint %ptr %r54 to %word
	%r57 = ptrtoint %ptr %r50 to %word
	%r56 = icmp eq %word %r58, %r57
	%r55 = inttoptr i1 %r56 to %ptr
	%r60 = ptrtoint %ptr %r55 to %word
	%r59 = icmp ne %word %r60, 0
	br i1 %r59, label %L1083, label %L1084
L1084:
	%r61 = load %ptr, %ptr* %t5
	%r65 = ptrtoint %ptr %r61 to %word
	%r64 = icmp eq %word %r65, 0
	%r63 = zext i1 %r64 to %word
	%r62 = inttoptr %word %r63 to %ptr
	store %ptr %r62, %ptr* %t7
	%r66 = inttoptr %word 0 to %ptr
	%r70 = ptrtoint %ptr %r66 to %word
	%r69 = ptrtoint %ptr %r62 to %word
	%r68 = icmp eq %word %r70, %r69
	%r67 = inttoptr i1 %r68 to %ptr
	%r72 = ptrtoint %ptr %r67 to %word
	%r71 = icmp ne %word %r72, 0
	br i1 %r71, label %L1083, label %L1085
L1085:
	br label %L1083
L1083:
	%r73 = load %ptr, %ptr* %t7
	store %ptr %r73, %ptr* %t6
	%r74 = inttoptr %word 0 to %ptr
	%r78 = ptrtoint %ptr %r74 to %word
	%r77 = ptrtoint %ptr %r73 to %word
	%r76 = icmp eq %word %r78, %r77
	%r75 = inttoptr i1 %r76 to %ptr
	%r80 = ptrtoint %ptr %r75 to %word
	%r79 = icmp ne %word %r80, 0
	br i1 %r79, label %L1086, label %L1082
L1086:
	%r81 = getelementptr [9 x i8], [9 x i8]* @str1087, %word 0, %word 0
	%r83 = call i32 (%ptr, ...) @printf(%ptr %r81)
	%r84 = sext i32 %r83 to %word
	%r85 = inttoptr %word %r84 to %ptr
	%r86 = getelementptr [11 x i8], [11 x i8]* @str1088, %word 0, %word 0
	%r88 = call i32 (%ptr, ...) @printf(%ptr %r86)
	%r89 = sext i32 %r88 to %word
	%r90 = inttoptr %word %r89 to %ptr
	%r91 = load %ptr, %ptr* %t1
	%r92 = call %ptr @"k/print"(%ptr %r91)
	%r93 = getelementptr [46 x i8], [46 x i8]* @str1089, %word 0, %word 0
	%r95 = call i32 (%ptr, ...) @printf(%ptr %r93)
	%r96 = sext i32 %r95 to %word
	%r97 = inttoptr %word %r96 to %ptr
	%r98 = load %ptr, %ptr* %t3
	%r99 = call %ptr @"k/print"(%ptr %r98)
	%r100 = getelementptr [2 x i8], [2 x i8]* @str1090, %word 0, %word 0
	%r102 = call i32 (%ptr, ...) @printf(%ptr %r100)
	%r103 = sext i32 %r102 to %word
	%r104 = inttoptr %word %r103 to %ptr
	%r105 = call %ptr @die()
	store %ptr %r105, %ptr* %t6
	%r106 = inttoptr %word 0 to %ptr
	%r110 = ptrtoint %ptr %r106 to %word
	%r109 = ptrtoint %ptr %r105 to %word
	%r108 = icmp eq %word %r110, %r109
	%r107 = inttoptr i1 %r108 to %ptr
	%r112 = ptrtoint %ptr %r107 to %word
	%r111 = icmp ne %word %r112, 0
	br i1 %r111, label %L1091, label %L1082
L1091:
	br label %L1082
L1082:
	%r113 = load %ptr, %ptr* %t6
	ret %ptr %r113
}
@str1095 = private unnamed_addr constant [33 x i8] c"\0Aerror: non-variable in define: \00"
@str1096 = private unnamed_addr constant [9 x i8] c"aborting\00"
define %ptr @"subr/define"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"k/car"(%ptr %r1)
	store %ptr %r2, %ptr* %t3
	%r3 = load %ptr, %ptr* %t3
	%r4 = call %ptr @"get/type"(%ptr %r3)
	%r5 = inttoptr %word 13 to %ptr
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = icmp eq %word %r9, %r8
	%r6 = inttoptr i1 %r7 to %ptr
	%r11 = ptrtoint %ptr %r6 to %word
	%r10 = icmp ne %word %r11, 0
	br i1 %r10, label %L1092, label %L1093
L1092:
	%r12 = inttoptr %word 0 to %ptr
	store %ptr %r12, %ptr* %t4
	br label %L1094
L1093:
	%r13 = getelementptr [33 x i8], [33 x i8]* @str1095, %word 0, %word 0
	%r15 = call i32 (%ptr, ...) @printf(%ptr %r13)
	%r16 = sext i32 %r15 to %word
	%r17 = inttoptr %word %r16 to %ptr
	%r18 = load %ptr, %ptr* %t3
	%r19 = call %ptr @"k/dumpln"(%ptr %r18)
	%r20 = getelementptr [9 x i8], [9 x i8]* @str1096, %word 0, %word 0
	%r22 = call %ptr @fatal(%ptr %r20)
	store %ptr %r22, %ptr* %t4
	br label %L1094
L1094:
	%r23 = load %ptr, %ptr* %t4
	%r24 = load %ptr, %ptr* %t1
	%r25 = call %ptr @"k/cadr"(%ptr %r24)
	%r26 = load %ptr, %ptr* %t2
	%r27 = call %ptr @"k/eval"(%ptr %r25, %ptr %r26)
	store %ptr %r27, %ptr* %t4
	%r28 = load %ptr, %ptr* %t4
	%r29 = inttoptr %word 1 to %ptr
	%r30 = load %ptr, %ptr* %t3
	%r34 = bitcast %ptr %r30 to [0 x %ptr]*
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = getelementptr [0 x %ptr], [0 x %ptr]* %r34, %word 0, %word %r33
	store %ptr %r28, %ptr* %r32
	%r31 = bitcast %ptr %r28 to %ptr
	%r35 = load %ptr, %ptr* %t4
	store %ptr %r35, %ptr* %t5
	%r36 = load %ptr, %ptr* %t5
	%r37 = call %ptr @"get/type"(%ptr %r36)
	%r38 = inttoptr %word 10 to %ptr
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = icmp eq %word %r42, %r41
	%r39 = inttoptr i1 %r40 to %ptr
	%r44 = ptrtoint %ptr %r39 to %word
	%r43 = icmp ne %word %r44, 0
	br i1 %r43, label %L1097, label %L1098
L1097:
	%r45 = inttoptr %word 0 to %ptr
	%r46 = load %ptr, %ptr* %t5
	%r50 = bitcast %ptr %r46 to [0 x %ptr]*
	%r49 = ptrtoint %ptr %r45 to %word
	%r48 = getelementptr [0 x %ptr], [0 x %ptr]* %r50, %word 0, %word %r49
	%r47 = load %ptr, %ptr* %r48
	store %ptr %r47, %ptr* %t5
	store %ptr %r47, %ptr* %t6
	br label %L1099
L1098:
	%r51 = inttoptr %word 0 to %ptr
	store %ptr %r51, %ptr* %t6
	br label %L1099
L1099:
	%r52 = load %ptr, %ptr* %t6
	%r53 = inttoptr %word 1 to %ptr
	store %ptr %r53, %ptr* %t7
	%r54 = load %ptr, %ptr* %t5
	%r55 = call %ptr @"get/type"(%ptr %r54)
	%r56 = inttoptr %word 9 to %ptr
	%r60 = ptrtoint %ptr %r56 to %word
	%r59 = ptrtoint %ptr %r55 to %word
	%r58 = icmp eq %word %r60, %r59
	%r57 = inttoptr i1 %r58 to %ptr
	store %ptr %r57, %ptr* %t7
	%r61 = inttoptr %word 0 to %ptr
	%r65 = ptrtoint %ptr %r61 to %word
	%r64 = ptrtoint %ptr %r57 to %word
	%r63 = icmp eq %word %r65, %r64
	%r62 = inttoptr i1 %r63 to %ptr
	%r67 = ptrtoint %ptr %r62 to %word
	%r66 = icmp ne %word %r67, 0
	br i1 %r66, label %L1103, label %L1104
L1104:
	%r68 = inttoptr %word 4 to %ptr
	%r69 = load %ptr, %ptr* %t5
	%r73 = bitcast %ptr %r69 to [0 x %ptr]*
	%r72 = ptrtoint %ptr %r68 to %word
	%r71 = getelementptr [0 x %ptr], [0 x %ptr]* %r73, %word 0, %word %r72
	%r70 = load %ptr, %ptr* %r71
	%r77 = ptrtoint %ptr %r70 to %word
	%r76 = icmp eq %word %r77, 0
	%r75 = zext i1 %r76 to %word
	%r74 = inttoptr %word %r75 to %ptr
	store %ptr %r74, %ptr* %t7
	%r78 = inttoptr %word 0 to %ptr
	%r82 = ptrtoint %ptr %r78 to %word
	%r81 = ptrtoint %ptr %r74 to %word
	%r80 = icmp eq %word %r82, %r81
	%r79 = inttoptr i1 %r80 to %ptr
	%r84 = ptrtoint %ptr %r79 to %word
	%r83 = icmp ne %word %r84, 0
	br i1 %r83, label %L1103, label %L1105
L1105:
	br label %L1103
L1103:
	%r85 = load %ptr, %ptr* %t7
	%r87 = ptrtoint %ptr %r85 to %word
	%r86 = icmp ne %word %r87, 0
	br i1 %r86, label %L1100, label %L1101
L1100:
	%r88 = inttoptr %word 0 to %ptr
	%r89 = load %ptr, %ptr* %t3
	%r93 = bitcast %ptr %r89 to [0 x %ptr]*
	%r92 = ptrtoint %ptr %r88 to %word
	%r91 = getelementptr [0 x %ptr], [0 x %ptr]* %r93, %word 0, %word %r92
	%r90 = load %ptr, %ptr* %r91
	%r94 = inttoptr %word 4 to %ptr
	%r95 = load %ptr, %ptr* %t5
	%r99 = bitcast %ptr %r95 to [0 x %ptr]*
	%r98 = ptrtoint %ptr %r94 to %word
	%r97 = getelementptr [0 x %ptr], [0 x %ptr]* %r99, %word 0, %word %r98
	store %ptr %r90, %ptr* %r97
	%r96 = bitcast %ptr %r90 to %ptr
	store %ptr %r96, %ptr* %t6
	br label %L1102
L1101:
	%r100 = inttoptr %word 0 to %ptr
	store %ptr %r100, %ptr* %t6
	br label %L1102
L1102:
	%r101 = load %ptr, %ptr* %t6
	%r102 = load %ptr, %ptr* %t4
	ret %ptr %r102
}
define %ptr @"subr/defined?"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	store %ptr %r8, %ptr* %t4
	%r9 = load %ptr, %ptr* %t1
	%r10 = call %ptr @"k/cadr"(%ptr %r9)
	store %ptr %r10, %ptr* %t4
	%r11 = inttoptr %word 0 to %ptr
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = icmp eq %word %r15, %r14
	%r12 = inttoptr i1 %r13 to %ptr
	%r17 = ptrtoint %ptr %r12 to %word
	%r16 = icmp ne %word %r17, 0
	br i1 %r16, label %L1107, label %L1106
L1107:
	%r18 = inttoptr %word 1 to %ptr
	%r19 = inttoptr %word 1 to %ptr
	%r20 = load %ptr, %ptr* @"*module*"
	%r24 = bitcast %ptr %r20 to [0 x %ptr]*
	%r23 = ptrtoint %ptr %r19 to %word
	%r22 = getelementptr [0 x %ptr], [0 x %ptr]* %r24, %word 0, %word %r23
	%r21 = load %ptr, %ptr* %r22
	%r28 = bitcast %ptr %r21 to [0 x %ptr]*
	%r27 = ptrtoint %ptr %r18 to %word
	%r26 = getelementptr [0 x %ptr], [0 x %ptr]* %r28, %word 0, %word %r27
	%r25 = load %ptr, %ptr* %r26
	store %ptr %r25, %ptr* %t4
	%r29 = inttoptr %word 0 to %ptr
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = ptrtoint %ptr %r25 to %word
	%r31 = icmp eq %word %r33, %r32
	%r30 = inttoptr i1 %r31 to %ptr
	%r35 = ptrtoint %ptr %r30 to %word
	%r34 = icmp ne %word %r35, 0
	br i1 %r34, label %L1108, label %L1106
L1108:
	br label %L1106
L1106:
	%r36 = load %ptr, %ptr* %t4
	store %ptr %r36, %ptr* %t4
	%r37 = load %ptr, %ptr* %t4
	%r38 = load %ptr, %ptr* %t3
	%r39 = call %ptr @"k/env/lookup-variable"(%ptr %r37, %ptr %r38)
	ret %ptr %r39
}
@str1111 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str1112 = private unnamed_addr constant [24 x i8] c"kernel assertion failed\00"
@str1113 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @"subr/lambda"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t5 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t6 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"k/car"(%ptr %r1)
	store %ptr %r2, %ptr* %t3
	%r3 = load %ptr, %ptr* %t1
	%r4 = call %ptr @"k/cadr"(%ptr %r3)
	store %ptr %r4, %ptr* %t4
	%r5 = load %ptr, %ptr* %t1
	%r6 = call %ptr @"k/cddr"(%ptr %r5)
	store %ptr %r6, %ptr* %t5
	%r7 = inttoptr %word 0 to %ptr
	store %ptr %r7, %ptr* %t6
	%r8 = load %ptr, %ptr* %t3
	%r9 = call %ptr @"get/type"(%ptr %r8)
	%r10 = inttoptr %word 14 to %ptr
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = icmp eq %word %r14, %r13
	%r11 = inttoptr i1 %r12 to %ptr
	store %ptr %r11, %ptr* %t6
	%r15 = inttoptr %word 0 to %ptr
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = ptrtoint %ptr %r11 to %word
	%r17 = icmp eq %word %r19, %r18
	%r16 = inttoptr i1 %r17 to %ptr
	%r21 = ptrtoint %ptr %r16 to %word
	%r20 = icmp ne %word %r21, 0
	br i1 %r20, label %L1110, label %L1109
L1110:
	%r22 = getelementptr [9 x i8], [9 x i8]* @str1111, %word 0, %word 0
	%r24 = call i32 (%ptr, ...) @printf(%ptr %r22)
	%r25 = sext i32 %r24 to %word
	%r26 = inttoptr %word %r25 to %ptr
	%r27 = getelementptr [24 x i8], [24 x i8]* @str1112, %word 0, %word 0
	%r29 = call i32 (%ptr, ...) @printf(%ptr %r27)
	%r30 = sext i32 %r29 to %word
	%r31 = inttoptr %word %r30 to %ptr
	%r32 = getelementptr [2 x i8], [2 x i8]* @str1113, %word 0, %word 0
	%r34 = call i32 (%ptr, ...) @printf(%ptr %r32)
	%r35 = sext i32 %r34 to %word
	%r36 = inttoptr %word %r35 to %ptr
	%r37 = call %ptr @die()
	store %ptr %r37, %ptr* %t6
	%r38 = inttoptr %word 0 to %ptr
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = icmp eq %word %r42, %r41
	%r39 = inttoptr i1 %r40 to %ptr
	%r44 = ptrtoint %ptr %r39 to %word
	%r43 = icmp ne %word %r44, 0
	br i1 %r43, label %L1114, label %L1109
L1114:
	br label %L1109
L1109:
	%r45 = load %ptr, %ptr* %t6
	%r46 = load %ptr, %ptr* %t4
	%r47 = load %ptr, %ptr* %t5
	%r48 = load %ptr, %ptr* %t3
	%r49 = load %ptr, %ptr* %t2
	%r50 = call %ptr @"new-<expr>"(%ptr %r46, %ptr %r47, %ptr %r48, %ptr %r49)
	ret %ptr %r50
}
define %ptr @"subr/let"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t10 = alloca %ptr
	%t9 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	store %ptr %r1, %ptr* %t3
	%r2 = load %ptr, %ptr* %t1
	%r3 = call %ptr @"k/cadr"(%ptr %r2)
	store %ptr %r3, %ptr* %t4
	%r4 = inttoptr %word 2 to %ptr
	%r5 = load %ptr, %ptr* %t2
	%r9 = bitcast %ptr %r5 to [0 x %ptr]*
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = getelementptr [0 x %ptr], [0 x %ptr]* %r9, %word 0, %word %r8
	%r6 = load %ptr, %ptr* %r7
	store %ptr %r6, %ptr* %t5
	%r10 = load %ptr, %ptr* %t1
	%r11 = call %ptr @"k/cddr"(%ptr %r10)
	store %ptr %r11, %ptr* %t6
	%r13 = getelementptr %ptr, %ptr* %t3, %word 0
	%r12 = bitcast %ptr* %r13 to %ptr
	%r14 = call %ptr @"gc/push-root"(%ptr %r12)
	br label %L1116
L1115:
	%r15 = inttoptr %word 0 to %ptr
	%r16 = load %ptr, %ptr* %t4
	%r20 = bitcast %ptr %r16 to [0 x %ptr]*
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = getelementptr [0 x %ptr], [0 x %ptr]* %r20, %word 0, %word %r19
	%r17 = load %ptr, %ptr* %r18
	store %ptr %r17, %ptr* %t7
	%r21 = load %ptr, %ptr* %t7
	%r22 = call %ptr @"get/type"(%ptr %r21)
	%r23 = inttoptr %word 19 to %ptr
	%r27 = ptrtoint %ptr %r23 to %word
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = icmp eq %word %r27, %r26
	%r24 = inttoptr i1 %r25 to %ptr
	%r29 = ptrtoint %ptr %r24 to %word
	%r28 = icmp ne %word %r29, 0
	br i1 %r28, label %L1118, label %L1119
L1118:
	%r30 = inttoptr %word 0 to %ptr
	%r31 = load %ptr, %ptr* %t7
	%r35 = bitcast %ptr %r31 to [0 x %ptr]*
	%r34 = ptrtoint %ptr %r30 to %word
	%r33 = getelementptr [0 x %ptr], [0 x %ptr]* %r35, %word 0, %word %r34
	%r32 = load %ptr, %ptr* %r33
	store %ptr %r32, %ptr* %t9
	%r36 = inttoptr %word 1 to %ptr
	%r37 = load %ptr, %ptr* %t7
	%r41 = bitcast %ptr %r37 to [0 x %ptr]*
	%r40 = ptrtoint %ptr %r36 to %word
	%r39 = getelementptr [0 x %ptr], [0 x %ptr]* %r41, %word 0, %word %r40
	%r38 = load %ptr, %ptr* %r39
	store %ptr %r38, %ptr* %t10
	%r42 = inttoptr %word 0 to %ptr
	store %ptr %r42, %ptr* %t3
	br label %L1122
L1121:
	%r43 = inttoptr %word 0 to %ptr
	%r44 = load %ptr, %ptr* %t10
	%r48 = bitcast %ptr %r44 to [0 x %ptr]*
	%r47 = ptrtoint %ptr %r43 to %word
	%r46 = getelementptr [0 x %ptr], [0 x %ptr]* %r48, %word 0, %word %r47
	%r45 = load %ptr, %ptr* %r46
	%r49 = load %ptr, %ptr* %t2
	%r50 = call %ptr @"k/eval"(%ptr %r45, %ptr %r49)
	store %ptr %r50, %ptr* %t3
	%r51 = inttoptr %word 1 to %ptr
	%r52 = load %ptr, %ptr* %t10
	%r56 = bitcast %ptr %r52 to [0 x %ptr]*
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = getelementptr [0 x %ptr], [0 x %ptr]* %r56, %word 0, %word %r55
	%r53 = load %ptr, %ptr* %r54
	store %ptr %r53, %ptr* %t10
	br label %L1122
L1122:
	%r57 = load %ptr, %ptr* %t10
	%r58 = call %ptr @"get/type"(%ptr %r57)
	%r59 = inttoptr %word 19 to %ptr
	%r63 = ptrtoint %ptr %r59 to %word
	%r62 = ptrtoint %ptr %r58 to %word
	%r61 = icmp eq %word %r63, %r62
	%r60 = inttoptr i1 %r61 to %ptr
	%r65 = ptrtoint %ptr %r60 to %word
	%r64 = icmp ne %word %r65, 0
	br i1 %r64, label %L1121, label %L1123
L1123:
	%r66 = load %ptr, %ptr* %t5
	%r67 = inttoptr %word 1 to %ptr
	%r68 = inttoptr %word 3 to %ptr
	%r69 = load %ptr, %ptr* %t9
	%r73 = bitcast %ptr %r69 to [0 x %ptr]*
	%r72 = ptrtoint %ptr %r68 to %word
	%r71 = getelementptr [0 x %ptr], [0 x %ptr]* %r73, %word 0, %word %r72
	%r70 = load %ptr, %ptr* %r71
	%r77 = ptrtoint %ptr %r70 to %word
	%r76 = ptrtoint %ptr %r67 to %word
	%r75 = ashr %word %r77, %r76
	%r74 = inttoptr %word %r75 to %ptr
	%r78 = load %ptr, %ptr* %t3
	%r79 = call %ptr @"set-k/array-at"(%ptr %r66, %ptr %r74, %ptr %r78)
	store %ptr %r79, %ptr* %t8
	br label %L1120
L1119:
	%r80 = inttoptr %word 0 to %ptr
	store %ptr %r80, %ptr* %t8
	br label %L1120
L1120:
	%r81 = load %ptr, %ptr* %t8
	%r82 = inttoptr %word 1 to %ptr
	%r83 = load %ptr, %ptr* %t4
	%r87 = bitcast %ptr %r83 to [0 x %ptr]*
	%r86 = ptrtoint %ptr %r82 to %word
	%r85 = getelementptr [0 x %ptr], [0 x %ptr]* %r87, %word 0, %word %r86
	%r84 = load %ptr, %ptr* %r85
	store %ptr %r84, %ptr* %t4
	br label %L1116
L1116:
	%r88 = load %ptr, %ptr* %t4
	%r89 = call %ptr @"get/type"(%ptr %r88)
	%r90 = inttoptr %word 19 to %ptr
	%r94 = ptrtoint %ptr %r90 to %word
	%r93 = ptrtoint %ptr %r89 to %word
	%r92 = icmp eq %word %r94, %r93
	%r91 = inttoptr i1 %r92 to %ptr
	%r96 = ptrtoint %ptr %r91 to %word
	%r95 = icmp ne %word %r96, 0
	br i1 %r95, label %L1115, label %L1117
L1117:
	%r97 = inttoptr %word 0 to %ptr
	store %ptr %r97, %ptr* %t3
	br label %L1125
L1124:
	%r98 = inttoptr %word 0 to %ptr
	%r99 = load %ptr, %ptr* %t6
	%r103 = bitcast %ptr %r99 to [0 x %ptr]*
	%r102 = ptrtoint %ptr %r98 to %word
	%r101 = getelementptr [0 x %ptr], [0 x %ptr]* %r103, %word 0, %word %r102
	%r100 = load %ptr, %ptr* %r101
	%r104 = load %ptr, %ptr* %t2
	%r105 = call %ptr @"k/eval"(%ptr %r100, %ptr %r104)
	store %ptr %r105, %ptr* %t3
	%r106 = inttoptr %word 1 to %ptr
	%r107 = load %ptr, %ptr* %t6
	%r111 = bitcast %ptr %r107 to [0 x %ptr]*
	%r110 = ptrtoint %ptr %r106 to %word
	%r109 = getelementptr [0 x %ptr], [0 x %ptr]* %r111, %word 0, %word %r110
	%r108 = load %ptr, %ptr* %r109
	store %ptr %r108, %ptr* %t6
	br label %L1125
L1125:
	%r112 = load %ptr, %ptr* %t6
	%r113 = call %ptr @"get/type"(%ptr %r112)
	%r114 = inttoptr %word 19 to %ptr
	%r118 = ptrtoint %ptr %r114 to %word
	%r117 = ptrtoint %ptr %r113 to %word
	%r116 = icmp eq %word %r118, %r117
	%r115 = inttoptr i1 %r116 to %ptr
	%r120 = ptrtoint %ptr %r115 to %word
	%r119 = icmp ne %word %r120, 0
	br i1 %r119, label %L1124, label %L1126
L1126:
	store %ptr %r115, %ptr* %t7
	%r122 = getelementptr %ptr, %ptr* %t3, %word 0
	%r121 = bitcast %ptr* %r122 to %ptr
	%r123 = call %ptr @"gc/pop-root"(%ptr %r121)
	%r124 = load %ptr, %ptr* %t7
	%r125 = load %ptr, %ptr* %t3
	ret %ptr %r125
}
@str1130 = private unnamed_addr constant [33 x i8] c"\0Acannot set undefined variable: \00"
@str1131 = private unnamed_addr constant [9 x i8] c"aborting\00"
define %ptr @"subr/set"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = load %ptr, %ptr* %t3
	%r9 = call %ptr @"get/type"(%ptr %r8)
	%r10 = inttoptr %word 13 to %ptr
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = icmp eq %word %r14, %r13
	%r11 = inttoptr i1 %r12 to %ptr
	%r16 = ptrtoint %ptr %r11 to %word
	%r15 = icmp ne %word %r16, 0
	br i1 %r15, label %L1127, label %L1128
L1127:
	%r17 = inttoptr %word 0 to %ptr
	store %ptr %r17, %ptr* %t4
	br label %L1129
L1128:
	%r18 = getelementptr [33 x i8], [33 x i8]* @str1130, %word 0, %word 0
	%r20 = call i32 (%ptr, ...) @printf(%ptr %r18)
	%r21 = sext i32 %r20 to %word
	%r22 = inttoptr %word %r21 to %ptr
	%r23 = load %ptr, %ptr* %t3
	%r24 = call %ptr @"k/dumpln"(%ptr %r23)
	%r25 = getelementptr [9 x i8], [9 x i8]* @str1131, %word 0, %word 0
	%r27 = call %ptr @fatal(%ptr %r25)
	store %ptr %r27, %ptr* %t4
	br label %L1129
L1129:
	%r28 = load %ptr, %ptr* %t4
	%r29 = inttoptr %word 0 to %ptr
	%r30 = inttoptr %word 1 to %ptr
	%r31 = load %ptr, %ptr* %t1
	%r35 = bitcast %ptr %r31 to [0 x %ptr]*
	%r34 = ptrtoint %ptr %r30 to %word
	%r33 = getelementptr [0 x %ptr], [0 x %ptr]* %r35, %word 0, %word %r34
	%r32 = load %ptr, %ptr* %r33
	%r39 = bitcast %ptr %r32 to [0 x %ptr]*
	%r38 = ptrtoint %ptr %r29 to %word
	%r37 = getelementptr [0 x %ptr], [0 x %ptr]* %r39, %word 0, %word %r38
	%r36 = load %ptr, %ptr* %r37
	%r40 = load %ptr, %ptr* %t2
	%r41 = call %ptr @"k/eval"(%ptr %r36, %ptr %r40)
	store %ptr %r41, %ptr* %t4
	%r42 = load %ptr, %ptr* %t3
	%r43 = call %ptr @"global-variable?"(%ptr %r42)
	%r45 = ptrtoint %ptr %r43 to %word
	%r44 = icmp ne %word %r45, 0
	br i1 %r44, label %L1132, label %L1133
L1132:
	%r46 = load %ptr, %ptr* %t4
	%r47 = inttoptr %word 1 to %ptr
	%r48 = load %ptr, %ptr* %t3
	%r52 = bitcast %ptr %r48 to [0 x %ptr]*
	%r51 = ptrtoint %ptr %r47 to %word
	%r50 = getelementptr [0 x %ptr], [0 x %ptr]* %r52, %word 0, %word %r51
	store %ptr %r46, %ptr* %r50
	%r49 = bitcast %ptr %r46 to %ptr
	store %ptr %r49, %ptr* %t5
	br label %L1134
L1133:
	%r53 = inttoptr %word 1 to %ptr
	%r54 = inttoptr %word 1 to %ptr
	%r55 = inttoptr %word 2 to %ptr
	%r56 = load %ptr, %ptr* %t3
	%r60 = bitcast %ptr %r56 to [0 x %ptr]*
	%r59 = ptrtoint %ptr %r55 to %word
	%r58 = getelementptr [0 x %ptr], [0 x %ptr]* %r60, %word 0, %word %r59
	%r57 = load %ptr, %ptr* %r58
	%r64 = bitcast %ptr %r57 to [0 x %ptr]*
	%r63 = ptrtoint %ptr %r54 to %word
	%r62 = getelementptr [0 x %ptr], [0 x %ptr]* %r64, %word 0, %word %r63
	%r61 = load %ptr, %ptr* %r62
	%r68 = ptrtoint %ptr %r61 to %word
	%r67 = ptrtoint %ptr %r53 to %word
	%r66 = ashr %word %r68, %r67
	%r65 = inttoptr %word %r66 to %ptr
	%r69 = inttoptr %word 1 to %ptr
	%r70 = inttoptr %word 1 to %ptr
	%r71 = inttoptr %word 1 to %ptr
	%r72 = load %ptr, %ptr* %t2
	%r76 = bitcast %ptr %r72 to [0 x %ptr]*
	%r75 = ptrtoint %ptr %r71 to %word
	%r74 = getelementptr [0 x %ptr], [0 x %ptr]* %r76, %word 0, %word %r75
	%r73 = load %ptr, %ptr* %r74
	%r80 = bitcast %ptr %r73 to [0 x %ptr]*
	%r79 = ptrtoint %ptr %r70 to %word
	%r78 = getelementptr [0 x %ptr], [0 x %ptr]* %r80, %word 0, %word %r79
	%r77 = load %ptr, %ptr* %r78
	%r84 = ptrtoint %ptr %r77 to %word
	%r83 = ptrtoint %ptr %r69 to %word
	%r82 = ashr %word %r84, %r83
	%r81 = inttoptr %word %r82 to %ptr
	%r88 = ptrtoint %ptr %r81 to %word
	%r87 = ptrtoint %ptr %r65 to %word
	%r86 = sub %word %r88, %r87
	%r85 = inttoptr %word %r86 to %ptr
	store %ptr %r85, %ptr* %t6
	br label %L1136
L1135:
	%r89 = inttoptr %word 0 to %ptr
	%r90 = load %ptr, %ptr* %t2
	%r94 = bitcast %ptr %r90 to [0 x %ptr]*
	%r93 = ptrtoint %ptr %r89 to %word
	%r92 = getelementptr [0 x %ptr], [0 x %ptr]* %r94, %word 0, %word %r93
	%r91 = load %ptr, %ptr* %r92
	store %ptr %r91, %ptr* %t2
	%r95 = inttoptr %word 1 to %ptr
	%r96 = load %ptr, %ptr* %t6
	%r100 = ptrtoint %ptr %r96 to %word
	%r99 = ptrtoint %ptr %r95 to %word
	%r98 = sub %word %r100, %r99
	%r97 = inttoptr %word %r98 to %ptr
	store %ptr %r97, %ptr* %t6
	br label %L1136
L1136:
	%r101 = load %ptr, %ptr* %t6
	%r102 = inttoptr %word 0 to %ptr
	%r106 = ptrtoint %ptr %r102 to %word
	%r105 = ptrtoint %ptr %r101 to %word
	%r104 = icmp slt %word %r106, %r105
	%r103 = inttoptr i1 %r104 to %ptr
	%r108 = ptrtoint %ptr %r103 to %word
	%r107 = icmp ne %word %r108, 0
	br i1 %r107, label %L1135, label %L1137
L1137:
	%r109 = inttoptr %word 2 to %ptr
	%r110 = load %ptr, %ptr* %t2
	%r114 = bitcast %ptr %r110 to [0 x %ptr]*
	%r113 = ptrtoint %ptr %r109 to %word
	%r112 = getelementptr [0 x %ptr], [0 x %ptr]* %r114, %word 0, %word %r113
	%r111 = load %ptr, %ptr* %r112
	%r115 = inttoptr %word 1 to %ptr
	%r116 = inttoptr %word 3 to %ptr
	%r117 = load %ptr, %ptr* %t3
	%r121 = bitcast %ptr %r117 to [0 x %ptr]*
	%r120 = ptrtoint %ptr %r116 to %word
	%r119 = getelementptr [0 x %ptr], [0 x %ptr]* %r121, %word 0, %word %r120
	%r118 = load %ptr, %ptr* %r119
	%r125 = ptrtoint %ptr %r118 to %word
	%r124 = ptrtoint %ptr %r115 to %word
	%r123 = ashr %word %r125, %r124
	%r122 = inttoptr %word %r123 to %ptr
	%r126 = load %ptr, %ptr* %t4
	%r127 = call %ptr @"set-k/array-at"(%ptr %r111, %ptr %r122, %ptr %r126)
	store %ptr %r127, %ptr* %t5
	br label %L1134
L1134:
	%r128 = load %ptr, %ptr* %t5
	ret %ptr %r128
}
define %ptr @"subr/while"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"k/car"(%ptr %r1)
	store %ptr %r2, %ptr* %t3
	%r3 = load %ptr, %ptr* %t1
	store %ptr %r3, %ptr* %t4
	br label %L1139
L1138:
	%r4 = load %ptr, %ptr* %t4
	store %ptr %r4, %ptr* %t5
	br label %L1142
L1141:
	%r5 = inttoptr %word 0 to %ptr
	%r6 = load %ptr, %ptr* %t5
	%r10 = bitcast %ptr %r6 to [0 x %ptr]*
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = getelementptr [0 x %ptr], [0 x %ptr]* %r10, %word 0, %word %r9
	%r7 = load %ptr, %ptr* %r8
	%r11 = load %ptr, %ptr* %t2
	%r12 = call %ptr @"k/eval"(%ptr %r7, %ptr %r11)
	br label %L1142
L1142:
	%r13 = load %ptr, %ptr* %t5
	%r14 = call %ptr @"k/cdr"(%ptr %r13)
	store %ptr %r14, %ptr* %t5
	%r15 = call %ptr @"get/type"(%ptr %r14)
	%r16 = inttoptr %word 19 to %ptr
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = icmp eq %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	%r22 = ptrtoint %ptr %r17 to %word
	%r21 = icmp ne %word %r22, 0
	br i1 %r21, label %L1141, label %L1143
L1143:
	br label %L1139
L1139:
	%r23 = load %ptr, %ptr* %t3
	%r24 = load %ptr, %ptr* %t2
	%r25 = call %ptr @"k/eval"(%ptr %r23, %ptr %r24)
	%r27 = ptrtoint %ptr %r25 to %word
	%r26 = icmp ne %word %r27, 0
	br i1 %r26, label %L1138, label %L1140
L1140:
	ret %ptr %r25
}
define %ptr @"subr/if"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"k/car"(%ptr %r1)
	%r3 = load %ptr, %ptr* %t2
	%r4 = call %ptr @"k/eval"(%ptr %r2, %ptr %r3)
	%r6 = ptrtoint %ptr %r4 to %word
	%r5 = icmp ne %word %r6, 0
	br i1 %r5, label %L1144, label %L1145
L1144:
	%r7 = load %ptr, %ptr* %t1
	%r8 = call %ptr @"k/cadr"(%ptr %r7)
	%r9 = load %ptr, %ptr* %t2
	%r10 = call %ptr @"k/eval"(%ptr %r8, %ptr %r9)
	store %ptr %r10, %ptr* %t3
	br label %L1146
L1145:
	%r11 = inttoptr %word 0 to %ptr
	store %ptr %r11, %ptr* %t4
	%r12 = load %ptr, %ptr* %t1
	%r13 = call %ptr @"k/cdr"(%ptr %r12)
	store %ptr %r13, %ptr* %t1
	br label %L1148
L1147:
	%r14 = inttoptr %word 0 to %ptr
	%r15 = load %ptr, %ptr* %t1
	%r19 = bitcast %ptr %r15 to [0 x %ptr]*
	%r18 = ptrtoint %ptr %r14 to %word
	%r17 = getelementptr [0 x %ptr], [0 x %ptr]* %r19, %word 0, %word %r18
	%r16 = load %ptr, %ptr* %r17
	%r20 = load %ptr, %ptr* %t2
	%r21 = call %ptr @"k/eval"(%ptr %r16, %ptr %r20)
	store %ptr %r21, %ptr* %t4
	br label %L1148
L1148:
	%r22 = load %ptr, %ptr* %t1
	%r23 = call %ptr @"k/cdr"(%ptr %r22)
	store %ptr %r23, %ptr* %t1
	%r24 = call %ptr @"get/type"(%ptr %r23)
	%r25 = inttoptr %word 19 to %ptr
	%r29 = ptrtoint %ptr %r25 to %word
	%r28 = ptrtoint %ptr %r24 to %word
	%r27 = icmp eq %word %r29, %r28
	%r26 = inttoptr i1 %r27 to %ptr
	%r31 = ptrtoint %ptr %r26 to %word
	%r30 = icmp ne %word %r31, 0
	br i1 %r30, label %L1147, label %L1149
L1149:
	%r32 = load %ptr, %ptr* %t4
	store %ptr %r32, %ptr* %t3
	br label %L1146
L1146:
	%r33 = load %ptr, %ptr* %t3
	ret %ptr %r33
}
define %ptr @"subr/or"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	store %ptr %r1, %ptr* %t3
	br label %L1151
L1150:
	%r2 = inttoptr %word 1 to %ptr
	store %ptr %r2, %ptr* %t4
	%r3 = inttoptr %word 0 to %ptr
	%r4 = load %ptr, %ptr* %t1
	%r8 = bitcast %ptr %r4 to [0 x %ptr]*
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = getelementptr [0 x %ptr], [0 x %ptr]* %r8, %word 0, %word %r7
	%r5 = load %ptr, %ptr* %r6
	%r9 = load %ptr, %ptr* %t2
	%r10 = call %ptr @"k/eval"(%ptr %r5, %ptr %r9)
	store %ptr %r10, %ptr* %t3
	store %ptr %r10, %ptr* %t4
	%r11 = inttoptr %word 0 to %ptr
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = icmp eq %word %r15, %r14
	%r12 = inttoptr i1 %r13 to %ptr
	%r17 = ptrtoint %ptr %r12 to %word
	%r16 = icmp ne %word %r17, 0
	br i1 %r16, label %L1153, label %L1154
L1154:
	%r18 = load %ptr, %ptr* %t3
	ret %ptr %r18
	store %ptr %r18, %ptr* %t4
	%r20 = inttoptr %word 0 to %ptr
	%r24 = ptrtoint %ptr %r20 to %word
	%r23 = ptrtoint %ptr %r18 to %word
	%r22 = icmp eq %word %r24, %r23
	%r21 = inttoptr i1 %r22 to %ptr
	%r26 = ptrtoint %ptr %r21 to %word
	%r25 = icmp ne %word %r26, 0
	br i1 %r25, label %L1153, label %L1155
L1155:
	br label %L1153
L1153:
	%r27 = load %ptr, %ptr* %t4
	%r28 = inttoptr %word 1 to %ptr
	%r29 = load %ptr, %ptr* %t1
	%r33 = bitcast %ptr %r29 to [0 x %ptr]*
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = getelementptr [0 x %ptr], [0 x %ptr]* %r33, %word 0, %word %r32
	%r30 = load %ptr, %ptr* %r31
	store %ptr %r30, %ptr* %t1
	br label %L1151
L1151:
	%r34 = load %ptr, %ptr* %t1
	%r35 = call %ptr @"get/type"(%ptr %r34)
	%r36 = inttoptr %word 19 to %ptr
	%r40 = ptrtoint %ptr %r36 to %word
	%r39 = ptrtoint %ptr %r35 to %word
	%r38 = icmp eq %word %r40, %r39
	%r37 = inttoptr i1 %r38 to %ptr
	%r42 = ptrtoint %ptr %r37 to %word
	%r41 = icmp ne %word %r42, 0
	br i1 %r41, label %L1150, label %L1152
L1152:
	ret %ptr %r37
}
define %ptr @"subr/and"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = load %ptr, %ptr* @"symbol/true"
	store %ptr %r1, %ptr* %t3
	br label %L1157
L1156:
	%r2 = inttoptr %word 0 to %ptr
	store %ptr %r2, %ptr* %t4
	%r3 = inttoptr %word 0 to %ptr
	%r4 = load %ptr, %ptr* %t1
	%r8 = bitcast %ptr %r4 to [0 x %ptr]*
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = getelementptr [0 x %ptr], [0 x %ptr]* %r8, %word 0, %word %r7
	%r5 = load %ptr, %ptr* %r6
	%r9 = load %ptr, %ptr* %t2
	%r10 = call %ptr @"k/eval"(%ptr %r5, %ptr %r9)
	store %ptr %r10, %ptr* %t3
	store %ptr %r10, %ptr* %t4
	%r11 = inttoptr %word 0 to %ptr
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = icmp eq %word %r15, %r14
	%r12 = inttoptr i1 %r13 to %ptr
	%r17 = ptrtoint %ptr %r12 to %word
	%r16 = icmp ne %word %r17, 0
	br i1 %r16, label %L1160, label %L1159
L1160:
	%r18 = inttoptr %word 0 to %ptr
	ret %ptr %r18
	store %ptr %r18, %ptr* %t4
	%r20 = inttoptr %word 0 to %ptr
	%r24 = ptrtoint %ptr %r20 to %word
	%r23 = ptrtoint %ptr %r18 to %word
	%r22 = icmp eq %word %r24, %r23
	%r21 = inttoptr i1 %r22 to %ptr
	%r26 = ptrtoint %ptr %r21 to %word
	%r25 = icmp ne %word %r26, 0
	br i1 %r25, label %L1161, label %L1159
L1161:
	br label %L1159
L1159:
	%r27 = load %ptr, %ptr* %t4
	%r28 = inttoptr %word 1 to %ptr
	%r29 = load %ptr, %ptr* %t1
	%r33 = bitcast %ptr %r29 to [0 x %ptr]*
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = getelementptr [0 x %ptr], [0 x %ptr]* %r33, %word 0, %word %r32
	%r30 = load %ptr, %ptr* %r31
	store %ptr %r30, %ptr* %t1
	br label %L1157
L1157:
	%r34 = load %ptr, %ptr* %t1
	%r35 = call %ptr @"get/type"(%ptr %r34)
	%r36 = inttoptr %word 19 to %ptr
	%r40 = ptrtoint %ptr %r36 to %word
	%r39 = ptrtoint %ptr %r35 to %word
	%r38 = icmp eq %word %r40, %r39
	%r37 = inttoptr i1 %r38 to %ptr
	%r42 = ptrtoint %ptr %r37 to %word
	%r41 = icmp ne %word %r42, 0
	br i1 %r41, label %L1156, label %L1158
L1158:
	%r43 = load %ptr, %ptr* %t3
	ret %ptr %r43
}
define %ptr @"subr/quote"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	ret %ptr %r4
}
define %ptr @"subr/not"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	%r9 = ptrtoint %ptr %r4 to %word
	%r8 = icmp ne %word %r9, 0
	br i1 %r8, label %L1162, label %L1163
L1162:
	%r10 = inttoptr %word 0 to %ptr
	store %ptr %r10, %ptr* %t3
	br label %L1164
L1163:
	%r11 = load %ptr, %ptr* @"symbol/true"
	store %ptr %r11, %ptr* %t3
	br label %L1164
L1164:
	%r12 = load %ptr, %ptr* %t3
	ret %ptr %r12
}
define %ptr @"subr/fixed"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	%r8 = call %ptr @"new-<fixed>"(%ptr %r4)
	ret %ptr %r8
}
define %ptr @"subr/variable"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	store %ptr %r11, %ptr* %t1
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	%r19 = inttoptr %word 0 to %ptr
	%r20 = inttoptr %word 1 to %ptr
	%r21 = load %ptr, %ptr* %t1
	%r25 = bitcast %ptr %r21 to [0 x %ptr]*
	%r24 = ptrtoint %ptr %r20 to %word
	%r23 = getelementptr [0 x %ptr], [0 x %ptr]* %r25, %word 0, %word %r24
	%r22 = load %ptr, %ptr* %r23
	store %ptr %r22, %ptr* %t1
	%r29 = bitcast %ptr %r22 to [0 x %ptr]*
	%r28 = ptrtoint %ptr %r19 to %word
	%r27 = getelementptr [0 x %ptr], [0 x %ptr]* %r29, %word 0, %word %r28
	%r26 = load %ptr, %ptr* %r27
	%r30 = inttoptr %word 0 to %ptr
	%r31 = inttoptr %word 1 to %ptr
	%r32 = load %ptr, %ptr* %t1
	%r36 = bitcast %ptr %r32 to [0 x %ptr]*
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = getelementptr [0 x %ptr], [0 x %ptr]* %r36, %word 0, %word %r35
	%r33 = load %ptr, %ptr* %r34
	%r40 = bitcast %ptr %r33 to [0 x %ptr]*
	%r39 = ptrtoint %ptr %r30 to %word
	%r38 = getelementptr [0 x %ptr], [0 x %ptr]* %r40, %word 0, %word %r39
	%r37 = load %ptr, %ptr* %r38
	%r41 = call %ptr @"new-<variable>"(%ptr %r4, %ptr %r15, %ptr %r26, %ptr %r37)
	ret %ptr %r41
}
@str1167 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str1168 = private unnamed_addr constant [24 x i8] c"kernel assertion failed\00"
@str1169 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @"subr/environment"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	store %ptr %r8, %ptr* %t4
	%r9 = load %ptr, %ptr* %t3
	%r10 = call %ptr @"get/type"(%ptr %r9)
	%r11 = inttoptr %word 14 to %ptr
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = icmp eq %word %r15, %r14
	%r12 = inttoptr i1 %r13 to %ptr
	store %ptr %r12, %ptr* %t4
	%r16 = inttoptr %word 0 to %ptr
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r12 to %word
	%r18 = icmp eq %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	%r22 = ptrtoint %ptr %r17 to %word
	%r21 = icmp ne %word %r22, 0
	br i1 %r21, label %L1166, label %L1165
L1166:
	%r23 = getelementptr [9 x i8], [9 x i8]* @str1167, %word 0, %word 0
	%r25 = call i32 (%ptr, ...) @printf(%ptr %r23)
	%r26 = sext i32 %r25 to %word
	%r27 = inttoptr %word %r26 to %ptr
	%r28 = getelementptr [24 x i8], [24 x i8]* @str1168, %word 0, %word 0
	%r30 = call i32 (%ptr, ...) @printf(%ptr %r28)
	%r31 = sext i32 %r30 to %word
	%r32 = inttoptr %word %r31 to %ptr
	%r33 = getelementptr [2 x i8], [2 x i8]* @str1169, %word 0, %word 0
	%r35 = call i32 (%ptr, ...) @printf(%ptr %r33)
	%r36 = sext i32 %r35 to %word
	%r37 = inttoptr %word %r36 to %ptr
	%r38 = call %ptr @die()
	store %ptr %r38, %ptr* %t4
	%r39 = inttoptr %word 0 to %ptr
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = icmp eq %word %r43, %r42
	%r40 = inttoptr i1 %r41 to %ptr
	%r45 = ptrtoint %ptr %r40 to %word
	%r44 = icmp ne %word %r45, 0
	br i1 %r44, label %L1170, label %L1165
L1170:
	br label %L1165
L1165:
	%r46 = load %ptr, %ptr* %t4
	%r47 = load %ptr, %ptr* %t3
	%r48 = inttoptr %word 0 to %ptr
	%r49 = inttoptr %word 1 to %ptr
	%r50 = inttoptr %word 2 to %ptr
	%r51 = load %ptr, %ptr* %t3
	%r55 = bitcast %ptr %r51 to [0 x %ptr]*
	%r54 = ptrtoint %ptr %r50 to %word
	%r53 = getelementptr [0 x %ptr], [0 x %ptr]* %r55, %word 0, %word %r54
	%r52 = load %ptr, %ptr* %r53
	%r59 = ptrtoint %ptr %r52 to %word
	%r58 = ptrtoint %ptr %r49 to %word
	%r57 = ashr %word %r59, %r58
	%r56 = inttoptr %word %r57 to %ptr
	%r60 = call %ptr @"new-<env>"(%ptr %r47, %ptr %r48, %ptr %r56)
	ret %ptr %r60
}
@str1173 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str1174 = private unnamed_addr constant [24 x i8] c"kernel assertion failed\00"
@str1175 = private unnamed_addr constant [2 x i8] c"\0A\00"
@str1179 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str1180 = private unnamed_addr constant [24 x i8] c"kernel assertion failed\00"
@str1181 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @"subr/environment-define"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t5 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t9 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	store %ptr %r11, %ptr* %t1
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 0 to %ptr
	%r20 = inttoptr %word 1 to %ptr
	%r21 = load %ptr, %ptr* %t1
	%r25 = bitcast %ptr %r21 to [0 x %ptr]*
	%r24 = ptrtoint %ptr %r20 to %word
	%r23 = getelementptr [0 x %ptr], [0 x %ptr]* %r25, %word 0, %word %r24
	%r22 = load %ptr, %ptr* %r23
	%r29 = bitcast %ptr %r22 to [0 x %ptr]*
	%r28 = ptrtoint %ptr %r19 to %word
	%r27 = getelementptr [0 x %ptr], [0 x %ptr]* %r29, %word 0, %word %r28
	%r26 = load %ptr, %ptr* %r27
	store %ptr %r26, %ptr* %t5
	%r30 = inttoptr %word 0 to %ptr
	store %ptr %r30, %ptr* %t6
	%r31 = load %ptr, %ptr* %t3
	%r32 = call %ptr @"get/type"(%ptr %r31)
	%r33 = inttoptr %word 14 to %ptr
	%r37 = ptrtoint %ptr %r33 to %word
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = icmp eq %word %r37, %r36
	%r34 = inttoptr i1 %r35 to %ptr
	store %ptr %r34, %ptr* %t6
	%r38 = inttoptr %word 0 to %ptr
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = ptrtoint %ptr %r34 to %word
	%r40 = icmp eq %word %r42, %r41
	%r39 = inttoptr i1 %r40 to %ptr
	%r44 = ptrtoint %ptr %r39 to %word
	%r43 = icmp ne %word %r44, 0
	br i1 %r43, label %L1172, label %L1171
L1172:
	%r45 = getelementptr [9 x i8], [9 x i8]* @str1173, %word 0, %word 0
	%r47 = call i32 (%ptr, ...) @printf(%ptr %r45)
	%r48 = sext i32 %r47 to %word
	%r49 = inttoptr %word %r48 to %ptr
	%r50 = getelementptr [24 x i8], [24 x i8]* @str1174, %word 0, %word 0
	%r52 = call i32 (%ptr, ...) @printf(%ptr %r50)
	%r53 = sext i32 %r52 to %word
	%r54 = inttoptr %word %r53 to %ptr
	%r55 = getelementptr [2 x i8], [2 x i8]* @str1175, %word 0, %word 0
	%r57 = call i32 (%ptr, ...) @printf(%ptr %r55)
	%r58 = sext i32 %r57 to %word
	%r59 = inttoptr %word %r58 to %ptr
	%r60 = call %ptr @die()
	store %ptr %r60, %ptr* %t6
	%r61 = inttoptr %word 0 to %ptr
	%r65 = ptrtoint %ptr %r61 to %word
	%r64 = ptrtoint %ptr %r60 to %word
	%r63 = icmp eq %word %r65, %r64
	%r62 = inttoptr i1 %r63 to %ptr
	%r67 = ptrtoint %ptr %r62 to %word
	%r66 = icmp ne %word %r67, 0
	br i1 %r66, label %L1176, label %L1171
L1176:
	br label %L1171
L1171:
	%r68 = load %ptr, %ptr* %t6
	%r69 = inttoptr %word 0 to %ptr
	store %ptr %r69, %ptr* %t6
	%r70 = load %ptr, %ptr* %t4
	%r71 = call %ptr @"get/type"(%ptr %r70)
	%r72 = inttoptr %word 18 to %ptr
	%r76 = ptrtoint %ptr %r72 to %word
	%r75 = ptrtoint %ptr %r71 to %word
	%r74 = icmp eq %word %r76, %r75
	%r73 = inttoptr i1 %r74 to %ptr
	store %ptr %r73, %ptr* %t6
	%r77 = inttoptr %word 0 to %ptr
	%r81 = ptrtoint %ptr %r77 to %word
	%r80 = ptrtoint %ptr %r73 to %word
	%r79 = icmp eq %word %r81, %r80
	%r78 = inttoptr i1 %r79 to %ptr
	%r83 = ptrtoint %ptr %r78 to %word
	%r82 = icmp ne %word %r83, 0
	br i1 %r82, label %L1178, label %L1177
L1178:
	%r84 = getelementptr [9 x i8], [9 x i8]* @str1179, %word 0, %word 0
	%r86 = call i32 (%ptr, ...) @printf(%ptr %r84)
	%r87 = sext i32 %r86 to %word
	%r88 = inttoptr %word %r87 to %ptr
	%r89 = getelementptr [24 x i8], [24 x i8]* @str1180, %word 0, %word 0
	%r91 = call i32 (%ptr, ...) @printf(%ptr %r89)
	%r92 = sext i32 %r91 to %word
	%r93 = inttoptr %word %r92 to %ptr
	%r94 = getelementptr [2 x i8], [2 x i8]* @str1181, %word 0, %word 0
	%r96 = call i32 (%ptr, ...) @printf(%ptr %r94)
	%r97 = sext i32 %r96 to %word
	%r98 = inttoptr %word %r97 to %ptr
	%r99 = call %ptr @die()
	store %ptr %r99, %ptr* %t6
	%r100 = inttoptr %word 0 to %ptr
	%r104 = ptrtoint %ptr %r100 to %word
	%r103 = ptrtoint %ptr %r99 to %word
	%r102 = icmp eq %word %r104, %r103
	%r101 = inttoptr i1 %r102 to %ptr
	%r106 = ptrtoint %ptr %r101 to %word
	%r105 = icmp ne %word %r106, 0
	br i1 %r105, label %L1182, label %L1177
L1182:
	br label %L1177
L1177:
	%r107 = load %ptr, %ptr* %t6
	%r108 = inttoptr %word 3 to %ptr
	%r109 = load %ptr, %ptr* %t3
	%r113 = bitcast %ptr %r109 to [0 x %ptr]*
	%r112 = ptrtoint %ptr %r108 to %word
	%r111 = getelementptr [0 x %ptr], [0 x %ptr]* %r113, %word 0, %word %r112
	%r110 = load %ptr, %ptr* %r111
	store %ptr %r110, %ptr* %t6
	%r114 = inttoptr %word 1 to %ptr
	%r115 = inttoptr %word 2 to %ptr
	%r116 = load %ptr, %ptr* %t3
	%r120 = bitcast %ptr %r116 to [0 x %ptr]*
	%r119 = ptrtoint %ptr %r115 to %word
	%r118 = getelementptr [0 x %ptr], [0 x %ptr]* %r120, %word 0, %word %r119
	%r117 = load %ptr, %ptr* %r118
	%r124 = ptrtoint %ptr %r117 to %word
	%r123 = ptrtoint %ptr %r114 to %word
	%r122 = ashr %word %r124, %r123
	%r121 = inttoptr %word %r122 to %ptr
	store %ptr %r121, %ptr* %t7
	%r125 = load %ptr, %ptr* %t4
	%r126 = load %ptr, %ptr* %t5
	%r127 = load %ptr, %ptr* %t3
	%r128 = load %ptr, %ptr* %t7
	%r129 = call %ptr @"new-<variable>"(%ptr %r125, %ptr %r126, %ptr %r127, %ptr %r128)
	store %ptr %r129, %ptr* %t8
	%r131 = getelementptr %ptr, %ptr* %t8, %word 0
	%r130 = bitcast %ptr* %r131 to %ptr
	%r132 = call %ptr @"gc/push-root"(%ptr %r130)
	%r133 = inttoptr %word 1 to %ptr
	%r134 = inttoptr %word 1 to %ptr
	%r135 = inttoptr %word 1 to %ptr
	%r136 = load %ptr, %ptr* %t7
	%r140 = ptrtoint %ptr %r136 to %word
	%r139 = ptrtoint %ptr %r135 to %word
	%r138 = add %word %r140, %r139
	%r137 = inttoptr %word %r138 to %ptr
	%r144 = ptrtoint %ptr %r137 to %word
	%r143 = ptrtoint %ptr %r134 to %word
	%r142 = shl %word %r144, %r143
	%r141 = inttoptr %word %r142 to %ptr
	%r148 = ptrtoint %ptr %r141 to %word
	%r147 = ptrtoint %ptr %r133 to %word
	%r146 = add %word %r148, %r147
	%r145 = inttoptr %word %r146 to %ptr
	%r149 = inttoptr %word 2 to %ptr
	%r150 = load %ptr, %ptr* %t3
	%r154 = bitcast %ptr %r150 to [0 x %ptr]*
	%r153 = ptrtoint %ptr %r149 to %word
	%r152 = getelementptr [0 x %ptr], [0 x %ptr]* %r154, %word 0, %word %r153
	store %ptr %r145, %ptr* %r152
	%r151 = bitcast %ptr %r145 to %ptr
	%r155 = load %ptr, %ptr* %t6
	%r156 = load %ptr, %ptr* %t8
	%r157 = call %ptr @"k/array-append"(%ptr %r155, %ptr %r156)
	%r158 = load %ptr, %ptr* %t8
	store %ptr %r158, %ptr* %t9
	%r160 = getelementptr %ptr, %ptr* %t8, %word 0
	%r159 = bitcast %ptr* %r160 to %ptr
	%r161 = call %ptr @"gc/pop-root"(%ptr %r159)
	%r162 = load %ptr, %ptr* %t9
	ret %ptr %r162
}
@str1185 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str1186 = private unnamed_addr constant [40 x i8] c"operator '-' called with zero arguments\00"
@str1187 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @"subr/-"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	store %ptr %r1, %ptr* %t3
	%r2 = load %ptr, %ptr* %t1
	%r3 = call %ptr @"get/type"(%ptr %r2)
	%r4 = inttoptr %word 19 to %ptr
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = icmp eq %word %r8, %r7
	%r5 = inttoptr i1 %r6 to %ptr
	store %ptr %r5, %ptr* %t3
	%r9 = inttoptr %word 0 to %ptr
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = ptrtoint %ptr %r5 to %word
	%r11 = icmp eq %word %r13, %r12
	%r10 = inttoptr i1 %r11 to %ptr
	%r15 = ptrtoint %ptr %r10 to %word
	%r14 = icmp ne %word %r15, 0
	br i1 %r14, label %L1184, label %L1183
L1184:
	%r16 = getelementptr [9 x i8], [9 x i8]* @str1185, %word 0, %word 0
	%r18 = call i32 (%ptr, ...) @printf(%ptr %r16)
	%r19 = sext i32 %r18 to %word
	%r20 = inttoptr %word %r19 to %ptr
	%r21 = getelementptr [40 x i8], [40 x i8]* @str1186, %word 0, %word 0
	%r23 = call i32 (%ptr, ...) @printf(%ptr %r21)
	%r24 = sext i32 %r23 to %word
	%r25 = inttoptr %word %r24 to %ptr
	%r26 = getelementptr [2 x i8], [2 x i8]* @str1187, %word 0, %word 0
	%r28 = call i32 (%ptr, ...) @printf(%ptr %r26)
	%r29 = sext i32 %r28 to %word
	%r30 = inttoptr %word %r29 to %ptr
	%r31 = call %ptr @die()
	store %ptr %r31, %ptr* %t3
	%r32 = inttoptr %word 0 to %ptr
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = icmp eq %word %r36, %r35
	%r33 = inttoptr i1 %r34 to %ptr
	%r38 = ptrtoint %ptr %r33 to %word
	%r37 = icmp ne %word %r38, 0
	br i1 %r37, label %L1188, label %L1183
L1188:
	br label %L1183
L1183:
	%r39 = load %ptr, %ptr* %t3
	%r40 = inttoptr %word 1 to %ptr
	%r41 = inttoptr %word 0 to %ptr
	%r42 = load %ptr, %ptr* %t1
	%r46 = bitcast %ptr %r42 to [0 x %ptr]*
	%r45 = ptrtoint %ptr %r41 to %word
	%r44 = getelementptr [0 x %ptr], [0 x %ptr]* %r46, %word 0, %word %r45
	%r43 = load %ptr, %ptr* %r44
	%r50 = ptrtoint %ptr %r43 to %word
	%r49 = ptrtoint %ptr %r40 to %word
	%r48 = ashr %word %r50, %r49
	%r47 = inttoptr %word %r48 to %ptr
	store %ptr %r47, %ptr* %t3
	%r51 = inttoptr %word 1 to %ptr
	%r52 = load %ptr, %ptr* %t1
	%r56 = bitcast %ptr %r52 to [0 x %ptr]*
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = getelementptr [0 x %ptr], [0 x %ptr]* %r56, %word 0, %word %r55
	%r53 = load %ptr, %ptr* %r54
	store %ptr %r53, %ptr* %t4
	%r57 = load %ptr, %ptr* %t4
	%r58 = call %ptr @"get/type"(%ptr %r57)
	%r59 = inttoptr %word 19 to %ptr
	%r63 = ptrtoint %ptr %r59 to %word
	%r62 = ptrtoint %ptr %r58 to %word
	%r61 = icmp eq %word %r63, %r62
	%r60 = inttoptr i1 %r61 to %ptr
	%r65 = ptrtoint %ptr %r60 to %word
	%r64 = icmp ne %word %r65, 0
	br i1 %r64, label %L1189, label %L1190
L1189:
	br label %L1193
L1192:
	br label %L1193
L1193:
	%r66 = inttoptr %word 1 to %ptr
	%r67 = inttoptr %word 0 to %ptr
	%r68 = load %ptr, %ptr* %t4
	%r72 = bitcast %ptr %r68 to [0 x %ptr]*
	%r71 = ptrtoint %ptr %r67 to %word
	%r70 = getelementptr [0 x %ptr], [0 x %ptr]* %r72, %word 0, %word %r71
	%r69 = load %ptr, %ptr* %r70
	%r76 = ptrtoint %ptr %r69 to %word
	%r75 = ptrtoint %ptr %r66 to %word
	%r74 = ashr %word %r76, %r75
	%r73 = inttoptr %word %r74 to %ptr
	%r77 = load %ptr, %ptr* %t3
	%r81 = ptrtoint %ptr %r77 to %word
	%r80 = ptrtoint %ptr %r73 to %word
	%r79 = sub %word %r81, %r80
	%r78 = inttoptr %word %r79 to %ptr
	store %ptr %r78, %ptr* %t3
	%r82 = inttoptr %word 1 to %ptr
	%r83 = load %ptr, %ptr* %t4
	%r87 = bitcast %ptr %r83 to [0 x %ptr]*
	%r86 = ptrtoint %ptr %r82 to %word
	%r85 = getelementptr [0 x %ptr], [0 x %ptr]* %r87, %word 0, %word %r86
	%r84 = load %ptr, %ptr* %r85
	store %ptr %r84, %ptr* %t4
	%r88 = call %ptr @"get/type"(%ptr %r84)
	%r89 = inttoptr %word 19 to %ptr
	%r93 = ptrtoint %ptr %r89 to %word
	%r92 = ptrtoint %ptr %r88 to %word
	%r91 = icmp eq %word %r93, %r92
	%r90 = inttoptr i1 %r91 to %ptr
	%r95 = ptrtoint %ptr %r90 to %word
	%r94 = icmp ne %word %r95, 0
	br i1 %r94, label %L1192, label %L1194
L1194:
	store %ptr %r90, %ptr* %t5
	br label %L1191
L1190:
	%r96 = load %ptr, %ptr* %t3
	%r99 = ptrtoint %ptr %r96 to %word
	%r98 = sub nsw %word 0, %r99
	%r97 = inttoptr %word %r98 to %ptr
	store %ptr %r97, %ptr* %t3
	store %ptr %r97, %ptr* %t5
	br label %L1191
L1191:
	%r100 = load %ptr, %ptr* %t5
	%r101 = inttoptr %word 1 to %ptr
	%r102 = inttoptr %word 1 to %ptr
	%r103 = load %ptr, %ptr* %t3
	%r107 = ptrtoint %ptr %r103 to %word
	%r106 = ptrtoint %ptr %r102 to %word
	%r105 = shl %word %r107, %r106
	%r104 = inttoptr %word %r105 to %ptr
	%r111 = ptrtoint %ptr %r104 to %word
	%r110 = ptrtoint %ptr %r101 to %word
	%r109 = add %word %r111, %r110
	%r108 = inttoptr %word %r109 to %ptr
	ret %ptr %r108
}
define %ptr @"subr/+"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	store %ptr %r1, %ptr* %t3
	%r2 = inttoptr %word 0 to %ptr
	store %ptr %r2, %ptr* %t4
	%r3 = load %ptr, %ptr* %t1
	%r4 = call %ptr @"get/type"(%ptr %r3)
	%r5 = inttoptr %word 19 to %ptr
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = icmp eq %word %r9, %r8
	%r6 = inttoptr i1 %r7 to %ptr
	%r11 = ptrtoint %ptr %r6 to %word
	%r10 = icmp ne %word %r11, 0
	br i1 %r10, label %L1195, label %L1196
L1195:
	%r12 = inttoptr %word 1 to %ptr
	%r13 = inttoptr %word 0 to %ptr
	%r14 = load %ptr, %ptr* %t1
	%r18 = bitcast %ptr %r14 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r13 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	%r22 = ptrtoint %ptr %r15 to %word
	%r21 = ptrtoint %ptr %r12 to %word
	%r20 = ashr %word %r22, %r21
	%r19 = inttoptr %word %r20 to %ptr
	store %ptr %r19, %ptr* %t3
	%r23 = inttoptr %word 1 to %ptr
	%r24 = load %ptr, %ptr* %t1
	%r28 = bitcast %ptr %r24 to [0 x %ptr]*
	%r27 = ptrtoint %ptr %r23 to %word
	%r26 = getelementptr [0 x %ptr], [0 x %ptr]* %r28, %word 0, %word %r27
	%r25 = load %ptr, %ptr* %r26
	store %ptr %r25, %ptr* %t4
	store %ptr %r25, %ptr* %t5
	br label %L1197
L1196:
	%r29 = inttoptr %word 0 to %ptr
	store %ptr %r29, %ptr* %t5
	br label %L1197
L1197:
	%r30 = load %ptr, %ptr* %t5
	br label %L1199
L1198:
	%r31 = inttoptr %word 1 to %ptr
	%r32 = inttoptr %word 0 to %ptr
	%r33 = load %ptr, %ptr* %t4
	%r37 = bitcast %ptr %r33 to [0 x %ptr]*
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = getelementptr [0 x %ptr], [0 x %ptr]* %r37, %word 0, %word %r36
	%r34 = load %ptr, %ptr* %r35
	%r41 = ptrtoint %ptr %r34 to %word
	%r40 = ptrtoint %ptr %r31 to %word
	%r39 = ashr %word %r41, %r40
	%r38 = inttoptr %word %r39 to %ptr
	%r42 = load %ptr, %ptr* %t3
	%r46 = ptrtoint %ptr %r42 to %word
	%r45 = ptrtoint %ptr %r38 to %word
	%r44 = add %word %r46, %r45
	%r43 = inttoptr %word %r44 to %ptr
	store %ptr %r43, %ptr* %t3
	%r47 = inttoptr %word 1 to %ptr
	%r48 = load %ptr, %ptr* %t4
	%r52 = bitcast %ptr %r48 to [0 x %ptr]*
	%r51 = ptrtoint %ptr %r47 to %word
	%r50 = getelementptr [0 x %ptr], [0 x %ptr]* %r52, %word 0, %word %r51
	%r49 = load %ptr, %ptr* %r50
	store %ptr %r49, %ptr* %t4
	br label %L1199
L1199:
	%r53 = load %ptr, %ptr* %t4
	%r54 = call %ptr @"get/type"(%ptr %r53)
	%r55 = inttoptr %word 19 to %ptr
	%r59 = ptrtoint %ptr %r55 to %word
	%r58 = ptrtoint %ptr %r54 to %word
	%r57 = icmp eq %word %r59, %r58
	%r56 = inttoptr i1 %r57 to %ptr
	%r61 = ptrtoint %ptr %r56 to %word
	%r60 = icmp ne %word %r61, 0
	br i1 %r60, label %L1198, label %L1200
L1200:
	%r62 = inttoptr %word 1 to %ptr
	%r63 = inttoptr %word 1 to %ptr
	%r64 = load %ptr, %ptr* %t3
	%r68 = ptrtoint %ptr %r64 to %word
	%r67 = ptrtoint %ptr %r63 to %word
	%r66 = shl %word %r68, %r67
	%r65 = inttoptr %word %r66 to %ptr
	%r72 = ptrtoint %ptr %r65 to %word
	%r71 = ptrtoint %ptr %r62 to %word
	%r70 = add %word %r72, %r71
	%r69 = inttoptr %word %r70 to %ptr
	ret %ptr %r69
}
@str1203 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str1204 = private unnamed_addr constant [40 x i8] c"operator '/' called with zero arguments\00"
@str1205 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @"subr//"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	store %ptr %r1, %ptr* %t3
	%r2 = load %ptr, %ptr* %t1
	%r3 = call %ptr @"get/type"(%ptr %r2)
	%r4 = inttoptr %word 19 to %ptr
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = icmp eq %word %r8, %r7
	%r5 = inttoptr i1 %r6 to %ptr
	store %ptr %r5, %ptr* %t3
	%r9 = inttoptr %word 0 to %ptr
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = ptrtoint %ptr %r5 to %word
	%r11 = icmp eq %word %r13, %r12
	%r10 = inttoptr i1 %r11 to %ptr
	%r15 = ptrtoint %ptr %r10 to %word
	%r14 = icmp ne %word %r15, 0
	br i1 %r14, label %L1202, label %L1201
L1202:
	%r16 = getelementptr [9 x i8], [9 x i8]* @str1203, %word 0, %word 0
	%r18 = call i32 (%ptr, ...) @printf(%ptr %r16)
	%r19 = sext i32 %r18 to %word
	%r20 = inttoptr %word %r19 to %ptr
	%r21 = getelementptr [40 x i8], [40 x i8]* @str1204, %word 0, %word 0
	%r23 = call i32 (%ptr, ...) @printf(%ptr %r21)
	%r24 = sext i32 %r23 to %word
	%r25 = inttoptr %word %r24 to %ptr
	%r26 = getelementptr [2 x i8], [2 x i8]* @str1205, %word 0, %word 0
	%r28 = call i32 (%ptr, ...) @printf(%ptr %r26)
	%r29 = sext i32 %r28 to %word
	%r30 = inttoptr %word %r29 to %ptr
	%r31 = call %ptr @die()
	store %ptr %r31, %ptr* %t3
	%r32 = inttoptr %word 0 to %ptr
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = icmp eq %word %r36, %r35
	%r33 = inttoptr i1 %r34 to %ptr
	%r38 = ptrtoint %ptr %r33 to %word
	%r37 = icmp ne %word %r38, 0
	br i1 %r37, label %L1206, label %L1201
L1206:
	br label %L1201
L1201:
	%r39 = load %ptr, %ptr* %t3
	%r40 = inttoptr %word 1 to %ptr
	%r41 = inttoptr %word 0 to %ptr
	%r42 = load %ptr, %ptr* %t1
	%r46 = bitcast %ptr %r42 to [0 x %ptr]*
	%r45 = ptrtoint %ptr %r41 to %word
	%r44 = getelementptr [0 x %ptr], [0 x %ptr]* %r46, %word 0, %word %r45
	%r43 = load %ptr, %ptr* %r44
	%r50 = ptrtoint %ptr %r43 to %word
	%r49 = ptrtoint %ptr %r40 to %word
	%r48 = ashr %word %r50, %r49
	%r47 = inttoptr %word %r48 to %ptr
	store %ptr %r47, %ptr* %t3
	%r51 = inttoptr %word 1 to %ptr
	%r52 = load %ptr, %ptr* %t1
	%r56 = bitcast %ptr %r52 to [0 x %ptr]*
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = getelementptr [0 x %ptr], [0 x %ptr]* %r56, %word 0, %word %r55
	%r53 = load %ptr, %ptr* %r54
	store %ptr %r53, %ptr* %t4
	%r57 = load %ptr, %ptr* %t4
	%r58 = call %ptr @"get/type"(%ptr %r57)
	%r59 = inttoptr %word 19 to %ptr
	%r63 = ptrtoint %ptr %r59 to %word
	%r62 = ptrtoint %ptr %r58 to %word
	%r61 = icmp eq %word %r63, %r62
	%r60 = inttoptr i1 %r61 to %ptr
	%r65 = ptrtoint %ptr %r60 to %word
	%r64 = icmp ne %word %r65, 0
	br i1 %r64, label %L1207, label %L1208
L1207:
	br label %L1211
L1210:
	br label %L1211
L1211:
	%r66 = inttoptr %word 1 to %ptr
	%r67 = inttoptr %word 0 to %ptr
	%r68 = load %ptr, %ptr* %t4
	%r72 = bitcast %ptr %r68 to [0 x %ptr]*
	%r71 = ptrtoint %ptr %r67 to %word
	%r70 = getelementptr [0 x %ptr], [0 x %ptr]* %r72, %word 0, %word %r71
	%r69 = load %ptr, %ptr* %r70
	%r76 = ptrtoint %ptr %r69 to %word
	%r75 = ptrtoint %ptr %r66 to %word
	%r74 = ashr %word %r76, %r75
	%r73 = inttoptr %word %r74 to %ptr
	%r77 = load %ptr, %ptr* %t3
	%r81 = ptrtoint %ptr %r77 to %word
	%r80 = ptrtoint %ptr %r73 to %word
	%r79 = sdiv %word %r81, %r80
	%r78 = inttoptr %word %r79 to %ptr
	store %ptr %r78, %ptr* %t3
	%r82 = inttoptr %word 1 to %ptr
	%r83 = load %ptr, %ptr* %t4
	%r87 = bitcast %ptr %r83 to [0 x %ptr]*
	%r86 = ptrtoint %ptr %r82 to %word
	%r85 = getelementptr [0 x %ptr], [0 x %ptr]* %r87, %word 0, %word %r86
	%r84 = load %ptr, %ptr* %r85
	store %ptr %r84, %ptr* %t4
	%r88 = call %ptr @"get/type"(%ptr %r84)
	%r89 = inttoptr %word 19 to %ptr
	%r93 = ptrtoint %ptr %r89 to %word
	%r92 = ptrtoint %ptr %r88 to %word
	%r91 = icmp eq %word %r93, %r92
	%r90 = inttoptr i1 %r91 to %ptr
	%r95 = ptrtoint %ptr %r90 to %word
	%r94 = icmp ne %word %r95, 0
	br i1 %r94, label %L1210, label %L1212
L1212:
	store %ptr %r90, %ptr* %t5
	br label %L1209
L1208:
	%r96 = load %ptr, %ptr* %t3
	%r97 = inttoptr %word 1 to %ptr
	%r101 = ptrtoint %ptr %r97 to %word
	%r100 = ptrtoint %ptr %r96 to %word
	%r99 = sdiv %word %r101, %r100
	%r98 = inttoptr %word %r99 to %ptr
	store %ptr %r98, %ptr* %t3
	store %ptr %r98, %ptr* %t5
	br label %L1209
L1209:
	%r102 = load %ptr, %ptr* %t5
	%r103 = inttoptr %word 1 to %ptr
	%r104 = inttoptr %word 1 to %ptr
	%r105 = load %ptr, %ptr* %t3
	%r109 = ptrtoint %ptr %r105 to %word
	%r108 = ptrtoint %ptr %r104 to %word
	%r107 = shl %word %r109, %r108
	%r106 = inttoptr %word %r107 to %ptr
	%r113 = ptrtoint %ptr %r106 to %word
	%r112 = ptrtoint %ptr %r103 to %word
	%r111 = add %word %r113, %r112
	%r110 = inttoptr %word %r111 to %ptr
	ret %ptr %r110
}
define %ptr @"subr/*"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 1 to %ptr
	store %ptr %r1, %ptr* %t3
	%r2 = inttoptr %word 0 to %ptr
	store %ptr %r2, %ptr* %t4
	%r3 = load %ptr, %ptr* %t1
	%r4 = call %ptr @"get/type"(%ptr %r3)
	%r5 = inttoptr %word 19 to %ptr
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = icmp eq %word %r9, %r8
	%r6 = inttoptr i1 %r7 to %ptr
	%r11 = ptrtoint %ptr %r6 to %word
	%r10 = icmp ne %word %r11, 0
	br i1 %r10, label %L1213, label %L1214
L1213:
	%r12 = inttoptr %word 1 to %ptr
	%r13 = inttoptr %word 0 to %ptr
	%r14 = load %ptr, %ptr* %t1
	%r18 = bitcast %ptr %r14 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r13 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	%r22 = ptrtoint %ptr %r15 to %word
	%r21 = ptrtoint %ptr %r12 to %word
	%r20 = ashr %word %r22, %r21
	%r19 = inttoptr %word %r20 to %ptr
	store %ptr %r19, %ptr* %t3
	%r23 = inttoptr %word 1 to %ptr
	%r24 = load %ptr, %ptr* %t1
	%r28 = bitcast %ptr %r24 to [0 x %ptr]*
	%r27 = ptrtoint %ptr %r23 to %word
	%r26 = getelementptr [0 x %ptr], [0 x %ptr]* %r28, %word 0, %word %r27
	%r25 = load %ptr, %ptr* %r26
	store %ptr %r25, %ptr* %t4
	store %ptr %r25, %ptr* %t5
	br label %L1215
L1214:
	%r29 = inttoptr %word 0 to %ptr
	store %ptr %r29, %ptr* %t5
	br label %L1215
L1215:
	%r30 = load %ptr, %ptr* %t5
	br label %L1217
L1216:
	%r31 = inttoptr %word 1 to %ptr
	%r32 = inttoptr %word 0 to %ptr
	%r33 = load %ptr, %ptr* %t4
	%r37 = bitcast %ptr %r33 to [0 x %ptr]*
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = getelementptr [0 x %ptr], [0 x %ptr]* %r37, %word 0, %word %r36
	%r34 = load %ptr, %ptr* %r35
	%r41 = ptrtoint %ptr %r34 to %word
	%r40 = ptrtoint %ptr %r31 to %word
	%r39 = ashr %word %r41, %r40
	%r38 = inttoptr %word %r39 to %ptr
	%r42 = load %ptr, %ptr* %t3
	%r46 = ptrtoint %ptr %r42 to %word
	%r45 = ptrtoint %ptr %r38 to %word
	%r44 = mul %word %r46, %r45
	%r43 = inttoptr %word %r44 to %ptr
	store %ptr %r43, %ptr* %t3
	%r47 = inttoptr %word 1 to %ptr
	%r48 = load %ptr, %ptr* %t4
	%r52 = bitcast %ptr %r48 to [0 x %ptr]*
	%r51 = ptrtoint %ptr %r47 to %word
	%r50 = getelementptr [0 x %ptr], [0 x %ptr]* %r52, %word 0, %word %r51
	%r49 = load %ptr, %ptr* %r50
	store %ptr %r49, %ptr* %t4
	br label %L1217
L1217:
	%r53 = load %ptr, %ptr* %t4
	%r54 = call %ptr @"get/type"(%ptr %r53)
	%r55 = inttoptr %word 19 to %ptr
	%r59 = ptrtoint %ptr %r55 to %word
	%r58 = ptrtoint %ptr %r54 to %word
	%r57 = icmp eq %word %r59, %r58
	%r56 = inttoptr i1 %r57 to %ptr
	%r61 = ptrtoint %ptr %r56 to %word
	%r60 = icmp ne %word %r61, 0
	br i1 %r60, label %L1216, label %L1218
L1218:
	%r62 = inttoptr %word 1 to %ptr
	%r63 = inttoptr %word 1 to %ptr
	%r64 = load %ptr, %ptr* %t3
	%r68 = ptrtoint %ptr %r64 to %word
	%r67 = ptrtoint %ptr %r63 to %word
	%r66 = shl %word %r68, %r67
	%r65 = inttoptr %word %r66 to %ptr
	%r72 = ptrtoint %ptr %r65 to %word
	%r71 = ptrtoint %ptr %r62 to %word
	%r70 = add %word %r72, %r71
	%r69 = inttoptr %word %r70 to %ptr
	ret %ptr %r69
}
define %ptr @"subr/bitwise-and"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 0 to %ptr
	%r20 = inttoptr %word 1 to %ptr
	%r21 = inttoptr %word 1 to %ptr
	%r22 = inttoptr %word 1 to %ptr
	%r23 = load %ptr, %ptr* %t4
	%r27 = ptrtoint %ptr %r23 to %word
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ashr %word %r27, %r26
	%r24 = inttoptr %word %r25 to %ptr
	%r28 = inttoptr %word 1 to %ptr
	%r29 = load %ptr, %ptr* %t3
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = ashr %word %r33, %r32
	%r30 = inttoptr %word %r31 to %ptr
	%r37 = ptrtoint %ptr %r30 to %word
	%r36 = ptrtoint %ptr %r24 to %word
	%r35 = and %word %r37, %r36
	%r34 = inttoptr %word %r35 to %ptr
	%r41 = ptrtoint %ptr %r34 to %word
	%r40 = ptrtoint %ptr %r21 to %word
	%r39 = shl %word %r41, %r40
	%r38 = inttoptr %word %r39 to %ptr
	%r45 = ptrtoint %ptr %r38 to %word
	%r44 = ptrtoint %ptr %r20 to %word
	%r43 = add %word %r45, %r44
	%r42 = inttoptr %word %r43 to %ptr
	ret %ptr %r42
}
define %ptr @"subr/bitwise-or"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 0 to %ptr
	%r20 = inttoptr %word 1 to %ptr
	%r21 = inttoptr %word 1 to %ptr
	%r22 = inttoptr %word 1 to %ptr
	%r23 = load %ptr, %ptr* %t4
	%r27 = ptrtoint %ptr %r23 to %word
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ashr %word %r27, %r26
	%r24 = inttoptr %word %r25 to %ptr
	%r28 = inttoptr %word 1 to %ptr
	%r29 = load %ptr, %ptr* %t3
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = ashr %word %r33, %r32
	%r30 = inttoptr %word %r31 to %ptr
	%r37 = ptrtoint %ptr %r30 to %word
	%r36 = ptrtoint %ptr %r24 to %word
	%r35 = or %word %r37, %r36
	%r34 = inttoptr %word %r35 to %ptr
	%r41 = ptrtoint %ptr %r34 to %word
	%r40 = ptrtoint %ptr %r21 to %word
	%r39 = shl %word %r41, %r40
	%r38 = inttoptr %word %r39 to %ptr
	%r45 = ptrtoint %ptr %r38 to %word
	%r44 = ptrtoint %ptr %r20 to %word
	%r43 = add %word %r45, %r44
	%r42 = inttoptr %word %r43 to %ptr
	ret %ptr %r42
}
define %ptr @"subr/bitwise-xor"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 0 to %ptr
	%r20 = inttoptr %word 1 to %ptr
	%r21 = inttoptr %word 1 to %ptr
	%r22 = inttoptr %word 1 to %ptr
	%r23 = load %ptr, %ptr* %t4
	%r27 = ptrtoint %ptr %r23 to %word
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ashr %word %r27, %r26
	%r24 = inttoptr %word %r25 to %ptr
	%r28 = inttoptr %word 1 to %ptr
	%r29 = load %ptr, %ptr* %t3
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = ashr %word %r33, %r32
	%r30 = inttoptr %word %r31 to %ptr
	%r37 = ptrtoint %ptr %r30 to %word
	%r36 = ptrtoint %ptr %r24 to %word
	%r35 = xor %word %r37, %r36
	%r34 = inttoptr %word %r35 to %ptr
	%r41 = ptrtoint %ptr %r34 to %word
	%r40 = ptrtoint %ptr %r21 to %word
	%r39 = shl %word %r41, %r40
	%r38 = inttoptr %word %r39 to %ptr
	%r45 = ptrtoint %ptr %r38 to %word
	%r44 = ptrtoint %ptr %r20 to %word
	%r43 = add %word %r45, %r44
	%r42 = inttoptr %word %r43 to %ptr
	ret %ptr %r42
}
define %ptr @"subr/bitwise-not"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = inttoptr %word 1 to %ptr
	%r11 = inttoptr %word -1 to %ptr
	%r12 = inttoptr %word 1 to %ptr
	%r13 = load %ptr, %ptr* %t3
	%r17 = ptrtoint %ptr %r13 to %word
	%r16 = ptrtoint %ptr %r12 to %word
	%r15 = ashr %word %r17, %r16
	%r14 = inttoptr %word %r15 to %ptr
	%r21 = ptrtoint %ptr %r14 to %word
	%r20 = ptrtoint %ptr %r11 to %word
	%r19 = xor %word %r21, %r20
	%r18 = inttoptr %word %r19 to %ptr
	%r25 = ptrtoint %ptr %r18 to %word
	%r24 = ptrtoint %ptr %r10 to %word
	%r23 = shl %word %r25, %r24
	%r22 = inttoptr %word %r23 to %ptr
	%r29 = ptrtoint %ptr %r22 to %word
	%r28 = ptrtoint %ptr %r9 to %word
	%r27 = add %word %r29, %r28
	%r26 = inttoptr %word %r27 to %ptr
	ret %ptr %r26
}
define %ptr @"subr/bitwise-shift"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t9 = alloca %ptr
	%t10 = alloca %ptr
	%t11 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 1 to %ptr
	%r3 = inttoptr %word 0 to %ptr
	%r4 = load %ptr, %ptr* %t1
	%r8 = bitcast %ptr %r4 to [0 x %ptr]*
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = getelementptr [0 x %ptr], [0 x %ptr]* %r8, %word 0, %word %r7
	%r5 = load %ptr, %ptr* %r6
	%r12 = ptrtoint %ptr %r5 to %word
	%r11 = ptrtoint %ptr %r2 to %word
	%r10 = ashr %word %r12, %r11
	%r9 = inttoptr %word %r10 to %ptr
	store %ptr %r9, %ptr* %t3
	%r13 = inttoptr %word 1 to %ptr
	%r14 = inttoptr %word 0 to %ptr
	%r15 = inttoptr %word 1 to %ptr
	%r16 = load %ptr, %ptr* %t1
	%r20 = bitcast %ptr %r16 to [0 x %ptr]*
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = getelementptr [0 x %ptr], [0 x %ptr]* %r20, %word 0, %word %r19
	%r17 = load %ptr, %ptr* %r18
	%r24 = bitcast %ptr %r17 to [0 x %ptr]*
	%r23 = ptrtoint %ptr %r14 to %word
	%r22 = getelementptr [0 x %ptr], [0 x %ptr]* %r24, %word 0, %word %r23
	%r21 = load %ptr, %ptr* %r22
	%r28 = ptrtoint %ptr %r21 to %word
	%r27 = ptrtoint %ptr %r13 to %word
	%r26 = ashr %word %r28, %r27
	%r25 = inttoptr %word %r26 to %ptr
	store %ptr %r25, %ptr* %t4
	%r29 = inttoptr %word 31 to %ptr
	store %ptr %r29, %ptr* %t5
	%r30 = inttoptr %word 1 to %ptr
	%r31 = load %ptr, %ptr* %t5
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = ptrtoint %ptr %r30 to %word
	%r33 = sub %word %r35, %r34
	%r32 = inttoptr %word %r33 to %ptr
	store %ptr %r32, %ptr* %t6
	%r36 = inttoptr %word 1 to %ptr
	%r37 = inttoptr %word 1 to %ptr
	%r38 = load %ptr, %ptr* %t4
	%r39 = load %ptr, %ptr* %t6
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = icmp slt %word %r43, %r42
	%r40 = inttoptr i1 %r41 to %ptr
	%r45 = ptrtoint %ptr %r40 to %word
	%r44 = icmp ne %word %r45, 0
	br i1 %r44, label %L1219, label %L1220
L1219:
	%r46 = inttoptr %word 0 to %ptr
	store %ptr %r46, %ptr* %t7
	br label %L1221
L1220:
	%r47 = load %ptr, %ptr* %t4
	%r48 = inttoptr %word 0 to %ptr
	%r52 = ptrtoint %ptr %r48 to %word
	%r51 = ptrtoint %ptr %r47 to %word
	%r50 = icmp slt %word %r52, %r51
	%r49 = inttoptr i1 %r50 to %ptr
	%r54 = ptrtoint %ptr %r49 to %word
	%r53 = icmp ne %word %r54, 0
	br i1 %r53, label %L1222, label %L1223
L1222:
	%r55 = load %ptr, %ptr* %t4
	%r56 = load %ptr, %ptr* %t3
	%r60 = ptrtoint %ptr %r56 to %word
	%r59 = ptrtoint %ptr %r55 to %word
	%r58 = shl %word %r60, %r59
	%r57 = inttoptr %word %r58 to %ptr
	store %ptr %r57, %ptr* %t8
	br label %L1224
L1223:
	%r61 = load %ptr, %ptr* %t6
	%r64 = ptrtoint %ptr %r61 to %word
	%r63 = sub nsw %word 0, %r64
	%r62 = inttoptr %word %r63 to %ptr
	%r65 = load %ptr, %ptr* %t4
	%r69 = ptrtoint %ptr %r65 to %word
	%r68 = ptrtoint %ptr %r62 to %word
	%r67 = icmp slt %word %r69, %r68
	%r66 = inttoptr i1 %r67 to %ptr
	%r71 = ptrtoint %ptr %r66 to %word
	%r70 = icmp ne %word %r71, 0
	br i1 %r70, label %L1225, label %L1226
L1225:
	%r72 = inttoptr %word 0 to %ptr
	%r73 = load %ptr, %ptr* %t3
	%r77 = ptrtoint %ptr %r73 to %word
	%r76 = ptrtoint %ptr %r72 to %word
	%r75 = icmp slt %word %r77, %r76
	%r74 = inttoptr i1 %r75 to %ptr
	%r79 = ptrtoint %ptr %r74 to %word
	%r78 = icmp ne %word %r79, 0
	br i1 %r78, label %L1228, label %L1229
L1228:
	%r80 = inttoptr %word -1 to %ptr
	store %ptr %r80, %ptr* %t10
	br label %L1230
L1229:
	%r81 = inttoptr %word 0 to %ptr
	store %ptr %r81, %ptr* %t10
	br label %L1230
L1230:
	%r82 = load %ptr, %ptr* %t10
	store %ptr %r82, %ptr* %t9
	br label %L1227
L1226:
	%r83 = inttoptr %word 0 to %ptr
	%r84 = load %ptr, %ptr* %t4
	%r88 = ptrtoint %ptr %r84 to %word
	%r87 = ptrtoint %ptr %r83 to %word
	%r86 = icmp slt %word %r88, %r87
	%r85 = inttoptr i1 %r86 to %ptr
	%r90 = ptrtoint %ptr %r85 to %word
	%r89 = icmp ne %word %r90, 0
	br i1 %r89, label %L1231, label %L1232
L1231:
	%r91 = load %ptr, %ptr* %t4
	%r94 = ptrtoint %ptr %r91 to %word
	%r93 = sub nsw %word 0, %r94
	%r92 = inttoptr %word %r93 to %ptr
	%r95 = load %ptr, %ptr* %t3
	%r99 = ptrtoint %ptr %r95 to %word
	%r98 = ptrtoint %ptr %r92 to %word
	%r97 = ashr %word %r99, %r98
	%r96 = inttoptr %word %r97 to %ptr
	store %ptr %r96, %ptr* %t10
	br label %L1233
L1232:
	%r100 = load %ptr, %ptr* %t4
	%r101 = inttoptr %word 0 to %ptr
	%r105 = ptrtoint %ptr %r101 to %word
	%r104 = ptrtoint %ptr %r100 to %word
	%r103 = icmp eq %word %r105, %r104
	%r102 = inttoptr i1 %r103 to %ptr
	%r107 = ptrtoint %ptr %r102 to %word
	%r106 = icmp ne %word %r107, 0
	br i1 %r106, label %L1234, label %L1235
L1234:
	%r108 = load %ptr, %ptr* %t3
	store %ptr %r108, %ptr* %t11
	br label %L1236
L1235:
	%r109 = inttoptr %word 0 to %ptr
	store %ptr %r109, %ptr* %t11
	br label %L1236
L1236:
	%r110 = load %ptr, %ptr* %t11
	store %ptr %r110, %ptr* %t10
	br label %L1233
L1233:
	%r111 = load %ptr, %ptr* %t10
	store %ptr %r111, %ptr* %t9
	br label %L1227
L1227:
	%r112 = load %ptr, %ptr* %t9
	store %ptr %r112, %ptr* %t8
	br label %L1224
L1224:
	%r113 = load %ptr, %ptr* %t8
	store %ptr %r113, %ptr* %t7
	br label %L1221
L1221:
	%r114 = load %ptr, %ptr* %t7
	%r118 = ptrtoint %ptr %r114 to %word
	%r117 = ptrtoint %ptr %r37 to %word
	%r116 = shl %word %r118, %r117
	%r115 = inttoptr %word %r116 to %ptr
	%r122 = ptrtoint %ptr %r115 to %word
	%r121 = ptrtoint %ptr %r36 to %word
	%r120 = add %word %r122, %r121
	%r119 = inttoptr %word %r120 to %ptr
	ret %ptr %r119
}
define %ptr @"subr/<"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 0 to %ptr
	%r20 = inttoptr %word 1 to %ptr
	store %ptr %r20, %ptr* %t5
	%r21 = inttoptr %word 1 to %ptr
	%r22 = load %ptr, %ptr* %t4
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ashr %word %r26, %r25
	%r23 = inttoptr %word %r24 to %ptr
	%r27 = inttoptr %word 1 to %ptr
	%r28 = load %ptr, %ptr* %t3
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = ptrtoint %ptr %r27 to %word
	%r30 = ashr %word %r32, %r31
	%r29 = inttoptr %word %r30 to %ptr
	%r36 = ptrtoint %ptr %r29 to %word
	%r35 = ptrtoint %ptr %r23 to %word
	%r34 = icmp slt %word %r36, %r35
	%r33 = inttoptr i1 %r34 to %ptr
	store %ptr %r33, %ptr* %t5
	%r37 = inttoptr %word 0 to %ptr
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = ptrtoint %ptr %r33 to %word
	%r39 = icmp eq %word %r41, %r40
	%r38 = inttoptr i1 %r39 to %ptr
	%r43 = ptrtoint %ptr %r38 to %word
	%r42 = icmp ne %word %r43, 0
	br i1 %r42, label %L1237, label %L1238
L1238:
	%r44 = load %ptr, %ptr* @"symbol/true"
	store %ptr %r44, %ptr* %t5
	%r45 = inttoptr %word 0 to %ptr
	%r49 = ptrtoint %ptr %r45 to %word
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = icmp eq %word %r49, %r48
	%r46 = inttoptr i1 %r47 to %ptr
	%r51 = ptrtoint %ptr %r46 to %word
	%r50 = icmp ne %word %r51, 0
	br i1 %r50, label %L1237, label %L1239
L1239:
	br label %L1237
L1237:
	%r52 = load %ptr, %ptr* %t5
	ret %ptr %r52
}
define %ptr @"subr/<="(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 0 to %ptr
	%r20 = inttoptr %word 1 to %ptr
	store %ptr %r20, %ptr* %t5
	%r21 = inttoptr %word 1 to %ptr
	%r22 = load %ptr, %ptr* %t4
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ashr %word %r26, %r25
	%r23 = inttoptr %word %r24 to %ptr
	%r27 = inttoptr %word 1 to %ptr
	%r28 = load %ptr, %ptr* %t3
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = ptrtoint %ptr %r27 to %word
	%r30 = ashr %word %r32, %r31
	%r29 = inttoptr %word %r30 to %ptr
	%r36 = ptrtoint %ptr %r29 to %word
	%r35 = ptrtoint %ptr %r23 to %word
	%r34 = icmp sle %word %r36, %r35
	%r33 = inttoptr i1 %r34 to %ptr
	store %ptr %r33, %ptr* %t5
	%r37 = inttoptr %word 0 to %ptr
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = ptrtoint %ptr %r33 to %word
	%r39 = icmp eq %word %r41, %r40
	%r38 = inttoptr i1 %r39 to %ptr
	%r43 = ptrtoint %ptr %r38 to %word
	%r42 = icmp ne %word %r43, 0
	br i1 %r42, label %L1240, label %L1241
L1241:
	%r44 = load %ptr, %ptr* @"symbol/true"
	store %ptr %r44, %ptr* %t5
	%r45 = inttoptr %word 0 to %ptr
	%r49 = ptrtoint %ptr %r45 to %word
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = icmp eq %word %r49, %r48
	%r46 = inttoptr i1 %r47 to %ptr
	%r51 = ptrtoint %ptr %r46 to %word
	%r50 = icmp ne %word %r51, 0
	br i1 %r50, label %L1240, label %L1242
L1242:
	br label %L1240
L1240:
	%r52 = load %ptr, %ptr* %t5
	ret %ptr %r52
}
define %ptr @"subr/>="(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 0 to %ptr
	%r20 = inttoptr %word 1 to %ptr
	store %ptr %r20, %ptr* %t5
	%r21 = inttoptr %word 1 to %ptr
	%r22 = load %ptr, %ptr* %t4
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ashr %word %r26, %r25
	%r23 = inttoptr %word %r24 to %ptr
	%r27 = inttoptr %word 1 to %ptr
	%r28 = load %ptr, %ptr* %t3
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = ptrtoint %ptr %r27 to %word
	%r30 = ashr %word %r32, %r31
	%r29 = inttoptr %word %r30 to %ptr
	%r36 = ptrtoint %ptr %r29 to %word
	%r35 = ptrtoint %ptr %r23 to %word
	%r34 = icmp sge %word %r36, %r35
	%r33 = inttoptr i1 %r34 to %ptr
	store %ptr %r33, %ptr* %t5
	%r37 = inttoptr %word 0 to %ptr
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = ptrtoint %ptr %r33 to %word
	%r39 = icmp eq %word %r41, %r40
	%r38 = inttoptr i1 %r39 to %ptr
	%r43 = ptrtoint %ptr %r38 to %word
	%r42 = icmp ne %word %r43, 0
	br i1 %r42, label %L1243, label %L1244
L1244:
	%r44 = load %ptr, %ptr* @"symbol/true"
	store %ptr %r44, %ptr* %t5
	%r45 = inttoptr %word 0 to %ptr
	%r49 = ptrtoint %ptr %r45 to %word
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = icmp eq %word %r49, %r48
	%r46 = inttoptr i1 %r47 to %ptr
	%r51 = ptrtoint %ptr %r46 to %word
	%r50 = icmp ne %word %r51, 0
	br i1 %r50, label %L1243, label %L1245
L1245:
	br label %L1243
L1243:
	%r52 = load %ptr, %ptr* %t5
	ret %ptr %r52
}
define %ptr @"subr/>"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 0 to %ptr
	%r20 = inttoptr %word 1 to %ptr
	store %ptr %r20, %ptr* %t5
	%r21 = inttoptr %word 1 to %ptr
	%r22 = load %ptr, %ptr* %t4
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ashr %word %r26, %r25
	%r23 = inttoptr %word %r24 to %ptr
	%r27 = inttoptr %word 1 to %ptr
	%r28 = load %ptr, %ptr* %t3
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = ptrtoint %ptr %r27 to %word
	%r30 = ashr %word %r32, %r31
	%r29 = inttoptr %word %r30 to %ptr
	%r36 = ptrtoint %ptr %r29 to %word
	%r35 = ptrtoint %ptr %r23 to %word
	%r34 = icmp sgt %word %r36, %r35
	%r33 = inttoptr i1 %r34 to %ptr
	store %ptr %r33, %ptr* %t5
	%r37 = inttoptr %word 0 to %ptr
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = ptrtoint %ptr %r33 to %word
	%r39 = icmp eq %word %r41, %r40
	%r38 = inttoptr i1 %r39 to %ptr
	%r43 = ptrtoint %ptr %r38 to %word
	%r42 = icmp ne %word %r43, 0
	br i1 %r42, label %L1246, label %L1247
L1247:
	%r44 = load %ptr, %ptr* @"symbol/true"
	store %ptr %r44, %ptr* %t5
	%r45 = inttoptr %word 0 to %ptr
	%r49 = ptrtoint %ptr %r45 to %word
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = icmp eq %word %r49, %r48
	%r46 = inttoptr i1 %r47 to %ptr
	%r51 = ptrtoint %ptr %r46 to %word
	%r50 = icmp ne %word %r51, 0
	br i1 %r50, label %L1246, label %L1248
L1248:
	br label %L1246
L1246:
	%r52 = load %ptr, %ptr* %t5
	ret %ptr %r52
}
define %ptr @"subr/="(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = load %ptr, %ptr* %t3
	%r20 = call %ptr @"get/type"(%ptr %r19)
	store %ptr %r20, %ptr* %t5
	%r21 = inttoptr %word 6 to %ptr
	%r22 = load %ptr, %ptr* %t5
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = icmp eq %word %r26, %r25
	%r23 = inttoptr i1 %r24 to %ptr
	%r28 = ptrtoint %ptr %r23 to %word
	%r27 = icmp ne %word %r28, 0
	br i1 %r27, label %L1249, label %L1250
L1249:
	%r29 = inttoptr %word 1 to %ptr
	store %ptr %r29, %ptr* %t7
	%r30 = load %ptr, %ptr* %t4
	%r31 = call %ptr @"get/type"(%ptr %r30)
	%r32 = inttoptr %word 6 to %ptr
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = icmp eq %word %r36, %r35
	%r33 = inttoptr i1 %r34 to %ptr
	store %ptr %r33, %ptr* %t7
	%r37 = inttoptr %word 0 to %ptr
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = ptrtoint %ptr %r33 to %word
	%r39 = icmp eq %word %r41, %r40
	%r38 = inttoptr i1 %r39 to %ptr
	%r43 = ptrtoint %ptr %r38 to %word
	%r42 = icmp ne %word %r43, 0
	br i1 %r42, label %L1252, label %L1253
L1253:
	%r44 = inttoptr %word 1 to %ptr
	%r45 = load %ptr, %ptr* %t4
	%r49 = ptrtoint %ptr %r45 to %word
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = ashr %word %r49, %r48
	%r46 = inttoptr %word %r47 to %ptr
	%r50 = inttoptr %word 1 to %ptr
	%r51 = load %ptr, %ptr* %t3
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = ptrtoint %ptr %r50 to %word
	%r53 = ashr %word %r55, %r54
	%r52 = inttoptr %word %r53 to %ptr
	%r59 = ptrtoint %ptr %r52 to %word
	%r58 = ptrtoint %ptr %r46 to %word
	%r57 = icmp eq %word %r59, %r58
	%r56 = inttoptr i1 %r57 to %ptr
	store %ptr %r56, %ptr* %t7
	%r60 = inttoptr %word 0 to %ptr
	%r64 = ptrtoint %ptr %r60 to %word
	%r63 = ptrtoint %ptr %r56 to %word
	%r62 = icmp eq %word %r64, %r63
	%r61 = inttoptr i1 %r62 to %ptr
	%r66 = ptrtoint %ptr %r61 to %word
	%r65 = icmp ne %word %r66, 0
	br i1 %r65, label %L1252, label %L1254
L1254:
	%r67 = load %ptr, %ptr* @"symbol/true"
	store %ptr %r67, %ptr* %t7
	%r68 = inttoptr %word 0 to %ptr
	%r72 = ptrtoint %ptr %r68 to %word
	%r71 = ptrtoint %ptr %r67 to %word
	%r70 = icmp eq %word %r72, %r71
	%r69 = inttoptr i1 %r70 to %ptr
	%r74 = ptrtoint %ptr %r69 to %word
	%r73 = icmp ne %word %r74, 0
	br i1 %r73, label %L1252, label %L1255
L1255:
	br label %L1252
L1252:
	%r75 = load %ptr, %ptr* %t7
	store %ptr %r75, %ptr* %t6
	br label %L1251
L1250:
	%r76 = inttoptr %word 8 to %ptr
	%r77 = load %ptr, %ptr* %t5
	%r81 = ptrtoint %ptr %r77 to %word
	%r80 = ptrtoint %ptr %r76 to %word
	%r79 = icmp eq %word %r81, %r80
	%r78 = inttoptr i1 %r79 to %ptr
	%r83 = ptrtoint %ptr %r78 to %word
	%r82 = icmp ne %word %r83, 0
	br i1 %r82, label %L1256, label %L1257
L1256:
	%r84 = inttoptr %word 1 to %ptr
	store %ptr %r84, %ptr* %t8
	%r85 = load %ptr, %ptr* %t4
	%r86 = call %ptr @"get/type"(%ptr %r85)
	%r87 = inttoptr %word 8 to %ptr
	%r91 = ptrtoint %ptr %r87 to %word
	%r90 = ptrtoint %ptr %r86 to %word
	%r89 = icmp eq %word %r91, %r90
	%r88 = inttoptr i1 %r89 to %ptr
	store %ptr %r88, %ptr* %t8
	%r92 = inttoptr %word 0 to %ptr
	%r96 = ptrtoint %ptr %r92 to %word
	%r95 = ptrtoint %ptr %r88 to %word
	%r94 = icmp eq %word %r96, %r95
	%r93 = inttoptr i1 %r94 to %ptr
	%r98 = ptrtoint %ptr %r93 to %word
	%r97 = icmp ne %word %r98, 0
	br i1 %r97, label %L1259, label %L1260
L1260:
	%r99 = inttoptr %word 1 to %ptr
	%r100 = load %ptr, %ptr* %t3
	%r101 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r100)
	%r105 = bitcast %ptr %r101 to [0 x %ptr]*
	%r104 = ptrtoint %ptr %r99 to %word
	%r103 = getelementptr [0 x %ptr], [0 x %ptr]* %r105, %word 0, %word %r104
	%r102 = load %ptr, %ptr* %r103
	%r106 = inttoptr %word 1 to %ptr
	%r107 = load %ptr, %ptr* %t4
	%r108 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r107)
	%r112 = bitcast %ptr %r108 to [0 x %ptr]*
	%r111 = ptrtoint %ptr %r106 to %word
	%r110 = getelementptr [0 x %ptr], [0 x %ptr]* %r112, %word 0, %word %r111
	%r109 = load %ptr, %ptr* %r110
	%r113 = call i32 @strcmp(%ptr %r102, %ptr %r109)
	%r114 = sext i32 %r113 to %word
	%r115 = inttoptr %word %r114 to %ptr
	%r119 = ptrtoint %ptr %r115 to %word
	%r118 = icmp eq %word %r119, 0
	%r117 = zext i1 %r118 to %word
	%r116 = inttoptr %word %r117 to %ptr
	store %ptr %r116, %ptr* %t8
	%r120 = inttoptr %word 0 to %ptr
	%r124 = ptrtoint %ptr %r120 to %word
	%r123 = ptrtoint %ptr %r116 to %word
	%r122 = icmp eq %word %r124, %r123
	%r121 = inttoptr i1 %r122 to %ptr
	%r126 = ptrtoint %ptr %r121 to %word
	%r125 = icmp ne %word %r126, 0
	br i1 %r125, label %L1259, label %L1261
L1261:
	%r127 = load %ptr, %ptr* @"symbol/true"
	store %ptr %r127, %ptr* %t8
	%r128 = inttoptr %word 0 to %ptr
	%r132 = ptrtoint %ptr %r128 to %word
	%r131 = ptrtoint %ptr %r127 to %word
	%r130 = icmp eq %word %r132, %r131
	%r129 = inttoptr i1 %r130 to %ptr
	%r134 = ptrtoint %ptr %r129 to %word
	%r133 = icmp ne %word %r134, 0
	br i1 %r133, label %L1259, label %L1262
L1262:
	br label %L1259
L1259:
	%r135 = load %ptr, %ptr* %t8
	store %ptr %r135, %ptr* %t7
	br label %L1258
L1257:
	%r136 = inttoptr %word 1 to %ptr
	store %ptr %r136, %ptr* %t8
	%r137 = load %ptr, %ptr* %t4
	%r138 = load %ptr, %ptr* %t3
	%r142 = ptrtoint %ptr %r138 to %word
	%r141 = ptrtoint %ptr %r137 to %word
	%r140 = icmp eq %word %r142, %r141
	%r139 = inttoptr i1 %r140 to %ptr
	store %ptr %r139, %ptr* %t8
	%r143 = inttoptr %word 0 to %ptr
	%r147 = ptrtoint %ptr %r143 to %word
	%r146 = ptrtoint %ptr %r139 to %word
	%r145 = icmp eq %word %r147, %r146
	%r144 = inttoptr i1 %r145 to %ptr
	%r149 = ptrtoint %ptr %r144 to %word
	%r148 = icmp ne %word %r149, 0
	br i1 %r148, label %L1263, label %L1264
L1264:
	%r150 = load %ptr, %ptr* @"symbol/true"
	store %ptr %r150, %ptr* %t8
	%r151 = inttoptr %word 0 to %ptr
	%r155 = ptrtoint %ptr %r151 to %word
	%r154 = ptrtoint %ptr %r150 to %word
	%r153 = icmp eq %word %r155, %r154
	%r152 = inttoptr i1 %r153 to %ptr
	%r157 = ptrtoint %ptr %r152 to %word
	%r156 = icmp ne %word %r157, 0
	br i1 %r156, label %L1263, label %L1265
L1265:
	br label %L1263
L1263:
	%r158 = load %ptr, %ptr* %t8
	store %ptr %r158, %ptr* %t7
	br label %L1258
L1258:
	%r159 = load %ptr, %ptr* %t7
	store %ptr %r159, %ptr* %t6
	br label %L1251
L1251:
	%r160 = load %ptr, %ptr* %t6
	ret %ptr %r160
}
define %ptr @"subr/!="(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = load %ptr, %ptr* %t3
	%r20 = call %ptr @"get/type"(%ptr %r19)
	store %ptr %r20, %ptr* %t5
	%r21 = inttoptr %word 6 to %ptr
	%r22 = load %ptr, %ptr* %t5
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = icmp eq %word %r26, %r25
	%r23 = inttoptr i1 %r24 to %ptr
	%r28 = ptrtoint %ptr %r23 to %word
	%r27 = icmp ne %word %r28, 0
	br i1 %r27, label %L1266, label %L1267
L1266:
	%r29 = inttoptr %word 1 to %ptr
	store %ptr %r29, %ptr* %t7
	%r30 = load %ptr, %ptr* %t4
	%r31 = call %ptr @"get/type"(%ptr %r30)
	%r32 = inttoptr %word 6 to %ptr
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = icmp eq %word %r36, %r35
	%r33 = inttoptr i1 %r34 to %ptr
	store %ptr %r33, %ptr* %t7
	%r37 = inttoptr %word 0 to %ptr
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = ptrtoint %ptr %r33 to %word
	%r39 = icmp eq %word %r41, %r40
	%r38 = inttoptr i1 %r39 to %ptr
	%r43 = ptrtoint %ptr %r38 to %word
	%r42 = icmp ne %word %r43, 0
	br i1 %r42, label %L1269, label %L1270
L1270:
	%r44 = inttoptr %word 1 to %ptr
	%r45 = load %ptr, %ptr* %t4
	%r49 = ptrtoint %ptr %r45 to %word
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = ashr %word %r49, %r48
	%r46 = inttoptr %word %r47 to %ptr
	%r50 = inttoptr %word 1 to %ptr
	%r51 = load %ptr, %ptr* %t3
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = ptrtoint %ptr %r50 to %word
	%r53 = ashr %word %r55, %r54
	%r52 = inttoptr %word %r53 to %ptr
	%r59 = ptrtoint %ptr %r52 to %word
	%r58 = ptrtoint %ptr %r46 to %word
	%r57 = icmp ne %word %r59, %r58
	%r56 = inttoptr i1 %r57 to %ptr
	store %ptr %r56, %ptr* %t7
	%r60 = inttoptr %word 0 to %ptr
	%r64 = ptrtoint %ptr %r60 to %word
	%r63 = ptrtoint %ptr %r56 to %word
	%r62 = icmp eq %word %r64, %r63
	%r61 = inttoptr i1 %r62 to %ptr
	%r66 = ptrtoint %ptr %r61 to %word
	%r65 = icmp ne %word %r66, 0
	br i1 %r65, label %L1269, label %L1271
L1271:
	%r67 = load %ptr, %ptr* @"symbol/true"
	store %ptr %r67, %ptr* %t7
	%r68 = inttoptr %word 0 to %ptr
	%r72 = ptrtoint %ptr %r68 to %word
	%r71 = ptrtoint %ptr %r67 to %word
	%r70 = icmp eq %word %r72, %r71
	%r69 = inttoptr i1 %r70 to %ptr
	%r74 = ptrtoint %ptr %r69 to %word
	%r73 = icmp ne %word %r74, 0
	br i1 %r73, label %L1269, label %L1272
L1272:
	br label %L1269
L1269:
	%r75 = load %ptr, %ptr* %t7
	store %ptr %r75, %ptr* %t6
	br label %L1268
L1267:
	%r76 = inttoptr %word 8 to %ptr
	%r77 = load %ptr, %ptr* %t5
	%r81 = ptrtoint %ptr %r77 to %word
	%r80 = ptrtoint %ptr %r76 to %word
	%r79 = icmp eq %word %r81, %r80
	%r78 = inttoptr i1 %r79 to %ptr
	%r83 = ptrtoint %ptr %r78 to %word
	%r82 = icmp ne %word %r83, 0
	br i1 %r82, label %L1273, label %L1274
L1273:
	%r84 = inttoptr %word 1 to %ptr
	store %ptr %r84, %ptr* %t8
	%r85 = load %ptr, %ptr* %t4
	%r86 = call %ptr @"get/type"(%ptr %r85)
	%r87 = inttoptr %word 8 to %ptr
	%r91 = ptrtoint %ptr %r87 to %word
	%r90 = ptrtoint %ptr %r86 to %word
	%r89 = icmp eq %word %r91, %r90
	%r88 = inttoptr i1 %r89 to %ptr
	store %ptr %r88, %ptr* %t8
	%r92 = inttoptr %word 0 to %ptr
	%r96 = ptrtoint %ptr %r92 to %word
	%r95 = ptrtoint %ptr %r88 to %word
	%r94 = icmp eq %word %r96, %r95
	%r93 = inttoptr i1 %r94 to %ptr
	%r98 = ptrtoint %ptr %r93 to %word
	%r97 = icmp ne %word %r98, 0
	br i1 %r97, label %L1276, label %L1277
L1277:
	%r99 = inttoptr %word 1 to %ptr
	%r100 = load %ptr, %ptr* %t3
	%r101 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r100)
	%r105 = bitcast %ptr %r101 to [0 x %ptr]*
	%r104 = ptrtoint %ptr %r99 to %word
	%r103 = getelementptr [0 x %ptr], [0 x %ptr]* %r105, %word 0, %word %r104
	%r102 = load %ptr, %ptr* %r103
	%r106 = inttoptr %word 1 to %ptr
	%r107 = load %ptr, %ptr* %t4
	%r108 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r107)
	%r112 = bitcast %ptr %r108 to [0 x %ptr]*
	%r111 = ptrtoint %ptr %r106 to %word
	%r110 = getelementptr [0 x %ptr], [0 x %ptr]* %r112, %word 0, %word %r111
	%r109 = load %ptr, %ptr* %r110
	%r113 = call i32 @strcmp(%ptr %r102, %ptr %r109)
	%r114 = sext i32 %r113 to %word
	%r115 = inttoptr %word %r114 to %ptr
	store %ptr %r115, %ptr* %t8
	%r116 = inttoptr %word 0 to %ptr
	%r120 = ptrtoint %ptr %r116 to %word
	%r119 = ptrtoint %ptr %r115 to %word
	%r118 = icmp eq %word %r120, %r119
	%r117 = inttoptr i1 %r118 to %ptr
	%r122 = ptrtoint %ptr %r117 to %word
	%r121 = icmp ne %word %r122, 0
	br i1 %r121, label %L1276, label %L1278
L1278:
	br label %L1276
L1276:
	%r123 = load %ptr, %ptr* %t8
	%r124 = load %ptr, %ptr* @"symbol/true"
	store %ptr %r124, %ptr* %t7
	br label %L1275
L1274:
	%r125 = inttoptr %word 1 to %ptr
	store %ptr %r125, %ptr* %t8
	%r126 = load %ptr, %ptr* %t4
	%r127 = load %ptr, %ptr* %t3
	%r131 = ptrtoint %ptr %r127 to %word
	%r130 = ptrtoint %ptr %r126 to %word
	%r129 = icmp ne %word %r131, %r130
	%r128 = inttoptr i1 %r129 to %ptr
	store %ptr %r128, %ptr* %t8
	%r132 = inttoptr %word 0 to %ptr
	%r136 = ptrtoint %ptr %r132 to %word
	%r135 = ptrtoint %ptr %r128 to %word
	%r134 = icmp eq %word %r136, %r135
	%r133 = inttoptr i1 %r134 to %ptr
	%r138 = ptrtoint %ptr %r133 to %word
	%r137 = icmp ne %word %r138, 0
	br i1 %r137, label %L1279, label %L1280
L1280:
	%r139 = load %ptr, %ptr* @"symbol/true"
	store %ptr %r139, %ptr* %t8
	%r140 = inttoptr %word 0 to %ptr
	%r144 = ptrtoint %ptr %r140 to %word
	%r143 = ptrtoint %ptr %r139 to %word
	%r142 = icmp eq %word %r144, %r143
	%r141 = inttoptr i1 %r142 to %ptr
	%r146 = ptrtoint %ptr %r141 to %word
	%r145 = icmp ne %word %r146, 0
	br i1 %r145, label %L1279, label %L1281
L1281:
	br label %L1279
L1279:
	%r147 = load %ptr, %ptr* %t8
	store %ptr %r147, %ptr* %t7
	br label %L1275
L1275:
	%r148 = load %ptr, %ptr* %t7
	store %ptr %r148, %ptr* %t6
	br label %L1268
L1268:
	%r149 = load %ptr, %ptr* %t6
	ret %ptr %r149
}
define %ptr @"subr/abort"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = call %ptr @print-backtrace()
	%r3 = call %ptr @"libc/flush-streams"()
	call void @abort()
	%r5 = inttoptr %word 0 to %ptr
	ret %ptr %r5
}
@str1284 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str1285 = private unnamed_addr constant [40 x i8] c"argument to subr_exit is not a <long>: \00"
@str1286 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @"subr/exit"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	store %ptr %r8, %ptr* %t4
	%r9 = load %ptr, %ptr* %t3
	%r10 = call %ptr @"get/type"(%ptr %r9)
	%r11 = inttoptr %word 6 to %ptr
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = icmp eq %word %r15, %r14
	%r12 = inttoptr i1 %r13 to %ptr
	store %ptr %r12, %ptr* %t4
	%r16 = inttoptr %word 0 to %ptr
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r12 to %word
	%r18 = icmp eq %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	%r22 = ptrtoint %ptr %r17 to %word
	%r21 = icmp ne %word %r22, 0
	br i1 %r21, label %L1283, label %L1282
L1283:
	%r23 = getelementptr [9 x i8], [9 x i8]* @str1284, %word 0, %word 0
	%r25 = call i32 (%ptr, ...) @printf(%ptr %r23)
	%r26 = sext i32 %r25 to %word
	%r27 = inttoptr %word %r26 to %ptr
	%r28 = getelementptr [40 x i8], [40 x i8]* @str1285, %word 0, %word 0
	%r30 = call i32 (%ptr, ...) @printf(%ptr %r28)
	%r31 = sext i32 %r30 to %word
	%r32 = inttoptr %word %r31 to %ptr
	%r33 = load %ptr, %ptr* %t3
	%r34 = call %ptr @"k/print"(%ptr %r33)
	%r35 = getelementptr [2 x i8], [2 x i8]* @str1286, %word 0, %word 0
	%r37 = call i32 (%ptr, ...) @printf(%ptr %r35)
	%r38 = sext i32 %r37 to %word
	%r39 = inttoptr %word %r38 to %ptr
	%r40 = call %ptr @die()
	store %ptr %r40, %ptr* %t4
	%r41 = inttoptr %word 0 to %ptr
	%r45 = ptrtoint %ptr %r41 to %word
	%r44 = ptrtoint %ptr %r40 to %word
	%r43 = icmp eq %word %r45, %r44
	%r42 = inttoptr i1 %r43 to %ptr
	%r47 = ptrtoint %ptr %r42 to %word
	%r46 = icmp ne %word %r47, 0
	br i1 %r46, label %L1287, label %L1282
L1287:
	br label %L1282
L1282:
	%r48 = load %ptr, %ptr* %t4
	%r49 = inttoptr %word 0 to %ptr
	%r50 = call %ptr @"libc/flush-streams"()
	%r51 = inttoptr %word 1 to %ptr
	%r52 = load %ptr, %ptr* %t3
	%r56 = ptrtoint %ptr %r52 to %word
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = ashr %word %r56, %r55
	%r53 = inttoptr %word %r54 to %ptr
	%ffi-cast57 = ptrtoint %ptr %r53 to i32
	call void @exit(i32 %ffi-cast57)
	%r59 = inttoptr %word 0 to %ptr
	ret %ptr %r59
}
define %ptr @"subr/libc/fopen"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 1 to %ptr
	%r20 = load %ptr, %ptr* %t3
	%r21 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r20)
	%r25 = bitcast %ptr %r21 to [0 x %ptr]*
	%r24 = ptrtoint %ptr %r19 to %word
	%r23 = getelementptr [0 x %ptr], [0 x %ptr]* %r25, %word 0, %word %r24
	%r22 = load %ptr, %ptr* %r23
	%r26 = inttoptr %word 1 to %ptr
	%r27 = load %ptr, %ptr* %t4
	%r28 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r27)
	%r32 = bitcast %ptr %r28 to [0 x %ptr]*
	%r31 = ptrtoint %ptr %r26 to %word
	%r30 = getelementptr [0 x %ptr], [0 x %ptr]* %r32, %word 0, %word %r31
	%r29 = load %ptr, %ptr* %r30
	%r33 = call %ptr @fopen(%ptr %r22, %ptr %r29)
	store %ptr %r33, %ptr* %t5
	%r34 = inttoptr %word 1 to %ptr
	store %ptr %r34, %ptr* %t6
	%r35 = load %ptr, %ptr* %t5
	store %ptr %r35, %ptr* %t6
	%r36 = inttoptr %word 0 to %ptr
	%r40 = ptrtoint %ptr %r36 to %word
	%r39 = ptrtoint %ptr %r35 to %word
	%r38 = icmp eq %word %r40, %r39
	%r37 = inttoptr i1 %r38 to %ptr
	%r42 = ptrtoint %ptr %r37 to %word
	%r41 = icmp ne %word %r42, 0
	br i1 %r41, label %L1288, label %L1289
L1289:
	%r43 = load %ptr, %ptr* %t5
	%r44 = call %ptr @"new-<target-vm-pointer>"(%ptr %r43)
	store %ptr %r44, %ptr* %t6
	%r45 = inttoptr %word 0 to %ptr
	%r49 = ptrtoint %ptr %r45 to %word
	%r48 = ptrtoint %ptr %r44 to %word
	%r47 = icmp eq %word %r49, %r48
	%r46 = inttoptr i1 %r47 to %ptr
	%r51 = ptrtoint %ptr %r46 to %word
	%r50 = icmp ne %word %r51, 0
	br i1 %r50, label %L1288, label %L1290
L1290:
	br label %L1288
L1288:
	%r52 = load %ptr, %ptr* %t6
	ret %ptr %r52
}
define %ptr @"subr/libc/fclose"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = load %ptr, %ptr* %t3
	%r13 = bitcast %ptr %r9 to [0 x %ptr]*
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = getelementptr [0 x %ptr], [0 x %ptr]* %r13, %word 0, %word %r12
	%r10 = load %ptr, %ptr* %r11
	%r14 = call i32 @fclose(%ptr %r10)
	%r15 = sext i32 %r14 to %word
	%r16 = inttoptr %word %r15 to %ptr
	%r17 = inttoptr %word 0 to %ptr
	ret %ptr %r17
}
define %ptr @"subr/libc/fgetc"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = load %ptr, %ptr* %t3
	%r13 = bitcast %ptr %r9 to [0 x %ptr]*
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = getelementptr [0 x %ptr], [0 x %ptr]* %r13, %word 0, %word %r12
	%r10 = load %ptr, %ptr* %r11
	%r14 = call i32 @fgetc(%ptr %r10)
	%r15 = sext i32 %r14 to %word
	%r16 = inttoptr %word %r15 to %ptr
	store %ptr %r16, %ptr* %t4
	%r17 = inttoptr %word 1 to %ptr
	store %ptr %r17, %ptr* %t5
	%r18 = inttoptr %word 0 to %ptr
	%r19 = load %ptr, %ptr* %t4
	%r23 = ptrtoint %ptr %r19 to %word
	%r22 = ptrtoint %ptr %r18 to %word
	%r21 = icmp sge %word %r23, %r22
	%r20 = inttoptr i1 %r21 to %ptr
	store %ptr %r20, %ptr* %t5
	%r24 = inttoptr %word 0 to %ptr
	%r28 = ptrtoint %ptr %r24 to %word
	%r27 = ptrtoint %ptr %r20 to %word
	%r26 = icmp eq %word %r28, %r27
	%r25 = inttoptr i1 %r26 to %ptr
	%r30 = ptrtoint %ptr %r25 to %word
	%r29 = icmp ne %word %r30, 0
	br i1 %r29, label %L1291, label %L1292
L1292:
	%r31 = inttoptr %word 1 to %ptr
	%r32 = inttoptr %word 1 to %ptr
	%r33 = load %ptr, %ptr* %t4
	%r37 = ptrtoint %ptr %r33 to %word
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = shl %word %r37, %r36
	%r34 = inttoptr %word %r35 to %ptr
	%r41 = ptrtoint %ptr %r34 to %word
	%r40 = ptrtoint %ptr %r31 to %word
	%r39 = add %word %r41, %r40
	%r38 = inttoptr %word %r39 to %ptr
	store %ptr %r38, %ptr* %t5
	%r42 = inttoptr %word 0 to %ptr
	%r46 = ptrtoint %ptr %r42 to %word
	%r45 = ptrtoint %ptr %r38 to %word
	%r44 = icmp eq %word %r46, %r45
	%r43 = inttoptr i1 %r44 to %ptr
	%r48 = ptrtoint %ptr %r43 to %word
	%r47 = icmp ne %word %r48, 0
	br i1 %r47, label %L1291, label %L1293
L1293:
	br label %L1291
L1291:
	%r49 = load %ptr, %ptr* %t5
	ret %ptr %r49
}
define %ptr @"subr/libc/fputc"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 1 to %ptr
	%r20 = inttoptr %word 1 to %ptr
	%r21 = inttoptr %word 1 to %ptr
	%r22 = load %ptr, %ptr* %t3
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ashr %word %r26, %r25
	%r23 = inttoptr %word %r24 to %ptr
	%r27 = inttoptr %word 0 to %ptr
	%r28 = load %ptr, %ptr* %t4
	%r32 = bitcast %ptr %r28 to [0 x %ptr]*
	%r31 = ptrtoint %ptr %r27 to %word
	%r30 = getelementptr [0 x %ptr], [0 x %ptr]* %r32, %word 0, %word %r31
	%r29 = load %ptr, %ptr* %r30
	%r33 = call i32 @fputc(%ptr %r23, %ptr %r29)
	%r34 = sext i32 %r33 to %word
	%r35 = inttoptr %word %r34 to %ptr
	%r39 = ptrtoint %ptr %r35 to %word
	%r38 = ptrtoint %ptr %r20 to %word
	%r37 = shl %word %r39, %r38
	%r36 = inttoptr %word %r37 to %ptr
	%r43 = ptrtoint %ptr %r36 to %word
	%r42 = ptrtoint %ptr %r19 to %word
	%r41 = add %word %r43, %r42
	%r40 = inttoptr %word %r41 to %ptr
	ret %ptr %r40
}
@str1296 = private unnamed_addr constant [36 x i8] c"subr/libc/format: non-string format\00"
define %ptr @"subr/libc/format"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t7 = alloca %ptr
	%t6 = alloca %ptr
	%t5 = alloca %ptr
	%t9 = alloca %ptr
	%t8 = alloca %ptr
	%t10 = alloca %ptr
	%t11 = alloca %ptr
	%t12 = alloca %ptr
	%t13 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 0 to %ptr
	store %ptr %r19, %ptr* %t5
	%r20 = load %ptr, %ptr* %t3
	%r21 = call %ptr @"get/type"(%ptr %r20)
	%r22 = inttoptr %word 8 to %ptr
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = icmp eq %word %r26, %r25
	%r23 = inttoptr i1 %r24 to %ptr
	store %ptr %r23, %ptr* %t5
	%r27 = inttoptr %word 0 to %ptr
	%r31 = ptrtoint %ptr %r27 to %word
	%r30 = ptrtoint %ptr %r23 to %word
	%r29 = icmp eq %word %r31, %r30
	%r28 = inttoptr i1 %r29 to %ptr
	%r33 = ptrtoint %ptr %r28 to %word
	%r32 = icmp ne %word %r33, 0
	br i1 %r32, label %L1295, label %L1294
L1295:
	%r34 = getelementptr [36 x i8], [36 x i8]* @str1296, %word 0, %word 0
	%r36 = call %ptr @fatal(%ptr %r34)
	store %ptr %r36, %ptr* %t5
	%r37 = inttoptr %word 0 to %ptr
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = ptrtoint %ptr %r36 to %word
	%r39 = icmp eq %word %r41, %r40
	%r38 = inttoptr i1 %r39 to %ptr
	%r43 = ptrtoint %ptr %r38 to %word
	%r42 = icmp ne %word %r43, 0
	br i1 %r42, label %L1297, label %L1294
L1297:
	br label %L1294
L1294:
	%r44 = load %ptr, %ptr* %t5
	%r45 = inttoptr %word 1 to %ptr
	%r46 = load %ptr, %ptr* %t3
	%r47 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r46)
	%r51 = bitcast %ptr %r47 to [0 x %ptr]*
	%r50 = ptrtoint %ptr %r45 to %word
	%r49 = getelementptr [0 x %ptr], [0 x %ptr]* %r51, %word 0, %word %r50
	%r48 = load %ptr, %ptr* %r49
	store %ptr %r48, %ptr* %t5
	%r52 = load %ptr, %ptr* %t4
	%r53 = call %ptr @"get/type"(%ptr %r52)
	store %ptr %r53, %ptr* %t6
	%r54 = inttoptr %word 0 to %ptr
	store %ptr %r54, %ptr* %t7
	%r55 = inttoptr %word 5 to %ptr
	%r56 = load %ptr, %ptr* %t6
	%r60 = ptrtoint %ptr %r56 to %word
	%r59 = ptrtoint %ptr %r55 to %word
	%r58 = icmp eq %word %r60, %r59
	%r57 = inttoptr i1 %r58 to %ptr
	%r62 = ptrtoint %ptr %r57 to %word
	%r61 = icmp ne %word %r62, 0
	br i1 %r61, label %L1298, label %L1299
L1298:
	%r63 = inttoptr %word 0 to %ptr
	store %ptr %r63, %ptr* %t8
	br label %L1300
L1299:
	%r64 = inttoptr %word 6 to %ptr
	%r65 = load %ptr, %ptr* %t6
	%r69 = ptrtoint %ptr %r65 to %word
	%r68 = ptrtoint %ptr %r64 to %word
	%r67 = icmp eq %word %r69, %r68
	%r66 = inttoptr i1 %r67 to %ptr
	%r71 = ptrtoint %ptr %r66 to %word
	%r70 = icmp ne %word %r71, 0
	br i1 %r70, label %L1301, label %L1302
L1301:
	%r72 = inttoptr %word 1 to %ptr
	%r73 = load %ptr, %ptr* %t4
	%r77 = ptrtoint %ptr %r73 to %word
	%r76 = ptrtoint %ptr %r72 to %word
	%r75 = ashr %word %r77, %r76
	%r74 = inttoptr %word %r75 to %ptr
	store %ptr %r74, %ptr* %t7
	store %ptr %r74, %ptr* %t9
	br label %L1303
L1302:
	%r78 = inttoptr %word 8 to %ptr
	%r79 = load %ptr, %ptr* %t6
	%r83 = ptrtoint %ptr %r79 to %word
	%r82 = ptrtoint %ptr %r78 to %word
	%r81 = icmp eq %word %r83, %r82
	%r80 = inttoptr i1 %r81 to %ptr
	%r85 = ptrtoint %ptr %r80 to %word
	%r84 = icmp ne %word %r85, 0
	br i1 %r84, label %L1304, label %L1305
L1304:
	%r86 = inttoptr %word 1 to %ptr
	%r87 = load %ptr, %ptr* %t4
	%r88 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r87)
	%r92 = bitcast %ptr %r88 to [0 x %ptr]*
	%r91 = ptrtoint %ptr %r86 to %word
	%r90 = getelementptr [0 x %ptr], [0 x %ptr]* %r92, %word 0, %word %r91
	%r89 = load %ptr, %ptr* %r90
	store %ptr %r89, %ptr* %t7
	store %ptr %r89, %ptr* %t10
	br label %L1306
L1305:
	%r93 = inttoptr %word 18 to %ptr
	%r94 = load %ptr, %ptr* %t6
	%r98 = ptrtoint %ptr %r94 to %word
	%r97 = ptrtoint %ptr %r93 to %word
	%r96 = icmp eq %word %r98, %r97
	%r95 = inttoptr i1 %r96 to %ptr
	%r100 = ptrtoint %ptr %r95 to %word
	%r99 = icmp ne %word %r100, 0
	br i1 %r99, label %L1307, label %L1308
L1307:
	%r101 = inttoptr %word 0 to %ptr
	%r102 = load %ptr, %ptr* %t4
	%r106 = bitcast %ptr %r102 to [0 x %ptr]*
	%r105 = ptrtoint %ptr %r101 to %word
	%r104 = getelementptr [0 x %ptr], [0 x %ptr]* %r106, %word 0, %word %r105
	%r103 = load %ptr, %ptr* %r104
	store %ptr %r103, %ptr* %t7
	store %ptr %r103, %ptr* %t11
	br label %L1309
L1308:
	%r107 = load %ptr, %ptr* %t4
	store %ptr %r107, %ptr* %t7
	store %ptr %r107, %ptr* %t11
	br label %L1309
L1309:
	%r108 = load %ptr, %ptr* %t11
	store %ptr %r108, %ptr* %t10
	br label %L1306
L1306:
	%r109 = load %ptr, %ptr* %t10
	store %ptr %r109, %ptr* %t9
	br label %L1303
L1303:
	%r110 = load %ptr, %ptr* %t9
	store %ptr %r110, %ptr* %t8
	br label %L1300
L1300:
	%r111 = load %ptr, %ptr* %t8
	%r112 = inttoptr %word 100 to %ptr
	store %ptr %r112, %ptr* %t8
	%r113 = inttoptr %word 0 to %ptr
	store %ptr %r113, %ptr* %t9
	%r114 = inttoptr %word 0 to %ptr
	store %ptr %r114, %ptr* %t10
	%r116 = getelementptr %ptr, %ptr* %t10, %word 0
	%r115 = bitcast %ptr* %r116 to %ptr
	%r117 = call %ptr @"gc/push-root"(%ptr %r115)
	br label %L1311
L1310:
	%r118 = inttoptr %word 4 to %ptr
	%r119 = load %ptr, %ptr* %t8
	%r120 = call %ptr @"gc/allocate-opaque"(%ptr %r118, %ptr %r119)
	store %ptr %r120, %ptr* %t10
	%r121 = load %ptr, %ptr* %t10
	%r122 = load %ptr, %ptr* %t8
	%r123 = load %ptr, %ptr* %t5
	%r124 = load %ptr, %ptr* %t7
	%ffi-cast125 = ptrtoint %ptr %r122 to i32
	%r126 = call i32 (%ptr, i32, %ptr, ...) @snprintf(%ptr %r121, i32 %ffi-cast125, %ptr %r123, %ptr %r124)
	%r127 = sext i32 %r126 to %word
	%r128 = inttoptr %word %r127 to %ptr
	store %ptr %r128, %ptr* %t11
	%r129 = inttoptr %word 1 to %ptr
	store %ptr %r129, %ptr* %t13
	%r130 = load %ptr, %ptr* %t11
	%r131 = inttoptr %word 0 to %ptr
	%r135 = ptrtoint %ptr %r131 to %word
	%r134 = ptrtoint %ptr %r130 to %word
	%r133 = icmp sle %word %r135, %r134
	%r132 = inttoptr i1 %r133 to %ptr
	store %ptr %r132, %ptr* %t13
	%r136 = inttoptr %word 0 to %ptr
	%r140 = ptrtoint %ptr %r136 to %word
	%r139 = ptrtoint %ptr %r132 to %word
	%r138 = icmp eq %word %r140, %r139
	%r137 = inttoptr i1 %r138 to %ptr
	%r142 = ptrtoint %ptr %r137 to %word
	%r141 = icmp ne %word %r142, 0
	br i1 %r141, label %L1316, label %L1317
L1317:
	%r143 = load %ptr, %ptr* %t8
	%r144 = load %ptr, %ptr* %t11
	%r148 = ptrtoint %ptr %r144 to %word
	%r147 = ptrtoint %ptr %r143 to %word
	%r146 = icmp slt %word %r148, %r147
	%r145 = inttoptr i1 %r146 to %ptr
	store %ptr %r145, %ptr* %t13
	%r149 = inttoptr %word 0 to %ptr
	%r153 = ptrtoint %ptr %r149 to %word
	%r152 = ptrtoint %ptr %r145 to %word
	%r151 = icmp eq %word %r153, %r152
	%r150 = inttoptr i1 %r151 to %ptr
	%r155 = ptrtoint %ptr %r150 to %word
	%r154 = icmp ne %word %r155, 0
	br i1 %r154, label %L1316, label %L1318
L1318:
	br label %L1316
L1316:
	%r156 = load %ptr, %ptr* %t13
	%r158 = ptrtoint %ptr %r156 to %word
	%r157 = icmp ne %word %r158, 0
	br i1 %r157, label %L1313, label %L1314
L1313:
	%r159 = load %ptr, %ptr* %t10
	%r160 = call %ptr @"new-<string>-from-cstring"(%ptr %r159)
	store %ptr %r160, %ptr* %t9
	store %ptr %r160, %ptr* %t12
	br label %L1315
L1314:
	%r161 = inttoptr %word 2 to %ptr
	%r162 = load %ptr, %ptr* %t8
	%r166 = ptrtoint %ptr %r162 to %word
	%r165 = ptrtoint %ptr %r161 to %word
	%r164 = mul %word %r166, %r165
	%r163 = inttoptr %word %r164 to %ptr
	store %ptr %r163, %ptr* %t8
	store %ptr %r163, %ptr* %t12
	br label %L1315
L1315:
	%r167 = load %ptr, %ptr* %t12
	br label %L1311
L1311:
	%r168 = load %ptr, %ptr* %t9
	%r172 = ptrtoint %ptr %r168 to %word
	%r171 = icmp eq %word %r172, 0
	%r170 = zext i1 %r171 to %word
	%r169 = inttoptr %word %r170 to %ptr
	%r174 = ptrtoint %ptr %r169 to %word
	%r173 = icmp ne %word %r174, 0
	br i1 %r173, label %L1310, label %L1312
L1312:
	store %ptr %r169, %ptr* %t11
	%r176 = getelementptr %ptr, %ptr* %t10, %word 0
	%r175 = bitcast %ptr* %r176 to %ptr
	%r177 = call %ptr @"gc/pop-root"(%ptr %r175)
	%r178 = load %ptr, %ptr* %t11
	%r179 = load %ptr, %ptr* %t9
	ret %ptr %r179
}
@str1326 = private unnamed_addr constant [18 x i8] c"loading file: %s\0A\00"
@str1327 = private unnamed_addr constant [2 x i8] c"r\00"
@str1334 = private unnamed_addr constant [20 x i8] c"loading from stdin\0A\00"
@str1335 = private unnamed_addr constant [2 x i8] c"r\00"
@str1336 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str1337 = private unnamed_addr constant [30 x i8] c"load: don't know how to open \00"
@str1338 = private unnamed_addr constant [2 x i8] c"\0A\00"
@str1340 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str1341 = private unnamed_addr constant [23 x i8] c"load: fopen failed on \00"
@str1342 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @"subr/load"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	store %ptr %r8, %ptr* %t4
	%r9 = load %ptr, %ptr* %t3
	%r10 = call %ptr @"get/type"(%ptr %r9)
	%r11 = inttoptr %word 8 to %ptr
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = icmp eq %word %r15, %r14
	%r12 = inttoptr i1 %r13 to %ptr
	%r17 = ptrtoint %ptr %r12 to %word
	%r16 = icmp ne %word %r17, 0
	br i1 %r16, label %L1320, label %L1321
L1320:
	%r18 = load %ptr, %ptr* @"*verbosity*"
	%r19 = inttoptr %word 1 to %ptr
	%r23 = ptrtoint %ptr %r19 to %word
	%r22 = ptrtoint %ptr %r18 to %word
	%r21 = icmp sle %word %r23, %r22
	%r20 = inttoptr i1 %r21 to %ptr
	%r25 = ptrtoint %ptr %r20 to %word
	%r24 = icmp ne %word %r25, 0
	br i1 %r24, label %L1323, label %L1324
L1323:
	%r26 = load %ptr, %ptr* @"libc/stderr"
	%r27 = getelementptr [18 x i8], [18 x i8]* @str1326, %word 0, %word 0
	%r29 = inttoptr %word 1 to %ptr
	%r30 = load %ptr, %ptr* %t3
	%r31 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r30)
	%r35 = bitcast %ptr %r31 to [0 x %ptr]*
	%r34 = ptrtoint %ptr %r29 to %word
	%r33 = getelementptr [0 x %ptr], [0 x %ptr]* %r35, %word 0, %word %r34
	%r32 = load %ptr, %ptr* %r33
	%r36 = call i32 (%ptr, %ptr, ...) @fprintf(%ptr %r26, %ptr %r27, %ptr %r32)
	%r37 = sext i32 %r36 to %word
	%r38 = inttoptr %word %r37 to %ptr
	store %ptr %r38, %ptr* %t6
	br label %L1325
L1324:
	%r39 = inttoptr %word 0 to %ptr
	store %ptr %r39, %ptr* %t6
	br label %L1325
L1325:
	%r40 = load %ptr, %ptr* %t6
	%r41 = inttoptr %word 1 to %ptr
	%r42 = load %ptr, %ptr* %t3
	%r43 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r42)
	%r47 = bitcast %ptr %r43 to [0 x %ptr]*
	%r46 = ptrtoint %ptr %r41 to %word
	%r45 = getelementptr [0 x %ptr], [0 x %ptr]* %r47, %word 0, %word %r46
	%r44 = load %ptr, %ptr* %r45
	%r48 = getelementptr [2 x i8], [2 x i8]* @str1327, %word 0, %word 0
	%r50 = call %ptr @fopen(%ptr %r44, %ptr %r48)
	store %ptr %r50, %ptr* %t5
	br label %L1322
L1321:
	%r51 = load %ptr, %ptr* %t3
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = icmp eq %word %r55, 0
	%r53 = zext i1 %r54 to %word
	%r52 = inttoptr %word %r53 to %ptr
	%r57 = ptrtoint %ptr %r52 to %word
	%r56 = icmp ne %word %r57, 0
	br i1 %r56, label %L1328, label %L1329
L1328:
	%r58 = load %ptr, %ptr* @"*verbosity*"
	%r59 = inttoptr %word 1 to %ptr
	%r63 = ptrtoint %ptr %r59 to %word
	%r62 = ptrtoint %ptr %r58 to %word
	%r61 = icmp sle %word %r63, %r62
	%r60 = inttoptr i1 %r61 to %ptr
	%r65 = ptrtoint %ptr %r60 to %word
	%r64 = icmp ne %word %r65, 0
	br i1 %r64, label %L1331, label %L1332
L1331:
	%r66 = load %ptr, %ptr* @"libc/stderr"
	%r67 = getelementptr [20 x i8], [20 x i8]* @str1334, %word 0, %word 0
	%r69 = call i32 (%ptr, %ptr, ...) @fprintf(%ptr %r66, %ptr %r67)
	%r70 = sext i32 %r69 to %word
	%r71 = inttoptr %word %r70 to %ptr
	store %ptr %r71, %ptr* %t7
	br label %L1333
L1332:
	%r72 = inttoptr %word 0 to %ptr
	store %ptr %r72, %ptr* %t7
	br label %L1333
L1333:
	%r73 = load %ptr, %ptr* %t7
	%r74 = load %ptr, %ptr* @"libc/stdin"
	%r75 = getelementptr [2 x i8], [2 x i8]* @str1335, %word 0, %word 0
	%ffi-cast77 = ptrtoint %ptr %r74 to i32
	%r78 = call %ptr @fdopen(i32 %ffi-cast77, %ptr %r75)
	store %ptr %r78, %ptr* %t6
	br label %L1330
L1329:
	%r79 = getelementptr [9 x i8], [9 x i8]* @str1336, %word 0, %word 0
	%r81 = call i32 (%ptr, ...) @printf(%ptr %r79)
	%r82 = sext i32 %r81 to %word
	%r83 = inttoptr %word %r82 to %ptr
	%r84 = getelementptr [30 x i8], [30 x i8]* @str1337, %word 0, %word 0
	%r86 = call i32 (%ptr, ...) @printf(%ptr %r84)
	%r87 = sext i32 %r86 to %word
	%r88 = inttoptr %word %r87 to %ptr
	%r89 = load %ptr, %ptr* %t3
	%r90 = call %ptr @"k/print"(%ptr %r89)
	%r91 = getelementptr [2 x i8], [2 x i8]* @str1338, %word 0, %word 0
	%r93 = call i32 (%ptr, ...) @printf(%ptr %r91)
	%r94 = sext i32 %r93 to %word
	%r95 = inttoptr %word %r94 to %ptr
	%r96 = call %ptr @die()
	store %ptr %r96, %ptr* %t6
	br label %L1330
L1330:
	%r97 = load %ptr, %ptr* %t6
	store %ptr %r97, %ptr* %t5
	br label %L1322
L1322:
	%r98 = load %ptr, %ptr* %t5
	store %ptr %r98, %ptr* %t4
	%r99 = inttoptr %word 0 to %ptr
	%r103 = ptrtoint %ptr %r99 to %word
	%r102 = ptrtoint %ptr %r98 to %word
	%r101 = icmp eq %word %r103, %r102
	%r100 = inttoptr i1 %r101 to %ptr
	%r105 = ptrtoint %ptr %r100 to %word
	%r104 = icmp ne %word %r105, 0
	br i1 %r104, label %L1339, label %L1319
L1339:
	%r106 = getelementptr [9 x i8], [9 x i8]* @str1340, %word 0, %word 0
	%r108 = call i32 (%ptr, ...) @printf(%ptr %r106)
	%r109 = sext i32 %r108 to %word
	%r110 = inttoptr %word %r109 to %ptr
	%r111 = getelementptr [23 x i8], [23 x i8]* @str1341, %word 0, %word 0
	%r113 = call i32 (%ptr, ...) @printf(%ptr %r111)
	%r114 = sext i32 %r113 to %word
	%r115 = inttoptr %word %r114 to %ptr
	%r116 = load %ptr, %ptr* %t3
	%r117 = call %ptr @"k/print"(%ptr %r116)
	%r118 = getelementptr [2 x i8], [2 x i8]* @str1342, %word 0, %word 0
	%r120 = call i32 (%ptr, ...) @printf(%ptr %r118)
	%r121 = sext i32 %r120 to %word
	%r122 = inttoptr %word %r121 to %ptr
	%r123 = call %ptr @die()
	store %ptr %r123, %ptr* %t4
	%r124 = inttoptr %word 0 to %ptr
	%r128 = ptrtoint %ptr %r124 to %word
	%r127 = ptrtoint %ptr %r123 to %word
	%r126 = icmp eq %word %r128, %r127
	%r125 = inttoptr i1 %r126 to %ptr
	%r130 = ptrtoint %ptr %r125 to %word
	%r129 = icmp ne %word %r130, 0
	br i1 %r129, label %L1343, label %L1319
L1343:
	br label %L1319
L1319:
	%r131 = load %ptr, %ptr* %t4
	store %ptr %r131, %ptr* %t4
	%r132 = load %ptr, %ptr* %t4
	%r133 = call %ptr @"k/repl-stream"(%ptr %r132)
	store %ptr %r133, %ptr* %t5
	%r134 = load %ptr, %ptr* %t4
	%r135 = call i32 @fclose(%ptr %r134)
	%r136 = sext i32 %r135 to %word
	%r137 = inttoptr %word %r136 to %ptr
	%r138 = load %ptr, %ptr* %t5
	ret %ptr %r138
}
define %ptr @"subr/repl-stream"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = load %ptr, %ptr* %t3
	%r13 = bitcast %ptr %r9 to [0 x %ptr]*
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = getelementptr [0 x %ptr], [0 x %ptr]* %r13, %word 0, %word %r12
	%r10 = load %ptr, %ptr* %r11
	%r14 = call %ptr @"k/repl-stream"(%ptr %r10)
	ret %ptr %r14
}
define %ptr @"subr/dump"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	br label %L1345
L1344:
	%r1 = inttoptr %word 0 to %ptr
	%r2 = load %ptr, %ptr* %t1
	%r6 = bitcast %ptr %r2 to [0 x %ptr]*
	%r5 = ptrtoint %ptr %r1 to %word
	%r4 = getelementptr [0 x %ptr], [0 x %ptr]* %r6, %word 0, %word %r5
	%r3 = load %ptr, %ptr* %r4
	%r7 = call %ptr @"k/dump"(%ptr %r3)
	%r8 = inttoptr %word 1 to %ptr
	%r9 = load %ptr, %ptr* %t1
	%r13 = bitcast %ptr %r9 to [0 x %ptr]*
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = getelementptr [0 x %ptr], [0 x %ptr]* %r13, %word 0, %word %r12
	%r10 = load %ptr, %ptr* %r11
	store %ptr %r10, %ptr* %t1
	br label %L1345
L1345:
	%r14 = load %ptr, %ptr* %t1
	%r15 = call %ptr @"get/type"(%ptr %r14)
	%r16 = inttoptr %word 19 to %ptr
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = icmp eq %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	%r22 = ptrtoint %ptr %r17 to %word
	%r21 = icmp ne %word %r22, 0
	br i1 %r21, label %L1344, label %L1346
L1346:
	ret %ptr %r17
}
define %ptr @"subr/print"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	br label %L1348
L1347:
	%r1 = inttoptr %word 0 to %ptr
	%r2 = load %ptr, %ptr* %t1
	%r6 = bitcast %ptr %r2 to [0 x %ptr]*
	%r5 = ptrtoint %ptr %r1 to %word
	%r4 = getelementptr [0 x %ptr], [0 x %ptr]* %r6, %word 0, %word %r5
	%r3 = load %ptr, %ptr* %r4
	%r7 = call %ptr @"k/print"(%ptr %r3)
	%r8 = inttoptr %word 1 to %ptr
	%r9 = load %ptr, %ptr* %t1
	%r13 = bitcast %ptr %r9 to [0 x %ptr]*
	%r12 = ptrtoint %ptr %r8 to %word
	%r11 = getelementptr [0 x %ptr], [0 x %ptr]* %r13, %word 0, %word %r12
	%r10 = load %ptr, %ptr* %r11
	store %ptr %r10, %ptr* %t1
	br label %L1348
L1348:
	%r14 = load %ptr, %ptr* %t1
	%r15 = call %ptr @"get/type"(%ptr %r14)
	%r16 = inttoptr %word 19 to %ptr
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = icmp eq %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	%r22 = ptrtoint %ptr %r17 to %word
	%r21 = icmp ne %word %r22, 0
	br i1 %r21, label %L1347, label %L1349
L1349:
	ret %ptr %r17
}
@str1356 = private unnamed_addr constant [3 x i8] c"%s\00"
@str1360 = private unnamed_addr constant [3 x i8] c"%s\00"
@str1364 = private unnamed_addr constant [4 x i8] c"%ld\00"
@str1365 = private unnamed_addr constant [35 x i8] c"<unable to print {%p} of type %ld>\00"
define %ptr @"subr/warn"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	br label %L1351
L1350:
	%r1 = inttoptr %word 0 to %ptr
	%r2 = load %ptr, %ptr* %t1
	%r6 = bitcast %ptr %r2 to [0 x %ptr]*
	%r5 = ptrtoint %ptr %r1 to %word
	%r4 = getelementptr [0 x %ptr], [0 x %ptr]* %r6, %word 0, %word %r5
	%r3 = load %ptr, %ptr* %r4
	store %ptr %r3, %ptr* %t3
	%r7 = load %ptr, %ptr* %t3
	%r8 = call %ptr @"get/type"(%ptr %r7)
	store %ptr %r8, %ptr* %t4
	%r9 = inttoptr %word 8 to %ptr
	%r10 = load %ptr, %ptr* %t4
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = icmp eq %word %r14, %r13
	%r11 = inttoptr i1 %r12 to %ptr
	%r16 = ptrtoint %ptr %r11 to %word
	%r15 = icmp ne %word %r16, 0
	br i1 %r15, label %L1353, label %L1354
L1353:
	%r17 = load %ptr, %ptr* @"libc/stderr"
	%r18 = getelementptr [3 x i8], [3 x i8]* @str1356, %word 0, %word 0
	%r20 = inttoptr %word 1 to %ptr
	%r21 = load %ptr, %ptr* %t3
	%r22 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r21)
	%r26 = bitcast %ptr %r22 to [0 x %ptr]*
	%r25 = ptrtoint %ptr %r20 to %word
	%r24 = getelementptr [0 x %ptr], [0 x %ptr]* %r26, %word 0, %word %r25
	%r23 = load %ptr, %ptr* %r24
	%r27 = call i32 (%ptr, %ptr, ...) @fprintf(%ptr %r17, %ptr %r18, %ptr %r23)
	%r28 = sext i32 %r27 to %word
	%r29 = inttoptr %word %r28 to %ptr
	store %ptr %r29, %ptr* %t5
	br label %L1355
L1354:
	%r30 = inttoptr %word 18 to %ptr
	%r31 = load %ptr, %ptr* %t4
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = ptrtoint %ptr %r30 to %word
	%r33 = icmp eq %word %r35, %r34
	%r32 = inttoptr i1 %r33 to %ptr
	%r37 = ptrtoint %ptr %r32 to %word
	%r36 = icmp ne %word %r37, 0
	br i1 %r36, label %L1357, label %L1358
L1357:
	%r38 = load %ptr, %ptr* @"libc/stderr"
	%r39 = getelementptr [3 x i8], [3 x i8]* @str1360, %word 0, %word 0
	%r41 = inttoptr %word 0 to %ptr
	%r42 = load %ptr, %ptr* %t3
	%r46 = bitcast %ptr %r42 to [0 x %ptr]*
	%r45 = ptrtoint %ptr %r41 to %word
	%r44 = getelementptr [0 x %ptr], [0 x %ptr]* %r46, %word 0, %word %r45
	%r43 = load %ptr, %ptr* %r44
	%r47 = call i32 (%ptr, %ptr, ...) @fprintf(%ptr %r38, %ptr %r39, %ptr %r43)
	%r48 = sext i32 %r47 to %word
	%r49 = inttoptr %word %r48 to %ptr
	store %ptr %r49, %ptr* %t6
	br label %L1359
L1358:
	%r50 = inttoptr %word 6 to %ptr
	%r51 = load %ptr, %ptr* %t4
	%r55 = ptrtoint %ptr %r51 to %word
	%r54 = ptrtoint %ptr %r50 to %word
	%r53 = icmp eq %word %r55, %r54
	%r52 = inttoptr i1 %r53 to %ptr
	%r57 = ptrtoint %ptr %r52 to %word
	%r56 = icmp ne %word %r57, 0
	br i1 %r56, label %L1361, label %L1362
L1361:
	%r58 = load %ptr, %ptr* @"libc/stderr"
	%r59 = getelementptr [4 x i8], [4 x i8]* @str1364, %word 0, %word 0
	%r61 = inttoptr %word 1 to %ptr
	%r62 = load %ptr, %ptr* %t3
	%r66 = ptrtoint %ptr %r62 to %word
	%r65 = ptrtoint %ptr %r61 to %word
	%r64 = ashr %word %r66, %r65
	%r63 = inttoptr %word %r64 to %ptr
	%r67 = call i32 (%ptr, %ptr, ...) @fprintf(%ptr %r58, %ptr %r59, %ptr %r63)
	%r68 = sext i32 %r67 to %word
	%r69 = inttoptr %word %r68 to %ptr
	store %ptr %r69, %ptr* %t7
	br label %L1363
L1362:
	%r70 = load %ptr, %ptr* @"libc/stderr"
	%r71 = getelementptr [35 x i8], [35 x i8]* @str1365, %word 0, %word 0
	%r73 = load %ptr, %ptr* %t3
	%r74 = load %ptr, %ptr* %t4
	%r75 = call i32 (%ptr, %ptr, ...) @fprintf(%ptr %r70, %ptr %r71, %ptr %r73, %ptr %r74)
	%r76 = sext i32 %r75 to %word
	%r77 = inttoptr %word %r76 to %ptr
	store %ptr %r77, %ptr* %t7
	br label %L1363
L1363:
	%r78 = load %ptr, %ptr* %t7
	store %ptr %r78, %ptr* %t6
	br label %L1359
L1359:
	%r79 = load %ptr, %ptr* %t6
	store %ptr %r79, %ptr* %t5
	br label %L1355
L1355:
	%r80 = load %ptr, %ptr* %t5
	%r81 = inttoptr %word 1 to %ptr
	%r82 = load %ptr, %ptr* %t1
	%r86 = bitcast %ptr %r82 to [0 x %ptr]*
	%r85 = ptrtoint %ptr %r81 to %word
	%r84 = getelementptr [0 x %ptr], [0 x %ptr]* %r86, %word 0, %word %r85
	%r83 = load %ptr, %ptr* %r84
	store %ptr %r83, %ptr* %t1
	br label %L1351
L1351:
	%r87 = load %ptr, %ptr* %t1
	%r88 = call %ptr @"get/type"(%ptr %r87)
	%r89 = inttoptr %word 19 to %ptr
	%r93 = ptrtoint %ptr %r89 to %word
	%r92 = ptrtoint %ptr %r88 to %word
	%r91 = icmp eq %word %r93, %r92
	%r90 = inttoptr i1 %r91 to %ptr
	%r95 = ptrtoint %ptr %r90 to %word
	%r94 = icmp ne %word %r95, 0
	br i1 %r94, label %L1350, label %L1352
L1352:
	%r96 = call %ptr @"libc/flush-streams"()
	ret %ptr %r96
}
define %ptr @"subr/apply"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	%r19 = load %ptr, %ptr* %t2
	%r20 = call %ptr @"k/apply"(%ptr %r4, %ptr %r15, %ptr %r19)
	ret %ptr %r20
}
define %ptr @"subr/eval"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	store %ptr %r1, %ptr* %t3
	%r2 = load %ptr, %ptr* %t1
	%r3 = call %ptr @"k/cadr"(%ptr %r2)
	store %ptr %r3, %ptr* %t3
	%r4 = inttoptr %word 0 to %ptr
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = icmp eq %word %r8, %r7
	%r5 = inttoptr i1 %r6 to %ptr
	%r10 = ptrtoint %ptr %r5 to %word
	%r9 = icmp ne %word %r10, 0
	br i1 %r9, label %L1367, label %L1366
L1367:
	%r11 = inttoptr %word 1 to %ptr
	%r12 = inttoptr %word 1 to %ptr
	%r13 = load %ptr, %ptr* @"*module*"
	%r17 = bitcast %ptr %r13 to [0 x %ptr]*
	%r16 = ptrtoint %ptr %r12 to %word
	%r15 = getelementptr [0 x %ptr], [0 x %ptr]* %r17, %word 0, %word %r16
	%r14 = load %ptr, %ptr* %r15
	%r21 = bitcast %ptr %r14 to [0 x %ptr]*
	%r20 = ptrtoint %ptr %r11 to %word
	%r19 = getelementptr [0 x %ptr], [0 x %ptr]* %r21, %word 0, %word %r20
	%r18 = load %ptr, %ptr* %r19
	%r22 = inttoptr %word 1 to %ptr
	%r23 = inttoptr %word 0 to %ptr
	%r24 = call %ptr @"new-<env>"(%ptr %r18, %ptr %r22, %ptr %r23)
	store %ptr %r24, %ptr* %t3
	%r25 = inttoptr %word 0 to %ptr
	%r29 = ptrtoint %ptr %r25 to %word
	%r28 = ptrtoint %ptr %r24 to %word
	%r27 = icmp eq %word %r29, %r28
	%r26 = inttoptr i1 %r27 to %ptr
	%r31 = ptrtoint %ptr %r26 to %word
	%r30 = icmp ne %word %r31, 0
	br i1 %r30, label %L1368, label %L1366
L1368:
	br label %L1366
L1366:
	%r32 = load %ptr, %ptr* %t3
	store %ptr %r32, %ptr* %t3
	%r34 = getelementptr %ptr, %ptr* %t3, %word 0
	%r33 = bitcast %ptr* %r34 to %ptr
	%r35 = call %ptr @"gc/push-root"(%ptr %r33)
	%r36 = load %ptr, %ptr* %t1
	%r37 = call %ptr @"k/car"(%ptr %r36)
	%r38 = load %ptr, %ptr* %t3
	%r39 = call %ptr @"k/expand-encode-eval"(%ptr %r37, %ptr %r38)
	store %ptr %r39, %ptr* %t4
	%r41 = getelementptr %ptr, %ptr* %t3, %word 0
	%r40 = bitcast %ptr* %r41 to %ptr
	%r42 = call %ptr @"gc/pop-root"(%ptr %r40)
	%r43 = load %ptr, %ptr* %t4
	ret %ptr %r43
}
define %ptr @"subr/encode"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"k/car"(%ptr %r1)
	%r3 = inttoptr %word 0 to %ptr
	store %ptr %r3, %ptr* %t3
	%r4 = load %ptr, %ptr* %t1
	%r5 = call %ptr @"k/cadr"(%ptr %r4)
	store %ptr %r5, %ptr* %t3
	%r6 = inttoptr %word 0 to %ptr
	%r10 = ptrtoint %ptr %r6 to %word
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = icmp eq %word %r10, %r9
	%r7 = inttoptr i1 %r8 to %ptr
	%r12 = ptrtoint %ptr %r7 to %word
	%r11 = icmp ne %word %r12, 0
	br i1 %r11, label %L1370, label %L1369
L1370:
	%r13 = inttoptr %word 1 to %ptr
	%r14 = load %ptr, %ptr* %t2
	%r18 = bitcast %ptr %r14 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r13 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t3
	%r19 = inttoptr %word 0 to %ptr
	%r23 = ptrtoint %ptr %r19 to %word
	%r22 = ptrtoint %ptr %r15 to %word
	%r21 = icmp eq %word %r23, %r22
	%r20 = inttoptr i1 %r21 to %ptr
	%r25 = ptrtoint %ptr %r20 to %word
	%r24 = icmp ne %word %r25, 0
	br i1 %r24, label %L1371, label %L1369
L1371:
	br label %L1369
L1369:
	%r26 = load %ptr, %ptr* %t3
	%r27 = call %ptr @"k/encode"(%ptr %r2, %ptr %r26)
	ret %ptr %r27
}
define %ptr @"subr/expand"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"k/car"(%ptr %r1)
	%r3 = inttoptr %word 0 to %ptr
	store %ptr %r3, %ptr* %t3
	%r4 = load %ptr, %ptr* %t1
	%r5 = call %ptr @"k/cadr"(%ptr %r4)
	store %ptr %r5, %ptr* %t3
	%r6 = inttoptr %word 0 to %ptr
	%r10 = ptrtoint %ptr %r6 to %word
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = icmp eq %word %r10, %r9
	%r7 = inttoptr i1 %r8 to %ptr
	%r12 = ptrtoint %ptr %r7 to %word
	%r11 = icmp ne %word %r12, 0
	br i1 %r11, label %L1373, label %L1372
L1373:
	%r13 = inttoptr %word 1 to %ptr
	%r14 = load %ptr, %ptr* %t2
	%r18 = bitcast %ptr %r14 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r13 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t3
	%r19 = inttoptr %word 0 to %ptr
	%r23 = ptrtoint %ptr %r19 to %word
	%r22 = ptrtoint %ptr %r15 to %word
	%r21 = icmp eq %word %r23, %r22
	%r20 = inttoptr i1 %r21 to %ptr
	%r25 = ptrtoint %ptr %r20 to %word
	%r24 = icmp ne %word %r25, 0
	br i1 %r24, label %L1374, label %L1372
L1374:
	br label %L1372
L1372:
	%r26 = load %ptr, %ptr* %t3
	%r27 = call %ptr @"k/expand"(%ptr %r2, %ptr %r26)
	ret %ptr %r27
}
define %ptr @"subr/cons"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"k/car"(%ptr %r1)
	%r3 = load %ptr, %ptr* %t1
	%r4 = call %ptr @"k/cadr"(%ptr %r3)
	%r5 = call %ptr @"new-<pair>"(%ptr %r2, %ptr %r4)
	ret %ptr %r5
}
define %ptr @"subr/string"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 1 to %ptr
	%r3 = inttoptr %word 0 to %ptr
	%r4 = load %ptr, %ptr* %t1
	%r8 = bitcast %ptr %r4 to [0 x %ptr]*
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = getelementptr [0 x %ptr], [0 x %ptr]* %r8, %word 0, %word %r7
	%r5 = load %ptr, %ptr* %r6
	%r12 = ptrtoint %ptr %r5 to %word
	%r11 = ptrtoint %ptr %r2 to %word
	%r10 = ashr %word %r12, %r11
	%r9 = inttoptr %word %r10 to %ptr
	%r13 = call %ptr @"new-<string>-of-length"(%ptr %r9)
	ret %ptr %r13
}
define %ptr @"subr/array"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 1 to %ptr
	store %ptr %r1, %ptr* %t3
	%r2 = load %ptr, %ptr* %t1
	%r3 = call %ptr @"k/car"(%ptr %r2)
	%r4 = call %ptr @"get/type"(%ptr %r3)
	%r5 = inttoptr %word 6 to %ptr
	%r9 = ptrtoint %ptr %r5 to %word
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = icmp eq %word %r9, %r8
	%r6 = inttoptr i1 %r7 to %ptr
	store %ptr %r6, %ptr* %t3
	%r10 = inttoptr %word 0 to %ptr
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = ptrtoint %ptr %r6 to %word
	%r12 = icmp eq %word %r14, %r13
	%r11 = inttoptr i1 %r12 to %ptr
	%r16 = ptrtoint %ptr %r11 to %word
	%r15 = icmp ne %word %r16, 0
	br i1 %r15, label %L1375, label %L1376
L1376:
	%r17 = inttoptr %word 1 to %ptr
	%r18 = inttoptr %word 0 to %ptr
	%r19 = load %ptr, %ptr* %t1
	%r23 = bitcast %ptr %r19 to [0 x %ptr]*
	%r22 = ptrtoint %ptr %r18 to %word
	%r21 = getelementptr [0 x %ptr], [0 x %ptr]* %r23, %word 0, %word %r22
	%r20 = load %ptr, %ptr* %r21
	%r27 = ptrtoint %ptr %r20 to %word
	%r26 = ptrtoint %ptr %r17 to %word
	%r25 = ashr %word %r27, %r26
	%r24 = inttoptr %word %r25 to %ptr
	store %ptr %r24, %ptr* %t3
	%r28 = inttoptr %word 0 to %ptr
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = ptrtoint %ptr %r24 to %word
	%r30 = icmp eq %word %r32, %r31
	%r29 = inttoptr i1 %r30 to %ptr
	%r34 = ptrtoint %ptr %r29 to %word
	%r33 = icmp ne %word %r34, 0
	br i1 %r33, label %L1375, label %L1377
L1377:
	br label %L1375
L1375:
	%r35 = load %ptr, %ptr* %t3
	%r36 = call %ptr @"new-<array>"(%ptr %r35)
	ret %ptr %r36
}
define %ptr @"subr/form"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = call %ptr @"k/car"(%ptr %r1)
	%r3 = load %ptr, %ptr* %t1
	%r4 = call %ptr @"k/cadr"(%ptr %r3)
	%r5 = call %ptr @"new-<form>"(%ptr %r2, %ptr %r4)
	ret %ptr %r5
}
define %ptr @"subr/allocate"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 0 to %ptr
	%r20 = inttoptr %word 0 to %ptr
	%r21 = inttoptr %word 1 to %ptr
	%r22 = load %ptr, %ptr* %t3
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ashr %word %r26, %r25
	%r23 = inttoptr %word %r24 to %ptr
	%r27 = inttoptr %word 8 to %ptr
	%r28 = inttoptr %word 1 to %ptr
	%r29 = load %ptr, %ptr* %t4
	%r33 = ptrtoint %ptr %r29 to %word
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = ashr %word %r33, %r32
	%r30 = inttoptr %word %r31 to %ptr
	%r37 = ptrtoint %ptr %r30 to %word
	%r36 = ptrtoint %ptr %r27 to %word
	%r35 = mul %word %r37, %r36
	%r34 = inttoptr %word %r35 to %ptr
	%r38 = call %ptr @"gc/allocate"(%ptr %r23, %ptr %r34)
	ret %ptr %r38
}
define %ptr @"subr/allocate-data"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 4 to %ptr
	%r10 = inttoptr %word 1 to %ptr
	%r11 = load %ptr, %ptr* %t3
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = ashr %word %r15, %r14
	%r12 = inttoptr %word %r13 to %ptr
	%r16 = call %ptr @"gc/allocate-opaque"(%ptr %r9, %ptr %r12)
	ret %ptr %r16
}
define %ptr @"subr/type-of"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 1 to %ptr
	%r3 = inttoptr %word 1 to %ptr
	%r4 = inttoptr %word 0 to %ptr
	%r5 = load %ptr, %ptr* %t1
	%r9 = bitcast %ptr %r5 to [0 x %ptr]*
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = getelementptr [0 x %ptr], [0 x %ptr]* %r9, %word 0, %word %r8
	%r6 = load %ptr, %ptr* %r7
	%r10 = call %ptr @"get/type"(%ptr %r6)
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = ptrtoint %ptr %r3 to %word
	%r12 = shl %word %r14, %r13
	%r11 = inttoptr %word %r12 to %ptr
	%r18 = ptrtoint %ptr %r11 to %word
	%r17 = ptrtoint %ptr %r2 to %word
	%r16 = add %word %r18, %r17
	%r15 = inttoptr %word %r16 to %ptr
	ret %ptr %r15
}
define %ptr @"subr/string?"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 1 to %ptr
	store %ptr %r2, %ptr* %t3
	%r3 = inttoptr %word 0 to %ptr
	%r4 = load %ptr, %ptr* %t1
	%r8 = bitcast %ptr %r4 to [0 x %ptr]*
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = getelementptr [0 x %ptr], [0 x %ptr]* %r8, %word 0, %word %r7
	%r5 = load %ptr, %ptr* %r6
	%r9 = call %ptr @"get/type"(%ptr %r5)
	%r10 = inttoptr %word 8 to %ptr
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = icmp eq %word %r14, %r13
	%r11 = inttoptr i1 %r12 to %ptr
	store %ptr %r11, %ptr* %t3
	%r15 = inttoptr %word 0 to %ptr
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = ptrtoint %ptr %r11 to %word
	%r17 = icmp eq %word %r19, %r18
	%r16 = inttoptr i1 %r17 to %ptr
	%r21 = ptrtoint %ptr %r16 to %word
	%r20 = icmp ne %word %r21, 0
	br i1 %r20, label %L1378, label %L1379
L1379:
	%r22 = load %ptr, %ptr* @"symbol/true"
	store %ptr %r22, %ptr* %t3
	%r23 = inttoptr %word 0 to %ptr
	%r27 = ptrtoint %ptr %r23 to %word
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = icmp eq %word %r27, %r26
	%r24 = inttoptr i1 %r25 to %ptr
	%r29 = ptrtoint %ptr %r24 to %word
	%r28 = icmp ne %word %r29, 0
	br i1 %r28, label %L1378, label %L1380
L1380:
	br label %L1378
L1378:
	%r30 = load %ptr, %ptr* %t3
	ret %ptr %r30
}
define %ptr @"subr/symbol?"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 1 to %ptr
	store %ptr %r2, %ptr* %t3
	%r3 = inttoptr %word 0 to %ptr
	%r4 = load %ptr, %ptr* %t1
	%r8 = bitcast %ptr %r4 to [0 x %ptr]*
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = getelementptr [0 x %ptr], [0 x %ptr]* %r8, %word 0, %word %r7
	%r5 = load %ptr, %ptr* %r6
	%r9 = call %ptr @"get/type"(%ptr %r5)
	%r10 = inttoptr %word 18 to %ptr
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = icmp eq %word %r14, %r13
	%r11 = inttoptr i1 %r12 to %ptr
	store %ptr %r11, %ptr* %t3
	%r15 = inttoptr %word 0 to %ptr
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = ptrtoint %ptr %r11 to %word
	%r17 = icmp eq %word %r19, %r18
	%r16 = inttoptr i1 %r17 to %ptr
	%r21 = ptrtoint %ptr %r16 to %word
	%r20 = icmp ne %word %r21, 0
	br i1 %r20, label %L1381, label %L1382
L1382:
	%r22 = load %ptr, %ptr* @"symbol/true"
	store %ptr %r22, %ptr* %t3
	%r23 = inttoptr %word 0 to %ptr
	%r27 = ptrtoint %ptr %r23 to %word
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = icmp eq %word %r27, %r26
	%r24 = inttoptr i1 %r25 to %ptr
	%r29 = ptrtoint %ptr %r24 to %word
	%r28 = icmp ne %word %r29, 0
	br i1 %r28, label %L1381, label %L1383
L1383:
	br label %L1381
L1381:
	%r30 = load %ptr, %ptr* %t3
	ret %ptr %r30
}
define %ptr @"subr/pair?"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 1 to %ptr
	store %ptr %r2, %ptr* %t3
	%r3 = inttoptr %word 0 to %ptr
	%r4 = load %ptr, %ptr* %t1
	%r8 = bitcast %ptr %r4 to [0 x %ptr]*
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = getelementptr [0 x %ptr], [0 x %ptr]* %r8, %word 0, %word %r7
	%r5 = load %ptr, %ptr* %r6
	%r9 = call %ptr @"get/type"(%ptr %r5)
	%r10 = inttoptr %word 19 to %ptr
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = icmp eq %word %r14, %r13
	%r11 = inttoptr i1 %r12 to %ptr
	store %ptr %r11, %ptr* %t3
	%r15 = inttoptr %word 0 to %ptr
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = ptrtoint %ptr %r11 to %word
	%r17 = icmp eq %word %r19, %r18
	%r16 = inttoptr i1 %r17 to %ptr
	%r21 = ptrtoint %ptr %r16 to %word
	%r20 = icmp ne %word %r21, 0
	br i1 %r20, label %L1384, label %L1385
L1385:
	%r22 = load %ptr, %ptr* @"symbol/true"
	store %ptr %r22, %ptr* %t3
	%r23 = inttoptr %word 0 to %ptr
	%r27 = ptrtoint %ptr %r23 to %word
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = icmp eq %word %r27, %r26
	%r24 = inttoptr i1 %r25 to %ptr
	%r29 = ptrtoint %ptr %r24 to %word
	%r28 = icmp ne %word %r29, 0
	br i1 %r28, label %L1384, label %L1386
L1386:
	br label %L1384
L1384:
	%r30 = load %ptr, %ptr* %t3
	ret %ptr %r30
}
define %ptr @"subr/array?"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 1 to %ptr
	store %ptr %r2, %ptr* %t3
	%r3 = inttoptr %word 0 to %ptr
	%r4 = load %ptr, %ptr* %t1
	%r8 = bitcast %ptr %r4 to [0 x %ptr]*
	%r7 = ptrtoint %ptr %r3 to %word
	%r6 = getelementptr [0 x %ptr], [0 x %ptr]* %r8, %word 0, %word %r7
	%r5 = load %ptr, %ptr* %r6
	%r9 = call %ptr @"get/type"(%ptr %r5)
	%r10 = inttoptr %word 7 to %ptr
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = icmp eq %word %r14, %r13
	%r11 = inttoptr i1 %r12 to %ptr
	store %ptr %r11, %ptr* %t3
	%r15 = inttoptr %word 0 to %ptr
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = ptrtoint %ptr %r11 to %word
	%r17 = icmp eq %word %r19, %r18
	%r16 = inttoptr i1 %r17 to %ptr
	%r21 = ptrtoint %ptr %r16 to %word
	%r20 = icmp ne %word %r21, 0
	br i1 %r20, label %L1387, label %L1388
L1388:
	%r22 = load %ptr, %ptr* @"symbol/true"
	store %ptr %r22, %ptr* %t3
	%r23 = inttoptr %word 0 to %ptr
	%r27 = ptrtoint %ptr %r23 to %word
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = icmp eq %word %r27, %r26
	%r24 = inttoptr i1 %r25 to %ptr
	%r29 = ptrtoint %ptr %r24 to %word
	%r28 = icmp ne %word %r29, 0
	br i1 %r28, label %L1387, label %L1389
L1389:
	br label %L1387
L1387:
	%r30 = load %ptr, %ptr* %t3
	ret %ptr %r30
}
define %ptr @"subr/car"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	%r8 = call %ptr @"k/car"(%ptr %r4)
	ret %ptr %r8
}
define %ptr @"subr/cdr"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	%r8 = call %ptr @"k/cdr"(%ptr %r4)
	ret %ptr %r8
}
define %ptr @"subr/set-car"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 1 to %ptr
	store %ptr %r8, %ptr* %t4
	%r9 = load %ptr, %ptr* %t3
	%r10 = call %ptr @"get/type"(%ptr %r9)
	%r11 = inttoptr %word 19 to %ptr
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = icmp eq %word %r15, %r14
	%r12 = inttoptr i1 %r13 to %ptr
	store %ptr %r12, %ptr* %t4
	%r16 = inttoptr %word 0 to %ptr
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r12 to %word
	%r18 = icmp eq %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	%r22 = ptrtoint %ptr %r17 to %word
	%r21 = icmp ne %word %r22, 0
	br i1 %r21, label %L1390, label %L1391
L1391:
	%r23 = inttoptr %word 0 to %ptr
	%r24 = inttoptr %word 1 to %ptr
	%r25 = load %ptr, %ptr* %t1
	%r29 = bitcast %ptr %r25 to [0 x %ptr]*
	%r28 = ptrtoint %ptr %r24 to %word
	%r27 = getelementptr [0 x %ptr], [0 x %ptr]* %r29, %word 0, %word %r28
	%r26 = load %ptr, %ptr* %r27
	%r33 = bitcast %ptr %r26 to [0 x %ptr]*
	%r32 = ptrtoint %ptr %r23 to %word
	%r31 = getelementptr [0 x %ptr], [0 x %ptr]* %r33, %word 0, %word %r32
	%r30 = load %ptr, %ptr* %r31
	%r34 = inttoptr %word 0 to %ptr
	%r35 = load %ptr, %ptr* %t3
	%r39 = bitcast %ptr %r35 to [0 x %ptr]*
	%r38 = ptrtoint %ptr %r34 to %word
	%r37 = getelementptr [0 x %ptr], [0 x %ptr]* %r39, %word 0, %word %r38
	store %ptr %r30, %ptr* %r37
	%r36 = bitcast %ptr %r30 to %ptr
	store %ptr %r36, %ptr* %t4
	%r40 = inttoptr %word 0 to %ptr
	%r44 = ptrtoint %ptr %r40 to %word
	%r43 = ptrtoint %ptr %r36 to %word
	%r42 = icmp eq %word %r44, %r43
	%r41 = inttoptr i1 %r42 to %ptr
	%r46 = ptrtoint %ptr %r41 to %word
	%r45 = icmp ne %word %r46, 0
	br i1 %r45, label %L1390, label %L1392
L1392:
	br label %L1390
L1390:
	%r47 = load %ptr, %ptr* %t4
	ret %ptr %r47
}
define %ptr @"subr/set-cdr"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 1 to %ptr
	store %ptr %r8, %ptr* %t4
	%r9 = load %ptr, %ptr* %t3
	%r10 = call %ptr @"get/type"(%ptr %r9)
	%r11 = inttoptr %word 19 to %ptr
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = icmp eq %word %r15, %r14
	%r12 = inttoptr i1 %r13 to %ptr
	store %ptr %r12, %ptr* %t4
	%r16 = inttoptr %word 0 to %ptr
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r12 to %word
	%r18 = icmp eq %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	%r22 = ptrtoint %ptr %r17 to %word
	%r21 = icmp ne %word %r22, 0
	br i1 %r21, label %L1393, label %L1394
L1394:
	%r23 = inttoptr %word 0 to %ptr
	%r24 = inttoptr %word 1 to %ptr
	%r25 = load %ptr, %ptr* %t1
	%r29 = bitcast %ptr %r25 to [0 x %ptr]*
	%r28 = ptrtoint %ptr %r24 to %word
	%r27 = getelementptr [0 x %ptr], [0 x %ptr]* %r29, %word 0, %word %r28
	%r26 = load %ptr, %ptr* %r27
	%r33 = bitcast %ptr %r26 to [0 x %ptr]*
	%r32 = ptrtoint %ptr %r23 to %word
	%r31 = getelementptr [0 x %ptr], [0 x %ptr]* %r33, %word 0, %word %r32
	%r30 = load %ptr, %ptr* %r31
	%r34 = inttoptr %word 1 to %ptr
	%r35 = load %ptr, %ptr* %t3
	%r39 = bitcast %ptr %r35 to [0 x %ptr]*
	%r38 = ptrtoint %ptr %r34 to %word
	%r37 = getelementptr [0 x %ptr], [0 x %ptr]* %r39, %word 0, %word %r38
	store %ptr %r30, %ptr* %r37
	%r36 = bitcast %ptr %r30 to %ptr
	store %ptr %r36, %ptr* %t4
	%r40 = inttoptr %word 0 to %ptr
	%r44 = ptrtoint %ptr %r40 to %word
	%r43 = ptrtoint %ptr %r36 to %word
	%r42 = icmp eq %word %r44, %r43
	%r41 = inttoptr i1 %r42 to %ptr
	%r46 = ptrtoint %ptr %r41 to %word
	%r45 = icmp ne %word %r46, 0
	br i1 %r45, label %L1393, label %L1395
L1395:
	br label %L1393
L1393:
	%r47 = load %ptr, %ptr* %t4
	ret %ptr %r47
}
define %ptr @"subr/copy-oops"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t5 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 1 to %ptr
	%r20 = inttoptr %word 0 to %ptr
	%r21 = inttoptr %word 1 to %ptr
	%r22 = inttoptr %word 1 to %ptr
	%r23 = load %ptr, %ptr* %t1
	%r27 = bitcast %ptr %r23 to [0 x %ptr]*
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = getelementptr [0 x %ptr], [0 x %ptr]* %r27, %word 0, %word %r26
	%r24 = load %ptr, %ptr* %r25
	%r31 = bitcast %ptr %r24 to [0 x %ptr]*
	%r30 = ptrtoint %ptr %r21 to %word
	%r29 = getelementptr [0 x %ptr], [0 x %ptr]* %r31, %word 0, %word %r30
	%r28 = load %ptr, %ptr* %r29
	%r35 = bitcast %ptr %r28 to [0 x %ptr]*
	%r34 = ptrtoint %ptr %r20 to %word
	%r33 = getelementptr [0 x %ptr], [0 x %ptr]* %r35, %word 0, %word %r34
	%r32 = load %ptr, %ptr* %r33
	%r39 = ptrtoint %ptr %r32 to %word
	%r38 = ptrtoint %ptr %r19 to %word
	%r37 = ashr %word %r39, %r38
	%r36 = inttoptr %word %r37 to %ptr
	store %ptr %r36, %ptr* %t5
	%r40 = load %ptr, %ptr* %t4
	%r41 = load %ptr, %ptr* %t3
	%r42 = inttoptr %word 8 to %ptr
	%r43 = load %ptr, %ptr* %t5
	%r47 = ptrtoint %ptr %r43 to %word
	%r46 = ptrtoint %ptr %r42 to %word
	%r45 = mul %word %r47, %r46
	%r44 = inttoptr %word %r45 to %ptr
	%ffi-cast48 = ptrtoint %ptr %r44 to i32
	%r49 = call %ptr @memcpy(%ptr %r40, %ptr %r41, i32 %ffi-cast48)
	%r50 = inttoptr %word 0 to %ptr
	ret %ptr %r50
}
define %ptr @"subr/oop-at"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 0 to %ptr
	%r20 = inttoptr %word 1 to %ptr
	%r21 = load %ptr, %ptr* %t4
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ptrtoint %ptr %r20 to %word
	%r23 = ashr %word %r25, %r24
	%r22 = inttoptr %word %r23 to %ptr
	%r26 = load %ptr, %ptr* %t3
	%r30 = bitcast %ptr %r26 to [0 x %ptr]*
	%r29 = ptrtoint %ptr %r22 to %word
	%r28 = getelementptr [0 x %ptr], [0 x %ptr]* %r30, %word 0, %word %r29
	%r27 = load %ptr, %ptr* %r28
	ret %ptr %r27
}
define %ptr @"subr/set-oop-at"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t5 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	store %ptr %r11, %ptr* %t1
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 0 to %ptr
	%r20 = inttoptr %word 1 to %ptr
	%r21 = load %ptr, %ptr* %t1
	%r25 = bitcast %ptr %r21 to [0 x %ptr]*
	%r24 = ptrtoint %ptr %r20 to %word
	%r23 = getelementptr [0 x %ptr], [0 x %ptr]* %r25, %word 0, %word %r24
	%r22 = load %ptr, %ptr* %r23
	%r29 = bitcast %ptr %r22 to [0 x %ptr]*
	%r28 = ptrtoint %ptr %r19 to %word
	%r27 = getelementptr [0 x %ptr], [0 x %ptr]* %r29, %word 0, %word %r28
	%r26 = load %ptr, %ptr* %r27
	store %ptr %r26, %ptr* %t5
	%r30 = inttoptr %word 0 to %ptr
	%r31 = load %ptr, %ptr* %t5
	%r32 = inttoptr %word 1 to %ptr
	%r33 = load %ptr, %ptr* %t4
	%r37 = ptrtoint %ptr %r33 to %word
	%r36 = ptrtoint %ptr %r32 to %word
	%r35 = ashr %word %r37, %r36
	%r34 = inttoptr %word %r35 to %ptr
	%r38 = load %ptr, %ptr* %t3
	%r42 = bitcast %ptr %r38 to [0 x %ptr]*
	%r41 = ptrtoint %ptr %r34 to %word
	%r40 = getelementptr [0 x %ptr], [0 x %ptr]* %r42, %word 0, %word %r41
	store %ptr %r31, %ptr* %r40
	%r39 = bitcast %ptr %r31 to %ptr
	ret %ptr %r39
}
define %ptr @"subr/address-of"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 1 to %ptr
	%r3 = inttoptr %word 1 to %ptr
	%r4 = inttoptr %word 0 to %ptr
	%r5 = load %ptr, %ptr* %t1
	%r9 = bitcast %ptr %r5 to [0 x %ptr]*
	%r8 = ptrtoint %ptr %r4 to %word
	%r7 = getelementptr [0 x %ptr], [0 x %ptr]* %r9, %word 0, %word %r8
	%r6 = load %ptr, %ptr* %r7
	%r13 = ptrtoint %ptr %r6 to %word
	%r12 = ptrtoint %ptr %r3 to %word
	%r11 = shl %word %r13, %r12
	%r10 = inttoptr %word %r11 to %ptr
	%r17 = ptrtoint %ptr %r10 to %word
	%r16 = ptrtoint %ptr %r2 to %word
	%r15 = add %word %r17, %r16
	%r14 = inttoptr %word %r15 to %ptr
	ret %ptr %r14
}
define %ptr @"subr/copy-bytes"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t5 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 1 to %ptr
	%r20 = inttoptr %word 0 to %ptr
	%r21 = inttoptr %word 1 to %ptr
	%r22 = inttoptr %word 1 to %ptr
	%r23 = load %ptr, %ptr* %t1
	%r27 = bitcast %ptr %r23 to [0 x %ptr]*
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = getelementptr [0 x %ptr], [0 x %ptr]* %r27, %word 0, %word %r26
	%r24 = load %ptr, %ptr* %r25
	%r31 = bitcast %ptr %r24 to [0 x %ptr]*
	%r30 = ptrtoint %ptr %r21 to %word
	%r29 = getelementptr [0 x %ptr], [0 x %ptr]* %r31, %word 0, %word %r30
	%r28 = load %ptr, %ptr* %r29
	%r35 = bitcast %ptr %r28 to [0 x %ptr]*
	%r34 = ptrtoint %ptr %r20 to %word
	%r33 = getelementptr [0 x %ptr], [0 x %ptr]* %r35, %word 0, %word %r34
	%r32 = load %ptr, %ptr* %r33
	%r39 = ptrtoint %ptr %r32 to %word
	%r38 = ptrtoint %ptr %r19 to %word
	%r37 = ashr %word %r39, %r38
	%r36 = inttoptr %word %r37 to %ptr
	store %ptr %r36, %ptr* %t5
	%r40 = load %ptr, %ptr* %t4
	%r41 = load %ptr, %ptr* %t3
	%r42 = load %ptr, %ptr* %t5
	%ffi-cast43 = ptrtoint %ptr %r42 to i32
	%r44 = call %ptr @memcpy(%ptr %r40, %ptr %r41, i32 %ffi-cast43)
	%r45 = inttoptr %word 0 to %ptr
	ret %ptr %r45
}
define %ptr @"subr/byte-at"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 0 to %ptr
	%r20 = inttoptr %word 1 to %ptr
	%r21 = inttoptr %word 1 to %ptr
	%r22 = inttoptr %word 1 to %ptr
	%r23 = load %ptr, %ptr* %t4
	%r27 = ptrtoint %ptr %r23 to %word
	%r26 = ptrtoint %ptr %r22 to %word
	%r25 = ashr %word %r27, %r26
	%r24 = inttoptr %word %r25 to %ptr
	%r28 = load %ptr, %ptr* %t3
	%r33 = bitcast %ptr %r28 to [0 x i8]*
	%r32 = ptrtoint %ptr %r24 to %word
	%r31 = getelementptr [0 x i8], [0 x i8]* %r33, %word 0, %word %r32
	%r30 = load i8, i8* %r31
	%r29 = inttoptr i8 %r30 to %ptr
	%r37 = ptrtoint %ptr %r29 to %word
	%r36 = ptrtoint %ptr %r21 to %word
	%r35 = shl %word %r37, %r36
	%r34 = inttoptr %word %r35 to %ptr
	%r41 = ptrtoint %ptr %r34 to %word
	%r40 = ptrtoint %ptr %r20 to %word
	%r39 = add %word %r41, %r40
	%r38 = inttoptr %word %r39 to %ptr
	ret %ptr %r38
}
define %ptr @"subr/set-byte-at"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t6 = alloca %ptr
	%t5 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	store %ptr %r11, %ptr* %t1
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = inttoptr %word 0 to %ptr
	%r20 = inttoptr %word 1 to %ptr
	%r21 = load %ptr, %ptr* %t1
	%r25 = bitcast %ptr %r21 to [0 x %ptr]*
	%r24 = ptrtoint %ptr %r20 to %word
	%r23 = getelementptr [0 x %ptr], [0 x %ptr]* %r25, %word 0, %word %r24
	%r22 = load %ptr, %ptr* %r23
	%r29 = bitcast %ptr %r22 to [0 x %ptr]*
	%r28 = ptrtoint %ptr %r19 to %word
	%r27 = getelementptr [0 x %ptr], [0 x %ptr]* %r29, %word 0, %word %r28
	%r26 = load %ptr, %ptr* %r27
	store %ptr %r26, %ptr* %t5
	%r30 = inttoptr %word 1 to %ptr
	%r31 = load %ptr, %ptr* %t5
	%r35 = ptrtoint %ptr %r31 to %word
	%r34 = ptrtoint %ptr %r30 to %word
	%r33 = ashr %word %r35, %r34
	%r32 = inttoptr %word %r33 to %ptr
	store %ptr %r32, %ptr* %t6
	%r36 = inttoptr %word 0 to %ptr
	%r37 = inttoptr %word 0 to %ptr
	%r38 = load %ptr, %ptr* %t6
	%r39 = inttoptr %word 1 to %ptr
	%r40 = load %ptr, %ptr* %t4
	%r44 = ptrtoint %ptr %r40 to %word
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = ashr %word %r44, %r43
	%r41 = inttoptr %word %r42 to %ptr
	%r45 = load %ptr, %ptr* %t3
	%r51 = bitcast %ptr %r45 to [0 x i8]*
	%r50 = ptrtoint %ptr %r41 to %word
	%r49 = getelementptr [0 x i8], [0 x i8]* %r51, %word 0, %word %r50
	%r48 = ptrtoint %ptr %r38 to i8
	store i8 %r48, i8* %r49
	%r47 = zext i8 %r48 to %word
	%r46 = inttoptr %word %r47 to %ptr
	ret %ptr %r46
}
define %ptr @"subr/array-length"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 0 to %ptr
	%r10 = load %ptr, %ptr* %t3
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	ret %ptr %r11
}
define %ptr @"subr/string-length"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 0 to %ptr
	%r10 = load %ptr, %ptr* %t3
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	ret %ptr %r11
}
define %ptr @"subr/array-at"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 1 to %ptr
	%r9 = inttoptr %word 0 to %ptr
	%r10 = inttoptr %word 1 to %ptr
	%r11 = load %ptr, %ptr* %t1
	%r15 = bitcast %ptr %r11 to [0 x %ptr]*
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = getelementptr [0 x %ptr], [0 x %ptr]* %r15, %word 0, %word %r14
	%r12 = load %ptr, %ptr* %r13
	%r19 = bitcast %ptr %r12 to [0 x %ptr]*
	%r18 = ptrtoint %ptr %r9 to %word
	%r17 = getelementptr [0 x %ptr], [0 x %ptr]* %r19, %word 0, %word %r18
	%r16 = load %ptr, %ptr* %r17
	%r23 = ptrtoint %ptr %r16 to %word
	%r22 = ptrtoint %ptr %r8 to %word
	%r21 = ashr %word %r23, %r22
	%r20 = inttoptr %word %r21 to %ptr
	store %ptr %r20, %ptr* %t4
	%r24 = load %ptr, %ptr* %t3
	%r25 = load %ptr, %ptr* %t4
	%r26 = call %ptr @"k/array-at"(%ptr %r24, %ptr %r25)
	ret %ptr %r26
}
define %ptr @"subr/string-at"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 1 to %ptr
	%r9 = inttoptr %word 0 to %ptr
	%r10 = inttoptr %word 1 to %ptr
	%r11 = load %ptr, %ptr* %t1
	%r15 = bitcast %ptr %r11 to [0 x %ptr]*
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = getelementptr [0 x %ptr], [0 x %ptr]* %r15, %word 0, %word %r14
	%r12 = load %ptr, %ptr* %r13
	%r19 = bitcast %ptr %r12 to [0 x %ptr]*
	%r18 = ptrtoint %ptr %r9 to %word
	%r17 = getelementptr [0 x %ptr], [0 x %ptr]* %r19, %word 0, %word %r18
	%r16 = load %ptr, %ptr* %r17
	%r23 = ptrtoint %ptr %r16 to %word
	%r22 = ptrtoint %ptr %r8 to %word
	%r21 = ashr %word %r23, %r22
	%r20 = inttoptr %word %r21 to %ptr
	store %ptr %r20, %ptr* %t4
	%r24 = inttoptr %word 1 to %ptr
	%r25 = inttoptr %word 1 to %ptr
	%r26 = load %ptr, %ptr* %t3
	%r27 = load %ptr, %ptr* %t4
	%r28 = call %ptr @"k/string-at"(%ptr %r26, %ptr %r27)
	%r32 = ptrtoint %ptr %r28 to %word
	%r31 = ptrtoint %ptr %r25 to %word
	%r30 = shl %word %r32, %r31
	%r29 = inttoptr %word %r30 to %ptr
	%r36 = ptrtoint %ptr %r29 to %word
	%r35 = ptrtoint %ptr %r24 to %word
	%r34 = add %word %r36, %r35
	%r33 = inttoptr %word %r34 to %ptr
	ret %ptr %r33
}
define %ptr @"subr/set-array-at"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t5 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 1 to %ptr
	%r9 = inttoptr %word 0 to %ptr
	%r10 = inttoptr %word 1 to %ptr
	%r11 = load %ptr, %ptr* %t1
	%r15 = bitcast %ptr %r11 to [0 x %ptr]*
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = getelementptr [0 x %ptr], [0 x %ptr]* %r15, %word 0, %word %r14
	%r12 = load %ptr, %ptr* %r13
	store %ptr %r12, %ptr* %t1
	%r19 = bitcast %ptr %r12 to [0 x %ptr]*
	%r18 = ptrtoint %ptr %r9 to %word
	%r17 = getelementptr [0 x %ptr], [0 x %ptr]* %r19, %word 0, %word %r18
	%r16 = load %ptr, %ptr* %r17
	%r23 = ptrtoint %ptr %r16 to %word
	%r22 = ptrtoint %ptr %r8 to %word
	%r21 = ashr %word %r23, %r22
	%r20 = inttoptr %word %r21 to %ptr
	store %ptr %r20, %ptr* %t4
	%r24 = inttoptr %word 0 to %ptr
	%r25 = inttoptr %word 1 to %ptr
	%r26 = load %ptr, %ptr* %t1
	%r30 = bitcast %ptr %r26 to [0 x %ptr]*
	%r29 = ptrtoint %ptr %r25 to %word
	%r28 = getelementptr [0 x %ptr], [0 x %ptr]* %r30, %word 0, %word %r29
	%r27 = load %ptr, %ptr* %r28
	%r34 = bitcast %ptr %r27 to [0 x %ptr]*
	%r33 = ptrtoint %ptr %r24 to %word
	%r32 = getelementptr [0 x %ptr], [0 x %ptr]* %r34, %word 0, %word %r33
	%r31 = load %ptr, %ptr* %r32
	store %ptr %r31, %ptr* %t5
	%r35 = load %ptr, %ptr* %t3
	%r36 = load %ptr, %ptr* %t4
	%r37 = load %ptr, %ptr* %t5
	%r38 = call %ptr @"set-k/array-at"(%ptr %r35, %ptr %r36, %ptr %r37)
	%r39 = load %ptr, %ptr* %t5
	ret %ptr %r39
}
define %ptr @"subr/set-string-at"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 1 to %ptr
	%r9 = inttoptr %word 0 to %ptr
	%r10 = inttoptr %word 1 to %ptr
	%r11 = load %ptr, %ptr* %t1
	%r15 = bitcast %ptr %r11 to [0 x %ptr]*
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = getelementptr [0 x %ptr], [0 x %ptr]* %r15, %word 0, %word %r14
	%r12 = load %ptr, %ptr* %r13
	store %ptr %r12, %ptr* %t1
	%r19 = bitcast %ptr %r12 to [0 x %ptr]*
	%r18 = ptrtoint %ptr %r9 to %word
	%r17 = getelementptr [0 x %ptr], [0 x %ptr]* %r19, %word 0, %word %r18
	%r16 = load %ptr, %ptr* %r17
	%r23 = ptrtoint %ptr %r16 to %word
	%r22 = ptrtoint %ptr %r8 to %word
	%r21 = ashr %word %r23, %r22
	%r20 = inttoptr %word %r21 to %ptr
	store %ptr %r20, %ptr* %t4
	%r24 = inttoptr %word 0 to %ptr
	%r25 = inttoptr %word 1 to %ptr
	%r26 = load %ptr, %ptr* %t1
	%r30 = bitcast %ptr %r26 to [0 x %ptr]*
	%r29 = ptrtoint %ptr %r25 to %word
	%r28 = getelementptr [0 x %ptr], [0 x %ptr]* %r30, %word 0, %word %r29
	%r27 = load %ptr, %ptr* %r28
	%r34 = bitcast %ptr %r27 to [0 x %ptr]*
	%r33 = ptrtoint %ptr %r24 to %word
	%r32 = getelementptr [0 x %ptr], [0 x %ptr]* %r34, %word 0, %word %r33
	%r31 = load %ptr, %ptr* %r32
	store %ptr %r31, %ptr* %t5
	%r35 = inttoptr %word 0 to %ptr
	%r36 = load %ptr, %ptr* %t3
	%r37 = load %ptr, %ptr* %t4
	%r38 = inttoptr %word 1 to %ptr
	%r39 = load %ptr, %ptr* %t5
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = ashr %word %r43, %r42
	%r40 = inttoptr %word %r41 to %ptr
	%r44 = call %ptr @"set-k/string-at"(%ptr %r36, %ptr %r37, %ptr %r40)
	%r45 = load %ptr, %ptr* %t5
	ret %ptr %r45
}
define %ptr @"subr/array-insert"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t5 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 1 to %ptr
	%r9 = inttoptr %word 0 to %ptr
	%r10 = inttoptr %word 1 to %ptr
	%r11 = load %ptr, %ptr* %t1
	%r15 = bitcast %ptr %r11 to [0 x %ptr]*
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = getelementptr [0 x %ptr], [0 x %ptr]* %r15, %word 0, %word %r14
	%r12 = load %ptr, %ptr* %r13
	store %ptr %r12, %ptr* %t1
	%r19 = bitcast %ptr %r12 to [0 x %ptr]*
	%r18 = ptrtoint %ptr %r9 to %word
	%r17 = getelementptr [0 x %ptr], [0 x %ptr]* %r19, %word 0, %word %r18
	%r16 = load %ptr, %ptr* %r17
	%r23 = ptrtoint %ptr %r16 to %word
	%r22 = ptrtoint %ptr %r8 to %word
	%r21 = ashr %word %r23, %r22
	%r20 = inttoptr %word %r21 to %ptr
	store %ptr %r20, %ptr* %t4
	%r24 = inttoptr %word 0 to %ptr
	%r25 = inttoptr %word 1 to %ptr
	%r26 = load %ptr, %ptr* %t1
	%r30 = bitcast %ptr %r26 to [0 x %ptr]*
	%r29 = ptrtoint %ptr %r25 to %word
	%r28 = getelementptr [0 x %ptr], [0 x %ptr]* %r30, %word 0, %word %r29
	%r27 = load %ptr, %ptr* %r28
	%r34 = bitcast %ptr %r27 to [0 x %ptr]*
	%r33 = ptrtoint %ptr %r24 to %word
	%r32 = getelementptr [0 x %ptr], [0 x %ptr]* %r34, %word 0, %word %r33
	%r31 = load %ptr, %ptr* %r32
	store %ptr %r31, %ptr* %t5
	%r35 = load %ptr, %ptr* %t3
	%r36 = load %ptr, %ptr* %t4
	%r37 = load %ptr, %ptr* %t5
	%r38 = call %ptr @"k/array-insert"(%ptr %r35, %ptr %r36, %ptr %r37)
	%r39 = load %ptr, %ptr* %t5
	ret %ptr %r39
}
define %ptr @"subr/string-insert"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t5 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 1 to %ptr
	%r9 = inttoptr %word 0 to %ptr
	%r10 = inttoptr %word 1 to %ptr
	%r11 = load %ptr, %ptr* %t1
	%r15 = bitcast %ptr %r11 to [0 x %ptr]*
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = getelementptr [0 x %ptr], [0 x %ptr]* %r15, %word 0, %word %r14
	%r12 = load %ptr, %ptr* %r13
	store %ptr %r12, %ptr* %t1
	%r19 = bitcast %ptr %r12 to [0 x %ptr]*
	%r18 = ptrtoint %ptr %r9 to %word
	%r17 = getelementptr [0 x %ptr], [0 x %ptr]* %r19, %word 0, %word %r18
	%r16 = load %ptr, %ptr* %r17
	%r23 = ptrtoint %ptr %r16 to %word
	%r22 = ptrtoint %ptr %r8 to %word
	%r21 = ashr %word %r23, %r22
	%r20 = inttoptr %word %r21 to %ptr
	store %ptr %r20, %ptr* %t4
	%r24 = inttoptr %word 0 to %ptr
	%r25 = inttoptr %word 1 to %ptr
	%r26 = load %ptr, %ptr* %t1
	%r30 = bitcast %ptr %r26 to [0 x %ptr]*
	%r29 = ptrtoint %ptr %r25 to %word
	%r28 = getelementptr [0 x %ptr], [0 x %ptr]* %r30, %word 0, %word %r29
	%r27 = load %ptr, %ptr* %r28
	%r34 = bitcast %ptr %r27 to [0 x %ptr]*
	%r33 = ptrtoint %ptr %r24 to %word
	%r32 = getelementptr [0 x %ptr], [0 x %ptr]* %r34, %word 0, %word %r33
	%r31 = load %ptr, %ptr* %r32
	store %ptr %r31, %ptr* %t5
	%r35 = load %ptr, %ptr* %t3
	%r36 = load %ptr, %ptr* %t4
	%r37 = inttoptr %word 1 to %ptr
	%r38 = load %ptr, %ptr* %t5
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = ashr %word %r42, %r41
	%r39 = inttoptr %word %r40 to %ptr
	%r43 = call %ptr @"k/string-insert"(%ptr %r35, %ptr %r36, %ptr %r39)
	%r44 = load %ptr, %ptr* %t5
	ret %ptr %r44
}
define %ptr @"subr/string->symbol"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = load %ptr, %ptr* %t3
	%r9 = call %ptr @"get/type"(%ptr %r8)
	%r10 = inttoptr %word 18 to %ptr
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = icmp eq %word %r14, %r13
	%r11 = inttoptr i1 %r12 to %ptr
	%r16 = ptrtoint %ptr %r11 to %word
	%r15 = icmp ne %word %r16, 0
	br i1 %r15, label %L1396, label %L1397
L1396:
	%r17 = load %ptr, %ptr* %t3
	store %ptr %r17, %ptr* %t4
	br label %L1398
L1397:
	%r18 = inttoptr %word 1 to %ptr
	store %ptr %r18, %ptr* %t5
	%r19 = load %ptr, %ptr* %t3
	%r20 = call %ptr @"get/type"(%ptr %r19)
	%r21 = inttoptr %word 8 to %ptr
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ptrtoint %ptr %r20 to %word
	%r23 = icmp eq %word %r25, %r24
	%r22 = inttoptr i1 %r23 to %ptr
	store %ptr %r22, %ptr* %t5
	%r26 = inttoptr %word 0 to %ptr
	%r30 = ptrtoint %ptr %r26 to %word
	%r29 = ptrtoint %ptr %r22 to %word
	%r28 = icmp eq %word %r30, %r29
	%r27 = inttoptr i1 %r28 to %ptr
	%r32 = ptrtoint %ptr %r27 to %word
	%r31 = icmp ne %word %r32, 0
	br i1 %r31, label %L1399, label %L1400
L1400:
	%r33 = inttoptr %word 1 to %ptr
	%r34 = load %ptr, %ptr* %t3
	%r35 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r34)
	%r39 = bitcast %ptr %r35 to [0 x %ptr]*
	%r38 = ptrtoint %ptr %r33 to %word
	%r37 = getelementptr [0 x %ptr], [0 x %ptr]* %r39, %word 0, %word %r38
	%r36 = load %ptr, %ptr* %r37
	%r40 = call %ptr @"k/intern"(%ptr %r36)
	store %ptr %r40, %ptr* %t5
	%r41 = inttoptr %word 0 to %ptr
	%r45 = ptrtoint %ptr %r41 to %word
	%r44 = ptrtoint %ptr %r40 to %word
	%r43 = icmp eq %word %r45, %r44
	%r42 = inttoptr i1 %r43 to %ptr
	%r47 = ptrtoint %ptr %r42 to %word
	%r46 = icmp ne %word %r47, 0
	br i1 %r46, label %L1399, label %L1401
L1401:
	br label %L1399
L1399:
	%r48 = load %ptr, %ptr* %t5
	store %ptr %r48, %ptr* %t4
	br label %L1398
L1398:
	%r49 = load %ptr, %ptr* %t4
	ret %ptr %r49
}
define %ptr @"subr/symbol->string"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = load %ptr, %ptr* %t3
	%r9 = call %ptr @"get/type"(%ptr %r8)
	%r10 = inttoptr %word 8 to %ptr
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = icmp eq %word %r14, %r13
	%r11 = inttoptr i1 %r12 to %ptr
	%r16 = ptrtoint %ptr %r11 to %word
	%r15 = icmp ne %word %r16, 0
	br i1 %r15, label %L1402, label %L1403
L1402:
	%r17 = load %ptr, %ptr* %t3
	store %ptr %r17, %ptr* %t4
	br label %L1404
L1403:
	%r18 = inttoptr %word 1 to %ptr
	store %ptr %r18, %ptr* %t5
	%r19 = load %ptr, %ptr* %t3
	%r20 = call %ptr @"get/type"(%ptr %r19)
	%r21 = inttoptr %word 18 to %ptr
	%r25 = ptrtoint %ptr %r21 to %word
	%r24 = ptrtoint %ptr %r20 to %word
	%r23 = icmp eq %word %r25, %r24
	%r22 = inttoptr i1 %r23 to %ptr
	store %ptr %r22, %ptr* %t5
	%r26 = inttoptr %word 0 to %ptr
	%r30 = ptrtoint %ptr %r26 to %word
	%r29 = ptrtoint %ptr %r22 to %word
	%r28 = icmp eq %word %r30, %r29
	%r27 = inttoptr i1 %r28 to %ptr
	%r32 = ptrtoint %ptr %r27 to %word
	%r31 = icmp ne %word %r32, 0
	br i1 %r31, label %L1405, label %L1406
L1406:
	%r33 = inttoptr %word 0 to %ptr
	%r34 = load %ptr, %ptr* %t3
	%r38 = bitcast %ptr %r34 to [0 x %ptr]*
	%r37 = ptrtoint %ptr %r33 to %word
	%r36 = getelementptr [0 x %ptr], [0 x %ptr]* %r38, %word 0, %word %r37
	%r35 = load %ptr, %ptr* %r36
	%r39 = call %ptr @"new-<string>-from-cstring"(%ptr %r35)
	store %ptr %r39, %ptr* %t5
	%r40 = inttoptr %word 0 to %ptr
	%r44 = ptrtoint %ptr %r40 to %word
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = icmp eq %word %r44, %r43
	%r41 = inttoptr i1 %r42 to %ptr
	%r46 = ptrtoint %ptr %r41 to %word
	%r45 = icmp ne %word %r46, 0
	br i1 %r45, label %L1405, label %L1407
L1407:
	br label %L1405
L1405:
	%r47 = load %ptr, %ptr* %t5
	store %ptr %r47, %ptr* %t4
	br label %L1404
L1404:
	%r48 = load %ptr, %ptr* %t4
	ret %ptr %r48
}
@str1410 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str1411 = private unnamed_addr constant [24 x i8] c"kernel assertion failed\00"
@str1412 = private unnamed_addr constant [2 x i8] c"\0A\00"
@str1414 = private unnamed_addr constant [4 x i8] c"%ld\00"
define %ptr @"subr/long->string"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	store %ptr %r8, %ptr* %t4
	%r9 = load %ptr, %ptr* %t3
	%r10 = call %ptr @"get/type"(%ptr %r9)
	%r11 = inttoptr %word 6 to %ptr
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = icmp eq %word %r15, %r14
	%r12 = inttoptr i1 %r13 to %ptr
	store %ptr %r12, %ptr* %t4
	%r16 = inttoptr %word 0 to %ptr
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r12 to %word
	%r18 = icmp eq %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	%r22 = ptrtoint %ptr %r17 to %word
	%r21 = icmp ne %word %r22, 0
	br i1 %r21, label %L1409, label %L1408
L1409:
	%r23 = getelementptr [9 x i8], [9 x i8]* @str1410, %word 0, %word 0
	%r25 = call i32 (%ptr, ...) @printf(%ptr %r23)
	%r26 = sext i32 %r25 to %word
	%r27 = inttoptr %word %r26 to %ptr
	%r28 = getelementptr [24 x i8], [24 x i8]* @str1411, %word 0, %word 0
	%r30 = call i32 (%ptr, ...) @printf(%ptr %r28)
	%r31 = sext i32 %r30 to %word
	%r32 = inttoptr %word %r31 to %ptr
	%r33 = getelementptr [2 x i8], [2 x i8]* @str1412, %word 0, %word 0
	%r35 = call i32 (%ptr, ...) @printf(%ptr %r33)
	%r36 = sext i32 %r35 to %word
	%r37 = inttoptr %word %r36 to %ptr
	%r38 = call %ptr @die()
	store %ptr %r38, %ptr* %t4
	%r39 = inttoptr %word 0 to %ptr
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = icmp eq %word %r43, %r42
	%r40 = inttoptr i1 %r41 to %ptr
	%r45 = ptrtoint %ptr %r40 to %word
	%r44 = icmp ne %word %r45, 0
	br i1 %r44, label %L1413, label %L1408
L1413:
	br label %L1408
L1408:
	%r46 = load %ptr, %ptr* %t4
	%r47 = inttoptr %word 4 to %ptr
	%r48 = inttoptr %word 32 to %ptr
	%r49 = call %ptr @"gc/allocate-opaque"(%ptr %r47, %ptr %r48)
	store %ptr %r49, %ptr* %t4
	%r50 = load %ptr, %ptr* %t4
	%r51 = getelementptr [4 x i8], [4 x i8]* @str1414, %word 0, %word 0
	%r53 = inttoptr %word 1 to %ptr
	%r54 = load %ptr, %ptr* %t3
	%r58 = ptrtoint %ptr %r54 to %word
	%r57 = ptrtoint %ptr %r53 to %word
	%r56 = ashr %word %r58, %r57
	%r55 = inttoptr %word %r56 to %ptr
	%r59 = call i32 (%ptr, %ptr, ...) @sprintf(%ptr %r50, %ptr %r51, %ptr %r55)
	%r60 = sext i32 %r59 to %word
	%r61 = inttoptr %word %r60 to %ptr
	%r62 = load %ptr, %ptr* %t4
	%r63 = call %ptr @"new-<string>-from-cstring"(%ptr %r62)
	ret %ptr %r63
}
@str1417 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str1418 = private unnamed_addr constant [24 x i8] c"kernel assertion failed\00"
@str1419 = private unnamed_addr constant [2 x i8] c"\0A\00"
@str1424 = private unnamed_addr constant [60 x i8] c"invalid number in string->long, libc/strtol failed for '%s'\00"
define %ptr @"subr/string->long"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	store %ptr %r8, %ptr* %t4
	%r9 = load %ptr, %ptr* %t3
	%r10 = call %ptr @"get/type"(%ptr %r9)
	%r11 = inttoptr %word 8 to %ptr
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = ptrtoint %ptr %r10 to %word
	%r13 = icmp eq %word %r15, %r14
	%r12 = inttoptr i1 %r13 to %ptr
	store %ptr %r12, %ptr* %t4
	%r16 = inttoptr %word 0 to %ptr
	%r20 = ptrtoint %ptr %r16 to %word
	%r19 = ptrtoint %ptr %r12 to %word
	%r18 = icmp eq %word %r20, %r19
	%r17 = inttoptr i1 %r18 to %ptr
	%r22 = ptrtoint %ptr %r17 to %word
	%r21 = icmp ne %word %r22, 0
	br i1 %r21, label %L1416, label %L1415
L1416:
	%r23 = getelementptr [9 x i8], [9 x i8]* @str1417, %word 0, %word 0
	%r25 = call i32 (%ptr, ...) @printf(%ptr %r23)
	%r26 = sext i32 %r25 to %word
	%r27 = inttoptr %word %r26 to %ptr
	%r28 = getelementptr [24 x i8], [24 x i8]* @str1418, %word 0, %word 0
	%r30 = call i32 (%ptr, ...) @printf(%ptr %r28)
	%r31 = sext i32 %r30 to %word
	%r32 = inttoptr %word %r31 to %ptr
	%r33 = getelementptr [2 x i8], [2 x i8]* @str1419, %word 0, %word 0
	%r35 = call i32 (%ptr, ...) @printf(%ptr %r33)
	%r36 = sext i32 %r35 to %word
	%r37 = inttoptr %word %r36 to %ptr
	%r38 = call %ptr @die()
	store %ptr %r38, %ptr* %t4
	%r39 = inttoptr %word 0 to %ptr
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = ptrtoint %ptr %r38 to %word
	%r41 = icmp eq %word %r43, %r42
	%r40 = inttoptr i1 %r41 to %ptr
	%r45 = ptrtoint %ptr %r40 to %word
	%r44 = icmp ne %word %r45, 0
	br i1 %r44, label %L1420, label %L1415
L1420:
	br label %L1415
L1415:
	%r46 = load %ptr, %ptr* %t4
	%r47 = inttoptr %word 1 to %ptr
	%r48 = load %ptr, %ptr* %t3
	%r49 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r48)
	%r53 = bitcast %ptr %r49 to [0 x %ptr]*
	%r52 = ptrtoint %ptr %r47 to %word
	%r51 = getelementptr [0 x %ptr], [0 x %ptr]* %r53, %word 0, %word %r52
	%r50 = load %ptr, %ptr* %r51
	store %ptr %r50, %ptr* %t4
	%r54 = load %ptr, %ptr* %t4
	store %ptr %r54, %ptr* %t5
	%r55 = load %ptr, %ptr* %t4
	%r57 = getelementptr %ptr, %ptr* %t5, %word 0
	%r56 = bitcast %ptr* %r57 to %ptr
	%r58 = inttoptr %word 10 to %ptr
	%ffi-cast59 = ptrtoint %ptr %r58 to i32
	%r60 = call i64 @strtol(%ptr %r55, %ptr %r56, i32 %ffi-cast59)
	%r61 = inttoptr %word %r60 to %ptr
	store %ptr %r61, %ptr* %t6
	%r62 = inttoptr %word 0 to %ptr
	%r63 = inttoptr %word 0 to %ptr
	%r64 = load %ptr, %ptr* %t5
	%r69 = bitcast %ptr %r64 to [0 x i8]*
	%r68 = ptrtoint %ptr %r63 to %word
	%r67 = getelementptr [0 x i8], [0 x i8]* %r69, %word 0, %word %r68
	%r66 = load i8, i8* %r67
	%r65 = inttoptr i8 %r66 to %ptr
	%r73 = ptrtoint %ptr %r65 to %word
	%r72 = ptrtoint %ptr %r62 to %word
	%r71 = icmp eq %word %r73, %r72
	%r70 = inttoptr i1 %r71 to %ptr
	%r75 = ptrtoint %ptr %r70 to %word
	%r74 = icmp ne %word %r75, 0
	br i1 %r74, label %L1421, label %L1422
L1421:
	%r76 = inttoptr %word 1 to %ptr
	%r77 = inttoptr %word 1 to %ptr
	%r78 = load %ptr, %ptr* %t6
	%r82 = ptrtoint %ptr %r78 to %word
	%r81 = ptrtoint %ptr %r77 to %word
	%r80 = shl %word %r82, %r81
	%r79 = inttoptr %word %r80 to %ptr
	%r86 = ptrtoint %ptr %r79 to %word
	%r85 = ptrtoint %ptr %r76 to %word
	%r84 = add %word %r86, %r85
	%r83 = inttoptr %word %r84 to %ptr
	store %ptr %r83, %ptr* %t7
	br label %L1423
L1422:
	%r87 = getelementptr [60 x i8], [60 x i8]* @str1424, %word 0, %word 0
	%r89 = load %ptr, %ptr* %t4
	%r90 = call %ptr @fatal1(%ptr %r87, %ptr %r89)
	store %ptr %r90, %ptr* %t7
	br label %L1423
L1423:
	%r91 = load %ptr, %ptr* %t7
	ret %ptr %r91
}
@str1433 = private unnamed_addr constant [28 x i8] c"read: non-String argument: \00"
@str1435 = private unnamed_addr constant [2 x i8] c"r\00"
define %ptr @"subr/read"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	%t8 = alloca %ptr
	%t9 = alloca %ptr
	%t10 = alloca %ptr
	%t11 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = load %ptr, %ptr* %t1
	%r2 = inttoptr %word 0 to %ptr
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = ptrtoint %ptr %r1 to %word
	%r4 = icmp eq %word %r6, %r5
	%r3 = inttoptr i1 %r4 to %ptr
	%r8 = ptrtoint %ptr %r3 to %word
	%r7 = icmp ne %word %r8, 0
	br i1 %r7, label %L1425, label %L1426
L1425:
	%r9 = load %ptr, %ptr* @"libc/stdin"
	%r10 = call %ptr @"k/read"(%ptr %r9)
	store %ptr %r10, %ptr* %t4
	%r11 = inttoptr %word 1 to %ptr
	store %ptr %r11, %ptr* %t5
	%r12 = load %ptr, %ptr* %t4
	%r13 = load %ptr, %ptr* @"k/+end+"
	%r17 = ptrtoint %ptr %r13 to %word
	%r16 = ptrtoint %ptr %r12 to %word
	%r15 = icmp eq %word %r17, %r16
	%r14 = inttoptr i1 %r15 to %ptr
	store %ptr %r14, %ptr* %t5
	%r18 = inttoptr %word 0 to %ptr
	%r22 = ptrtoint %ptr %r18 to %word
	%r21 = ptrtoint %ptr %r14 to %word
	%r20 = icmp eq %word %r22, %r21
	%r19 = inttoptr i1 %r20 to %ptr
	%r24 = ptrtoint %ptr %r19 to %word
	%r23 = icmp ne %word %r24, 0
	br i1 %r23, label %L1428, label %L1429
L1429:
	%r25 = inttoptr %word 0 to %ptr
	store %ptr %r25, %ptr* %t4
	store %ptr %r25, %ptr* %t5
	%r26 = inttoptr %word 0 to %ptr
	%r30 = ptrtoint %ptr %r26 to %word
	%r29 = ptrtoint %ptr %r25 to %word
	%r28 = icmp eq %word %r30, %r29
	%r27 = inttoptr i1 %r28 to %ptr
	%r32 = ptrtoint %ptr %r27 to %word
	%r31 = icmp ne %word %r32, 0
	br i1 %r31, label %L1428, label %L1430
L1430:
	br label %L1428
L1428:
	%r33 = load %ptr, %ptr* %t5
	%r34 = load %ptr, %ptr* %t4
	store %ptr %r34, %ptr* %t3
	br label %L1427
L1426:
	%r35 = load %ptr, %ptr* %t1
	%r36 = call %ptr @"k/car"(%ptr %r35)
	store %ptr %r36, %ptr* %t4
	%r37 = inttoptr %word 0 to %ptr
	store %ptr %r37, %ptr* %t5
	%r38 = load %ptr, %ptr* %t4
	%r39 = call %ptr @"get/type"(%ptr %r38)
	%r40 = inttoptr %word 8 to %ptr
	%r44 = ptrtoint %ptr %r40 to %word
	%r43 = ptrtoint %ptr %r39 to %word
	%r42 = icmp eq %word %r44, %r43
	%r41 = inttoptr i1 %r42 to %ptr
	store %ptr %r41, %ptr* %t5
	%r45 = inttoptr %word 0 to %ptr
	%r49 = ptrtoint %ptr %r45 to %word
	%r48 = ptrtoint %ptr %r41 to %word
	%r47 = icmp eq %word %r49, %r48
	%r46 = inttoptr i1 %r47 to %ptr
	%r51 = ptrtoint %ptr %r46 to %word
	%r50 = icmp ne %word %r51, 0
	br i1 %r50, label %L1432, label %L1431
L1432:
	%r52 = getelementptr [28 x i8], [28 x i8]* @str1433, %word 0, %word 0
	%r54 = load %ptr, %ptr* %t4
	%r55 = call %ptr @fatal1(%ptr %r52, %ptr %r54)
	store %ptr %r55, %ptr* %t5
	%r56 = inttoptr %word 0 to %ptr
	%r60 = ptrtoint %ptr %r56 to %word
	%r59 = ptrtoint %ptr %r55 to %word
	%r58 = icmp eq %word %r60, %r59
	%r57 = inttoptr i1 %r58 to %ptr
	%r62 = ptrtoint %ptr %r57 to %word
	%r61 = icmp ne %word %r62, 0
	br i1 %r61, label %L1434, label %L1431
L1434:
	br label %L1431
L1431:
	%r63 = load %ptr, %ptr* %t5
	%r64 = inttoptr %word 1 to %ptr
	%r65 = load %ptr, %ptr* %t4
	%r66 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r65)
	%r70 = bitcast %ptr %r66 to [0 x %ptr]*
	%r69 = ptrtoint %ptr %r64 to %word
	%r68 = getelementptr [0 x %ptr], [0 x %ptr]* %r70, %word 0, %word %r69
	%r67 = load %ptr, %ptr* %r68
	store %ptr %r67, %ptr* %t5
	%r71 = load %ptr, %ptr* %t5
	%r72 = getelementptr [2 x i8], [2 x i8]* @str1435, %word 0, %word 0
	%r74 = call %ptr @fopen(%ptr %r71, %ptr %r72)
	store %ptr %r74, %ptr* %t6
	%r75 = load %ptr, %ptr* %t6
	%r77 = ptrtoint %ptr %r75 to %word
	%r76 = icmp ne %word %r77, 0
	br i1 %r76, label %L1436, label %L1437
L1436:
	%r78 = inttoptr %word 0 to %ptr
	%r79 = inttoptr %word 0 to %ptr
	%r80 = call %ptr @"new-<pair>"(%ptr %r78, %ptr %r79)
	store %ptr %r80, %ptr* %t8
	%r81 = load %ptr, %ptr* %t8
	store %ptr %r81, %ptr* %t9
	%r82 = inttoptr %word 0 to %ptr
	store %ptr %r82, %ptr* %t10
	%r84 = getelementptr %ptr, %ptr* %t8, %word 0
	%r83 = bitcast %ptr* %r84 to %ptr
	%r85 = call %ptr @"gc/push-root"(%ptr %r83)
	%r87 = getelementptr %ptr, %ptr* %t10, %word 0
	%r86 = bitcast %ptr* %r87 to %ptr
	%r88 = call %ptr @"gc/push-root"(%ptr %r86)
	br label %L1440
L1439:
	%r89 = load %ptr, %ptr* %t10
	%r90 = inttoptr %word 0 to %ptr
	%r91 = call %ptr @"new-<pair>"(%ptr %r89, %ptr %r90)
	%r92 = inttoptr %word 1 to %ptr
	%r93 = load %ptr, %ptr* %t9
	%r97 = bitcast %ptr %r93 to [0 x %ptr]*
	%r96 = ptrtoint %ptr %r92 to %word
	%r95 = getelementptr [0 x %ptr], [0 x %ptr]* %r97, %word 0, %word %r96
	store %ptr %r91, %ptr* %r95
	%r94 = bitcast %ptr %r91 to %ptr
	store %ptr %r94, %ptr* %t9
	br label %L1440
L1440:
	%r98 = load %ptr, %ptr* %t6
	%r99 = call %ptr @"k/read"(%ptr %r98)
	store %ptr %r99, %ptr* %t10
	%r100 = load %ptr, %ptr* @"k/+end+"
	%r104 = ptrtoint %ptr %r100 to %word
	%r103 = ptrtoint %ptr %r99 to %word
	%r102 = icmp ne %word %r104, %r103
	%r101 = inttoptr i1 %r102 to %ptr
	%r106 = ptrtoint %ptr %r101 to %word
	%r105 = icmp ne %word %r106, 0
	br i1 %r105, label %L1439, label %L1441
L1441:
	store %ptr %r101, %ptr* %t11
	%r108 = getelementptr %ptr, %ptr* %t10, %word 0
	%r107 = bitcast %ptr* %r108 to %ptr
	%r109 = call %ptr @"gc/pop-root"(%ptr %r107)
	%r111 = getelementptr %ptr, %ptr* %t8, %word 0
	%r110 = bitcast %ptr* %r111 to %ptr
	%r112 = call %ptr @"gc/pop-root"(%ptr %r110)
	%r113 = load %ptr, %ptr* %t11
	%r114 = load %ptr, %ptr* %t6
	%r115 = call i32 @fclose(%ptr %r114)
	%r116 = sext i32 %r115 to %word
	%r117 = inttoptr %word %r116 to %ptr
	%r118 = inttoptr %word 1 to %ptr
	%r119 = load %ptr, %ptr* %t8
	%r123 = bitcast %ptr %r119 to [0 x %ptr]*
	%r122 = ptrtoint %ptr %r118 to %word
	%r121 = getelementptr [0 x %ptr], [0 x %ptr]* %r123, %word 0, %word %r122
	%r120 = load %ptr, %ptr* %r121
	store %ptr %r120, %ptr* %t7
	br label %L1438
L1437:
	%r124 = inttoptr %word 0 to %ptr
	store %ptr %r124, %ptr* %t7
	br label %L1438
L1438:
	%r125 = load %ptr, %ptr* %t7
	store %ptr %r125, %ptr* %t3
	br label %L1427
L1427:
	%r126 = load %ptr, %ptr* %t3
	ret %ptr %r126
}
define %ptr @"subr/current-module"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = load %ptr, %ptr* @"*module*"
	ret %ptr %r2
}
define %ptr @"subr/set-current-module"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = load %ptr, %ptr* %t3
	%r10 = call %ptr @"k/set-current-module"(%ptr %r9)
	%r11 = inttoptr %word 0 to %ptr
	ret %ptr %r11
}
define %ptr @"subr/create-module"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = call %ptr @"new-<module>"()
	ret %ptr %r2
}
define %ptr @"subr/eval-in-module"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t5 = alloca %ptr
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t6 = alloca %ptr
	%t7 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 1 to %ptr
	%r10 = load %ptr, %ptr* %t1
	%r14 = bitcast %ptr %r10 to [0 x %ptr]*
	%r13 = ptrtoint %ptr %r9 to %word
	%r12 = getelementptr [0 x %ptr], [0 x %ptr]* %r14, %word 0, %word %r13
	%r11 = load %ptr, %ptr* %r12
	%r18 = bitcast %ptr %r11 to [0 x %ptr]*
	%r17 = ptrtoint %ptr %r8 to %word
	%r16 = getelementptr [0 x %ptr], [0 x %ptr]* %r18, %word 0, %word %r17
	%r15 = load %ptr, %ptr* %r16
	store %ptr %r15, %ptr* %t4
	%r19 = load %ptr, %ptr* @"*module*"
	store %ptr %r19, %ptr* %t5
	%r20 = inttoptr %word 0 to %ptr
	%r21 = inttoptr %word 0 to %ptr
	%r22 = load %ptr, %ptr* %t3
	%r23 = call %ptr @"k/set-current-module"(%ptr %r22)
	%r24 = load %ptr, %ptr* %t4
	%r25 = inttoptr %word 1 to %ptr
	%r26 = inttoptr %word 1 to %ptr
	%r27 = load %ptr, %ptr* %t3
	%r31 = bitcast %ptr %r27 to [0 x %ptr]*
	%r30 = ptrtoint %ptr %r26 to %word
	%r29 = getelementptr [0 x %ptr], [0 x %ptr]* %r31, %word 0, %word %r30
	%r28 = load %ptr, %ptr* %r29
	%r35 = bitcast %ptr %r28 to [0 x %ptr]*
	%r34 = ptrtoint %ptr %r25 to %word
	%r33 = getelementptr [0 x %ptr], [0 x %ptr]* %r35, %word 0, %word %r34
	%r32 = load %ptr, %ptr* %r33
	%r36 = call %ptr @"k/expand-encode-eval"(%ptr %r24, %ptr %r32)
	store %ptr %r36, %ptr* %t6
	%r38 = getelementptr %ptr, %ptr* %t6, %word 0
	%r37 = bitcast %ptr* %r38 to %ptr
	%r39 = call %ptr @"gc/push-root"(%ptr %r37)
	%r40 = load %ptr, %ptr* %t5
	%r41 = call %ptr @"k/set-current-module"(%ptr %r40)
	%r42 = inttoptr %word 0 to %ptr
	%r43 = load %ptr, %ptr* %t6
	store %ptr %r43, %ptr* %t7
	%r45 = getelementptr %ptr, %ptr* %t6, %word 0
	%r44 = bitcast %ptr* %r45 to %ptr
	%r46 = call %ptr @"gc/pop-root"(%ptr %r44)
	%r47 = load %ptr, %ptr* %t7
	ret %ptr %r47
}
@str1444 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str1445 = private unnamed_addr constant [54 x i8] c"call-x86-64-machine-code: cannot call object of type \00"
@str1446 = private unnamed_addr constant [15 x i8] c", printing as \00"
@str1447 = private unnamed_addr constant [2 x i8] c"\0A\00"
define %ptr @"subr/call-x86-64-machine-code"(%ptr %-args-, %ptr %-ctx-) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t4 = alloca %ptr
	store %ptr %-args-, %ptr* %t1
	store %ptr %-ctx-, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = load %ptr, %ptr* %t1
	%r7 = bitcast %ptr %r3 to [0 x %ptr]*
	%r6 = ptrtoint %ptr %r2 to %word
	%r5 = getelementptr [0 x %ptr], [0 x %ptr]* %r7, %word 0, %word %r6
	%r4 = load %ptr, %ptr* %r5
	store %ptr %r4, %ptr* %t3
	%r8 = inttoptr %word 0 to %ptr
	%r9 = inttoptr %word 0 to %ptr
	store %ptr %r9, %ptr* %t4
	%r10 = load %ptr, %ptr* %t3
	%r11 = call %ptr @"get/type"(%ptr %r10)
	%r12 = inttoptr %word 4 to %ptr
	%r16 = ptrtoint %ptr %r12 to %word
	%r15 = ptrtoint %ptr %r11 to %word
	%r14 = icmp eq %word %r16, %r15
	%r13 = inttoptr i1 %r14 to %ptr
	store %ptr %r13, %ptr* %t4
	%r17 = inttoptr %word 0 to %ptr
	%r21 = ptrtoint %ptr %r17 to %word
	%r20 = ptrtoint %ptr %r13 to %word
	%r19 = icmp eq %word %r21, %r20
	%r18 = inttoptr i1 %r19 to %ptr
	%r23 = ptrtoint %ptr %r18 to %word
	%r22 = icmp ne %word %r23, 0
	br i1 %r22, label %L1443, label %L1442
L1443:
	%r24 = getelementptr [9 x i8], [9 x i8]* @str1444, %word 0, %word 0
	%r26 = call i32 (%ptr, ...) @printf(%ptr %r24)
	%r27 = sext i32 %r26 to %word
	%r28 = inttoptr %word %r27 to %ptr
	%r29 = getelementptr [54 x i8], [54 x i8]* @str1445, %word 0, %word 0
	%r31 = call i32 (%ptr, ...) @printf(%ptr %r29)
	%r32 = sext i32 %r31 to %word
	%r33 = inttoptr %word %r32 to %ptr
	%r34 = load %ptr, %ptr* %t3
	%r35 = call %ptr @"get/type"(%ptr %r34)
	%r36 = call %ptr @"k/print"(%ptr %r35)
	%r37 = getelementptr [15 x i8], [15 x i8]* @str1446, %word 0, %word 0
	%r39 = call i32 (%ptr, ...) @printf(%ptr %r37)
	%r40 = sext i32 %r39 to %word
	%r41 = inttoptr %word %r40 to %ptr
	%r42 = load %ptr, %ptr* %t3
	%r43 = call %ptr @"k/print"(%ptr %r42)
	%r44 = getelementptr [2 x i8], [2 x i8]* @str1447, %word 0, %word 0
	%r46 = call i32 (%ptr, ...) @printf(%ptr %r44)
	%r47 = sext i32 %r46 to %word
	%r48 = inttoptr %word %r47 to %ptr
	%r49 = call %ptr @die()
	store %ptr %r49, %ptr* %t4
	%r50 = inttoptr %word 0 to %ptr
	%r54 = ptrtoint %ptr %r50 to %word
	%r53 = ptrtoint %ptr %r49 to %word
	%r52 = icmp eq %word %r54, %r53
	%r51 = inttoptr i1 %r52 to %ptr
	%r56 = ptrtoint %ptr %r51 to %word
	%r55 = icmp ne %word %r56, 0
	br i1 %r55, label %L1448, label %L1442
L1448:
	br label %L1442
L1442:
	%r57 = load %ptr, %ptr* %t4
	%r58 = load %ptr, %ptr* %t3
	%r60 = bitcast %ptr %r58 to %ptr ()*
	%r59 = call %ptr %r60()
	%r61 = inttoptr %word 0 to %ptr
	%r62 = inttoptr %word 0 to %ptr
	ret %ptr %r62
}
define %ptr @"%instantiate-subr"(%ptr %name, %ptr %imp, %ptr %"fixed?", %ptr %module) {
	%t4 = alloca %ptr
	%t3 = alloca %ptr
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t5 = alloca %ptr
	%t6 = alloca %ptr
	store %ptr %name, %ptr* %t1
	store %ptr %imp, %ptr* %t2
	store %ptr %"fixed?", %ptr* %t3
	store %ptr %module, %ptr* %t4
	%r1 = load %ptr, %ptr* %t2
	%r2 = load %ptr, %ptr* %t1
	%r3 = call %ptr @"new-<subr>"(%ptr %r1, %ptr %r2)
	store %ptr %r3, %ptr* %t5
	%r5 = getelementptr %ptr, %ptr* %t5, %word 0
	%r4 = bitcast %ptr* %r5 to %ptr
	%r6 = call %ptr @"gc/push-root"(%ptr %r4)
	%r7 = load %ptr, %ptr* %t3
	%r9 = ptrtoint %ptr %r7 to %word
	%r8 = icmp ne %word %r9, 0
	br i1 %r8, label %L1449, label %L1450
L1449:
	%r10 = load %ptr, %ptr* %t5
	%r11 = call %ptr @"new-<fixed>"(%ptr %r10)
	store %ptr %r11, %ptr* %t5
	store %ptr %r11, %ptr* %t6
	br label %L1451
L1450:
	%r12 = inttoptr %word 0 to %ptr
	store %ptr %r12, %ptr* %t6
	br label %L1451
L1451:
	%r13 = load %ptr, %ptr* %t6
	%r14 = inttoptr %word 1 to %ptr
	%r15 = inttoptr %word 1 to %ptr
	%r16 = load %ptr, %ptr* %t4
	%r20 = bitcast %ptr %r16 to [0 x %ptr]*
	%r19 = ptrtoint %ptr %r15 to %word
	%r18 = getelementptr [0 x %ptr], [0 x %ptr]* %r20, %word 0, %word %r19
	%r17 = load %ptr, %ptr* %r18
	%r24 = bitcast %ptr %r17 to [0 x %ptr]*
	%r23 = ptrtoint %ptr %r14 to %word
	%r22 = getelementptr [0 x %ptr], [0 x %ptr]* %r24, %word 0, %word %r23
	%r21 = load %ptr, %ptr* %r22
	%r25 = load %ptr, %ptr* %t1
	%r26 = call %ptr @"k/intern"(%ptr %r25)
	%r27 = load %ptr, %ptr* %t5
	%r28 = call %ptr @"k/env/define"(%ptr %r21, %ptr %r26, %ptr %r27)
	store %ptr %r28, %ptr* %t6
	%r30 = getelementptr %ptr, %ptr* %t5, %word 0
	%r29 = bitcast %ptr* %r30 to %ptr
	%r31 = call %ptr @"gc/pop-root"(%ptr %r29)
	%r32 = load %ptr, %ptr* %t6
	ret %ptr %r32
}
@str1452 = private unnamed_addr constant [2 x i8] c"r\00"
@str1453 = private unnamed_addr constant [2 x i8] c"a\00"
@str1454 = private unnamed_addr constant [2 x i8] c"a\00"
@str1457 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str1458 = private unnamed_addr constant [30 x i8] c"get/type for <long> is broken\00"
@str1459 = private unnamed_addr constant [2 x i8] c"\0A\00"
@str1463 = private unnamed_addr constant [9 x i8] c"\0Aerror: \00"
@str1464 = private unnamed_addr constant [19 x i8] c"get/long is broken\00"
@str1465 = private unnamed_addr constant [2 x i8] c"\0A\00"
@str1467 = private unnamed_addr constant [25 x i8] c"*command-line-arguments*\00"
@str1477 = private unnamed_addr constant [3 x i8] c"-v\00"
@str1478 = private unnamed_addr constant [12 x i8] c"*verbosity*\00"
@str1482 = private unnamed_addr constant [3 x i8] c"-O\00"
@str1483 = private unnamed_addr constant [12 x i8] c"*optimised*\00"
@str1487 = private unnamed_addr constant [3 x i8] c"-p\00"
@str1488 = private unnamed_addr constant [50 x i8] c"WARNING: this build has no profiler, ignoring -p\0A\00"
@str1492 = private unnamed_addr constant [2 x i8] c"-\00"
@str1496 = private unnamed_addr constant [7 x i8] c"--call\00"
@str1500 = private unnamed_addr constant [28 x i8] c"--call requires an argument\00"
@str1504 = private unnamed_addr constant [9 x i8] c"--define\00"
@str1511 = private unnamed_addr constant [32 x i8] c"--define requires two arguments\00"
@str1518 = private unnamed_addr constant [29 x i8] c"loading file: %s\09(as a CLA)\0A\00"
@str1519 = private unnamed_addr constant [2 x i8] c"r\00"
@str1522 = private unnamed_addr constant [17 x i8] c"no such file: %s\00"
@str1524 = private unnamed_addr constant [42 x i8] c"%ld objects in %ld bytes, %ld bytes free\0A\00"
define %ptr @main(%ptr %argc, %ptr %argv) {
	%t2 = alloca %ptr
	%t1 = alloca %ptr
	%t3 = alloca %ptr
	%t5 = alloca %ptr
	%t4 = alloca %ptr
	%t7 = alloca %ptr
	%t6 = alloca %ptr
	%t8 = alloca %ptr
	%t9 = alloca %ptr
	%t10 = alloca %ptr
	%t11 = alloca %ptr
	%t12 = alloca %ptr
	%t13 = alloca %ptr
	%t15 = alloca %ptr
	%t14 = alloca %ptr
	%t16 = alloca %ptr
	%t17 = alloca %ptr
	%t18 = alloca %ptr
	%t19 = alloca %ptr
	store %ptr %argc, %ptr* %t1
	store %ptr %argv, %ptr* %t2
	%r1 = inttoptr %word 0 to %ptr
	%r2 = inttoptr %word 0 to %ptr
	%r3 = getelementptr [2 x i8], [2 x i8]* @str1452, %word 0, %word 0
	%ffi-cast5 = ptrtoint %ptr %r2 to i32
	%r6 = call %ptr @fdopen(i32 %ffi-cast5, %ptr %r3)
	store %ptr %r6, %ptr* @"libc/stdin"
	%r7 = inttoptr %word 1 to %ptr
	%r8 = getelementptr [2 x i8], [2 x i8]* @str1453, %word 0, %word 0
	%ffi-cast10 = ptrtoint %ptr %r7 to i32
	%r11 = call %ptr @fdopen(i32 %ffi-cast10, %ptr %r8)
	store %ptr %r11, %ptr* @"libc/stdout"
	%r12 = inttoptr %word 2 to %ptr
	%r13 = getelementptr [2 x i8], [2 x i8]* @str1454, %word 0, %word 0
	%ffi-cast15 = ptrtoint %ptr %r12 to i32
	%r16 = call %ptr @fdopen(i32 %ffi-cast15, %ptr %r13)
	store %ptr %r16, %ptr* @"libc/stderr"
	%r17 = load %ptr, %ptr* @"libc/stdout"
	%r18 = inttoptr %word 0 to %ptr
	call void @setbuf(%ptr %r17, %ptr %r18)
	%r20 = inttoptr %word 0 to %ptr
	%r21 = call %ptr @"gc/initialise"()
	%r22 = inttoptr %word 0 to %ptr
	%r23 = inttoptr %word 0 to %ptr
	%r24 = inttoptr %word 0 to %ptr
	store %ptr %r24, %ptr* %t3
	%r25 = inttoptr %word 1 to %ptr
	%r26 = inttoptr %word 1 to %ptr
	%r27 = inttoptr %word 42 to %ptr
	%r31 = ptrtoint %ptr %r27 to %word
	%r30 = ptrtoint %ptr %r26 to %word
	%r29 = shl %word %r31, %r30
	%r28 = inttoptr %word %r29 to %ptr
	%r35 = ptrtoint %ptr %r28 to %word
	%r34 = ptrtoint %ptr %r25 to %word
	%r33 = add %word %r35, %r34
	%r32 = inttoptr %word %r33 to %ptr
	%r36 = call %ptr @"get/type"(%ptr %r32)
	%r37 = inttoptr %word 6 to %ptr
	%r41 = ptrtoint %ptr %r37 to %word
	%r40 = ptrtoint %ptr %r36 to %word
	%r39 = icmp eq %word %r41, %r40
	%r38 = inttoptr i1 %r39 to %ptr
	store %ptr %r38, %ptr* %t3
	%r42 = inttoptr %word 0 to %ptr
	%r46 = ptrtoint %ptr %r42 to %word
	%r45 = ptrtoint %ptr %r38 to %word
	%r44 = icmp eq %word %r46, %r45
	%r43 = inttoptr i1 %r44 to %ptr
	%r48 = ptrtoint %ptr %r43 to %word
	%r47 = icmp ne %word %r48, 0
	br i1 %r47, label %L1456, label %L1455
L1456:
	%r49 = getelementptr [9 x i8], [9 x i8]* @str1457, %word 0, %word 0
	%r51 = call i32 (%ptr, ...) @printf(%ptr %r49)
	%r52 = sext i32 %r51 to %word
	%r53 = inttoptr %word %r52 to %ptr
	%r54 = getelementptr [30 x i8], [30 x i8]* @str1458, %word 0, %word 0
	%r56 = call i32 (%ptr, ...) @printf(%ptr %r54)
	%r57 = sext i32 %r56 to %word
	%r58 = inttoptr %word %r57 to %ptr
	%r59 = getelementptr [2 x i8], [2 x i8]* @str1459, %word 0, %word 0
	%r61 = call i32 (%ptr, ...) @printf(%ptr %r59)
	%r62 = sext i32 %r61 to %word
	%r63 = inttoptr %word %r62 to %ptr
	%r64 = call %ptr @die()
	store %ptr %r64, %ptr* %t3
	%r65 = inttoptr %word 0 to %ptr
	%r69 = ptrtoint %ptr %r65 to %word
	%r68 = ptrtoint %ptr %r64 to %word
	%r67 = icmp eq %word %r69, %r68
	%r66 = inttoptr i1 %r67 to %ptr
	%r71 = ptrtoint %ptr %r66 to %word
	%r70 = icmp ne %word %r71, 0
	br i1 %r70, label %L1460, label %L1455
L1460:
	br label %L1455
L1455:
	%r72 = load %ptr, %ptr* %t3
	%r73 = inttoptr %word 0 to %ptr
	store %ptr %r73, %ptr* %t3
	%r74 = inttoptr %word 1 to %ptr
	%r75 = inttoptr %word 1 to %ptr
	%r76 = inttoptr %word 1 to %ptr
	%r77 = inttoptr %word 42 to %ptr
	%r81 = ptrtoint %ptr %r77 to %word
	%r80 = ptrtoint %ptr %r76 to %word
	%r79 = shl %word %r81, %r80
	%r78 = inttoptr %word %r79 to %ptr
	%r85 = ptrtoint %ptr %r78 to %word
	%r84 = ptrtoint %ptr %r75 to %word
	%r83 = add %word %r85, %r84
	%r82 = inttoptr %word %r83 to %ptr
	%r89 = ptrtoint %ptr %r82 to %word
	%r88 = ptrtoint %ptr %r74 to %word
	%r87 = ashr %word %r89, %r88
	%r86 = inttoptr %word %r87 to %ptr
	%r90 = inttoptr %word 42 to %ptr
	%r94 = ptrtoint %ptr %r90 to %word
	%r93 = ptrtoint %ptr %r86 to %word
	%r92 = icmp eq %word %r94, %r93
	%r91 = inttoptr i1 %r92 to %ptr
	store %ptr %r91, %ptr* %t3
	%r95 = inttoptr %word 0 to %ptr
	%r99 = ptrtoint %ptr %r95 to %word
	%r98 = ptrtoint %ptr %r91 to %word
	%r97 = icmp eq %word %r99, %r98
	%r96 = inttoptr i1 %r97 to %ptr
	%r101 = ptrtoint %ptr %r96 to %word
	%r100 = icmp ne %word %r101, 0
	br i1 %r100, label %L1462, label %L1461
L1462:
	%r102 = getelementptr [9 x i8], [9 x i8]* @str1463, %word 0, %word 0
	%r104 = call i32 (%ptr, ...) @printf(%ptr %r102)
	%r105 = sext i32 %r104 to %word
	%r106 = inttoptr %word %r105 to %ptr
	%r107 = getelementptr [19 x i8], [19 x i8]* @str1464, %word 0, %word 0
	%r109 = call i32 (%ptr, ...) @printf(%ptr %r107)
	%r110 = sext i32 %r109 to %word
	%r111 = inttoptr %word %r110 to %ptr
	%r112 = getelementptr [2 x i8], [2 x i8]* @str1465, %word 0, %word 0
	%r114 = call i32 (%ptr, ...) @printf(%ptr %r112)
	%r115 = sext i32 %r114 to %word
	%r116 = inttoptr %word %r115 to %ptr
	%r117 = call %ptr @die()
	store %ptr %r117, %ptr* %t3
	%r118 = inttoptr %word 0 to %ptr
	%r122 = ptrtoint %ptr %r118 to %word
	%r121 = ptrtoint %ptr %r117 to %word
	%r120 = icmp eq %word %r122, %r121
	%r119 = inttoptr i1 %r120 to %ptr
	%r124 = ptrtoint %ptr %r119 to %word
	%r123 = icmp ne %word %r124, 0
	br i1 %r123, label %L1466, label %L1461
L1466:
	br label %L1461
L1461:
	%r125 = load %ptr, %ptr* %t3
	%r127 = getelementptr %ptr, %ptr* @"*module*", %word 0
	%r126 = bitcast %ptr* %r127 to %ptr
	%r128 = call %ptr @"gc/push-root"(%ptr %r126)
	%r130 = getelementptr %ptr, %ptr* @"*symbols*", %word 0
	%r129 = bitcast %ptr* %r130 to %ptr
	%r131 = call %ptr @"gc/push-root"(%ptr %r129)
	%r133 = getelementptr %ptr, %ptr* @"fixed-subr/quote", %word 0
	%r132 = bitcast %ptr* %r133 to %ptr
	%r134 = call %ptr @"gc/push-root"(%ptr %r132)
	%r136 = getelementptr %ptr, %ptr* @"fixed-subr/lambda", %word 0
	%r135 = bitcast %ptr* %r136 to %ptr
	%r137 = call %ptr @"gc/push-root"(%ptr %r135)
	%r139 = getelementptr %ptr, %ptr* @"fixed-subr/let", %word 0
	%r138 = bitcast %ptr* %r139 to %ptr
	%r140 = call %ptr @"gc/push-root"(%ptr %r138)
	%r142 = getelementptr %ptr, %ptr* @"fixed-subr/define", %word 0
	%r141 = bitcast %ptr* %r142 to %ptr
	%r143 = call %ptr @"gc/push-root"(%ptr %r141)
	%r144 = inttoptr %word 0 to %ptr
	%r146 = getelementptr %ptr, %ptr* @"*call-stack*", %word 0
	%r145 = bitcast %ptr* %r146 to %ptr
	%r147 = call %ptr @"gc/push-root"(%ptr %r145)
	%r148 = inttoptr %word 32 to %ptr
	%r149 = call %ptr @"new-<array>"(%ptr %r148)
	store %ptr %r149, %ptr* @"*call-stack*"
	%r150 = inttoptr %word 32 to %ptr
	%r151 = call %ptr @"new-<array>"(%ptr %r150)
	store %ptr %r151, %ptr* @"*symbols*"
	%r152 = inttoptr %word 0 to %ptr
	%r153 = call %ptr @"new-<module>"()
	store %ptr %r153, %ptr* @"*module*"
	%r154 = inttoptr %word 0 to %ptr
	%r155 = call %ptr @capture-well-known-vm-values()
	%r156 = inttoptr %word 0 to %ptr
	%r157 = inttoptr %word 1 to %ptr
	%r158 = inttoptr %word 1 to %ptr
	%r159 = load %ptr, %ptr* @"*module*"
	%r163 = bitcast %ptr %r159 to [0 x %ptr]*
	%r162 = ptrtoint %ptr %r158 to %word
	%r161 = getelementptr [0 x %ptr], [0 x %ptr]* %r163, %word 0, %word %r162
	%r160 = load %ptr, %ptr* %r161
	%r167 = bitcast %ptr %r160 to [0 x %ptr]*
	%r166 = ptrtoint %ptr %r157 to %word
	%r165 = getelementptr [0 x %ptr], [0 x %ptr]* %r167, %word 0, %word %r166
	%r164 = load %ptr, %ptr* %r165
	%r168 = getelementptr [25 x i8], [25 x i8]* @str1467, %word 0, %word 0
	%r170 = call %ptr @"k/intern"(%ptr %r168)
	%r171 = call %ptr @"k/env/lookup-variable"(%ptr %r164, %ptr %r170)
	store %ptr %r171, %ptr* %t3
	%r172 = inttoptr %word 0 to %ptr
	store %ptr %r172, %ptr* %t4
	%r174 = getelementptr %ptr, %ptr* %t4, %word 0
	%r173 = bitcast %ptr* %r174 to %ptr
	%r175 = call %ptr @"gc/push-root"(%ptr %r173)
	%r176 = load %ptr, %ptr* %t1
	store %ptr %r176, %ptr* %t5
	br label %L1469
L1468:
	%r177 = inttoptr %word 0 to %ptr
	%r178 = load %ptr, %ptr* %t4
	%r179 = call %ptr @"new-<pair>"(%ptr %r177, %ptr %r178)
	store %ptr %r179, %ptr* %t4
	%r180 = load %ptr, %ptr* %t5
	%r181 = load %ptr, %ptr* %t2
	%r185 = bitcast %ptr %r181 to [0 x %ptr]*
	%r184 = ptrtoint %ptr %r180 to %word
	%r183 = getelementptr [0 x %ptr], [0 x %ptr]* %r185, %word 0, %word %r184
	%r182 = load %ptr, %ptr* %r183
	%r186 = call %ptr @"new-<string>-from-cstring"(%ptr %r182)
	%r187 = inttoptr %word 0 to %ptr
	%r188 = load %ptr, %ptr* %t4
	%r192 = bitcast %ptr %r188 to [0 x %ptr]*
	%r191 = ptrtoint %ptr %r187 to %word
	%r190 = getelementptr [0 x %ptr], [0 x %ptr]* %r192, %word 0, %word %r191
	store %ptr %r186, %ptr* %r190
	%r189 = bitcast %ptr %r186 to %ptr
	br label %L1469
L1469:
	%r193 = inttoptr %word 1 to %ptr
	%r194 = load %ptr, %ptr* %t5
	%r198 = ptrtoint %ptr %r194 to %word
	%r197 = ptrtoint %ptr %r193 to %word
	%r196 = sub %word %r198, %r197
	%r195 = inttoptr %word %r196 to %ptr
	store %ptr %r195, %ptr* %t5
	%r199 = inttoptr %word 0 to %ptr
	%r203 = ptrtoint %ptr %r199 to %word
	%r202 = ptrtoint %ptr %r195 to %word
	%r201 = icmp slt %word %r203, %r202
	%r200 = inttoptr i1 %r201 to %ptr
	%r205 = ptrtoint %ptr %r200 to %word
	%r204 = icmp ne %word %r205, 0
	br i1 %r204, label %L1468, label %L1470
L1470:
	%r206 = load %ptr, %ptr* %t4
	%r207 = inttoptr %word 1 to %ptr
	%r208 = load %ptr, %ptr* %t3
	%r212 = bitcast %ptr %r208 to [0 x %ptr]*
	%r211 = ptrtoint %ptr %r207 to %word
	%r210 = getelementptr [0 x %ptr], [0 x %ptr]* %r212, %word 0, %word %r211
	store %ptr %r206, %ptr* %r210
	%r209 = bitcast %ptr %r206 to %ptr
	store %ptr %r209, %ptr* %t5
	%r214 = getelementptr %ptr, %ptr* %t4, %word 0
	%r213 = bitcast %ptr* %r214 to %ptr
	%r215 = call %ptr @"gc/pop-root"(%ptr %r213)
	%r216 = load %ptr, %ptr* %t5
	%r217 = inttoptr %word 0 to %ptr
	%r218 = inttoptr %word 0 to %ptr
	store %ptr %r218, %ptr* %t4
	%r219 = inttoptr %word 0 to %ptr
	store %ptr %r219, %ptr* %t5
	br label %L1472
L1471:
	%r220 = inttoptr %word 0 to %ptr
	%r221 = load %ptr, %ptr* %t4
	%r225 = bitcast %ptr %r221 to [0 x %ptr]*
	%r224 = ptrtoint %ptr %r220 to %word
	%r223 = getelementptr [0 x %ptr], [0 x %ptr]* %r225, %word 0, %word %r224
	%r222 = load %ptr, %ptr* %r223
	store %ptr %r222, %ptr* %t6
	%r226 = inttoptr %word 1 to %ptr
	%r227 = load %ptr, %ptr* %t6
	%r228 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r227)
	%r232 = bitcast %ptr %r228 to [0 x %ptr]*
	%r231 = ptrtoint %ptr %r226 to %word
	%r230 = getelementptr [0 x %ptr], [0 x %ptr]* %r232, %word 0, %word %r231
	%r229 = load %ptr, %ptr* %r230
	store %ptr %r229, %ptr* %t7
	%r234 = getelementptr %ptr, %ptr* %t6, %word 0
	%r233 = bitcast %ptr* %r234 to %ptr
	%r235 = call %ptr @"gc/push-root"(%ptr %r233)
	%r237 = getelementptr %ptr, %ptr* %t5, %word 0
	%r236 = bitcast %ptr* %r237 to %ptr
	%r238 = call %ptr @"gc/push-root"(%ptr %r236)
	%r239 = inttoptr %word 1 to %ptr
	%r240 = load %ptr, %ptr* %t4
	%r244 = bitcast %ptr %r240 to [0 x %ptr]*
	%r243 = ptrtoint %ptr %r239 to %word
	%r242 = getelementptr [0 x %ptr], [0 x %ptr]* %r244, %word 0, %word %r243
	%r241 = load %ptr, %ptr* %r242
	store %ptr %r241, %ptr* %t4
	%r245 = inttoptr %word 1 to %ptr
	%r246 = load %ptr, %ptr* %t3
	%r250 = bitcast %ptr %r246 to [0 x %ptr]*
	%r249 = ptrtoint %ptr %r245 to %word
	%r248 = getelementptr [0 x %ptr], [0 x %ptr]* %r250, %word 0, %word %r249
	store %ptr %r241, %ptr* %r248
	%r247 = bitcast %ptr %r241 to %ptr
	%r251 = load %ptr, %ptr* %t7
	%r252 = getelementptr [3 x i8], [3 x i8]* @str1477, %word 0, %word 0
	%r254 = call i32 @strcmp(%ptr %r251, %ptr %r252)
	%r255 = sext i32 %r254 to %word
	%r256 = inttoptr %word %r255 to %ptr
	%r260 = ptrtoint %ptr %r256 to %word
	%r259 = icmp eq %word %r260, 0
	%r258 = zext i1 %r259 to %word
	%r257 = inttoptr %word %r258 to %ptr
	%r262 = ptrtoint %ptr %r257 to %word
	%r261 = icmp ne %word %r262, 0
	br i1 %r261, label %L1474, label %L1475
L1474:
	%r263 = inttoptr %word 1 to %ptr
	%r264 = load %ptr, %ptr* @"*verbosity*"
	%r268 = ptrtoint %ptr %r264 to %word
	%r267 = ptrtoint %ptr %r263 to %word
	%r266 = add %word %r268, %r267
	%r265 = inttoptr %word %r266 to %ptr
	store %ptr %r265, %ptr* @"*verbosity*"
	%r269 = inttoptr %word 1 to %ptr
	%r270 = inttoptr %word 1 to %ptr
	%r271 = load %ptr, %ptr* @"*verbosity*"
	%r275 = ptrtoint %ptr %r271 to %word
	%r274 = ptrtoint %ptr %r270 to %word
	%r273 = shl %word %r275, %r274
	%r272 = inttoptr %word %r273 to %ptr
	%r279 = ptrtoint %ptr %r272 to %word
	%r278 = ptrtoint %ptr %r269 to %word
	%r277 = add %word %r279, %r278
	%r276 = inttoptr %word %r277 to %ptr
	store %ptr %r276, %ptr* %t5
	%r280 = load %ptr, %ptr* %t5
	%r281 = inttoptr %word 1 to %ptr
	%r282 = inttoptr %word 1 to %ptr
	%r283 = inttoptr %word 1 to %ptr
	%r284 = load %ptr, %ptr* @"*module*"
	%r288 = bitcast %ptr %r284 to [0 x %ptr]*
	%r287 = ptrtoint %ptr %r283 to %word
	%r286 = getelementptr [0 x %ptr], [0 x %ptr]* %r288, %word 0, %word %r287
	%r285 = load %ptr, %ptr* %r286
	%r292 = bitcast %ptr %r285 to [0 x %ptr]*
	%r291 = ptrtoint %ptr %r282 to %word
	%r290 = getelementptr [0 x %ptr], [0 x %ptr]* %r292, %word 0, %word %r291
	%r289 = load %ptr, %ptr* %r290
	%r293 = getelementptr [12 x i8], [12 x i8]* @str1478, %word 0, %word 0
	%r295 = call %ptr @"k/intern"(%ptr %r293)
	%r296 = call %ptr @"k/env/lookup-variable"(%ptr %r289, %ptr %r295)
	%r300 = bitcast %ptr %r296 to [0 x %ptr]*
	%r299 = ptrtoint %ptr %r281 to %word
	%r298 = getelementptr [0 x %ptr], [0 x %ptr]* %r300, %word 0, %word %r299
	store %ptr %r280, %ptr* %r298
	%r297 = bitcast %ptr %r280 to %ptr
	store %ptr %r297, %ptr* %t8
	br label %L1476
L1475:
	%r301 = load %ptr, %ptr* %t7
	%r302 = getelementptr [3 x i8], [3 x i8]* @str1482, %word 0, %word 0
	%r304 = call i32 @strcmp(%ptr %r301, %ptr %r302)
	%r305 = sext i32 %r304 to %word
	%r306 = inttoptr %word %r305 to %ptr
	%r310 = ptrtoint %ptr %r306 to %word
	%r309 = icmp eq %word %r310, 0
	%r308 = zext i1 %r309 to %word
	%r307 = inttoptr %word %r308 to %ptr
	%r312 = ptrtoint %ptr %r307 to %word
	%r311 = icmp ne %word %r312, 0
	br i1 %r311, label %L1479, label %L1480
L1479:
	%r313 = inttoptr %word 1 to %ptr
	%r314 = load %ptr, %ptr* @"*optimised*"
	%r318 = ptrtoint %ptr %r314 to %word
	%r317 = ptrtoint %ptr %r313 to %word
	%r316 = add %word %r318, %r317
	%r315 = inttoptr %word %r316 to %ptr
	store %ptr %r315, %ptr* @"*optimised*"
	%r319 = inttoptr %word 1 to %ptr
	%r320 = inttoptr %word 1 to %ptr
	%r321 = load %ptr, %ptr* @"*optimised*"
	%r325 = ptrtoint %ptr %r321 to %word
	%r324 = ptrtoint %ptr %r320 to %word
	%r323 = shl %word %r325, %r324
	%r322 = inttoptr %word %r323 to %ptr
	%r329 = ptrtoint %ptr %r322 to %word
	%r328 = ptrtoint %ptr %r319 to %word
	%r327 = add %word %r329, %r328
	%r326 = inttoptr %word %r327 to %ptr
	store %ptr %r326, %ptr* %t5
	%r330 = load %ptr, %ptr* %t5
	%r331 = inttoptr %word 1 to %ptr
	%r332 = inttoptr %word 1 to %ptr
	%r333 = inttoptr %word 1 to %ptr
	%r334 = load %ptr, %ptr* @"*module*"
	%r338 = bitcast %ptr %r334 to [0 x %ptr]*
	%r337 = ptrtoint %ptr %r333 to %word
	%r336 = getelementptr [0 x %ptr], [0 x %ptr]* %r338, %word 0, %word %r337
	%r335 = load %ptr, %ptr* %r336
	%r342 = bitcast %ptr %r335 to [0 x %ptr]*
	%r341 = ptrtoint %ptr %r332 to %word
	%r340 = getelementptr [0 x %ptr], [0 x %ptr]* %r342, %word 0, %word %r341
	%r339 = load %ptr, %ptr* %r340
	%r343 = getelementptr [12 x i8], [12 x i8]* @str1483, %word 0, %word 0
	%r345 = call %ptr @"k/intern"(%ptr %r343)
	%r346 = call %ptr @"k/env/lookup-variable"(%ptr %r339, %ptr %r345)
	%r350 = bitcast %ptr %r346 to [0 x %ptr]*
	%r349 = ptrtoint %ptr %r331 to %word
	%r348 = getelementptr [0 x %ptr], [0 x %ptr]* %r350, %word 0, %word %r349
	store %ptr %r330, %ptr* %r348
	%r347 = bitcast %ptr %r330 to %ptr
	store %ptr %r347, %ptr* %t9
	br label %L1481
L1480:
	%r351 = load %ptr, %ptr* %t7
	%r352 = getelementptr [3 x i8], [3 x i8]* @str1487, %word 0, %word 0
	%r354 = call i32 @strcmp(%ptr %r351, %ptr %r352)
	%r355 = sext i32 %r354 to %word
	%r356 = inttoptr %word %r355 to %ptr
	%r360 = ptrtoint %ptr %r356 to %word
	%r359 = icmp eq %word %r360, 0
	%r358 = zext i1 %r359 to %word
	%r357 = inttoptr %word %r358 to %ptr
	%r362 = ptrtoint %ptr %r357 to %word
	%r361 = icmp ne %word %r362, 0
	br i1 %r361, label %L1484, label %L1485
L1484:
	%r363 = load %ptr, %ptr* @"libc/stderr"
	%r364 = getelementptr [50 x i8], [50 x i8]* @str1488, %word 0, %word 0
	%r366 = call i32 (%ptr, %ptr, ...) @fprintf(%ptr %r363, %ptr %r364)
	%r367 = sext i32 %r366 to %word
	%r368 = inttoptr %word %r367 to %ptr
	store %ptr %r368, %ptr* %t10
	br label %L1486
L1485:
	%r369 = load %ptr, %ptr* %t7
	%r370 = getelementptr [2 x i8], [2 x i8]* @str1492, %word 0, %word 0
	%r372 = call i32 @strcmp(%ptr %r369, %ptr %r370)
	%r373 = sext i32 %r372 to %word
	%r374 = inttoptr %word %r373 to %ptr
	%r378 = ptrtoint %ptr %r374 to %word
	%r377 = icmp eq %word %r378, 0
	%r376 = zext i1 %r377 to %word
	%r375 = inttoptr %word %r376 to %ptr
	%r380 = ptrtoint %ptr %r375 to %word
	%r379 = icmp ne %word %r380, 0
	br i1 %r379, label %L1489, label %L1490
L1489:
	%r381 = load %ptr, %ptr* @"libc/stdin"
	%r382 = call %ptr @"k/repl-stream"(%ptr %r381)
	store %ptr %r382, %ptr* %t11
	br label %L1491
L1490:
	%r383 = load %ptr, %ptr* %t7
	%r384 = getelementptr [7 x i8], [7 x i8]* @str1496, %word 0, %word 0
	%r386 = call i32 @strcmp(%ptr %r383, %ptr %r384)
	%r387 = sext i32 %r386 to %word
	%r388 = inttoptr %word %r387 to %ptr
	%r392 = ptrtoint %ptr %r388 to %word
	%r391 = icmp eq %word %r392, 0
	%r390 = zext i1 %r391 to %word
	%r389 = inttoptr %word %r390 to %ptr
	%r394 = ptrtoint %ptr %r389 to %word
	%r393 = icmp ne %word %r394, 0
	br i1 %r393, label %L1493, label %L1494
L1493:
	%r395 = inttoptr %word 0 to %ptr
	%r396 = load %ptr, %ptr* %t4
	%r397 = call %ptr @"get/type"(%ptr %r396)
	%r398 = inttoptr %word 19 to %ptr
	%r402 = ptrtoint %ptr %r398 to %word
	%r401 = ptrtoint %ptr %r397 to %word
	%r400 = icmp eq %word %r402, %r401
	%r399 = inttoptr i1 %r400 to %ptr
	%r404 = ptrtoint %ptr %r399 to %word
	%r403 = icmp ne %word %r404, 0
	br i1 %r403, label %L1497, label %L1498
L1497:
	%r405 = inttoptr %word 0 to %ptr
	store %ptr %r405, %ptr* %t13
	br label %L1499
L1498:
	%r406 = getelementptr [28 x i8], [28 x i8]* @str1500, %word 0, %word 0
	%r408 = call %ptr @fatal(%ptr %r406)
	store %ptr %r408, %ptr* %t13
	br label %L1499
L1499:
	%r409 = load %ptr, %ptr* %t13
	%r410 = inttoptr %word 0 to %ptr
	%r411 = load %ptr, %ptr* %t4
	%r415 = bitcast %ptr %r411 to [0 x %ptr]*
	%r414 = ptrtoint %ptr %r410 to %word
	%r413 = getelementptr [0 x %ptr], [0 x %ptr]* %r415, %word 0, %word %r414
	%r412 = load %ptr, %ptr* %r413
	store %ptr %r412, %ptr* %t6
	%r416 = inttoptr %word 1 to %ptr
	%r417 = load %ptr, %ptr* %t6
	%r418 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r417)
	%r422 = bitcast %ptr %r418 to [0 x %ptr]*
	%r421 = ptrtoint %ptr %r416 to %word
	%r420 = getelementptr [0 x %ptr], [0 x %ptr]* %r422, %word 0, %word %r421
	%r419 = load %ptr, %ptr* %r420
	store %ptr %r419, %ptr* %t7
	%r423 = inttoptr %word 1 to %ptr
	%r424 = load %ptr, %ptr* %t4
	%r428 = bitcast %ptr %r424 to [0 x %ptr]*
	%r427 = ptrtoint %ptr %r423 to %word
	%r426 = getelementptr [0 x %ptr], [0 x %ptr]* %r428, %word 0, %word %r427
	%r425 = load %ptr, %ptr* %r426
	store %ptr %r425, %ptr* %t4
	%r429 = inttoptr %word 1 to %ptr
	%r430 = load %ptr, %ptr* %t3
	%r434 = bitcast %ptr %r430 to [0 x %ptr]*
	%r433 = ptrtoint %ptr %r429 to %word
	%r432 = getelementptr [0 x %ptr], [0 x %ptr]* %r434, %word 0, %word %r433
	store %ptr %r425, %ptr* %r432
	%r431 = bitcast %ptr %r425 to %ptr
	%r435 = load %ptr, %ptr* %t7
	%r436 = call %ptr @"k/intern"(%ptr %r435)
	store %ptr %r436, %ptr* %t13
	%r437 = load %ptr, %ptr* %t13
	%r438 = inttoptr %word 0 to %ptr
	%r439 = call %ptr @"new-<pair>"(%ptr %r437, %ptr %r438)
	store %ptr %r439, %ptr* %t14
	%r441 = getelementptr %ptr, %ptr* %t14, %word 0
	%r440 = bitcast %ptr* %r441 to %ptr
	%r442 = call %ptr @"gc/push-root"(%ptr %r440)
	%r443 = load %ptr, %ptr* %t14
	%r444 = inttoptr %word 1 to %ptr
	%r445 = inttoptr %word 1 to %ptr
	%r446 = load %ptr, %ptr* @"*module*"
	%r450 = bitcast %ptr %r446 to [0 x %ptr]*
	%r449 = ptrtoint %ptr %r445 to %word
	%r448 = getelementptr [0 x %ptr], [0 x %ptr]* %r450, %word 0, %word %r449
	%r447 = load %ptr, %ptr* %r448
	%r454 = bitcast %ptr %r447 to [0 x %ptr]*
	%r453 = ptrtoint %ptr %r444 to %word
	%r452 = getelementptr [0 x %ptr], [0 x %ptr]* %r454, %word 0, %word %r453
	%r451 = load %ptr, %ptr* %r452
	%r455 = call %ptr @"k/expand-encode-eval"(%ptr %r443, %ptr %r451)
	store %ptr %r455, %ptr* %t15
	%r457 = getelementptr %ptr, %ptr* %t14, %word 0
	%r456 = bitcast %ptr* %r457 to %ptr
	%r458 = call %ptr @"gc/pop-root"(%ptr %r456)
	%r459 = load %ptr, %ptr* %t15
	store %ptr %r459, %ptr* %t12
	br label %L1495
L1494:
	%r460 = load %ptr, %ptr* %t7
	%r461 = getelementptr [9 x i8], [9 x i8]* @str1504, %word 0, %word 0
	%r463 = call i32 @strcmp(%ptr %r460, %ptr %r461)
	%r464 = sext i32 %r463 to %word
	%r465 = inttoptr %word %r464 to %ptr
	%r469 = ptrtoint %ptr %r465 to %word
	%r468 = icmp eq %word %r469, 0
	%r467 = zext i1 %r468 to %word
	%r466 = inttoptr %word %r467 to %ptr
	%r471 = ptrtoint %ptr %r466 to %word
	%r470 = icmp ne %word %r471, 0
	br i1 %r470, label %L1501, label %L1502
L1501:
	%r472 = inttoptr %word 0 to %ptr
	%r473 = inttoptr %word 1 to %ptr
	store %ptr %r473, %ptr* %t15
	%r474 = load %ptr, %ptr* %t4
	%r475 = call %ptr @"get/type"(%ptr %r474)
	%r476 = inttoptr %word 19 to %ptr
	%r480 = ptrtoint %ptr %r476 to %word
	%r479 = ptrtoint %ptr %r475 to %word
	%r478 = icmp eq %word %r480, %r479
	%r477 = inttoptr i1 %r478 to %ptr
	store %ptr %r477, %ptr* %t15
	%r481 = inttoptr %word 0 to %ptr
	%r485 = ptrtoint %ptr %r481 to %word
	%r484 = ptrtoint %ptr %r477 to %word
	%r483 = icmp eq %word %r485, %r484
	%r482 = inttoptr i1 %r483 to %ptr
	%r487 = ptrtoint %ptr %r482 to %word
	%r486 = icmp ne %word %r487, 0
	br i1 %r486, label %L1508, label %L1509
L1509:
	%r488 = inttoptr %word 1 to %ptr
	%r489 = load %ptr, %ptr* %t4
	%r493 = bitcast %ptr %r489 to [0 x %ptr]*
	%r492 = ptrtoint %ptr %r488 to %word
	%r491 = getelementptr [0 x %ptr], [0 x %ptr]* %r493, %word 0, %word %r492
	%r490 = load %ptr, %ptr* %r491
	%r494 = call %ptr @"get/type"(%ptr %r490)
	%r495 = inttoptr %word 19 to %ptr
	%r499 = ptrtoint %ptr %r495 to %word
	%r498 = ptrtoint %ptr %r494 to %word
	%r497 = icmp eq %word %r499, %r498
	%r496 = inttoptr i1 %r497 to %ptr
	store %ptr %r496, %ptr* %t15
	%r500 = inttoptr %word 0 to %ptr
	%r504 = ptrtoint %ptr %r500 to %word
	%r503 = ptrtoint %ptr %r496 to %word
	%r502 = icmp eq %word %r504, %r503
	%r501 = inttoptr i1 %r502 to %ptr
	%r506 = ptrtoint %ptr %r501 to %word
	%r505 = icmp ne %word %r506, 0
	br i1 %r505, label %L1508, label %L1510
L1510:
	br label %L1508
L1508:
	%r507 = load %ptr, %ptr* %t15
	%r509 = ptrtoint %ptr %r507 to %word
	%r508 = icmp ne %word %r509, 0
	br i1 %r508, label %L1505, label %L1506
L1505:
	%r510 = inttoptr %word 0 to %ptr
	store %ptr %r510, %ptr* %t14
	br label %L1507
L1506:
	%r511 = getelementptr [32 x i8], [32 x i8]* @str1511, %word 0, %word 0
	%r513 = call %ptr @fatal(%ptr %r511)
	store %ptr %r513, %ptr* %t14
	br label %L1507
L1507:
	%r514 = load %ptr, %ptr* %t14
	%r515 = load %ptr, %ptr* %t4
	%r516 = call %ptr @"k/car"(%ptr %r515)
	store %ptr %r516, %ptr* %t14
	%r517 = load %ptr, %ptr* %t4
	%r518 = call %ptr @"k/cadr"(%ptr %r517)
	store %ptr %r518, %ptr* %t15
	%r519 = inttoptr %word 1 to %ptr
	%r520 = inttoptr %word 1 to %ptr
	%r521 = load %ptr, %ptr* %t4
	%r525 = bitcast %ptr %r521 to [0 x %ptr]*
	%r524 = ptrtoint %ptr %r520 to %word
	%r523 = getelementptr [0 x %ptr], [0 x %ptr]* %r525, %word 0, %word %r524
	%r522 = load %ptr, %ptr* %r523
	%r529 = bitcast %ptr %r522 to [0 x %ptr]*
	%r528 = ptrtoint %ptr %r519 to %word
	%r527 = getelementptr [0 x %ptr], [0 x %ptr]* %r529, %word 0, %word %r528
	%r526 = load %ptr, %ptr* %r527
	store %ptr %r526, %ptr* %t4
	%r530 = inttoptr %word 1 to %ptr
	%r531 = load %ptr, %ptr* %t3
	%r535 = bitcast %ptr %r531 to [0 x %ptr]*
	%r534 = ptrtoint %ptr %r530 to %word
	%r533 = getelementptr [0 x %ptr], [0 x %ptr]* %r535, %word 0, %word %r534
	store %ptr %r526, %ptr* %r533
	%r532 = bitcast %ptr %r526 to %ptr
	%r536 = inttoptr %word 1 to %ptr
	%r537 = load %ptr, %ptr* %t15
	%r538 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r537)
	%r542 = bitcast %ptr %r538 to [0 x %ptr]*
	%r541 = ptrtoint %ptr %r536 to %word
	%r540 = getelementptr [0 x %ptr], [0 x %ptr]* %r542, %word 0, %word %r541
	%r539 = load %ptr, %ptr* %r540
	store %ptr %r539, %ptr* %t16
	%r543 = load %ptr, %ptr* %t16
	store %ptr %r543, %ptr* %t17
	%r544 = load %ptr, %ptr* %t16
	%r546 = getelementptr %ptr, %ptr* %t17, %word 0
	%r545 = bitcast %ptr* %r546 to %ptr
	%r547 = inttoptr %word 0 to %ptr
	%ffi-cast548 = ptrtoint %ptr %r547 to i32
	%r549 = call i64 @strtoul(%ptr %r544, %ptr %r545, i32 %ffi-cast548)
	%r550 = inttoptr %word %r549 to %ptr
	store %ptr %r550, %ptr* %t18
	%r551 = inttoptr %word 0 to %ptr
	%r552 = load %ptr, %ptr* %t17
	%r557 = bitcast %ptr %r552 to [0 x i8]*
	%r556 = ptrtoint %ptr %r551 to %word
	%r555 = getelementptr [0 x i8], [0 x i8]* %r557, %word 0, %word %r556
	%r554 = load i8, i8* %r555
	%r553 = inttoptr i8 %r554 to %ptr
	%r558 = inttoptr %word 0 to %ptr
	%r562 = ptrtoint %ptr %r558 to %word
	%r561 = ptrtoint %ptr %r553 to %word
	%r560 = icmp eq %word %r562, %r561
	%r559 = inttoptr i1 %r560 to %ptr
	%r564 = ptrtoint %ptr %r559 to %word
	%r563 = icmp ne %word %r564, 0
	br i1 %r563, label %L1512, label %L1513
L1512:
	%r565 = inttoptr %word 1 to %ptr
	%r566 = inttoptr %word 1 to %ptr
	%r567 = load %ptr, %ptr* %t18
	%r571 = ptrtoint %ptr %r567 to %word
	%r570 = ptrtoint %ptr %r566 to %word
	%r569 = shl %word %r571, %r570
	%r568 = inttoptr %word %r569 to %ptr
	%r575 = ptrtoint %ptr %r568 to %word
	%r574 = ptrtoint %ptr %r565 to %word
	%r573 = add %word %r575, %r574
	%r572 = inttoptr %word %r573 to %ptr
	store %ptr %r572, %ptr* %t15
	store %ptr %r572, %ptr* %t19
	br label %L1514
L1513:
	%r576 = inttoptr %word 0 to %ptr
	store %ptr %r576, %ptr* %t19
	br label %L1514
L1514:
	%r577 = load %ptr, %ptr* %t19
	%r578 = load %ptr, %ptr* %t15
	%r579 = inttoptr %word 0 to %ptr
	%r580 = call %ptr @"new-<pair>"(%ptr %r578, %ptr %r579)
	store %ptr %r580, %ptr* %t16
	%r582 = getelementptr %ptr, %ptr* %t16, %word 0
	%r581 = bitcast %ptr* %r582 to %ptr
	%r583 = call %ptr @"gc/push-root"(%ptr %r581)
	%r584 = inttoptr %word 1 to %ptr
	%r585 = load %ptr, %ptr* %t14
	%r586 = call %ptr @"k/string-ensure-zero-terminated"(%ptr %r585)
	%r590 = bitcast %ptr %r586 to [0 x %ptr]*
	%r589 = ptrtoint %ptr %r584 to %word
	%r588 = getelementptr [0 x %ptr], [0 x %ptr]* %r590, %word 0, %word %r589
	%r587 = load %ptr, %ptr* %r588
	%r591 = call %ptr @"k/intern"(%ptr %r587)
	%r592 = load %ptr, %ptr* %t16
	%r593 = call %ptr @"new-<pair>"(%ptr %r591, %ptr %r592)
	store %ptr %r593, %ptr* %t16
	%r594 = load %ptr, %ptr* @"symbol/define"
	%r595 = load %ptr, %ptr* %t16
	%r596 = call %ptr @"new-<pair>"(%ptr %r594, %ptr %r595)
	store %ptr %r596, %ptr* %t16
	%r597 = load %ptr, %ptr* %t16
	%r598 = inttoptr %word 1 to %ptr
	%r599 = inttoptr %word 1 to %ptr
	%r600 = load %ptr, %ptr* @"*module*"
	%r604 = bitcast %ptr %r600 to [0 x %ptr]*
	%r603 = ptrtoint %ptr %r599 to %word
	%r602 = getelementptr [0 x %ptr], [0 x %ptr]* %r604, %word 0, %word %r603
	%r601 = load %ptr, %ptr* %r602
	%r608 = bitcast %ptr %r601 to [0 x %ptr]*
	%r607 = ptrtoint %ptr %r598 to %word
	%r606 = getelementptr [0 x %ptr], [0 x %ptr]* %r608, %word 0, %word %r607
	%r605 = load %ptr, %ptr* %r606
	%r609 = call %ptr @"k/expand-encode-eval"(%ptr %r597, %ptr %r605)
	store %ptr %r609, %ptr* %t17
	%r611 = getelementptr %ptr, %ptr* %t16, %word 0
	%r610 = bitcast %ptr* %r611 to %ptr
	%r612 = call %ptr @"gc/pop-root"(%ptr %r610)
	%r613 = load %ptr, %ptr* %t17
	store %ptr %r613, %ptr* %t13
	br label %L1503
L1502:
	%r614 = load %ptr, %ptr* @"*verbosity*"
	%r615 = inttoptr %word 1 to %ptr
	%r619 = ptrtoint %ptr %r615 to %word
	%r618 = ptrtoint %ptr %r614 to %word
	%r617 = icmp sle %word %r619, %r618
	%r616 = inttoptr i1 %r617 to %ptr
	%r621 = ptrtoint %ptr %r616 to %word
	%r620 = icmp ne %word %r621, 0
	br i1 %r620, label %L1515, label %L1516
L1515:
	%r622 = load %ptr, %ptr* @"libc/stderr"
	%r623 = getelementptr [29 x i8], [29 x i8]* @str1518, %word 0, %word 0
	%r625 = load %ptr, %ptr* %t7
	%r626 = call i32 (%ptr, %ptr, ...) @fprintf(%ptr %r622, %ptr %r623, %ptr %r625)
	%r627 = sext i32 %r626 to %word
	%r628 = inttoptr %word %r627 to %ptr
	store %ptr %r628, %ptr* %t15
	br label %L1517
L1516:
	%r629 = inttoptr %word 0 to %ptr
	store %ptr %r629, %ptr* %t15
	br label %L1517
L1517:
	%r630 = load %ptr, %ptr* %t15
	%r631 = load %ptr, %ptr* %t7
	%r632 = getelementptr [2 x i8], [2 x i8]* @str1519, %word 0, %word 0
	%r634 = call %ptr @fopen(%ptr %r631, %ptr %r632)
	store %ptr %r634, %ptr* %t15
	%r635 = inttoptr %word 0 to %ptr
	store %ptr %r635, %ptr* %t14
	%r636 = load %ptr, %ptr* %t15
	store %ptr %r636, %ptr* %t14
	%r637 = inttoptr %word 0 to %ptr
	%r641 = ptrtoint %ptr %r637 to %word
	%r640 = ptrtoint %ptr %r636 to %word
	%r639 = icmp eq %word %r641, %r640
	%r638 = inttoptr i1 %r639 to %ptr
	%r643 = ptrtoint %ptr %r638 to %word
	%r642 = icmp ne %word %r643, 0
	br i1 %r642, label %L1521, label %L1520
L1521:
	%r644 = getelementptr [17 x i8], [17 x i8]* @str1522, %word 0, %word 0
	%r646 = load %ptr, %ptr* %t7
	%r647 = call %ptr @fatal1(%ptr %r644, %ptr %r646)
	store %ptr %r647, %ptr* %t14
	%r648 = inttoptr %word 0 to %ptr
	%r652 = ptrtoint %ptr %r648 to %word
	%r651 = ptrtoint %ptr %r647 to %word
	%r650 = icmp eq %word %r652, %r651
	%r649 = inttoptr i1 %r650 to %ptr
	%r654 = ptrtoint %ptr %r649 to %word
	%r653 = icmp ne %word %r654, 0
	br i1 %r653, label %L1523, label %L1520
L1523:
	br label %L1520
L1520:
	%r655 = load %ptr, %ptr* %t14
	%r656 = load %ptr, %ptr* %t15
	%r657 = call %ptr @"k/repl-stream"(%ptr %r656)
	%r658 = load %ptr, %ptr* %t15
	%r659 = call i32 @fclose(%ptr %r658)
	%r660 = sext i32 %r659 to %word
	%r661 = inttoptr %word %r660 to %ptr
	store %ptr %r661, %ptr* %t13
	br label %L1503
L1503:
	%r662 = load %ptr, %ptr* %t13
	store %ptr %r662, %ptr* %t12
	br label %L1495
L1495:
	%r663 = load %ptr, %ptr* %t12
	store %ptr %r663, %ptr* %t11
	br label %L1491
L1491:
	%r664 = load %ptr, %ptr* %t11
	store %ptr %r664, %ptr* %t10
	br label %L1486
L1486:
	%r665 = load %ptr, %ptr* %t10
	store %ptr %r665, %ptr* %t9
	br label %L1481
L1481:
	%r666 = load %ptr, %ptr* %t9
	store %ptr %r666, %ptr* %t8
	br label %L1476
L1476:
	%r667 = load %ptr, %ptr* %t8
	store %ptr %r667, %ptr* %t8
	%r669 = getelementptr %ptr, %ptr* %t5, %word 0
	%r668 = bitcast %ptr* %r669 to %ptr
	%r670 = call %ptr @"gc/pop-root"(%ptr %r668)
	%r672 = getelementptr %ptr, %ptr* %t6, %word 0
	%r671 = bitcast %ptr* %r672 to %ptr
	%r673 = call %ptr @"gc/pop-root"(%ptr %r671)
	%r674 = load %ptr, %ptr* %t8
	br label %L1472
L1472:
	%r675 = inttoptr %word 1 to %ptr
	%r676 = load %ptr, %ptr* %t3
	%r680 = bitcast %ptr %r676 to [0 x %ptr]*
	%r679 = ptrtoint %ptr %r675 to %word
	%r678 = getelementptr [0 x %ptr], [0 x %ptr]* %r680, %word 0, %word %r679
	%r677 = load %ptr, %ptr* %r678
	store %ptr %r677, %ptr* %t4
	%r681 = call %ptr @"get/type"(%ptr %r677)
	%r682 = inttoptr %word 19 to %ptr
	%r686 = ptrtoint %ptr %r682 to %word
	%r685 = ptrtoint %ptr %r681 to %word
	%r684 = icmp eq %word %r686, %r685
	%r683 = inttoptr i1 %r684 to %ptr
	%r688 = ptrtoint %ptr %r683 to %word
	%r687 = icmp ne %word %r688, 0
	br i1 %r687, label %L1471, label %L1473
L1473:
	%r689 = inttoptr %word 0 to %ptr
	%r690 = call %ptr @"gc/collect"()
	%r691 = load %ptr, %ptr* @"libc/stderr"
	%r692 = getelementptr [42 x i8], [42 x i8]* @str1524, %word 0, %word 0
	%r694 = load %ptr, %ptr* @"gc/objects-live"
	%r695 = load %ptr, %ptr* @"gc/bytes-used"
	%r696 = load %ptr, %ptr* @"gc/bytes-free"
	%r697 = call i32 (%ptr, %ptr, ...) @fprintf(%ptr %r691, %ptr %r692, %ptr %r694, %ptr %r695, %ptr %r696)
	%r698 = sext i32 %r697 to %word
	%r699 = inttoptr %word %r698 to %ptr
	%r700 = inttoptr %word 0 to %ptr
	%r701 = call %ptr @"libc/flush-streams"()
	%r702 = inttoptr %word 0 to %ptr
	%r703 = inttoptr %word 0 to %ptr
	ret %ptr %r703
}
