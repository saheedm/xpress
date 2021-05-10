	.file "D:\\MCHP-Code\\CCTestCode\\test_coverage4\\test_coverage4.X\\newfile.c"
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.section	.debug_info,info
.Ldebug_info0:
	.section	.debug_line,info
.Ldebug_line0:
	.section	.text,code
.Ltext0:
	.section	.text,code
	.align	2
	.global	_add	; export
	.type	_add,@function
_add:
.LFB0:
	.file 1 "newfile.c"
	; newfile.c:2
	.loc 1 2 0
.L2:
	; basic block 2
	.set ___PA___,1
	lnk	#4
.LCFI0:
	bset.b	___cc_bits_newfile_c_dd7ba587+0,#0 ; cover 0
	mov	w0,[w14]
	mov	w1,[w14+2]
	; newfile.c:3
	.loc 1 3 0
	mov	[w14+2],w0
	add	w0,[w14],w0
	; newfile.c:4
	.loc 1 4 0
	ulnk	
	return	
.L3:
.L4:
	; basic block 3
	.set ___PA___,0
.L5:
.LFE0:
	.size	_add, .-_add
	.section	.codecov,bss,near
	.align	4
___cc_bits_newfile_c_dd7ba587:
	.skip	1
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
	.4byte	___cc_bits_newfile_c_dd7ba587	; CC_ADDR
	.4byte	0x1	; total num points
	.4byte	0x0	; OFFSET
	.4byte	0x0	; RESERVED
	.4byte	0x1	; RANGE_SPACE
	.4byte	0x1	; num bbs covered
	.4byte	.L2	; fn add bb 2 label start
	.4byte	.L3	; fn add bb 2 label end
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
	.4byte	0xd3	; Length of Compilation Unit Info
	.2byte	0x2	; DWARF version number
	.4byte	.Ldebug_abbrev0	; Offset Into Abbrev. Section
	.byte	0x4	; Pointer Size (in bytes)
	.uleb128 0x1	; (DIE (0xb) DW_TAG_compile_unit)
	.asciz "GNU C 4.5.1 (XC16, Microchip v1.51) (B) Build date: Jan 30 2020"	; DW_AT_producer
	.byte	0x1	; DW_AT_language
	.asciz "newfile.c"	; DW_AT_name
	.asciz "D:\\MCHP-Code\\CCTestCode\\test_coverage4\\test_coverage4.X"	; DW_AT_comp_dir
	.4byte	.Ltext0	; DW_AT_low_pc
	.4byte	.Letext0	; DW_AT_high_pc
	.4byte	.Ldebug_line0	; DW_AT_stmt_list
	.uleb128 0x2	; (DIE (0x9b) DW_TAG_subprogram)
	.byte	0x1	; DW_AT_external
	.asciz "add"	; DW_AT_name
	.byte	0x1	; DW_AT_decl_file (newfile.c)
	.byte	0x2	; DW_AT_decl_line
	.byte	0x1	; DW_AT_prototyped
	.4byte	0xcf	; DW_AT_type
	.4byte	.LFB0	; DW_AT_low_pc
	.4byte	.LFE0	; DW_AT_high_pc
	.byte	0x1	; DW_AT_frame_base
	.byte	0x5e	; DW_OP_reg14
	.4byte	0xcf	; DW_AT_sibling
	.uleb128 0x3	; (DIE (0xb6) DW_TAG_formal_parameter)
	.asciz "a"	; DW_AT_name
	.byte	0x1	; DW_AT_decl_file (newfile.c)
	.byte	0x2	; DW_AT_decl_line
	.4byte	0xcf	; DW_AT_type
	.byte	0x2	; DW_AT_location
	.byte	0x7e	; DW_OP_breg14
	.sleb128 0
	.uleb128 0x3	; (DIE (0xc2) DW_TAG_formal_parameter)
	.asciz "b"	; DW_AT_name
	.byte	0x1	; DW_AT_decl_file (newfile.c)
	.byte	0x2	; DW_AT_decl_line
	.4byte	0xcf	; DW_AT_type
	.byte	0x2	; DW_AT_location
	.byte	0x7e	; DW_OP_breg14
	.sleb128 2
	.byte	0x0	; end of children of DIE 0x9b
	.uleb128 0x4	; (DIE (0xcf) DW_TAG_base_type)
	.byte	0x2	; DW_AT_byte_size
	.byte	0x5	; DW_AT_encoding
	.asciz "int"	; DW_AT_name
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
	.byte	0x1	; DW_children_yes
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
	.uleb128 0x49	; (DW_AT_type)
	.uleb128 0x13	; (DW_FORM_ref4)
	.uleb128 0x11	; (DW_AT_low_pc)
	.uleb128 0x1	; (DW_FORM_addr)
	.uleb128 0x12	; (DW_AT_high_pc)
	.uleb128 0x1	; (DW_FORM_addr)
	.uleb128 0x40	; (DW_AT_frame_base)
	.uleb128 0xa	; (DW_FORM_block1)
	.uleb128 0x1	; (DW_AT_sibling)
	.uleb128 0x13	; (DW_FORM_ref4)
	.byte	0x0
	.byte	0x0
	.uleb128 0x3	; (abbrev code)
	.uleb128 0x5	; (TAG: DW_TAG_formal_parameter)
	.byte	0x0	; DW_children_no
	.uleb128 0x3	; (DW_AT_name)
	.uleb128 0x8	; (DW_FORM_string)
	.uleb128 0x3a	; (DW_AT_decl_file)
	.uleb128 0xb	; (DW_FORM_data1)
	.uleb128 0x3b	; (DW_AT_decl_line)
	.uleb128 0xb	; (DW_FORM_data1)
	.uleb128 0x49	; (DW_AT_type)
	.uleb128 0x13	; (DW_FORM_ref4)
	.uleb128 0x2	; (DW_AT_location)
	.uleb128 0xa	; (DW_FORM_block1)
	.byte	0x0
	.byte	0x0
	.uleb128 0x4	; (abbrev code)
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
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x16	; Length of Public Names Info
	.2byte	0x2	; DWARF Version
	.4byte	.Ldebug_info0	; Offset of Compilation Unit Info
	.4byte	0xd7	; Compilation Unit Length
	.4byte	0x9b	; DIE offset
	.asciz "add"	; external name
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

	.set ___PA___,0
	.end
