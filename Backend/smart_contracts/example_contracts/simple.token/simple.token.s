	.text
	.file	"simple.token.bc"
	.hidden	_ZeqRK11checksum256S1_
	.globl	_ZeqRK11checksum256S1_
	.type	_ZeqRK11checksum256S1_,@function
_ZeqRK11checksum256S1_:
	.param  	i32, i32
	.result 	i32
	i32.const	$push0=, 32
	i32.call	$push1=, memcmp@FUNCTION, $0, $1, $pop0
	i32.eqz 	$push2=, $pop1
	.endfunc
.Lfunc_end0:
	.size	_ZeqRK11checksum256S1_, .Lfunc_end0-_ZeqRK11checksum256S1_

	.hidden	_ZeqRK11checksum160S1_
	.globl	_ZeqRK11checksum160S1_
	.type	_ZeqRK11checksum160S1_,@function
_ZeqRK11checksum160S1_:
	.param  	i32, i32
	.result 	i32
	i32.const	$push0=, 32
	i32.call	$push1=, memcmp@FUNCTION, $0, $1, $pop0
	i32.eqz 	$push2=, $pop1
	.endfunc
.Lfunc_end1:
	.size	_ZeqRK11checksum160S1_, .Lfunc_end1-_ZeqRK11checksum160S1_

	.hidden	_ZneRK11checksum160S1_
	.globl	_ZneRK11checksum160S1_
	.type	_ZneRK11checksum160S1_,@function
_ZneRK11checksum160S1_:
	.param  	i32, i32
	.result 	i32
	i32.const	$push0=, 32
	i32.call	$push1=, memcmp@FUNCTION, $0, $1, $pop0
	i32.const	$push2=, 0
	i32.ne  	$push3=, $pop1, $pop2
	.endfunc
.Lfunc_end2:
	.size	_ZneRK11checksum160S1_, .Lfunc_end2-_ZneRK11checksum160S1_

	.hidden	now
	.globl	now
	.type	now,@function
now:
	.result 	i32
	i64.call	$push1=, current_time@FUNCTION
	i64.const	$push0=, 1000000
	i64.div_u	$push2=, $pop1, $pop0
	i32.wrap/i64	$push3=, $pop2
	.endfunc
.Lfunc_end3:
	.size	now, .Lfunc_end3-now

	.hidden	_ZN5eosio12require_authERKNS_16permission_levelE
	.globl	_ZN5eosio12require_authERKNS_16permission_levelE
	.type	_ZN5eosio12require_authERKNS_16permission_levelE,@function
_ZN5eosio12require_authERKNS_16permission_levelE:
	.param  	i32
	i64.load	$push1=, 0($0)
	i64.load	$push0=, 8($0)
	call    	require_auth2@FUNCTION, $pop1, $pop0
	.endfunc
.Lfunc_end4:
	.size	_ZN5eosio12require_authERKNS_16permission_levelE, .Lfunc_end4-_ZN5eosio12require_authERKNS_16permission_levelE

	.hidden	apply
	.globl	apply
	.type	apply,@function
apply:
	.param  	i64, i64, i64
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i32
	i32.const	$push76=, 0
	i32.const	$push73=, 0
	i32.load	$push74=, __stack_pointer($pop73)
	i32.const	$push75=, 80
	i32.sub 	$push87=, $pop74, $pop75
	tee_local	$push86=, $11=, $pop87
	i32.store	__stack_pointer($pop76), $pop86
	i64.const	$8=, 0
	i64.const	$7=, 59
	i32.const	$6=, .L.str
	i64.const	$9=, 0
.LBB5_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push88=, 6
	i64.gt_u	$push0=, $8, $pop88
	br_if   	0, $pop0
	i32.load8_s	$push93=, 0($6)
	tee_local	$push92=, $3=, $pop93
	i32.const	$push91=, -97
	i32.add 	$push2=, $pop92, $pop91
	i32.const	$push90=, 255
	i32.and 	$push3=, $pop2, $pop90
	i32.const	$push89=, 25
	i32.gt_u	$push4=, $pop3, $pop89
	br_if   	1, $pop4
	i32.const	$push94=, 165
	i32.add 	$3=, $3, $pop94
	br      	2
.LBB5_4:
	end_block
	i64.const	$10=, 0
	i64.const	$push95=, 11
	i64.le_u	$push1=, $8, $pop95
	br_if   	2, $pop1
	br      	3
.LBB5_5:
	end_block
	i32.const	$push100=, 208
	i32.add 	$push5=, $3, $pop100
	i32.const	$push99=, 0
	i32.const	$push98=, -49
	i32.add 	$push6=, $3, $pop98
	i32.const	$push97=, 255
	i32.and 	$push7=, $pop6, $pop97
	i32.const	$push96=, 5
	i32.lt_u	$push8=, $pop7, $pop96
	i32.select	$3=, $pop5, $pop99, $pop8
.LBB5_6:
	end_block
	i64.extend_u/i32	$push9=, $3
	i64.const	$push102=, 56
	i64.shl 	$push10=, $pop9, $pop102
	i64.const	$push101=, 56
	i64.shr_s	$10=, $pop10, $pop101
.LBB5_7:
	end_block
	i64.const	$push104=, 31
	i64.and 	$push12=, $10, $pop104
	i64.const	$push103=, 4294967295
	i64.and 	$push11=, $7, $pop103
	i64.shl 	$10=, $pop12, $pop11
.LBB5_8:
	end_block
	i32.const	$push110=, 1
	i32.add 	$6=, $6, $pop110
	i64.const	$push109=, 1
	i64.add 	$8=, $8, $pop109
	i64.or  	$9=, $10, $9
	i64.const	$push108=, -5
	i64.add 	$push107=, $7, $pop108
	tee_local	$push106=, $7=, $pop107
	i64.const	$push105=, -6
	i64.ne  	$push13=, $pop106, $pop105
	br_if   	0, $pop13
	end_loop
	block   	
	i64.ne  	$push14=, $9, $2
	br_if   	0, $pop14
	i64.const	$8=, 0
	i64.const	$7=, 59
	i32.const	$6=, .L.str.1
	i64.const	$9=, 0
.LBB5_11:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push111=, 4
	i64.gt_u	$push15=, $8, $pop111
	br_if   	0, $pop15
	i32.load8_s	$push116=, 0($6)
	tee_local	$push115=, $3=, $pop116
	i32.const	$push114=, -97
	i32.add 	$push17=, $pop115, $pop114
	i32.const	$push113=, 255
	i32.and 	$push18=, $pop17, $pop113
	i32.const	$push112=, 25
	i32.gt_u	$push19=, $pop18, $pop112
	br_if   	1, $pop19
	i32.const	$push117=, 165
	i32.add 	$3=, $3, $pop117
	br      	2
.LBB5_14:
	end_block
	i64.const	$10=, 0
	i64.const	$push118=, 11
	i64.le_u	$push16=, $8, $pop118
	br_if   	2, $pop16
	br      	3
.LBB5_15:
	end_block
	i32.const	$push123=, 208
	i32.add 	$push20=, $3, $pop123
	i32.const	$push122=, 0
	i32.const	$push121=, -49
	i32.add 	$push21=, $3, $pop121
	i32.const	$push120=, 255
	i32.and 	$push22=, $pop21, $pop120
	i32.const	$push119=, 5
	i32.lt_u	$push23=, $pop22, $pop119
	i32.select	$3=, $pop20, $pop122, $pop23
.LBB5_16:
	end_block
	i64.extend_u/i32	$push24=, $3
	i64.const	$push125=, 56
	i64.shl 	$push25=, $pop24, $pop125
	i64.const	$push124=, 56
	i64.shr_s	$10=, $pop25, $pop124
.LBB5_17:
	end_block
	i64.const	$push127=, 31
	i64.and 	$push27=, $10, $pop127
	i64.const	$push126=, 4294967295
	i64.and 	$push26=, $7, $pop126
	i64.shl 	$10=, $pop27, $pop26
.LBB5_18:
	end_block
	i32.const	$push133=, 1
	i32.add 	$6=, $6, $pop133
	i64.const	$push132=, 1
	i64.add 	$8=, $8, $pop132
	i64.or  	$9=, $10, $9
	i64.const	$push131=, -5
	i64.add 	$push130=, $7, $pop131
	tee_local	$push129=, $7=, $pop130
	i64.const	$push128=, -6
	i64.ne  	$push28=, $pop129, $pop128
	br_if   	0, $pop28
	end_loop
	i64.eq  	$push29=, $9, $1
	i32.const	$push30=, .L.str.2
	call    	eosio_assert@FUNCTION, $pop29, $pop30
.LBB5_20:
	end_block
	block   	
	block   	
	i64.eq  	$push31=, $1, $0
	br_if   	0, $pop31
	i64.const	$8=, 0
	i64.const	$7=, 59
	i32.const	$6=, .L.str
	i64.const	$9=, 0
.LBB5_22:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push134=, 6
	i64.gt_u	$push32=, $8, $pop134
	br_if   	0, $pop32
	i32.load8_s	$push139=, 0($6)
	tee_local	$push138=, $3=, $pop139
	i32.const	$push137=, -97
	i32.add 	$push34=, $pop138, $pop137
	i32.const	$push136=, 255
	i32.and 	$push35=, $pop34, $pop136
	i32.const	$push135=, 25
	i32.gt_u	$push36=, $pop35, $pop135
	br_if   	1, $pop36
	i32.const	$push140=, 165
	i32.add 	$3=, $3, $pop140
	br      	2
.LBB5_25:
	end_block
	i64.const	$10=, 0
	i64.const	$push141=, 11
	i64.le_u	$push33=, $8, $pop141
	br_if   	2, $pop33
	br      	3
.LBB5_26:
	end_block
	i32.const	$push146=, 208
	i32.add 	$push37=, $3, $pop146
	i32.const	$push145=, 0
	i32.const	$push144=, -49
	i32.add 	$push38=, $3, $pop144
	i32.const	$push143=, 255
	i32.and 	$push39=, $pop38, $pop143
	i32.const	$push142=, 5
	i32.lt_u	$push40=, $pop39, $pop142
	i32.select	$3=, $pop37, $pop145, $pop40
.LBB5_27:
	end_block
	i64.extend_u/i32	$push41=, $3
	i64.const	$push148=, 56
	i64.shl 	$push42=, $pop41, $pop148
	i64.const	$push147=, 56
	i64.shr_s	$10=, $pop42, $pop147
.LBB5_28:
	end_block
	i64.const	$push150=, 31
	i64.and 	$push44=, $10, $pop150
	i64.const	$push149=, 4294967295
	i64.and 	$push43=, $7, $pop149
	i64.shl 	$10=, $pop44, $pop43
.LBB5_29:
	end_block
	i32.const	$push156=, 1
	i32.add 	$6=, $6, $pop156
	i64.const	$push155=, 1
	i64.add 	$8=, $8, $pop155
	i64.or  	$9=, $10, $9
	i64.const	$push154=, -5
	i64.add 	$push153=, $7, $pop154
	tee_local	$push152=, $7=, $pop153
	i64.const	$push151=, -6
	i64.ne  	$push45=, $pop152, $pop151
	br_if   	0, $pop45
	end_loop
	i64.ne  	$push46=, $9, $2
	br_if   	1, $pop46
