	.file "D:\\MCHP-Code\\CCTestCode\\test_coverage4\\test_coverage4.X\\newmainXC164.c"
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.section	.debug_info,info
.Ldebug_info0:
	.section	.debug_line,info
.Ldebug_line0:
	.section	.text,code
.Ltext0:
	.global	_i	; export
	.section	.nbss,bss,near
	.align	2
	.type	_i,@object
	.size	_i, 2
_i:
	.skip	2
	.type	_j,@object
	.size	_j, 2
	.global	_j
	.align	2
_j:	.space	2
	.global	_k	; export
	.align	2
	.type	_k,@object
	.size	_k, 2
_k:
	.skip	2
	.type	_expr,@object
	.size	_expr, 2
	.global	_expr
	.align	2
_expr:	.space	2
	.section	.text,code
	.align	2
	.global	_main	; export
	.type	_main,@function
_main:
.LFB0:
	.file 1 "newmainXC164.c"
	; newmainXC164.c:4
	.loc 1 4 0
.L12:
	; basic block 2
	.set ___PA___,1
	lnk	#0
.LCFI0:
	; newmainXC164.c:5
	.loc 1 5 0
	mov	#1,w0
	mov	w0,_i
	; newmainXC164.c:6
	.loc 1 6 0
	mov	#2,w0
	mov	w0,_expr
	; newmainXC164.c:7
	.loc 1 7 0
	mov	_expr,w0
	sub	w0,#4,[w15]
	.set ___BP___,0
	bra	z,.L6
.L13:
.L14:
	; basic block 3
	sub	w0,#4,[w15]
	.set ___BP___,0
	bra	gt,.L10
.L15:
.L16:
	; basic block 4
	sub	w0,#2,[w15]
	.set ___BP___,0
	bra	z,.L4
.L17:
.L18:
	; basic block 5
	sub	w0,#2,[w15]
	.set ___BP___,0
	bra	gt,.L5
.L19:
.L20:
	; basic block 6
	sub	w0,#1,[w15]
	.set ___BP___,0
	bra	z,.L3
.L21:
.L22:
	; basic block 7
	; newmainXC164.c:38
	.loc 1 38 0
	bset.b	___cc_bits_newmainXC164_c_88ac2d71+0,#0 ; cover 0
	bra	.L11
.L23:
.L10:
	; basic block 8
	; newmainXC164.c:7
	.loc 1 7 0
	sub	w0,#6,[w15]
	.set ___BP___,0
	bra	z,.L8
.L24:
.L25:
	; basic block 9
	sub	w0,#6,[w15]
	.set ___BP___,0
	bra	lt,.L7
.L26:
.L27:
	; basic block 10
	sub	w0,#7,[w15]
	.set ___BP___,0
	bra	z,.L9
.L28:
.L29:
	; basic block 11
	; newmainXC164.c:38
	.loc 1 38 0
	bset.b	___cc_bits_newmainXC164_c_88ac2d71+0,#4 ; cover 4
	bra	.L11
.L30:
.L7:
	; basic block 12
	; newmainXC164.c:10
	.loc 1 10 0
	bset.b	___cc_bits_newmainXC164_c_88ac2d71+0,#6 ; cover 6
	mov	#5,w0
	mov	w0,_i
	; newmainXC164.c:11
	.loc 1 11 0
	mov	_expr,w0
	inc	w0,w0
	mov	w0,_expr
	; newmainXC164.c:12
	.loc 1 12 0
	bra	.L11
.L31:
.L3:
	; basic block 13
	; newmainXC164.c:14
	.loc 1 14 0
	bset.b	___cc_bits_newmainXC164_c_88ac2d71+0,#1 ; cover 1
	mov	#1,w0
	mov	w0,_i
	; newmainXC164.c:15
	.loc 1 15 0
	mov	_expr,w0
	inc	w0,w0
	mov	w0,_expr
	; newmainXC164.c:16
	.loc 1 16 0
	bra	.L11
.L32:
.L6:
	; basic block 14
	; newmainXC164.c:18
	.loc 1 18 0
	bset.b	___cc_bits_newmainXC164_c_88ac2d71+1,#0 ; cover 8
	mov	#4,w0
	mov	w0,_i
	; newmainXC164.c:19
	.loc 1 19 0
	mov	_expr,w0
	inc	w0,w0
	mov	w0,_expr
	; newmainXC164.c:20
	.loc 1 20 0
	bra	.L11
.L33:
.L4:
	; basic block 15
	; newmainXC164.c:22
	.loc 1 22 0
	bset.b	___cc_bits_newmainXC164_c_88ac2d71+0,#3 ; cover 3
	mov	#2,w0
	mov	w0,_i
	; newmainXC164.c:23
	.loc 1 23 0
	mov	_expr,w0
	inc	w0,w0
	mov	w0,_expr
	; newmainXC164.c:24
	.loc 1 24 0
	bra	.L11
.L34:
.L9:
	; basic block 16
	; newmainXC164.c:26
	.loc 1 26 0
	bset.b	___cc_bits_newmainXC164_c_88ac2d71+0,#5 ; cover 5
	mov	#7,w0
	mov	w0,_i
	; newmainXC164.c:27
	.loc 1 27 0
	mov	_expr,w0
	inc	w0,w0
	mov	w0,_expr
	; newmainXC164.c:28
	.loc 1 28 0
	bra	.L11
.L35:
.L5:
	; basic block 17
	; newmainXC164.c:30
	.loc 1 30 0
	bset.b	___cc_bits_newmainXC164_c_88ac2d71+0,#2 ; cover 2
	mov	#3,w0
	mov	w0,_i
	; newmainXC164.c:31
	.loc 1 31 0
	mov	_expr,w0
	inc	w0,w0
	mov	w0,_expr
	; newmainXC164.c:32
	.loc 1 32 0
	bra	.L11
.L36:
.L8:
	; basic block 18
	; newmainXC164.c:34
	.loc 1 34 0
	mov	#6,w0
	mov	w0,_i
	; newmainXC164.c:35
	.loc 1 35 0
	mov	_expr,w0
	inc	w0,w0
	mov	w0,_expr
.L37:
.L38:
	; basic block 20
	; newmainXC164.c:36
	.loc 1 36 0
	bset.b	___cc_bits_newmainXC164_c_88ac2d71+0,#7 ; cover 7
	nop	
.L39:
.L11:
	; basic block 19
	; newmainXC164.c:41
	.loc 1 41 0
	bset.b	___cc_bits_newmainXC164_c_88ac2d71+1,#1 ; cover 9
	mov	_j,w0
	add	w0,w0,w0
	mov	w0,w2
	mov	_i,w0
	mul.su	w0,#3,w0
	mov	w0,w0
	add	w2,w0,w1
	mov	_k,w0
	add	w1,w0,w0
	mov	w0,_expr
	; newmainXC164.c:42
	.loc 1 42 0
	ulnk	
	return	
.L40:
.L41:
	; basic block 21
	.set ___PA___,0
.L42:
.LFE0:
	.size	_main, .-_main
	.section	.codecov,bss,near
	.align	4