.LBB5_31:
	end_block
	i32.const	$push47=, 48
	i32.add 	$push48=, $11, $pop47
	i64.store	0($pop48), $0
	i32.const	$push49=, 56
	i32.add 	$push50=, $11, $pop49
	i64.const	$push51=, -1
	i64.store	0($pop50), $pop51
	i32.const	$push52=, 64
	i32.add 	$push53=, $11, $pop52
	i64.const	$push54=, 0
	i64.store	0($pop53), $pop54
	i32.const	$push55=, 72
	i32.add 	$push56=, $11, $pop55
	i32.const	$push157=, 0
	i32.store	0($pop56), $pop157
	i64.store	40($11), $0
	i64.store	32($11), $0
	block   	
	block   	
	i64.const	$push57=, 8516769789752901632
	i64.eq  	$push58=, $2, $pop57
	br_if   	0, $pop58
	i64.const	$push59=, -3617168760277827584
	i64.ne  	$push60=, $2, $pop59
	br_if   	1, $pop60
	i32.const	$push63=, 0
	i32.store	28($11), $pop63
	i32.const	$push64=, _ZN11simpletoken8transferEyyy@FUNCTION
	i32.store	24($11), $pop64
	i64.load	$push65=, 24($11)
	i64.store	0($11):p2align=2, $pop65
	i32.const	$push84=, 32
	i32.add 	$push85=, $11, $pop84
	i32.call	$drop=, _ZN5eosio14execute_actionI11simpletokenS1_JyyyEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop85, $11
	br      	1
.LBB5_34:
	end_block
	i32.const	$push158=, 0
	i32.store	20($11), $pop158
	i32.const	$push61=, _ZN11simpletoken5issueEyy@FUNCTION
	i32.store	16($11), $pop61
	i64.load	$push62=, 16($11)
	i64.store	8($11):p2align=2, $pop62
	i32.const	$push80=, 32
	i32.add 	$push81=, $11, $pop80
	i32.const	$push82=, 8
	i32.add 	$push83=, $11, $pop82
	i32.call	$drop=, _ZN5eosio14execute_actionI11simpletokenS1_JyyEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop81, $pop83
.LBB5_35:
	end_block
	i32.const	$push66=, 64
	i32.add 	$push67=, $11, $pop66
	i32.load	$push160=, 0($pop67)
	tee_local	$push159=, $4=, $pop160
	i32.eqz 	$push169=, $pop159
	br_if   	0, $pop169
	block   	
	block   	
	i32.const	$push68=, 68
	i32.add 	$push164=, $11, $pop68
	tee_local	$push163=, $5=, $pop164
	i32.load	$push162=, 0($pop163)
	tee_local	$push161=, $6=, $pop162
	i32.eq  	$push69=, $pop161, $4
	br_if   	0, $pop69
.LBB5_38:
	loop    	
	i32.const	$push168=, -24
	i32.add 	$push167=, $6, $pop168
	tee_local	$push166=, $6=, $pop167
	i32.load	$3=, 0($pop166)
	i32.const	$push165=, 0
	i32.store	0($6), $pop165
	block   	
	i32.eqz 	$push170=, $3
	br_if   	0, $pop170
	call    	_ZdlPv@FUNCTION, $3
.LBB5_40:
	end_block
	i32.ne  	$push70=, $4, $6
	br_if   	0, $pop70
	end_loop
	i32.const	$push71=, 64
	i32.add 	$push72=, $11, $pop71
	i32.load	$6=, 0($pop72)
	br      	1
.LBB5_42:
	end_block
	copy_local	$6=, $4
.LBB5_43:
	end_block
	i32.store	0($5), $4
	call    	_ZdlPv@FUNCTION, $6
.LBB5_44:
	end_block
	i32.const	$push79=, 0
	i32.const	$push77=, 80
	i32.add 	$push78=, $11, $pop77
	i32.store	__stack_pointer($pop79), $pop78
	.endfunc
.Lfunc_end5:
	.size	apply, .Lfunc_end5-apply

	.section	.text._ZN11simpletoken8transferEyyy,"axG",@progbits,_ZN11simpletoken8transferEyyy,comdat
	.hidden	_ZN11simpletoken8transferEyyy
	.weak	_ZN11simpletoken8transferEyyy
	.type	_ZN11simpletoken8transferEyyy,@function
_ZN11simpletoken8transferEyyy:
	.param  	i32, i64, i64, i64
	.local  	i32, i32, i32
	i32.const	$push9=, 0
	i32.const	$push6=, 0
	i32.load	$push7=, __stack_pointer($pop6)
	i32.const	$push8=, 16
	i32.sub 	$push20=, $pop7, $pop8
	tee_local	$push19=, $6=, $pop20
	i32.store	__stack_pointer($pop9), $pop19
	i64.store	8($6), $3
	call    	require_auth@FUNCTION, $1
	i32.const	$push0=, 8
	i32.add 	$push18=, $0, $pop0
	tee_local	$push17=, $4=, $pop18
	i32.const	$push1=, .L.str.3
	i32.call	$push16=, _ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE3getEyPKc@FUNCTION, $pop17, $1, $pop1
	tee_local	$push15=, $5=, $pop16
	i64.load	$push2=, 8($pop15)
	i64.ge_u	$push3=, $pop2, $3
	i32.const	$push4=, .L.str.4
	call    	eosio_assert@FUNCTION, $pop3, $pop4
	i32.const	$push13=, 8
	i32.add 	$push14=, $6, $pop13
	i32.store	0($6), $pop14
	call    	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE6modifyIZNS1_8transferEyyyEUlRT_E_EEvRKS2_yOS5_@FUNCTION, $4, $5, $1, $6
	i64.load	$push5=, 8($6)
	call    	_ZN11simpletoken11add_balanceEyyy@FUNCTION, $0, $1, $2, $pop5
	i32.const	$push12=, 0
	i32.const	$push10=, 16
	i32.add 	$push11=, $6, $pop10
	i32.store	__stack_pointer($pop12), $pop11
	.endfunc
.Lfunc_end6:
	.size	_ZN11simpletoken8transferEyyy, .Lfunc_end6-_ZN11simpletoken8transferEyyy

	.section	.text._ZN5eosio14execute_actionI11simpletokenS1_JyyyEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionI11simpletokenS1_JyyyEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionI11simpletokenS1_JyyyEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionI11simpletokenS1_JyyyEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionI11simpletokenS1_JyyyEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionI11simpletokenS1_JyyyEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i64, i64, i32, i32, i32, i32, i32
	i32.const	$push26=, 0
	i32.load	$push27=, __stack_pointer($pop26)
	i32.const	$push28=, 32
	i32.sub 	$push43=, $pop27, $pop28
	tee_local	$push42=, $8=, $pop43
	copy_local	$10=, $pop42
	i32.const	$push29=, 0
	i32.store	__stack_pointer($pop29), $8
	i32.load	$2=, 4($1)
	i32.load	$9=, 0($1)
	block   	
	block   	
	block   	
	block   	
	i32.call	$push41=, action_data_size@FUNCTION
	tee_local	$push40=, $1=, $pop41
	i32.eqz 	$push64=, $pop40
	br_if   	0, $pop64
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $1, $pop0
	br_if   	1, $pop1
	i32.call	$8=, malloc@FUNCTION, $1
	br      	2
.LBB7_3:
	end_block
	i32.const	$8=, 0
	br      	2
.LBB7_4:
	end_block
	i32.const	$push25=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push45=, $8, $pop5
	tee_local	$push44=, $8=, $pop45
	copy_local	$push39=, $pop44
	i32.store	__stack_pointer($pop25), $pop39
.LBB7_5:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $8, $1
.LBB7_6:
	end_block
	i64.const	$push6=, 0
	i64.store	16($10), $pop6
	i64.const	$push62=, 0
	i64.store	8($10), $pop62
	i64.const	$push61=, 0
	i64.store	24($10), $pop61
	i32.const	$push7=, 7
	i32.gt_u	$push8=, $1, $pop7
	i32.const	$push9=, .L.str.7
	call    	eosio_assert@FUNCTION, $pop8, $pop9
	i32.const	$push33=, 8
	i32.add 	$push34=, $10, $pop33
	i32.const	$push10=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop34, $8, $pop10
	i32.const	$push11=, -8
	i32.and 	$push60=, $1, $pop11
	tee_local	$push59=, $6=, $pop60
	i32.const	$push58=, 8
	i32.ne  	$push12=, $pop59, $pop58
	i32.const	$push57=, .L.str.7
	call    	eosio_assert@FUNCTION, $pop12, $pop57
	i32.const	$push35=, 8
	i32.add 	$push36=, $10, $pop35
	i32.const	$push56=, 8
	i32.add 	$push55=, $pop36, $pop56
	tee_local	$push54=, $7=, $pop55
	i32.const	$push53=, 8
	i32.add 	$push13=, $8, $pop53
	i32.const	$push52=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop54, $pop13, $pop52
	i32.const	$push14=, 16
	i32.ne  	$push15=, $6, $pop14
	i32.const	$push51=, .L.str.7
	call    	eosio_assert@FUNCTION, $pop15, $pop51
	i32.const	$push37=, 8
	i32.add 	$push38=, $10, $pop37
	i32.const	$push50=, 16
	i32.add 	$push49=, $pop38, $pop50
	tee_local	$push48=, $6=, $pop49
	i32.const	$push47=, 16
	i32.add 	$push16=, $8, $pop47
	i32.const	$push46=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop48, $pop16, $pop46
	block   	
	i32.const	$push17=, 513
	i32.lt_u	$push18=, $1, $pop17
	br_if   	0, $pop18
	call    	free@FUNCTION, $8
.LBB7_8:
	end_block
	i32.const	$push19=, 1
	i32.shr_s	$push20=, $2, $pop19
	i32.add 	$1=, $0, $pop20
	i64.load	$5=, 0($6)
	i64.load	$4=, 0($7)
	i64.load	$3=, 8($10)
	block   	
	i32.const	$push63=, 1
	i32.and 	$push21=, $2, $pop63
	i32.eqz 	$push65=, $pop21
	br_if   	0, $pop65
	i32.load	$push22=, 0($1)
	i32.add 	$push23=, $pop22, $9
	i32.load	$9=, 0($pop23)
.LBB7_10:
	end_block
	call_indirect	$1, $3, $4, $5, $9
	i32.const	$push32=, 0
	i32.const	$push30=, 32
	i32.add 	$push31=, $10, $pop30
	i32.store	__stack_pointer($pop32), $pop31
	i32.const	$push24=, 1
	.endfunc
.Lfunc_end7:
	.size	_ZN5eosio14execute_actionI11simpletokenS1_JyyyEEEbPT_MT0_FvDpT1_E, .Lfunc_end7-_ZN5eosio14execute_actionI11simpletokenS1_JyyyEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN11simpletoken5issueEyy,"axG",@progbits,_ZN11simpletoken5issueEyy,comdat
	.hidden	_ZN11simpletoken5issueEyy
	.weak	_ZN11simpletoken5issueEyy
	.type	_ZN11simpletoken5issueEyy,@function