___cc_bits_newmainXC164_c_88ac2d71:
	.skip	2
	.section	.codecov_info.hdr,keep,info
	.byte	0x10	; size
	.4byte	0x1	; version
	.byte	0x1	; pointsize
	.byte	0x8	; unitsize
	.byte	0x1	; flags
	.4byte	0x0	; reserved
	.4byte	0x0	; reserved
	.section	.codecov_info,keep,info
	.4byte	0x0	; CC_ADDR_SPACE
	.4byte	___cc_bits_newmainXC164_c_88ac2d71	; CC_ADDR
	.4byte	0xa	; total num points
	.4byte	0x0	; OFFSET
	.4byte	0x0	; RESERVED
	.4byte	0x1	; RANGE_SPACE
	.4byte	0x6	; num bbs covered
	.4byte	.L22	; fn main bb 7 label start
	.4byte	.L23	; fn main bb 7 label end
	.4byte	.L20	; fn main bb 6 label start
	.4byte	.L21	; fn main bb 6 label end
	.4byte	.L18	; fn main bb 5 label start
	.4byte	.L19	; fn main bb 5 label end
	.4byte	.L16	; fn main bb 4 label start
	.4byte	.L17	; fn main bb 4 label end
	.4byte	.L14	; fn main bb 3 label start
	.4byte	.L15	; fn main bb 3 label end
	.4byte	.L12	; fn main bb 2 label start
	.4byte	.L13	; fn main bb 2 label end
	.4byte	0x1	; RANGE_SPACE
	.4byte	0x6	; num bbs covered
	.4byte	.L3	; fn main bb 13 label start
	.4byte	.L32	; fn main bb 13 label end
	.4byte	.L20	; fn main bb 6 label start
	.4byte	.L21	; fn main bb 6 label end
	.4byte	.L18	; fn main bb 5 label start
	.4byte	.L19	; fn main bb 5 label end
	.4byte	.L16	; fn main bb 4 label start
	.4byte	.L17	; fn main bb 4 label end
	.4byte	.L14	; fn main bb 3 label start
	.4byte	.L15	; fn main bb 3 label end
	.4byte	.L12	; fn main bb 2 label start
	.4byte	.L13	; fn main bb 2 label end
	.4byte	0x1	; RANGE_SPACE
	.4byte	0x5	; num bbs covered
	.4byte	.L5	; fn main bb 17 label start
	.4byte	.L36	; fn main bb 17 label end
	.4byte	.L18	; fn main bb 5 label start
	.4byte	.L19	; fn main bb 5 label end
	.4byte	.L16	; fn main bb 4 label start
	.4byte	.L17	; fn main bb 4 label end
	.4byte	.L14	; fn main bb 3 label start
	.4byte	.L15	; fn main bb 3 label end
	.4byte	.L12	; fn main bb 2 label start
	.4byte	.L13	; fn main bb 2 label end
	.4byte	0x1	; RANGE_SPACE
	.4byte	0x4	; num bbs covered
	.4byte	.L4	; fn main bb 15 label start
	.4byte	.L34	; fn main bb 15 label end
	.4byte	.L16	; fn main bb 4 label start
	.4byte	.L17	; fn main bb 4 label end
	.4byte	.L14	; fn main bb 3 label start
	.4byte	.L15	; fn main bb 3 label end
	.4byte	.L12	; fn main bb 2 label start
	.4byte	.L13	; fn main bb 2 label end
	.4byte	0x1	; RANGE_SPACE
	.4byte	0x6	; num bbs covered
	.4byte	.L29	; fn main bb 11 label start
	.4byte	.L30	; fn main bb 11 label end
	.4byte	.L27	; fn main bb 10 label start
	.4byte	.L28	; fn main bb 10 label end
	.4byte	.L25	; fn main bb 9 label start
	.4byte	.L26	; fn main bb 9 label end
	.4byte	.L10	; fn main bb 8 label start
	.4byte	.L24	; fn main bb 8 label end
	.4byte	.L14	; fn main bb 3 label start
	.4byte	.L15	; fn main bb 3 label end
	.4byte	.L12	; fn main bb 2 label start
	.4byte	.L13	; fn main bb 2 label end
	.4byte	0x1	; RANGE_SPACE
	.4byte	0x6	; num bbs covered
	.4byte	.L9	; fn main bb 16 label start
	.4byte	.L35	; fn main bb 16 label end
	.4byte	.L27	; fn main bb 10 label start
	.4byte	.L28	; fn main bb 10 label end
	.4byte	.L25	; fn main bb 9 label start
	.4byte	.L26	; fn main bb 9 label end
	.4byte	.L10	; fn main bb 8 label start
	.4byte	.L24	; fn main bb 8 label end
	.4byte	.L14	; fn main bb 3 label start
	.4byte	.L15	; fn main bb 3 label end
	.4byte	.L12	; fn main bb 2 label start
	.4byte	.L13	; fn main bb 2 label end
	.4byte	0x1	; RANGE_SPACE
	.4byte	0x5	; num bbs covered
	.4byte	.L7	; fn main bb 12 label start
	.4byte	.L31	; fn main bb 12 label end
	.4byte	.L25	; fn main bb 9 label start
	.4byte	.L26	; fn main bb 9 label end
	.4byte	.L10	; fn main bb 8 label start
	.4byte	.L24	; fn main bb 8 label end
	.4byte	.L14	; fn main bb 3 label start
	.4byte	.L15	; fn main bb 3 label end
	.4byte	.L12	; fn main bb 2 label start
	.4byte	.L13	; fn main bb 2 label end
	.4byte	0x1	; RANGE_SPACE
	.4byte	0x5	; num bbs covered
	.4byte	.L38	; fn main bb 20 label start
	.4byte	.L39	; fn main bb 20 label end
	.4byte	.L8	; fn main bb 18 label start
	.4byte	.L37	; fn main bb 18 label end
	.4byte	.L10	; fn main bb 8 label start
	.4byte	.L24	; fn main bb 8 label end
	.4byte	.L14	; fn main bb 3 label start
	.4byte	.L15	; fn main bb 3 label end
	.4byte	.L12	; fn main bb 2 label start
	.4byte	.L13	; fn main bb 2 label end
	.4byte	0x1	; RANGE_SPACE
	.4byte	0x2	; num bbs covered
	.4byte	.L6	; fn main bb 14 label start
	.4byte	.L33	; fn main bb 14 label end
	.4byte	.L12	; fn main bb 2 label start
	.4byte	.L13	; fn main bb 2 label end
	.4byte	0x1	; RANGE_SPACE
	.4byte	0x2	; num bbs covered
	.4byte	.L11	; fn main bb 19 label start
	.4byte	.L40	; fn main bb 19 label end
	.4byte	.L12	; fn main bb 2 label start
	.4byte	.L13	; fn main bb 2 label end
	.section	.debug_frame,info