_ZN11simpletoken5issueEyy:
	.param  	i32, i64, i64
	i64.load	$push0=, 0($0)
	call    	require_auth@FUNCTION, $pop0
	i64.load	$push1=, 0($0)
	call    	_ZN11simpletoken11add_balanceEyyy@FUNCTION, $0, $pop1, $1, $2
	.endfunc
.Lfunc_end8:
	.size	_ZN11simpletoken5issueEyy, .Lfunc_end8-_ZN11simpletoken5issueEyy

	.section	.text._ZN5eosio14execute_actionI11simpletokenS1_JyyEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionI11simpletokenS1_JyyEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionI11simpletokenS1_JyyEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionI11simpletokenS1_JyyEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionI11simpletokenS1_JyyEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionI11simpletokenS1_JyyEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i64, i32, i32, i32, i32
	i32.const	$push24=, 0
	i32.load	$push25=, __stack_pointer($pop24)
	i32.const	$push26=, 16
	i32.sub 	$push35=, $pop25, $pop26
	tee_local	$push34=, $6=, $pop35
	copy_local	$8=, $pop34
	i32.const	$push27=, 0
	i32.store	__stack_pointer($pop27), $6
	i32.load	$2=, 4($1)
	i32.load	$7=, 0($1)
	block   	
	block   	
	block   	
	block   	
	i32.call	$push33=, action_data_size@FUNCTION
	tee_local	$push32=, $1=, $pop33
	i32.eqz 	$push47=, $pop32
	br_if   	0, $pop47
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $1, $pop0
	br_if   	1, $pop1
	i32.call	$6=, malloc@FUNCTION, $1
	br      	2
.LBB9_3:
	end_block
	i32.const	$6=, 0
	br      	2
.LBB9_4:
	end_block
	i32.const	$push23=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push37=, $6, $pop5
	tee_local	$push36=, $6=, $pop37
	copy_local	$push31=, $pop36
	i32.store	__stack_pointer($pop23), $pop31
.LBB9_5:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $6, $1
.LBB9_6:
	end_block
	i64.const	$push6=, 0
	i64.store	8($8), $pop6
	i64.const	$push45=, 0
	i64.store	0($8), $pop45
	i32.const	$push7=, 7
	i32.gt_u	$push8=, $1, $pop7
	i32.const	$push9=, .L.str.7
	call    	eosio_assert@FUNCTION, $pop8, $pop9
	i32.const	$push10=, 8
	i32.call	$drop=, memcpy@FUNCTION, $8, $6, $pop10
	i32.const	$push11=, -8
	i32.and 	$push12=, $1, $pop11
	i32.const	$push44=, 8
	i32.ne  	$push13=, $pop12, $pop44
	i32.const	$push43=, .L.str.7
	call    	eosio_assert@FUNCTION, $pop13, $pop43
	i32.const	$push42=, 8
	i32.add 	$push41=, $8, $pop42
	tee_local	$push40=, $5=, $pop41
	i32.const	$push39=, 8
	i32.add 	$push14=, $6, $pop39
	i32.const	$push38=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop40, $pop14, $pop38
	block   	
	i32.const	$push15=, 513
	i32.lt_u	$push16=, $1, $pop15
	br_if   	0, $pop16
	call    	free@FUNCTION, $6
.LBB9_8:
	end_block
	i32.const	$push17=, 1
	i32.shr_s	$push18=, $2, $pop17
	i32.add 	$1=, $0, $pop18
	i64.load	$4=, 0($5)
	i64.load	$3=, 0($8)
	block   	
	i32.const	$push46=, 1
	i32.and 	$push19=, $2, $pop46
	i32.eqz 	$push48=, $pop19
	br_if   	0, $pop48
	i32.load	$push20=, 0($1)
	i32.add 	$push21=, $pop20, $7
	i32.load	$7=, 0($pop21)
.LBB9_10:
	end_block
	call_indirect	$1, $3, $4, $7
	i32.const	$push30=, 0
	i32.const	$push28=, 16
	i32.add 	$push29=, $8, $pop28
	i32.store	__stack_pointer($pop30), $pop29
	i32.const	$push22=, 1
	.endfunc
.Lfunc_end9:
	.size	_ZN5eosio14execute_actionI11simpletokenS1_JyyEEEbPT_MT0_FvDpT1_E, .Lfunc_end9-_ZN5eosio14execute_actionI11simpletokenS1_JyyEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN11simpletoken11add_balanceEyyy,"axG",@progbits,_ZN11simpletoken11add_balanceEyyy,comdat
	.hidden	_ZN11simpletoken11add_balanceEyyy
	.weak	_ZN11simpletoken11add_balanceEyyy
	.type	_ZN11simpletoken11add_balanceEyyy,@function
_ZN11simpletoken11add_balanceEyyy:
	.param  	i32, i64, i64, i64
	.local  	i32, i32, i32, i32, i32, i32
	i32.const	$push35=, 0
	i32.const	$push32=, 0
	i32.load	$push33=, __stack_pointer($pop32)
	i32.const	$push34=, 32
	i32.sub 	$push54=, $pop33, $pop34
	tee_local	$push53=, $9=, $pop54
	i32.store	__stack_pointer($pop35), $pop53
	i64.store	24($9), $2
	i64.store	16($9), $3
	block   	
	i32.const	$push2=, 36
	i32.add 	$push3=, $0, $pop2
	i32.load	$push52=, 0($pop3)
	tee_local	$push51=, $8=, $pop52
	i32.const	$push0=, 32
	i32.add 	$push1=, $0, $pop0
	i32.load	$push50=, 0($pop1)
	tee_local	$push49=, $4=, $pop50
	i32.eq  	$push4=, $pop51, $pop49
	br_if   	0, $pop4
	i32.const	$push55=, -24
	i32.add 	$7=, $8, $pop55
	i32.const	$push5=, 0
	i32.sub 	$5=, $pop5, $4
.LBB10_2:
	loop    	
	i32.load	$push6=, 0($7)
	i64.load	$push7=, 0($pop6)
	i64.eq  	$push8=, $pop7, $2
	br_if   	1, $pop8
	copy_local	$8=, $7
	i32.const	$push59=, -24
	i32.add 	$push58=, $7, $pop59
	tee_local	$push57=, $6=, $pop58
	copy_local	$7=, $pop57
	i32.add 	$push9=, $6, $5
	i32.const	$push56=, -24
	i32.ne  	$push10=, $pop9, $pop56
	br_if   	0, $pop10
.LBB10_4:
	end_loop
	end_block
	i32.const	$push60=, 8
	i32.add 	$7=, $0, $pop60
	block   	
	block   	
	block   	
	block   	
	i32.eq  	$push11=, $8, $4
	br_if   	0, $pop11
	i32.const	$push12=, -24
	i32.add 	$push13=, $8, $pop12
	i32.load	$push62=, 0($pop13)
	tee_local	$push61=, $6=, $pop62
	i32.load	$push14=, 16($pop61)
	i32.eq  	$push15=, $pop14, $7
	i32.const	$push16=, .L.str.5
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	br_if   	1, $6
	br      	2
.LBB10_6:
	end_block
	i32.const	$push20=, 8
	i32.add 	$push21=, $0, $pop20
	i64.load	$push22=, 0($pop21)
	i32.const	$push17=, 16
	i32.add 	$push18=, $0, $pop17
	i64.load	$push19=, 0($pop18)
	i64.const	$push23=, 3607749779137757184
	i32.call	$push64=, db_find_i64@FUNCTION, $pop22, $pop19, $pop23, $2
	tee_local	$push63=, $6=, $pop64
	i32.const	$push24=, 0
	i32.lt_s	$push25=, $pop63, $pop24
	br_if   	1, $pop25
	i32.call	$push66=, _ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE31load_object_by_primary_iteratorEl@FUNCTION, $7, $6
	tee_local	$push65=, $6=, $pop66
	i32.load	$push26=, 16($pop65)
	i32.eq  	$push27=, $pop26, $7
	i32.const	$push28=, .L.str.5
	call    	eosio_assert@FUNCTION, $pop27, $pop28
.LBB10_8:
	end_block
	i32.const	$push45=, 16
	i32.add 	$push46=, $9, $pop45
	i32.store	8($9), $pop46
	i32.const	$push30=, 1
	i32.const	$push29=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop30, $pop29
	i64.const	$push31=, 0
	i32.const	$push47=, 8
	i32.add 	$push48=, $9, $pop47
	call    	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE6modifyIZNS1_11add_balanceEyyyEUlRT_E0_EEvRKS2_yOS5_@FUNCTION, $7, $6, $pop31, $pop48
	br      	1
.LBB10_9:
	end_block
	i32.const	$push39=, 16
	i32.add 	$push40=, $9, $pop39
	i32.store	12($9), $pop40
	i32.const	$push41=, 24
	i32.add 	$push42=, $9, $pop41
	i32.store	8($9), $pop42
	i32.const	$push43=, 8
	i32.add 	$push44=, $9, $pop43
	call    	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE7emplaceIZNS1_11add_balanceEyyyEUlRT_E_EENS3_14const_iteratorEyOS5_@FUNCTION, $9, $7, $1, $pop44
.LBB10_10:
	end_block
	i32.const	$push38=, 0
	i32.const	$push36=, 32
	i32.add 	$push37=, $9, $pop36
	i32.store	__stack_pointer($pop38), $pop37
	.endfunc
.Lfunc_end10:
	.size	_ZN11simpletoken11add_balanceEyyy, .Lfunc_end10-_ZN11simpletoken11add_balanceEyyy

	.section	.text._ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE31load_object_by_primary_iteratorEl,@function
_ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push45=, 0
	i32.load	$push46=, __stack_pointer($pop45)
	i32.const	$push47=, 32
	i32.sub 	$push64=, $pop46, $pop47
	tee_local	$push63=, $9=, $pop64
	copy_local	$8=, $pop63
	i32.const	$push48=, 0
	i32.store	__stack_pointer($pop48), $9
	block   	
	i32.const	$push2=, 28
	i32.add 	$push3=, $0, $pop2
	i32.load	$push62=, 0($pop3)
	tee_local	$push61=, $7=, $pop62
	i32.load	$push60=, 24($0)
	tee_local	$push59=, $2=, $pop60
	i32.eq  	$push4=, $pop61, $pop59
	br_if   	0, $pop4
	i32.const	$push5=, 0
	i32.sub 	$3=, $pop5, $2
	i32.const	$push65=, -24
	i32.add 	$6=, $7, $pop65
.LBB11_2:
	loop    	
	i32.const	$push66=, 16
	i32.add 	$push6=, $6, $pop66
	i32.load	$push7=, 0($pop6)
	i32.eq  	$push8=, $pop7, $1
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push70=, -24
	i32.add 	$push69=, $6, $pop70
	tee_local	$push68=, $4=, $pop69
	copy_local	$6=, $pop68
	i32.add 	$push9=, $4, $3
	i32.const	$push67=, -24
	i32.ne  	$push10=, $pop9, $pop67
	br_if   	0, $pop10
.LBB11_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push11=, $7, $2
	br_if   	0, $pop11
	i32.const	$push12=, -24
	i32.add 	$push13=, $7, $pop12
	i32.load	$6=, 0($pop13)
	br      	1
.LBB11_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push73=, 0
	i32.call	$push72=, db_get_i64@FUNCTION, $1, $pop14, $pop73
	tee_local	$push71=, $4=, $pop72
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop71, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.6
	call    	eosio_assert@FUNCTION, $pop18, $pop19
	block   	
	block   	
	i32.const	$push20=, 512
	i32.le_u	$push21=, $4, $pop20
	br_if   	0, $pop21
	i32.call	$push75=, malloc@FUNCTION, $4
	tee_local	$push74=, $7=, $pop75
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $pop74, $4
	call    	free@FUNCTION, $7
	br      	1
.LBB11_8:
	end_block
	i32.const	$push44=, 0
	i32.const	$push22=, 15
	i32.add 	$push23=, $4, $pop22
	i32.const	$push24=, -16
	i32.and 	$push25=, $pop23, $pop24
	i32.sub 	$push77=, $9, $pop25
	tee_local	$push76=, $7=, $pop77
	copy_local	$push58=, $pop76
	i32.store	__stack_pointer($pop44), $pop58
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $7, $4
.LBB11_9:
	end_block
	i32.const	$push26=, 32
	i32.call	$push93=, _Znwj@FUNCTION, $pop26
	tee_local	$push92=, $6=, $pop93
	i32.store	16($pop92), $0
	i32.const	$push27=, 7
	i32.gt_u	$push28=, $4, $pop27
	i32.const	$push29=, .L.str.7
	call    	eosio_assert@FUNCTION, $pop28, $pop29
	i32.const	$push30=, 8
	i32.call	$drop=, memcpy@FUNCTION, $6, $7, $pop30
	i32.const	$push31=, -8
	i32.and 	$push32=, $4, $pop31
	i32.const	$push91=, 8
	i32.ne  	$push33=, $pop32, $pop91
	i32.const	$push90=, .L.str.7
	call    	eosio_assert@FUNCTION, $pop33, $pop90
	i32.const	$push89=, 8
	i32.add 	$push35=, $6, $pop89
	i32.const	$push88=, 8
	i32.add 	$push34=, $7, $pop88
	i32.const	$push87=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop35, $pop34, $pop87
	i32.store	20($6), $1
	i32.store	24($8), $6
	i64.load	$push86=, 0($6)
	tee_local	$push85=, $5=, $pop86
	i64.store	16($8), $pop85
	i32.load	$push84=, 20($6)
	tee_local	$push83=, $7=, $pop84
	i32.store	12($8), $pop83
	block   	
	block   	
	i32.const	$push38=, 28
	i32.add 	$push82=, $0, $pop38
	tee_local	$push81=, $1=, $pop82
	i32.load	$push80=, 0($pop81)
	tee_local	$push79=, $4=, $pop80
	i32.const	$push78=, 32
	i32.add 	$push36=, $0, $pop78
	i32.load	$push37=, 0($pop36)
	i32.ge_u	$push39=, $pop79, $pop37
	br_if   	0, $pop39
	i64.store	8($4), $5
	i32.store	16($4), $7
	i32.const	$push40=, 0
	i32.store	24($8), $pop40
	i32.store	0($4), $6
	i32.const	$push41=, 24
	i32.add 	$push42=, $4, $pop41
	i32.store	0($1), $pop42
	br      	1
.LBB11_11:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push52=, 24
	i32.add 	$push53=, $8, $pop52
	i32.const	$push54=, 16
	i32.add 	$push55=, $8, $pop54
	i32.const	$push56=, 12
	i32.add 	$push57=, $8, $pop56
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop53, $pop55, $pop57
.LBB11_12:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push43=, 0
	i32.store	24($8), $pop43
	i32.eqz 	$push94=, $4
	br_if   	0, $pop94
	call    	_ZdlPv@FUNCTION, $4
.LBB11_14:
	end_block
	i32.const	$push51=, 0
	i32.const	$push49=, 32
	i32.add 	$push50=, $8, $pop49
	i32.store	__stack_pointer($pop51), $pop50
	copy_local	$push95=, $6
	.endfunc
.Lfunc_end11:
	.size	_ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE31load_object_by_primary_iteratorEl, .Lfunc_end11-_ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE7emplaceIZNS1_11add_balanceEyyyEUlRT_E_EENS3_14const_iteratorEyOS5_,"axG",@progbits,_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE7emplaceIZNS1_11add_balanceEyyyEUlRT_E_EENS3_14const_iteratorEyOS5_,comdat
	.hidden	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE7emplaceIZNS1_11add_balanceEyyyEUlRT_E_EENS3_14const_iteratorEyOS5_
	.weak	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE7emplaceIZNS1_11add_balanceEyyyEUlRT_E_EENS3_14const_iteratorEyOS5_
	.type	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE7emplaceIZNS1_11add_balanceEyyyEUlRT_E_EENS3_14const_iteratorEyOS5_,@function
_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE7emplaceIZNS1_11add_balanceEyyyEUlRT_E_EENS3_14const_iteratorEyOS5_:
	.param  	i32, i32, i64, i32
	.local  	i32, i32, i32, i32
	i32.const	$push18=, 0
	i32.const	$push15=, 0
	i32.load	$push16=, __stack_pointer($pop15)
	i32.const	$push17=, 48
	i32.sub 	$push44=, $pop16, $pop17
	tee_local	$push43=, $7=, $pop44
	i32.store	__stack_pointer($pop18), $pop43
	i64.store	40($7), $2
	i64.load	$push0=, 0($1)
	i64.call	$push1=, current_receiver@FUNCTION
	i64.eq  	$push2=, $pop0, $pop1
	i32.const	$push3=, .L.str.13
	call    	eosio_assert@FUNCTION, $pop2, $pop3
	i32.store	20($7), $3
	i32.store	16($7), $1
	i32.const	$push22=, 40
	i32.add 	$push23=, $7, $pop22
	i32.store	24($7), $pop23
	i32.const	$push4=, 32
	i32.call	$push42=, _Znwj@FUNCTION, $pop4
	tee_local	$push41=, $3=, $pop42
	i32.const	$push24=, 16
	i32.add 	$push25=, $7, $pop24
	i32.call	$drop=, _ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE4itemC2IZNS3_7emplaceIZNS1_11add_balanceEyyyEUlRT_E_EENS3_14const_iteratorEyOS7_EUlS8_E_EEPKS3_SB_@FUNCTION, $pop41, $1, $pop25
	i32.store	32($7), $3
	i64.load	$push40=, 0($3)
	tee_local	$push39=, $2=, $pop40
	i64.store	16($7), $pop39
	i32.load	$push38=, 20($3)
	tee_local	$push37=, $4=, $pop38
	i32.store	12($7), $pop37
	block   	
	block   	
	i32.const	$push7=, 28
	i32.add 	$push36=, $1, $pop7
	tee_local	$push35=, $6=, $pop36
	i32.load	$push34=, 0($pop35)
	tee_local	$push33=, $5=, $pop34
	i32.const	$push32=, 32
	i32.add 	$push5=, $1, $pop32
	i32.load	$push6=, 0($pop5)
	i32.ge_u	$push8=, $pop33, $pop6
	br_if   	0, $pop8
	i64.store	8($5), $2
	i32.store	16($5), $4
	i32.const	$push11=, 0
	i32.store	32($7), $pop11
	i32.store	0($5), $3
	i32.const	$push12=, 24
	i32.add 	$push13=, $5, $pop12
	i32.store	0($6), $pop13
	br      	1
.LBB12_2:
	end_block
	i32.const	$push9=, 24
	i32.add 	$push10=, $1, $pop9
	i32.const	$push26=, 32
	i32.add 	$push27=, $7, $pop26
	i32.const	$push28=, 16
	i32.add 	$push29=, $7, $pop28
	i32.const	$push30=, 12
	i32.add 	$push31=, $7, $pop30
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop10, $pop27, $pop29, $pop31
.LBB12_3:
	end_block
	i32.store	4($0), $3
	i32.store	0($0), $1
	i32.load	$1=, 32($7)
	i32.const	$push14=, 0
	i32.store	32($7), $pop14
	block   	
	i32.eqz 	$push45=, $1
	br_if   	0, $pop45
	call    	_ZdlPv@FUNCTION, $1
.LBB12_5:
	end_block
	i32.const	$push21=, 0
	i32.const	$push19=, 48
	i32.add 	$push20=, $7, $pop19
	i32.store	__stack_pointer($pop21), $pop20
	.endfunc
.Lfunc_end12:
	.size	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE7emplaceIZNS1_11add_balanceEyyyEUlRT_E_EENS3_14const_iteratorEyOS5_, .Lfunc_end12-_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE7emplaceIZNS1_11add_balanceEyyyEUlRT_E_EENS3_14const_iteratorEyOS5_

	.section	.text._ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE6modifyIZNS1_11add_balanceEyyyEUlRT_E0_EEvRKS2_yOS5_,"axG",@progbits,_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE6modifyIZNS1_11add_balanceEyyyEUlRT_E0_EEvRKS2_yOS5_,comdat
	.hidden	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE6modifyIZNS1_11add_balanceEyyyEUlRT_E0_EEvRKS2_yOS5_
	.weak	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE6modifyIZNS1_11add_balanceEyyyEUlRT_E0_EEvRKS2_yOS5_
	.type	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE6modifyIZNS1_11add_balanceEyyyEUlRT_E0_EEvRKS2_yOS5_,@function