.Lframe0:
	.4byte	.LECIE0-.LSCIE0	; Length of Common Information Entry
.LSCIE0:
	.4byte	0xffffffff	; CIE Identifier Tag
	.byte	0x1	; CIE Version
	.asciz ""	; CIE Augmentation
	.uleb128 0x1	; CIE Code Alignment Factor
	.sleb128 2	; CIE Data Alignment Factor
	.byte	0x25	; CIE RA Column
	.byte	0x12	; DW_CFA_def_cfa_sf
	.uleb128 0xf
	.sleb128 -2
	.byte	0x9	; DW_CFA_register
	.uleb128 0x25
	.uleb128 0xf
	.align	4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0	; FDE Length
.LASFDE0:
	.4byte	.Lframe0	; FDE CIE offset
	.4byte	.LFB0	; FDE initial location
	.4byte	.LFE0-.LFB0	; FDE address range
	.byte	0x4	; DW_CFA_advance_loc4
	.4byte	.LCFI0-.LFB0
	.byte	0x12	; DW_CFA_def_cfa_sf
	.uleb128 0xe
	.sleb128 -3
	.byte	0x8e	; DW_CFA_offset, column 0xe
	.uleb128 0x2
	.align	4
.LEFDE0:
	.section	.text,code
.Letext0:
	.section	.debug_info,info
	.4byte	0x12f	; Length of Compilation Unit Info
	.2byte	0x2	; DWARF version number
	.4byte	.Ldebug_abbrev0	; Offset Into Abbrev. Section
	.byte	0x4	; Pointer Size (in bytes)
	.uleb128 0x1	; (DIE (0xb) DW_TAG_compile_unit)
	.asciz "GNU C 4.5.1 (XC16, Microchip v1.51) (B) Build date: Jan 30 2020"	; DW_AT_producer
	.byte	0x1	; DW_AT_language
	.asciz "newmainXC164.c"	; DW_AT_name
	.asciz "D:\\MCHP-Code\\CCTestCode\\test_coverage4\\test_coverage4.X"	; DW_AT_comp_dir
	.4byte	.Ltext0	; DW_AT_low_pc
	.4byte	.Letext0	; DW_AT_high_pc
	.4byte	.Ldebug_line0	; DW_AT_stmt_list
	.uleb128 0x2	; (DIE (0xa0) DW_TAG_subprogram)
	.byte	0x1	; DW_AT_external
	.asciz "main"	; DW_AT_name
	.byte	0x1	; DW_AT_decl_file (newmainXC164.c)
	.byte	0x4	; DW_AT_decl_line
	.byte	0x1	; DW_AT_prototyped
	.4byte	.LFB0	; DW_AT_low_pc
	.4byte	.LFE0	; DW_AT_high_pc
	.byte	0x1	; DW_AT_frame_base
	.byte	0x5e	; DW_OP_reg14
	.uleb128 0x3	; (DIE (0xb4) DW_TAG_variable)
	.asciz "i"	; DW_AT_name
	.byte	0x1	; DW_AT_decl_file (newmainXC164.c)
	.byte	0x3	; DW_AT_decl_line
	.4byte	0xbf	; DW_AT_type
	.byte	0x1	; DW_AT_external
	.byte	0x1	; DW_AT_declaration
	.uleb128 0x4	; (DIE (0xbf) DW_TAG_volatile_type)
	.4byte	0xc4	; DW_AT_type
	.uleb128 0x5	; (DIE (0xc4) DW_TAG_base_type)
	.byte	0x2	; DW_AT_byte_size
	.byte	0x5	; DW_AT_encoding
	.asciz "int"	; DW_AT_name
	.uleb128 0x3	; (DIE (0xcb) DW_TAG_variable)
	.asciz "j"	; DW_AT_name
	.byte	0x1	; DW_AT_decl_file (newmainXC164.c)
	.byte	0x3	; DW_AT_decl_line
	.4byte	0xbf	; DW_AT_type
	.byte	0x1	; DW_AT_external
	.byte	0x1	; DW_AT_declaration
	.uleb128 0x3	; (DIE (0xd6) DW_TAG_variable)
	.asciz "k"	; DW_AT_name
	.byte	0x1	; DW_AT_decl_file (newmainXC164.c)
	.byte	0x3	; DW_AT_decl_line
	.4byte	0xbf	; DW_AT_type
	.byte	0x1	; DW_AT_external
	.byte	0x1	; DW_AT_declaration
	.uleb128 0x3	; (DIE (0xe1) DW_TAG_variable)
	.asciz "expr"	; DW_AT_name
	.byte	0x1	; DW_AT_decl_file (newmainXC164.c)
	.byte	0x3	; DW_AT_decl_line
	.4byte	0xbf	; DW_AT_type
	.byte	0x1	; DW_AT_external
	.byte	0x1	; DW_AT_declaration
	.uleb128 0x6	; (DIE (0xef) DW_TAG_variable)
	.asciz "i"	; DW_AT_name
	.byte	0x1	; DW_AT_decl_file (newmainXC164.c)
	.byte	0x3	; DW_AT_decl_line
	.4byte	0xbf	; DW_AT_type
	.byte	0x1	; DW_AT_external
	.byte	0x5	; DW_AT_location
	.byte	0x3	; DW_OP_addr
	.4byte	_i
	.uleb128 0x6	; (DIE (0xff) DW_TAG_variable)
	.asciz "j"	; DW_AT_name
	.byte	0x1	; DW_AT_decl_file (newmainXC164.c)
	.byte	0x3	; DW_AT_decl_line
	.4byte	0xbf	; DW_AT_type
	.byte	0x1	; DW_AT_external
	.byte	0x5	; DW_AT_location
	.byte	0x3	; DW_OP_addr
	.4byte	_j
	.uleb128 0x6	; (DIE (0x10f) DW_TAG_variable)
	.asciz "k"	; DW_AT_name
	.byte	0x1	; DW_AT_decl_file (newmainXC164.c)
	.byte	0x3	; DW_AT_decl_line
	.4byte	0xbf	; DW_AT_type
	.byte	0x1	; DW_AT_external
	.byte	0x5	; DW_AT_location
	.byte	0x3	; DW_OP_addr
	.4byte	_k
	.uleb128 0x6	; (DIE (0x11f) DW_TAG_variable)
	.asciz "expr"	; DW_AT_name
	.byte	0x1	; DW_AT_decl_file (newmainXC164.c)
	.byte	0x3	; DW_AT_decl_line
	.4byte	0xbf	; DW_AT_type
	.byte	0x1	; DW_AT_external
	.byte	0x5	; DW_AT_location
	.byte	0x3	; DW_OP_addr
	.4byte	_expr
	.byte	0x0	; end of children of DIE 0xb
	.section	.debug_abbrev,info
	.uleb128 0x1	; (abbrev code)
	.uleb128 0x11	; (TAG: DW_TAG_compile_unit)
	.byte	0x1	; DW_children_yes
	.uleb128 0x25	; (DW_AT_producer)
	.uleb128 0x8	; (DW_FORM_string)
	.uleb128 0x13	; (DW_AT_language)
	.uleb128 0xb	; (DW_FORM_data1)
	.uleb128 0x3	; (DW_AT_name)
	.uleb128 0x8	; (DW_FORM_string)
	.uleb128 0x1b	; (DW_AT_comp_dir)
	.uleb128 0x8	; (DW_FORM_string)
	.uleb128 0x11	; (DW_AT_low_pc)
	.uleb128 0x1	; (DW_FORM_addr)
	.uleb128 0x12	; (DW_AT_high_pc)
	.uleb128 0x1	; (DW_FORM_addr)
	.uleb128 0x10	; (DW_AT_stmt_list)
	.uleb128 0x6	; (DW_FORM_data4)
	.byte	0x0
	.byte	0x0
	.uleb128 0x2	; (abbrev code)
	.uleb128 0x2e	; (TAG: DW_TAG_subprogram)
	.byte	0x0	; DW_children_no
	.uleb128 0x3f	; (DW_AT_external)
	.uleb128 0xc	; (DW_FORM_flag)
	.uleb128 0x3	; (DW_AT_name)
	.uleb128 0x8	; (DW_FORM_string)
	.uleb128 0x3a	; (DW_AT_decl_file)
	.uleb128 0xb	; (DW_FORM_data1)
	.uleb128 0x3b	; (DW_AT_decl_line)
	.uleb128 0xb	; (DW_FORM_data1)
	.uleb128 0x27	; (DW_AT_prototyped)
	.uleb128 0xc	; (DW_FORM_flag)
	.uleb128 0x11	; (DW_AT_low_pc)
	.uleb128 0x1	; (DW_FORM_addr)
	.uleb128 0x12	; (DW_AT_high_pc)
	.uleb128 0x1	; (DW_FORM_addr)
	.uleb128 0x40	; (DW_AT_frame_base)
	.uleb128 0xa	; (DW_FORM_block1)
	.byte	0x0
	.byte	0x0
	.uleb128 0x3	; (abbrev code)
	.uleb128 0x34	; (TAG: DW_TAG_variable)
	.byte	0x0	; DW_children_no
	.uleb128 0x3	; (DW_AT_name)
	.uleb128 0x8	; (DW_FORM_string)
	.uleb128 0x3a	; (DW_AT_decl_file)
	.uleb128 0xb	; (DW_FORM_data1)
	.uleb128 0x3b	; (DW_AT_decl_line)
	.uleb128 0xb	; (DW_FORM_data1)
	.uleb128 0x49	; (DW_AT_type)
	.uleb128 0x13	; (DW_FORM_ref4)
	.uleb128 0x3f	; (DW_AT_external)
	.uleb128 0xc	; (DW_FORM_flag)
	.uleb128 0x3c	; (DW_AT_declaration)
	.uleb128 0xc	; (DW_FORM_flag)
	.byte	0x0
	.byte	0x0
	.uleb128 0x4	; (abbrev code)
	.uleb128 0x35	; (TAG: DW_TAG_volatile_type)
	.byte	0x0	; DW_children_no
	.uleb128 0x49	; (DW_AT_type)
	.uleb128 0x13	; (DW_FORM_ref4)
	.byte	0x0
	.byte	0x0
	.uleb128 0x5	; (abbrev code)
	.uleb128 0x24	; (TAG: DW_TAG_base_type)
	.byte	0x0	; DW_children_no
	.uleb128 0xb	; (DW_AT_byte_size)
	.uleb128 0xb	; (DW_FORM_data1)
	.uleb128 0x3e	; (DW_AT_encoding)
	.uleb128 0xb	; (DW_FORM_data1)
	.uleb128 0x3	; (DW_AT_name)
	.uleb128 0x8	; (DW_FORM_string)
	.byte	0x0
	.byte	0x0
	.uleb128 0x6	; (abbrev code)
	.uleb128 0x34	; (TAG: DW_TAG_variable)
	.byte	0x0	; DW_children_no
	.uleb128 0x3	; (DW_AT_name)
	.uleb128 0x8	; (DW_FORM_string)
	.uleb128 0x3a	; (DW_AT_decl_file)
	.uleb128 0xb	; (DW_FORM_data1)
	.uleb128 0x3b	; (DW_AT_decl_line)
	.uleb128 0xb	; (DW_FORM_data1)
	.uleb128 0x49	; (DW_AT_type)
	.uleb128 0x13	; (DW_FORM_ref4)
	.uleb128 0x3f	; (DW_AT_external)
	.uleb128 0xc	; (DW_FORM_flag)
	.uleb128 0x2	; (DW_AT_location)
	.uleb128 0xa	; (DW_FORM_block1)
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x32	; Length of Public Names Info
	.2byte	0x2	; DWARF Version
	.4byte	.Ldebug_info0	; Offset of Compilation Unit Info
	.4byte	0x133	; Compilation Unit Length
	.4byte	0xa0	; DIE offset
	.asciz "main"	; external name
	.4byte	0xef	; DIE offset
	.asciz "i"	; external name
	.4byte	0xff	; DIE offset
	.asciz "j"	; external name
	.4byte	0x10f	; DIE offset
	.asciz "k"	; external name
	.4byte	0x11f	; DIE offset
	.asciz "expr"	; external name
	.4byte	0x0
	.section	.debug_aranges,info
	.4byte	0x14	; Length of Address Ranges Info
	.2byte	0x2	; DWARF Version
	.4byte	.Ldebug_info0	; Offset of Compilation Unit Info
	.byte	0x4	; Size of Address
	.byte	0x0	; Size of Segment Descriptor
	.2byte	0x0	; Pad to 8 byte boundary
	.2byte	0x0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,info
	.section	.text,code



	.section __c30_info, info, bss
__large_data_scalar:

	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0000
	.word 0x0000

; MCHP configuration words
; Configuration word @ 0x000abf28
	.section	.config_BTSWP, code, address(0xabf28), keep
__config_BTSWP:
	.pword	16777182

	.set ___PA___,0
	.end