_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE6modifyIZNS1_11add_balanceEyyyEUlRT_E0_EEvRKS2_yOS5_:
	.param  	i32, i32, i64, i32
	.local  	i64, i64, i32
	i32.const	$push35=, 0
	i32.const	$push32=, 0
	i32.load	$push33=, __stack_pointer($pop32)
	i32.const	$push34=, 16
	i32.sub 	$push48=, $pop33, $pop34
	tee_local	$push47=, $6=, $pop48
	i32.store	__stack_pointer($pop35), $pop47
	i32.load	$push0=, 16($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.9
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.10
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	i64.load	$push7=, 8($1)
	i32.load	$push8=, 0($3)
	i64.load	$push9=, 0($pop8)
	i64.add 	$push46=, $pop7, $pop9
	tee_local	$push45=, $5=, $pop46
	i64.store	8($1), $pop45
	i64.load	$4=, 0($1)
	i32.load	$push10=, 0($3)
	i64.load	$push11=, 0($pop10)
	i64.ge_u	$push12=, $5, $pop11
	i32.const	$push13=, .L.str.15
	call    	eosio_assert@FUNCTION, $pop12, $pop13
	i64.load	$push14=, 0($1)
	i64.eq  	$push15=, $4, $pop14
	i32.const	$push16=, .L.str.11
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	i32.const	$push18=, 1
	i32.const	$push17=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop18, $pop17
	i32.const	$push19=, 8
	i32.call	$drop=, memcpy@FUNCTION, $6, $1, $pop19
	i32.const	$push44=, 1
	i32.const	$push43=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop44, $pop43
	i32.const	$push42=, 8
	i32.or  	$push21=, $6, $pop42
	i32.const	$push41=, 8
	i32.add 	$push20=, $1, $pop41
	i32.const	$push40=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop21, $pop20, $pop40
	i32.load	$push22=, 20($1)
	i32.const	$push39=, 16
	call    	db_update_i64@FUNCTION, $pop22, $2, $6, $pop39
	block   	
	i64.load	$push23=, 16($0)
	i64.lt_u	$push24=, $4, $pop23
	br_if   	0, $pop24
	i32.const	$push49=, 16
	i32.add 	$push31=, $0, $pop49
	i64.const	$push29=, -2
	i64.const	$push27=, 1
	i64.add 	$push28=, $4, $pop27
	i64.const	$push25=, -3
	i64.gt_u	$push26=, $4, $pop25
	i64.select	$push30=, $pop29, $pop28, $pop26
	i64.store	0($pop31), $pop30
.LBB13_2:
	end_block
	i32.const	$push38=, 0
	i32.const	$push36=, 16
	i32.add 	$push37=, $6, $pop36
	i32.store	__stack_pointer($pop38), $pop37
	.endfunc
.Lfunc_end13:
	.size	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE6modifyIZNS1_11add_balanceEyyyEUlRT_E0_EEvRKS2_yOS5_, .Lfunc_end13-_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE6modifyIZNS1_11add_balanceEyyyEUlRT_E0_EEvRKS2_yOS5_

	.section	.text._ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE4itemC2IZNS3_7emplaceIZNS1_11add_balanceEyyyEUlRT_E_EENS3_14const_iteratorEyOS7_EUlS8_E_EEPKS3_SB_,"axG",@progbits,_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE4itemC2IZNS3_7emplaceIZNS1_11add_balanceEyyyEUlRT_E_EENS3_14const_iteratorEyOS7_EUlS8_E_EEPKS3_SB_,comdat
	.hidden	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE4itemC2IZNS3_7emplaceIZNS1_11add_balanceEyyyEUlRT_E_EENS3_14const_iteratorEyOS7_EUlS8_E_EEPKS3_SB_
	.weak	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE4itemC2IZNS3_7emplaceIZNS1_11add_balanceEyyyEUlRT_E_EENS3_14const_iteratorEyOS7_EUlS8_E_EEPKS3_SB_
	.type	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE4itemC2IZNS3_7emplaceIZNS1_11add_balanceEyyyEUlRT_E_EENS3_14const_iteratorEyOS7_EUlS8_E_EEPKS3_SB_,@function
_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE4itemC2IZNS3_7emplaceIZNS1_11add_balanceEyyyEUlRT_E_EENS3_14const_iteratorEyOS7_EUlS8_E_EEPKS3_SB_:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i64, i32
	i32.const	$push26=, 0
	i32.const	$push23=, 0
	i32.load	$push24=, __stack_pointer($pop23)
	i32.const	$push25=, 16
	i32.sub 	$push41=, $pop24, $pop25
	tee_local	$push40=, $4=, $pop41
	i32.store	__stack_pointer($pop26), $pop40
	i32.store	16($0), $1
	i32.load	$push39=, 4($2)
	tee_local	$push38=, $1=, $pop39
	i32.load	$push0=, 0($pop38)
	i64.load	$push1=, 0($pop0)
	i64.store	0($0), $pop1
	i32.load	$push2=, 4($1)
	i64.load	$push3=, 0($pop2)
	i64.store	8($0), $pop3
	i32.load	$1=, 0($2)
	i32.const	$push5=, 1
	i32.const	$push4=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop5, $pop4
	i32.const	$push6=, 8
	i32.call	$drop=, memcpy@FUNCTION, $4, $0, $pop6
	i32.const	$push37=, 1
	i32.const	$push36=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop37, $pop36
	i32.const	$push35=, 8
	i32.or  	$push8=, $4, $pop35
	i32.const	$push34=, 8
	i32.add 	$push7=, $0, $pop34
	i32.const	$push33=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop8, $pop7, $pop33
	i64.load	$push9=, 8($1)
	i64.const	$push12=, 3607749779137757184
	i32.load	$push10=, 8($2)
	i64.load	$push11=, 0($pop10)
	i64.load	$push32=, 0($0)
	tee_local	$push31=, $3=, $pop32
	i32.const	$push30=, 16
	i32.call	$push13=, db_store_i64@FUNCTION, $pop9, $pop12, $pop11, $pop31, $4, $pop30
	i32.store	20($0), $pop13
	block   	
	i64.load	$push14=, 16($1)
	i64.lt_u	$push15=, $3, $pop14
	br_if   	0, $pop15
	i32.const	$push42=, 16
	i32.add 	$push22=, $1, $pop42
	i64.const	$push20=, -2
	i64.const	$push18=, 1
	i64.add 	$push19=, $3, $pop18
	i64.const	$push16=, -3
	i64.gt_u	$push17=, $3, $pop16
	i64.select	$push21=, $pop20, $pop19, $pop17
	i64.store	0($pop22), $pop21
.LBB14_2:
	end_block
	i32.const	$push29=, 0
	i32.const	$push27=, 16
	i32.add 	$push28=, $4, $pop27
	i32.store	__stack_pointer($pop29), $pop28
	copy_local	$push43=, $0
	.endfunc
.Lfunc_end14:
	.size	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE4itemC2IZNS3_7emplaceIZNS1_11add_balanceEyyyEUlRT_E_EENS3_14const_iteratorEyOS7_EUlS8_E_EEPKS3_SB_, .Lfunc_end14-_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE4itemC2IZNS3_7emplaceIZNS1_11add_balanceEyyyEUlRT_E_EENS3_14const_iteratorEyOS7_EUlS8_E_EEPKS3_SB_

	.section	.text._ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push46=, 0($0)
	tee_local	$push45=, $6=, $pop46
	i32.sub 	$push1=, $pop0, $pop45
	i32.const	$push44=, 24
	i32.div_s	$push43=, $pop1, $pop44
	tee_local	$push42=, $4=, $pop43
	i32.const	$push2=, 1
	i32.add 	$push41=, $pop42, $pop2
	tee_local	$push40=, $5=, $pop41
	i32.const	$push3=, 178956971
	i32.ge_u	$push4=, $pop40, $pop3
	br_if   	0, $pop4
	i32.const	$7=, 178956970
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $6
	i32.const	$push49=, 24
	i32.div_s	$push48=, $pop6, $pop49
	tee_local	$push47=, $6=, $pop48
	i32.const	$push7=, 89478484
	i32.gt_u	$push8=, $pop47, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push53=, $6, $pop9
	tee_local	$push52=, $7=, $pop53
	i32.lt_u	$push10=, $7, $5
	i32.select	$push51=, $5, $pop52, $pop10
	tee_local	$push50=, $7=, $pop51
	i32.eqz 	$push79=, $pop50
	br_if   	1, $pop79
.LBB15_3:
	end_block
	i32.const	$push11=, 24
	i32.mul 	$push12=, $7, $pop11
	i32.call	$6=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB15_4:
	end_block
	i32.const	$7=, 0
	i32.const	$6=, 0
	br      	1
.LBB15_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB15_6:
	end_block
	i32.load	$5=, 0($1)
	i32.const	$push62=, 0
	i32.store	0($1), $pop62
	i32.const	$push13=, 24
	i32.mul 	$push14=, $4, $pop13
	i32.add 	$push61=, $6, $pop14
	tee_local	$push60=, $1=, $pop61
	i32.store	0($pop60), $5
	i64.load	$push15=, 0($2)
	i64.store	8($1), $pop15
	i32.load	$push16=, 0($3)
	i32.store	16($1), $pop16
	i32.const	$push59=, 24
	i32.mul 	$push17=, $7, $pop59
	i32.add 	$4=, $6, $pop17
	i32.const	$push58=, 24
	i32.add 	$5=, $1, $pop58
	block   	
	block   	
	i32.const	$push18=, 4
	i32.add 	$push19=, $0, $pop18
	i32.load	$push57=, 0($pop19)
	tee_local	$push56=, $6=, $pop57
	i32.load	$push55=, 0($0)
	tee_local	$push54=, $7=, $pop55
	i32.eq  	$push20=, $pop56, $pop54
	br_if   	0, $pop20
.LBB15_8:
	loop    	
	i32.const	$push74=, -24
	i32.add 	$push73=, $6, $pop74
	tee_local	$push72=, $2=, $pop73
	i32.load	$3=, 0($pop72)
	i32.const	$push71=, 0
	i32.store	0($2), $pop71
	i32.const	$push70=, -24
	i32.add 	$push21=, $1, $pop70
	i32.store	0($pop21), $3
	i32.const	$push69=, -8
	i32.add 	$push22=, $1, $pop69
	i32.const	$push68=, -8
	i32.add 	$push23=, $6, $pop68
	i32.load	$push24=, 0($pop23)
	i32.store	0($pop22), $pop24
	i32.const	$push67=, -12
	i32.add 	$push25=, $1, $pop67
	i32.const	$push66=, -12
	i32.add 	$push26=, $6, $pop66
	i32.load	$push27=, 0($pop26)
	i32.store	0($pop25), $pop27
	i32.const	$push65=, -16
	i32.add 	$push28=, $1, $pop65
	i32.const	$push64=, -16
	i32.add 	$push29=, $6, $pop64
	i32.load	$push30=, 0($pop29)
	i32.store	0($pop28), $pop30
	i32.const	$push63=, -24
	i32.add 	$1=, $1, $pop63
	copy_local	$6=, $2
	i32.ne  	$push31=, $7, $2
	br_if   	0, $pop31
	end_loop
	i32.const	$push32=, 4
	i32.add 	$push33=, $0, $pop32
	i32.load	$7=, 0($pop33)
	i32.load	$6=, 0($0)
	br      	1
.LBB15_10:
	end_block
	copy_local	$6=, $7
.LBB15_11:
	end_block
	i32.store	0($0), $1
	i32.const	$push34=, 4
	i32.add 	$push35=, $0, $pop34
	i32.store	0($pop35), $5
	i32.const	$push36=, 8
	i32.add 	$push37=, $0, $pop36
	i32.store	0($pop37), $4
	block   	
	i32.eq  	$push38=, $7, $6
	br_if   	0, $pop38
.LBB15_13:
	loop    	
	i32.const	$push78=, -24
	i32.add 	$push77=, $7, $pop78
	tee_local	$push76=, $7=, $pop77
	i32.load	$1=, 0($pop76)
	i32.const	$push75=, 0
	i32.store	0($7), $pop75
	block   	
	i32.eqz 	$push80=, $1
	br_if   	0, $pop80
	call    	_ZdlPv@FUNCTION, $1
.LBB15_15:
	end_block
	i32.ne  	$push39=, $6, $7
	br_if   	0, $pop39
.LBB15_16:
	end_loop
	end_block
	block   	
	i32.eqz 	$push81=, $6
	br_if   	0, $pop81
	call    	_ZdlPv@FUNCTION, $6
.LBB15_18:
	end_block
	.endfunc
.Lfunc_end15:
	.size	_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_, .Lfunc_end15-_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_

	.section	.text._ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE3getEyPKc,"axG",@progbits,_ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE3getEyPKc,comdat
	.hidden	_ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE3getEyPKc
	.weak	_ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE3getEyPKc
	.type	_ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE3getEyPKc,@function
_ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE3getEyPKc:
	.param  	i32, i64, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	block   	
	i32.const	$push0=, 28
	i32.add 	$push1=, $0, $pop0
	i32.load	$push27=, 0($pop1)
	tee_local	$push26=, $7=, $pop27
	i32.load	$push25=, 24($0)
	tee_local	$push24=, $3=, $pop25
	i32.eq  	$push2=, $pop26, $pop24
	br_if   	0, $pop2
	i32.const	$push28=, -24
	i32.add 	$6=, $7, $pop28
	i32.const	$push3=, 0
	i32.sub 	$4=, $pop3, $3
.LBB16_2:
	loop    	
	i32.load	$push4=, 0($6)
	i64.load	$push5=, 0($pop4)
	i64.eq  	$push6=, $pop5, $1
	br_if   	1, $pop6
	copy_local	$7=, $6
	i32.const	$push32=, -24
	i32.add 	$push31=, $6, $pop32
	tee_local	$push30=, $5=, $pop31
	copy_local	$6=, $pop30
	i32.add 	$push7=, $5, $4
	i32.const	$push29=, -24
	i32.ne  	$push8=, $pop7, $pop29
	br_if   	0, $pop8
.LBB16_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push9=, $7, $3
	br_if   	0, $pop9
	i32.const	$push10=, -24
	i32.add 	$push11=, $7, $pop10
	i32.load	$push34=, 0($pop11)
	tee_local	$push33=, $6=, $pop34
	i32.load	$push12=, 16($pop33)
	i32.eq  	$push13=, $pop12, $0
	i32.const	$push14=, .L.str.5
	call    	eosio_assert@FUNCTION, $pop13, $pop14
	br      	1
.LBB16_6:
	end_block
	i32.const	$6=, 0
	i64.load	$push16=, 0($0)
	i64.load	$push15=, 8($0)
	i64.const	$push17=, 3607749779137757184
	i32.call	$push37=, db_find_i64@FUNCTION, $pop16, $pop15, $pop17, $1
	tee_local	$push36=, $5=, $pop37
	i32.const	$push35=, 0
	i32.lt_s	$push18=, $pop36, $pop35
	br_if   	0, $pop18
	i32.call	$push39=, _ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE31load_object_by_primary_iteratorEl@FUNCTION, $0, $5
	tee_local	$push38=, $6=, $pop39
	i32.load	$push19=, 16($pop38)
	i32.eq  	$push20=, $pop19, $0
	i32.const	$push21=, .L.str.5
	call    	eosio_assert@FUNCTION, $pop20, $pop21
.LBB16_8:
	end_block
	i32.const	$push22=, 0
	i32.ne  	$push23=, $6, $pop22
	call    	eosio_assert@FUNCTION, $pop23, $2
	copy_local	$push40=, $6
	.endfunc
.Lfunc_end16:
	.size	_ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE3getEyPKc, .Lfunc_end16-_ZNK5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE3getEyPKc

	.section	.text._ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE6modifyIZNS1_8transferEyyyEUlRT_E_EEvRKS2_yOS5_,"axG",@progbits,_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE6modifyIZNS1_8transferEyyyEUlRT_E_EEvRKS2_yOS5_,comdat
	.hidden	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE6modifyIZNS1_8transferEyyyEUlRT_E_EEvRKS2_yOS5_
	.weak	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE6modifyIZNS1_8transferEyyyEUlRT_E_EEvRKS2_yOS5_
	.type	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE6modifyIZNS1_8transferEyyyEUlRT_E_EEvRKS2_yOS5_,@function
_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE6modifyIZNS1_8transferEyyyEUlRT_E_EEvRKS2_yOS5_:
	.param  	i32, i32, i64, i32
	.local  	i64, i32
	i32.const	$push30=, 0
	i32.const	$push27=, 0
	i32.load	$push28=, __stack_pointer($pop27)
	i32.const	$push29=, 16
	i32.sub 	$push42=, $pop28, $pop29
	tee_local	$push41=, $5=, $pop42
	i32.store	__stack_pointer($pop30), $pop41
	i32.load	$push0=, 16($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.9
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.10
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	i64.load	$push7=, 8($1)
	i32.load	$push8=, 0($3)
	i64.load	$push9=, 0($pop8)
	i64.sub 	$push10=, $pop7, $pop9
	i64.store	8($1), $pop10
	i64.load	$4=, 0($1)
	i32.const	$push12=, 1
	i32.const	$push11=, .L.str.11
	call    	eosio_assert@FUNCTION, $pop12, $pop11
	i32.const	$push40=, 1
	i32.const	$push13=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop40, $pop13
	i32.const	$push14=, 8
	i32.call	$drop=, memcpy@FUNCTION, $5, $1, $pop14
	i32.const	$push39=, 1
	i32.const	$push38=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop39, $pop38
	i32.const	$push37=, 8
	i32.or  	$push16=, $5, $pop37
	i32.const	$push36=, 8
	i32.add 	$push15=, $1, $pop36
	i32.const	$push35=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop16, $pop15, $pop35
	i32.load	$push17=, 20($1)
	i32.const	$push34=, 16
	call    	db_update_i64@FUNCTION, $pop17, $2, $5, $pop34
	block   	
	i64.load	$push18=, 16($0)
	i64.lt_u	$push19=, $4, $pop18
	br_if   	0, $pop19
	i32.const	$push43=, 16
	i32.add 	$push26=, $0, $pop43
	i64.const	$push24=, -2
	i64.const	$push22=, 1
	i64.add 	$push23=, $4, $pop22
	i64.const	$push20=, -3
	i64.gt_u	$push21=, $4, $pop20
	i64.select	$push25=, $pop24, $pop23, $pop21
	i64.store	0($pop26), $pop25
.LBB17_2:
	end_block
	i32.const	$push33=, 0
	i32.const	$push31=, 16
	i32.add 	$push32=, $5, $pop31
	i32.store	__stack_pointer($pop33), $pop32
	.endfunc
.Lfunc_end17:
	.size	_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE6modifyIZNS1_8transferEyyyEUlRT_E_EEvRKS2_yOS5_, .Lfunc_end17-_ZN5eosio11multi_indexILy3607749779137757184EN11simpletoken7accountEJEE6modifyIZNS1_8transferEyyyEUlRT_E_EEvRKS2_yOS5_

	.text
	.weak	_Znwj
	.type	_Znwj,@function
_Znwj:
	.param  	i32
	.result 	i32
	.local  	i32, i32
	block   	
	i32.const	$push0=, 1
	i32.select	$push4=, $0, $pop0, $0
	tee_local	$push3=, $1=, $pop4
	i32.call	$push2=, malloc@FUNCTION, $pop3
	tee_local	$push1=, $0=, $pop2
	br_if   	0, $pop1
.LBB18_1:
	loop    	
	i32.const	$0=, 0
	i32.const	$push9=, 0
	i32.load	$push8=, _ZStL13__new_handler($pop9)
	tee_local	$push7=, $2=, $pop8
	i32.eqz 	$push10=, $pop7
	br_if   	1, $pop10
	call_indirect	$2
	i32.call	$push6=, malloc@FUNCTION, $1
	tee_local	$push5=, $0=, $pop6
	i32.eqz 	$push11=, $pop5
	br_if   	0, $pop11
.LBB18_3:
	end_loop
	end_block
	copy_local	$push12=, $0
	.endfunc
.Lfunc_end18:
	.size	_Znwj, .Lfunc_end18-_Znwj

	.weak	_ZdlPv
	.type	_ZdlPv,@function
_ZdlPv:
	.param  	i32
	block   	
	i32.eqz 	$push0=, $0
	br_if   	0, $pop0
	call    	free@FUNCTION, $0
.LBB19_2:
	end_block
	.endfunc
.Lfunc_end19:
	.size	_ZdlPv, .Lfunc_end19-_ZdlPv

	.section	.text._ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,comdat
	.hidden	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.weak	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.type	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end20:
	.size	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv, .Lfunc_end20-_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv

	.text
	.hidden	memcmp
	.globl	memcmp
	.type	memcmp,@function
memcmp:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32
	i32.const	$5=, 0
	block   	
	i32.eqz 	$push10=, $2
	br_if   	0, $pop10
.LBB21_2:
	block   	
	loop    	
	i32.load8_u	$push4=, 0($0)
	tee_local	$push3=, $3=, $pop4
	i32.load8_u	$push2=, 0($1)
	tee_local	$push1=, $4=, $pop2
	i32.ne  	$push0=, $pop3, $pop1
	br_if   	1, $pop0
	i32.const	$push9=, 1
	i32.add 	$1=, $1, $pop9
	i32.const	$push8=, 1
	i32.add 	$0=, $0, $pop8
	i32.const	$push7=, -1
	i32.add 	$push6=, $2, $pop7
	tee_local	$push5=, $2=, $pop6
	br_if   	0, $pop5
	br      	2
.LBB21_4:
	end_loop
	end_block
	i32.sub 	$5=, $3, $4
.LBB21_5:
	end_block
	copy_local	$push11=, $5
	.endfunc
.Lfunc_end21:
	.size	memcmp, .Lfunc_end21-memcmp

	.hidden	malloc
	.globl	malloc
	.type	malloc,@function
malloc:
	.param  	i32
	.result 	i32
	i32.const	$push0=, _ZN5eosio11memory_heapE
	i32.call	$push1=, _ZN5eosio14memory_manager6mallocEm@FUNCTION, $pop0, $0
	.endfunc
.Lfunc_end22:
	.size	malloc, .Lfunc_end22-malloc

	.section	.text._ZN5eosio14memory_manager6mallocEm,"axG",@progbits,_ZN5eosio14memory_manager6mallocEm,comdat
	.hidden	_ZN5eosio14memory_manager6mallocEm
	.weak	_ZN5eosio14memory_manager6mallocEm
	.type	_ZN5eosio14memory_manager6mallocEm,@function
_ZN5eosio14memory_manager6mallocEm:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	block   	
	i32.eqz 	$push128=, $1
	br_if   	0, $pop128
	block   	
	i32.load	$push63=, 8384($0)
	tee_local	$push62=, $13=, $pop63
	br_if   	0, $pop62
	i32.const	$13=, 16
	i32.const	$push0=, 8384
	i32.add 	$push1=, $0, $pop0
	i32.const	$push64=, 16
	i32.store	0($pop1), $pop64
.LBB23_3:
	end_block
	i32.const	$push2=, 8
	i32.add 	$push3=, $1, $pop2
	i32.const	$push69=, 4
	i32.add 	$push4=, $1, $pop69
	i32.const	$push5=, 7
	i32.and 	$push68=, $pop4, $pop5
	tee_local	$push67=, $2=, $pop68
	i32.sub 	$push6=, $pop3, $pop67
	i32.select	$2=, $pop6, $1, $2
	block   	
	block   	
	block   	
	i32.load	$push66=, 8388($0)
	tee_local	$push65=, $10=, $pop66
	i32.ge_u	$push7=, $pop65, $13
	br_if   	0, $pop7
	i32.const	$push8=, 12
	i32.mul 	$push9=, $10, $pop8
	i32.add 	$push10=, $0, $pop9
	i32.const	$push11=, 8192
	i32.add 	$1=, $pop10, $pop11
	block   	
	br_if   	0, $10
	i32.const	$push12=, 8196
	i32.add 	$push71=, $0, $pop12
	tee_local	$push70=, $13=, $pop71
	i32.load	$push13=, 0($pop70)
	br_if   	0, $pop13
	i32.const	$push14=, 8192
	i32.store	0($1), $pop14
	i32.store	0($13), $0
.LBB23_7:
	end_block
	i32.const	$push72=, 4
	i32.add 	$10=, $2, $pop72
.LBB23_8:
	loop    	
	block   	
	i32.load	$push74=, 8($1)
	tee_local	$push73=, $13=, $pop74
	i32.add 	$push15=, $pop73, $10
	i32.load	$push16=, 0($1)
	i32.gt_u	$push17=, $pop15, $pop16
	br_if   	0, $pop17
	i32.load	$push18=, 4($1)
	i32.add 	$push84=, $pop18, $13
	tee_local	$push83=, $13=, $pop84
	i32.load	$push19=, 0($13)
	i32.const	$push82=, -2147483648
	i32.and 	$push20=, $pop19, $pop82
	i32.or  	$push21=, $pop20, $2
	i32.store	0($pop83), $pop21
	i32.const	$push81=, 8
	i32.add 	$push80=, $1, $pop81
	tee_local	$push79=, $1=, $pop80
	i32.load	$push22=, 0($1)
	i32.add 	$push23=, $pop22, $10
	i32.store	0($pop79), $pop23
	i32.load	$push24=, 0($13)
	i32.const	$push78=, -2147483648
	i32.or  	$push25=, $pop24, $pop78
	i32.store	0($13), $pop25
	i32.const	$push77=, 4
	i32.add 	$push76=, $13, $pop77
	tee_local	$push75=, $1=, $pop76
	br_if   	3, $pop75
.LBB23_10:
	end_block
	i32.call	$push86=, _ZN5eosio14memory_manager16next_active_heapEv@FUNCTION, $0
	tee_local	$push85=, $1=, $pop86
	br_if   	0, $pop85
.LBB23_11:
	end_loop
	end_block
	i32.const	$push26=, 2147483644
	i32.sub 	$4=, $pop26, $2
	i32.const	$push55=, 8392
	i32.add 	$11=, $0, $pop55
	i32.const	$push57=, 8384
	i32.add 	$12=, $0, $pop57
	i32.load	$push88=, 8392($0)
	tee_local	$push87=, $3=, $pop88
	copy_local	$13=, $pop87
.LBB23_12:
	loop    	
	i32.const	$push100=, 12
	i32.mul 	$push27=, $13, $pop100
	i32.add 	$push99=, $0, $pop27
	tee_local	$push98=, $1=, $pop99
	i32.const	$push97=, 8200
	i32.add 	$push29=, $pop98, $pop97
	i32.load	$push30=, 0($pop29)
	i32.const	$push96=, 8192
	i32.add 	$push95=, $1, $pop96
	tee_local	$push94=, $5=, $pop95
	i32.load	$push28=, 0($pop94)
	i32.eq  	$push31=, $pop30, $pop28
	i32.const	$push93=, .L.str.1.11
	call    	eosio_assert@FUNCTION, $pop31, $pop93
	i32.const	$push92=, 8196
	i32.add 	$push32=, $1, $pop92
	i32.load	$push91=, 0($pop32)
	tee_local	$push90=, $6=, $pop91
	i32.const	$push89=, 4
	i32.add 	$13=, $pop90, $pop89
.LBB23_13:
	loop    	
	i32.load	$push33=, 0($5)
	i32.add 	$7=, $6, $pop33
	i32.const	$push107=, -4
	i32.add 	$push106=, $13, $pop107
	tee_local	$push105=, $8=, $pop106
	i32.load	$push104=, 0($pop105)
	tee_local	$push103=, $9=, $pop104
	i32.const	$push102=, 2147483647
	i32.and 	$1=, $pop103, $pop102
	block   	
	i32.const	$push101=, 0
	i32.lt_s	$push34=, $9, $pop101
	br_if   	0, $pop34
	block   	
	i32.ge_u	$push35=, $1, $2
	br_if   	0, $pop35
.LBB23_15:
	loop    	
	i32.add 	$push109=, $13, $1
	tee_local	$push108=, $10=, $pop109
	i32.ge_u	$push36=, $pop108, $7
	br_if   	1, $pop36
	i32.load	$push112=, 0($10)
	tee_local	$push111=, $10=, $pop112
	i32.const	$push110=, 0
	i32.lt_s	$push37=, $pop111, $pop110
	br_if   	1, $pop37
	i32.const	$push116=, 2147483647
	i32.and 	$push38=, $10, $pop116
	i32.add 	$push39=, $1, $pop38
	i32.const	$push115=, 4
	i32.add 	$push114=, $pop39, $pop115
	tee_local	$push113=, $1=, $pop114
	i32.lt_u	$push40=, $pop113, $2
	br_if   	0, $pop40
.LBB23_18:
	end_loop
	end_block
	i32.lt_u	$push41=, $1, $2
	i32.select	$push42=, $1, $2, $pop41
	i32.const	$push117=, -2147483648
	i32.and 	$push43=, $9, $pop117
	i32.or  	$push44=, $pop42, $pop43
	i32.store	0($8), $pop44
	block   	
	i32.le_u	$push45=, $1, $2
	br_if   	0, $pop45
	i32.add 	$push46=, $13, $2
	i32.add 	$push47=, $4, $1
	i32.const	$push118=, 2147483647
	i32.and 	$push48=, $pop47, $pop118
	i32.store	0($pop46), $pop48
.LBB23_20:
	end_block
	i32.ge_u	$push49=, $1, $2
	br_if   	4, $pop49
.LBB23_21:
	end_block
	i32.add 	$push53=, $13, $1
	i32.const	$push121=, 4
	i32.add 	$push120=, $pop53, $pop121
	tee_local	$push119=, $13=, $pop120
	i32.lt_u	$push54=, $pop119, $7
	br_if   	0, $pop54
	end_loop
	i32.const	$1=, 0
	i32.const	$push127=, 0
	i32.load	$push56=, 0($11)
	i32.const	$push126=, 1
	i32.add 	$push125=, $pop56, $pop126
	tee_local	$push124=, $13=, $pop125
	i32.load	$push58=, 0($12)
	i32.eq  	$push59=, $13, $pop58
	i32.select	$push123=, $pop127, $pop124, $pop59
	tee_local	$push122=, $13=, $pop123
	i32.store	0($11), $pop122
	i32.ne  	$push60=, $13, $3
	br_if   	0, $pop60
.LBB23_23:
	end_loop
	end_block
	return  	$1
.LBB23_24:
	end_block
	i32.load	$push50=, 0($8)
	i32.const	$push51=, -2147483648
	i32.or  	$push52=, $pop50, $pop51
	i32.store	0($8), $pop52
	return  	$13
.LBB23_25:
	end_block
	i32.const	$push61=, 0
	.endfunc
.Lfunc_end23:
	.size	_ZN5eosio14memory_manager6mallocEm, .Lfunc_end23-_ZN5eosio14memory_manager6mallocEm

	.section	.text._ZN5eosio14memory_manager16next_active_heapEv,"axG",@progbits,_ZN5eosio14memory_manager16next_active_heapEv,comdat
	.hidden	_ZN5eosio14memory_manager16next_active_heapEv
	.weak	_ZN5eosio14memory_manager16next_active_heapEv
	.type	_ZN5eosio14memory_manager16next_active_heapEv,@function
_ZN5eosio14memory_manager16next_active_heapEv:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32
	i32.load	$1=, 8388($0)
	block   	
	block   	
	i32.const	$push94=, 0
	i32.load8_u	$push2=, _ZZ4sbrkjE11initialized($pop94)
	i32.eqz 	$push157=, $pop2
	br_if   	0, $pop157
	i32.const	$push95=, 0
	i32.load	$7=, _ZZ4sbrkjE10sbrk_bytes($pop95)
	br      	1
.LBB24_2:
	end_block
	current_memory	$7=
	i32.const	$push99=, 0
	i32.const	$push3=, 1
	i32.store8	_ZZ4sbrkjE11initialized($pop99), $pop3
	i32.const	$push98=, 0
	i32.const	$push4=, 16
	i32.shl 	$push97=, $7, $pop4
	tee_local	$push96=, $7=, $pop97
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop98), $pop96
.LBB24_3:
	end_block
	copy_local	$3=, $7
	block   	
	block   	
	block   	
	block   	
	i32.const	$push5=, 65535
	i32.add 	$push6=, $7, $pop5
	i32.const	$push7=, 16
	i32.shr_u	$push103=, $pop6, $pop7
	tee_local	$push102=, $2=, $pop103
	current_memory	$push101=
	tee_local	$push100=, $8=, $pop101
	i32.le_u	$push8=, $pop102, $pop100
	br_if   	0, $pop8
	i32.sub 	$push9=, $2, $8
	grow_memory	$pop9
	i32.const	$8=, 0
	current_memory	$push10=
	i32.ne  	$push11=, $2, $pop10
	br_if   	1, $pop11
	i32.const	$push12=, 0
	i32.load	$3=, _ZZ4sbrkjE10sbrk_bytes($pop12)
.LBB24_6:
	end_block
	i32.const	$8=, 0
	i32.const	$push105=, 0
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop105), $3
	i32.const	$push104=, 0
	i32.lt_s	$push13=, $7, $pop104
	br_if   	0, $pop13
	i32.const	$push0=, 12
	i32.mul 	$push1=, $1, $pop0
	i32.add 	$2=, $0, $pop1
	i32.const	$push20=, 65536
	i32.const	$push19=, 131072
	i32.const	$push16=, 65535
	i32.and 	$push110=, $7, $pop16
	tee_local	$push109=, $8=, $pop110
	i32.const	$push17=, 64513
	i32.lt_u	$push108=, $pop109, $pop17
	tee_local	$push107=, $6=, $pop108
	i32.select	$push21=, $pop20, $pop19, $pop107
	i32.add 	$push22=, $7, $pop21
	i32.const	$push14=, 131071
	i32.and 	$push15=, $7, $pop14
	i32.select	$push18=, $8, $pop15, $6
	i32.sub 	$push23=, $pop22, $pop18
	i32.sub 	$7=, $pop23, $7
	block   	
	i32.const	$push106=, 0
	i32.load8_u	$push24=, _ZZ4sbrkjE11initialized($pop106)
	br_if   	0, $pop24
	current_memory	$3=
	i32.const	$push114=, 0
	i32.const	$push25=, 1
	i32.store8	_ZZ4sbrkjE11initialized($pop114), $pop25
	i32.const	$push113=, 0
	i32.const	$push26=, 16
	i32.shl 	$push112=, $3, $pop26
	tee_local	$push111=, $3=, $pop112
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop113), $pop111
.LBB24_9:
	end_block
	i32.const	$push116=, 8192
	i32.add 	$2=, $2, $pop116
	i32.const	$push115=, 0
	i32.lt_s	$push27=, $7, $pop115
	br_if   	1, $pop27
	copy_local	$6=, $3
	block   	
	i32.const	$push28=, 7
	i32.add 	$push29=, $7, $pop28
	i32.const	$push30=, -8
	i32.and 	$push122=, $pop29, $pop30
	tee_local	$push121=, $5=, $pop122
	i32.add 	$push31=, $pop121, $3
	i32.const	$push32=, 65535
	i32.add 	$push33=, $pop31, $pop32
	i32.const	$push34=, 16
	i32.shr_u	$push120=, $pop33, $pop34
	tee_local	$push119=, $8=, $pop120
	current_memory	$push118=
	tee_local	$push117=, $4=, $pop118
	i32.le_u	$push35=, $pop119, $pop117
	br_if   	0, $pop35
	i32.sub 	$push36=, $8, $4
	grow_memory	$pop36
	current_memory	$push37=
	i32.ne  	$push38=, $8, $pop37
	br_if   	2, $pop38
	i32.const	$push39=, 0
	i32.load	$6=, _ZZ4sbrkjE10sbrk_bytes($pop39)
.LBB24_13:
	end_block
	i32.const	$push41=, 0
	i32.add 	$push40=, $6, $5
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop41), $pop40
	i32.const	$push42=, -1
	i32.eq  	$push43=, $3, $pop42
	br_if   	1, $pop43
	i32.const	$push44=, 12
	i32.mul 	$push45=, $1, $pop44
	i32.add 	$push128=, $0, $pop45
	tee_local	$push127=, $1=, $pop128
	i32.const	$push46=, 8196
	i32.add 	$push47=, $pop127, $pop46
	i32.load	$push126=, 0($pop47)
	tee_local	$push125=, $6=, $pop126
	i32.load	$push124=, 0($2)
	tee_local	$push123=, $8=, $pop124
	i32.add 	$push48=, $pop125, $pop123
	i32.eq  	$push49=, $pop48, $3
	br_if   	2, $pop49
	block   	
	i32.const	$push50=, 8200
	i32.add 	$push132=, $1, $pop50
	tee_local	$push131=, $5=, $pop132
	i32.load	$push130=, 0($pop131)
	tee_local	$push129=, $1=, $pop130
	i32.eq  	$push51=, $8, $pop129
	br_if   	0, $pop51
	i32.add 	$push134=, $6, $1
	tee_local	$push133=, $6=, $pop134
	i32.load	$push55=, 0($6)
	i32.const	$push56=, -2147483648
	i32.and 	$push57=, $pop55, $pop56
	i32.const	$push52=, -4
	i32.sub 	$push53=, $pop52, $1
	i32.add 	$push54=, $pop53, $8
	i32.or  	$push58=, $pop57, $pop54
	i32.store	0($pop133), $pop58
	i32.load	$push59=, 0($2)
	i32.store	0($5), $pop59
	i32.load	$push60=, 0($6)
	i32.const	$push61=, 2147483647
	i32.and 	$push62=, $pop60, $pop61
	i32.store	0($6), $pop62
.LBB24_17:
	end_block
	i32.const	$push63=, 8388
	i32.add 	$push142=, $0, $pop63
	tee_local	$push141=, $2=, $pop142
	i32.load	$push64=, 0($2)
	i32.const	$push65=, 1
	i32.add 	$push140=, $pop64, $pop65
	tee_local	$push139=, $2=, $pop140
	i32.store	0($pop141), $pop139
	i32.const	$push66=, 12
	i32.mul 	$push67=, $2, $pop66
	i32.add 	$push138=, $0, $pop67
	tee_local	$push137=, $0=, $pop138
	i32.const	$push68=, 8196
	i32.add 	$push69=, $pop137, $pop68
	i32.store	0($pop69), $3
	i32.const	$push70=, 8192
	i32.add 	$push136=, $0, $pop70
	tee_local	$push135=, $8=, $pop136
	i32.store	0($pop135), $7
.LBB24_18:
	end_block
	return  	$8
.LBB24_19:
	end_block
	block   	
	i32.load	$push150=, 0($2)
	tee_local	$push149=, $8=, $pop150
	i32.const	$push72=, 12
	i32.mul 	$push73=, $1, $pop72
	i32.add 	$push148=, $0, $pop73
	tee_local	$push147=, $3=, $pop148
	i32.const	$push74=, 8200
	i32.add 	$push146=, $pop147, $pop74
	tee_local	$push145=, $1=, $pop146
	i32.load	$push144=, 0($pop145)
	tee_local	$push143=, $7=, $pop144
	i32.eq  	$push75=, $pop149, $pop143
	br_if   	0, $pop75
	i32.const	$push79=, 8196
	i32.add 	$push80=, $3, $pop79
	i32.load	$push81=, 0($pop80)
	i32.add 	$push152=, $pop81, $7
	tee_local	$push151=, $3=, $pop152
	i32.load	$push82=, 0($3)
	i32.const	$push83=, -2147483648
	i32.and 	$push84=, $pop82, $pop83
	i32.const	$push76=, -4
	i32.sub 	$push77=, $pop76, $7
	i32.add 	$push78=, $pop77, $8
	i32.or  	$push85=, $pop84, $pop78
	i32.store	0($pop151), $pop85
	i32.load	$push86=, 0($2)
	i32.store	0($1), $pop86
	i32.load	$push87=, 0($3)
	i32.const	$push88=, 2147483647
	i32.and 	$push89=, $pop87, $pop88
	i32.store	0($3), $pop89
.LBB24_21:
	end_block
	i32.const	$push90=, 8388
	i32.add 	$push156=, $0, $pop90
	tee_local	$push155=, $7=, $pop156
	i32.load	$push91=, 0($pop155)
	i32.const	$push92=, 1
	i32.add 	$push154=, $pop91, $pop92
	tee_local	$push153=, $3=, $pop154
	i32.store	8384($0), $pop153
	i32.store	0($7), $3
	i32.const	$push93=, 0
	return  	$pop93
.LBB24_22:
	end_block
	i32.add 	$push71=, $8, $7
	i32.store	0($2), $pop71
	copy_local	$push158=, $2
	.endfunc
.Lfunc_end24:
	.size	_ZN5eosio14memory_manager16next_active_heapEv, .Lfunc_end24-_ZN5eosio14memory_manager16next_active_heapEv

	.text
	.hidden	free
	.globl	free
	.type	free,@function
free:
	.param  	i32
	.local  	i32, i32, i32
	block   	
	block   	
	i32.eqz 	$push28=, $0
	br_if   	0, $pop28
	i32.const	$push0=, 0
	i32.load	$push16=, _ZN5eosio11memory_heapE+8384($pop0)
	tee_local	$push15=, $2=, $pop16
	i32.const	$push1=, 1
	i32.lt_s	$push2=, $pop15, $pop1
	br_if   	0, $pop2
	i32.const	$3=, _ZN5eosio11memory_heapE+8192
	i32.const	$push18=, 12
	i32.mul 	$push3=, $2, $pop18
	i32.const	$push17=, _ZN5eosio11memory_heapE+8192
	i32.add 	$1=, $pop3, $pop17
.LBB25_3:
	loop    	
	i32.const	$push21=, 4
	i32.add 	$push4=, $3, $pop21
	i32.load	$push20=, 0($pop4)
	tee_local	$push19=, $2=, $pop20
	i32.eqz 	$push29=, $pop19
	br_if   	1, $pop29
	block   	
	i32.const	$push22=, 4
	i32.add 	$push5=, $2, $pop22
	i32.gt_u	$push6=, $pop5, $0
	br_if   	0, $pop6
	i32.load	$push7=, 0($3)
	i32.add 	$push8=, $2, $pop7
	i32.gt_u	$push9=, $pop8, $0
	br_if   	3, $pop9
.LBB25_6:
	end_block
	i32.const	$push25=, 12
	i32.add 	$push24=, $3, $pop25
	tee_local	$push23=, $3=, $pop24
	i32.lt_u	$push14=, $pop23, $1
	br_if   	0, $pop14
.LBB25_7:
	end_loop
	end_block
	return
.LBB25_8:
	end_block
	i32.const	$push10=, -4
	i32.add 	$push27=, $0, $pop10
	tee_local	$push26=, $3=, $pop27
	i32.load	$push11=, 0($3)
	i32.const	$push12=, 2147483647
	i32.and 	$push13=, $pop11, $pop12
	i32.store	0($pop26), $pop13
	.endfunc
.Lfunc_end25:
	.size	free, .Lfunc_end25-free

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"onerror"
	.size	.L.str, 8

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"eosio"
	.size	.L.str.1, 6

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"onerror action's are only valid from the \"eosio\" system account"
	.size	.L.str.2, 64

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"read"
	.size	.L.str.7, 5

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"object passed to iterator_to is not in multi_index"
	.size	.L.str.5, 51

	.type	.L.str.14,@object
.L.str.14:
	.asciz	"cannot pass end iterator to modify"
	.size	.L.str.14, 35

	.type	.L.str.9,@object
.L.str.9:
	.asciz	"object passed to modify is not in multi_index"
	.size	.L.str.9, 46

	.type	.L.str.10,@object
.L.str.10:
	.asciz	"cannot modify objects in table of another contract"
	.size	.L.str.10, 51

	.type	.L.str.15,@object
.L.str.15:
	.asciz	"overflow detected"
	.size	.L.str.15, 18

	.type	.L.str.11,@object
.L.str.11:
	.asciz	"updater cannot change primary key when modifying an object"
	.size	.L.str.11, 59

	.type	.L.str.12,@object
.L.str.12:
	.asciz	"write"
	.size	.L.str.12, 6

	.type	.L.str.13,@object
.L.str.13:
	.asciz	"cannot create objects in table of another contract"
	.size	.L.str.13, 51

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"error reading iterator"
	.size	.L.str.6, 23

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"unable to find key"
	.size	.L.str.3, 19

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"overdrawn balance"
	.size	.L.str.4, 18

	.type	_ZStL13__new_handler,@object
	.lcomm	_ZStL13__new_handler,4,2
	.hidden	_ZN5eosio11memory_heapE
	.type	_ZN5eosio11memory_heapE,@object
	.bss
	.globl	_ZN5eosio11memory_heapE
	.p2align	2
_ZN5eosio11memory_heapE:
	.skip	8396
	.size	_ZN5eosio11memory_heapE, 8396

	.type	.L.str.1.11,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1.11:
	.asciz	"malloc_from_freed was designed to only be called after _heap was completely allocated"
	.size	.L.str.1.11, 86

	.type	_ZZ4sbrkjE11initialized,@object
	.lcomm	_ZZ4sbrkjE11initialized,1
	.type	_ZZ4sbrkjE10sbrk_bytes,@object
	.lcomm	_ZZ4sbrkjE10sbrk_bytes,4,2

	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.functype	current_time, i64
	.functype	require_auth2, void, i64, i64
	.functype	eosio_assert, void, i32, i32
	.functype	action_data_size, i32
	.functype	read_action_data, i32, i32, i32
	.functype	memcpy, i32, i32, i32, i32
	.functype	require_auth, void, i64
	.functype	db_find_i64, i32, i64, i64, i64, i64
	.functype	current_receiver, i64
	.functype	db_update_i64, void, i32, i64, i32, i32
	.functype	db_store_i64, i32, i64, i64, i64, i64, i32, i32
	.functype	db_get_i64, i32, i32, i32, i32
	.functype	abort, void
