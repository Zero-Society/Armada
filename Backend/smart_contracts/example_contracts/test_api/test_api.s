	.text
	.file	"test_api.bc"
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

	.hidden	_ZN11test_action18read_action_normalEv
	.globl	_ZN11test_action18read_action_normalEv
	.type	_ZN11test_action18read_action_normalEv,@function
_ZN11test_action18read_action_normalEv:
	.local  	i32
	i32.const	$push34=, 0
	i32.const	$push31=, 0
	i32.load	$push32=, __stack_pointer($pop31)
	i32.const	$push33=, 112
	i32.sub 	$push44=, $pop32, $pop33
	tee_local	$push43=, $0=, $pop44
	i32.store	__stack_pointer($pop34), $pop43
	i32.call	$push1=, action_data_size@FUNCTION
	i32.const	$push0=, 13
	i32.eq  	$push2=, $pop1, $pop0
	i32.const	$push3=, .L.str
	call    	eosio_assert@FUNCTION, $pop2, $pop3
	i32.const	$push4=, 30
	i32.call	$push5=, read_action_data@FUNCTION, $0, $pop4
	i32.const	$push42=, 13
	i32.eq  	$push6=, $pop5, $pop42
	i32.const	$push7=, .L.str.1
	call    	eosio_assert@FUNCTION, $pop6, $pop7
	i32.const	$push8=, 100
	i32.call	$push9=, read_action_data@FUNCTION, $0, $pop8
	i32.const	$push41=, 13
	i32.eq  	$push10=, $pop9, $pop41
	i32.const	$push11=, .L.str.2
	call    	eosio_assert@FUNCTION, $pop10, $pop11
	i32.const	$push12=, 5
	i32.call	$push13=, read_action_data@FUNCTION, $0, $pop12
	i32.const	$push40=, 5
	i32.eq  	$push14=, $pop13, $pop40
	i32.const	$push15=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop14, $pop15
	i32.const	$push39=, 13
	i32.call	$push16=, read_action_data@FUNCTION, $0, $pop39
	i32.const	$push38=, 13
	i32.eq  	$push17=, $pop16, $pop38
	i32.const	$push18=, .L.str.4
	call    	eosio_assert@FUNCTION, $pop17, $pop18
	i32.load8_u	$push20=, 0($0)
	i32.const	$push19=, 69
	i32.eq  	$push21=, $pop20, $pop19
	i32.const	$push22=, .L.str.5
	call    	eosio_assert@FUNCTION, $pop21, $pop22
	i64.load	$push24=, 1($0):p2align=0
	i64.const	$push23=, -6119884940280240521
	i64.eq  	$push25=, $pop24, $pop23
	i32.const	$push26=, .L.str.6
	call    	eosio_assert@FUNCTION, $pop25, $pop26
	i32.load	$push28=, 9($0):p2align=0
	i32.const	$push27=, 1951510034
	i32.eq  	$push29=, $pop28, $pop27
	i32.const	$push30=, .L.str.7
	call    	eosio_assert@FUNCTION, $pop29, $pop30
	i32.const	$push37=, 0
	i32.const	$push35=, 112
	i32.add 	$push36=, $0, $pop35
	i32.store	__stack_pointer($pop37), $pop36
	.endfunc
.Lfunc_end5:
	.size	_ZN11test_action18read_action_normalEv, .Lfunc_end5-_ZN11test_action18read_action_normalEv

	.hidden	_ZN11test_action17test_dummy_actionEv
	.globl	_ZN11test_action17test_dummy_actionEv
	.type	_ZN11test_action17test_dummy_actionEv,@function
_ZN11test_action17test_dummy_actionEv:
	.local  	i32, i64, i32, i32, i32, i32, i64, i64, i64, i64, i32
	i32.const	$push102=, 0
	i32.const	$push99=, 0
	i32.load	$push100=, __stack_pointer($pop99)
	i32.const	$push101=, 176
	i32.sub 	$push129=, $pop100, $pop101
	tee_local	$push128=, $10=, $pop129
	i32.store	__stack_pointer($pop102), $pop128
	i32.const	$push127=, 1
	i32.const	$push126=, 0
	i32.const	$push108=, 64
	i32.add 	$push109=, $10, $pop108
	i32.const	$push125=, 1
	i32.const	$push124=, 0
	i32.const	$push106=, 64
	i32.add 	$push107=, $10, $pop106
	i32.const	$push123=, 0
	i32.call	$push0=, get_action@FUNCTION, $pop125, $pop124, $pop107, $pop123
	i32.call	$push122=, get_action@FUNCTION, $pop127, $pop126, $pop109, $pop0
	tee_local	$push121=, $0=, $pop122
	i32.const	$push120=, 0
	i32.gt_s	$push1=, $pop121, $pop120
	i32.const	$push2=, .L.str.8
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i32.const	$push110=, 24
	i32.add 	$push111=, $10, $pop110
	i32.const	$push119=, 1
	i32.const	$push118=, 0
	call    	_ZN5eosio10get_actionEmm@FUNCTION, $pop111, $pop119, $pop118
	i32.const	$push3=, 44
	i32.add 	$push4=, $10, $pop3
	i32.load	$push5=, 0($pop4)
	i32.const	$push6=, -16
	i32.add 	$push7=, $pop5, $pop6
	i64.load	$1=, 0($pop7)
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$5=, .L.str.9
	i64.const	$8=, 0
.LBB6_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push130=, 6
	i64.gt_u	$push8=, $7, $pop130
	br_if   	0, $pop8
	i32.load8_s	$push135=, 0($5)
	tee_local	$push134=, $2=, $pop135
	i32.const	$push133=, -97
	i32.add 	$push10=, $pop134, $pop133
	i32.const	$push132=, 255
	i32.and 	$push11=, $pop10, $pop132
	i32.const	$push131=, 25
	i32.gt_u	$push12=, $pop11, $pop131
	br_if   	1, $pop12
	i32.const	$push136=, 165
	i32.add 	$2=, $2, $pop136
	br      	2
.LBB6_4:
	end_block
	i64.const	$9=, 0
	i64.const	$push137=, 11
	i64.le_u	$push9=, $7, $pop137
	br_if   	2, $pop9
	br      	3
.LBB6_5:
	end_block
	i32.const	$push142=, 208
	i32.add 	$push13=, $2, $pop142
	i32.const	$push141=, 0
	i32.const	$push140=, -49
	i32.add 	$push14=, $2, $pop140
	i32.const	$push139=, 255
	i32.and 	$push15=, $pop14, $pop139
	i32.const	$push138=, 5
	i32.lt_u	$push16=, $pop15, $pop138
	i32.select	$2=, $pop13, $pop141, $pop16
.LBB6_6:
	end_block
	i64.extend_u/i32	$push17=, $2
	i64.const	$push144=, 56
	i64.shl 	$push18=, $pop17, $pop144
	i64.const	$push143=, 56
	i64.shr_s	$9=, $pop18, $pop143
.LBB6_7:
	end_block
	i64.const	$push146=, 31
	i64.and 	$push20=, $9, $pop146
	i64.const	$push145=, 4294967295
	i64.and 	$push19=, $6, $pop145
	i64.shl 	$9=, $pop20, $pop19
.LBB6_8:
	end_block
	i32.const	$push152=, 1
	i32.add 	$5=, $5, $pop152
	i64.const	$push151=, 1
	i64.add 	$7=, $7, $pop151
	i64.or  	$8=, $9, $8
	i64.const	$push150=, -5
	i64.add 	$push149=, $6, $pop150
	tee_local	$push148=, $6=, $pop149
	i64.const	$push147=, -6
	i64.ne  	$push21=, $pop148, $pop147
	br_if   	0, $pop21
	end_loop
	i64.eq  	$push22=, $1, $8
	i32.const	$push23=, .L.str.10
	call    	eosio_assert@FUNCTION, $pop22, $pop23
	i32.const	$push24=, 44
	i32.add 	$push25=, $10, $pop24
	i32.load	$push26=, 0($pop25)
	i32.const	$push27=, -8
	i32.add 	$push28=, $pop26, $pop27
	i64.load	$1=, 0($pop28)
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$5=, .L.str.11
	i64.const	$8=, 0
.LBB6_10:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push153=, 5
	i64.gt_u	$push29=, $7, $pop153
	br_if   	0, $pop29
	i32.load8_s	$push158=, 0($5)
	tee_local	$push157=, $2=, $pop158
	i32.const	$push156=, -97
	i32.add 	$push31=, $pop157, $pop156
	i32.const	$push155=, 255
	i32.and 	$push32=, $pop31, $pop155
	i32.const	$push154=, 25
	i32.gt_u	$push33=, $pop32, $pop154
	br_if   	1, $pop33
	i32.const	$push159=, 165
	i32.add 	$2=, $2, $pop159
	br      	2
.LBB6_13:
	end_block
	i64.const	$9=, 0
	i64.const	$push160=, 11
	i64.le_u	$push30=, $7, $pop160
	br_if   	2, $pop30
	br      	3
.LBB6_14:
	end_block
	i32.const	$push165=, 208
	i32.add 	$push34=, $2, $pop165
	i32.const	$push164=, 0
	i32.const	$push163=, -49
	i32.add 	$push35=, $2, $pop163
	i32.const	$push162=, 255
	i32.and 	$push36=, $pop35, $pop162
	i32.const	$push161=, 5
	i32.lt_u	$push37=, $pop36, $pop161
	i32.select	$2=, $pop34, $pop164, $pop37
.LBB6_15:
	end_block
	i64.extend_u/i32	$push38=, $2
	i64.const	$push167=, 56
	i64.shl 	$push39=, $pop38, $pop167
	i64.const	$push166=, 56
	i64.shr_s	$9=, $pop39, $pop166
.LBB6_16:
	end_block
	i64.const	$push169=, 31
	i64.and 	$push41=, $9, $pop169
	i64.const	$push168=, 4294967295
	i64.and 	$push40=, $6, $pop168
	i64.shl 	$9=, $pop41, $pop40
.LBB6_17:
	end_block
	i32.const	$push175=, 1
	i32.add 	$5=, $5, $pop175
	i64.const	$push174=, 1
	i64.add 	$7=, $7, $pop174
	i64.or  	$8=, $9, $8
	i64.const	$push173=, -5
	i64.add 	$push172=, $6, $pop173
	tee_local	$push171=, $6=, $pop172
	i64.const	$push170=, -6
	i64.ne  	$push42=, $pop171, $pop170
	br_if   	0, $pop42
	end_loop
	i64.eq  	$push43=, $1, $8
	i32.const	$push44=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop43, $pop44
	i32.const	$5=, 16
	i32.const	$push46=, 44
	i32.add 	$push47=, $10, $pop46
	i32.load	$push182=, 0($pop47)
	tee_local	$push181=, $2=, $pop182
	i32.const	$push112=, 24
	i32.add 	$push113=, $10, $pop112
	i32.const	$push180=, 16
	i32.add 	$push45=, $pop113, $pop180
	i32.load	$push179=, 0($pop45)
	tee_local	$push178=, $3=, $pop179
	i32.sub 	$push177=, $pop181, $pop178
	tee_local	$push176=, $4=, $pop177
	i32.const	$push48=, 4
	i32.shr_s	$push49=, $pop176, $pop48
	i64.extend_u/i32	$7=, $pop49
.LBB6_19:
	loop    	
	i32.const	$push187=, 1
	i32.add 	$5=, $5, $pop187
	i64.const	$push186=, 7
	i64.shr_u	$push185=, $7, $pop186
	tee_local	$push184=, $7=, $pop185
	i64.const	$push183=, 0
	i64.ne  	$push50=, $pop184, $pop183
	br_if   	0, $pop50
	end_loop
	block   	
	i32.eq  	$push51=, $3, $2
	br_if   	0, $pop51
	i32.const	$push52=, -16
	i32.and 	$push53=, $4, $pop52
	i32.add 	$5=, $pop53, $5
.LBB6_22:
	end_block
	i32.load	$push191=, 52($10)
	tee_local	$push190=, $2=, $pop191
	i32.add 	$push54=, $0, $pop190
	i32.sub 	$push55=, $pop54, $5
	i32.const	$push56=, 56
	i32.add 	$push57=, $10, $pop56
	i32.load	$push189=, 0($pop57)
	tee_local	$push188=, $0=, $pop189
	i32.sub 	$5=, $pop55, $pop188
	i32.sub 	$push58=, $0, $2
	i64.extend_u/i32	$7=, $pop58
.LBB6_23:
	loop    	
	i32.const	$push196=, -1
	i32.add 	$5=, $5, $pop196
	i64.const	$push195=, 7
	i64.shr_u	$push194=, $7, $pop195
	tee_local	$push193=, $7=, $pop194
	i64.const	$push192=, 0
	i64.ne  	$push59=, $pop193, $pop192
	br_if   	0, $pop59
	end_loop
	i32.eqz 	$push60=, $5
	i32.const	$push61=, .L.str.13
	call    	eosio_assert@FUNCTION, $pop60, $pop61
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$5=, .L.str.9
	i64.load	$1=, 24($10)
	i64.const	$8=, 0
.LBB6_25:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push197=, 6
	i64.gt_u	$push62=, $7, $pop197
	br_if   	0, $pop62
	i32.load8_s	$push202=, 0($5)
	tee_local	$push201=, $2=, $pop202
	i32.const	$push200=, -97
	i32.add 	$push64=, $pop201, $pop200
	i32.const	$push199=, 255
	i32.and 	$push65=, $pop64, $pop199
	i32.const	$push198=, 25
	i32.gt_u	$push66=, $pop65, $pop198
	br_if   	1, $pop66
	i32.const	$push203=, 165
	i32.add 	$2=, $2, $pop203
	br      	2
.LBB6_28:
	end_block
	i64.const	$9=, 0
	i64.const	$push204=, 11
	i64.le_u	$push63=, $7, $pop204
	br_if   	2, $pop63
	br      	3
.LBB6_29:
	end_block
	i32.const	$push209=, 208
	i32.add 	$push67=, $2, $pop209
	i32.const	$push208=, 0
	i32.const	$push207=, -49
	i32.add 	$push68=, $2, $pop207
	i32.const	$push206=, 255
	i32.and 	$push69=, $pop68, $pop206
	i32.const	$push205=, 5
	i32.lt_u	$push70=, $pop69, $pop205
	i32.select	$2=, $pop67, $pop208, $pop70
.LBB6_30:
	end_block
	i64.extend_u/i32	$push71=, $2
	i64.const	$push211=, 56
	i64.shl 	$push72=, $pop71, $pop211
	i64.const	$push210=, 56
	i64.shr_s	$9=, $pop72, $pop210
.LBB6_31:
	end_block
	i64.const	$push213=, 31
	i64.and 	$push74=, $9, $pop213
	i64.const	$push212=, 4294967295
	i64.and 	$push73=, $6, $pop212
	i64.shl 	$9=, $pop74, $pop73
.LBB6_32:
	end_block
	i32.const	$push219=, 1
	i32.add 	$5=, $5, $pop219
	i64.const	$push218=, 1
	i64.add 	$7=, $7, $pop218
	i64.or  	$8=, $9, $8
	i64.const	$push217=, -5
	i64.add 	$push216=, $6, $pop217
	tee_local	$push215=, $6=, $pop216
	i64.const	$push214=, -6
	i64.ne  	$push75=, $pop215, $pop214
	br_if   	0, $pop75
	end_loop
	i64.eq  	$push76=, $1, $8
	i32.const	$push77=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop76, $pop77
	i32.const	$push114=, 8
	i32.add 	$push115=, $10, $pop114
	i32.const	$push116=, 24
	i32.add 	$push117=, $10, $pop116
	call    	_ZN5eosio6action7data_asI12dummy_actionEET_v@FUNCTION, $pop115, $pop117
	block   	
	block   	
	block   	
	i64.load	$push79=, 9($10):p2align=0
	i64.const	$push78=, 200
	i64.ne  	$push80=, $pop79, $pop78
	br_if   	0, $pop80
	i32.const	$push93=, 0
	i32.const	$push224=, 0
	i32.const	$push223=, 0
	i32.call	$drop=, get_context_free_data@FUNCTION, $pop93, $pop224, $pop223
	i32.const	$push222=, 0
	i32.const	$push94=, .L.str.15
	call    	eosio_assert@FUNCTION, $pop222, $pop94
	i32.load	$push221=, 52($10)
	tee_local	$push220=, $5=, $pop221
	br_if   	1, $pop220
	br      	2
.LBB6_35:
	end_block
	i32.load8_u	$push82=, 8($10)
	i32.const	$push81=, 69
	i32.eq  	$push83=, $pop82, $pop81
	i32.const	$push84=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop83, $pop84
	i64.load	$push86=, 9($10):p2align=0
	i64.const	$push85=, -6119884940280240521
	i64.eq  	$push87=, $pop86, $pop85
	i32.const	$push88=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop87, $pop88
	i32.load	$push90=, 17($10):p2align=0
	i32.const	$push89=, 1951510034
	i32.eq  	$push91=, $pop90, $pop89
	i32.const	$push92=, .L.str.18
	call    	eosio_assert@FUNCTION, $pop91, $pop92
	i32.load	$push226=, 52($10)
	tee_local	$push225=, $5=, $pop226
	i32.eqz 	$push229=, $pop225
	br_if   	1, $pop229
.LBB6_36:
	end_block
	i32.const	$push95=, 56
	i32.add 	$push96=, $10, $pop95
	i32.store	0($pop96), $5
	call    	_ZdlPv@FUNCTION, $5
.LBB6_37:
	end_block
	block   	
	i32.load	$push228=, 40($10)
	tee_local	$push227=, $5=, $pop228
	i32.eqz 	$push230=, $pop227
	br_if   	0, $pop230
	i32.const	$push97=, 44
	i32.add 	$push98=, $10, $pop97
	i32.store	0($pop98), $5
	call    	_ZdlPv@FUNCTION, $5
.LBB6_39:
	end_block
	i32.const	$push105=, 0
	i32.const	$push103=, 176
	i32.add 	$push104=, $10, $pop103
	i32.store	__stack_pointer($pop105), $pop104
	.endfunc
.Lfunc_end6:
	.size	_ZN11test_action17test_dummy_actionEv, .Lfunc_end6-_ZN11test_action17test_dummy_actionEv

	.section	.text._ZN5eosio10get_actionEmm,"axG",@progbits,_ZN5eosio10get_actionEmm,comdat
	.hidden	_ZN5eosio10get_actionEmm
	.weak	_ZN5eosio10get_actionEmm
	.type	_ZN5eosio10get_actionEmm,@function
_ZN5eosio10get_actionEmm:
	.param  	i32, i32, i32
	.local  	i32, i32, i32
	i32.const	$push31=, 0
	i32.load	$push32=, __stack_pointer($pop31)
	i32.const	$push33=, 16
	i32.sub 	$push44=, $pop32, $pop33
	tee_local	$push43=, $4=, $pop44
	copy_local	$5=, $pop43
	i32.const	$push34=, 0
	i32.store	__stack_pointer($pop34), $4
	i32.const	$push0=, 0
	i32.const	$push42=, 0
	i32.call	$push41=, get_action@FUNCTION, $1, $2, $pop0, $pop42
	tee_local	$push40=, $3=, $pop41
	i32.const	$push39=, 0
	i32.gt_s	$push1=, $pop40, $pop39
	i32.const	$push2=, .L.str.423
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	block   	
	block   	
	i32.const	$push3=, 513
	i32.lt_u	$push4=, $3, $pop3
	br_if   	0, $pop4
	i32.call	$4=, malloc@FUNCTION, $3
	br      	1
.LBB7_2:
	end_block
	i32.const	$push30=, 0
	i32.const	$push5=, 15
	i32.add 	$push6=, $3, $pop5
	i32.const	$push7=, -16
	i32.and 	$push8=, $pop6, $pop7
	i32.sub 	$push46=, $4, $pop8
	tee_local	$push45=, $4=, $pop46
	copy_local	$push38=, $pop45
	i32.store	__stack_pointer($pop30), $pop38
.LBB7_3:
	end_block
	i32.call	$push9=, get_action@FUNCTION, $1, $2, $4, $3
	i32.eq  	$push10=, $3, $pop9
	i32.const	$push11=, .L.str.8
	call    	eosio_assert@FUNCTION, $pop10, $pop11
	i64.const	$push12=, 0
	i64.store	16($0), $pop12
	i32.const	$push13=, 24
	i32.add 	$push14=, $0, $pop13
	i64.const	$push58=, 0
	i64.store	0($pop14), $pop58
	i32.const	$push15=, 32
	i32.add 	$push16=, $0, $pop15
	i64.const	$push57=, 0
	i64.store	0($pop16):p2align=2, $pop57
	i32.store	0($5), $4
	i32.add 	$push56=, $4, $3
	tee_local	$push55=, $1=, $pop56
	i32.store	8($5), $pop55
	i32.const	$push17=, 7
	i32.gt_u	$push18=, $3, $pop17
	i32.const	$push19=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop18, $pop19
	i32.const	$push20=, 8
	i32.call	$drop=, memcpy@FUNCTION, $0, $4, $pop20
	i32.const	$push54=, 8
	i32.add 	$push53=, $4, $pop54
	tee_local	$push52=, $3=, $pop53
	i32.sub 	$push21=, $1, $pop52
	i32.const	$push51=, 7
	i32.gt_u	$push22=, $pop21, $pop51
	i32.const	$push50=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop22, $pop50
	i32.const	$push49=, 8
	i32.add 	$push23=, $0, $pop49
	i32.const	$push48=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop23, $3, $pop48
	i32.const	$push24=, 16
	i32.add 	$push25=, $4, $pop24
	i32.store	4($5), $pop25
	i32.const	$push47=, 16
	i32.add 	$push28=, $0, $pop47
	i32.call	$push29=, _ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE@FUNCTION, $5, $pop28
	i32.const	$push26=, 28
	i32.add 	$push27=, $0, $pop26
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE@FUNCTION, $pop29, $pop27
	i32.const	$push37=, 0
	i32.const	$push35=, 16
	i32.add 	$push36=, $5, $pop35
	i32.store	__stack_pointer($pop37), $pop36
	.endfunc
.Lfunc_end7:
	.size	_ZN5eosio10get_actionEmm, .Lfunc_end7-_ZN5eosio10get_actionEmm

	.section	.text._ZN5eosio6action7data_asI12dummy_actionEET_v,"axG",@progbits,_ZN5eosio6action7data_asI12dummy_actionEET_v,comdat
	.hidden	_ZN5eosio6action7data_asI12dummy_actionEET_v
	.weak	_ZN5eosio6action7data_asI12dummy_actionEET_v
	.type	_ZN5eosio6action7data_asI12dummy_actionEET_v,@function
_ZN5eosio6action7data_asI12dummy_actionEET_v:
	.param  	i32, i32
	.local  	i64, i32, i32, i64, i64, i64, i64
	i64.load	$2=, 8($1)
	i64.const	$7=, 0
	i64.const	$8=, 59
	i32.const	$4=, .L.str.339
	i64.const	$5=, 0
.LBB8_1:
	loop    	
	i64.const	$6=, 0
	block   	
	i64.const	$push52=, 11
	i64.gt_u	$push0=, $7, $pop52
	br_if   	0, $pop0
	block   	
	block   	
	i32.load8_s	$push57=, 0($4)
	tee_local	$push56=, $3=, $pop57
	i32.const	$push55=, -97
	i32.add 	$push1=, $pop56, $pop55
	i32.const	$push54=, 255
	i32.and 	$push2=, $pop1, $pop54
	i32.const	$push53=, 25
	i32.gt_u	$push3=, $pop2, $pop53
	br_if   	0, $pop3
	i32.const	$push58=, 165
	i32.add 	$3=, $3, $pop58
	br      	1
.LBB8_4:
	end_block
	i32.const	$push63=, 208
	i32.add 	$push4=, $3, $pop63
	i32.const	$push62=, 0
	i32.const	$push61=, -49
	i32.add 	$push5=, $3, $pop61
	i32.const	$push60=, 255
	i32.and 	$push6=, $pop5, $pop60
	i32.const	$push59=, 5
	i32.lt_u	$push7=, $pop6, $pop59
	i32.select	$3=, $pop4, $pop62, $pop7
.LBB8_5:
	end_block
	i32.const	$push65=, 31
	i32.and 	$push9=, $3, $pop65
	i64.extend_u/i32	$push10=, $pop9
	i64.const	$push64=, 4294967295
	i64.and 	$push8=, $8, $pop64
	i64.shl 	$6=, $pop10, $pop8
.LBB8_6:
	end_block
	i32.const	$push71=, 1
	i32.add 	$4=, $4, $pop71
	i64.const	$push70=, 1
	i64.add 	$7=, $7, $pop70
	i64.or  	$5=, $6, $5
	i64.const	$push69=, -5
	i64.add 	$push68=, $8, $pop69
	tee_local	$push67=, $8=, $pop68
	i64.const	$push66=, -6
	i64.ne  	$push11=, $pop67, $pop66
	br_if   	0, $pop11
	end_loop
	i64.eq  	$push12=, $2, $5
	i32.const	$push13=, .L.str.429
	call    	eosio_assert@FUNCTION, $pop12, $pop13
	i64.load	$2=, 0($1)
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$4=, .L.str.9
	i64.const	$5=, 0
.LBB8_8:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push72=, 6
	i64.gt_u	$push14=, $7, $pop72
	br_if   	0, $pop14
	i32.load8_s	$push77=, 0($4)
	tee_local	$push76=, $3=, $pop77
	i32.const	$push75=, -97
	i32.add 	$push16=, $pop76, $pop75
	i32.const	$push74=, 255
	i32.and 	$push17=, $pop16, $pop74
	i32.const	$push73=, 25
	i32.gt_u	$push18=, $pop17, $pop73
	br_if   	1, $pop18
	i32.const	$push78=, 165
	i32.add 	$3=, $3, $pop78
	br      	2
.LBB8_11:
	end_block
	i64.const	$8=, 0
	i64.const	$push79=, 11
	i64.le_u	$push15=, $7, $pop79
	br_if   	2, $pop15
	br      	3
.LBB8_12:
	end_block
	i32.const	$push84=, 208
	i32.add 	$push19=, $3, $pop84
	i32.const	$push83=, 0
	i32.const	$push82=, -49
	i32.add 	$push20=, $3, $pop82
	i32.const	$push81=, 255
	i32.and 	$push21=, $pop20, $pop81
	i32.const	$push80=, 5
	i32.lt_u	$push22=, $pop21, $pop80
	i32.select	$3=, $pop19, $pop83, $pop22
.LBB8_13:
	end_block
	i64.extend_u/i32	$push23=, $3
	i64.const	$push86=, 56
	i64.shl 	$push24=, $pop23, $pop86
	i64.const	$push85=, 56
	i64.shr_s	$8=, $pop24, $pop85
.LBB8_14:
	end_block
	i64.const	$push88=, 31
	i64.and 	$push26=, $8, $pop88
	i64.const	$push87=, 4294967295
	i64.and 	$push25=, $6, $pop87
	i64.shl 	$8=, $pop26, $pop25
.LBB8_15:
	end_block
	i32.const	$push94=, 1
	i32.add 	$4=, $4, $pop94
	i64.const	$push93=, 1
	i64.add 	$7=, $7, $pop93
	i64.or  	$5=, $8, $5
	i64.const	$push92=, -5
	i64.add 	$push91=, $6, $pop92
	tee_local	$push90=, $6=, $pop91
	i64.const	$push89=, -6
	i64.ne  	$push27=, $pop90, $pop89
	br_if   	0, $pop27
	end_loop
	i64.eq  	$push28=, $2, $5
	i32.const	$push29=, .L.str.430
	call    	eosio_assert@FUNCTION, $pop28, $pop29
	i32.const	$push30=, 32
	i32.add 	$push31=, $1, $pop30
	i32.load	$push32=, 0($pop31)
	i32.load	$push103=, 28($1)
	tee_local	$push102=, $4=, $pop103
	i32.sub 	$push101=, $pop32, $pop102
	tee_local	$push100=, $3=, $pop101
	i32.const	$push33=, 0
	i32.ne  	$push34=, $pop100, $pop33
	i32.const	$push35=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop34, $pop35
	i32.const	$push36=, 1
	i32.call	$drop=, memcpy@FUNCTION, $0, $4, $pop36
	i32.const	$push37=, -1
	i32.add 	$push38=, $3, $pop37
	i32.const	$push39=, 7
	i32.gt_u	$push40=, $pop38, $pop39
	i32.const	$push99=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop40, $pop99
	i32.const	$push98=, 1
	i32.add 	$push41=, $0, $pop98
	i32.const	$push97=, 1
	i32.add 	$push42=, $4, $pop97
	i32.const	$push43=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop41, $pop42, $pop43
	i32.const	$push44=, -9
	i32.add 	$push45=, $3, $pop44
	i32.const	$push46=, 3
	i32.gt_u	$push47=, $pop45, $pop46
	i32.const	$push96=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop47, $pop96
	i32.const	$push48=, 9
	i32.add 	$push49=, $0, $pop48
	i32.const	$push95=, 9
	i32.add 	$push50=, $4, $pop95
	i32.const	$push51=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop49, $pop50, $pop51
	.endfunc
.Lfunc_end8:
	.size	_ZN5eosio6action7data_asI12dummy_actionEET_v, .Lfunc_end8-_ZN5eosio6action7data_asI12dummy_actionEET_v

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE
	.type	_ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE,@function
_ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32
	i32.load	$7=, 4($0)
	i32.const	$6=, 0
	i64.const	$5=, 0
	i32.const	$push0=, 8
	i32.add 	$2=, $0, $pop0
	i32.const	$push3=, 4
	i32.add 	$3=, $0, $pop3
.LBB9_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $7, $pop1
	i32.const	$push42=, .L.str.424
	call    	eosio_assert@FUNCTION, $pop2, $pop42
	i32.load	$push41=, 0($3)
	tee_local	$push40=, $7=, $pop41
	i32.load8_u	$4=, 0($pop40)
	i32.const	$push39=, 1
	i32.add 	$push38=, $7, $pop39
	tee_local	$push37=, $7=, $pop38
	i32.store	0($3), $pop37
	i32.const	$push36=, 127
	i32.and 	$push4=, $4, $pop36
	i32.const	$push35=, 255
	i32.and 	$push34=, $6, $pop35
	tee_local	$push33=, $6=, $pop34
	i32.shl 	$push5=, $pop4, $pop33
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$5=, $pop6, $5
	i32.const	$push32=, 7
	i32.add 	$6=, $6, $pop32
	i32.const	$push31=, 7
	i32.shr_u	$push7=, $4, $pop31
	br_if   	0, $pop7
	end_loop
	block   	
	block   	
	block   	
	i32.wrap/i64	$push51=, $5
	tee_local	$push50=, $4=, $pop51
	i32.load	$push49=, 4($1)
	tee_local	$push48=, $2=, $pop49
	i32.load	$push47=, 0($1)
	tee_local	$push46=, $7=, $pop47
	i32.sub 	$push8=, $pop48, $pop46
	i32.const	$push45=, 4
	i32.shr_s	$push44=, $pop8, $pop45
	tee_local	$push43=, $6=, $pop44
	i32.le_u	$push9=, $pop50, $pop43
	br_if   	0, $pop9
	i32.sub 	$push14=, $4, $6
	call    	_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE8__appendEj@FUNCTION, $1, $pop14
	i32.load	$push56=, 0($1)
	tee_local	$push55=, $7=, $pop56
	i32.const	$push54=, 4
	i32.add 	$push15=, $1, $pop54
	i32.load	$push53=, 0($pop15)
	tee_local	$push52=, $2=, $pop53
	i32.ne  	$push16=, $pop55, $pop52
	br_if   	1, $pop16
	br      	2
.LBB9_4:
	end_block
	block   	
	i32.ge_u	$push10=, $4, $6
	br_if   	0, $pop10
	i32.const	$push11=, 4
	i32.add 	$push12=, $1, $pop11
	i32.const	$push59=, 4
	i32.shl 	$push13=, $4, $pop59
	i32.add 	$push58=, $7, $pop13
	tee_local	$push57=, $2=, $pop58
	i32.store	0($pop12), $pop57
.LBB9_6:
	end_block
	i32.eq  	$push17=, $7, $2
	br_if   	1, $pop17
.LBB9_7:
	end_block
	i32.const	$push18=, 4
	i32.add 	$push61=, $0, $pop18
	tee_local	$push60=, $4=, $pop61
	i32.load	$6=, 0($pop60)
.LBB9_8:
	loop    	
	i32.const	$push80=, 8
	i32.add 	$push79=, $0, $pop80
	tee_local	$push78=, $3=, $pop79
	i32.load	$push19=, 0($pop78)
	i32.sub 	$push20=, $pop19, $6
	i32.const	$push77=, 7
	i32.gt_u	$push21=, $pop20, $pop77
	i32.const	$push76=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop21, $pop76
	i32.load	$push22=, 0($4)
	i32.const	$push75=, 8
	i32.call	$drop=, memcpy@FUNCTION, $7, $pop22, $pop75
	i32.load	$push23=, 0($4)
	i32.const	$push74=, 8
	i32.add 	$push73=, $pop23, $pop74
	tee_local	$push72=, $6=, $pop73
	i32.store	0($4), $pop72
	i32.load	$push24=, 0($3)
	i32.sub 	$push25=, $pop24, $6
	i32.const	$push71=, 7
	i32.gt_u	$push26=, $pop25, $pop71
	i32.const	$push70=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop26, $pop70
	i32.const	$push69=, 8
	i32.add 	$push27=, $7, $pop69
	i32.load	$push28=, 0($4)
	i32.const	$push68=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $pop28, $pop68
	i32.load	$push29=, 0($4)
	i32.const	$push67=, 8
	i32.add 	$push66=, $pop29, $pop67
	tee_local	$push65=, $6=, $pop66
	i32.store	0($4), $pop65
	i32.const	$push64=, 16
	i32.add 	$push63=, $7, $pop64
	tee_local	$push62=, $7=, $pop63
	i32.ne  	$push30=, $pop62, $2
	br_if   	0, $pop30
.LBB9_9:
	end_loop
	end_block
	copy_local	$push81=, $0
	.endfunc
.Lfunc_end9:
	.size	_ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE, .Lfunc_end9-_ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
	.type	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE,@function
_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i64, i32
	i32.load	$5=, 4($0)
	i32.const	$7=, 0
	i64.const	$6=, 0
	i32.const	$push0=, 8
	i32.add 	$2=, $0, $pop0
	i32.const	$push3=, 4
	i32.add 	$3=, $0, $pop3
.LBB10_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $5, $pop1
	i32.const	$push37=, .L.str.424
	call    	eosio_assert@FUNCTION, $pop2, $pop37
	i32.load	$push36=, 0($3)
	tee_local	$push35=, $5=, $pop36
	i32.load8_u	$4=, 0($pop35)
	i32.const	$push34=, 1
	i32.add 	$push33=, $5, $pop34
	tee_local	$push32=, $5=, $pop33
	i32.store	0($3), $pop32
	i32.const	$push31=, 127
	i32.and 	$push4=, $4, $pop31
	i32.const	$push30=, 255
	i32.and 	$push29=, $7, $pop30
	tee_local	$push28=, $7=, $pop29
	i32.shl 	$push5=, $pop4, $pop28
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$6=, $pop6, $6
	i32.const	$push27=, 7
	i32.add 	$7=, $7, $pop27
	i32.const	$push26=, 7
	i32.shr_u	$push7=, $4, $pop26
	br_if   	0, $pop7
	end_loop
	block   	
	block   	
	i32.wrap/i64	$push45=, $6
	tee_local	$push44=, $3=, $pop45
	i32.load	$push43=, 4($1)
	tee_local	$push42=, $7=, $pop43
	i32.load	$push41=, 0($1)
	tee_local	$push40=, $4=, $pop41
	i32.sub 	$push39=, $pop42, $pop40
	tee_local	$push38=, $2=, $pop39
	i32.le_u	$push8=, $pop44, $pop38
	br_if   	0, $pop8
	i32.sub 	$push12=, $3, $2
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $1, $pop12
	i32.const	$push13=, 4
	i32.add 	$push14=, $0, $pop13
	i32.load	$5=, 0($pop14)
	i32.const	$push46=, 4
	i32.add 	$push15=, $1, $pop46
	i32.load	$7=, 0($pop15)
	i32.load	$4=, 0($1)
	br      	1
.LBB10_4:
	end_block
	i32.ge_u	$push9=, $3, $2
	br_if   	0, $pop9
	i32.const	$push10=, 4
	i32.add 	$push11=, $1, $pop10
	i32.add 	$push48=, $4, $3
	tee_local	$push47=, $7=, $pop48
	i32.store	0($pop11), $pop47
.LBB10_6:
	end_block
	i32.const	$push16=, 8
	i32.add 	$push17=, $0, $pop16
	i32.load	$push18=, 0($pop17)
	i32.sub 	$push19=, $pop18, $5
	i32.sub 	$push52=, $7, $4
	tee_local	$push51=, $5=, $pop52
	i32.ge_u	$push20=, $pop19, $pop51
	i32.const	$push21=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop20, $pop21
	i32.const	$push22=, 4
	i32.add 	$push50=, $0, $pop22
	tee_local	$push49=, $7=, $pop50
	i32.load	$push23=, 0($pop49)
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop23, $5
	i32.load	$push24=, 0($7)
	i32.add 	$push25=, $pop24, $5
	i32.store	0($7), $pop25
	copy_local	$push53=, $0
	.endfunc
.Lfunc_end10:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE, .Lfunc_end10-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE

	.section	.text._ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj,"axG",@progbits,_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj,comdat
	.hidden	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
	.weak	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
	.type	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj,@function
_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push19=, 8($0)
	tee_local	$push18=, $2=, $pop19
	i32.load	$push17=, 4($0)
	tee_local	$push16=, $6=, $pop17
	i32.sub 	$push0=, $pop18, $pop16
	i32.ge_u	$push1=, $pop0, $1
	br_if   	0, $pop1
	i32.load	$push25=, 0($0)
	tee_local	$push24=, $5=, $pop25
	i32.sub 	$push23=, $6, $pop24
	tee_local	$push22=, $3=, $pop23
	i32.add 	$push21=, $pop22, $1
	tee_local	$push20=, $4=, $pop21
	i32.const	$push4=, -1
	i32.le_s	$push5=, $pop20, $pop4
	br_if   	2, $pop5
	i32.const	$6=, 2147483647
	block   	
	i32.sub 	$push27=, $2, $5
	tee_local	$push26=, $2=, $pop27
	i32.const	$push6=, 1073741822
	i32.gt_u	$push7=, $pop26, $pop6
	br_if   	0, $pop7
	i32.const	$push8=, 1
	i32.shl 	$push31=, $2, $pop8
	tee_local	$push30=, $6=, $pop31
	i32.lt_u	$push9=, $6, $4
	i32.select	$push29=, $4, $pop30, $pop9
	tee_local	$push28=, $6=, $pop29
	i32.eqz 	$push52=, $pop28
	br_if   	2, $pop52
.LBB11_4:
	end_block
	i32.call	$2=, _Znwj@FUNCTION, $6
	br      	3
.LBB11_5:
	end_block
	i32.const	$push2=, 4
	i32.add 	$0=, $0, $pop2
.LBB11_6:
	loop    	
	i32.const	$push51=, 0
	i32.store8	0($6), $pop51
	i32.load	$push3=, 0($0)
	i32.const	$push50=, 1
	i32.add 	$push49=, $pop3, $pop50
	tee_local	$push48=, $6=, $pop49
	i32.store	0($0), $pop48
	i32.const	$push47=, -1
	i32.add 	$push46=, $1, $pop47
	tee_local	$push45=, $1=, $pop46
	br_if   	0, $pop45
	br      	4
.LBB11_7:
	end_loop
	end_block
	i32.const	$6=, 0
	i32.const	$2=, 0
	br      	1
.LBB11_8:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB11_9:
	end_block
	i32.add 	$4=, $2, $6
	i32.add 	$push33=, $2, $3
	tee_local	$push32=, $5=, $pop33
	copy_local	$6=, $pop32
.LBB11_10:
	loop    	
	i32.const	$push38=, 0
	i32.store8	0($6), $pop38
	i32.const	$push37=, 1
	i32.add 	$6=, $6, $pop37
	i32.const	$push36=, -1
	i32.add 	$push35=, $1, $pop36
	tee_local	$push34=, $1=, $pop35
	br_if   	0, $pop34
	end_loop
	i32.const	$push10=, 4
	i32.add 	$push44=, $0, $pop10
	tee_local	$push43=, $3=, $pop44
	i32.load	$push11=, 0($pop43)
	i32.load	$push42=, 0($0)
	tee_local	$push41=, $1=, $pop42
	i32.sub 	$push40=, $pop11, $pop41
	tee_local	$push39=, $2=, $pop40
	i32.sub 	$5=, $5, $pop39
	block   	
	i32.const	$push12=, 1
	i32.lt_s	$push13=, $2, $pop12
	br_if   	0, $pop13
	i32.call	$drop=, memcpy@FUNCTION, $5, $1, $2
	i32.load	$1=, 0($0)
.LBB11_13:
	end_block
	i32.store	0($0), $5
	i32.store	0($3), $6
	i32.const	$push14=, 8
	i32.add 	$push15=, $0, $pop14
	i32.store	0($pop15), $4
	i32.eqz 	$push53=, $1
	br_if   	0, $pop53
	call    	_ZdlPv@FUNCTION, $1
	return
.LBB11_15:
	end_block
	.endfunc
.Lfunc_end11:
	.size	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj, .Lfunc_end11-_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj

	.section	.text._ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE8__appendEj,"axG",@progbits,_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE8__appendEj,comdat
	.hidden	_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE8__appendEj
	.weak	_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE8__appendEj
	.type	_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE8__appendEj,@function
_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE8__appendEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push30=, 8($0)
	tee_local	$push29=, $2=, $pop30
	i32.load	$push28=, 4($0)
	tee_local	$push27=, $7=, $pop28
	i32.sub 	$push0=, $pop29, $pop27
	i32.const	$push26=, 4
	i32.shr_s	$push1=, $pop0, $pop26
	i32.ge_u	$push2=, $pop1, $1
	br_if   	0, $pop2
	i32.load	$push37=, 0($0)
	tee_local	$push36=, $6=, $pop37
	i32.sub 	$push6=, $7, $pop36
	i32.const	$push35=, 4
	i32.shr_s	$push34=, $pop6, $pop35
	tee_local	$push33=, $3=, $pop34
	i32.add 	$push32=, $pop33, $1
	tee_local	$push31=, $4=, $pop32
	i32.const	$push7=, 268435456
	i32.ge_u	$push8=, $pop31, $pop7
	br_if   	2, $pop8
	i32.const	$5=, 268435455
	block   	
	i32.sub 	$push40=, $2, $6
	tee_local	$push39=, $2=, $pop40
	i32.const	$push38=, 4
	i32.shr_s	$push9=, $pop39, $pop38
	i32.const	$push10=, 134217726
	i32.gt_u	$push11=, $pop9, $pop10
	br_if   	0, $pop11
	i32.const	$push12=, 3
	i32.shr_s	$push44=, $2, $pop12
	tee_local	$push43=, $5=, $pop44
	i32.lt_u	$push13=, $5, $4
	i32.select	$push42=, $4, $pop43, $pop13
	tee_local	$push41=, $5=, $pop42
	i32.eqz 	$push57=, $pop41
	br_if   	2, $pop57
	i32.const	$push14=, 268435456
	i32.ge_u	$push15=, $5, $pop14
	br_if   	4, $pop15
.LBB12_5:
	end_block
	i32.const	$push46=, 4
	i32.shl 	$push16=, $5, $pop46
	i32.call	$2=, _Znwj@FUNCTION, $pop16
	i32.const	$push45=, 4
	i32.add 	$push17=, $0, $pop45
	i32.load	$7=, 0($pop17)
	i32.load	$6=, 0($0)
	br      	4
.LBB12_6:
	end_block
	i32.const	$push56=, 4
	i32.add 	$push3=, $0, $pop56
	i32.const	$push55=, 4
	i32.shl 	$push4=, $1, $pop55
	i32.add 	$push5=, $7, $pop4
	i32.store	0($pop3), $pop5
	return
.LBB12_7:
	end_block
	i32.const	$5=, 0
	i32.const	$2=, 0
	br      	2
.LBB12_8:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB12_9:
	end_block
	call    	abort@FUNCTION
	unreachable
.LBB12_10:
	end_block
	i32.const	$push53=, 4
	i32.shl 	$push18=, $3, $pop53
	i32.add 	$push52=, $2, $pop18
	tee_local	$push51=, $3=, $pop52
	i32.sub 	$push50=, $7, $6
	tee_local	$push49=, $7=, $pop50
	i32.sub 	$4=, $pop51, $pop49
	i32.const	$push48=, 4
	i32.shl 	$push19=, $1, $pop48
	i32.add 	$1=, $3, $pop19
	i32.const	$push47=, 4
	i32.shl 	$push20=, $5, $pop47
	i32.add 	$5=, $2, $pop20
	block   	
	i32.const	$push21=, 1
	i32.lt_s	$push22=, $7, $pop21
	br_if   	0, $pop22
	i32.call	$drop=, memcpy@FUNCTION, $4, $6, $7
	i32.load	$6=, 0($0)
.LBB12_12:
	end_block
	i32.store	0($0), $4
	i32.const	$push54=, 4
	i32.add 	$push23=, $0, $pop54
	i32.store	0($pop23), $1
	i32.const	$push24=, 8
	i32.add 	$push25=, $0, $pop24
	i32.store	0($pop25), $5
	block   	
	i32.eqz 	$push58=, $6
	br_if   	0, $pop58
	call    	_ZdlPv@FUNCTION, $6
.LBB12_14:
	end_block
	.endfunc
.Lfunc_end12:
	.size	_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE8__appendEj, .Lfunc_end12-_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE8__appendEj

	.text
	.hidden	_ZN11test_action16read_action_to_0Ev
	.globl	_ZN11test_action16read_action_to_0Ev
	.type	_ZN11test_action16read_action_to_0Ev,@function
_ZN11test_action16read_action_to_0Ev:
	i32.const	$push1=, 0
	i32.call	$push0=, action_data_size@FUNCTION
	i32.call	$drop=, read_action_data@FUNCTION, $pop1, $pop0
	.endfunc
.Lfunc_end13:
	.size	_ZN11test_action16read_action_to_0Ev, .Lfunc_end13-_ZN11test_action16read_action_to_0Ev

	.hidden	_ZN11test_action18read_action_to_64kEv
	.globl	_ZN11test_action18read_action_to_64kEv
	.type	_ZN11test_action18read_action_to_64kEv,@function
_ZN11test_action18read_action_to_64kEv:
	i32.const	$push1=, 65534
	i32.call	$push0=, action_data_size@FUNCTION
	i32.call	$drop=, read_action_data@FUNCTION, $pop1, $pop0
	.endfunc
.Lfunc_end14:
	.size	_ZN11test_action18read_action_to_64kEv, .Lfunc_end14-_ZN11test_action18read_action_to_64kEv

	.hidden	_ZN11test_action14test_cf_actionEv
	.globl	_ZN11test_action14test_cf_actionEv
	.type	_ZN11test_action14test_cf_actionEv,@function
_ZN11test_action14test_cf_actionEv:
	.local  	i32, i32, i32, i64, i64, i64, i64, i64, i64, i32
	i32.const	$push267=, 0
	i32.const	$push264=, 0
	i32.load	$push265=, __stack_pointer($pop264)
	i32.const	$push266=, 144
	i32.sub 	$push297=, $pop265, $pop266
	tee_local	$push296=, $9=, $pop297
	i32.store	__stack_pointer($pop267), $pop296
	i32.const	$push271=, 104
	i32.add 	$push272=, $9, $pop271
	i32.const	$push0=, 0
	i32.const	$push295=, 0
	call    	_ZN5eosio10get_actionEmm@FUNCTION, $pop272, $pop0, $pop295
	i32.const	$push273=, 96
	i32.add 	$push274=, $9, $pop273
	i32.const	$push275=, 104
	i32.add 	$push276=, $9, $pop275
	call    	_ZN5eosio6action7data_asI9cf_actionEET_v@FUNCTION, $pop274, $pop276
	block   	
	block   	
	block   	
	block   	
	i32.load	$push2=, 96($9)
	i32.const	$push1=, -100
	i32.add 	$push294=, $pop2, $pop1
	tee_local	$push293=, $2=, $pop294
	i32.const	$push3=, 111
	i32.gt_u	$push4=, $pop293, $pop3
	br_if   	0, $pop4
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	br_table 	$2, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 0
.LBB15_2:
	end_block
	i32.load	$push222=, 100($9)
	i32.const	$push303=, 0
	i32.const	$push302=, 0
	i32.call	$push301=, get_context_free_data@FUNCTION, $pop222, $pop303, $pop302
	tee_local	$push300=, $0=, $pop301
	i32.const	$push299=, 0
	i32.gt_s	$push223=, $pop300, $pop299
	i32.const	$push224=, .L.str.19
	call    	eosio_assert@FUNCTION, $pop223, $pop224
	i32.const	$push298=, 0
	i32.store	88($9), $pop298
	i64.const	$push225=, 0
	i64.store	80($9), $pop225
	i32.const	$2=, 0
	block   	
	i32.eqz 	$push650=, $0
	br_if   	0, $pop650
	i32.const	$push304=, -1
	i32.le_s	$push226=, $0, $pop304
	br_if   	16, $pop226
	i32.const	$push228=, 88
	i32.add 	$push229=, $9, $pop228
	i32.call	$push306=, _Znwj@FUNCTION, $0
	tee_local	$push305=, $2=, $pop306
	i32.add 	$push227=, $pop305, $0
	i32.store	0($pop229), $pop227
	i32.store	80($9), $2
	i32.store	84($9), $2
	copy_local	$1=, $0
.LBB15_5:
	loop    	
	i32.const	$push313=, 0
	i32.store8	0($2), $pop313
	i32.load	$push230=, 84($9)
	i32.const	$push312=, 1
	i32.add 	$push311=, $pop230, $pop312
	tee_local	$push310=, $2=, $pop311
	i32.store	84($9), $pop310
	i32.const	$push309=, -1
	i32.add 	$push308=, $1, $pop309
	tee_local	$push307=, $1=, $pop308
	br_if   	0, $pop307
	end_loop
	i32.load	$2=, 80($9)
.LBB15_7:
	end_block
	i32.load	$push231=, 100($9)
	i32.call	$push232=, get_context_free_data@FUNCTION, $pop231, $2, $0
	i32.load	$push234=, 84($9)
	i32.load	$push233=, 80($9)
	i32.sub 	$push235=, $pop234, $pop233
	i32.eq  	$push236=, $pop232, $pop235
	i32.const	$push237=, .L.str.20
	call    	eosio_assert@FUNCTION, $pop236, $pop237
	i32.load	$push238=, 84($9)
	i32.load	$push330=, 80($9)
	tee_local	$push329=, $2=, $pop330
	i32.sub 	$push239=, $pop238, $pop329
	i32.const	$push240=, 3
	i32.gt_u	$push241=, $pop239, $pop240
	i32.const	$push242=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop241, $pop242
	i32.const	$push243=, 4
	i32.call	$drop=, memcpy@FUNCTION, $9, $2, $pop243
	i32.load	$push328=, 0($9)
	tee_local	$push327=, $2=, $pop328
	i32.store	76($9), $pop327
	i32.load	$push244=, 96($9)
	i32.eq  	$push245=, $2, $pop244
	i32.const	$push246=, .L.str.21
	call    	eosio_assert@FUNCTION, $pop245, $pop246
	i32.const	$push277=, 68
	i32.add 	$push278=, $9, $pop277
	i32.const	$push326=, 4
	i32.add 	$push247=, $pop278, $pop326
	i32.const	$push325=, 0
	i32.load8_u	$push248=, .L.str.28+4($pop325)
	i32.store8	0($pop247), $pop248
	i32.const	$push324=, 0
	i32.load	$push249=, .L.str.28($pop324):p2align=0
	i32.store	68($9), $pop249
	i32.const	$push279=, 68
	i32.add 	$push280=, $9, $pop279
	i32.const	$push250=, 5
	call    	sha256@FUNCTION, $pop280, $pop250, $9
	i32.const	$push281=, 68
	i32.add 	$push282=, $9, $pop281
	i32.const	$push323=, 5
	call    	assert_sha256@FUNCTION, $pop282, $pop323, $9
	i32.call	$drop=, action_data_size@FUNCTION
	i32.const	$push251=, .L.str.22
	call    	prints@FUNCTION, $pop251
	i32.const	$push252=, 42
	i32.store	64($9), $pop252
	i32.const	$push283=, 76
	i32.add 	$push284=, $9, $pop283
	i32.const	$push285=, 64
	i32.add 	$push286=, $9, $pop285
	i32.const	$push322=, 4
	i32.const	$push321=, 4
	i32.call	$drop=, memccpy@FUNCTION, $pop284, $pop286, $pop322, $pop321
	i32.call	$push253=, transaction_size@FUNCTION
	i32.const	$push320=, 0
	i32.ne  	$push254=, $pop253, $pop320
	i32.const	$push255=, .L.str.23
	call    	eosio_assert@FUNCTION, $pop254, $pop255
	i32.const	$push257=, 1
	i32.const	$push256=, .L.str.24
	call    	eosio_assert@FUNCTION, $pop257, $pop256
	i32.const	$push287=, 48
	i32.add 	$push288=, $9, $pop287
	i64.const	$push258=, 2
	i64.const	$push319=, 2
	i64.const	$push318=, 2
	i64.const	$push317=, 2
	call    	__divti3@FUNCTION, $pop288, $pop258, $pop319, $pop318, $pop317
	i32.const	$push316=, 1
	i32.const	$push259=, .L.str.25
	call    	eosio_assert@FUNCTION, $pop316, $pop259
	i32.load	$push315=, 80($9)
	tee_local	$push314=, $2=, $pop315
	i32.eqz 	$push651=, $pop314
	br_if   	12, $pop651
	i32.store	84($9), $2
	call    	_ZdlPv@FUNCTION, $2
	i32.load	$push332=, 132($9)
	tee_local	$push331=, $2=, $pop332
	br_if   	13, $pop331
	br      	14
.LBB15_9:
	end_block
	i64.load	$push219=, 112($9)
	i32.call	$drop=, is_privileged@FUNCTION, $pop219
	i32.const	$push221=, 0
	i32.const	$push220=, .L.str.26
	call    	eosio_assert@FUNCTION, $pop221, $pop220
	i32.load	$push334=, 132($9)
	tee_local	$push333=, $2=, $pop334
	br_if   	12, $pop333
	br      	13
.LBB15_10:
	end_block
	i32.const	$push217=, 0
	i32.const	$push338=, 0
	i32.call	$drop=, get_active_producers@FUNCTION, $pop217, $pop338
	i32.const	$push337=, 0
	i32.const	$push218=, .L.str.27
	call    	eosio_assert@FUNCTION, $pop337, $pop218
	i32.load	$push336=, 132($9)
	tee_local	$push335=, $2=, $pop336
	br_if   	11, $pop335
	br      	12
.LBB15_11:
	end_block
	i64.const	$4=, 0
	i64.const	$3=, 59
	i32.const	$2=, .L.str.9
	i64.const	$5=, 0
.LBB15_12:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push339=, 6
	i64.gt_u	$push170=, $4, $pop339
	br_if   	0, $pop170
	i32.load8_s	$push344=, 0($2)
	tee_local	$push343=, $1=, $pop344
	i32.const	$push342=, -97
	i32.add 	$push172=, $pop343, $pop342
	i32.const	$push341=, 255
	i32.and 	$push173=, $pop172, $pop341
	i32.const	$push340=, 25
	i32.gt_u	$push174=, $pop173, $pop340
	br_if   	1, $pop174
	i32.const	$push345=, 165
	i32.add 	$1=, $1, $pop345
	br      	2
.LBB15_15:
	end_block
	i64.const	$6=, 0
	i64.const	$push346=, 11
	i64.le_u	$push171=, $4, $pop346
	br_if   	2, $pop171
	br      	3
.LBB15_16:
	end_block
	i32.const	$push351=, 208
	i32.add 	$push175=, $1, $pop351
	i32.const	$push350=, 0
	i32.const	$push349=, -49
	i32.add 	$push176=, $1, $pop349
	i32.const	$push348=, 255
	i32.and 	$push177=, $pop176, $pop348
	i32.const	$push347=, 5
	i32.lt_u	$push178=, $pop177, $pop347
	i32.select	$1=, $pop175, $pop350, $pop178
.LBB15_17:
	end_block
	i64.extend_u/i32	$push179=, $1
	i64.const	$push353=, 56
	i64.shl 	$push180=, $pop179, $pop353
	i64.const	$push352=, 56
	i64.shr_s	$6=, $pop180, $pop352
.LBB15_18:
	end_block
	i64.const	$push355=, 31
	i64.and 	$push182=, $6, $pop355
	i64.const	$push354=, 4294967295
	i64.and 	$push181=, $3, $pop354
	i64.shl 	$6=, $pop182, $pop181
.LBB15_19:
	end_block
	i32.const	$push361=, 1
	i32.add 	$2=, $2, $pop361
	i64.const	$push360=, 1
	i64.add 	$4=, $4, $pop360
	i64.or  	$5=, $6, $5
	i64.const	$push359=, -5
	i64.add 	$push358=, $3, $pop359
	tee_local	$push357=, $3=, $pop358
	i64.const	$push356=, -6
	i64.ne  	$push183=, $pop357, $pop356
	br_if   	0, $pop183
	end_loop
	i64.const	$4=, 0
	i64.const	$3=, 59
	i32.const	$2=, .L.str.9
	i64.const	$7=, 0
.LBB15_21:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push362=, 6
	i64.gt_u	$push184=, $4, $pop362
	br_if   	0, $pop184
	i32.load8_s	$push367=, 0($2)
	tee_local	$push366=, $1=, $pop367
	i32.const	$push365=, -97
	i32.add 	$push186=, $pop366, $pop365
	i32.const	$push364=, 255
	i32.and 	$push187=, $pop186, $pop364
	i32.const	$push363=, 25
	i32.gt_u	$push188=, $pop187, $pop363
	br_if   	1, $pop188
	i32.const	$push368=, 165
	i32.add 	$1=, $1, $pop368
	br      	2
.LBB15_24:
	end_block
	i64.const	$6=, 0
	i64.const	$push369=, 11
	i64.le_u	$push185=, $4, $pop369
	br_if   	2, $pop185
	br      	3
.LBB15_25:
	end_block
	i32.const	$push374=, 208
	i32.add 	$push189=, $1, $pop374
	i32.const	$push373=, 0
	i32.const	$push372=, -49
	i32.add 	$push190=, $1, $pop372
	i32.const	$push371=, 255
	i32.and 	$push191=, $pop190, $pop371
	i32.const	$push370=, 5
	i32.lt_u	$push192=, $pop191, $pop370
	i32.select	$1=, $pop189, $pop373, $pop192
.LBB15_26:
	end_block
	i64.extend_u/i32	$push193=, $1
	i64.const	$push376=, 56
	i64.shl 	$push194=, $pop193, $pop376
	i64.const	$push375=, 56
	i64.shr_s	$6=, $pop194, $pop375
.LBB15_27:
	end_block
	i64.const	$push378=, 31
	i64.and 	$push196=, $6, $pop378
	i64.const	$push377=, 4294967295
	i64.and 	$push195=, $3, $pop377
	i64.shl 	$6=, $pop196, $pop195
.LBB15_28:
	end_block
	i32.const	$push384=, 1
	i32.add 	$2=, $2, $pop384
	i64.const	$push383=, 1
	i64.add 	$4=, $4, $pop383
	i64.or  	$7=, $6, $7
	i64.const	$push382=, -5
	i64.add 	$push381=, $3, $pop382
	tee_local	$push380=, $3=, $pop381
	i64.const	$push379=, -6
	i64.ne  	$push197=, $pop380, $pop379
	br_if   	0, $pop197
	end_loop
	i64.const	$4=, 0
	i64.const	$3=, 59
	i32.const	$2=, .L.str.9
	i64.const	$8=, 0
.LBB15_30:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push385=, 6
	i64.gt_u	$push198=, $4, $pop385
	br_if   	0, $pop198
	i32.load8_s	$push390=, 0($2)
	tee_local	$push389=, $1=, $pop390
	i32.const	$push388=, -97
	i32.add 	$push200=, $pop389, $pop388
	i32.const	$push387=, 255
	i32.and 	$push201=, $pop200, $pop387
	i32.const	$push386=, 25
	i32.gt_u	$push202=, $pop201, $pop386
	br_if   	1, $pop202
	i32.const	$push391=, 165
	i32.add 	$1=, $1, $pop391
	br      	2
.LBB15_33:
	end_block
	i64.const	$6=, 0
	i64.const	$push392=, 11
	i64.le_u	$push199=, $4, $pop392
	br_if   	2, $pop199
	br      	3
.LBB15_34:
	end_block
	i32.const	$push397=, 208
	i32.add 	$push203=, $1, $pop397
	i32.const	$push396=, 0
	i32.const	$push395=, -49
	i32.add 	$push204=, $1, $pop395
	i32.const	$push394=, 255
	i32.and 	$push205=, $pop204, $pop394
	i32.const	$push393=, 5
	i32.lt_u	$push206=, $pop205, $pop393
	i32.select	$1=, $pop203, $pop396, $pop206
.LBB15_35:
	end_block
	i64.extend_u/i32	$push207=, $1
	i64.const	$push399=, 56
	i64.shl 	$push208=, $pop207, $pop399
	i64.const	$push398=, 56
	i64.shr_s	$6=, $pop208, $pop398
.LBB15_36:
	end_block
	i64.const	$push401=, 31
	i64.and 	$push210=, $6, $pop401
	i64.const	$push400=, 4294967295
	i64.and 	$push209=, $3, $pop400
	i64.shl 	$6=, $pop210, $pop209
.LBB15_37:
	end_block
	i32.const	$push407=, 1
	i32.add 	$2=, $2, $pop407
	i64.const	$push406=, 1
	i64.add 	$4=, $4, $pop406
	i64.or  	$8=, $6, $8
	i64.const	$push405=, -5
	i64.add 	$push404=, $3, $pop405
	tee_local	$push403=, $3=, $pop404
	i64.const	$push402=, -6
	i64.ne  	$push211=, $pop403, $pop402
	br_if   	0, $pop211
	end_loop
	i64.const	$push214=, 0
	i32.const	$push213=, .L.str.28
	i32.const	$push212=, 4
	i32.call	$drop=, db_store_i64@FUNCTION, $5, $7, $8, $pop214, $pop213, $pop212
	i32.const	$push216=, 0
	i32.const	$push215=, .L.str.29
	call    	eosio_assert@FUNCTION, $pop216, $pop215
	i32.load	$push409=, 132($9)
	tee_local	$push408=, $2=, $pop409
	br_if   	10, $pop408
	br      	11
.LBB15_39:
	end_block
	i64.const	$4=, 0
	i64.const	$push410=, 0
	i64.store	0($9), $pop410
	i64.const	$3=, 59
	i32.const	$2=, .L.str.9
	i64.const	$5=, 0
.LBB15_40:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push411=, 6
	i64.gt_u	$push125=, $4, $pop411
	br_if   	0, $pop125
	i32.load8_s	$push416=, 0($2)
	tee_local	$push415=, $1=, $pop416
	i32.const	$push414=, -97
	i32.add 	$push127=, $pop415, $pop414
	i32.const	$push413=, 255
	i32.and 	$push128=, $pop127, $pop413
	i32.const	$push412=, 25
	i32.gt_u	$push129=, $pop128, $pop412
	br_if   	1, $pop129
	i32.const	$push417=, 165
	i32.add 	$1=, $1, $pop417
	br      	2
.LBB15_43:
	end_block
	i64.const	$6=, 0
	i64.const	$push418=, 11
	i64.le_u	$push126=, $4, $pop418
	br_if   	2, $pop126
	br      	3
.LBB15_44:
	end_block
	i32.const	$push423=, 208
	i32.add 	$push130=, $1, $pop423
	i32.const	$push422=, 0
	i32.const	$push421=, -49
	i32.add 	$push131=, $1, $pop421
	i32.const	$push420=, 255
	i32.and 	$push132=, $pop131, $pop420
	i32.const	$push419=, 5
	i32.lt_u	$push133=, $pop132, $pop419
	i32.select	$1=, $pop130, $pop422, $pop133
.LBB15_45:
	end_block
	i64.extend_u/i32	$push134=, $1
	i64.const	$push425=, 56
	i64.shl 	$push135=, $pop134, $pop425
	i64.const	$push424=, 56
	i64.shr_s	$6=, $pop135, $pop424
.LBB15_46:
	end_block
	i64.const	$push427=, 31
	i64.and 	$push137=, $6, $pop427
	i64.const	$push426=, 4294967295
	i64.and 	$push136=, $3, $pop426
	i64.shl 	$6=, $pop137, $pop136
.LBB15_47:
	end_block
	i32.const	$push433=, 1
	i32.add 	$2=, $2, $pop433
	i64.const	$push432=, 1
	i64.add 	$4=, $4, $pop432
	i64.or  	$5=, $6, $5
	i64.const	$push431=, -5
	i64.add 	$push430=, $3, $pop431
	tee_local	$push429=, $3=, $pop430
	i64.const	$push428=, -6
	i64.ne  	$push138=, $pop429, $pop428
	br_if   	0, $pop138
	end_loop
	i64.const	$4=, 0
	i64.const	$3=, 59
	i32.const	$2=, .L.str.9
	i64.const	$7=, 0
.LBB15_49:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push434=, 6
	i64.gt_u	$push139=, $4, $pop434
	br_if   	0, $pop139
	i32.load8_s	$push439=, 0($2)
	tee_local	$push438=, $1=, $pop439
	i32.const	$push437=, -97
	i32.add 	$push141=, $pop438, $pop437
	i32.const	$push436=, 255
	i32.and 	$push142=, $pop141, $pop436
	i32.const	$push435=, 25
	i32.gt_u	$push143=, $pop142, $pop435
	br_if   	1, $pop143
	i32.const	$push440=, 165
	i32.add 	$1=, $1, $pop440
	br      	2
.LBB15_52:
	end_block
	i64.const	$6=, 0
	i64.const	$push441=, 11
	i64.le_u	$push140=, $4, $pop441
	br_if   	2, $pop140
	br      	3
.LBB15_53:
	end_block
	i32.const	$push446=, 208
	i32.add 	$push144=, $1, $pop446
	i32.const	$push445=, 0
	i32.const	$push444=, -49
	i32.add 	$push145=, $1, $pop444
	i32.const	$push443=, 255
	i32.and 	$push146=, $pop145, $pop443
	i32.const	$push442=, 5
	i32.lt_u	$push147=, $pop146, $pop442
	i32.select	$1=, $pop144, $pop445, $pop147
.LBB15_54:
	end_block
	i64.extend_u/i32	$push148=, $1
	i64.const	$push448=, 56
	i64.shl 	$push149=, $pop148, $pop448
	i64.const	$push447=, 56
	i64.shr_s	$6=, $pop149, $pop447
.LBB15_55:
	end_block
	i64.const	$push450=, 31
	i64.and 	$push151=, $6, $pop450
	i64.const	$push449=, 4294967295
	i64.and 	$push150=, $3, $pop449
	i64.shl 	$6=, $pop151, $pop150
.LBB15_56:
	end_block
	i32.const	$push456=, 1
	i32.add 	$2=, $2, $pop456
	i64.const	$push455=, 1
	i64.add 	$4=, $4, $pop455
	i64.or  	$7=, $6, $7
	i64.const	$push454=, -5
	i64.add 	$push453=, $3, $pop454
	tee_local	$push452=, $3=, $pop453
	i64.const	$push451=, -6
	i64.ne  	$push152=, $pop452, $pop451
	br_if   	0, $pop152
	end_loop
	i64.const	$4=, 0
	i64.const	$3=, 59
	i32.const	$2=, .L.str.9
	i64.const	$8=, 0
.LBB15_58:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push457=, 6
	i64.gt_u	$push153=, $4, $pop457
	br_if   	0, $pop153
	i32.load8_s	$push462=, 0($2)
	tee_local	$push461=, $1=, $pop462
	i32.const	$push460=, -97
	i32.add 	$push155=, $pop461, $pop460
	i32.const	$push459=, 255
	i32.and 	$push156=, $pop155, $pop459
	i32.const	$push458=, 25
	i32.gt_u	$push157=, $pop156, $pop458
	br_if   	1, $pop157
	i32.const	$push463=, 165
	i32.add 	$1=, $1, $pop463
	br      	2
.LBB15_61:
	end_block
	i64.const	$6=, 0
	i64.const	$push464=, 11
	i64.le_u	$push154=, $4, $pop464
	br_if   	2, $pop154
	br      	3
.LBB15_62:
	end_block
	i32.const	$push469=, 208
	i32.add 	$push158=, $1, $pop469
	i32.const	$push468=, 0
	i32.const	$push467=, -49
	i32.add 	$push159=, $1, $pop467
	i32.const	$push466=, 255
	i32.and 	$push160=, $pop159, $pop466
	i32.const	$push465=, 5
	i32.lt_u	$push161=, $pop160, $pop465
	i32.select	$1=, $pop158, $pop468, $pop161
.LBB15_63:
	end_block
	i64.extend_u/i32	$push162=, $1
	i64.const	$push471=, 56
	i64.shl 	$push163=, $pop162, $pop471
	i64.const	$push470=, 56
	i64.shr_s	$6=, $pop163, $pop470
.LBB15_64:
	end_block
	i64.const	$push473=, 31
	i64.and 	$push165=, $6, $pop473
	i64.const	$push472=, 4294967295
	i64.and 	$push164=, $3, $pop472
	i64.shl 	$6=, $pop165, $pop164
.LBB15_65:
	end_block
	i32.const	$push479=, 1
	i32.add 	$2=, $2, $pop479
	i64.const	$push478=, 1
	i64.add 	$4=, $4, $pop478
	i64.or  	$8=, $6, $8
	i64.const	$push477=, -5
	i64.add 	$push476=, $3, $pop477
	tee_local	$push475=, $3=, $pop476
	i64.const	$push474=, -6
	i64.ne  	$push166=, $pop475, $pop474
	br_if   	0, $pop166
	end_loop
	i64.const	$push167=, 0
	i32.call	$drop=, db_idx64_store@FUNCTION, $5, $7, $8, $pop167, $9
	i32.const	$push169=, 0
	i32.const	$push168=, .L.str.29
	call    	eosio_assert@FUNCTION, $pop169, $pop168
	i32.load	$push481=, 132($9)
	tee_local	$push480=, $2=, $pop481
	br_if   	9, $pop480
	br      	10
.LBB15_67:
	end_block
	i64.const	$4=, 0
	i64.const	$3=, 59
	i32.const	$2=, .L.str.9
	i64.const	$5=, 0
.LBB15_68:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push482=, 6
	i64.gt_u	$push80=, $4, $pop482
	br_if   	0, $pop80
	i32.load8_s	$push487=, 0($2)
	tee_local	$push486=, $1=, $pop487
	i32.const	$push485=, -97
	i32.add 	$push82=, $pop486, $pop485
	i32.const	$push484=, 255
	i32.and 	$push83=, $pop82, $pop484
	i32.const	$push483=, 25
	i32.gt_u	$push84=, $pop83, $pop483
	br_if   	1, $pop84
	i32.const	$push488=, 165
	i32.add 	$1=, $1, $pop488
	br      	2
.LBB15_71:
	end_block
	i64.const	$6=, 0
	i64.const	$push489=, 11
	i64.le_u	$push81=, $4, $pop489
	br_if   	2, $pop81
	br      	3
.LBB15_72:
	end_block
	i32.const	$push494=, 208
	i32.add 	$push85=, $1, $pop494
	i32.const	$push493=, 0
	i32.const	$push492=, -49
	i32.add 	$push86=, $1, $pop492
	i32.const	$push491=, 255
	i32.and 	$push87=, $pop86, $pop491
	i32.const	$push490=, 5
	i32.lt_u	$push88=, $pop87, $pop490
	i32.select	$1=, $pop85, $pop493, $pop88
.LBB15_73:
	end_block
	i64.extend_u/i32	$push89=, $1
	i64.const	$push496=, 56
	i64.shl 	$push90=, $pop89, $pop496
	i64.const	$push495=, 56
	i64.shr_s	$6=, $pop90, $pop495
.LBB15_74:
	end_block
	i64.const	$push498=, 31
	i64.and 	$push92=, $6, $pop498
	i64.const	$push497=, 4294967295
	i64.and 	$push91=, $3, $pop497
	i64.shl 	$6=, $pop92, $pop91
.LBB15_75:
	end_block
	i32.const	$push504=, 1
	i32.add 	$2=, $2, $pop504
	i64.const	$push503=, 1
	i64.add 	$4=, $4, $pop503
	i64.or  	$5=, $6, $5
	i64.const	$push502=, -5
	i64.add 	$push501=, $3, $pop502
	tee_local	$push500=, $3=, $pop501
	i64.const	$push499=, -6
	i64.ne  	$push93=, $pop500, $pop499
	br_if   	0, $pop93
	end_loop
	i64.const	$4=, 0
	i64.const	$3=, 59
	i32.const	$2=, .L.str.9
	i64.const	$7=, 0
.LBB15_77:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push505=, 6
	i64.gt_u	$push94=, $4, $pop505
	br_if   	0, $pop94
	i32.load8_s	$push510=, 0($2)
	tee_local	$push509=, $1=, $pop510
	i32.const	$push508=, -97
	i32.add 	$push96=, $pop509, $pop508
	i32.const	$push507=, 255
	i32.and 	$push97=, $pop96, $pop507
	i32.const	$push506=, 25
	i32.gt_u	$push98=, $pop97, $pop506
	br_if   	1, $pop98
	i32.const	$push511=, 165
	i32.add 	$1=, $1, $pop511
	br      	2
.LBB15_80:
	end_block
	i64.const	$6=, 0
	i64.const	$push512=, 11
	i64.le_u	$push95=, $4, $pop512
	br_if   	2, $pop95
	br      	3
.LBB15_81:
	end_block
	i32.const	$push517=, 208
	i32.add 	$push99=, $1, $pop517
	i32.const	$push516=, 0
	i32.const	$push515=, -49
	i32.add 	$push100=, $1, $pop515
	i32.const	$push514=, 255
	i32.and 	$push101=, $pop100, $pop514
	i32.const	$push513=, 5
	i32.lt_u	$push102=, $pop101, $pop513
	i32.select	$1=, $pop99, $pop516, $pop102
.LBB15_82:
	end_block
	i64.extend_u/i32	$push103=, $1
	i64.const	$push519=, 56
	i64.shl 	$push104=, $pop103, $pop519
	i64.const	$push518=, 56
	i64.shr_s	$6=, $pop104, $pop518
.LBB15_83:
	end_block
	i64.const	$push521=, 31
	i64.and 	$push106=, $6, $pop521
	i64.const	$push520=, 4294967295
	i64.and 	$push105=, $3, $pop520
	i64.shl 	$6=, $pop106, $pop105
.LBB15_84:
	end_block
	i32.const	$push527=, 1
	i32.add 	$2=, $2, $pop527
	i64.const	$push526=, 1
	i64.add 	$4=, $4, $pop526
	i64.or  	$7=, $6, $7
	i64.const	$push525=, -5
	i64.add 	$push524=, $3, $pop525
	tee_local	$push523=, $3=, $pop524
	i64.const	$push522=, -6
	i64.ne  	$push107=, $pop523, $pop522
	br_if   	0, $pop107
	end_loop
	i64.const	$4=, 0
	i64.const	$3=, 59
	i32.const	$2=, .L.str.9
	i64.const	$8=, 0
.LBB15_86:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push528=, 6
	i64.gt_u	$push108=, $4, $pop528
	br_if   	0, $pop108
	i32.load8_s	$push533=, 0($2)
	tee_local	$push532=, $1=, $pop533
	i32.const	$push531=, -97
	i32.add 	$push110=, $pop532, $pop531
	i32.const	$push530=, 255
	i32.and 	$push111=, $pop110, $pop530
	i32.const	$push529=, 25
	i32.gt_u	$push112=, $pop111, $pop529
	br_if   	1, $pop112
	i32.const	$push534=, 165
	i32.add 	$1=, $1, $pop534
	br      	2
.LBB15_89:
	end_block
	i64.const	$6=, 0
	i64.const	$push535=, 11
	i64.le_u	$push109=, $4, $pop535
	br_if   	2, $pop109
	br      	3
.LBB15_90:
	end_block
	i32.const	$push540=, 208
	i32.add 	$push113=, $1, $pop540
	i32.const	$push539=, 0
	i32.const	$push538=, -49
	i32.add 	$push114=, $1, $pop538
	i32.const	$push537=, 255
	i32.and 	$push115=, $pop114, $pop537
	i32.const	$push536=, 5
	i32.lt_u	$push116=, $pop115, $pop536
	i32.select	$1=, $pop113, $pop539, $pop116
.LBB15_91:
	end_block
	i64.extend_u/i32	$push117=, $1
	i64.const	$push542=, 56
	i64.shl 	$push118=, $pop117, $pop542
	i64.const	$push541=, 56
	i64.shr_s	$6=, $pop118, $pop541
.LBB15_92:
	end_block
	i64.const	$push544=, 31
	i64.and 	$push120=, $6, $pop544
	i64.const	$push543=, 4294967295
	i64.and 	$push119=, $3, $pop543
	i64.shl 	$6=, $pop120, $pop119
.LBB15_93:
	end_block
	i32.const	$push550=, 1
	i32.add 	$2=, $2, $pop550
	i64.const	$push549=, 1
	i64.add 	$4=, $4, $pop549
	i64.or  	$8=, $6, $8
	i64.const	$push548=, -5
	i64.add 	$push547=, $3, $pop548
	tee_local	$push546=, $3=, $pop547
	i64.const	$push545=, -6
	i64.ne  	$push121=, $pop546, $pop545
	br_if   	0, $pop121
	end_loop
	i64.const	$push122=, 1
	i32.call	$drop=, db_find_i64@FUNCTION, $5, $7, $8, $pop122
	i32.const	$push124=, 0
	i32.const	$push123=, .L.str.29
	call    	eosio_assert@FUNCTION, $pop124, $pop123
	i32.load	$push552=, 132($9)
	tee_local	$push551=, $2=, $pop552
	br_if   	8, $pop551
	br      	9
.LBB15_95:
	end_block
	i32.const	$push63=, 24
	i32.add 	$push64=, $9, $pop63
	i64.const	$push65=, 0
	i64.store	0($pop64), $pop65
	i32.const	$push66=, 32
	i32.add 	$push67=, $9, $pop66
	i64.const	$push558=, 0
	i64.store	0($pop67), $pop558
	i64.const	$push557=, 0
	i64.store	16($9), $pop557
	i32.const	$push291=, 48
	i32.add 	$push292=, $9, $pop291
	call    	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop292, $9
	i32.load	$push556=, 48($9)
	tee_local	$push555=, $2=, $pop556
	i32.load	$push68=, 52($9)
	i32.sub 	$push69=, $pop68, $2
	call    	send_inline@FUNCTION, $pop555, $pop69
	block   	
	i32.load	$push554=, 48($9)
	tee_local	$push553=, $2=, $pop554
	i32.eqz 	$push652=, $pop553
	br_if   	0, $pop652
	i32.store	52($9), $2
	call    	_ZdlPv@FUNCTION, $2
.LBB15_97:
	end_block
	i32.const	$push71=, 0
	i32.const	$push70=, .L.str.30
	call    	eosio_assert@FUNCTION, $pop71, $pop70
	block   	
	i32.const	$push72=, 28
	i32.add 	$push73=, $9, $pop72
	i32.load	$push560=, 0($pop73)
	tee_local	$push559=, $2=, $pop560
	i32.eqz 	$push653=, $pop559
	br_if   	0, $pop653
	i32.const	$push74=, 32
	i32.add 	$push75=, $9, $pop74
	i32.store	0($pop75), $2
	call    	_ZdlPv@FUNCTION, $2
.LBB15_99:
	end_block
	i32.const	$push76=, 16
	i32.add 	$push77=, $9, $pop76
	i32.load	$push562=, 0($pop77)
	tee_local	$push561=, $2=, $pop562
	i32.eqz 	$push654=, $pop561
	br_if   	6, $pop654
	i32.const	$push78=, 20
	i32.add 	$push79=, $9, $pop78
	i32.store	0($pop79), $2
	call    	_ZdlPv@FUNCTION, $2
	i32.load	$push564=, 132($9)
	tee_local	$push563=, $2=, $pop564
	br_if   	7, $pop563
	br      	8
.LBB15_101:
	end_block
	i64.const	$4=, 0
	i64.const	$3=, 59
	i32.const	$2=, .L.str.28
	i64.const	$5=, 0
.LBB15_102:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push565=, 3
	i64.gt_u	$push47=, $4, $pop565
	br_if   	0, $pop47
	i32.load8_s	$push570=, 0($2)
	tee_local	$push569=, $1=, $pop570
	i32.const	$push568=, -97
	i32.add 	$push49=, $pop569, $pop568
	i32.const	$push567=, 255
	i32.and 	$push50=, $pop49, $pop567
	i32.const	$push566=, 25
	i32.gt_u	$push51=, $pop50, $pop566
	br_if   	1, $pop51
	i32.const	$push571=, 165
	i32.add 	$1=, $1, $pop571
	br      	2
.LBB15_105:
	end_block
	i64.const	$6=, 0
	i64.const	$push572=, 11
	i64.le_u	$push48=, $4, $pop572
	br_if   	2, $pop48
	br      	3
.LBB15_106:
	end_block
	i32.const	$push577=, 208
	i32.add 	$push52=, $1, $pop577
	i32.const	$push576=, 0
	i32.const	$push575=, -49
	i32.add 	$push53=, $1, $pop575
	i32.const	$push574=, 255
	i32.and 	$push54=, $pop53, $pop574
	i32.const	$push573=, 5
	i32.lt_u	$push55=, $pop54, $pop573
	i32.select	$1=, $pop52, $pop576, $pop55
.LBB15_107:
	end_block
	i64.extend_u/i32	$push56=, $1
	i64.const	$push579=, 56
	i64.shl 	$push57=, $pop56, $pop579
	i64.const	$push578=, 56
	i64.shr_s	$6=, $pop57, $pop578
.LBB15_108:
	end_block
	i64.const	$push581=, 31
	i64.and 	$push59=, $6, $pop581
	i64.const	$push580=, 4294967295
	i64.and 	$push58=, $3, $pop580
	i64.shl 	$6=, $pop59, $pop58
.LBB15_109:
	end_block
	i32.const	$push587=, 1
	i32.add 	$2=, $2, $pop587
	i64.const	$push586=, 1
	i64.add 	$4=, $4, $pop586
	i64.or  	$5=, $6, $5
	i64.const	$push585=, -5
	i64.add 	$push584=, $3, $pop585
	tee_local	$push583=, $3=, $pop584
	i64.const	$push582=, -6
	i64.ne  	$push60=, $pop583, $pop582
	br_if   	0, $pop60
	end_loop
	call    	require_auth@FUNCTION, $5
	i32.const	$push62=, 0
	i32.const	$push61=, .L.str.31
	call    	eosio_assert@FUNCTION, $pop62, $pop61
	i32.load	$push589=, 132($9)
	tee_local	$push588=, $2=, $pop589
	br_if   	6, $pop588
	br      	7
.LBB15_111:
	end_block
	i64.call	$drop=, current_time@FUNCTION
	i32.const	$push46=, 0
	i32.const	$push45=, .L.str.32
	call    	eosio_assert@FUNCTION, $pop46, $pop45
	i32.load	$push591=, 132($9)
	tee_local	$push590=, $2=, $pop591
	br_if   	5, $pop590
	br      	6
.LBB15_112:
	end_block
	i64.call	$drop=, current_time@FUNCTION
	i32.const	$push44=, 0
	i32.const	$push43=, .L.str.32
	call    	eosio_assert@FUNCTION, $pop44, $pop43
	i32.load	$push593=, 132($9)
	tee_local	$push592=, $2=, $pop593
	br_if   	4, $pop592
	br      	5
.LBB15_113:
	end_block
	i64.call	$drop=, publication_time@FUNCTION
	i32.const	$push42=, 0
	i32.const	$push41=, .L.str.32
	call    	eosio_assert@FUNCTION, $pop42, $pop41
	i32.load	$push595=, 132($9)
	tee_local	$push594=, $2=, $pop595
	br_if   	3, $pop594
	br      	4
.LBB15_114:
	end_block
	i32.const	$push38=, .L.str.33
	i32.const	$push37=, 6
	call    	send_inline@FUNCTION, $pop38, $pop37
	i32.const	$push40=, 0
	i32.const	$push39=, .L.str.34
	call    	eosio_assert@FUNCTION, $pop40, $pop39
	i32.load	$push597=, 132($9)
	tee_local	$push596=, $2=, $pop597
	br_if   	2, $pop596
	br      	3
.LBB15_115:
	end_block
	i64.const	$4=, 0
	i64.const	$3=, 59
	i32.const	$2=, .L.str.9
	i64.const	$5=, 0
.LBB15_116:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push598=, 6
	i64.gt_u	$push5=, $4, $pop598
	br_if   	0, $pop5
	i32.load8_s	$push603=, 0($2)
	tee_local	$push602=, $1=, $pop603
	i32.const	$push601=, -97
	i32.add 	$push7=, $pop602, $pop601
	i32.const	$push600=, 255
	i32.and 	$push8=, $pop7, $pop600
	i32.const	$push599=, 25
	i32.gt_u	$push9=, $pop8, $pop599
	br_if   	1, $pop9
	i32.const	$push604=, 165
	i32.add 	$1=, $1, $pop604
	br      	2
.LBB15_119:
	end_block
	i64.const	$6=, 0
	i64.const	$push605=, 11
	i64.le_u	$push6=, $4, $pop605
	br_if   	2, $pop6
	br      	3
.LBB15_120:
	end_block
	i32.const	$push610=, 208
	i32.add 	$push10=, $1, $pop610
	i32.const	$push609=, 0
	i32.const	$push608=, -49
	i32.add 	$push11=, $1, $pop608
	i32.const	$push607=, 255
	i32.and 	$push12=, $pop11, $pop607
	i32.const	$push606=, 5
	i32.lt_u	$push13=, $pop12, $pop606
	i32.select	$1=, $pop10, $pop609, $pop13
.LBB15_121:
	end_block
	i64.extend_u/i32	$push14=, $1
	i64.const	$push612=, 56
	i64.shl 	$push15=, $pop14, $pop612
	i64.const	$push611=, 56
	i64.shr_s	$6=, $pop15, $pop611
.LBB15_122:
	end_block
	i64.const	$push614=, 31
	i64.and 	$push17=, $6, $pop614
	i64.const	$push613=, 4294967295
	i64.and 	$push16=, $3, $pop613
	i64.shl 	$6=, $pop17, $pop16
.LBB15_123:
	end_block
	i32.const	$push620=, 1
	i32.add 	$2=, $2, $pop620
	i64.const	$push619=, 1
	i64.add 	$4=, $4, $pop619
	i64.or  	$5=, $6, $5
	i64.const	$push618=, -5
	i64.add 	$push617=, $3, $pop618
	tee_local	$push616=, $3=, $pop617
	i64.const	$push615=, -6
	i64.ne  	$push18=, $pop616, $pop615
	br_if   	0, $pop18
	end_loop
	i64.const	$4=, 0
	i64.const	$push621=, 0
	i64.store	8($9), $pop621
	i64.store	0($9), $5
	i64.const	$3=, 59
	i32.const	$2=, .L.str.9
	i64.const	$5=, 0
.LBB15_125:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push622=, 6
	i64.gt_u	$push19=, $4, $pop622
	br_if   	0, $pop19
	i32.load8_s	$push627=, 0($2)
	tee_local	$push626=, $1=, $pop627
	i32.const	$push625=, -97
	i32.add 	$push21=, $pop626, $pop625
	i32.const	$push624=, 255
	i32.and 	$push22=, $pop21, $pop624
	i32.const	$push623=, 25
	i32.gt_u	$push23=, $pop22, $pop623
	br_if   	1, $pop23
	i32.const	$push628=, 165
	i32.add 	$1=, $1, $pop628
	br      	2
.LBB15_128:
	end_block
	i64.const	$6=, 0
	i64.const	$push629=, 11
	i64.le_u	$push20=, $4, $pop629
	br_if   	2, $pop20
	br      	3
.LBB15_129:
	end_block
	i32.const	$push634=, 208
	i32.add 	$push24=, $1, $pop634
	i32.const	$push633=, 0
	i32.const	$push632=, -49
	i32.add 	$push25=, $1, $pop632
	i32.const	$push631=, 255
	i32.and 	$push26=, $pop25, $pop631
	i32.const	$push630=, 5
	i32.lt_u	$push27=, $pop26, $pop630
	i32.select	$1=, $pop24, $pop633, $pop27
.LBB15_130:
	end_block
	i64.extend_u/i32	$push28=, $1
	i64.const	$push636=, 56
	i64.shl 	$push29=, $pop28, $pop636
	i64.const	$push635=, 56
	i64.shr_s	$6=, $pop29, $pop635
.LBB15_131:
	end_block
	i64.const	$push638=, 31
	i64.and 	$push31=, $6, $pop638
	i64.const	$push637=, 4294967295
	i64.and 	$push30=, $3, $pop637
	i64.shl 	$6=, $pop31, $pop30
.LBB15_132:
	end_block
	i32.const	$push644=, 1
	i32.add 	$2=, $2, $pop644
	i64.const	$push643=, 1
	i64.add 	$4=, $4, $pop643
	i64.or  	$5=, $6, $5
	i64.const	$push642=, -5
	i64.add 	$push641=, $3, $pop642
	tee_local	$push640=, $3=, $pop641
	i64.const	$push639=, -6
	i64.ne  	$push32=, $pop640, $pop639
	br_if   	0, $pop32
	end_loop
	i32.const	$push35=, .L.str.33
	i32.const	$push34=, 6
	i32.const	$push33=, 0
	call    	send_deferred@FUNCTION, $9, $5, $pop35, $pop34, $pop33
	i32.const	$push645=, 0
	i32.const	$push36=, .L.str.34
	call    	eosio_assert@FUNCTION, $pop645, $pop36
.LBB15_134:
	end_block
	i32.load	$push647=, 132($9)
	tee_local	$push646=, $2=, $pop647
	i32.eqz 	$push655=, $pop646
	br_if   	1, $pop655
.LBB15_135:
	end_block
	i32.const	$push260=, 136
	i32.add 	$push261=, $9, $pop260
	i32.store	0($pop261), $2
	call    	_ZdlPv@FUNCTION, $2
.LBB15_136:
	end_block
	block   	
	i32.load	$push649=, 120($9)
	tee_local	$push648=, $2=, $pop649
	i32.eqz 	$push656=, $pop648
	br_if   	0, $pop656
	i32.const	$push262=, 124
	i32.add 	$push263=, $9, $pop262
	i32.store	0($pop263), $2
	call    	_ZdlPv@FUNCTION, $2
.LBB15_138:
	end_block
	i32.const	$push270=, 0
	i32.const	$push268=, 144
	i32.add 	$push269=, $9, $pop268
	i32.store	__stack_pointer($pop270), $pop269
	return
.LBB15_139:
	end_block
	i32.const	$push289=, 80
	i32.add 	$push290=, $9, $pop289
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop290
	unreachable
	.endfunc
.Lfunc_end15:
	.size	_ZN11test_action14test_cf_actionEv, .Lfunc_end15-_ZN11test_action14test_cf_actionEv

	.section	.text._ZN5eosio6action7data_asI9cf_actionEET_v,"axG",@progbits,_ZN5eosio6action7data_asI9cf_actionEET_v,comdat
	.hidden	_ZN5eosio6action7data_asI9cf_actionEET_v
	.weak	_ZN5eosio6action7data_asI9cf_actionEET_v
	.type	_ZN5eosio6action7data_asI9cf_actionEET_v,@function
_ZN5eosio6action7data_asI9cf_actionEET_v:
	.param  	i32, i32
	.local  	i64, i32, i32, i64, i64, i64, i64
	i64.load	$2=, 8($1)
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.306
	i64.const	$7=, 0
.LBB16_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push45=, 8
	i64.gt_u	$push0=, $6, $pop45
	br_if   	0, $pop0
	i32.load8_s	$push50=, 0($4)
	tee_local	$push49=, $3=, $pop50
	i32.const	$push48=, -97
	i32.add 	$push2=, $pop49, $pop48
	i32.const	$push47=, 255
	i32.and 	$push3=, $pop2, $pop47
	i32.const	$push46=, 25
	i32.gt_u	$push4=, $pop3, $pop46
	br_if   	1, $pop4
	i32.const	$push51=, 165
	i32.add 	$3=, $3, $pop51
	br      	2
.LBB16_4:
	end_block
	i64.const	$8=, 0
	i64.const	$push52=, 11
	i64.le_u	$push1=, $6, $pop52
	br_if   	2, $pop1
	br      	3
.LBB16_5:
	end_block
	i32.const	$push57=, 208
	i32.add 	$push5=, $3, $pop57
	i32.const	$push56=, 0
	i32.const	$push55=, -49
	i32.add 	$push6=, $3, $pop55
	i32.const	$push54=, 255
	i32.and 	$push7=, $pop6, $pop54
	i32.const	$push53=, 5
	i32.lt_u	$push8=, $pop7, $pop53
	i32.select	$3=, $pop5, $pop56, $pop8
.LBB16_6:
	end_block
	i64.extend_u/i32	$push9=, $3
	i64.const	$push59=, 56
	i64.shl 	$push10=, $pop9, $pop59
	i64.const	$push58=, 56
	i64.shr_s	$8=, $pop10, $pop58
.LBB16_7:
	end_block
	i64.const	$push61=, 31
	i64.and 	$push12=, $8, $pop61
	i64.const	$push60=, 4294967295
	i64.and 	$push11=, $5, $pop60
	i64.shl 	$8=, $pop12, $pop11
.LBB16_8:
	end_block
	i32.const	$push67=, 1
	i32.add 	$4=, $4, $pop67
	i64.const	$push66=, 1
	i64.add 	$6=, $6, $pop66
	i64.or  	$7=, $8, $7
	i64.const	$push65=, -5
	i64.add 	$push64=, $5, $pop65
	tee_local	$push63=, $5=, $pop64
	i64.const	$push62=, -6
	i64.ne  	$push13=, $pop63, $pop62
	br_if   	0, $pop13
	end_loop
	i64.eq  	$push14=, $2, $7
	i32.const	$push15=, .L.str.429
	call    	eosio_assert@FUNCTION, $pop14, $pop15
	i64.load	$2=, 0($1)
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.9
	i64.const	$7=, 0
.LBB16_10:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push68=, 6
	i64.gt_u	$push16=, $6, $pop68
	br_if   	0, $pop16
	i32.load8_s	$push73=, 0($4)
	tee_local	$push72=, $3=, $pop73
	i32.const	$push71=, -97
	i32.add 	$push18=, $pop72, $pop71
	i32.const	$push70=, 255
	i32.and 	$push19=, $pop18, $pop70
	i32.const	$push69=, 25
	i32.gt_u	$push20=, $pop19, $pop69
	br_if   	1, $pop20
	i32.const	$push74=, 165
	i32.add 	$3=, $3, $pop74
	br      	2
.LBB16_13:
	end_block
	i64.const	$8=, 0
	i64.const	$push75=, 11
	i64.le_u	$push17=, $6, $pop75
	br_if   	2, $pop17
	br      	3
.LBB16_14:
	end_block
	i32.const	$push80=, 208
	i32.add 	$push21=, $3, $pop80
	i32.const	$push79=, 0
	i32.const	$push78=, -49
	i32.add 	$push22=, $3, $pop78
	i32.const	$push77=, 255
	i32.and 	$push23=, $pop22, $pop77
	i32.const	$push76=, 5
	i32.lt_u	$push24=, $pop23, $pop76
	i32.select	$3=, $pop21, $pop79, $pop24
.LBB16_15:
	end_block
	i64.extend_u/i32	$push25=, $3
	i64.const	$push82=, 56
	i64.shl 	$push26=, $pop25, $pop82
	i64.const	$push81=, 56
	i64.shr_s	$8=, $pop26, $pop81
.LBB16_16:
	end_block
	i64.const	$push84=, 31
	i64.and 	$push28=, $8, $pop84
	i64.const	$push83=, 4294967295
	i64.and 	$push27=, $5, $pop83
	i64.shl 	$8=, $pop28, $pop27
.LBB16_17:
	end_block
	i32.const	$push90=, 1
	i32.add 	$4=, $4, $pop90
	i64.const	$push89=, 1
	i64.add 	$6=, $6, $pop89
	i64.or  	$7=, $8, $7
	i64.const	$push88=, -5
	i64.add 	$push87=, $5, $pop88
	tee_local	$push86=, $5=, $pop87
	i64.const	$push85=, -6
	i64.ne  	$push29=, $pop86, $pop85
	br_if   	0, $pop29
	end_loop
	i64.eq  	$push30=, $2, $7
	i32.const	$push31=, .L.str.430
	call    	eosio_assert@FUNCTION, $pop30, $pop31
	i64.const	$push32=, 100
	i64.store	0($0):p2align=2, $pop32
	i32.const	$push33=, 32
	i32.add 	$push34=, $1, $pop33
	i32.load	$push35=, 0($pop34)
	i32.load	$push99=, 28($1)
	tee_local	$push98=, $4=, $pop99
	i32.sub 	$push97=, $pop35, $pop98
	tee_local	$push96=, $3=, $pop97
	i32.const	$push36=, 3
	i32.gt_u	$push37=, $pop96, $pop36
	i32.const	$push38=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop37, $pop38
	i32.const	$push39=, 4
	i32.call	$drop=, memcpy@FUNCTION, $0, $4, $pop39
	i32.const	$push40=, -4
	i32.and 	$push41=, $3, $pop40
	i32.const	$push95=, 4
	i32.ne  	$push42=, $pop41, $pop95
	i32.const	$push94=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop42, $pop94
	i32.const	$push93=, 4
	i32.add 	$push43=, $0, $pop93
	i32.const	$push92=, 4
	i32.add 	$push44=, $4, $pop92
	i32.const	$push91=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop43, $pop44, $pop91
	.endfunc
.Lfunc_end16:
	.size	_ZN5eosio6action7data_asI9cf_actionEET_v, .Lfunc_end16-_ZN5eosio6action7data_asI9cf_actionEET_v

	.section	.text._ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_,"axG",@progbits,_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_,comdat
	.hidden	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
	.weak	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
	.type	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_,@function
_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i64, i32, i32
	i32.const	$push32=, 0
	i32.const	$push29=, 0
	i32.load	$push30=, __stack_pointer($pop29)
	i32.const	$push31=, 16
	i32.sub 	$push45=, $pop30, $pop31
	tee_local	$push44=, $8=, $pop45
	i32.store	__stack_pointer($pop32), $pop44
	i32.const	$push1=, 0
	i32.store	8($0), $pop1
	i64.const	$push43=, 0
	i64.store	0($0):p2align=2, $pop43
	i32.const	$5=, 16
	i32.const	$push42=, 16
	i32.add 	$2=, $1, $pop42
	i32.const	$push2=, 20
	i32.add 	$push3=, $1, $pop2
	i32.load	$push41=, 0($pop3)
	tee_local	$push40=, $7=, $pop41
	i32.load	$push39=, 16($1)
	tee_local	$push38=, $3=, $pop39
	i32.sub 	$push37=, $pop40, $pop38
	tee_local	$push36=, $4=, $pop37
	i32.const	$push4=, 4
	i32.shr_s	$push5=, $pop36, $pop4
	i64.extend_u/i32	$6=, $pop5
.LBB17_1:
	loop    	
	i32.const	$push50=, 1
	i32.add 	$5=, $5, $pop50
	i64.const	$push49=, 7
	i64.shr_u	$push48=, $6, $pop49
	tee_local	$push47=, $6=, $pop48
	i64.const	$push46=, 0
	i64.ne  	$push6=, $pop47, $pop46
	br_if   	0, $pop6
	end_loop
	block   	
	i32.eq  	$push7=, $3, $7
	br_if   	0, $pop7
	i32.const	$push8=, -16
	i32.and 	$push9=, $4, $pop8
	i32.add 	$5=, $pop9, $5
.LBB17_4:
	end_block
	i32.load	$push54=, 28($1)
	tee_local	$push53=, $7=, $pop54
	i32.sub 	$push10=, $pop53, $5
	i32.const	$push11=, 32
	i32.add 	$push12=, $1, $pop11
	i32.load	$push52=, 0($pop12)
	tee_local	$push51=, $3=, $pop52
	i32.sub 	$5=, $pop10, $pop51
	i32.const	$push13=, 28
	i32.add 	$4=, $1, $pop13
	i32.sub 	$push14=, $3, $7
	i64.extend_u/i32	$6=, $pop14
.LBB17_5:
	loop    	
	i32.const	$push59=, -1
	i32.add 	$5=, $5, $pop59
	i64.const	$push58=, 7
	i64.shr_u	$push57=, $6, $pop58
	tee_local	$push56=, $6=, $pop57
	i64.const	$push55=, 0
	i64.ne  	$push15=, $pop56, $pop55
	br_if   	0, $pop15
	end_loop
	i32.const	$7=, 0
	block   	
	block   	
	i32.eqz 	$push68=, $5
	br_if   	0, $pop68
	i32.const	$push60=, 0
	i32.sub 	$push0=, $pop60, $5
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $0, $pop0
	i32.const	$push16=, 4
	i32.add 	$push17=, $0, $pop16
	i32.load	$7=, 0($pop17)
	i32.load	$5=, 0($0)
	br      	1
.LBB17_8:
	end_block
	i32.const	$5=, 0
.LBB17_9:
	end_block
	i32.store	0($8), $5
	i32.store	8($8), $7
	i32.sub 	$push18=, $7, $5
	i32.const	$push19=, 7
	i32.gt_s	$push20=, $pop18, $pop19
	i32.const	$push21=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop20, $pop21
	i32.const	$push22=, 8
	i32.call	$drop=, memcpy@FUNCTION, $5, $1, $pop22
	i32.const	$push67=, 8
	i32.add 	$push66=, $5, $pop67
	tee_local	$push65=, $0=, $pop66
	i32.sub 	$push23=, $7, $pop65
	i32.const	$push64=, 7
	i32.gt_s	$push24=, $pop23, $pop64
	i32.const	$push63=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop24, $pop63
	i32.const	$push62=, 8
	i32.add 	$push25=, $1, $pop62
	i32.const	$push61=, 8
	i32.call	$drop=, memcpy@FUNCTION, $0, $pop25, $pop61
	i32.const	$push26=, 16
	i32.add 	$push27=, $5, $pop26
	i32.store	4($8), $pop27
	i32.call	$push28=, _ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE@FUNCTION, $8, $2
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE@FUNCTION, $pop28, $4
	i32.const	$push35=, 0
	i32.const	$push33=, 16
	i32.add 	$push34=, $8, $pop33
	i32.store	__stack_pointer($pop35), $pop34
	.endfunc
.Lfunc_end17:
	.size	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_, .Lfunc_end17-_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_

	.section	.text._ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,@function
_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i64, i32, i32, i32
	i32.const	$push30=, 0
	i32.const	$push27=, 0
	i32.load	$push28=, __stack_pointer($pop27)
	i32.const	$push29=, 16
	i32.sub 	$push38=, $pop28, $pop29
	tee_local	$push37=, $7=, $pop38
	i32.store	__stack_pointer($pop30), $pop37
	i32.load	$push1=, 4($1)
	i32.load	$push0=, 0($1)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push36=, 4
	i32.shr_s	$push3=, $pop2, $pop36
	i64.extend_u/i32	$4=, $pop3
	i32.load	$5=, 4($0)
	i32.const	$push7=, 8
	i32.add 	$2=, $0, $pop7
.LBB18_1:
	loop    	
	i32.wrap/i64	$3=, $4
	i64.const	$push55=, 7
	i64.shr_u	$push54=, $4, $pop55
	tee_local	$push53=, $4=, $pop54
	i64.const	$push52=, 0
	i64.ne  	$push51=, $pop53, $pop52
	tee_local	$push50=, $6=, $pop51
	i32.const	$push49=, 7
	i32.shl 	$push5=, $pop50, $pop49
	i32.const	$push48=, 127
	i32.and 	$push4=, $3, $pop48
	i32.or  	$push6=, $pop5, $pop4
	i32.store8	15($7), $pop6
	i32.load	$push8=, 0($2)
	i32.sub 	$push9=, $pop8, $5
	i32.const	$push47=, 0
	i32.gt_s	$push10=, $pop9, $pop47
	i32.const	$push46=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop10, $pop46
	i32.const	$push45=, 4
	i32.add 	$push44=, $0, $pop45
	tee_local	$push43=, $3=, $pop44
	i32.load	$push11=, 0($pop43)
	i32.const	$push34=, 15
	i32.add 	$push35=, $7, $pop34
	i32.const	$push42=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop11, $pop35, $pop42
	i32.load	$push12=, 0($3)
	i32.const	$push41=, 1
	i32.add 	$push40=, $pop12, $pop41
	tee_local	$push39=, $5=, $pop40
	i32.store	0($3), $pop39
	br_if   	0, $6
	end_loop
	block   	
	i32.load	$push60=, 0($1)
	tee_local	$push59=, $6=, $pop60
	i32.const	$push58=, 4
	i32.add 	$push13=, $1, $pop58
	i32.load	$push57=, 0($pop13)
	tee_local	$push56=, $1=, $pop57
	i32.eq  	$push14=, $pop59, $pop56
	br_if   	0, $pop14
	i32.const	$push61=, 4
	i32.add 	$3=, $0, $pop61
.LBB18_4:
	loop    	
	i32.const	$push80=, 8
	i32.add 	$push79=, $0, $pop80
	tee_local	$push78=, $2=, $pop79
	i32.load	$push15=, 0($pop78)
	i32.sub 	$push16=, $pop15, $5
	i32.const	$push77=, 7
	i32.gt_s	$push17=, $pop16, $pop77
	i32.const	$push76=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop17, $pop76
	i32.load	$push18=, 0($3)
	i32.const	$push75=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop18, $6, $pop75
	i32.load	$push19=, 0($3)
	i32.const	$push74=, 8
	i32.add 	$push73=, $pop19, $pop74
	tee_local	$push72=, $5=, $pop73
	i32.store	0($3), $pop72
	i32.load	$push20=, 0($2)
	i32.sub 	$push21=, $pop20, $5
	i32.const	$push71=, 7
	i32.gt_s	$push22=, $pop21, $pop71
	i32.const	$push70=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop22, $pop70
	i32.load	$push24=, 0($3)
	i32.const	$push69=, 8
	i32.add 	$push23=, $6, $pop69
	i32.const	$push68=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop24, $pop23, $pop68
	i32.load	$push25=, 0($3)
	i32.const	$push67=, 8
	i32.add 	$push66=, $pop25, $pop67
	tee_local	$push65=, $5=, $pop66
	i32.store	0($3), $pop65
	i32.const	$push64=, 16
	i32.add 	$push63=, $6, $pop64
	tee_local	$push62=, $6=, $pop63
	i32.ne  	$push26=, $pop62, $1
	br_if   	0, $pop26
.LBB18_5:
	end_loop
	end_block
	i32.const	$push33=, 0
	i32.const	$push31=, 16
	i32.add 	$push32=, $7, $pop31
	i32.store	__stack_pointer($pop33), $pop32
	copy_local	$push81=, $0
	.endfunc
.Lfunc_end18:
	.size	_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE, .Lfunc_end18-_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE,@function
_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i64, i32
	i32.const	$push28=, 0
	i32.const	$push25=, 0
	i32.load	$push26=, __stack_pointer($pop25)
	i32.const	$push27=, 16
	i32.sub 	$push35=, $pop26, $pop27
	tee_local	$push34=, $8=, $pop35
	i32.store	__stack_pointer($pop28), $pop34
	i32.load	$push1=, 4($1)
	i32.load	$push0=, 0($1)
	i32.sub 	$push2=, $pop1, $pop0
	i64.extend_u/i32	$7=, $pop2
	i32.load	$6=, 4($0)
	i32.const	$push6=, 8
	i32.add 	$4=, $0, $pop6
	i32.const	$push10=, 4
	i32.add 	$5=, $0, $pop10
.LBB19_1:
	loop    	
	i32.wrap/i64	$2=, $7
	i64.const	$push49=, 7
	i64.shr_u	$push48=, $7, $pop49
	tee_local	$push47=, $7=, $pop48
	i64.const	$push46=, 0
	i64.ne  	$push45=, $pop47, $pop46
	tee_local	$push44=, $3=, $pop45
	i32.const	$push43=, 7
	i32.shl 	$push4=, $pop44, $pop43
	i32.const	$push42=, 127
	i32.and 	$push3=, $2, $pop42
	i32.or  	$push5=, $pop4, $pop3
	i32.store8	15($8), $pop5
	i32.load	$push7=, 0($4)
	i32.sub 	$push8=, $pop7, $6
	i32.const	$push41=, 0
	i32.gt_s	$push9=, $pop8, $pop41
	i32.const	$push40=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop9, $pop40
	i32.load	$push11=, 0($5)
	i32.const	$push32=, 15
	i32.add 	$push33=, $8, $pop32
	i32.const	$push39=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop11, $pop33, $pop39
	i32.load	$push12=, 0($5)
	i32.const	$push38=, 1
	i32.add 	$push37=, $pop12, $pop38
	tee_local	$push36=, $6=, $pop37
	i32.store	0($5), $pop36
	br_if   	0, $3
	end_loop
	i32.const	$push16=, 8
	i32.add 	$push17=, $0, $pop16
	i32.load	$push18=, 0($pop17)
	i32.sub 	$push19=, $pop18, $6
	i32.const	$push13=, 4
	i32.add 	$push14=, $1, $pop13
	i32.load	$push15=, 0($pop14)
	i32.load	$push56=, 0($1)
	tee_local	$push55=, $2=, $pop56
	i32.sub 	$push54=, $pop15, $pop55
	tee_local	$push53=, $5=, $pop54
	i32.ge_s	$push20=, $pop19, $pop53
	i32.const	$push21=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop20, $pop21
	i32.const	$push52=, 4
	i32.add 	$push51=, $0, $pop52
	tee_local	$push50=, $6=, $pop51
	i32.load	$push22=, 0($pop50)
	i32.call	$drop=, memcpy@FUNCTION, $pop22, $2, $5
	i32.load	$push23=, 0($6)
	i32.add 	$push24=, $pop23, $5
	i32.store	0($6), $pop24
	i32.const	$push31=, 0
	i32.const	$push29=, 16
	i32.add 	$push30=, $8, $pop29
	i32.store	__stack_pointer($pop31), $pop30
	copy_local	$push57=, $0
	.endfunc
.Lfunc_end19:
	.size	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE, .Lfunc_end19-_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE

	.text
	.hidden	_ZN11test_action14require_noticeEyyy
	.globl	_ZN11test_action14require_noticeEyyy
	.type	_ZN11test_action14require_noticeEyyy,@function
_ZN11test_action14require_noticeEyyy:
	.param  	i64, i64, i64
	.local  	i32, i32, i64, i64, i64, i64, i64
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.9
	i64.const	$7=, 0
.LBB20_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push91=, 6
	i64.gt_u	$push0=, $6, $pop91
	br_if   	0, $pop0
	i32.load8_s	$push96=, 0($4)
	tee_local	$push95=, $3=, $pop96
	i32.const	$push94=, -97
	i32.add 	$push2=, $pop95, $pop94
	i32.const	$push93=, 255
	i32.and 	$push3=, $pop2, $pop93
	i32.const	$push92=, 25
	i32.gt_u	$push4=, $pop3, $pop92
	br_if   	1, $pop4
	i32.const	$push97=, 165
	i32.add 	$3=, $3, $pop97
	br      	2
.LBB20_4:
	end_block
	i64.const	$8=, 0
	i64.const	$push98=, 11
	i64.le_u	$push1=, $6, $pop98
	br_if   	2, $pop1
	br      	3
.LBB20_5:
	end_block
	i32.const	$push103=, 208
	i32.add 	$push5=, $3, $pop103
	i32.const	$push102=, 0
	i32.const	$push101=, -49
	i32.add 	$push6=, $3, $pop101
	i32.const	$push100=, 255
	i32.and 	$push7=, $pop6, $pop100
	i32.const	$push99=, 5
	i32.lt_u	$push8=, $pop7, $pop99
	i32.select	$3=, $pop5, $pop102, $pop8
.LBB20_6:
	end_block
	i64.extend_u/i32	$push9=, $3
	i64.const	$push105=, 56
	i64.shl 	$push10=, $pop9, $pop105
	i64.const	$push104=, 56
	i64.shr_s	$8=, $pop10, $pop104
.LBB20_7:
	end_block
	i64.const	$push107=, 31
	i64.and 	$push12=, $8, $pop107
	i64.const	$push106=, 4294967295
	i64.and 	$push11=, $5, $pop106
	i64.shl 	$8=, $pop12, $pop11
.LBB20_8:
	end_block
	i32.const	$push113=, 1
	i32.add 	$4=, $4, $pop113
	i64.const	$push112=, 1
	i64.add 	$6=, $6, $pop112
	i64.or  	$7=, $8, $7
	i64.const	$push111=, -5
	i64.add 	$push110=, $5, $pop111
	tee_local	$push109=, $5=, $pop110
	i64.const	$push108=, -6
	i64.ne  	$push13=, $pop109, $pop108
	br_if   	0, $pop13
	end_loop
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.35
	i64.const	$9=, 0
.LBB20_10:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push114=, 3
	i64.gt_u	$push14=, $6, $pop114
	br_if   	0, $pop14
	i32.load8_s	$push119=, 0($4)
	tee_local	$push118=, $3=, $pop119
	i32.const	$push117=, -97
	i32.add 	$push16=, $pop118, $pop117
	i32.const	$push116=, 255
	i32.and 	$push17=, $pop16, $pop116
	i32.const	$push115=, 25
	i32.gt_u	$push18=, $pop17, $pop115
	br_if   	1, $pop18
	i32.const	$push120=, 165
	i32.add 	$3=, $3, $pop120
	br      	2
.LBB20_13:
	end_block
	i64.const	$8=, 0
	i64.const	$push121=, 11
	i64.le_u	$push15=, $6, $pop121
	br_if   	2, $pop15
	br      	3
.LBB20_14:
	end_block
	i32.const	$push126=, 208
	i32.add 	$push19=, $3, $pop126
	i32.const	$push125=, 0
	i32.const	$push124=, -49
	i32.add 	$push20=, $3, $pop124
	i32.const	$push123=, 255
	i32.and 	$push21=, $pop20, $pop123
	i32.const	$push122=, 5
	i32.lt_u	$push22=, $pop21, $pop122
	i32.select	$3=, $pop19, $pop125, $pop22
.LBB20_15:
	end_block
	i64.extend_u/i32	$push23=, $3
	i64.const	$push128=, 56
	i64.shl 	$push24=, $pop23, $pop128
	i64.const	$push127=, 56
	i64.shr_s	$8=, $pop24, $pop127
.LBB20_16:
	end_block
	i64.const	$push130=, 31
	i64.and 	$push26=, $8, $pop130
	i64.const	$push129=, 4294967295
	i64.and 	$push25=, $5, $pop129
	i64.shl 	$8=, $pop26, $pop25
.LBB20_17:
	end_block
	i32.const	$push136=, 1
	i32.add 	$4=, $4, $pop136
	i64.const	$push135=, 1
	i64.add 	$6=, $6, $pop135
	i64.or  	$9=, $8, $9
	i64.const	$push134=, -5
	i64.add 	$push133=, $5, $pop134
	tee_local	$push132=, $5=, $pop133
	i64.const	$push131=, -6
	i64.ne  	$push27=, $pop132, $pop131
	br_if   	0, $pop27
	end_loop
	block   	
	block   	
	block   	
	i64.ne  	$push28=, $7, $0
	br_if   	0, $pop28
	call    	require_recipient@FUNCTION, $9
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.36
	i64.const	$7=, 0
.LBB20_20:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push137=, 3
	i64.gt_u	$push45=, $6, $pop137
	br_if   	0, $pop45
	i32.load8_s	$push142=, 0($4)
	tee_local	$push141=, $3=, $pop142
	i32.const	$push140=, -97
	i32.add 	$push47=, $pop141, $pop140
	i32.const	$push139=, 255
	i32.and 	$push48=, $pop47, $pop139
	i32.const	$push138=, 25
	i32.gt_u	$push49=, $pop48, $pop138
	br_if   	1, $pop49
	i32.const	$push143=, 165
	i32.add 	$3=, $3, $pop143
	br      	2
.LBB20_23:
	end_block
	i64.const	$8=, 0
	i64.const	$push144=, 11
	i64.le_u	$push46=, $6, $pop144
	br_if   	2, $pop46
	br      	3
.LBB20_24:
	end_block
	i32.const	$push149=, 208
	i32.add 	$push50=, $3, $pop149
	i32.const	$push148=, 0
	i32.const	$push147=, -49
	i32.add 	$push51=, $3, $pop147
	i32.const	$push146=, 255
	i32.and 	$push52=, $pop51, $pop146
	i32.const	$push145=, 5
	i32.lt_u	$push53=, $pop52, $pop145
	i32.select	$3=, $pop50, $pop148, $pop53
.LBB20_25:
	end_block
	i64.extend_u/i32	$push54=, $3
	i64.const	$push151=, 56
	i64.shl 	$push55=, $pop54, $pop151
	i64.const	$push150=, 56
	i64.shr_s	$8=, $pop55, $pop150
.LBB20_26:
	end_block
	i64.const	$push153=, 31
	i64.and 	$push57=, $8, $pop153
	i64.const	$push152=, 4294967295
	i64.and 	$push56=, $5, $pop152
	i64.shl 	$8=, $pop57, $pop56
.LBB20_27:
	end_block
	i32.const	$push159=, 1
	i32.add 	$4=, $4, $pop159
	i64.const	$push158=, 1
	i64.add 	$6=, $6, $pop158
	i64.or  	$7=, $8, $7
	i64.const	$push157=, -5
	i64.add 	$push156=, $5, $pop157
	tee_local	$push155=, $5=, $pop156
	i64.const	$push154=, -6
	i64.ne  	$push58=, $pop155, $pop154
	br_if   	0, $pop58
	end_loop
	call    	require_recipient@FUNCTION, $7
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.35
	i64.const	$7=, 0
.LBB20_29:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push160=, 3
	i64.gt_u	$push59=, $6, $pop160
	br_if   	0, $pop59
	i32.load8_s	$push165=, 0($4)
	tee_local	$push164=, $3=, $pop165
	i32.const	$push163=, -97
	i32.add 	$push61=, $pop164, $pop163
	i32.const	$push162=, 255
	i32.and 	$push62=, $pop61, $pop162
	i32.const	$push161=, 25
	i32.gt_u	$push63=, $pop62, $pop161
	br_if   	1, $pop63
	i32.const	$push166=, 165
	i32.add 	$3=, $3, $pop166
	br      	2
.LBB20_32:
	end_block
	i64.const	$8=, 0
	i64.const	$push167=, 11
	i64.le_u	$push60=, $6, $pop167
	br_if   	2, $pop60
	br      	3
.LBB20_33:
	end_block
	i32.const	$push172=, 208
	i32.add 	$push64=, $3, $pop172
	i32.const	$push171=, 0
	i32.const	$push170=, -49
	i32.add 	$push65=, $3, $pop170
	i32.const	$push169=, 255
	i32.and 	$push66=, $pop65, $pop169
	i32.const	$push168=, 5
	i32.lt_u	$push67=, $pop66, $pop168
	i32.select	$3=, $pop64, $pop171, $pop67
.LBB20_34:
	end_block
	i64.extend_u/i32	$push68=, $3
	i64.const	$push174=, 56
	i64.shl 	$push69=, $pop68, $pop174
	i64.const	$push173=, 56
	i64.shr_s	$8=, $pop69, $pop173
.LBB20_35:
	end_block
	i64.const	$push176=, 31
	i64.and 	$push71=, $8, $pop176
	i64.const	$push175=, 4294967295
	i64.and 	$push70=, $5, $pop175
	i64.shl 	$8=, $pop71, $pop70
.LBB20_36:
	end_block
	i32.const	$push182=, 1
	i32.add 	$4=, $4, $pop182
	i64.const	$push181=, 1
	i64.add 	$6=, $6, $pop181
	i64.or  	$7=, $8, $7
	i64.const	$push180=, -5
	i64.add 	$push179=, $5, $pop180
	tee_local	$push178=, $5=, $pop179
	i64.const	$push177=, -6
	i64.ne  	$push72=, $pop178, $pop177
	br_if   	0, $pop72
	end_loop
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.36
	i64.const	$9=, 0
.LBB20_38:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push183=, 3
	i64.gt_u	$push73=, $6, $pop183
	br_if   	0, $pop73
	i32.load8_s	$push188=, 0($4)
	tee_local	$push187=, $3=, $pop188
	i32.const	$push186=, -97
	i32.add 	$push75=, $pop187, $pop186
	i32.const	$push185=, 255
	i32.and 	$push76=, $pop75, $pop185
	i32.const	$push184=, 25
	i32.gt_u	$push77=, $pop76, $pop184
	br_if   	1, $pop77
	i32.const	$push189=, 165
	i32.add 	$3=, $3, $pop189
	br      	2
.LBB20_41:
	end_block
	i64.const	$8=, 0
	i64.const	$push190=, 11
	i64.le_u	$push74=, $6, $pop190
	br_if   	2, $pop74
	br      	3
.LBB20_42:
	end_block
	i32.const	$push195=, 208
	i32.add 	$push78=, $3, $pop195
	i32.const	$push194=, 0
	i32.const	$push193=, -49
	i32.add 	$push79=, $3, $pop193
	i32.const	$push192=, 255
	i32.and 	$push80=, $pop79, $pop192
	i32.const	$push191=, 5
	i32.lt_u	$push81=, $pop80, $pop191
	i32.select	$3=, $pop78, $pop194, $pop81
.LBB20_43:
	end_block
	i64.extend_u/i32	$push82=, $3
	i64.const	$push197=, 56
	i64.shl 	$push83=, $pop82, $pop197
	i64.const	$push196=, 56
	i64.shr_s	$8=, $pop83, $pop196
.LBB20_44:
	end_block
	i64.const	$push199=, 31
	i64.and 	$push85=, $8, $pop199
	i64.const	$push198=, 4294967295
	i64.and 	$push84=, $5, $pop198
	i64.shl 	$8=, $pop85, $pop84
.LBB20_45:
	end_block
	i32.const	$push205=, 1
	i32.add 	$4=, $4, $pop205
	i64.const	$push204=, 1
	i64.add 	$6=, $6, $pop204
	i64.or  	$9=, $8, $9
	i64.const	$push203=, -5
	i64.add 	$push202=, $5, $pop203
	tee_local	$push201=, $5=, $pop202
	i64.const	$push200=, -6
	i64.ne  	$push86=, $pop201, $pop200
	br_if   	0, $pop86
	end_loop
	call    	require_recipient@FUNCTION, $7
	call    	require_recipient@FUNCTION, $9
	i32.const	$push88=, 0
	i32.const	$push87=, .L.str.37
	call    	eosio_assert@FUNCTION, $pop88, $pop87
	br      	1
.LBB20_47:
	end_block
	i64.eq  	$push29=, $9, $0
	br_if   	1, $pop29
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.36
	i64.const	$7=, 0
.LBB20_49:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push206=, 3
	i64.gt_u	$push30=, $6, $pop206
	br_if   	0, $pop30
	i32.load8_s	$push211=, 0($4)
	tee_local	$push210=, $3=, $pop211
	i32.const	$push209=, -97
	i32.add 	$push32=, $pop210, $pop209
	i32.const	$push208=, 255
	i32.and 	$push33=, $pop32, $pop208
	i32.const	$push207=, 25
	i32.gt_u	$push34=, $pop33, $pop207
	br_if   	1, $pop34
	i32.const	$push212=, 165
	i32.add 	$3=, $3, $pop212
	br      	2
.LBB20_52:
	end_block
	i64.const	$8=, 0
	i64.const	$push213=, 11
	i64.le_u	$push31=, $6, $pop213
	br_if   	2, $pop31
	br      	3
.LBB20_53:
	end_block
	i32.const	$push218=, 208
	i32.add 	$push35=, $3, $pop218
	i32.const	$push217=, 0
	i32.const	$push216=, -49
	i32.add 	$push36=, $3, $pop216
	i32.const	$push215=, 255
	i32.and 	$push37=, $pop36, $pop215
	i32.const	$push214=, 5
	i32.lt_u	$push38=, $pop37, $pop214
	i32.select	$3=, $pop35, $pop217, $pop38
.LBB20_54:
	end_block
	i64.extend_u/i32	$push39=, $3
	i64.const	$push220=, 56
	i64.shl 	$push40=, $pop39, $pop220
	i64.const	$push219=, 56
	i64.shr_s	$8=, $pop40, $pop219
.LBB20_55:
	end_block
	i64.const	$push222=, 31
	i64.and 	$push42=, $8, $pop222
	i64.const	$push221=, 4294967295
	i64.and 	$push41=, $5, $pop221
	i64.shl 	$8=, $pop42, $pop41
.LBB20_56:
	end_block
	i32.const	$push228=, 1
	i32.add 	$4=, $4, $pop228
	i64.const	$push227=, 1
	i64.add 	$6=, $6, $pop227
	i64.or  	$7=, $8, $7
	i64.const	$push226=, -5
	i64.add 	$push225=, $5, $pop226
	tee_local	$push224=, $5=, $pop225
	i64.const	$push223=, -6
	i64.ne  	$push43=, $pop224, $pop223
	br_if   	0, $pop43
	end_loop
	i64.eq  	$push44=, $7, $0
	br_if   	1, $pop44
.LBB20_58:
	end_block
	i32.const	$push90=, 0
	i32.const	$push89=, .L.str.37
	call    	eosio_assert@FUNCTION, $pop90, $pop89
.LBB20_59:
	end_block
	.endfunc
.Lfunc_end20:
	.size	_ZN11test_action14require_noticeEyyy, .Lfunc_end20-_ZN11test_action14require_noticeEyyy

	.hidden	_ZN11test_action12require_authEv
	.globl	_ZN11test_action12require_authEv
	.type	_ZN11test_action12require_authEv,@function
_ZN11test_action12require_authEv:
	.local  	i32, i32, i64, i64, i64, i64
	i32.const	$push0=, .L.str.38
	call    	prints@FUNCTION, $pop0
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.39
	i64.const	$4=, 0
.LBB21_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push29=, 3
	i64.gt_u	$push1=, $3, $pop29
	br_if   	0, $pop1
	i32.load8_s	$push34=, 0($1)
	tee_local	$push33=, $0=, $pop34
	i32.const	$push32=, -97
	i32.add 	$push3=, $pop33, $pop32
	i32.const	$push31=, 255
	i32.and 	$push4=, $pop3, $pop31
	i32.const	$push30=, 25
	i32.gt_u	$push5=, $pop4, $pop30
	br_if   	1, $pop5
	i32.const	$push35=, 165
	i32.add 	$0=, $0, $pop35
	br      	2
.LBB21_4:
	end_block
	i64.const	$5=, 0
	i64.const	$push36=, 11
	i64.le_u	$push2=, $3, $pop36
	br_if   	2, $pop2
	br      	3
.LBB21_5:
	end_block
	i32.const	$push41=, 208
	i32.add 	$push6=, $0, $pop41
	i32.const	$push40=, 0
	i32.const	$push39=, -49
	i32.add 	$push7=, $0, $pop39
	i32.const	$push38=, 255
	i32.and 	$push8=, $pop7, $pop38
	i32.const	$push37=, 5
	i32.lt_u	$push9=, $pop8, $pop37
	i32.select	$0=, $pop6, $pop40, $pop9
.LBB21_6:
	end_block
	i64.extend_u/i32	$push10=, $0
	i64.const	$push43=, 56
	i64.shl 	$push11=, $pop10, $pop43
	i64.const	$push42=, 56
	i64.shr_s	$5=, $pop11, $pop42
.LBB21_7:
	end_block
	i64.const	$push45=, 31
	i64.and 	$push13=, $5, $pop45
	i64.const	$push44=, 4294967295
	i64.and 	$push12=, $2, $pop44
	i64.shl 	$5=, $pop13, $pop12
.LBB21_8:
	end_block
	i32.const	$push51=, 1
	i32.add 	$1=, $1, $pop51
	i64.const	$push50=, 1
	i64.add 	$3=, $3, $pop50
	i64.or  	$4=, $5, $4
	i64.const	$push49=, -5
	i64.add 	$push48=, $2, $pop49
	tee_local	$push47=, $2=, $pop48
	i64.const	$push46=, -6
	i64.ne  	$push14=, $pop47, $pop46
	br_if   	0, $pop14
	end_loop
	call    	require_auth@FUNCTION, $4
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.40
	i64.const	$4=, 0
.LBB21_10:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push52=, 3
	i64.gt_u	$push15=, $3, $pop52
	br_if   	0, $pop15
	i32.load8_s	$push57=, 0($1)
	tee_local	$push56=, $0=, $pop57
	i32.const	$push55=, -97
	i32.add 	$push17=, $pop56, $pop55
	i32.const	$push54=, 255
	i32.and 	$push18=, $pop17, $pop54
	i32.const	$push53=, 25
	i32.gt_u	$push19=, $pop18, $pop53
	br_if   	1, $pop19
	i32.const	$push58=, 165
	i32.add 	$0=, $0, $pop58
	br      	2
.LBB21_13:
	end_block
	i64.const	$5=, 0
	i64.const	$push59=, 11
	i64.le_u	$push16=, $3, $pop59
	br_if   	2, $pop16
	br      	3
.LBB21_14:
	end_block
	i32.const	$push64=, 208
	i32.add 	$push20=, $0, $pop64
	i32.const	$push63=, 0
	i32.const	$push62=, -49
	i32.add 	$push21=, $0, $pop62
	i32.const	$push61=, 255
	i32.and 	$push22=, $pop21, $pop61
	i32.const	$push60=, 5
	i32.lt_u	$push23=, $pop22, $pop60
	i32.select	$0=, $pop20, $pop63, $pop23
.LBB21_15:
	end_block
	i64.extend_u/i32	$push24=, $0
	i64.const	$push66=, 56
	i64.shl 	$push25=, $pop24, $pop66
	i64.const	$push65=, 56
	i64.shr_s	$5=, $pop25, $pop65
.LBB21_16:
	end_block
	i64.const	$push68=, 31
	i64.and 	$push27=, $5, $pop68
	i64.const	$push67=, 4294967295
	i64.and 	$push26=, $2, $pop67
	i64.shl 	$5=, $pop27, $pop26
.LBB21_17:
	end_block
	i32.const	$push74=, 1
	i32.add 	$1=, $1, $pop74
	i64.const	$push73=, 1
	i64.add 	$3=, $3, $pop73
	i64.or  	$4=, $5, $4
	i64.const	$push72=, -5
	i64.add 	$push71=, $2, $pop72
	tee_local	$push70=, $2=, $pop71
	i64.const	$push69=, -6
	i64.ne  	$push28=, $pop70, $pop69
	br_if   	0, $pop28
	end_loop
	call    	require_auth@FUNCTION, $4
	.endfunc
.Lfunc_end21:
	.size	_ZN11test_action12require_authEv, .Lfunc_end21-_ZN11test_action12require_authEv

	.hidden	_ZN11test_action12assert_falseEv
	.globl	_ZN11test_action12assert_falseEv
	.type	_ZN11test_action12assert_falseEv,@function
_ZN11test_action12assert_falseEv:
	i32.const	$push1=, 0
	i32.const	$push0=, .L.str.41
	call    	eosio_assert@FUNCTION, $pop1, $pop0
	.endfunc
.Lfunc_end22:
	.size	_ZN11test_action12assert_falseEv, .Lfunc_end22-_ZN11test_action12assert_falseEv

	.hidden	_ZN11test_action11assert_trueEv
	.globl	_ZN11test_action11assert_trueEv
	.type	_ZN11test_action11assert_trueEv,@function
_ZN11test_action11assert_trueEv:
	i32.const	$push1=, 1
	i32.const	$push0=, .L.str.42
	call    	eosio_assert@FUNCTION, $pop1, $pop0
	.endfunc
.Lfunc_end23:
	.size	_ZN11test_action11assert_trueEv, .Lfunc_end23-_ZN11test_action11assert_trueEv

	.hidden	_ZN11test_action14assert_true_cfEv
	.globl	_ZN11test_action14assert_true_cfEv
	.type	_ZN11test_action14assert_true_cfEv,@function
_ZN11test_action14assert_true_cfEv:
	i32.const	$push1=, 1
	i32.const	$push0=, .L.str.42
	call    	eosio_assert@FUNCTION, $pop1, $pop0
	.endfunc
.Lfunc_end24:
	.size	_ZN11test_action14assert_true_cfEv, .Lfunc_end24-_ZN11test_action14assert_true_cfEv

	.hidden	_ZN11test_action10test_abortEv
	.globl	_ZN11test_action10test_abortEv
	.type	_ZN11test_action10test_abortEv,@function
_ZN11test_action10test_abortEv:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end25:
	.size	_ZN11test_action10test_abortEv, .Lfunc_end25-_ZN11test_action10test_abortEv

	.hidden	_ZN11test_action21test_publication_timeEv
	.globl	_ZN11test_action21test_publication_timeEv
	.type	_ZN11test_action21test_publication_timeEv,@function
_ZN11test_action21test_publication_timeEv:
	.local  	i32
	i32.const	$push12=, 0
	i32.const	$push9=, 0
	i32.load	$push10=, __stack_pointer($pop9)
	i32.const	$push11=, 16
	i32.sub 	$push20=, $pop10, $pop11
	tee_local	$push19=, $0=, $pop20
	i32.store	__stack_pointer($pop12), $pop19
	i64.const	$push0=, 0
	i64.store	8($0), $pop0
	i32.const	$push16=, 8
	i32.add 	$push17=, $0, $pop16
	i32.const	$push1=, 8
	i32.call	$push2=, read_action_data@FUNCTION, $pop17, $pop1
	i32.const	$push18=, 8
	i32.eq  	$push3=, $pop2, $pop18
	i32.const	$push4=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop3, $pop4
	i64.load	$push5=, 8($0)
	i64.call	$push6=, publication_time@FUNCTION
	i64.eq  	$push7=, $pop5, $pop6
	i32.const	$push8=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop7, $pop8
	i32.const	$push15=, 0
	i32.const	$push13=, 16
	i32.add 	$push14=, $0, $pop13
	i32.store	__stack_pointer($pop15), $pop14
	.endfunc
.Lfunc_end26:
	.size	_ZN11test_action21test_publication_timeEv, .Lfunc_end26-_ZN11test_action21test_publication_timeEv

	.hidden	_ZN11test_action21test_current_receiverEyyy
	.globl	_ZN11test_action21test_current_receiverEyyy
	.type	_ZN11test_action21test_current_receiverEyyy,@function
_ZN11test_action21test_current_receiverEyyy:
	.param  	i64, i64, i64
	.local  	i32
	i32.const	$push7=, 0
	i32.const	$push4=, 0
	i32.load	$push5=, __stack_pointer($pop4)
	i32.const	$push6=, 16
	i32.sub 	$push14=, $pop5, $pop6
	tee_local	$push13=, $3=, $pop14
	i32.store	__stack_pointer($pop7), $pop13
	i32.const	$push11=, 8
	i32.add 	$push12=, $3, $pop11
	i32.const	$push0=, 8
	i32.call	$drop=, read_action_data@FUNCTION, $pop12, $pop0
	i64.load	$push1=, 8($3)
	i64.eq  	$push2=, $pop1, $0
	i32.const	$push3=, .L.str.45
	call    	eosio_assert@FUNCTION, $pop2, $pop3
	i32.const	$push10=, 0
	i32.const	$push8=, 16
	i32.add 	$push9=, $3, $pop8
	i32.store	__stack_pointer($pop10), $pop9
	.endfunc
.Lfunc_end27:
	.size	_ZN11test_action21test_current_receiverEyyy, .Lfunc_end27-_ZN11test_action21test_current_receiverEyyy

	.hidden	_ZN11test_action17test_current_timeEv
	.globl	_ZN11test_action17test_current_timeEv
	.type	_ZN11test_action17test_current_timeEv,@function
_ZN11test_action17test_current_timeEv:
	.local  	i32
	i32.const	$push12=, 0
	i32.const	$push9=, 0
	i32.load	$push10=, __stack_pointer($pop9)
	i32.const	$push11=, 16
	i32.sub 	$push20=, $pop10, $pop11
	tee_local	$push19=, $0=, $pop20
	i32.store	__stack_pointer($pop12), $pop19
	i64.const	$push0=, 0
	i64.store	8($0), $pop0
	i32.const	$push16=, 8
	i32.add 	$push17=, $0, $pop16
	i32.const	$push1=, 8
	i32.call	$push2=, read_action_data@FUNCTION, $pop17, $pop1
	i32.const	$push18=, 8
	i32.eq  	$push3=, $pop2, $pop18
	i32.const	$push4=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop3, $pop4
	i64.load	$push5=, 8($0)
	i64.call	$push6=, current_time@FUNCTION
	i64.eq  	$push7=, $pop5, $pop6
	i32.const	$push8=, .L.str.46
	call    	eosio_assert@FUNCTION, $pop7, $pop8
	i32.const	$push15=, 0
	i32.const	$push13=, 16
	i32.add 	$push14=, $0, $pop13
	i32.store	__stack_pointer($pop15), $pop14
	.endfunc
.Lfunc_end28:
	.size	_ZN11test_action17test_current_timeEv, .Lfunc_end28-_ZN11test_action17test_current_timeEv

	.hidden	_ZN11test_action16test_assert_codeEv
	.globl	_ZN11test_action16test_assert_codeEv
	.type	_ZN11test_action16test_assert_codeEv,@function
_ZN11test_action16test_assert_codeEv:
	.local  	i32
	i32.const	$push10=, 0
	i32.const	$push7=, 0
	i32.load	$push8=, __stack_pointer($pop7)
	i32.const	$push9=, 16
	i32.sub 	$push18=, $pop8, $pop9
	tee_local	$push17=, $0=, $pop18
	i32.store	__stack_pointer($pop10), $pop17
	i64.const	$push0=, 0
	i64.store	8($0), $pop0
	i32.const	$push14=, 8
	i32.add 	$push15=, $0, $pop14
	i32.const	$push1=, 8
	i32.call	$push2=, read_action_data@FUNCTION, $pop15, $pop1
	i32.const	$push16=, 8
	i32.eq  	$push3=, $pop2, $pop16
	i32.const	$push4=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop3, $pop4
	i32.const	$push5=, 0
	i64.load	$push6=, 8($0)
	call    	eosio_assert_code@FUNCTION, $pop5, $pop6
	i32.const	$push13=, 0
	i32.const	$push11=, 16
	i32.add 	$push12=, $0, $pop11
	i32.store	__stack_pointer($pop13), $pop12
	.endfunc
.Lfunc_end29:
	.size	_ZN11test_action16test_assert_codeEv, .Lfunc_end29-_ZN11test_action16test_assert_codeEv

	.hidden	_ZN10test_print13test_prints_lEv
	.globl	_ZN10test_print13test_prints_lEv
	.type	_ZN10test_print13test_prints_lEv,@function
_ZN10test_print13test_prints_lEv:
	.local  	i32
	i32.const	$push9=, 0
	i32.const	$push6=, 0
	i32.load	$push7=, __stack_pointer($pop6)
	i32.const	$push8=, 16
	i32.sub 	$push20=, $pop7, $pop8
	tee_local	$push19=, $0=, $pop20
	i32.store	__stack_pointer($pop9), $pop19
	i32.const	$push0=, 25185
	i32.store16	14($0), $pop0
	i32.const	$push13=, 14
	i32.add 	$push14=, $0, $pop13
	i32.const	$push1=, 2
	call    	prints_l@FUNCTION, $pop14, $pop1
	i32.const	$push15=, 14
	i32.add 	$push16=, $0, $pop15
	i32.const	$push2=, 1
	call    	prints_l@FUNCTION, $pop16, $pop2
	i32.const	$push17=, 14
	i32.add 	$push18=, $0, $pop17
	i32.const	$push3=, 0
	call    	prints_l@FUNCTION, $pop18, $pop3
	i32.const	$push5=, .L.str.28
	i32.const	$push4=, 4
	call    	prints_l@FUNCTION, $pop5, $pop4
	i32.const	$push12=, 0
	i32.const	$push10=, 16
	i32.add 	$push11=, $0, $pop10
	i32.store	__stack_pointer($pop12), $pop11
	.endfunc
.Lfunc_end30:
	.size	_ZN10test_print13test_prints_lEv, .Lfunc_end30-_ZN10test_print13test_prints_lEv

	.hidden	_ZN10test_print11test_printsEv
	.globl	_ZN10test_print11test_printsEv
	.type	_ZN10test_print11test_printsEv,@function
_ZN10test_print11test_printsEv:
	i32.const	$push0=, .L.str.47
	call    	prints@FUNCTION, $pop0
	i32.const	$push1=, 0
	call    	prints@FUNCTION, $pop1
	i32.const	$push2=, .L.str.48
	call    	prints@FUNCTION, $pop2
	i32.const	$push5=, 0
	call    	prints@FUNCTION, $pop5
	i32.const	$push3=, .L.str.49
	call    	prints@FUNCTION, $pop3
	i32.const	$push4=, 0
	call    	prints@FUNCTION, $pop4
	.endfunc
.Lfunc_end31:
	.size	_ZN10test_print11test_printsEv, .Lfunc_end31-_ZN10test_print11test_printsEv

	.hidden	_ZN10test_print11test_printiEv
	.globl	_ZN10test_print11test_printiEv
	.type	_ZN10test_print11test_printiEv,@function
_ZN10test_print11test_printiEv:
	i64.const	$push0=, 0
	call    	printi@FUNCTION, $pop0
	i64.const	$push1=, 556644
	call    	printi@FUNCTION, $pop1
	i64.const	$push2=, -1
	call    	printi@FUNCTION, $pop2
	.endfunc
.Lfunc_end32:
	.size	_ZN10test_print11test_printiEv, .Lfunc_end32-_ZN10test_print11test_printiEv

	.hidden	_ZN10test_print12test_printuiEv
	.globl	_ZN10test_print12test_printuiEv
	.type	_ZN10test_print12test_printuiEv,@function
_ZN10test_print12test_printuiEv:
	i64.const	$push0=, 0
	call    	printui@FUNCTION, $pop0
	i64.const	$push1=, 556644
	call    	printui@FUNCTION, $pop1
	i64.const	$push2=, -1
	call    	printui@FUNCTION, $pop2
	.endfunc
.Lfunc_end33:
	.size	_ZN10test_print12test_printuiEv, .Lfunc_end33-_ZN10test_print12test_printuiEv

	.hidden	_ZN10test_print14test_printi128Ev
	.globl	_ZN10test_print14test_printi128Ev
	.type	_ZN10test_print14test_printi128Ev,@function
_ZN10test_print14test_printi128Ev:
	.local  	i32
	i32.const	$push9=, 0
	i32.const	$push6=, 0
	i32.load	$push7=, __stack_pointer($pop6)
	i32.const	$push8=, 64
	i32.sub 	$push26=, $pop7, $pop8
	tee_local	$push25=, $0=, $pop26
	i32.store	__stack_pointer($pop9), $pop25
	i64.const	$push0=, 0
	i64.store	56($0), $pop0
	i64.const	$push1=, 1
	i64.store	48($0), $pop1
	i64.const	$push24=, 0
	i64.store	40($0), $pop24
	i64.const	$push23=, 0
	i64.store	32($0), $pop23
	i64.const	$push2=, -9223372036854775808
	i64.store	24($0), $pop2
	i64.const	$push22=, 0
	i64.store	16($0), $pop22
	i64.const	$push3=, -1
	i64.store	8($0), $pop3
	i64.const	$push4=, -87654323456
	i64.store	0($0), $pop4
	i32.const	$push13=, 48
	i32.add 	$push14=, $0, $pop13
	call    	printi128@FUNCTION, $pop14
	i32.const	$push5=, .L.str.50
	call    	prints@FUNCTION, $pop5
	i32.const	$push15=, 32
	i32.add 	$push16=, $0, $pop15
	call    	printi128@FUNCTION, $pop16
	i32.const	$push21=, .L.str.50
	call    	prints@FUNCTION, $pop21
	i32.const	$push17=, 16
	i32.add 	$push18=, $0, $pop17
	call    	printi128@FUNCTION, $pop18
	i32.const	$push20=, .L.str.50
	call    	prints@FUNCTION, $pop20
	call    	printi128@FUNCTION, $0
	i32.const	$push19=, .L.str.50
	call    	prints@FUNCTION, $pop19
	i32.const	$push12=, 0
	i32.const	$push10=, 64
	i32.add 	$push11=, $0, $pop10
	i32.store	__stack_pointer($pop12), $pop11
	.endfunc
.Lfunc_end34:
	.size	_ZN10test_print14test_printi128Ev, .Lfunc_end34-_ZN10test_print14test_printi128Ev

	.hidden	_ZN10test_print15test_printui128Ev
	.globl	_ZN10test_print15test_printui128Ev
	.type	_ZN10test_print15test_printui128Ev,@function
_ZN10test_print15test_printui128Ev:
	.local  	i32
	i32.const	$push7=, 0
	i32.const	$push4=, 0
	i32.load	$push5=, __stack_pointer($pop4)
	i32.const	$push6=, 48
	i32.sub 	$push21=, $pop5, $pop6
	tee_local	$push20=, $0=, $pop21
	i32.store	__stack_pointer($pop7), $pop20
	i64.const	$push0=, -1
	i64.store	40($0), $pop0
	i64.const	$push19=, -1
	i64.store	32($0), $pop19
	i64.const	$push1=, 0
	i64.store	24($0), $pop1
	i64.const	$push18=, 0
	i64.store	16($0), $pop18
	i64.const	$push17=, 0
	i64.store	8($0), $pop17
	i64.const	$push2=, 87654323456
	i64.store	0($0), $pop2
	i32.const	$push11=, 32
	i32.add 	$push12=, $0, $pop11
	call    	printui128@FUNCTION, $pop12
	i32.const	$push3=, .L.str.50
	call    	prints@FUNCTION, $pop3
	i32.const	$push13=, 16
	i32.add 	$push14=, $0, $pop13
	call    	printui128@FUNCTION, $pop14
	i32.const	$push16=, .L.str.50
	call    	prints@FUNCTION, $pop16
	call    	printui128@FUNCTION, $0
	i32.const	$push15=, .L.str.50
	call    	prints@FUNCTION, $pop15
	i32.const	$push10=, 0
	i32.const	$push8=, 48
	i32.add 	$push9=, $0, $pop8
	i32.store	__stack_pointer($pop10), $pop9
	.endfunc
.Lfunc_end35:
	.size	_ZN10test_print15test_printui128Ev, .Lfunc_end35-_ZN10test_print15test_printui128Ev

	.hidden	_ZN10test_print11test_printnEv
	.globl	_ZN10test_print11test_printnEv
	.type	_ZN10test_print11test_printnEv,@function
_ZN10test_print11test_printnEv:
	.local  	i32, i32, i64, i64, i64, i64
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.51
	i64.const	$4=, 0
.LBB36_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push124=, 4
	i64.gt_u	$push0=, $3, $pop124
	br_if   	0, $pop0
	i32.load8_s	$push129=, 0($1)
	tee_local	$push128=, $0=, $pop129
	i32.const	$push127=, -97
	i32.add 	$push2=, $pop128, $pop127
	i32.const	$push126=, 255
	i32.and 	$push3=, $pop2, $pop126
	i32.const	$push125=, 25
	i32.gt_u	$push4=, $pop3, $pop125
	br_if   	1, $pop4
	i32.const	$push130=, 165
	i32.add 	$0=, $0, $pop130
	br      	2
.LBB36_4:
	end_block
	i64.const	$5=, 0
	i64.const	$push131=, 11
	i64.le_u	$push1=, $3, $pop131
	br_if   	2, $pop1
	br      	3
.LBB36_5:
	end_block
	i32.const	$push136=, 208
	i32.add 	$push5=, $0, $pop136
	i32.const	$push135=, 0
	i32.const	$push134=, -49
	i32.add 	$push6=, $0, $pop134
	i32.const	$push133=, 255
	i32.and 	$push7=, $pop6, $pop133
	i32.const	$push132=, 5
	i32.lt_u	$push8=, $pop7, $pop132
	i32.select	$0=, $pop5, $pop135, $pop8
.LBB36_6:
	end_block
	i64.extend_u/i32	$push9=, $0
	i64.const	$push138=, 56
	i64.shl 	$push10=, $pop9, $pop138
	i64.const	$push137=, 56
	i64.shr_s	$5=, $pop10, $pop137
.LBB36_7:
	end_block
	i64.const	$push140=, 31
	i64.and 	$push12=, $5, $pop140
	i64.const	$push139=, 4294967295
	i64.and 	$push11=, $2, $pop139
	i64.shl 	$5=, $pop12, $pop11
.LBB36_8:
	end_block
	i32.const	$push146=, 1
	i32.add 	$1=, $1, $pop146
	i64.const	$push145=, 1
	i64.add 	$3=, $3, $pop145
	i64.or  	$4=, $5, $4
	i64.const	$push144=, -5
	i64.add 	$push143=, $2, $pop144
	tee_local	$push142=, $2=, $pop143
	i64.const	$push141=, -6
	i64.ne  	$push13=, $pop142, $pop141
	br_if   	0, $pop13
	end_loop
	call    	printn@FUNCTION, $4
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.52
	i64.const	$4=, 0
.LBB36_10:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push147=, 4
	i64.gt_u	$push14=, $3, $pop147
	br_if   	0, $pop14
	i32.load8_s	$push152=, 0($1)
	tee_local	$push151=, $0=, $pop152
	i32.const	$push150=, -97
	i32.add 	$push16=, $pop151, $pop150
	i32.const	$push149=, 255
	i32.and 	$push17=, $pop16, $pop149
	i32.const	$push148=, 25
	i32.gt_u	$push18=, $pop17, $pop148
	br_if   	1, $pop18
	i32.const	$push153=, 165
	i32.add 	$0=, $0, $pop153
	br      	2
.LBB36_13:
	end_block
	i64.const	$5=, 0
	i64.const	$push154=, 11
	i64.le_u	$push15=, $3, $pop154
	br_if   	2, $pop15
	br      	3
.LBB36_14:
	end_block
	i32.const	$push159=, 208
	i32.add 	$push19=, $0, $pop159
	i32.const	$push158=, 0
	i32.const	$push157=, -49
	i32.add 	$push20=, $0, $pop157
	i32.const	$push156=, 255
	i32.and 	$push21=, $pop20, $pop156
	i32.const	$push155=, 5
	i32.lt_u	$push22=, $pop21, $pop155
	i32.select	$0=, $pop19, $pop158, $pop22
.LBB36_15:
	end_block
	i64.extend_u/i32	$push23=, $0
	i64.const	$push161=, 56
	i64.shl 	$push24=, $pop23, $pop161
	i64.const	$push160=, 56
	i64.shr_s	$5=, $pop24, $pop160
.LBB36_16:
	end_block
	i64.const	$push163=, 31
	i64.and 	$push26=, $5, $pop163
	i64.const	$push162=, 4294967295
	i64.and 	$push25=, $2, $pop162
	i64.shl 	$5=, $pop26, $pop25
.LBB36_17:
	end_block
	i32.const	$push169=, 1
	i32.add 	$1=, $1, $pop169
	i64.const	$push168=, 1
	i64.add 	$3=, $3, $pop168
	i64.or  	$4=, $5, $4
	i64.const	$push167=, -5
	i64.add 	$push166=, $2, $pop167
	tee_local	$push165=, $2=, $pop166
	i64.const	$push164=, -6
	i64.ne  	$push27=, $pop165, $pop164
	br_if   	0, $pop27
	end_loop
	call    	printn@FUNCTION, $4
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.53
	i64.const	$4=, 0
.LBB36_19:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push170=, 7
	i64.gt_u	$push28=, $3, $pop170
	br_if   	0, $pop28
	i32.load8_s	$push175=, 0($1)
	tee_local	$push174=, $0=, $pop175
	i32.const	$push173=, -97
	i32.add 	$push30=, $pop174, $pop173
	i32.const	$push172=, 255
	i32.and 	$push31=, $pop30, $pop172
	i32.const	$push171=, 25
	i32.gt_u	$push32=, $pop31, $pop171
	br_if   	1, $pop32
	i32.const	$push176=, 165
	i32.add 	$0=, $0, $pop176
	br      	2
.LBB36_22:
	end_block
	i64.const	$5=, 0
	i64.const	$push177=, 11
	i64.le_u	$push29=, $3, $pop177
	br_if   	2, $pop29
	br      	3
.LBB36_23:
	end_block
	i32.const	$push182=, 208
	i32.add 	$push33=, $0, $pop182
	i32.const	$push181=, 0
	i32.const	$push180=, -49
	i32.add 	$push34=, $0, $pop180
	i32.const	$push179=, 255
	i32.and 	$push35=, $pop34, $pop179
	i32.const	$push178=, 5
	i32.lt_u	$push36=, $pop35, $pop178
	i32.select	$0=, $pop33, $pop181, $pop36
.LBB36_24:
	end_block
	i64.extend_u/i32	$push37=, $0
	i64.const	$push184=, 56
	i64.shl 	$push38=, $pop37, $pop184
	i64.const	$push183=, 56
	i64.shr_s	$5=, $pop38, $pop183
.LBB36_25:
	end_block
	i64.const	$push186=, 31
	i64.and 	$push40=, $5, $pop186
	i64.const	$push185=, 4294967295
	i64.and 	$push39=, $2, $pop185
	i64.shl 	$5=, $pop40, $pop39
.LBB36_26:
	end_block
	i32.const	$push192=, 1
	i32.add 	$1=, $1, $pop192
	i64.const	$push191=, 1
	i64.add 	$3=, $3, $pop191
	i64.or  	$4=, $5, $4
	i64.const	$push190=, -5
	i64.add 	$push189=, $2, $pop190
	tee_local	$push188=, $2=, $pop189
	i64.const	$push187=, -6
	i64.ne  	$push41=, $pop188, $pop187
	br_if   	0, $pop41
	end_loop
	call    	printn@FUNCTION, $4
	i64.const	$3=, 0
	i64.const	$push193=, 0
	call    	printn@FUNCTION, $pop193
	i64.const	$2=, 59
	i32.const	$1=, .L.str.55
	i64.const	$4=, 0
.LBB36_28:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push194=, 5
	i64.gt_u	$push42=, $3, $pop194
	br_if   	0, $pop42
	i32.load8_s	$push199=, 0($1)
	tee_local	$push198=, $0=, $pop199
	i32.const	$push197=, -97
	i32.add 	$push44=, $pop198, $pop197
	i32.const	$push196=, 255
	i32.and 	$push45=, $pop44, $pop196
	i32.const	$push195=, 25
	i32.gt_u	$push46=, $pop45, $pop195
	br_if   	1, $pop46
	i32.const	$push200=, 165
	i32.add 	$0=, $0, $pop200
	br      	2
.LBB36_31:
	end_block
	i64.const	$5=, 0
	i64.const	$push201=, 11
	i64.le_u	$push43=, $3, $pop201
	br_if   	2, $pop43
	br      	3
.LBB36_32:
	end_block
	i32.const	$push206=, 208
	i32.add 	$push47=, $0, $pop206
	i32.const	$push205=, 0
	i32.const	$push204=, -49
	i32.add 	$push48=, $0, $pop204
	i32.const	$push203=, 255
	i32.and 	$push49=, $pop48, $pop203
	i32.const	$push202=, 5
	i32.lt_u	$push50=, $pop49, $pop202
	i32.select	$0=, $pop47, $pop205, $pop50
.LBB36_33:
	end_block
	i64.extend_u/i32	$push51=, $0
	i64.const	$push208=, 56
	i64.shl 	$push52=, $pop51, $pop208
	i64.const	$push207=, 56
	i64.shr_s	$5=, $pop52, $pop207
.LBB36_34:
	end_block
	i64.const	$push210=, 31
	i64.and 	$push54=, $5, $pop210
	i64.const	$push209=, 4294967295
	i64.and 	$push53=, $2, $pop209
	i64.shl 	$5=, $pop54, $pop53
.LBB36_35:
	end_block
	i32.const	$push216=, 1
	i32.add 	$1=, $1, $pop216
	i64.const	$push215=, 1
	i64.add 	$3=, $3, $pop215
	i64.or  	$4=, $5, $4
	i64.const	$push214=, -5
	i64.add 	$push213=, $2, $pop214
	tee_local	$push212=, $2=, $pop213
	i64.const	$push211=, -6
	i64.ne  	$push55=, $pop212, $pop211
	br_if   	0, $pop55
	end_loop
	call    	printn@FUNCTION, $4
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.56
	i64.const	$4=, 0
.LBB36_37:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push217=, 10
	i64.gt_u	$push56=, $3, $pop217
	br_if   	0, $pop56
	i32.load8_s	$push222=, 0($1)
	tee_local	$push221=, $0=, $pop222
	i32.const	$push220=, -97
	i32.add 	$push58=, $pop221, $pop220
	i32.const	$push219=, 255
	i32.and 	$push59=, $pop58, $pop219
	i32.const	$push218=, 25
	i32.gt_u	$push60=, $pop59, $pop218
	br_if   	1, $pop60
	i32.const	$push223=, 165
	i32.add 	$0=, $0, $pop223
	br      	2
.LBB36_40:
	end_block
	i64.const	$5=, 0
	i64.const	$push224=, 11
	i64.eq  	$push57=, $3, $pop224
	br_if   	2, $pop57
	br      	3
.LBB36_41:
	end_block
	i32.const	$push229=, 208
	i32.add 	$push61=, $0, $pop229
	i32.const	$push228=, 0
	i32.const	$push227=, -49
	i32.add 	$push62=, $0, $pop227
	i32.const	$push226=, 255
	i32.and 	$push63=, $pop62, $pop226
	i32.const	$push225=, 5
	i32.lt_u	$push64=, $pop63, $pop225
	i32.select	$0=, $pop61, $pop228, $pop64
.LBB36_42:
	end_block
	i64.extend_u/i32	$push65=, $0
	i64.const	$push231=, 56
	i64.shl 	$push66=, $pop65, $pop231
	i64.const	$push230=, 56
	i64.shr_s	$5=, $pop66, $pop230
.LBB36_43:
	end_block
	i64.const	$push233=, 31
	i64.and 	$push68=, $5, $pop233
	i64.const	$push232=, 4294967295
	i64.and 	$push67=, $2, $pop232
	i64.shl 	$5=, $pop68, $pop67
.LBB36_44:
	end_block
	i32.const	$push239=, 1
	i32.add 	$1=, $1, $pop239
	i64.const	$push238=, -5
	i64.add 	$2=, $2, $pop238
	i64.or  	$4=, $5, $4
	i64.const	$push237=, 1
	i64.add 	$push236=, $3, $pop237
	tee_local	$push235=, $3=, $pop236
	i64.const	$push234=, 13
	i64.ne  	$push69=, $pop235, $pop234
	br_if   	0, $pop69
	end_loop
	call    	printn@FUNCTION, $4
	i64.const	$3=, 0
	i64.const	$5=, 59
	i32.const	$1=, .L.str.57
	i64.const	$4=, 0
.LBB36_46:
	loop    	
	i64.const	$2=, 0
	block   	
	i64.const	$push240=, 11
	i64.gt_u	$push70=, $3, $pop240
	br_if   	0, $pop70
	block   	
	block   	
	i32.load8_s	$push245=, 0($1)
	tee_local	$push244=, $0=, $pop245
	i32.const	$push243=, -97
	i32.add 	$push71=, $pop244, $pop243
	i32.const	$push242=, 255
	i32.and 	$push72=, $pop71, $pop242
	i32.const	$push241=, 25
	i32.gt_u	$push73=, $pop72, $pop241
	br_if   	0, $pop73
	i32.const	$push246=, 165
	i32.add 	$0=, $0, $pop246
	br      	1
.LBB36_49:
	end_block
	i32.const	$push251=, 208
	i32.add 	$push74=, $0, $pop251
	i32.const	$push250=, 0
	i32.const	$push249=, -49
	i32.add 	$push75=, $0, $pop249
	i32.const	$push248=, 255
	i32.and 	$push76=, $pop75, $pop248
	i32.const	$push247=, 5
	i32.lt_u	$push77=, $pop76, $pop247
	i32.select	$0=, $pop74, $pop250, $pop77
.LBB36_50:
	end_block
	i32.const	$push253=, 31
	i32.and 	$push79=, $0, $pop253
	i64.extend_u/i32	$push80=, $pop79
	i64.const	$push252=, 4294967295
	i64.and 	$push78=, $5, $pop252
	i64.shl 	$2=, $pop80, $pop78
.LBB36_51:
	end_block
	i32.const	$push259=, 1
	i32.add 	$1=, $1, $pop259
	i64.const	$push258=, 1
	i64.add 	$3=, $3, $pop258
	i64.or  	$4=, $2, $4
	i64.const	$push257=, -5
	i64.add 	$push256=, $5, $pop257
	tee_local	$push255=, $5=, $pop256
	i64.const	$push254=, -6
	i64.ne  	$push81=, $pop255, $pop254
	br_if   	0, $pop81
	end_loop
	call    	printn@FUNCTION, $4
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.58
	i64.const	$4=, 0
.LBB36_53:
	loop    	
	i64.const	$5=, 0
	block   	
	block   	
	i64.const	$push260=, 12
	i64.gt_u	$push82=, $3, $pop260
	br_if   	0, $pop82
	block   	
	block   	
	i32.load8_s	$push265=, 0($1)
	tee_local	$push264=, $0=, $pop265
	i32.const	$push263=, -97
	i32.add 	$push83=, $pop264, $pop263
	i32.const	$push262=, 255
	i32.and 	$push84=, $pop83, $pop262
	i32.const	$push261=, 25
	i32.gt_u	$push85=, $pop84, $pop261
	br_if   	0, $pop85
	i32.const	$push266=, 165
	i32.add 	$0=, $0, $pop266
	br      	1
.LBB36_56:
	end_block
	i32.const	$push271=, 208
	i32.add 	$push86=, $0, $pop271
	i32.const	$push270=, 0
	i32.const	$push269=, -49
	i32.add 	$push87=, $0, $pop269
	i32.const	$push268=, 255
	i32.and 	$push88=, $pop87, $pop268
	i32.const	$push267=, 5
	i32.lt_u	$push89=, $pop88, $pop267
	i32.select	$0=, $pop86, $pop270, $pop89
.LBB36_57:
	end_block
	i64.extend_u/i32	$push90=, $0
	i64.const	$push274=, 56
	i64.shl 	$push91=, $pop90, $pop274
	i64.const	$push273=, 56
	i64.shr_s	$5=, $pop91, $pop273
	i64.const	$push272=, 11
	i64.gt_u	$push92=, $3, $pop272
	br_if   	0, $pop92
	i64.const	$push276=, 31
	i64.and 	$push94=, $5, $pop276
	i64.const	$push275=, 4294967295
	i64.and 	$push93=, $2, $pop275
	i64.shl 	$5=, $pop94, $pop93
	br      	1
.LBB36_59:
	end_block
	i64.const	$push277=, 15
	i64.and 	$5=, $5, $pop277
.LBB36_60:
	end_block
	i32.const	$push283=, 1
	i32.add 	$1=, $1, $pop283
	i64.const	$push282=, 1
	i64.add 	$3=, $3, $pop282
	i64.or  	$4=, $5, $4
	i64.const	$push281=, -5
	i64.add 	$push280=, $2, $pop281
	tee_local	$push279=, $2=, $pop280
	i64.const	$push278=, -6
	i64.ne  	$push95=, $pop279, $pop278
	br_if   	0, $pop95
	end_loop
	call    	printn@FUNCTION, $4
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.59
	i64.const	$4=, 0
.LBB36_62:
	loop    	
	i64.const	$5=, 0
	block   	
	block   	
	i64.const	$push284=, 13
	i64.gt_u	$push96=, $3, $pop284
	br_if   	0, $pop96
	block   	
	block   	
	i32.load8_s	$push289=, 0($1)
	tee_local	$push288=, $0=, $pop289
	i32.const	$push287=, -97
	i32.add 	$push97=, $pop288, $pop287
	i32.const	$push286=, 255
	i32.and 	$push98=, $pop97, $pop286
	i32.const	$push285=, 25
	i32.gt_u	$push99=, $pop98, $pop285
	br_if   	0, $pop99
	i32.const	$push290=, 165
	i32.add 	$0=, $0, $pop290
	br      	1
.LBB36_65:
	end_block
	i32.const	$push295=, 208
	i32.add 	$push100=, $0, $pop295
	i32.const	$push294=, 0
	i32.const	$push293=, -49
	i32.add 	$push101=, $0, $pop293
	i32.const	$push292=, 255
	i32.and 	$push102=, $pop101, $pop292
	i32.const	$push291=, 5
	i32.lt_u	$push103=, $pop102, $pop291
	i32.select	$0=, $pop100, $pop294, $pop103
.LBB36_66:
	end_block
	i64.extend_u/i32	$push104=, $0
	i64.const	$push298=, 56
	i64.shl 	$push105=, $pop104, $pop298
	i64.const	$push297=, 56
	i64.shr_s	$5=, $pop105, $pop297
	i64.const	$push296=, 11
	i64.gt_u	$push106=, $3, $pop296
	br_if   	0, $pop106
	i64.const	$push300=, 31
	i64.and 	$push108=, $5, $pop300
	i64.const	$push299=, 4294967295
	i64.and 	$push107=, $2, $pop299
	i64.shl 	$5=, $pop108, $pop107
	br      	1
.LBB36_68:
	end_block
	i64.const	$push301=, 15
	i64.and 	$5=, $5, $pop301
.LBB36_69:
	end_block
	i32.const	$push307=, 1
	i32.add 	$1=, $1, $pop307
	i64.const	$push306=, 1
	i64.add 	$3=, $3, $pop306
	i64.or  	$4=, $5, $4
	i64.const	$push305=, -5
	i64.add 	$push304=, $2, $pop305
	tee_local	$push303=, $2=, $pop304
	i64.const	$push302=, -6
	i64.ne  	$push109=, $pop303, $pop302
	br_if   	0, $pop109
	end_loop
	call    	printn@FUNCTION, $4
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.60
	i64.const	$4=, 0
.LBB36_71:
	loop    	
	i64.const	$5=, 0
	block   	
	block   	
	i64.const	$push308=, 14
	i64.gt_u	$push110=, $3, $pop308
	br_if   	0, $pop110
	block   	
	block   	
	i32.load8_s	$push313=, 0($1)
	tee_local	$push312=, $0=, $pop313
	i32.const	$push311=, -97
	i32.add 	$push111=, $pop312, $pop311
	i32.const	$push310=, 255
	i32.and 	$push112=, $pop111, $pop310
	i32.const	$push309=, 25
	i32.gt_u	$push113=, $pop112, $pop309
	br_if   	0, $pop113
	i32.const	$push314=, 165
	i32.add 	$0=, $0, $pop314
	br      	1
.LBB36_74:
	end_block
	i32.const	$push319=, 208
	i32.add 	$push114=, $0, $pop319
	i32.const	$push318=, 0
	i32.const	$push317=, -49
	i32.add 	$push115=, $0, $pop317
	i32.const	$push316=, 255
	i32.and 	$push116=, $pop115, $pop316
	i32.const	$push315=, 5
	i32.lt_u	$push117=, $pop116, $pop315
	i32.select	$0=, $pop114, $pop318, $pop117
.LBB36_75:
	end_block
	i64.extend_u/i32	$push118=, $0
	i64.const	$push322=, 56
	i64.shl 	$push119=, $pop118, $pop322
	i64.const	$push321=, 56
	i64.shr_s	$5=, $pop119, $pop321
	i64.const	$push320=, 11
	i64.gt_u	$push120=, $3, $pop320
	br_if   	0, $pop120
	i64.const	$push324=, 31
	i64.and 	$push122=, $5, $pop324
	i64.const	$push323=, 4294967295
	i64.and 	$push121=, $2, $pop323
	i64.shl 	$5=, $pop122, $pop121
	br      	1
.LBB36_77:
	end_block
	i64.const	$push325=, 15
	i64.and 	$5=, $5, $pop325
.LBB36_78:
	end_block
	i32.const	$push331=, 1
	i32.add 	$1=, $1, $pop331
	i64.const	$push330=, 1
	i64.add 	$3=, $3, $pop330
	i64.or  	$4=, $5, $4
	i64.const	$push329=, -5
	i64.add 	$push328=, $2, $pop329
	tee_local	$push327=, $2=, $pop328
	i64.const	$push326=, -6
	i64.ne  	$push123=, $pop327, $pop326
	br_if   	0, $pop123
	end_loop
	call    	printn@FUNCTION, $4
	.endfunc
.Lfunc_end36:
	.size	_ZN10test_print11test_printnEv, .Lfunc_end36-_ZN10test_print11test_printnEv

	.hidden	_ZN10test_print12test_printsfEv
	.globl	_ZN10test_print12test_printsfEv
	.type	_ZN10test_print12test_printsfEv,@function
_ZN10test_print12test_printsfEv:
	f32.const	$push0=, 0x1p-1
	call    	printsf@FUNCTION, $pop0
	i32.const	$push1=, .L.str.50
	call    	prints@FUNCTION, $pop1
	f32.const	$push2=, -0x1.ep1
	call    	printsf@FUNCTION, $pop2
	i32.const	$push5=, .L.str.50
	call    	prints@FUNCTION, $pop5
	f32.const	$push3=, 0x1.65e9f8p-21
	call    	printsf@FUNCTION, $pop3
	i32.const	$push4=, .L.str.50
	call    	prints@FUNCTION, $pop4
	.endfunc
.Lfunc_end37:
	.size	_ZN10test_print12test_printsfEv, .Lfunc_end37-_ZN10test_print12test_printsfEv

	.hidden	_ZN10test_print12test_printdfEv
	.globl	_ZN10test_print12test_printdfEv
	.type	_ZN10test_print12test_printdfEv,@function
_ZN10test_print12test_printdfEv:
	f64.const	$push0=, 0x1p-1
	call    	printdf@FUNCTION, $pop0
	i32.const	$push1=, .L.str.50
	call    	prints@FUNCTION, $pop1
	f64.const	$push2=, -0x1.ep1
	call    	printdf@FUNCTION, $pop2
	i32.const	$push5=, .L.str.50
	call    	prints@FUNCTION, $pop5
	f64.const	$push3=, 0x1.65e9f80f29211p-21
	call    	printdf@FUNCTION, $pop3
	i32.const	$push4=, .L.str.50
	call    	prints@FUNCTION, $pop4
	.endfunc
.Lfunc_end38:
	.size	_ZN10test_print12test_printdfEv, .Lfunc_end38-_ZN10test_print12test_printdfEv

	.hidden	_ZN10test_print12test_printqfEv
	.globl	_ZN10test_print12test_printqfEv
	.type	_ZN10test_print12test_printqfEv,@function
_ZN10test_print12test_printqfEv:
	.local  	i32
	i32.const	$push9=, 0
	i32.const	$push6=, 0
	i32.load	$push7=, __stack_pointer($pop6)
	i32.const	$push8=, 48
	i32.sub 	$push21=, $pop7, $pop8
	tee_local	$push20=, $0=, $pop21
	i32.store	__stack_pointer($pop9), $pop20
	i64.const	$push0=, 4611123068473966592
	i64.store	40($0), $pop0
	i64.const	$push1=, 0
	i64.store	32($0), $pop1
	i64.const	$push2=, -4611439727822766080
	i64.store	24($0), $pop2
	i64.const	$push19=, 0
	i64.store	16($0), $pop19
	i64.const	$push3=, 4605605624503281953
	i64.store	8($0), $pop3
	i64.const	$push4=, 1865728291273748996
	i64.store	0($0), $pop4
	i32.const	$push13=, 32
	i32.add 	$push14=, $0, $pop13
	call    	printqf@FUNCTION, $pop14
	i32.const	$push5=, .L.str.50
	call    	prints@FUNCTION, $pop5
	i32.const	$push15=, 16
	i32.add 	$push16=, $0, $pop15
	call    	printqf@FUNCTION, $pop16
	i32.const	$push18=, .L.str.50
	call    	prints@FUNCTION, $pop18
	call    	printqf@FUNCTION, $0
	i32.const	$push17=, .L.str.50
	call    	prints@FUNCTION, $pop17
	i32.const	$push12=, 0
	i32.const	$push10=, 48
	i32.add 	$push11=, $0, $pop10
	i32.store	__stack_pointer($pop12), $pop11
	.endfunc
.Lfunc_end39:
	.size	_ZN10test_print12test_printqfEv, .Lfunc_end39-_ZN10test_print12test_printqfEv

	.hidden	_ZN10test_print17test_print_simpleEv
	.globl	_ZN10test_print17test_print_simpleEv
	.type	_ZN10test_print17test_print_simpleEv,@function
_ZN10test_print17test_print_simpleEv:
	.local  	i32, i32, i32, i32
	i32.const	$push61=, 0
	i32.const	$push58=, 0
	i32.load	$push59=, __stack_pointer($pop58)
	i32.const	$push60=, 32
	i32.sub 	$push74=, $pop59, $pop60
	tee_local	$push73=, $3=, $pop74
	i32.store	__stack_pointer($pop61), $pop73
	i32.const	$push0=, 24
	i32.add 	$push1=, $3, $pop0
	i32.const	$push2=, 0
	i32.store	0($pop1), $pop2
	i64.const	$push3=, 0
	i64.store	16($3), $pop3
	block   	
	block   	
	i32.const	$push4=, .L.str.61
	i32.call	$push72=, strlen@FUNCTION, $pop4
	tee_local	$push71=, $0=, $pop72
	i32.const	$push5=, -16
	i32.ge_u	$push6=, $pop71, $pop5
	br_if   	0, $pop6
	block   	
	block   	
	block   	
	i32.const	$push7=, 11
	i32.ge_u	$push8=, $0, $pop7
	br_if   	0, $pop8
	i32.const	$push14=, 1
	i32.shl 	$push15=, $0, $pop14
	i32.store8	16($3), $pop15
	i32.const	$push67=, 16
	i32.add 	$push68=, $3, $pop67
	i32.const	$push77=, 1
	i32.or  	$push76=, $pop68, $pop77
	tee_local	$push75=, $1=, $pop76
	copy_local	$2=, $pop75
	br_if   	1, $0
	br      	2
.LBB40_3:
	end_block
	i32.const	$push9=, 16
	i32.add 	$push10=, $0, $pop9
	i32.const	$push11=, -16
	i32.and 	$push80=, $pop10, $pop11
	tee_local	$push79=, $1=, $pop80
	i32.call	$2=, _Znwj@FUNCTION, $pop79
	i32.const	$push12=, 1
	i32.or  	$push13=, $1, $pop12
	i32.store	16($3), $pop13
	i32.store	24($3), $2
	i32.store	20($3), $0
	i32.const	$push69=, 16
	i32.add 	$push70=, $3, $pop69
	i32.const	$push78=, 1
	i32.or  	$1=, $pop70, $pop78
.LBB40_4:
	end_block
	i32.const	$push16=, .L.str.61
	i32.call	$drop=, memcpy@FUNCTION, $2, $pop16, $0
.LBB40_5:
	end_block
	i32.add 	$push17=, $2, $0
	i32.const	$push18=, 0
	i32.store8	0($pop17), $pop18
	i32.load	$push23=, 24($3)
	i32.load8_u	$push88=, 16($3)
	tee_local	$push87=, $0=, $pop88
	i32.const	$push19=, 1
	i32.and 	$push86=, $pop87, $pop19
	tee_local	$push85=, $2=, $pop86
	i32.select	$push24=, $pop23, $1, $pop85
	i32.load	$push21=, 20($3)
	i32.const	$push84=, 1
	i32.shr_u	$push20=, $0, $pop84
	i32.select	$push22=, $pop21, $pop20, $2
	call    	prints_l@FUNCTION, $pop24, $pop22
	i32.const	$push25=, 8
	i32.add 	$push26=, $3, $pop25
	i32.const	$push83=, 0
	i32.store	0($pop26), $pop83
	i64.const	$push27=, 0
	i64.store	0($3), $pop27
	i32.const	$push28=, .L.str.62
	i32.call	$push82=, strlen@FUNCTION, $pop28
	tee_local	$push81=, $0=, $pop82
	i32.const	$push29=, -16
	i32.ge_u	$push30=, $pop81, $pop29
	br_if   	1, $pop30
	block   	
	block   	
	block   	
	i32.const	$push31=, 11
	i32.ge_u	$push32=, $0, $pop31
	br_if   	0, $pop32
	i32.const	$push38=, 1
	i32.shl 	$push39=, $0, $pop38
	i32.store8	0($3), $pop39
	i32.const	$push91=, 1
	i32.or  	$push90=, $3, $pop91
	tee_local	$push89=, $1=, $pop90
	copy_local	$2=, $pop89
	br_if   	1, $0
	br      	2
.LBB40_8:
	end_block
	i32.const	$push33=, 16
	i32.add 	$push34=, $0, $pop33
	i32.const	$push35=, -16
	i32.and 	$push94=, $pop34, $pop35
	tee_local	$push93=, $1=, $pop94
	i32.call	$2=, _Znwj@FUNCTION, $pop93
	i32.const	$push36=, 1
	i32.or  	$push37=, $1, $pop36
	i32.store	0($3), $pop37
	i32.store	8($3), $2
	i32.store	4($3), $0
	i32.const	$push92=, 1
	i32.or  	$1=, $3, $pop92
.LBB40_9:
	end_block
	i32.const	$push40=, .L.str.62
	i32.call	$drop=, memcpy@FUNCTION, $2, $pop40, $0
.LBB40_10:
	end_block
	i32.add 	$push41=, $2, $0
	i32.const	$push42=, 0
	i32.store8	0($pop41), $pop42
	i32.load	$push46=, 8($3)
	i32.load8_u	$push101=, 0($3)
	tee_local	$push100=, $0=, $pop101
	i32.const	$push99=, 1
	i32.and 	$push98=, $pop100, $pop99
	tee_local	$push97=, $2=, $pop98
	i32.select	$push47=, $pop46, $1, $pop97
	i32.load	$push44=, 4($3)
	i32.const	$push96=, 1
	i32.shr_u	$push43=, $0, $pop96
	i32.select	$push45=, $pop44, $pop43, $2
	call    	prints_l@FUNCTION, $pop47, $pop45
	block   	
	i32.load8_u	$push48=, 0($3)
	i32.const	$push95=, 1
	i32.and 	$push49=, $pop48, $pop95
	i32.eqz 	$push103=, $pop49
	br_if   	0, $pop103
	i32.const	$push50=, 8
	i32.add 	$push51=, $3, $pop50
	i32.load	$push52=, 0($pop51)
	call    	_ZdlPv@FUNCTION, $pop52
.LBB40_12:
	end_block
	block   	
	i32.load8_u	$push53=, 16($3)
	i32.const	$push102=, 1
	i32.and 	$push54=, $pop53, $pop102
	i32.eqz 	$push104=, $pop54
	br_if   	0, $pop104
	i32.const	$push55=, 24
	i32.add 	$push56=, $3, $pop55
	i32.load	$push57=, 0($pop56)
	call    	_ZdlPv@FUNCTION, $pop57
.LBB40_14:
	end_block
	i32.const	$push64=, 0
	i32.const	$push62=, 32
	i32.add 	$push63=, $3, $pop62
	i32.store	__stack_pointer($pop64), $pop63
	return
.LBB40_15:
	end_block
	i32.const	$push65=, 16
	i32.add 	$push66=, $3, $pop65
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop66
	unreachable
.LBB40_16:
	end_block
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $3
	unreachable
	.endfunc
.Lfunc_end40:
	.size	_ZN10test_print17test_print_simpleEv, .Lfunc_end40-_ZN10test_print17test_print_simpleEv

	.hidden	_ZN10test_types10types_sizeEv
	.globl	_ZN10test_types10types_sizeEv
	.type	_ZN10test_types10types_sizeEv,@function
_ZN10test_types10types_sizeEv:
	i32.const	$push1=, 1
	i32.const	$push0=, .L.str.63
	call    	eosio_assert@FUNCTION, $pop1, $pop0
	i32.const	$push21=, 1
	i32.const	$push2=, .L.str.64
	call    	eosio_assert@FUNCTION, $pop21, $pop2
	i32.const	$push20=, 1
	i32.const	$push3=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop20, $pop3
	i32.const	$push19=, 1
	i32.const	$push4=, .L.str.66
	call    	eosio_assert@FUNCTION, $pop19, $pop4
	i32.const	$push18=, 1
	i32.const	$push5=, .L.str.67
	call    	eosio_assert@FUNCTION, $pop18, $pop5
	i32.const	$push17=, 1
	i32.const	$push6=, .L.str.68
	call    	eosio_assert@FUNCTION, $pop17, $pop6
	i32.const	$push16=, 1
	i32.const	$push7=, .L.str.69
	call    	eosio_assert@FUNCTION, $pop16, $pop7
	i32.const	$push15=, 1
	i32.const	$push8=, .L.str.70
	call    	eosio_assert@FUNCTION, $pop15, $pop8
	i32.const	$push14=, 1
	i32.const	$push9=, .L.str.71
	call    	eosio_assert@FUNCTION, $pop14, $pop9
	i32.const	$push13=, 1
	i32.const	$push10=, .L.str.72
	call    	eosio_assert@FUNCTION, $pop13, $pop10
	i32.const	$push12=, 1
	i32.const	$push11=, .L.str.73
	call    	eosio_assert@FUNCTION, $pop12, $pop11
	.endfunc
.Lfunc_end41:
	.size	_ZN10test_types10types_sizeEv, .Lfunc_end41-_ZN10test_types10types_sizeEv

	.hidden	_ZN10test_types14char_to_symbolEv
	.globl	_ZN10test_types14char_to_symbolEv
	.type	_ZN10test_types14char_to_symbolEv,@function
_ZN10test_types14char_to_symbolEv:
	i32.const	$push1=, 1
	i32.const	$push0=, .L.str.74
	call    	eosio_assert@FUNCTION, $pop1, $pop0
	i32.const	$push61=, 1
	i32.const	$push2=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop61, $pop2
	i32.const	$push60=, 1
	i32.const	$push3=, .L.str.76
	call    	eosio_assert@FUNCTION, $pop60, $pop3
	i32.const	$push59=, 1
	i32.const	$push4=, .L.str.77
	call    	eosio_assert@FUNCTION, $pop59, $pop4
	i32.const	$push58=, 1
	i32.const	$push5=, .L.str.78
	call    	eosio_assert@FUNCTION, $pop58, $pop5
	i32.const	$push57=, 1
	i32.const	$push6=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop57, $pop6
	i32.const	$push56=, 1
	i32.const	$push7=, .L.str.80
	call    	eosio_assert@FUNCTION, $pop56, $pop7
	i32.const	$push55=, 1
	i32.const	$push8=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop55, $pop8
	i32.const	$push54=, 1
	i32.const	$push9=, .L.str.82
	call    	eosio_assert@FUNCTION, $pop54, $pop9
	i32.const	$push53=, 1
	i32.const	$push10=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop53, $pop10
	i32.const	$push52=, 1
	i32.const	$push11=, .L.str.84
	call    	eosio_assert@FUNCTION, $pop52, $pop11
	i32.const	$push51=, 1
	i32.const	$push12=, .L.str.85
	call    	eosio_assert@FUNCTION, $pop51, $pop12
	i32.const	$push50=, 1
	i32.const	$push13=, .L.str.86
	call    	eosio_assert@FUNCTION, $pop50, $pop13
	i32.const	$push49=, 1
	i32.const	$push14=, .L.str.87
	call    	eosio_assert@FUNCTION, $pop49, $pop14
	i32.const	$push48=, 1
	i32.const	$push15=, .L.str.88
	call    	eosio_assert@FUNCTION, $pop48, $pop15
	i32.const	$push47=, 1
	i32.const	$push16=, .L.str.89
	call    	eosio_assert@FUNCTION, $pop47, $pop16
	i32.const	$push46=, 1
	i32.const	$push17=, .L.str.90
	call    	eosio_assert@FUNCTION, $pop46, $pop17
	i32.const	$push45=, 1
	i32.const	$push18=, .L.str.91
	call    	eosio_assert@FUNCTION, $pop45, $pop18
	i32.const	$push44=, 1
	i32.const	$push19=, .L.str.92
	call    	eosio_assert@FUNCTION, $pop44, $pop19
	i32.const	$push43=, 1
	i32.const	$push20=, .L.str.93
	call    	eosio_assert@FUNCTION, $pop43, $pop20
	i32.const	$push42=, 1
	i32.const	$push21=, .L.str.94
	call    	eosio_assert@FUNCTION, $pop42, $pop21
	i32.const	$push41=, 1
	i32.const	$push22=, .L.str.95
	call    	eosio_assert@FUNCTION, $pop41, $pop22
	i32.const	$push40=, 1
	i32.const	$push23=, .L.str.96
	call    	eosio_assert@FUNCTION, $pop40, $pop23
	i32.const	$push39=, 1
	i32.const	$push24=, .L.str.97
	call    	eosio_assert@FUNCTION, $pop39, $pop24
	i32.const	$push38=, 1
	i32.const	$push25=, .L.str.98
	call    	eosio_assert@FUNCTION, $pop38, $pop25
	i32.const	$push37=, 1
	i32.const	$push26=, .L.str.99
	call    	eosio_assert@FUNCTION, $pop37, $pop26
	i32.const	$push36=, 1
	i32.const	$push27=, .L.str.100
	call    	eosio_assert@FUNCTION, $pop36, $pop27
	i32.const	$push35=, 1
	i32.const	$push28=, .L.str.101
	call    	eosio_assert@FUNCTION, $pop35, $pop28
	i32.const	$push34=, 1
	i32.const	$push29=, .L.str.102
	call    	eosio_assert@FUNCTION, $pop34, $pop29
	i32.const	$push33=, 1
	i32.const	$push30=, .L.str.103
	call    	eosio_assert@FUNCTION, $pop33, $pop30
	i32.const	$push32=, 1
	i32.const	$push31=, .L.str.104
	call    	eosio_assert@FUNCTION, $pop32, $pop31
	.endfunc
.Lfunc_end42:
	.size	_ZN10test_types14char_to_symbolEv, .Lfunc_end42-_ZN10test_types14char_to_symbolEv

	.hidden	_ZN10test_types14string_to_nameEv
	.globl	_ZN10test_types14string_to_nameEv
	.type	_ZN10test_types14string_to_nameEv,@function
_ZN10test_types14string_to_nameEv:
	.local  	i32, i64, i64, i64, i32, i64, i64
	i64.const	$5=, 59
	i32.const	$4=, .L.str.106
	i64.const	$1=, 0
	i64.const	$2=, 0
.LBB43_1:
	loop    	
	block   	
	block   	
	block   	
	i64.const	$push536=, 0
	i64.eq  	$push0=, $1, $pop536
	br_if   	0, $pop0
	i64.const	$6=, 0
	i64.const	$push537=, 11
	i64.le_u	$push1=, $1, $pop537
	br_if   	1, $pop1
	br      	2
.LBB43_3:
	end_block
	block   	
	block   	
	i32.load8_s	$push542=, 0($4)
	tee_local	$push541=, $0=, $pop542
	i32.const	$push540=, -97
	i32.add 	$push2=, $pop541, $pop540
	i32.const	$push539=, 255
	i32.and 	$push3=, $pop2, $pop539
	i32.const	$push538=, 25
	i32.gt_u	$push4=, $pop3, $pop538
	br_if   	0, $pop4
	i32.const	$push543=, 165
	i32.add 	$0=, $0, $pop543
	br      	1
.LBB43_5:
	end_block
	i32.const	$push548=, 208
	i32.add 	$push5=, $0, $pop548
	i32.const	$push547=, 0
	i32.const	$push546=, -49
	i32.add 	$push6=, $0, $pop546
	i32.const	$push545=, 255
	i32.and 	$push7=, $pop6, $pop545
	i32.const	$push544=, 5
	i32.lt_u	$push8=, $pop7, $pop544
	i32.select	$0=, $pop5, $pop547, $pop8
.LBB43_6:
	end_block
	i64.extend_u/i32	$push9=, $0
	i64.const	$push550=, 56
	i64.shl 	$push10=, $pop9, $pop550
	i64.const	$push549=, 56
	i64.shr_s	$6=, $pop10, $pop549
.LBB43_7:
	end_block
	i64.const	$push552=, 31
	i64.and 	$push12=, $6, $pop552
	i64.const	$push551=, 4294967295
	i64.and 	$push11=, $5, $pop551
	i64.shl 	$6=, $pop12, $pop11
.LBB43_8:
	end_block
	i32.const	$push558=, 1
	i32.add 	$4=, $4, $pop558
	i64.const	$push557=, 1
	i64.add 	$1=, $1, $pop557
	i64.or  	$2=, $6, $2
	i64.const	$push556=, -5
	i64.add 	$push555=, $5, $pop556
	tee_local	$push554=, $5=, $pop555
	i64.const	$push553=, -6
	i64.ne  	$push13=, $pop554, $pop553
	br_if   	0, $pop13
	end_loop
	i64.const	$5=, 59
	i32.const	$4=, .L.str.106
	i64.const	$1=, 0
	i64.const	$3=, 0
.LBB43_10:
	loop    	
	block   	
	block   	
	block   	
	i64.const	$push559=, 0
	i64.eq  	$push14=, $1, $pop559
	br_if   	0, $pop14
	i64.const	$6=, 0
	i64.const	$push560=, 11
	i64.le_u	$push15=, $1, $pop560
	br_if   	1, $pop15
	br      	2
.LBB43_12:
	end_block
	block   	
	block   	
	i32.load8_s	$push565=, 0($4)
	tee_local	$push564=, $0=, $pop565
	i32.const	$push563=, -97
	i32.add 	$push16=, $pop564, $pop563
	i32.const	$push562=, 255
	i32.and 	$push17=, $pop16, $pop562
	i32.const	$push561=, 25
	i32.gt_u	$push18=, $pop17, $pop561
	br_if   	0, $pop18
	i32.const	$push566=, 165
	i32.add 	$0=, $0, $pop566
	br      	1
.LBB43_14:
	end_block
	i32.const	$push571=, 208
	i32.add 	$push19=, $0, $pop571
	i32.const	$push570=, 0
	i32.const	$push569=, -49
	i32.add 	$push20=, $0, $pop569
	i32.const	$push568=, 255
	i32.and 	$push21=, $pop20, $pop568
	i32.const	$push567=, 5
	i32.lt_u	$push22=, $pop21, $pop567
	i32.select	$0=, $pop19, $pop570, $pop22
.LBB43_15:
	end_block
	i64.extend_u/i32	$push23=, $0
	i64.const	$push573=, 56
	i64.shl 	$push24=, $pop23, $pop573
	i64.const	$push572=, 56
	i64.shr_s	$6=, $pop24, $pop572
.LBB43_16:
	end_block
	i64.const	$push575=, 31
	i64.and 	$push26=, $6, $pop575
	i64.const	$push574=, 4294967295
	i64.and 	$push25=, $5, $pop574
	i64.shl 	$6=, $pop26, $pop25
.LBB43_17:
	end_block
	i32.const	$push581=, 1
	i32.add 	$4=, $4, $pop581
	i64.const	$push580=, 1
	i64.add 	$1=, $1, $pop580
	i64.or  	$3=, $6, $3
	i64.const	$push579=, -5
	i64.add 	$push578=, $5, $pop579
	tee_local	$push577=, $5=, $pop578
	i64.const	$push576=, -6
	i64.ne  	$push27=, $pop577, $pop576
	br_if   	0, $pop27
	end_loop
	i64.eq  	$push28=, $2, $3
	i32.const	$push29=, .L.str.107
	call    	eosio_assert@FUNCTION, $pop28, $pop29
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.108
	i64.const	$2=, 0
.LBB43_19:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push582=, 1
	i64.gt_u	$push30=, $1, $pop582
	br_if   	0, $pop30
	i32.load8_s	$push587=, 0($4)
	tee_local	$push586=, $0=, $pop587
	i32.const	$push585=, -97
	i32.add 	$push32=, $pop586, $pop585
	i32.const	$push584=, 255
	i32.and 	$push33=, $pop32, $pop584
	i32.const	$push583=, 25
	i32.gt_u	$push34=, $pop33, $pop583
	br_if   	1, $pop34
	i32.const	$push588=, 165
	i32.add 	$0=, $0, $pop588
	br      	2
.LBB43_22:
	end_block
	i64.const	$6=, 0
	i64.const	$push589=, 11
	i64.le_u	$push31=, $1, $pop589
	br_if   	2, $pop31
	br      	3
.LBB43_23:
	end_block
	i32.const	$push594=, 208
	i32.add 	$push35=, $0, $pop594
	i32.const	$push593=, 0
	i32.const	$push592=, -49
	i32.add 	$push36=, $0, $pop592
	i32.const	$push591=, 255
	i32.and 	$push37=, $pop36, $pop591
	i32.const	$push590=, 5
	i32.lt_u	$push38=, $pop37, $pop590
	i32.select	$0=, $pop35, $pop593, $pop38
.LBB43_24:
	end_block
	i64.extend_u/i32	$push39=, $0
	i64.const	$push596=, 56
	i64.shl 	$push40=, $pop39, $pop596
	i64.const	$push595=, 56
	i64.shr_s	$6=, $pop40, $pop595
.LBB43_25:
	end_block
	i64.const	$push598=, 31
	i64.and 	$push42=, $6, $pop598
	i64.const	$push597=, 4294967295
	i64.and 	$push41=, $5, $pop597
	i64.shl 	$6=, $pop42, $pop41
.LBB43_26:
	end_block
	i32.const	$push604=, 1
	i32.add 	$4=, $4, $pop604
	i64.const	$push603=, 1
	i64.add 	$1=, $1, $pop603
	i64.or  	$2=, $6, $2
	i64.const	$push602=, -5
	i64.add 	$push601=, $5, $pop602
	tee_local	$push600=, $5=, $pop601
	i64.const	$push599=, -6
	i64.ne  	$push43=, $pop600, $pop599
	br_if   	0, $pop43
	end_loop
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.108
	i64.const	$3=, 0
.LBB43_28:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push605=, 1
	i64.gt_u	$push44=, $1, $pop605
	br_if   	0, $pop44
	i32.load8_s	$push610=, 0($4)
	tee_local	$push609=, $0=, $pop610
	i32.const	$push608=, -97
	i32.add 	$push46=, $pop609, $pop608
	i32.const	$push607=, 255
	i32.and 	$push47=, $pop46, $pop607
	i32.const	$push606=, 25
	i32.gt_u	$push48=, $pop47, $pop606
	br_if   	1, $pop48
	i32.const	$push611=, 165
	i32.add 	$0=, $0, $pop611
	br      	2
.LBB43_31:
	end_block
	i64.const	$6=, 0
	i64.const	$push612=, 11
	i64.le_u	$push45=, $1, $pop612
	br_if   	2, $pop45
	br      	3
.LBB43_32:
	end_block
	i32.const	$push617=, 208
	i32.add 	$push49=, $0, $pop617
	i32.const	$push616=, 0
	i32.const	$push615=, -49
	i32.add 	$push50=, $0, $pop615
	i32.const	$push614=, 255
	i32.and 	$push51=, $pop50, $pop614
	i32.const	$push613=, 5
	i32.lt_u	$push52=, $pop51, $pop613
	i32.select	$0=, $pop49, $pop616, $pop52
.LBB43_33:
	end_block
	i64.extend_u/i32	$push53=, $0
	i64.const	$push619=, 56
	i64.shl 	$push54=, $pop53, $pop619
	i64.const	$push618=, 56
	i64.shr_s	$6=, $pop54, $pop618
.LBB43_34:
	end_block
	i64.const	$push621=, 31
	i64.and 	$push56=, $6, $pop621
	i64.const	$push620=, 4294967295
	i64.and 	$push55=, $5, $pop620
	i64.shl 	$6=, $pop56, $pop55
.LBB43_35:
	end_block
	i32.const	$push627=, 1
	i32.add 	$4=, $4, $pop627
	i64.const	$push626=, 1
	i64.add 	$1=, $1, $pop626
	i64.or  	$3=, $6, $3
	i64.const	$push625=, -5
	i64.add 	$push624=, $5, $pop625
	tee_local	$push623=, $5=, $pop624
	i64.const	$push622=, -6
	i64.ne  	$push57=, $pop623, $pop622
	br_if   	0, $pop57
	end_loop
	i64.eq  	$push58=, $2, $3
	i32.const	$push59=, .L.str.109
	call    	eosio_assert@FUNCTION, $pop58, $pop59
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.110
	i64.const	$2=, 0
.LBB43_37:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push628=, 2
	i64.gt_u	$push60=, $1, $pop628
	br_if   	0, $pop60
	i32.load8_s	$push633=, 0($4)
	tee_local	$push632=, $0=, $pop633
	i32.const	$push631=, -97
	i32.add 	$push62=, $pop632, $pop631
	i32.const	$push630=, 255
	i32.and 	$push63=, $pop62, $pop630
	i32.const	$push629=, 25
	i32.gt_u	$push64=, $pop63, $pop629
	br_if   	1, $pop64
	i32.const	$push634=, 165
	i32.add 	$0=, $0, $pop634
	br      	2
.LBB43_40:
	end_block
	i64.const	$6=, 0
	i64.const	$push635=, 11
	i64.le_u	$push61=, $1, $pop635
	br_if   	2, $pop61
	br      	3
.LBB43_41:
	end_block
	i32.const	$push640=, 208
	i32.add 	$push65=, $0, $pop640
	i32.const	$push639=, 0
	i32.const	$push638=, -49
	i32.add 	$push66=, $0, $pop638
	i32.const	$push637=, 255
	i32.and 	$push67=, $pop66, $pop637
	i32.const	$push636=, 5
	i32.lt_u	$push68=, $pop67, $pop636
	i32.select	$0=, $pop65, $pop639, $pop68
.LBB43_42:
	end_block
	i64.extend_u/i32	$push69=, $0
	i64.const	$push642=, 56
	i64.shl 	$push70=, $pop69, $pop642
	i64.const	$push641=, 56
	i64.shr_s	$6=, $pop70, $pop641
.LBB43_43:
	end_block
	i64.const	$push644=, 31
	i64.and 	$push72=, $6, $pop644
	i64.const	$push643=, 4294967295
	i64.and 	$push71=, $5, $pop643
	i64.shl 	$6=, $pop72, $pop71
.LBB43_44:
	end_block
	i32.const	$push650=, 1
	i32.add 	$4=, $4, $pop650
	i64.const	$push649=, 1
	i64.add 	$1=, $1, $pop649
	i64.or  	$2=, $6, $2
	i64.const	$push648=, -5
	i64.add 	$push647=, $5, $pop648
	tee_local	$push646=, $5=, $pop647
	i64.const	$push645=, -6
	i64.ne  	$push73=, $pop646, $pop645
	br_if   	0, $pop73
	end_loop
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.110
	i64.const	$3=, 0
.LBB43_46:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push651=, 2
	i64.gt_u	$push74=, $1, $pop651
	br_if   	0, $pop74
	i32.load8_s	$push656=, 0($4)
	tee_local	$push655=, $0=, $pop656
	i32.const	$push654=, -97
	i32.add 	$push76=, $pop655, $pop654
	i32.const	$push653=, 255
	i32.and 	$push77=, $pop76, $pop653
	i32.const	$push652=, 25
	i32.gt_u	$push78=, $pop77, $pop652
	br_if   	1, $pop78
	i32.const	$push657=, 165
	i32.add 	$0=, $0, $pop657
	br      	2
.LBB43_49:
	end_block
	i64.const	$6=, 0
	i64.const	$push658=, 11
	i64.le_u	$push75=, $1, $pop658
	br_if   	2, $pop75
	br      	3
.LBB43_50:
	end_block
	i32.const	$push663=, 208
	i32.add 	$push79=, $0, $pop663
	i32.const	$push662=, 0
	i32.const	$push661=, -49
	i32.add 	$push80=, $0, $pop661
	i32.const	$push660=, 255
	i32.and 	$push81=, $pop80, $pop660
	i32.const	$push659=, 5
	i32.lt_u	$push82=, $pop81, $pop659
	i32.select	$0=, $pop79, $pop662, $pop82
.LBB43_51:
	end_block
	i64.extend_u/i32	$push83=, $0
	i64.const	$push665=, 56
	i64.shl 	$push84=, $pop83, $pop665
	i64.const	$push664=, 56
	i64.shr_s	$6=, $pop84, $pop664
.LBB43_52:
	end_block
	i64.const	$push667=, 31
	i64.and 	$push86=, $6, $pop667
	i64.const	$push666=, 4294967295
	i64.and 	$push85=, $5, $pop666
	i64.shl 	$6=, $pop86, $pop85
.LBB43_53:
	end_block
	i32.const	$push673=, 1
	i32.add 	$4=, $4, $pop673
	i64.const	$push672=, 1
	i64.add 	$1=, $1, $pop672
	i64.or  	$3=, $6, $3
	i64.const	$push671=, -5
	i64.add 	$push670=, $5, $pop671
	tee_local	$push669=, $5=, $pop670
	i64.const	$push668=, -6
	i64.ne  	$push87=, $pop669, $pop668
	br_if   	0, $pop87
	end_loop
	i64.eq  	$push88=, $2, $3
	i32.const	$push89=, .L.str.111
	call    	eosio_assert@FUNCTION, $pop88, $pop89
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.112
	i64.const	$2=, 0
.LBB43_55:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push674=, 3
	i64.gt_u	$push90=, $1, $pop674
	br_if   	0, $pop90
	i32.load8_s	$push679=, 0($4)
	tee_local	$push678=, $0=, $pop679
	i32.const	$push677=, -97
	i32.add 	$push92=, $pop678, $pop677
	i32.const	$push676=, 255
	i32.and 	$push93=, $pop92, $pop676
	i32.const	$push675=, 25
	i32.gt_u	$push94=, $pop93, $pop675
	br_if   	1, $pop94
	i32.const	$push680=, 165
	i32.add 	$0=, $0, $pop680
	br      	2
.LBB43_58:
	end_block
	i64.const	$6=, 0
	i64.const	$push681=, 11
	i64.le_u	$push91=, $1, $pop681
	br_if   	2, $pop91
	br      	3
.LBB43_59:
	end_block
	i32.const	$push686=, 208
	i32.add 	$push95=, $0, $pop686
	i32.const	$push685=, 0
	i32.const	$push684=, -49
	i32.add 	$push96=, $0, $pop684
	i32.const	$push683=, 255
	i32.and 	$push97=, $pop96, $pop683
	i32.const	$push682=, 5
	i32.lt_u	$push98=, $pop97, $pop682
	i32.select	$0=, $pop95, $pop685, $pop98
.LBB43_60:
	end_block
	i64.extend_u/i32	$push99=, $0
	i64.const	$push688=, 56
	i64.shl 	$push100=, $pop99, $pop688
	i64.const	$push687=, 56
	i64.shr_s	$6=, $pop100, $pop687
.LBB43_61:
	end_block
	i64.const	$push690=, 31
	i64.and 	$push102=, $6, $pop690
	i64.const	$push689=, 4294967295
	i64.and 	$push101=, $5, $pop689
	i64.shl 	$6=, $pop102, $pop101
.LBB43_62:
	end_block
	i32.const	$push696=, 1
	i32.add 	$4=, $4, $pop696
	i64.const	$push695=, 1
	i64.add 	$1=, $1, $pop695
	i64.or  	$2=, $6, $2
	i64.const	$push694=, -5
	i64.add 	$push693=, $5, $pop694
	tee_local	$push692=, $5=, $pop693
	i64.const	$push691=, -6
	i64.ne  	$push103=, $pop692, $pop691
	br_if   	0, $pop103
	end_loop
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.112
	i64.const	$3=, 0
.LBB43_64:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push697=, 3
	i64.gt_u	$push104=, $1, $pop697
	br_if   	0, $pop104
	i32.load8_s	$push702=, 0($4)
	tee_local	$push701=, $0=, $pop702
	i32.const	$push700=, -97
	i32.add 	$push106=, $pop701, $pop700
	i32.const	$push699=, 255
	i32.and 	$push107=, $pop106, $pop699
	i32.const	$push698=, 25
	i32.gt_u	$push108=, $pop107, $pop698
	br_if   	1, $pop108
	i32.const	$push703=, 165
	i32.add 	$0=, $0, $pop703
	br      	2
.LBB43_67:
	end_block
	i64.const	$6=, 0
	i64.const	$push704=, 11
	i64.le_u	$push105=, $1, $pop704
	br_if   	2, $pop105
	br      	3
.LBB43_68:
	end_block
	i32.const	$push709=, 208
	i32.add 	$push109=, $0, $pop709
	i32.const	$push708=, 0
	i32.const	$push707=, -49
	i32.add 	$push110=, $0, $pop707
	i32.const	$push706=, 255
	i32.and 	$push111=, $pop110, $pop706
	i32.const	$push705=, 5
	i32.lt_u	$push112=, $pop111, $pop705
	i32.select	$0=, $pop109, $pop708, $pop112
.LBB43_69:
	end_block
	i64.extend_u/i32	$push113=, $0
	i64.const	$push711=, 56
	i64.shl 	$push114=, $pop113, $pop711
	i64.const	$push710=, 56
	i64.shr_s	$6=, $pop114, $pop710
.LBB43_70:
	end_block
	i64.const	$push713=, 31
	i64.and 	$push116=, $6, $pop713
	i64.const	$push712=, 4294967295
	i64.and 	$push115=, $5, $pop712
	i64.shl 	$6=, $pop116, $pop115
.LBB43_71:
	end_block
	i32.const	$push719=, 1
	i32.add 	$4=, $4, $pop719
	i64.const	$push718=, 1
	i64.add 	$1=, $1, $pop718
	i64.or  	$3=, $6, $3
	i64.const	$push717=, -5
	i64.add 	$push716=, $5, $pop717
	tee_local	$push715=, $5=, $pop716
	i64.const	$push714=, -6
	i64.ne  	$push117=, $pop715, $pop714
	br_if   	0, $pop117
	end_loop
	i64.eq  	$push118=, $2, $3
	i32.const	$push119=, .L.str.113
	call    	eosio_assert@FUNCTION, $pop118, $pop119
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.114
	i64.const	$2=, 0
.LBB43_73:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push720=, 4
	i64.gt_u	$push120=, $1, $pop720
	br_if   	0, $pop120
	i32.load8_s	$push725=, 0($4)
	tee_local	$push724=, $0=, $pop725
	i32.const	$push723=, -97
	i32.add 	$push122=, $pop724, $pop723
	i32.const	$push722=, 255
	i32.and 	$push123=, $pop122, $pop722
	i32.const	$push721=, 25
	i32.gt_u	$push124=, $pop123, $pop721
	br_if   	1, $pop124
	i32.const	$push726=, 165
	i32.add 	$0=, $0, $pop726
	br      	2
.LBB43_76:
	end_block
	i64.const	$6=, 0
	i64.const	$push727=, 11
	i64.le_u	$push121=, $1, $pop727
	br_if   	2, $pop121
	br      	3
.LBB43_77:
	end_block
	i32.const	$push732=, 208
	i32.add 	$push125=, $0, $pop732
	i32.const	$push731=, 0
	i32.const	$push730=, -49
	i32.add 	$push126=, $0, $pop730
	i32.const	$push729=, 255
	i32.and 	$push127=, $pop126, $pop729
	i32.const	$push728=, 5
	i32.lt_u	$push128=, $pop127, $pop728
	i32.select	$0=, $pop125, $pop731, $pop128
.LBB43_78:
	end_block
	i64.extend_u/i32	$push129=, $0
	i64.const	$push734=, 56
	i64.shl 	$push130=, $pop129, $pop734
	i64.const	$push733=, 56
	i64.shr_s	$6=, $pop130, $pop733
.LBB43_79:
	end_block
	i64.const	$push736=, 31
	i64.and 	$push132=, $6, $pop736
	i64.const	$push735=, 4294967295
	i64.and 	$push131=, $5, $pop735
	i64.shl 	$6=, $pop132, $pop131
.LBB43_80:
	end_block
	i32.const	$push742=, 1
	i32.add 	$4=, $4, $pop742
	i64.const	$push741=, 1
	i64.add 	$1=, $1, $pop741
	i64.or  	$2=, $6, $2
	i64.const	$push740=, -5
	i64.add 	$push739=, $5, $pop740
	tee_local	$push738=, $5=, $pop739
	i64.const	$push737=, -6
	i64.ne  	$push133=, $pop738, $pop737
	br_if   	0, $pop133
	end_loop
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.114
	i64.const	$3=, 0
.LBB43_82:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push743=, 4
	i64.gt_u	$push134=, $1, $pop743
	br_if   	0, $pop134
	i32.load8_s	$push748=, 0($4)
	tee_local	$push747=, $0=, $pop748
	i32.const	$push746=, -97
	i32.add 	$push136=, $pop747, $pop746
	i32.const	$push745=, 255
	i32.and 	$push137=, $pop136, $pop745
	i32.const	$push744=, 25
	i32.gt_u	$push138=, $pop137, $pop744
	br_if   	1, $pop138
	i32.const	$push749=, 165
	i32.add 	$0=, $0, $pop749
	br      	2
.LBB43_85:
	end_block
	i64.const	$6=, 0
	i64.const	$push750=, 11
	i64.le_u	$push135=, $1, $pop750
	br_if   	2, $pop135
	br      	3
.LBB43_86:
	end_block
	i32.const	$push755=, 208
	i32.add 	$push139=, $0, $pop755
	i32.const	$push754=, 0
	i32.const	$push753=, -49
	i32.add 	$push140=, $0, $pop753
	i32.const	$push752=, 255
	i32.and 	$push141=, $pop140, $pop752
	i32.const	$push751=, 5
	i32.lt_u	$push142=, $pop141, $pop751
	i32.select	$0=, $pop139, $pop754, $pop142
.LBB43_87:
	end_block
	i64.extend_u/i32	$push143=, $0
	i64.const	$push757=, 56
	i64.shl 	$push144=, $pop143, $pop757
	i64.const	$push756=, 56
	i64.shr_s	$6=, $pop144, $pop756
.LBB43_88:
	end_block
	i64.const	$push759=, 31
	i64.and 	$push146=, $6, $pop759
	i64.const	$push758=, 4294967295
	i64.and 	$push145=, $5, $pop758
	i64.shl 	$6=, $pop146, $pop145
.LBB43_89:
	end_block
	i32.const	$push765=, 1
	i32.add 	$4=, $4, $pop765
	i64.const	$push764=, 1
	i64.add 	$1=, $1, $pop764
	i64.or  	$3=, $6, $3
	i64.const	$push763=, -5
	i64.add 	$push762=, $5, $pop763
	tee_local	$push761=, $5=, $pop762
	i64.const	$push760=, -6
	i64.ne  	$push147=, $pop761, $pop760
	br_if   	0, $pop147
	end_loop
	i64.eq  	$push148=, $2, $3
	i32.const	$push149=, .L.str.115
	call    	eosio_assert@FUNCTION, $pop148, $pop149
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.116
	i64.const	$2=, 0
.LBB43_91:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push766=, 5
	i64.gt_u	$push150=, $1, $pop766
	br_if   	0, $pop150
	i32.load8_s	$push771=, 0($4)
	tee_local	$push770=, $0=, $pop771
	i32.const	$push769=, -97
	i32.add 	$push152=, $pop770, $pop769
	i32.const	$push768=, 255
	i32.and 	$push153=, $pop152, $pop768
	i32.const	$push767=, 25
	i32.gt_u	$push154=, $pop153, $pop767
	br_if   	1, $pop154
	i32.const	$push772=, 165
	i32.add 	$0=, $0, $pop772
	br      	2
.LBB43_94:
	end_block
	i64.const	$6=, 0
	i64.const	$push773=, 11
	i64.le_u	$push151=, $1, $pop773
	br_if   	2, $pop151
	br      	3
.LBB43_95:
	end_block
	i32.const	$push778=, 208
	i32.add 	$push155=, $0, $pop778
	i32.const	$push777=, 0
	i32.const	$push776=, -49
	i32.add 	$push156=, $0, $pop776
	i32.const	$push775=, 255
	i32.and 	$push157=, $pop156, $pop775
	i32.const	$push774=, 5
	i32.lt_u	$push158=, $pop157, $pop774
	i32.select	$0=, $pop155, $pop777, $pop158
.LBB43_96:
	end_block
	i64.extend_u/i32	$push159=, $0
	i64.const	$push780=, 56
	i64.shl 	$push160=, $pop159, $pop780
	i64.const	$push779=, 56
	i64.shr_s	$6=, $pop160, $pop779
.LBB43_97:
	end_block
	i64.const	$push782=, 31
	i64.and 	$push162=, $6, $pop782
	i64.const	$push781=, 4294967295
	i64.and 	$push161=, $5, $pop781
	i64.shl 	$6=, $pop162, $pop161
.LBB43_98:
	end_block
	i32.const	$push788=, 1
	i32.add 	$4=, $4, $pop788
	i64.const	$push787=, 1
	i64.add 	$1=, $1, $pop787
	i64.or  	$2=, $6, $2
	i64.const	$push786=, -5
	i64.add 	$push785=, $5, $pop786
	tee_local	$push784=, $5=, $pop785
	i64.const	$push783=, -6
	i64.ne  	$push163=, $pop784, $pop783
	br_if   	0, $pop163
	end_loop
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.116
	i64.const	$3=, 0
.LBB43_100:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push789=, 5
	i64.gt_u	$push164=, $1, $pop789
	br_if   	0, $pop164
	i32.load8_s	$push794=, 0($4)
	tee_local	$push793=, $0=, $pop794
	i32.const	$push792=, -97
	i32.add 	$push166=, $pop793, $pop792
	i32.const	$push791=, 255
	i32.and 	$push167=, $pop166, $pop791
	i32.const	$push790=, 25
	i32.gt_u	$push168=, $pop167, $pop790
	br_if   	1, $pop168
	i32.const	$push795=, 165
	i32.add 	$0=, $0, $pop795
	br      	2
.LBB43_103:
	end_block
	i64.const	$6=, 0
	i64.const	$push796=, 11
	i64.le_u	$push165=, $1, $pop796
	br_if   	2, $pop165
	br      	3
.LBB43_104:
	end_block
	i32.const	$push801=, 208
	i32.add 	$push169=, $0, $pop801
	i32.const	$push800=, 0
	i32.const	$push799=, -49
	i32.add 	$push170=, $0, $pop799
	i32.const	$push798=, 255
	i32.and 	$push171=, $pop170, $pop798
	i32.const	$push797=, 5
	i32.lt_u	$push172=, $pop171, $pop797
	i32.select	$0=, $pop169, $pop800, $pop172
.LBB43_105:
	end_block
	i64.extend_u/i32	$push173=, $0
	i64.const	$push803=, 56
	i64.shl 	$push174=, $pop173, $pop803
	i64.const	$push802=, 56
	i64.shr_s	$6=, $pop174, $pop802
.LBB43_106:
	end_block
	i64.const	$push805=, 31
	i64.and 	$push176=, $6, $pop805
	i64.const	$push804=, 4294967295
	i64.and 	$push175=, $5, $pop804
	i64.shl 	$6=, $pop176, $pop175
.LBB43_107:
	end_block
	i32.const	$push811=, 1
	i32.add 	$4=, $4, $pop811
	i64.const	$push810=, 1
	i64.add 	$1=, $1, $pop810
	i64.or  	$3=, $6, $3
	i64.const	$push809=, -5
	i64.add 	$push808=, $5, $pop809
	tee_local	$push807=, $5=, $pop808
	i64.const	$push806=, -6
	i64.ne  	$push177=, $pop807, $pop806
	br_if   	0, $pop177
	end_loop
	i64.eq  	$push178=, $2, $3
	i32.const	$push179=, .L.str.117
	call    	eosio_assert@FUNCTION, $pop178, $pop179
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.118
	i64.const	$2=, 0
.LBB43_109:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push812=, 6
	i64.gt_u	$push180=, $1, $pop812
	br_if   	0, $pop180
	i32.load8_s	$push817=, 0($4)
	tee_local	$push816=, $0=, $pop817
	i32.const	$push815=, -97
	i32.add 	$push182=, $pop816, $pop815
	i32.const	$push814=, 255
	i32.and 	$push183=, $pop182, $pop814
	i32.const	$push813=, 25
	i32.gt_u	$push184=, $pop183, $pop813
	br_if   	1, $pop184
	i32.const	$push818=, 165
	i32.add 	$0=, $0, $pop818
	br      	2
.LBB43_112:
	end_block
	i64.const	$6=, 0
	i64.const	$push819=, 11
	i64.le_u	$push181=, $1, $pop819
	br_if   	2, $pop181
	br      	3
.LBB43_113:
	end_block
	i32.const	$push824=, 208
	i32.add 	$push185=, $0, $pop824
	i32.const	$push823=, 0
	i32.const	$push822=, -49
	i32.add 	$push186=, $0, $pop822
	i32.const	$push821=, 255
	i32.and 	$push187=, $pop186, $pop821
	i32.const	$push820=, 5
	i32.lt_u	$push188=, $pop187, $pop820
	i32.select	$0=, $pop185, $pop823, $pop188
.LBB43_114:
	end_block
	i64.extend_u/i32	$push189=, $0
	i64.const	$push826=, 56
	i64.shl 	$push190=, $pop189, $pop826
	i64.const	$push825=, 56
	i64.shr_s	$6=, $pop190, $pop825
.LBB43_115:
	end_block
	i64.const	$push828=, 31
	i64.and 	$push192=, $6, $pop828
	i64.const	$push827=, 4294967295
	i64.and 	$push191=, $5, $pop827
	i64.shl 	$6=, $pop192, $pop191
.LBB43_116:
	end_block
	i32.const	$push834=, 1
	i32.add 	$4=, $4, $pop834
	i64.const	$push833=, 1
	i64.add 	$1=, $1, $pop833
	i64.or  	$2=, $6, $2
	i64.const	$push832=, -5
	i64.add 	$push831=, $5, $pop832
	tee_local	$push830=, $5=, $pop831
	i64.const	$push829=, -6
	i64.ne  	$push193=, $pop830, $pop829
	br_if   	0, $pop193
	end_loop
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.118
	i64.const	$3=, 0
.LBB43_118:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push835=, 6
	i64.gt_u	$push194=, $1, $pop835
	br_if   	0, $pop194
	i32.load8_s	$push840=, 0($4)
	tee_local	$push839=, $0=, $pop840
	i32.const	$push838=, -97
	i32.add 	$push196=, $pop839, $pop838
	i32.const	$push837=, 255
	i32.and 	$push197=, $pop196, $pop837
	i32.const	$push836=, 25
	i32.gt_u	$push198=, $pop197, $pop836
	br_if   	1, $pop198
	i32.const	$push841=, 165
	i32.add 	$0=, $0, $pop841
	br      	2
.LBB43_121:
	end_block
	i64.const	$6=, 0
	i64.const	$push842=, 11
	i64.le_u	$push195=, $1, $pop842
	br_if   	2, $pop195
	br      	3
.LBB43_122:
	end_block
	i32.const	$push847=, 208
	i32.add 	$push199=, $0, $pop847
	i32.const	$push846=, 0
	i32.const	$push845=, -49
	i32.add 	$push200=, $0, $pop845
	i32.const	$push844=, 255
	i32.and 	$push201=, $pop200, $pop844
	i32.const	$push843=, 5
	i32.lt_u	$push202=, $pop201, $pop843
	i32.select	$0=, $pop199, $pop846, $pop202
.LBB43_123:
	end_block
	i64.extend_u/i32	$push203=, $0
	i64.const	$push849=, 56
	i64.shl 	$push204=, $pop203, $pop849
	i64.const	$push848=, 56
	i64.shr_s	$6=, $pop204, $pop848
.LBB43_124:
	end_block
	i64.const	$push851=, 31
	i64.and 	$push206=, $6, $pop851
	i64.const	$push850=, 4294967295
	i64.and 	$push205=, $5, $pop850
	i64.shl 	$6=, $pop206, $pop205
.LBB43_125:
	end_block
	i32.const	$push857=, 1
	i32.add 	$4=, $4, $pop857
	i64.const	$push856=, 1
	i64.add 	$1=, $1, $pop856
	i64.or  	$3=, $6, $3
	i64.const	$push855=, -5
	i64.add 	$push854=, $5, $pop855
	tee_local	$push853=, $5=, $pop854
	i64.const	$push852=, -6
	i64.ne  	$push207=, $pop853, $pop852
	br_if   	0, $pop207
	end_loop
	i64.eq  	$push208=, $2, $3
	i32.const	$push209=, .L.str.119
	call    	eosio_assert@FUNCTION, $pop208, $pop209
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.120
	i64.const	$2=, 0
.LBB43_127:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push858=, 7
	i64.gt_u	$push210=, $1, $pop858
	br_if   	0, $pop210
	i32.load8_s	$push863=, 0($4)
	tee_local	$push862=, $0=, $pop863
	i32.const	$push861=, -97
	i32.add 	$push212=, $pop862, $pop861
	i32.const	$push860=, 255
	i32.and 	$push213=, $pop212, $pop860
	i32.const	$push859=, 25
	i32.gt_u	$push214=, $pop213, $pop859
	br_if   	1, $pop214
	i32.const	$push864=, 165
	i32.add 	$0=, $0, $pop864
	br      	2
.LBB43_130:
	end_block
	i64.const	$6=, 0
	i64.const	$push865=, 11
	i64.le_u	$push211=, $1, $pop865
	br_if   	2, $pop211
	br      	3
.LBB43_131:
	end_block
	i32.const	$push870=, 208
	i32.add 	$push215=, $0, $pop870
	i32.const	$push869=, 0
	i32.const	$push868=, -49
	i32.add 	$push216=, $0, $pop868
	i32.const	$push867=, 255
	i32.and 	$push217=, $pop216, $pop867
	i32.const	$push866=, 5
	i32.lt_u	$push218=, $pop217, $pop866
	i32.select	$0=, $pop215, $pop869, $pop218
.LBB43_132:
	end_block
	i64.extend_u/i32	$push219=, $0
	i64.const	$push872=, 56
	i64.shl 	$push220=, $pop219, $pop872
	i64.const	$push871=, 56
	i64.shr_s	$6=, $pop220, $pop871
.LBB43_133:
	end_block
	i64.const	$push874=, 31
	i64.and 	$push222=, $6, $pop874
	i64.const	$push873=, 4294967295
	i64.and 	$push221=, $5, $pop873
	i64.shl 	$6=, $pop222, $pop221
.LBB43_134:
	end_block
	i32.const	$push880=, 1
	i32.add 	$4=, $4, $pop880
	i64.const	$push879=, 1
	i64.add 	$1=, $1, $pop879
	i64.or  	$2=, $6, $2
	i64.const	$push878=, -5
	i64.add 	$push877=, $5, $pop878
	tee_local	$push876=, $5=, $pop877
	i64.const	$push875=, -6
	i64.ne  	$push223=, $pop876, $pop875
	br_if   	0, $pop223
	end_loop
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.120
	i64.const	$3=, 0
.LBB43_136:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push881=, 7
	i64.gt_u	$push224=, $1, $pop881
	br_if   	0, $pop224
	i32.load8_s	$push886=, 0($4)
	tee_local	$push885=, $0=, $pop886
	i32.const	$push884=, -97
	i32.add 	$push226=, $pop885, $pop884
	i32.const	$push883=, 255
	i32.and 	$push227=, $pop226, $pop883
	i32.const	$push882=, 25
	i32.gt_u	$push228=, $pop227, $pop882
	br_if   	1, $pop228
	i32.const	$push887=, 165
	i32.add 	$0=, $0, $pop887
	br      	2
.LBB43_139:
	end_block
	i64.const	$6=, 0
	i64.const	$push888=, 11
	i64.le_u	$push225=, $1, $pop888
	br_if   	2, $pop225
	br      	3
.LBB43_140:
	end_block
	i32.const	$push893=, 208
	i32.add 	$push229=, $0, $pop893
	i32.const	$push892=, 0
	i32.const	$push891=, -49
	i32.add 	$push230=, $0, $pop891
	i32.const	$push890=, 255
	i32.and 	$push231=, $pop230, $pop890
	i32.const	$push889=, 5
	i32.lt_u	$push232=, $pop231, $pop889
	i32.select	$0=, $pop229, $pop892, $pop232
.LBB43_141:
	end_block
	i64.extend_u/i32	$push233=, $0
	i64.const	$push895=, 56
	i64.shl 	$push234=, $pop233, $pop895
	i64.const	$push894=, 56
	i64.shr_s	$6=, $pop234, $pop894
.LBB43_142:
	end_block
	i64.const	$push897=, 31
	i64.and 	$push236=, $6, $pop897
	i64.const	$push896=, 4294967295
	i64.and 	$push235=, $5, $pop896
	i64.shl 	$6=, $pop236, $pop235
.LBB43_143:
	end_block
	i32.const	$push903=, 1
	i32.add 	$4=, $4, $pop903
	i64.const	$push902=, 1
	i64.add 	$1=, $1, $pop902
	i64.or  	$3=, $6, $3
	i64.const	$push901=, -5
	i64.add 	$push900=, $5, $pop901
	tee_local	$push899=, $5=, $pop900
	i64.const	$push898=, -6
	i64.ne  	$push237=, $pop899, $pop898
	br_if   	0, $pop237
	end_loop
	i64.eq  	$push238=, $2, $3
	i32.const	$push239=, .L.str.121
	call    	eosio_assert@FUNCTION, $pop238, $pop239
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.122
	i64.const	$2=, 0
.LBB43_145:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push904=, 8
	i64.gt_u	$push240=, $1, $pop904
	br_if   	0, $pop240
	i32.load8_s	$push909=, 0($4)
	tee_local	$push908=, $0=, $pop909
	i32.const	$push907=, -97
	i32.add 	$push242=, $pop908, $pop907
	i32.const	$push906=, 255
	i32.and 	$push243=, $pop242, $pop906
	i32.const	$push905=, 25
	i32.gt_u	$push244=, $pop243, $pop905
	br_if   	1, $pop244
	i32.const	$push910=, 165
	i32.add 	$0=, $0, $pop910
	br      	2
.LBB43_148:
	end_block
	i64.const	$6=, 0
	i64.const	$push911=, 11
	i64.le_u	$push241=, $1, $pop911
	br_if   	2, $pop241
	br      	3
.LBB43_149:
	end_block
	i32.const	$push916=, 208
	i32.add 	$push245=, $0, $pop916
	i32.const	$push915=, 0
	i32.const	$push914=, -49
	i32.add 	$push246=, $0, $pop914
	i32.const	$push913=, 255
	i32.and 	$push247=, $pop246, $pop913
	i32.const	$push912=, 5
	i32.lt_u	$push248=, $pop247, $pop912
	i32.select	$0=, $pop245, $pop915, $pop248
.LBB43_150:
	end_block
	i64.extend_u/i32	$push249=, $0
	i64.const	$push918=, 56
	i64.shl 	$push250=, $pop249, $pop918
	i64.const	$push917=, 56
	i64.shr_s	$6=, $pop250, $pop917
.LBB43_151:
	end_block
	i64.const	$push920=, 31
	i64.and 	$push252=, $6, $pop920
	i64.const	$push919=, 4294967295
	i64.and 	$push251=, $5, $pop919
	i64.shl 	$6=, $pop252, $pop251
.LBB43_152:
	end_block
	i32.const	$push926=, 1
	i32.add 	$4=, $4, $pop926
	i64.const	$push925=, 1
	i64.add 	$1=, $1, $pop925
	i64.or  	$2=, $6, $2
	i64.const	$push924=, -5
	i64.add 	$push923=, $5, $pop924
	tee_local	$push922=, $5=, $pop923
	i64.const	$push921=, -6
	i64.ne  	$push253=, $pop922, $pop921
	br_if   	0, $pop253
	end_loop
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.122
	i64.const	$3=, 0
.LBB43_154:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push927=, 8
	i64.gt_u	$push254=, $1, $pop927
	br_if   	0, $pop254
	i32.load8_s	$push932=, 0($4)
	tee_local	$push931=, $0=, $pop932
	i32.const	$push930=, -97
	i32.add 	$push256=, $pop931, $pop930
	i32.const	$push929=, 255
	i32.and 	$push257=, $pop256, $pop929
	i32.const	$push928=, 25
	i32.gt_u	$push258=, $pop257, $pop928
	br_if   	1, $pop258
	i32.const	$push933=, 165
	i32.add 	$0=, $0, $pop933
	br      	2
.LBB43_157:
	end_block
	i64.const	$6=, 0
	i64.const	$push934=, 11
	i64.le_u	$push255=, $1, $pop934
	br_if   	2, $pop255
	br      	3
.LBB43_158:
	end_block
	i32.const	$push939=, 208
	i32.add 	$push259=, $0, $pop939
	i32.const	$push938=, 0
	i32.const	$push937=, -49
	i32.add 	$push260=, $0, $pop937
	i32.const	$push936=, 255
	i32.and 	$push261=, $pop260, $pop936
	i32.const	$push935=, 5
	i32.lt_u	$push262=, $pop261, $pop935
	i32.select	$0=, $pop259, $pop938, $pop262
.LBB43_159:
	end_block
	i64.extend_u/i32	$push263=, $0
	i64.const	$push941=, 56
	i64.shl 	$push264=, $pop263, $pop941
	i64.const	$push940=, 56
	i64.shr_s	$6=, $pop264, $pop940
.LBB43_160:
	end_block
	i64.const	$push943=, 31
	i64.and 	$push266=, $6, $pop943
	i64.const	$push942=, 4294967295
	i64.and 	$push265=, $5, $pop942
	i64.shl 	$6=, $pop266, $pop265
.LBB43_161:
	end_block
	i32.const	$push949=, 1
	i32.add 	$4=, $4, $pop949
	i64.const	$push948=, 1
	i64.add 	$1=, $1, $pop948
	i64.or  	$3=, $6, $3
	i64.const	$push947=, -5
	i64.add 	$push946=, $5, $pop947
	tee_local	$push945=, $5=, $pop946
	i64.const	$push944=, -6
	i64.ne  	$push267=, $pop945, $pop944
	br_if   	0, $pop267
	end_loop
	i64.eq  	$push268=, $2, $3
	i32.const	$push269=, .L.str.123
	call    	eosio_assert@FUNCTION, $pop268, $pop269
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.124
	i64.const	$2=, 0
.LBB43_163:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push950=, 9
	i64.gt_u	$push270=, $1, $pop950
	br_if   	0, $pop270
	i32.load8_s	$push955=, 0($4)
	tee_local	$push954=, $0=, $pop955
	i32.const	$push953=, -97
	i32.add 	$push272=, $pop954, $pop953
	i32.const	$push952=, 255
	i32.and 	$push273=, $pop272, $pop952
	i32.const	$push951=, 25
	i32.gt_u	$push274=, $pop273, $pop951
	br_if   	1, $pop274
	i32.const	$push956=, 165
	i32.add 	$0=, $0, $pop956
	br      	2
.LBB43_166:
	end_block
	i64.const	$6=, 0
	i64.const	$push957=, 11
	i64.le_u	$push271=, $1, $pop957
	br_if   	2, $pop271
	br      	3
.LBB43_167:
	end_block
	i32.const	$push962=, 208
	i32.add 	$push275=, $0, $pop962
	i32.const	$push961=, 0
	i32.const	$push960=, -49
	i32.add 	$push276=, $0, $pop960
	i32.const	$push959=, 255
	i32.and 	$push277=, $pop276, $pop959
	i32.const	$push958=, 5
	i32.lt_u	$push278=, $pop277, $pop958
	i32.select	$0=, $pop275, $pop961, $pop278
.LBB43_168:
	end_block
	i64.extend_u/i32	$push279=, $0
	i64.const	$push964=, 56
	i64.shl 	$push280=, $pop279, $pop964
	i64.const	$push963=, 56
	i64.shr_s	$6=, $pop280, $pop963
.LBB43_169:
	end_block
	i64.const	$push966=, 31
	i64.and 	$push282=, $6, $pop966
	i64.const	$push965=, 4294967295
	i64.and 	$push281=, $5, $pop965
	i64.shl 	$6=, $pop282, $pop281
.LBB43_170:
	end_block
	i32.const	$push972=, 1
	i32.add 	$4=, $4, $pop972
	i64.const	$push971=, 1
	i64.add 	$1=, $1, $pop971
	i64.or  	$2=, $6, $2
	i64.const	$push970=, -5
	i64.add 	$push969=, $5, $pop970
	tee_local	$push968=, $5=, $pop969
	i64.const	$push967=, -6
	i64.ne  	$push283=, $pop968, $pop967
	br_if   	0, $pop283
	end_loop
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.124
	i64.const	$3=, 0
.LBB43_172:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push973=, 9
	i64.gt_u	$push284=, $1, $pop973
	br_if   	0, $pop284
	i32.load8_s	$push978=, 0($4)
	tee_local	$push977=, $0=, $pop978
	i32.const	$push976=, -97
	i32.add 	$push286=, $pop977, $pop976
	i32.const	$push975=, 255
	i32.and 	$push287=, $pop286, $pop975
	i32.const	$push974=, 25
	i32.gt_u	$push288=, $pop287, $pop974
	br_if   	1, $pop288
	i32.const	$push979=, 165
	i32.add 	$0=, $0, $pop979
	br      	2
.LBB43_175:
	end_block
	i64.const	$6=, 0
	i64.const	$push980=, 11
	i64.le_u	$push285=, $1, $pop980
	br_if   	2, $pop285
	br      	3
.LBB43_176:
	end_block
	i32.const	$push985=, 208
	i32.add 	$push289=, $0, $pop985
	i32.const	$push984=, 0
	i32.const	$push983=, -49
	i32.add 	$push290=, $0, $pop983
	i32.const	$push982=, 255
	i32.and 	$push291=, $pop290, $pop982
	i32.const	$push981=, 5
	i32.lt_u	$push292=, $pop291, $pop981
	i32.select	$0=, $pop289, $pop984, $pop292
.LBB43_177:
	end_block
	i64.extend_u/i32	$push293=, $0
	i64.const	$push987=, 56
	i64.shl 	$push294=, $pop293, $pop987
	i64.const	$push986=, 56
	i64.shr_s	$6=, $pop294, $pop986
.LBB43_178:
	end_block
	i64.const	$push989=, 31
	i64.and 	$push296=, $6, $pop989
	i64.const	$push988=, 4294967295
	i64.and 	$push295=, $5, $pop988
	i64.shl 	$6=, $pop296, $pop295
.LBB43_179:
	end_block
	i32.const	$push995=, 1
	i32.add 	$4=, $4, $pop995
	i64.const	$push994=, 1
	i64.add 	$1=, $1, $pop994
	i64.or  	$3=, $6, $3
	i64.const	$push993=, -5
	i64.add 	$push992=, $5, $pop993
	tee_local	$push991=, $5=, $pop992
	i64.const	$push990=, -6
	i64.ne  	$push297=, $pop991, $pop990
	br_if   	0, $pop297
	end_loop
	i64.eq  	$push298=, $2, $3
	i32.const	$push299=, .L.str.125
	call    	eosio_assert@FUNCTION, $pop298, $pop299
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.126
	i64.const	$2=, 0
.LBB43_181:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push996=, 10
	i64.gt_u	$push300=, $1, $pop996
	br_if   	0, $pop300
	i32.load8_s	$push1001=, 0($4)
	tee_local	$push1000=, $0=, $pop1001
	i32.const	$push999=, -97
	i32.add 	$push302=, $pop1000, $pop999
	i32.const	$push998=, 255
	i32.and 	$push303=, $pop302, $pop998
	i32.const	$push997=, 25
	i32.gt_u	$push304=, $pop303, $pop997
	br_if   	1, $pop304
	i32.const	$push1002=, 165
	i32.add 	$0=, $0, $pop1002
	br      	2
.LBB43_184:
	end_block
	i64.const	$6=, 0
	i64.const	$push1003=, 11
	i64.eq  	$push301=, $1, $pop1003
	br_if   	2, $pop301
	br      	3
.LBB43_185:
	end_block
	i32.const	$push1008=, 208
	i32.add 	$push305=, $0, $pop1008
	i32.const	$push1007=, 0
	i32.const	$push1006=, -49
	i32.add 	$push306=, $0, $pop1006
	i32.const	$push1005=, 255
	i32.and 	$push307=, $pop306, $pop1005
	i32.const	$push1004=, 5
	i32.lt_u	$push308=, $pop307, $pop1004
	i32.select	$0=, $pop305, $pop1007, $pop308
.LBB43_186:
	end_block
	i64.extend_u/i32	$push309=, $0
	i64.const	$push1010=, 56
	i64.shl 	$push310=, $pop309, $pop1010
	i64.const	$push1009=, 56
	i64.shr_s	$6=, $pop310, $pop1009
.LBB43_187:
	end_block
	i64.const	$push1012=, 31
	i64.and 	$push312=, $6, $pop1012
	i64.const	$push1011=, 4294967295
	i64.and 	$push311=, $5, $pop1011
	i64.shl 	$6=, $pop312, $pop311
.LBB43_188:
	end_block
	i32.const	$push1018=, 1
	i32.add 	$4=, $4, $pop1018
	i64.const	$push1017=, -5
	i64.add 	$5=, $5, $pop1017
	i64.or  	$2=, $6, $2
	i64.const	$push1016=, 1
	i64.add 	$push1015=, $1, $pop1016
	tee_local	$push1014=, $1=, $pop1015
	i64.const	$push1013=, 13
	i64.ne  	$push313=, $pop1014, $pop1013
	br_if   	0, $pop313
	end_loop
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.126
	i64.const	$3=, 0
.LBB43_190:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push1019=, 10
	i64.gt_u	$push314=, $1, $pop1019
	br_if   	0, $pop314
	i32.load8_s	$push1024=, 0($4)
	tee_local	$push1023=, $0=, $pop1024
	i32.const	$push1022=, -97
	i32.add 	$push316=, $pop1023, $pop1022
	i32.const	$push1021=, 255
	i32.and 	$push317=, $pop316, $pop1021
	i32.const	$push1020=, 25
	i32.gt_u	$push318=, $pop317, $pop1020
	br_if   	1, $pop318
	i32.const	$push1025=, 165
	i32.add 	$0=, $0, $pop1025
	br      	2
.LBB43_193:
	end_block
	i64.const	$6=, 0
	i64.const	$push1026=, 11
	i64.eq  	$push315=, $1, $pop1026
	br_if   	2, $pop315
	br      	3
.LBB43_194:
	end_block
	i32.const	$push1031=, 208
	i32.add 	$push319=, $0, $pop1031
	i32.const	$push1030=, 0
	i32.const	$push1029=, -49
	i32.add 	$push320=, $0, $pop1029
	i32.const	$push1028=, 255
	i32.and 	$push321=, $pop320, $pop1028
	i32.const	$push1027=, 5
	i32.lt_u	$push322=, $pop321, $pop1027
	i32.select	$0=, $pop319, $pop1030, $pop322
.LBB43_195:
	end_block
	i64.extend_u/i32	$push323=, $0
	i64.const	$push1033=, 56
	i64.shl 	$push324=, $pop323, $pop1033
	i64.const	$push1032=, 56
	i64.shr_s	$6=, $pop324, $pop1032
.LBB43_196:
	end_block
	i64.const	$push1035=, 31
	i64.and 	$push326=, $6, $pop1035
	i64.const	$push1034=, 4294967295
	i64.and 	$push325=, $5, $pop1034
	i64.shl 	$6=, $pop326, $pop325
.LBB43_197:
	end_block
	i32.const	$push1041=, 1
	i32.add 	$4=, $4, $pop1041
	i64.const	$push1040=, -5
	i64.add 	$5=, $5, $pop1040
	i64.or  	$3=, $6, $3
	i64.const	$push1039=, 1
	i64.add 	$push1038=, $1, $pop1039
	tee_local	$push1037=, $1=, $pop1038
	i64.const	$push1036=, 13
	i64.ne  	$push327=, $pop1037, $pop1036
	br_if   	0, $pop327
	end_loop
	i64.eq  	$push328=, $2, $3
	i32.const	$push329=, .L.str.127
	call    	eosio_assert@FUNCTION, $pop328, $pop329
	i64.const	$1=, 0
	i64.const	$6=, 59
	i32.const	$4=, .L.str.128
	i64.const	$2=, 0
.LBB43_199:
	loop    	
	i64.const	$5=, 0
	block   	
	i64.const	$push1042=, 11
	i64.gt_u	$push330=, $1, $pop1042
	br_if   	0, $pop330
	block   	
	block   	
	i32.load8_s	$push1047=, 0($4)
	tee_local	$push1046=, $0=, $pop1047
	i32.const	$push1045=, -97
	i32.add 	$push331=, $pop1046, $pop1045
	i32.const	$push1044=, 255
	i32.and 	$push332=, $pop331, $pop1044
	i32.const	$push1043=, 25
	i32.gt_u	$push333=, $pop332, $pop1043
	br_if   	0, $pop333
	i32.const	$push1048=, 165
	i32.add 	$0=, $0, $pop1048
	br      	1
.LBB43_202:
	end_block
	i32.const	$push1053=, 208
	i32.add 	$push334=, $0, $pop1053
	i32.const	$push1052=, 0
	i32.const	$push1051=, -49
	i32.add 	$push335=, $0, $pop1051
	i32.const	$push1050=, 255
	i32.and 	$push336=, $pop335, $pop1050
	i32.const	$push1049=, 5
	i32.lt_u	$push337=, $pop336, $pop1049
	i32.select	$0=, $pop334, $pop1052, $pop337
.LBB43_203:
	end_block
	i32.const	$push1055=, 31
	i32.and 	$push339=, $0, $pop1055
	i64.extend_u/i32	$push340=, $pop339
	i64.const	$push1054=, 4294967295
	i64.and 	$push338=, $6, $pop1054
	i64.shl 	$5=, $pop340, $pop338
.LBB43_204:
	end_block
	i32.const	$push1061=, 1
	i32.add 	$4=, $4, $pop1061
	i64.const	$push1060=, 1
	i64.add 	$1=, $1, $pop1060
	i64.or  	$2=, $5, $2
	i64.const	$push1059=, -5
	i64.add 	$push1058=, $6, $pop1059
	tee_local	$push1057=, $6=, $pop1058
	i64.const	$push1056=, -6
	i64.ne  	$push341=, $pop1057, $pop1056
	br_if   	0, $pop341
	end_loop
	i64.const	$1=, 0
	i64.const	$6=, 59
	i32.const	$4=, .L.str.128
	i64.const	$3=, 0
.LBB43_206:
	loop    	
	i64.const	$5=, 0
	block   	
	i64.const	$push1062=, 11
	i64.gt_u	$push342=, $1, $pop1062
	br_if   	0, $pop342
	block   	
	block   	
	i32.load8_s	$push1067=, 0($4)
	tee_local	$push1066=, $0=, $pop1067
	i32.const	$push1065=, -97
	i32.add 	$push343=, $pop1066, $pop1065
	i32.const	$push1064=, 255
	i32.and 	$push344=, $pop343, $pop1064
	i32.const	$push1063=, 25
	i32.gt_u	$push345=, $pop344, $pop1063
	br_if   	0, $pop345
	i32.const	$push1068=, 165
	i32.add 	$0=, $0, $pop1068
	br      	1
.LBB43_209:
	end_block
	i32.const	$push1073=, 208
	i32.add 	$push346=, $0, $pop1073
	i32.const	$push1072=, 0
	i32.const	$push1071=, -49
	i32.add 	$push347=, $0, $pop1071
	i32.const	$push1070=, 255
	i32.and 	$push348=, $pop347, $pop1070
	i32.const	$push1069=, 5
	i32.lt_u	$push349=, $pop348, $pop1069
	i32.select	$0=, $pop346, $pop1072, $pop349
.LBB43_210:
	end_block
	i32.const	$push1075=, 31
	i32.and 	$push351=, $0, $pop1075
	i64.extend_u/i32	$push352=, $pop351
	i64.const	$push1074=, 4294967295
	i64.and 	$push350=, $6, $pop1074
	i64.shl 	$5=, $pop352, $pop350
.LBB43_211:
	end_block
	i32.const	$push1081=, 1
	i32.add 	$4=, $4, $pop1081
	i64.const	$push1080=, 1
	i64.add 	$1=, $1, $pop1080
	i64.or  	$3=, $5, $3
	i64.const	$push1079=, -5
	i64.add 	$push1078=, $6, $pop1079
	tee_local	$push1077=, $6=, $pop1078
	i64.const	$push1076=, -6
	i64.ne  	$push353=, $pop1077, $pop1076
	br_if   	0, $pop353
	end_loop
	i64.eq  	$push354=, $2, $3
	i32.const	$push355=, .L.str.129
	call    	eosio_assert@FUNCTION, $pop354, $pop355
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.130
	i64.const	$2=, 0
.LBB43_213:
	loop    	
	i64.const	$6=, 0
	block   	
	block   	
	i64.const	$push1082=, 12
	i64.gt_u	$push356=, $1, $pop1082
	br_if   	0, $pop356
	block   	
	block   	
	i32.load8_s	$push1087=, 0($4)
	tee_local	$push1086=, $0=, $pop1087
	i32.const	$push1085=, -97
	i32.add 	$push357=, $pop1086, $pop1085
	i32.const	$push1084=, 255
	i32.and 	$push358=, $pop357, $pop1084
	i32.const	$push1083=, 25
	i32.gt_u	$push359=, $pop358, $pop1083
	br_if   	0, $pop359
	i32.const	$push1088=, 165
	i32.add 	$0=, $0, $pop1088
	br      	1
.LBB43_216:
	end_block
	i32.const	$push1093=, 208
	i32.add 	$push360=, $0, $pop1093
	i32.const	$push1092=, 0
	i32.const	$push1091=, -49
	i32.add 	$push361=, $0, $pop1091
	i32.const	$push1090=, 255
	i32.and 	$push362=, $pop361, $pop1090
	i32.const	$push1089=, 5
	i32.lt_u	$push363=, $pop362, $pop1089
	i32.select	$0=, $pop360, $pop1092, $pop363
.LBB43_217:
	end_block
	i64.extend_u/i32	$push364=, $0
	i64.const	$push1096=, 56
	i64.shl 	$push365=, $pop364, $pop1096
	i64.const	$push1095=, 56
	i64.shr_s	$6=, $pop365, $pop1095
	i64.const	$push1094=, 11
	i64.gt_u	$push366=, $1, $pop1094
	br_if   	0, $pop366
	i64.const	$push1098=, 31
	i64.and 	$push368=, $6, $pop1098
	i64.const	$push1097=, 4294967295
	i64.and 	$push367=, $5, $pop1097
	i64.shl 	$6=, $pop368, $pop367
	br      	1
.LBB43_219:
	end_block
	i64.const	$push1099=, 15
	i64.and 	$6=, $6, $pop1099
.LBB43_220:
	end_block
	i32.const	$push1105=, 1
	i32.add 	$4=, $4, $pop1105
	i64.const	$push1104=, 1
	i64.add 	$1=, $1, $pop1104
	i64.or  	$2=, $6, $2
	i64.const	$push1103=, -5
	i64.add 	$push1102=, $5, $pop1103
	tee_local	$push1101=, $5=, $pop1102
	i64.const	$push1100=, -6
	i64.ne  	$push369=, $pop1101, $pop1100
	br_if   	0, $pop369
	end_loop
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.130
	i64.const	$3=, 0
.LBB43_222:
	loop    	
	i64.const	$6=, 0
	block   	
	block   	
	i64.const	$push1106=, 12
	i64.gt_u	$push370=, $1, $pop1106
	br_if   	0, $pop370
	block   	
	block   	
	i32.load8_s	$push1111=, 0($4)
	tee_local	$push1110=, $0=, $pop1111
	i32.const	$push1109=, -97
	i32.add 	$push371=, $pop1110, $pop1109
	i32.const	$push1108=, 255
	i32.and 	$push372=, $pop371, $pop1108
	i32.const	$push1107=, 25
	i32.gt_u	$push373=, $pop372, $pop1107
	br_if   	0, $pop373
	i32.const	$push1112=, 165
	i32.add 	$0=, $0, $pop1112
	br      	1
.LBB43_225:
	end_block
	i32.const	$push1117=, 208
	i32.add 	$push374=, $0, $pop1117
	i32.const	$push1116=, 0
	i32.const	$push1115=, -49
	i32.add 	$push375=, $0, $pop1115
	i32.const	$push1114=, 255
	i32.and 	$push376=, $pop375, $pop1114
	i32.const	$push1113=, 5
	i32.lt_u	$push377=, $pop376, $pop1113
	i32.select	$0=, $pop374, $pop1116, $pop377
.LBB43_226:
	end_block
	i64.extend_u/i32	$push378=, $0
	i64.const	$push1120=, 56
	i64.shl 	$push379=, $pop378, $pop1120
	i64.const	$push1119=, 56
	i64.shr_s	$6=, $pop379, $pop1119
	i64.const	$push1118=, 11
	i64.gt_u	$push380=, $1, $pop1118
	br_if   	0, $pop380
	i64.const	$push1122=, 31
	i64.and 	$push382=, $6, $pop1122
	i64.const	$push1121=, 4294967295
	i64.and 	$push381=, $5, $pop1121
	i64.shl 	$6=, $pop382, $pop381
	br      	1
.LBB43_228:
	end_block
	i64.const	$push1123=, 15
	i64.and 	$6=, $6, $pop1123
.LBB43_229:
	end_block
	i32.const	$push1129=, 1
	i32.add 	$4=, $4, $pop1129
	i64.const	$push1128=, 1
	i64.add 	$1=, $1, $pop1128
	i64.or  	$3=, $6, $3
	i64.const	$push1127=, -5
	i64.add 	$push1126=, $5, $pop1127
	tee_local	$push1125=, $5=, $pop1126
	i64.const	$push1124=, -6
	i64.ne  	$push383=, $pop1125, $pop1124
	br_if   	0, $pop383
	end_loop
	i64.eq  	$push384=, $2, $3
	i32.const	$push385=, .L.str.131
	call    	eosio_assert@FUNCTION, $pop384, $pop385
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.132
	i64.const	$2=, 0
.LBB43_231:
	loop    	
	i64.const	$6=, 0
	block   	
	block   	
	i64.const	$push1130=, 13
	i64.gt_u	$push386=, $1, $pop1130
	br_if   	0, $pop386
	block   	
	block   	
	i32.load8_s	$push1135=, 0($4)
	tee_local	$push1134=, $0=, $pop1135
	i32.const	$push1133=, -97
	i32.add 	$push387=, $pop1134, $pop1133
	i32.const	$push1132=, 255
	i32.and 	$push388=, $pop387, $pop1132
	i32.const	$push1131=, 25
	i32.gt_u	$push389=, $pop388, $pop1131
	br_if   	0, $pop389
	i32.const	$push1136=, 165
	i32.add 	$0=, $0, $pop1136
	br      	1
.LBB43_234:
	end_block
	i32.const	$push1141=, 208
	i32.add 	$push390=, $0, $pop1141
	i32.const	$push1140=, 0
	i32.const	$push1139=, -49
	i32.add 	$push391=, $0, $pop1139
	i32.const	$push1138=, 255
	i32.and 	$push392=, $pop391, $pop1138
	i32.const	$push1137=, 5
	i32.lt_u	$push393=, $pop392, $pop1137
	i32.select	$0=, $pop390, $pop1140, $pop393
.LBB43_235:
	end_block
	i64.extend_u/i32	$push394=, $0
	i64.const	$push1144=, 56
	i64.shl 	$push395=, $pop394, $pop1144
	i64.const	$push1143=, 56
	i64.shr_s	$6=, $pop395, $pop1143
	i64.const	$push1142=, 11
	i64.gt_u	$push396=, $1, $pop1142
	br_if   	0, $pop396
	i64.const	$push1146=, 31
	i64.and 	$push398=, $6, $pop1146
	i64.const	$push1145=, 4294967295
	i64.and 	$push397=, $5, $pop1145
	i64.shl 	$6=, $pop398, $pop397
	br      	1
.LBB43_237:
	end_block
	i64.const	$push1147=, 15
	i64.and 	$6=, $6, $pop1147
.LBB43_238:
	end_block
	i32.const	$push1153=, 1
	i32.add 	$4=, $4, $pop1153
	i64.const	$push1152=, 1
	i64.add 	$1=, $1, $pop1152
	i64.or  	$2=, $6, $2
	i64.const	$push1151=, -5
	i64.add 	$push1150=, $5, $pop1151
	tee_local	$push1149=, $5=, $pop1150
	i64.const	$push1148=, -6
	i64.ne  	$push399=, $pop1149, $pop1148
	br_if   	0, $pop399
	end_loop
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.133
	i64.const	$3=, 0
.LBB43_240:
	loop    	
	i64.const	$6=, 0
	block   	
	block   	
	i64.const	$push1154=, 13
	i64.gt_u	$push400=, $1, $pop1154
	br_if   	0, $pop400
	block   	
	block   	
	i32.load8_s	$push1159=, 0($4)
	tee_local	$push1158=, $0=, $pop1159
	i32.const	$push1157=, -97
	i32.add 	$push401=, $pop1158, $pop1157
	i32.const	$push1156=, 255
	i32.and 	$push402=, $pop401, $pop1156
	i32.const	$push1155=, 25
	i32.gt_u	$push403=, $pop402, $pop1155
	br_if   	0, $pop403
	i32.const	$push1160=, 165
	i32.add 	$0=, $0, $pop1160
	br      	1
.LBB43_243:
	end_block
	i32.const	$push1165=, 208
	i32.add 	$push404=, $0, $pop1165
	i32.const	$push1164=, 0
	i32.const	$push1163=, -49
	i32.add 	$push405=, $0, $pop1163
	i32.const	$push1162=, 255
	i32.and 	$push406=, $pop405, $pop1162
	i32.const	$push1161=, 5
	i32.lt_u	$push407=, $pop406, $pop1161
	i32.select	$0=, $pop404, $pop1164, $pop407
.LBB43_244:
	end_block
	i64.extend_u/i32	$push408=, $0
	i64.const	$push1168=, 56
	i64.shl 	$push409=, $pop408, $pop1168
	i64.const	$push1167=, 56
	i64.shr_s	$6=, $pop409, $pop1167
	i64.const	$push1166=, 11
	i64.gt_u	$push410=, $1, $pop1166
	br_if   	0, $pop410
	i64.const	$push1170=, 31
	i64.and 	$push412=, $6, $pop1170
	i64.const	$push1169=, 4294967295
	i64.and 	$push411=, $5, $pop1169
	i64.shl 	$6=, $pop412, $pop411
	br      	1
.LBB43_246:
	end_block
	i64.const	$push1171=, 15
	i64.and 	$6=, $6, $pop1171
.LBB43_247:
	end_block
	i32.const	$push1177=, 1
	i32.add 	$4=, $4, $pop1177
	i64.const	$push1176=, 1
	i64.add 	$1=, $1, $pop1176
	i64.or  	$3=, $6, $3
	i64.const	$push1175=, -5
	i64.add 	$push1174=, $5, $pop1175
	tee_local	$push1173=, $5=, $pop1174
	i64.const	$push1172=, -6
	i64.ne  	$push413=, $pop1173, $pop1172
	br_if   	0, $pop413
	end_loop
	i64.eq  	$push414=, $2, $3
	i32.const	$push415=, .L.str.134
	call    	eosio_assert@FUNCTION, $pop414, $pop415
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.135
	i64.const	$2=, 0
.LBB43_249:
	loop    	
	i64.const	$6=, 0
	block   	
	block   	
	i64.const	$push1178=, 14
	i64.gt_u	$push416=, $1, $pop1178
	br_if   	0, $pop416
	block   	
	block   	
	i32.load8_s	$push1183=, 0($4)
	tee_local	$push1182=, $0=, $pop1183
	i32.const	$push1181=, -97
	i32.add 	$push417=, $pop1182, $pop1181
	i32.const	$push1180=, 255
	i32.and 	$push418=, $pop417, $pop1180
	i32.const	$push1179=, 25
	i32.gt_u	$push419=, $pop418, $pop1179
	br_if   	0, $pop419
	i32.const	$push1184=, 165
	i32.add 	$0=, $0, $pop1184
	br      	1
.LBB43_252:
	end_block
	i32.const	$push1189=, 208
	i32.add 	$push420=, $0, $pop1189
	i32.const	$push1188=, 0
	i32.const	$push1187=, -49
	i32.add 	$push421=, $0, $pop1187
	i32.const	$push1186=, 255
	i32.and 	$push422=, $pop421, $pop1186
	i32.const	$push1185=, 5
	i32.lt_u	$push423=, $pop422, $pop1185
	i32.select	$0=, $pop420, $pop1188, $pop423
.LBB43_253:
	end_block
	i64.extend_u/i32	$push424=, $0
	i64.const	$push1192=, 56
	i64.shl 	$push425=, $pop424, $pop1192
	i64.const	$push1191=, 56
	i64.shr_s	$6=, $pop425, $pop1191
	i64.const	$push1190=, 11
	i64.gt_u	$push426=, $1, $pop1190
	br_if   	0, $pop426
	i64.const	$push1194=, 31
	i64.and 	$push428=, $6, $pop1194
	i64.const	$push1193=, 4294967295
	i64.and 	$push427=, $5, $pop1193
	i64.shl 	$6=, $pop428, $pop427
	br      	1
.LBB43_255:
	end_block
	i64.const	$push1195=, 15
	i64.and 	$6=, $6, $pop1195
.LBB43_256:
	end_block
	i32.const	$push1201=, 1
	i32.add 	$4=, $4, $pop1201
	i64.const	$push1200=, 1
	i64.add 	$1=, $1, $pop1200
	i64.or  	$2=, $6, $2
	i64.const	$push1199=, -5
	i64.add 	$push1198=, $5, $pop1199
	tee_local	$push1197=, $5=, $pop1198
	i64.const	$push1196=, -6
	i64.ne  	$push429=, $pop1197, $pop1196
	br_if   	0, $pop429
	end_loop
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.136
	i64.const	$3=, 0
.LBB43_258:
	loop    	
	i64.const	$6=, 0
	block   	
	block   	
	i64.const	$push1202=, 14
	i64.gt_u	$push430=, $1, $pop1202
	br_if   	0, $pop430
	block   	
	block   	
	i32.load8_s	$push1207=, 0($4)
	tee_local	$push1206=, $0=, $pop1207
	i32.const	$push1205=, -97
	i32.add 	$push431=, $pop1206, $pop1205
	i32.const	$push1204=, 255
	i32.and 	$push432=, $pop431, $pop1204
	i32.const	$push1203=, 25
	i32.gt_u	$push433=, $pop432, $pop1203
	br_if   	0, $pop433
	i32.const	$push1208=, 165
	i32.add 	$0=, $0, $pop1208
	br      	1
.LBB43_261:
	end_block
	i32.const	$push1213=, 208
	i32.add 	$push434=, $0, $pop1213
	i32.const	$push1212=, 0
	i32.const	$push1211=, -49
	i32.add 	$push435=, $0, $pop1211
	i32.const	$push1210=, 255
	i32.and 	$push436=, $pop435, $pop1210
	i32.const	$push1209=, 5
	i32.lt_u	$push437=, $pop436, $pop1209
	i32.select	$0=, $pop434, $pop1212, $pop437
.LBB43_262:
	end_block
	i64.extend_u/i32	$push438=, $0
	i64.const	$push1216=, 56
	i64.shl 	$push439=, $pop438, $pop1216
	i64.const	$push1215=, 56
	i64.shr_s	$6=, $pop439, $pop1215
	i64.const	$push1214=, 11
	i64.gt_u	$push440=, $1, $pop1214
	br_if   	0, $pop440
	i64.const	$push1218=, 31
	i64.and 	$push442=, $6, $pop1218
	i64.const	$push1217=, 4294967295
	i64.and 	$push441=, $5, $pop1217
	i64.shl 	$6=, $pop442, $pop441
	br      	1
.LBB43_264:
	end_block
	i64.const	$push1219=, 15
	i64.and 	$6=, $6, $pop1219
.LBB43_265:
	end_block
	i32.const	$push1225=, 1
	i32.add 	$4=, $4, $pop1225
	i64.const	$push1224=, 1
	i64.add 	$1=, $1, $pop1224
	i64.or  	$3=, $6, $3
	i64.const	$push1223=, -5
	i64.add 	$push1222=, $5, $pop1223
	tee_local	$push1221=, $5=, $pop1222
	i64.const	$push1220=, -6
	i64.ne  	$push443=, $pop1221, $pop1220
	br_if   	0, $pop443
	end_loop
	i64.eq  	$push444=, $2, $3
	i32.const	$push445=, .L.str.137
	call    	eosio_assert@FUNCTION, $pop444, $pop445
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.138
	i64.const	$2=, 0
.LBB43_267:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push1226=, 5
	i64.gt_u	$push446=, $1, $pop1226
	br_if   	0, $pop446
	i32.load8_s	$push1231=, 0($4)
	tee_local	$push1230=, $0=, $pop1231
	i32.const	$push1229=, -97
	i32.add 	$push448=, $pop1230, $pop1229
	i32.const	$push1228=, 255
	i32.and 	$push449=, $pop448, $pop1228
	i32.const	$push1227=, 25
	i32.gt_u	$push450=, $pop449, $pop1227
	br_if   	1, $pop450
	i32.const	$push1232=, 165
	i32.add 	$0=, $0, $pop1232
	br      	2
.LBB43_270:
	end_block
	i64.const	$6=, 0
	i64.const	$push1233=, 11
	i64.le_u	$push447=, $1, $pop1233
	br_if   	2, $pop447
	br      	3
.LBB43_271:
	end_block
	i32.const	$push1238=, 208
	i32.add 	$push451=, $0, $pop1238
	i32.const	$push1237=, 0
	i32.const	$push1236=, -49
	i32.add 	$push452=, $0, $pop1236
	i32.const	$push1235=, 255
	i32.and 	$push453=, $pop452, $pop1235
	i32.const	$push1234=, 5
	i32.lt_u	$push454=, $pop453, $pop1234
	i32.select	$0=, $pop451, $pop1237, $pop454
.LBB43_272:
	end_block
	i64.extend_u/i32	$push455=, $0
	i64.const	$push1240=, 56
	i64.shl 	$push456=, $pop455, $pop1240
	i64.const	$push1239=, 56
	i64.shr_s	$6=, $pop456, $pop1239
.LBB43_273:
	end_block
	i64.const	$push1242=, 31
	i64.and 	$push458=, $6, $pop1242
	i64.const	$push1241=, 4294967295
	i64.and 	$push457=, $5, $pop1241
	i64.shl 	$6=, $pop458, $pop457
.LBB43_274:
	end_block
	i32.const	$push1248=, 1
	i32.add 	$4=, $4, $pop1248
	i64.const	$push1247=, 1
	i64.add 	$1=, $1, $pop1247
	i64.or  	$2=, $6, $2
	i64.const	$push1246=, -5
	i64.add 	$push1245=, $5, $pop1246
	tee_local	$push1244=, $5=, $pop1245
	i64.const	$push1243=, -6
	i64.ne  	$push459=, $pop1244, $pop1243
	br_if   	0, $pop459
	end_loop
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.139
	i64.const	$3=, 0
.LBB43_276:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push1249=, 5
	i64.gt_u	$push460=, $1, $pop1249
	br_if   	0, $pop460
	i32.load8_s	$push1254=, 0($4)
	tee_local	$push1253=, $0=, $pop1254
	i32.const	$push1252=, -97
	i32.add 	$push462=, $pop1253, $pop1252
	i32.const	$push1251=, 255
	i32.and 	$push463=, $pop462, $pop1251
	i32.const	$push1250=, 25
	i32.gt_u	$push464=, $pop463, $pop1250
	br_if   	1, $pop464
	i32.const	$push1255=, 165
	i32.add 	$0=, $0, $pop1255
	br      	2
.LBB43_279:
	end_block
	i64.const	$6=, 0
	i64.const	$push1256=, 11
	i64.le_u	$push461=, $1, $pop1256
	br_if   	2, $pop461
	br      	3
.LBB43_280:
	end_block
	i32.const	$push1261=, 208
	i32.add 	$push465=, $0, $pop1261
	i32.const	$push1260=, 0
	i32.const	$push1259=, -49
	i32.add 	$push466=, $0, $pop1259
	i32.const	$push1258=, 255
	i32.and 	$push467=, $pop466, $pop1258
	i32.const	$push1257=, 5
	i32.lt_u	$push468=, $pop467, $pop1257
	i32.select	$0=, $pop465, $pop1260, $pop468
.LBB43_281:
	end_block
	i64.extend_u/i32	$push469=, $0
	i64.const	$push1263=, 56
	i64.shl 	$push470=, $pop469, $pop1263
	i64.const	$push1262=, 56
	i64.shr_s	$6=, $pop470, $pop1262
.LBB43_282:
	end_block
	i64.const	$push1265=, 31
	i64.and 	$push472=, $6, $pop1265
	i64.const	$push1264=, 4294967295
	i64.and 	$push471=, $5, $pop1264
	i64.shl 	$6=, $pop472, $pop471
.LBB43_283:
	end_block
	i32.const	$push1271=, 1
	i32.add 	$4=, $4, $pop1271
	i64.const	$push1270=, 1
	i64.add 	$1=, $1, $pop1270
	i64.or  	$3=, $6, $3
	i64.const	$push1269=, -5
	i64.add 	$push1268=, $5, $pop1269
	tee_local	$push1267=, $5=, $pop1268
	i64.const	$push1266=, -6
	i64.ne  	$push473=, $pop1267, $pop1266
	br_if   	0, $pop473
	end_loop
	i64.eq  	$push474=, $2, $3
	i32.const	$push475=, .L.str.140
	call    	eosio_assert@FUNCTION, $pop474, $pop475
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.141
	i64.const	$2=, 0
.LBB43_285:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push1272=, 9
	i64.gt_u	$push476=, $1, $pop1272
	br_if   	0, $pop476
	i32.load8_s	$push1277=, 0($4)
	tee_local	$push1276=, $0=, $pop1277
	i32.const	$push1275=, -97
	i32.add 	$push478=, $pop1276, $pop1275
	i32.const	$push1274=, 255
	i32.and 	$push479=, $pop478, $pop1274
	i32.const	$push1273=, 25
	i32.gt_u	$push480=, $pop479, $pop1273
	br_if   	1, $pop480
	i32.const	$push1278=, 165
	i32.add 	$0=, $0, $pop1278
	br      	2
.LBB43_288:
	end_block
	i64.const	$6=, 0
	i64.const	$push1279=, 11
	i64.le_u	$push477=, $1, $pop1279
	br_if   	2, $pop477
	br      	3
.LBB43_289:
	end_block
	i32.const	$push1284=, 208
	i32.add 	$push481=, $0, $pop1284
	i32.const	$push1283=, 0
	i32.const	$push1282=, -49
	i32.add 	$push482=, $0, $pop1282
	i32.const	$push1281=, 255
	i32.and 	$push483=, $pop482, $pop1281
	i32.const	$push1280=, 5
	i32.lt_u	$push484=, $pop483, $pop1280
	i32.select	$0=, $pop481, $pop1283, $pop484
.LBB43_290:
	end_block
	i64.extend_u/i32	$push485=, $0
	i64.const	$push1286=, 56
	i64.shl 	$push486=, $pop485, $pop1286
	i64.const	$push1285=, 56
	i64.shr_s	$6=, $pop486, $pop1285
.LBB43_291:
	end_block
	i64.const	$push1288=, 31
	i64.and 	$push488=, $6, $pop1288
	i64.const	$push1287=, 4294967295
	i64.and 	$push487=, $5, $pop1287
	i64.shl 	$6=, $pop488, $pop487
.LBB43_292:
	end_block
	i32.const	$push1294=, 1
	i32.add 	$4=, $4, $pop1294
	i64.const	$push1293=, 1
	i64.add 	$1=, $1, $pop1293
	i64.or  	$2=, $6, $2
	i64.const	$push1292=, -5
	i64.add 	$push1291=, $5, $pop1292
	tee_local	$push1290=, $5=, $pop1291
	i64.const	$push1289=, -6
	i64.ne  	$push489=, $pop1290, $pop1289
	br_if   	0, $pop489
	end_loop
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.141
	i64.const	$3=, 0
.LBB43_294:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push1295=, 9
	i64.gt_u	$push490=, $1, $pop1295
	br_if   	0, $pop490
	i32.load8_s	$push1300=, 0($4)
	tee_local	$push1299=, $0=, $pop1300
	i32.const	$push1298=, -97
	i32.add 	$push492=, $pop1299, $pop1298
	i32.const	$push1297=, 255
	i32.and 	$push493=, $pop492, $pop1297
	i32.const	$push1296=, 25
	i32.gt_u	$push494=, $pop493, $pop1296
	br_if   	1, $pop494
	i32.const	$push1301=, 165
	i32.add 	$0=, $0, $pop1301
	br      	2
.LBB43_297:
	end_block
	i64.const	$6=, 0
	i64.const	$push1302=, 11
	i64.le_u	$push491=, $1, $pop1302
	br_if   	2, $pop491
	br      	3
.LBB43_298:
	end_block
	i32.const	$push1307=, 208
	i32.add 	$push495=, $0, $pop1307
	i32.const	$push1306=, 0
	i32.const	$push1305=, -49
	i32.add 	$push496=, $0, $pop1305
	i32.const	$push1304=, 255
	i32.and 	$push497=, $pop496, $pop1304
	i32.const	$push1303=, 5
	i32.lt_u	$push498=, $pop497, $pop1303
	i32.select	$0=, $pop495, $pop1306, $pop498
.LBB43_299:
	end_block
	i64.extend_u/i32	$push499=, $0
	i64.const	$push1309=, 56
	i64.shl 	$push500=, $pop499, $pop1309
	i64.const	$push1308=, 56
	i64.shr_s	$6=, $pop500, $pop1308
.LBB43_300:
	end_block
	i64.const	$push1311=, 31
	i64.and 	$push502=, $6, $pop1311
	i64.const	$push1310=, 4294967295
	i64.and 	$push501=, $5, $pop1310
	i64.shl 	$6=, $pop502, $pop501
.LBB43_301:
	end_block
	i32.const	$push1317=, 1
	i32.add 	$4=, $4, $pop1317
	i64.const	$push1316=, 1
	i64.add 	$1=, $1, $pop1316
	i64.or  	$3=, $6, $3
	i64.const	$push1315=, -5
	i64.add 	$push1314=, $5, $pop1315
	tee_local	$push1313=, $5=, $pop1314
	i64.const	$push1312=, -6
	i64.ne  	$push503=, $pop1313, $pop1312
	br_if   	0, $pop503
	end_loop
	i64.eq  	$push504=, $2, $3
	i32.const	$push505=, .L.str.142
	call    	eosio_assert@FUNCTION, $pop504, $pop505
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.143
	i64.const	$2=, 0
.LBB43_303:
	loop    	
	i64.const	$6=, 0
	block   	
	block   	
	i64.const	$push1318=, 14
	i64.gt_u	$push506=, $1, $pop1318
	br_if   	0, $pop506
	block   	
	block   	
	i32.load8_s	$push1323=, 0($4)
	tee_local	$push1322=, $0=, $pop1323
	i32.const	$push1321=, -97
	i32.add 	$push507=, $pop1322, $pop1321
	i32.const	$push1320=, 255
	i32.and 	$push508=, $pop507, $pop1320
	i32.const	$push1319=, 25
	i32.gt_u	$push509=, $pop508, $pop1319
	br_if   	0, $pop509
	i32.const	$push1324=, 165
	i32.add 	$0=, $0, $pop1324
	br      	1
.LBB43_306:
	end_block
	i32.const	$push1329=, 208
	i32.add 	$push510=, $0, $pop1329
	i32.const	$push1328=, 0
	i32.const	$push1327=, -49
	i32.add 	$push511=, $0, $pop1327
	i32.const	$push1326=, 255
	i32.and 	$push512=, $pop511, $pop1326
	i32.const	$push1325=, 5
	i32.lt_u	$push513=, $pop512, $pop1325
	i32.select	$0=, $pop510, $pop1328, $pop513
.LBB43_307:
	end_block
	i64.extend_u/i32	$push514=, $0
	i64.const	$push1332=, 56
	i64.shl 	$push515=, $pop514, $pop1332
	i64.const	$push1331=, 56
	i64.shr_s	$6=, $pop515, $pop1331
	i64.const	$push1330=, 11
	i64.gt_u	$push516=, $1, $pop1330
	br_if   	0, $pop516
	i64.const	$push1334=, 31
	i64.and 	$push518=, $6, $pop1334
	i64.const	$push1333=, 4294967295
	i64.and 	$push517=, $5, $pop1333
	i64.shl 	$6=, $pop518, $pop517
	br      	1
.LBB43_309:
	end_block
	i64.const	$push1335=, 15
	i64.and 	$6=, $6, $pop1335
.LBB43_310:
	end_block
	i32.const	$push1341=, 1
	i32.add 	$4=, $4, $pop1341
	i64.const	$push1340=, 1
	i64.add 	$1=, $1, $pop1340
	i64.or  	$2=, $6, $2
	i64.const	$push1339=, -5
	i64.add 	$push1338=, $5, $pop1339
	tee_local	$push1337=, $5=, $pop1338
	i64.const	$push1336=, -6
	i64.ne  	$push519=, $pop1337, $pop1336
	br_if   	0, $pop519
	end_loop
	i64.const	$1=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.144
	i64.const	$3=, 0
.LBB43_312:
	loop    	
	i64.const	$6=, 0
	block   	
	block   	
	i64.const	$push1342=, 22
	i64.gt_u	$push520=, $1, $pop1342
	br_if   	0, $pop520
	block   	
	block   	
	i32.load8_s	$push1347=, 0($4)
	tee_local	$push1346=, $0=, $pop1347
	i32.const	$push1345=, -97
	i32.add 	$push521=, $pop1346, $pop1345
	i32.const	$push1344=, 255
	i32.and 	$push522=, $pop521, $pop1344
	i32.const	$push1343=, 25
	i32.gt_u	$push523=, $pop522, $pop1343
	br_if   	0, $pop523
	i32.const	$push1348=, 165
	i32.add 	$0=, $0, $pop1348
	br      	1
.LBB43_315:
	end_block
	i32.const	$push1353=, 208
	i32.add 	$push524=, $0, $pop1353
	i32.const	$push1352=, 0
	i32.const	$push1351=, -49
	i32.add 	$push525=, $0, $pop1351
	i32.const	$push1350=, 255
	i32.and 	$push526=, $pop525, $pop1350
	i32.const	$push1349=, 5
	i32.lt_u	$push527=, $pop526, $pop1349
	i32.select	$0=, $pop524, $pop1352, $pop527
.LBB43_316:
	end_block
	i64.extend_u/i32	$push528=, $0
	i64.const	$push1356=, 56
	i64.shl 	$push529=, $pop528, $pop1356
	i64.const	$push1355=, 56
	i64.shr_s	$6=, $pop529, $pop1355
	i64.const	$push1354=, 11
	i64.gt_u	$push530=, $1, $pop1354
	br_if   	0, $pop530
	i64.const	$push1358=, 31
	i64.and 	$push532=, $6, $pop1358
	i64.const	$push1357=, 4294967295
	i64.and 	$push531=, $5, $pop1357
	i64.shl 	$6=, $pop532, $pop531
	br      	1
.LBB43_318:
	end_block
	i64.const	$push1359=, 15
	i64.and 	$6=, $6, $pop1359
.LBB43_319:
	end_block
	i32.const	$push1365=, 1
	i32.add 	$4=, $4, $pop1365
	i64.const	$push1364=, 1
	i64.add 	$1=, $1, $pop1364
	i64.or  	$3=, $6, $3
	i64.const	$push1363=, -5
	i64.add 	$push1362=, $5, $pop1363
	tee_local	$push1361=, $5=, $pop1362
	i64.const	$push1360=, -6
	i64.ne  	$push533=, $pop1361, $pop1360
	br_if   	0, $pop533
	end_loop
	i64.eq  	$push534=, $2, $3
	i32.const	$push535=, .L.str.145
	call    	eosio_assert@FUNCTION, $pop534, $pop535
	.endfunc
.Lfunc_end43:
	.size	_ZN10test_types14string_to_nameEv, .Lfunc_end43-_ZN10test_types14string_to_nameEv

	.hidden	_ZN10test_types10name_classEv
	.globl	_ZN10test_types10name_classEv
	.type	_ZN10test_types10name_classEv,@function
_ZN10test_types10name_classEv:
	.local  	i32, i32, i64, i64, i64, i64, i64
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.138
	i64.const	$4=, 0
.LBB44_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push129=, 5
	i64.gt_u	$push0=, $3, $pop129
	br_if   	0, $pop0
	i32.load8_s	$push134=, 0($1)
	tee_local	$push133=, $0=, $pop134
	i32.const	$push132=, -97
	i32.add 	$push2=, $pop133, $pop132
	i32.const	$push131=, 255
	i32.and 	$push3=, $pop2, $pop131
	i32.const	$push130=, 25
	i32.gt_u	$push4=, $pop3, $pop130
	br_if   	1, $pop4
	i32.const	$push135=, 165
	i32.add 	$0=, $0, $pop135
	br      	2
.LBB44_4:
	end_block
	i64.const	$5=, 0
	i64.const	$push136=, 11
	i64.le_u	$push1=, $3, $pop136
	br_if   	2, $pop1
	br      	3
.LBB44_5:
	end_block
	i32.const	$push141=, 208
	i32.add 	$push5=, $0, $pop141
	i32.const	$push140=, 0
	i32.const	$push139=, -49
	i32.add 	$push6=, $0, $pop139
	i32.const	$push138=, 255
	i32.and 	$push7=, $pop6, $pop138
	i32.const	$push137=, 5
	i32.lt_u	$push8=, $pop7, $pop137
	i32.select	$0=, $pop5, $pop140, $pop8
.LBB44_6:
	end_block
	i64.extend_u/i32	$push9=, $0
	i64.const	$push143=, 56
	i64.shl 	$push10=, $pop9, $pop143
	i64.const	$push142=, 56
	i64.shr_s	$5=, $pop10, $pop142
.LBB44_7:
	end_block
	i64.const	$push145=, 31
	i64.and 	$push12=, $5, $pop145
	i64.const	$push144=, 4294967295
	i64.and 	$push11=, $2, $pop144
	i64.shl 	$5=, $pop12, $pop11
.LBB44_8:
	end_block
	i32.const	$push151=, 1
	i32.add 	$1=, $1, $pop151
	i64.const	$push150=, 1
	i64.add 	$3=, $3, $pop150
	i64.or  	$4=, $5, $4
	i64.const	$push149=, -5
	i64.add 	$push148=, $2, $pop149
	tee_local	$push147=, $2=, $pop148
	i64.const	$push146=, -6
	i64.ne  	$push13=, $pop147, $pop146
	br_if   	0, $pop13
	end_loop
	i64.const	$push14=, 4017212585601400832
	i64.eq  	$push15=, $4, $pop14
	i32.const	$push16=, .L.str.146
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	i32.const	$push152=, 1
	i32.const	$push17=, .L.str.148
	call    	eosio_assert@FUNCTION, $pop152, $pop17
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.149
	i64.const	$4=, 0
.LBB44_10:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push153=, 3
	i64.gt_u	$push18=, $3, $pop153
	br_if   	0, $pop18
	i32.load8_s	$push158=, 0($1)
	tee_local	$push157=, $0=, $pop158
	i32.const	$push156=, -97
	i32.add 	$push20=, $pop157, $pop156
	i32.const	$push155=, 255
	i32.and 	$push21=, $pop20, $pop155
	i32.const	$push154=, 25
	i32.gt_u	$push22=, $pop21, $pop154
	br_if   	1, $pop22
	i32.const	$push159=, 165
	i32.add 	$0=, $0, $pop159
	br      	2
.LBB44_13:
	end_block
	i64.const	$5=, 0
	i64.const	$push160=, 11
	i64.le_u	$push19=, $3, $pop160
	br_if   	2, $pop19
	br      	3
.LBB44_14:
	end_block
	i32.const	$push165=, 208
	i32.add 	$push23=, $0, $pop165
	i32.const	$push164=, 0
	i32.const	$push163=, -49
	i32.add 	$push24=, $0, $pop163
	i32.const	$push162=, 255
	i32.and 	$push25=, $pop24, $pop162
	i32.const	$push161=, 5
	i32.lt_u	$push26=, $pop25, $pop161
	i32.select	$0=, $pop23, $pop164, $pop26
.LBB44_15:
	end_block
	i64.extend_u/i32	$push27=, $0
	i64.const	$push167=, 56
	i64.shl 	$push28=, $pop27, $pop167
	i64.const	$push166=, 56
	i64.shr_s	$5=, $pop28, $pop166
.LBB44_16:
	end_block
	i64.const	$push169=, 31
	i64.and 	$push30=, $5, $pop169
	i64.const	$push168=, 4294967295
	i64.and 	$push29=, $2, $pop168
	i64.shl 	$5=, $pop30, $pop29
.LBB44_17:
	end_block
	i32.const	$push175=, 1
	i32.add 	$1=, $1, $pop175
	i64.const	$push174=, 1
	i64.add 	$3=, $3, $pop174
	i64.or  	$4=, $5, $4
	i64.const	$push173=, -5
	i64.add 	$push172=, $2, $pop173
	tee_local	$push171=, $2=, $pop172
	i64.const	$push170=, -6
	i64.ne  	$push31=, $pop171, $pop170
	br_if   	0, $pop31
	end_loop
	i64.const	$push32=, 580542139465728
	i64.eq  	$push33=, $4, $pop32
	i32.const	$push34=, .L.str.150
	call    	eosio_assert@FUNCTION, $pop33, $pop34
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.152
	i64.const	$4=, 0
.LBB44_19:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push176=, 1
	i64.gt_u	$push35=, $3, $pop176
	br_if   	0, $pop35
	i32.load8_s	$push181=, 0($1)
	tee_local	$push180=, $0=, $pop181
	i32.const	$push179=, -97
	i32.add 	$push37=, $pop180, $pop179
	i32.const	$push178=, 255
	i32.and 	$push38=, $pop37, $pop178
	i32.const	$push177=, 25
	i32.gt_u	$push39=, $pop38, $pop177
	br_if   	1, $pop39
	i32.const	$push182=, 165
	i32.add 	$0=, $0, $pop182
	br      	2
.LBB44_22:
	end_block
	i64.const	$5=, 0
	i64.const	$push183=, 11
	i64.le_u	$push36=, $3, $pop183
	br_if   	2, $pop36
	br      	3
.LBB44_23:
	end_block
	i32.const	$push188=, 208
	i32.add 	$push40=, $0, $pop188
	i32.const	$push187=, 0
	i32.const	$push186=, -49
	i32.add 	$push41=, $0, $pop186
	i32.const	$push185=, 255
	i32.and 	$push42=, $pop41, $pop185
	i32.const	$push184=, 5
	i32.lt_u	$push43=, $pop42, $pop184
	i32.select	$0=, $pop40, $pop187, $pop43
.LBB44_24:
	end_block
	i64.extend_u/i32	$push44=, $0
	i64.const	$push190=, 56
	i64.shl 	$push45=, $pop44, $pop190
	i64.const	$push189=, 56
	i64.shr_s	$5=, $pop45, $pop189
.LBB44_25:
	end_block
	i64.const	$push192=, 31
	i64.and 	$push47=, $5, $pop192
	i64.const	$push191=, 4294967295
	i64.and 	$push46=, $2, $pop191
	i64.shl 	$5=, $pop47, $pop46
.LBB44_26:
	end_block
	i32.const	$push198=, 1
	i32.add 	$1=, $1, $pop198
	i64.const	$push197=, 1
	i64.add 	$3=, $3, $pop197
	i64.or  	$4=, $5, $4
	i64.const	$push196=, -5
	i64.add 	$push195=, $2, $pop196
	tee_local	$push194=, $2=, $pop195
	i64.const	$push193=, -6
	i64.ne  	$push48=, $pop194, $pop193
	br_if   	0, $pop48
	end_loop
	i64.const	$push49=, 594475150812905472
	i64.eq  	$push50=, $4, $pop49
	i32.const	$push51=, .L.str.153
	call    	eosio_assert@FUNCTION, $pop50, $pop51
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.155
	i64.const	$4=, 0
.LBB44_28:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push199=, 1
	i64.gt_u	$push52=, $3, $pop199
	br_if   	0, $pop52
	i32.load8_s	$push204=, 0($1)
	tee_local	$push203=, $0=, $pop204
	i32.const	$push202=, -97
	i32.add 	$push54=, $pop203, $pop202
	i32.const	$push201=, 255
	i32.and 	$push55=, $pop54, $pop201
	i32.const	$push200=, 25
	i32.gt_u	$push56=, $pop55, $pop200
	br_if   	1, $pop56
	i32.const	$push205=, 165
	i32.add 	$0=, $0, $pop205
	br      	2
.LBB44_31:
	end_block
	i64.const	$5=, 0
	i64.const	$push206=, 11
	i64.le_u	$push53=, $3, $pop206
	br_if   	2, $pop53
	br      	3
.LBB44_32:
	end_block
	i32.const	$push211=, 208
	i32.add 	$push57=, $0, $pop211
	i32.const	$push210=, 0
	i32.const	$push209=, -49
	i32.add 	$push58=, $0, $pop209
	i32.const	$push208=, 255
	i32.and 	$push59=, $pop58, $pop208
	i32.const	$push207=, 5
	i32.lt_u	$push60=, $pop59, $pop207
	i32.select	$0=, $pop57, $pop210, $pop60
.LBB44_33:
	end_block
	i64.extend_u/i32	$push61=, $0
	i64.const	$push213=, 56
	i64.shl 	$push62=, $pop61, $pop213
	i64.const	$push212=, 56
	i64.shr_s	$5=, $pop62, $pop212
.LBB44_34:
	end_block
	i64.const	$push215=, 31
	i64.and 	$push64=, $5, $pop215
	i64.const	$push214=, 4294967295
	i64.and 	$push63=, $2, $pop214
	i64.shl 	$5=, $pop64, $pop63
.LBB44_35:
	end_block
	i32.const	$push221=, 1
	i32.add 	$1=, $1, $pop221
	i64.const	$push220=, 1
	i64.add 	$3=, $3, $pop220
	i64.or  	$4=, $5, $4
	i64.const	$push219=, -5
	i64.add 	$push218=, $2, $pop219
	tee_local	$push217=, $2=, $pop218
	i64.const	$push216=, -6
	i64.ne  	$push65=, $pop217, $pop216
	br_if   	0, $pop65
	end_loop
	i64.const	$push66=, 1188950301625810944
	i64.eq  	$push67=, $4, $pop66
	i32.const	$push68=, .L.str.156
	call    	eosio_assert@FUNCTION, $pop67, $pop68
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.157
	i64.const	$4=, 0
.LBB44_37:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push222=, 9
	i64.gt_u	$push69=, $3, $pop222
	br_if   	0, $pop69
	i32.load8_s	$push227=, 0($1)
	tee_local	$push226=, $0=, $pop227
	i32.const	$push225=, -97
	i32.add 	$push71=, $pop226, $pop225
	i32.const	$push224=, 255
	i32.and 	$push72=, $pop71, $pop224
	i32.const	$push223=, 25
	i32.gt_u	$push73=, $pop72, $pop223
	br_if   	1, $pop73
	i32.const	$push228=, 165
	i32.add 	$0=, $0, $pop228
	br      	2
.LBB44_40:
	end_block
	i64.const	$5=, 0
	i64.const	$push229=, 11
	i64.le_u	$push70=, $3, $pop229
	br_if   	2, $pop70
	br      	3
.LBB44_41:
	end_block
	i32.const	$push234=, 208
	i32.add 	$push74=, $0, $pop234
	i32.const	$push233=, 0
	i32.const	$push232=, -49
	i32.add 	$push75=, $0, $pop232
	i32.const	$push231=, 255
	i32.and 	$push76=, $pop75, $pop231
	i32.const	$push230=, 5
	i32.lt_u	$push77=, $pop76, $pop230
	i32.select	$0=, $pop74, $pop233, $pop77
.LBB44_42:
	end_block
	i64.extend_u/i32	$push78=, $0
	i64.const	$push236=, 56
	i64.shl 	$push79=, $pop78, $pop236
	i64.const	$push235=, 56
	i64.shr_s	$5=, $pop79, $pop235
.LBB44_43:
	end_block
	i64.const	$push238=, 31
	i64.and 	$push81=, $5, $pop238
	i64.const	$push237=, 4294967295
	i64.and 	$push80=, $2, $pop237
	i64.shl 	$5=, $pop81, $pop80
.LBB44_44:
	end_block
	i32.const	$push244=, 1
	i32.add 	$1=, $1, $pop244
	i64.const	$push243=, 1
	i64.add 	$3=, $3, $pop243
	i64.or  	$4=, $5, $4
	i64.const	$push242=, -5
	i64.add 	$push241=, $2, $pop242
	tee_local	$push240=, $2=, $pop241
	i64.const	$push239=, -6
	i64.ne  	$push82=, $pop240, $pop239
	br_if   	0, $pop82
	end_loop
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.157
	i64.const	$6=, 0
.LBB44_46:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push245=, 9
	i64.gt_u	$push83=, $3, $pop245
	br_if   	0, $pop83
	i32.load8_s	$push250=, 0($1)
	tee_local	$push249=, $0=, $pop250
	i32.const	$push248=, -97
	i32.add 	$push85=, $pop249, $pop248
	i32.const	$push247=, 255
	i32.and 	$push86=, $pop85, $pop247
	i32.const	$push246=, 25
	i32.gt_u	$push87=, $pop86, $pop246
	br_if   	1, $pop87
	i32.const	$push251=, 165
	i32.add 	$0=, $0, $pop251
	br      	2
.LBB44_49:
	end_block
	i64.const	$5=, 0
	i64.const	$push252=, 11
	i64.le_u	$push84=, $3, $pop252
	br_if   	2, $pop84
	br      	3
.LBB44_50:
	end_block
	i32.const	$push257=, 208
	i32.add 	$push88=, $0, $pop257
	i32.const	$push256=, 0
	i32.const	$push255=, -49
	i32.add 	$push89=, $0, $pop255
	i32.const	$push254=, 255
	i32.and 	$push90=, $pop89, $pop254
	i32.const	$push253=, 5
	i32.lt_u	$push91=, $pop90, $pop253
	i32.select	$0=, $pop88, $pop256, $pop91
.LBB44_51:
	end_block
	i64.extend_u/i32	$push92=, $0
	i64.const	$push259=, 56
	i64.shl 	$push93=, $pop92, $pop259
	i64.const	$push258=, 56
	i64.shr_s	$5=, $pop93, $pop258
.LBB44_52:
	end_block
	i64.const	$push261=, 31
	i64.and 	$push95=, $5, $pop261
	i64.const	$push260=, 4294967295
	i64.and 	$push94=, $2, $pop260
	i64.shl 	$5=, $pop95, $pop94
.LBB44_53:
	end_block
	i32.const	$push267=, 1
	i32.add 	$1=, $1, $pop267
	i64.const	$push266=, 1
	i64.add 	$3=, $3, $pop266
	i64.or  	$6=, $5, $6
	i64.const	$push265=, -5
	i64.add 	$push264=, $2, $pop265
	tee_local	$push263=, $2=, $pop264
	i64.const	$push262=, -6
	i64.ne  	$push96=, $pop263, $pop262
	br_if   	0, $pop96
	end_loop
	i64.eq  	$push97=, $4, $6
	i32.const	$push98=, .L.str.158
	call    	eosio_assert@FUNCTION, $pop97, $pop98
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.159
	i64.const	$4=, 0
.LBB44_55:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push268=, 8
	i64.gt_u	$push99=, $3, $pop268
	br_if   	0, $pop99
	i32.load8_s	$push273=, 0($1)
	tee_local	$push272=, $0=, $pop273
	i32.const	$push271=, -97
	i32.add 	$push101=, $pop272, $pop271
	i32.const	$push270=, 255
	i32.and 	$push102=, $pop101, $pop270
	i32.const	$push269=, 25
	i32.gt_u	$push103=, $pop102, $pop269
	br_if   	1, $pop103
	i32.const	$push274=, 165
	i32.add 	$0=, $0, $pop274
	br      	2
.LBB44_58:
	end_block
	i64.const	$5=, 0
	i64.const	$push275=, 11
	i64.le_u	$push100=, $3, $pop275
	br_if   	2, $pop100
	br      	3
.LBB44_59:
	end_block
	i32.const	$push280=, 208
	i32.add 	$push104=, $0, $pop280
	i32.const	$push279=, 0
	i32.const	$push278=, -49
	i32.add 	$push105=, $0, $pop278
	i32.const	$push277=, 255
	i32.and 	$push106=, $pop105, $pop277
	i32.const	$push276=, 5
	i32.lt_u	$push107=, $pop106, $pop276
	i32.select	$0=, $pop104, $pop279, $pop107
.LBB44_60:
	end_block
	i64.extend_u/i32	$push108=, $0
	i64.const	$push282=, 56
	i64.shl 	$push109=, $pop108, $pop282
	i64.const	$push281=, 56
	i64.shr_s	$5=, $pop109, $pop281
.LBB44_61:
	end_block
	i64.const	$push284=, 31
	i64.and 	$push111=, $5, $pop284
	i64.const	$push283=, 4294967295
	i64.and 	$push110=, $2, $pop283
	i64.shl 	$5=, $pop111, $pop110
.LBB44_62:
	end_block
	i32.const	$push290=, 1
	i32.add 	$1=, $1, $pop290
	i64.const	$push289=, 1
	i64.add 	$3=, $3, $pop289
	i64.or  	$4=, $5, $4
	i64.const	$push288=, -5
	i64.add 	$push287=, $2, $pop288
	tee_local	$push286=, $2=, $pop287
	i64.const	$push285=, -6
	i64.ne  	$push112=, $pop286, $pop285
	br_if   	0, $pop112
	end_loop
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.159
	i64.const	$6=, 0
.LBB44_64:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push291=, 8
	i64.gt_u	$push113=, $3, $pop291
	br_if   	0, $pop113
	i32.load8_s	$push296=, 0($1)
	tee_local	$push295=, $0=, $pop296
	i32.const	$push294=, -97
	i32.add 	$push115=, $pop295, $pop294
	i32.const	$push293=, 255
	i32.and 	$push116=, $pop115, $pop293
	i32.const	$push292=, 25
	i32.gt_u	$push117=, $pop116, $pop292
	br_if   	1, $pop117
	i32.const	$push297=, 165
	i32.add 	$0=, $0, $pop297
	br      	2
.LBB44_67:
	end_block
	i64.const	$5=, 0
	i64.const	$push298=, 11
	i64.le_u	$push114=, $3, $pop298
	br_if   	2, $pop114
	br      	3
.LBB44_68:
	end_block
	i32.const	$push303=, 208
	i32.add 	$push118=, $0, $pop303
	i32.const	$push302=, 0
	i32.const	$push301=, -49
	i32.add 	$push119=, $0, $pop301
	i32.const	$push300=, 255
	i32.and 	$push120=, $pop119, $pop300
	i32.const	$push299=, 5
	i32.lt_u	$push121=, $pop120, $pop299
	i32.select	$0=, $pop118, $pop302, $pop121
.LBB44_69:
	end_block
	i64.extend_u/i32	$push122=, $0
	i64.const	$push305=, 56
	i64.shl 	$push123=, $pop122, $pop305
	i64.const	$push304=, 56
	i64.shr_s	$5=, $pop123, $pop304
.LBB44_70:
	end_block
	i64.const	$push307=, 31
	i64.and 	$push125=, $5, $pop307
	i64.const	$push306=, 4294967295
	i64.and 	$push124=, $2, $pop306
	i64.shl 	$5=, $pop125, $pop124
.LBB44_71:
	end_block
	i32.const	$push313=, 1
	i32.add 	$1=, $1, $pop313
	i64.const	$push312=, 1
	i64.add 	$3=, $3, $pop312
	i64.or  	$6=, $5, $6
	i64.const	$push311=, -5
	i64.add 	$push310=, $2, $pop311
	tee_local	$push309=, $2=, $pop310
	i64.const	$push308=, -6
	i64.ne  	$push126=, $pop309, $pop308
	br_if   	0, $pop126
	end_loop
	i64.eq  	$push127=, $6, $4
	i32.const	$push128=, .L.str.160
	call    	eosio_assert@FUNCTION, $pop127, $pop128
	.endfunc
.Lfunc_end44:
	.size	_ZN10test_types10name_classEv, .Lfunc_end44-_ZN10test_types10name_classEv

	.hidden	_ZN15test_fixedpoint16create_instancesEv
	.globl	_ZN15test_fixedpoint16create_instancesEv
	.type	_ZN15test_fixedpoint16create_instancesEv,@function
_ZN15test_fixedpoint16create_instancesEv:
	i32.const	$push1=, 1
	i32.const	$push0=, .L.str.161
	call    	eosio_assert@FUNCTION, $pop1, $pop0
	i32.const	$push11=, 1
	i32.const	$push2=, .L.str.162
	call    	eosio_assert@FUNCTION, $pop11, $pop2
	i32.const	$push10=, 1
	i32.const	$push3=, .L.str.163
	call    	eosio_assert@FUNCTION, $pop10, $pop3
	i32.const	$push9=, 1
	i32.const	$push4=, .L.str.164
	call    	eosio_assert@FUNCTION, $pop9, $pop4
	i32.const	$push8=, 1
	i32.const	$push5=, .L.str.165
	call    	eosio_assert@FUNCTION, $pop8, $pop5
	i32.const	$push7=, 1
	i32.const	$push6=, .L.str.166
	call    	eosio_assert@FUNCTION, $pop7, $pop6
	.endfunc
.Lfunc_end45:
	.size	_ZN15test_fixedpoint16create_instancesEv, .Lfunc_end45-_ZN15test_fixedpoint16create_instancesEv

	.hidden	_ZN15test_fixedpoint13test_additionEv
	.globl	_ZN15test_fixedpoint13test_additionEv
	.type	_ZN15test_fixedpoint13test_additionEv,@function
_ZN15test_fixedpoint13test_additionEv:
	i32.const	$push1=, 1
	i32.const	$push0=, .L.str.167
	call    	eosio_assert@FUNCTION, $pop1, $pop0
	i32.const	$push3=, 1
	i32.const	$push2=, .L.str.168
	call    	eosio_assert@FUNCTION, $pop3, $pop2
	.endfunc
.Lfunc_end46:
	.size	_ZN15test_fixedpoint13test_additionEv, .Lfunc_end46-_ZN15test_fixedpoint13test_additionEv

	.hidden	_ZN15test_fixedpoint16test_subtractionEv
	.globl	_ZN15test_fixedpoint16test_subtractionEv
	.type	_ZN15test_fixedpoint16test_subtractionEv,@function
_ZN15test_fixedpoint16test_subtractionEv:
	i32.const	$push1=, 1
	i32.const	$push0=, .L.str.169
	call    	eosio_assert@FUNCTION, $pop1, $pop0
	i32.const	$push7=, 1
	i32.const	$push6=, .L.str.169
	call    	eosio_assert@FUNCTION, $pop7, $pop6
	i32.const	$push5=, 1
	i32.const	$push2=, .L.str.170
	call    	eosio_assert@FUNCTION, $pop5, $pop2
	i32.const	$push4=, 1
	i32.const	$push3=, .L.str.170
	call    	eosio_assert@FUNCTION, $pop4, $pop3
	.endfunc
.Lfunc_end47:
	.size	_ZN15test_fixedpoint16test_subtractionEv, .Lfunc_end47-_ZN15test_fixedpoint16test_subtractionEv

	.hidden	_ZN15test_fixedpoint19test_multiplicationEv
	.globl	_ZN15test_fixedpoint19test_multiplicationEv
	.type	_ZN15test_fixedpoint19test_multiplicationEv,@function
_ZN15test_fixedpoint19test_multiplicationEv:
	i32.const	$push1=, 1
	i32.const	$push0=, .L.str.171
	call    	eosio_assert@FUNCTION, $pop1, $pop0
	i32.const	$push3=, 1
	i32.const	$push2=, .L.str.172
	call    	eosio_assert@FUNCTION, $pop3, $pop2
	.endfunc
.Lfunc_end48:
	.size	_ZN15test_fixedpoint19test_multiplicationEv, .Lfunc_end48-_ZN15test_fixedpoint19test_multiplicationEv

	.hidden	_ZN15test_fixedpoint13test_divisionEv
	.globl	_ZN15test_fixedpoint13test_divisionEv
	.type	_ZN15test_fixedpoint13test_divisionEv,@function
_ZN15test_fixedpoint13test_divisionEv:
	.local  	i32
	i32.const	$push10=, 0
	i32.const	$push7=, 0
	i32.load	$push8=, __stack_pointer($pop7)
	i32.const	$push9=, 32
	i32.sub 	$push31=, $pop8, $pop9
	tee_local	$push30=, $0=, $pop31
	i32.store	__stack_pointer($pop10), $pop30
	i32.const	$push1=, 1
	i32.const	$push0=, .L.str.431
	call    	eosio_assert@FUNCTION, $pop1, $pop0
	i32.const	$push29=, 1
	i32.const	$push28=, .L.str.431
	call    	eosio_assert@FUNCTION, $pop29, $pop28
	i32.const	$push27=, 1
	i32.const	$push26=, .L.str.431
	call    	eosio_assert@FUNCTION, $pop27, $pop26
	i64.const	$push2=, 0
	i64.store	24($0), $pop2
	i64.const	$push3=, 30030
	i64.store	16($0), $pop3
	i64.const	$push25=, 0
	i64.store	8($0), $pop25
	i64.const	$push4=, 128977867898880
	i64.store	0($0), $pop4
	i32.const	$push14=, 16
	i32.add 	$push15=, $0, $pop14
	call    	printui128@FUNCTION, $pop15
	i32.const	$push5=, .L.str.432
	call    	prints@FUNCTION, $pop5
	call    	printui128@FUNCTION, $0
	i32.const	$push24=, 1
	i32.const	$push6=, .L.str.173
	call    	eosio_assert@FUNCTION, $pop24, $pop6
	i32.const	$push23=, 1
	i32.const	$push22=, .L.str.431
	call    	eosio_assert@FUNCTION, $pop23, $pop22
	i32.const	$push21=, 1
	i32.const	$push20=, .L.str.431
	call    	eosio_assert@FUNCTION, $pop21, $pop20
	i32.const	$push19=, 1
	i32.const	$push18=, .L.str.431
	call    	eosio_assert@FUNCTION, $pop19, $pop18
	i32.const	$push17=, 1
	i32.const	$push16=, .L.str.173
	call    	eosio_assert@FUNCTION, $pop17, $pop16
	i32.const	$push13=, 0
	i32.const	$push11=, 32
	i32.add 	$push12=, $0, $pop11
	i32.store	__stack_pointer($pop13), $pop12
	.endfunc
.Lfunc_end49:
	.size	_ZN15test_fixedpoint13test_divisionEv, .Lfunc_end49-_ZN15test_fixedpoint13test_divisionEv

	.hidden	_ZN15test_fixedpoint18test_division_by_0Ev
	.globl	_ZN15test_fixedpoint18test_division_by_0Ev
	.type	_ZN15test_fixedpoint18test_division_by_0Ev,@function
_ZN15test_fixedpoint18test_division_by_0Ev:
	i32.const	$push1=, 0
	i32.const	$push0=, .L.str.431
	call    	eosio_assert@FUNCTION, $pop1, $pop0
	i32.const	$push5=, 0
	i32.const	$push4=, .L.str.431
	call    	eosio_assert@FUNCTION, $pop5, $pop4
	i32.const	$push3=, 0
	i32.const	$push2=, .L.str.174
	call    	eosio_assert@FUNCTION, $pop3, $pop2
	.endfunc
.Lfunc_end50:
	.size	_ZN15test_fixedpoint18test_division_by_0Ev, .Lfunc_end50-_ZN15test_fixedpoint18test_division_by_0Ev

	.hidden	_Zli5_ULLLPKc
	.globl	_Zli5_ULLLPKc
	.type	_Zli5_ULLLPKc,@function
_Zli5_ULLLPKc:
	.param  	i32, i32
	.local  	i32, i64, i64, i32, i32, i64, i32
	i32.const	$push33=, 0
	i32.const	$push30=, 0
	i32.load	$push31=, __stack_pointer($pop30)
	i32.const	$push32=, 16
	i32.sub 	$push45=, $pop31, $pop32
	tee_local	$push44=, $8=, $pop45
	i32.store	__stack_pointer($pop33), $pop44
	block   	
	block   	
	i32.const	$push4=, 2
	i32.const	$push43=, 1
	i32.load8_u	$push0=, 0($1)
	i32.const	$push3=, 45
	i32.eq  	$push42=, $pop0, $pop3
	tee_local	$push41=, $2=, $pop42
	i32.select	$push5=, $pop4, $pop43, $pop41
	i32.add 	$push6=, $1, $2
	i32.load8_u	$push7=, 0($pop6)
	i32.const	$push8=, 43
	i32.eq  	$push9=, $pop7, $pop8
	i32.select	$push1=, $pop5, $2, $pop9
	i32.add 	$push40=, $1, $pop1
	tee_local	$push39=, $6=, $pop40
	i32.load8_u	$push38=, 0($pop39)
	tee_local	$push37=, $1=, $pop38
	i32.eqz 	$push64=, $pop37
	br_if   	0, $pop64
	i32.const	$push46=, 1
	i32.add 	$6=, $6, $pop46
	i32.const	$push18=, 8
	i32.add 	$5=, $8, $pop18
	i64.const	$7=, 0
	i64.const	$3=, 0
.LBB51_2:
	loop    	
	i64.const	$push60=, 10
	i64.const	$push59=, 0
	call    	__multi3@FUNCTION, $8, $7, $3, $pop60, $pop59
	i32.const	$push58=, 24
	i32.shl 	$push10=, $1, $pop58
	i32.const	$push57=, 24
	i32.shr_s	$push11=, $pop10, $pop57
	i32.const	$push56=, -48
	i32.add 	$push12=, $pop11, $pop56
	i64.extend_s/i32	$push55=, $pop12
	tee_local	$push54=, $3=, $pop55
	i64.const	$push53=, 63
	i64.shr_s	$push17=, $pop54, $pop53
	i64.load	$push19=, 0($5)
	i64.add 	$push20=, $pop17, $pop19
	i64.const	$push52=, 1
	i64.load	$push51=, 0($8)
	tee_local	$push50=, $4=, $pop51
	i64.add 	$push49=, $3, $pop50
	tee_local	$push48=, $7=, $pop49
	i64.lt_u	$push13=, $pop48, $3
	i64.extend_u/i32	$push14=, $pop13
	i64.lt_u	$push15=, $7, $4
	i64.select	$push16=, $pop52, $pop14, $pop15
	i64.add 	$3=, $pop20, $pop16
	i32.load8_u	$1=, 0($6)
	i32.const	$push47=, 1
	i32.add 	$push2=, $6, $pop47
	copy_local	$6=, $pop2
	br_if   	0, $1
	br      	2
.LBB51_3:
	end_loop
	end_block
	i64.const	$7=, 0
	i64.const	$3=, 0
.LBB51_4:
	end_block
	i64.const	$push63=, 0
	i64.sub 	$push21=, $pop63, $7
	i64.select	$push22=, $pop21, $7, $2
	i64.store	0($0), $pop22
	i32.const	$push28=, 8
	i32.add 	$push29=, $0, $pop28
	i64.const	$push62=, 0
	i64.sub 	$push23=, $pop62, $3
	i64.const	$push61=, 0
	i64.ne  	$push24=, $7, $pop61
	i64.extend_u/i32	$push25=, $pop24
	i64.sub 	$push26=, $pop23, $pop25
	i64.select	$push27=, $pop26, $3, $2
	i64.store	0($pop29), $pop27
	i32.const	$push36=, 0
	i32.const	$push34=, 16
	i32.add 	$push35=, $8, $pop34
	i32.store	__stack_pointer($pop36), $pop35
	.endfunc
.Lfunc_end51:
	.size	_Zli5_ULLLPKc, .Lfunc_end51-_Zli5_ULLLPKc

	.hidden	_Zli4_LLLPKc
	.globl	_Zli4_LLLPKc
	.type	_Zli4_LLLPKc,@function
_Zli4_LLLPKc:
	.param  	i32, i32
	.local  	i32, i64, i64, i32, i32, i64, i32
	i32.const	$push33=, 0
	i32.const	$push30=, 0
	i32.load	$push31=, __stack_pointer($pop30)
	i32.const	$push32=, 16
	i32.sub 	$push45=, $pop31, $pop32
	tee_local	$push44=, $8=, $pop45
	i32.store	__stack_pointer($pop33), $pop44
	block   	
	block   	
	i32.const	$push4=, 2
	i32.const	$push43=, 1
	i32.load8_u	$push0=, 0($1)
	i32.const	$push3=, 45
	i32.eq  	$push42=, $pop0, $pop3
	tee_local	$push41=, $2=, $pop42
	i32.select	$push5=, $pop4, $pop43, $pop41
	i32.add 	$push6=, $1, $2
	i32.load8_u	$push7=, 0($pop6)
	i32.const	$push8=, 43
	i32.eq  	$push9=, $pop7, $pop8
	i32.select	$push1=, $pop5, $2, $pop9
	i32.add 	$push40=, $1, $pop1
	tee_local	$push39=, $6=, $pop40
	i32.load8_u	$push38=, 0($pop39)
	tee_local	$push37=, $1=, $pop38
	i32.eqz 	$push64=, $pop37
	br_if   	0, $pop64
	i32.const	$push46=, 1
	i32.add 	$6=, $6, $pop46
	i32.const	$push18=, 8
	i32.add 	$5=, $8, $pop18
	i64.const	$7=, 0
	i64.const	$3=, 0
.LBB52_2:
	loop    	
	i64.const	$push60=, 10
	i64.const	$push59=, 0
	call    	__multi3@FUNCTION, $8, $7, $3, $pop60, $pop59
	i32.const	$push58=, 24
	i32.shl 	$push10=, $1, $pop58
	i32.const	$push57=, 24
	i32.shr_s	$push11=, $pop10, $pop57
	i32.const	$push56=, -48
	i32.add 	$push12=, $pop11, $pop56
	i64.extend_s/i32	$push55=, $pop12
	tee_local	$push54=, $3=, $pop55
	i64.const	$push53=, 63
	i64.shr_s	$push17=, $pop54, $pop53
	i64.load	$push19=, 0($5)
	i64.add 	$push20=, $pop17, $pop19
	i64.const	$push52=, 1
	i64.load	$push51=, 0($8)
	tee_local	$push50=, $4=, $pop51
	i64.add 	$push49=, $3, $pop50
	tee_local	$push48=, $7=, $pop49
	i64.lt_u	$push13=, $pop48, $3
	i64.extend_u/i32	$push14=, $pop13
	i64.lt_u	$push15=, $7, $4
	i64.select	$push16=, $pop52, $pop14, $pop15
	i64.add 	$3=, $pop20, $pop16
	i32.load8_u	$1=, 0($6)
	i32.const	$push47=, 1
	i32.add 	$push2=, $6, $pop47
	copy_local	$6=, $pop2
	br_if   	0, $1
	br      	2
.LBB52_3:
	end_loop
	end_block
	i64.const	$7=, 0
	i64.const	$3=, 0
.LBB52_4:
	end_block
	i64.const	$push63=, 0
	i64.sub 	$push21=, $pop63, $7
	i64.select	$push22=, $pop21, $7, $2
	i64.store	0($0), $pop22
	i32.const	$push28=, 8
	i32.add 	$push29=, $0, $pop28
	i64.const	$push62=, 0
	i64.sub 	$push23=, $pop62, $3
	i64.const	$push61=, 0
	i64.ne  	$push24=, $7, $pop61
	i64.extend_u/i32	$push25=, $pop24
	i64.sub 	$push26=, $pop23, $pop25
	i64.select	$push27=, $pop26, $3, $2
	i64.store	0($pop29), $pop27
	i32.const	$push36=, 0
	i32.const	$push34=, 16
	i32.add 	$push35=, $8, $pop34
	i32.store	__stack_pointer($pop36), $pop35
	.endfunc
.Lfunc_end52:
	.size	_Zli4_LLLPKc, .Lfunc_end52-_Zli4_LLLPKc

	.hidden	_ZN22test_compiler_builtins11test_multi3Ev
	.globl	_ZN22test_compiler_builtins11test_multi3Ev
	.type	_ZN22test_compiler_builtins11test_multi3Ev,@function
_ZN22test_compiler_builtins11test_multi3Ev:
	.local  	i32
	i32.const	$push49=, 0
	i32.const	$push46=, 0
	i32.load	$push47=, __stack_pointer($pop46)
	i32.const	$push48=, 16
	i32.sub 	$push82=, $pop47, $pop48
	tee_local	$push81=, $0=, $pop82
	i32.store	__stack_pointer($pop49), $pop81
	i64.const	$push0=, 0
	i64.store	8($0), $pop0
	i64.const	$push80=, 0
	i64.store	0($0), $pop80
	i64.const	$push3=, -30
	i64.const	$push2=, -1
	i64.const	$push1=, 100
	i64.const	$push79=, 0
	call    	__multi3@FUNCTION, $0, $pop3, $pop2, $pop1, $pop79
	i64.load	$push7=, 0($0)
	i64.const	$push6=, -3000
	i64.xor 	$push8=, $pop7, $pop6
	i64.load	$push4=, 8($0)
	i64.const	$push78=, -1
	i64.xor 	$push5=, $pop4, $pop78
	i64.or  	$push9=, $pop8, $pop5
	i64.eqz 	$push10=, $pop9
	i32.const	$push11=, .L.str.175
	call    	eosio_assert@FUNCTION, $pop10, $pop11
	i64.const	$push77=, 100
	i64.const	$push76=, 0
	i64.const	$push75=, -30
	i64.const	$push74=, -1
	call    	__multi3@FUNCTION, $0, $pop77, $pop76, $pop75, $pop74
	i64.load	$push14=, 0($0)
	i64.const	$push73=, -3000
	i64.xor 	$push15=, $pop14, $pop73
	i64.load	$push12=, 8($0)
	i64.const	$push72=, -1
	i64.xor 	$push13=, $pop12, $pop72
	i64.or  	$push16=, $pop15, $pop13
	i64.eqz 	$push17=, $pop16
	i32.const	$push71=, .L.str.175
	call    	eosio_assert@FUNCTION, $pop17, $pop71
	i64.const	$push70=, -30
	i64.const	$push69=, -1
	i64.const	$push68=, -30
	i64.const	$push67=, -1
	call    	__multi3@FUNCTION, $0, $pop70, $pop69, $pop68, $pop67
	i64.load	$push19=, 0($0)
	i64.const	$push18=, 900
	i64.xor 	$push20=, $pop19, $pop18
	i64.load	$push21=, 8($0)
	i64.or  	$push22=, $pop20, $pop21
	i64.eqz 	$push23=, $pop22
	i32.const	$push24=, .L.str.176
	call    	eosio_assert@FUNCTION, $pop23, $pop24
	i64.const	$push66=, 100
	i64.const	$push65=, 0
	i64.const	$push64=, 100
	i64.const	$push63=, 0
	call    	__multi3@FUNCTION, $0, $pop66, $pop65, $pop64, $pop63
	i64.load	$push26=, 0($0)
	i64.const	$push25=, 10000
	i64.xor 	$push27=, $pop26, $pop25
	i64.load	$push28=, 8($0)
	i64.or  	$push29=, $pop27, $pop28
	i64.eqz 	$push30=, $pop29
	i32.const	$push31=, .L.str.177
	call    	eosio_assert@FUNCTION, $pop30, $pop31
	i64.const	$push32=, 1
	i64.const	$push62=, 0
	i64.const	$push61=, 100
	i64.const	$push60=, 0
	call    	__multi3@FUNCTION, $0, $pop32, $pop62, $pop61, $pop60
	i64.load	$push33=, 0($0)
	i64.const	$push59=, 100
	i64.xor 	$push34=, $pop33, $pop59
	i64.load	$push35=, 8($0)
	i64.or  	$push36=, $pop34, $pop35
	i64.eqz 	$push37=, $pop36
	i32.const	$push38=, .L.str.178
	call    	eosio_assert@FUNCTION, $pop37, $pop38
	i64.const	$push58=, 1
	i64.const	$push57=, 0
	i64.const	$push56=, -30
	i64.const	$push55=, -1
	call    	__multi3@FUNCTION, $0, $pop58, $pop57, $pop56, $pop55
	i64.load	$push41=, 0($0)
	i64.const	$push54=, -30
	i64.xor 	$push42=, $pop41, $pop54
	i64.load	$push39=, 8($0)
	i64.const	$push53=, -1
	i64.xor 	$push40=, $pop39, $pop53
	i64.or  	$push43=, $pop42, $pop40
	i64.eqz 	$push44=, $pop43
	i32.const	$push45=, .L.str.179
	call    	eosio_assert@FUNCTION, $pop44, $pop45
	i32.const	$push52=, 0
	i32.const	$push50=, 16
	i32.add 	$push51=, $0, $pop50
	i32.store	__stack_pointer($pop52), $pop51
	.endfunc
.Lfunc_end53:
	.size	_ZN22test_compiler_builtins11test_multi3Ev, .Lfunc_end53-_ZN22test_compiler_builtins11test_multi3Ev

	.hidden	_ZN22test_compiler_builtins11test_divti3Ev
	.globl	_ZN22test_compiler_builtins11test_divti3Ev
	.type	_ZN22test_compiler_builtins11test_divti3Ev,@function
_ZN22test_compiler_builtins11test_divti3Ev:
	.local  	i32
	i32.const	$push57=, 0
	i32.const	$push54=, 0
	i32.load	$push55=, __stack_pointer($pop54)
	i32.const	$push56=, 16
	i32.sub 	$push98=, $pop55, $pop56
	tee_local	$push97=, $0=, $pop98
	i32.store	__stack_pointer($pop57), $pop97
	i64.const	$push0=, 0
	i64.store	8($0), $pop0
	i64.const	$push96=, 0
	i64.store	0($0), $pop96
	i64.const	$push3=, -30
	i64.const	$push2=, -1
	i64.const	$push1=, 100
	i64.const	$push95=, 0
	call    	__divti3@FUNCTION, $0, $pop3, $pop2, $pop1, $pop95
	i64.load	$push5=, 0($0)
	i64.load	$push4=, 8($0)
	i64.or  	$push6=, $pop5, $pop4
	i64.eqz 	$push7=, $pop6
	i32.const	$push8=, .L.str.180
	call    	eosio_assert@FUNCTION, $pop7, $pop8
	i64.const	$push94=, 100
	i64.const	$push93=, 0
	i64.const	$push92=, -30
	i64.const	$push91=, -1
	call    	__divti3@FUNCTION, $0, $pop94, $pop93, $pop92, $pop91
	i64.load	$push12=, 0($0)
	i64.const	$push11=, -3
	i64.xor 	$push13=, $pop12, $pop11
	i64.load	$push9=, 8($0)
	i64.const	$push90=, -1
	i64.xor 	$push10=, $pop9, $pop90
	i64.or  	$push14=, $pop13, $pop10
	i64.eqz 	$push15=, $pop14
	i32.const	$push16=, .L.str.181
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	i64.const	$push89=, -30
	i64.const	$push88=, -1
	i64.const	$push87=, -30
	i64.const	$push86=, -1
	call    	__divti3@FUNCTION, $0, $pop89, $pop88, $pop87, $pop86
	i64.load	$push18=, 0($0)
	i64.const	$push17=, 1
	i64.xor 	$push19=, $pop18, $pop17
	i64.load	$push20=, 8($0)
	i64.or  	$push21=, $pop19, $pop20
	i64.eqz 	$push22=, $pop21
	i32.const	$push23=, .L.str.182
	call    	eosio_assert@FUNCTION, $pop22, $pop23
	i64.const	$push85=, 100
	i64.const	$push84=, 0
	i64.const	$push83=, 100
	i64.const	$push82=, 0
	call    	__divti3@FUNCTION, $0, $pop85, $pop84, $pop83, $pop82
	i64.load	$push24=, 0($0)
	i64.const	$push81=, 1
	i64.xor 	$push25=, $pop24, $pop81
	i64.load	$push26=, 8($0)
	i64.or  	$push27=, $pop25, $pop26
	i64.eqz 	$push28=, $pop27
	i32.const	$push80=, .L.str.182
	call    	eosio_assert@FUNCTION, $pop28, $pop80
	i64.const	$push79=, 100
	i64.const	$push78=, 0
	i64.const	$push29=, 3333
	i64.const	$push77=, 0
	call    	__divti3@FUNCTION, $0, $pop79, $pop78, $pop29, $pop77
	i64.load	$push31=, 0($0)
	i64.load	$push30=, 8($0)
	i64.or  	$push32=, $pop31, $pop30
	i64.eqz 	$push33=, $pop32
	i32.const	$push76=, .L.str.180
	call    	eosio_assert@FUNCTION, $pop33, $pop76
	i64.const	$push75=, 3333
	i64.const	$push74=, 0
	i64.const	$push73=, 100
	i64.const	$push72=, 0
	call    	__divti3@FUNCTION, $0, $pop75, $pop74, $pop73, $pop72
	i64.load	$push35=, 0($0)
	i64.const	$push34=, 33
	i64.xor 	$push36=, $pop35, $pop34
	i64.load	$push37=, 8($0)
	i64.or  	$push38=, $pop36, $pop37
	i64.eqz 	$push39=, $pop38
	i32.const	$push40=, .L.str.183
	call    	eosio_assert@FUNCTION, $pop39, $pop40
	i64.const	$push71=, 100
	i64.const	$push70=, 0
	i64.const	$push69=, 1
	i64.const	$push68=, 0
	call    	__divti3@FUNCTION, $0, $pop71, $pop70, $pop69, $pop68
	i64.load	$push41=, 0($0)
	i64.const	$push67=, 100
	i64.xor 	$push42=, $pop41, $pop67
	i64.load	$push43=, 8($0)
	i64.or  	$push44=, $pop42, $pop43
	i64.eqz 	$push45=, $pop44
	i32.const	$push46=, .L.str.184
	call    	eosio_assert@FUNCTION, $pop45, $pop46
	i64.const	$push66=, -30
	i64.const	$push65=, -1
	i64.const	$push64=, 1
	i64.const	$push63=, 0
	call    	__divti3@FUNCTION, $0, $pop66, $pop65, $pop64, $pop63
	i64.load	$push49=, 0($0)
	i64.const	$push62=, -30
	i64.xor 	$push50=, $pop49, $pop62
	i64.load	$push47=, 8($0)
	i64.const	$push61=, -1
	i64.xor 	$push48=, $pop47, $pop61
	i64.or  	$push51=, $pop50, $pop48
	i64.eqz 	$push52=, $pop51
	i32.const	$push53=, .L.str.185
	call    	eosio_assert@FUNCTION, $pop52, $pop53
	i32.const	$push60=, 0
	i32.const	$push58=, 16
	i32.add 	$push59=, $0, $pop58
	i32.store	__stack_pointer($pop60), $pop59
	.endfunc
.Lfunc_end54:
	.size	_ZN22test_compiler_builtins11test_divti3Ev, .Lfunc_end54-_ZN22test_compiler_builtins11test_divti3Ev

	.hidden	_ZN22test_compiler_builtins16test_divti3_by_0Ev
	.globl	_ZN22test_compiler_builtins16test_divti3_by_0Ev
	.type	_ZN22test_compiler_builtins16test_divti3_by_0Ev,@function
_ZN22test_compiler_builtins16test_divti3_by_0Ev:
	.local  	i32
	i32.const	$push7=, 0
	i32.const	$push4=, 0
	i32.load	$push5=, __stack_pointer($pop4)
	i32.const	$push6=, 16
	i32.sub 	$push16=, $pop5, $pop6
	tee_local	$push15=, $0=, $pop16
	i32.store	__stack_pointer($pop7), $pop15
	i64.const	$push0=, 0
	i64.store	8($0), $pop0
	i64.const	$push14=, 0
	i64.store	0($0), $pop14
	i64.const	$push1=, 100
	i64.const	$push13=, 0
	i64.const	$push12=, 0
	i64.const	$push11=, 0
	call    	__divti3@FUNCTION, $0, $pop1, $pop13, $pop12, $pop11
	i32.const	$push3=, 0
	i32.const	$push2=, .L.str.186
	call    	eosio_assert@FUNCTION, $pop3, $pop2
	i32.const	$push10=, 0
	i32.const	$push8=, 16
	i32.add 	$push9=, $0, $pop8
	i32.store	__stack_pointer($pop10), $pop9
	.endfunc
.Lfunc_end55:
	.size	_ZN22test_compiler_builtins16test_divti3_by_0Ev, .Lfunc_end55-_ZN22test_compiler_builtins16test_divti3_by_0Ev

	.hidden	_ZN22test_compiler_builtins12test_udivti3Ev
	.globl	_ZN22test_compiler_builtins12test_udivti3Ev
	.type	_ZN22test_compiler_builtins12test_udivti3Ev,@function
_ZN22test_compiler_builtins12test_udivti3Ev:
	.local  	i32
	i32.const	$push59=, 0
	i32.const	$push56=, 0
	i32.load	$push57=, __stack_pointer($pop56)
	i32.const	$push58=, 16
	i32.sub 	$push98=, $pop57, $pop58
	tee_local	$push97=, $0=, $pop98
	i32.store	__stack_pointer($pop59), $pop97
	i64.const	$push0=, 0
	i64.store	8($0), $pop0
	i64.const	$push96=, 0
	i64.store	0($0), $pop96
	i64.const	$push3=, -30
	i64.const	$push2=, -1
	i64.const	$push1=, 100
	i64.const	$push95=, 0
	call    	__udivti3@FUNCTION, $0, $pop3, $pop2, $pop1, $pop95
	i64.load	$push8=, 0($0)
	i64.const	$push7=, 2951479051793528258
	i64.xor 	$push9=, $pop8, $pop7
	i64.load	$push5=, 8($0)
	i64.const	$push4=, 184467440737095516
	i64.xor 	$push6=, $pop5, $pop4
	i64.or  	$push10=, $pop9, $pop6
	i64.eqz 	$push11=, $pop10
	i32.const	$push12=, .L.str.188
	call    	eosio_assert@FUNCTION, $pop11, $pop12
	i64.const	$push94=, 100
	i64.const	$push93=, 0
	i64.const	$push92=, -30
	i64.const	$push91=, -1
	call    	__udivti3@FUNCTION, $0, $pop94, $pop93, $pop92, $pop91
	i64.load	$push14=, 0($0)
	i64.load	$push13=, 8($0)
	i64.or  	$push15=, $pop14, $pop13
	i64.eqz 	$push16=, $pop15
	i32.const	$push90=, .L.str.188
	call    	eosio_assert@FUNCTION, $pop16, $pop90
	i64.const	$push89=, -30
	i64.const	$push88=, -1
	i64.const	$push87=, -30
	i64.const	$push86=, -1
	call    	__udivti3@FUNCTION, $0, $pop89, $pop88, $pop87, $pop86
	i64.load	$push18=, 0($0)
	i64.const	$push17=, 1
	i64.xor 	$push19=, $pop18, $pop17
	i64.load	$push20=, 8($0)
	i64.or  	$push21=, $pop19, $pop20
	i64.eqz 	$push22=, $pop21
	i32.const	$push23=, .L.str.189
	call    	eosio_assert@FUNCTION, $pop22, $pop23
	i64.const	$push85=, 100
	i64.const	$push84=, 0
	i64.const	$push83=, 100
	i64.const	$push82=, 0
	call    	__udivti3@FUNCTION, $0, $pop85, $pop84, $pop83, $pop82
	i64.load	$push24=, 0($0)
	i64.const	$push81=, 1
	i64.xor 	$push25=, $pop24, $pop81
	i64.load	$push26=, 8($0)
	i64.or  	$push27=, $pop25, $pop26
	i64.eqz 	$push28=, $pop27
	i32.const	$push29=, .L.str.182
	call    	eosio_assert@FUNCTION, $pop28, $pop29
	i64.const	$push80=, 100
	i64.const	$push79=, 0
	i64.const	$push30=, 3333
	i64.const	$push78=, 0
	call    	__udivti3@FUNCTION, $0, $pop80, $pop79, $pop30, $pop78
	i64.load	$push32=, 0($0)
	i64.load	$push31=, 8($0)
	i64.or  	$push33=, $pop32, $pop31
	i64.eqz 	$push34=, $pop33
	i32.const	$push35=, .L.str.180
	call    	eosio_assert@FUNCTION, $pop34, $pop35
	i64.const	$push77=, 3333
	i64.const	$push76=, 0
	i64.const	$push75=, 100
	i64.const	$push74=, 0
	call    	__udivti3@FUNCTION, $0, $pop77, $pop76, $pop75, $pop74
	i64.load	$push37=, 0($0)
	i64.const	$push36=, 33
	i64.xor 	$push38=, $pop37, $pop36
	i64.load	$push39=, 8($0)
	i64.or  	$push40=, $pop38, $pop39
	i64.eqz 	$push41=, $pop40
	i32.const	$push42=, .L.str.183
	call    	eosio_assert@FUNCTION, $pop41, $pop42
	i64.const	$push73=, 100
	i64.const	$push72=, 0
	i64.const	$push71=, 1
	i64.const	$push70=, 0
	call    	__udivti3@FUNCTION, $0, $pop73, $pop72, $pop71, $pop70
	i64.load	$push43=, 0($0)
	i64.const	$push69=, 100
	i64.xor 	$push44=, $pop43, $pop69
	i64.load	$push45=, 8($0)
	i64.or  	$push46=, $pop44, $pop45
	i64.eqz 	$push47=, $pop46
	i32.const	$push48=, .L.str.184
	call    	eosio_assert@FUNCTION, $pop47, $pop48
	i64.const	$push68=, -30
	i64.const	$push67=, -1
	i64.const	$push66=, 1
	i64.const	$push65=, 0
	call    	__udivti3@FUNCTION, $0, $pop68, $pop67, $pop66, $pop65
	i64.load	$push51=, 0($0)
	i64.const	$push64=, -30
	i64.xor 	$push52=, $pop51, $pop64
	i64.load	$push49=, 8($0)
	i64.const	$push63=, -1
	i64.xor 	$push50=, $pop49, $pop63
	i64.or  	$push53=, $pop52, $pop50
	i64.eqz 	$push54=, $pop53
	i32.const	$push55=, .L.str.185
	call    	eosio_assert@FUNCTION, $pop54, $pop55
	i32.const	$push62=, 0
	i32.const	$push60=, 16
	i32.add 	$push61=, $0, $pop60
	i32.store	__stack_pointer($pop62), $pop61
	.endfunc
.Lfunc_end56:
	.size	_ZN22test_compiler_builtins12test_udivti3Ev, .Lfunc_end56-_ZN22test_compiler_builtins12test_udivti3Ev

	.hidden	_ZN22test_compiler_builtins17test_udivti3_by_0Ev
	.globl	_ZN22test_compiler_builtins17test_udivti3_by_0Ev
	.type	_ZN22test_compiler_builtins17test_udivti3_by_0Ev,@function
_ZN22test_compiler_builtins17test_udivti3_by_0Ev:
	.local  	i32
	i32.const	$push7=, 0
	i32.const	$push4=, 0
	i32.load	$push5=, __stack_pointer($pop4)
	i32.const	$push6=, 16
	i32.sub 	$push16=, $pop5, $pop6
	tee_local	$push15=, $0=, $pop16
	i32.store	__stack_pointer($pop7), $pop15
	i64.const	$push0=, 0
	i64.store	8($0), $pop0
	i64.const	$push14=, 0
	i64.store	0($0), $pop14
	i64.const	$push1=, 100
	i64.const	$push13=, 0
	i64.const	$push12=, 0
	i64.const	$push11=, 0
	call    	__udivti3@FUNCTION, $0, $pop1, $pop13, $pop12, $pop11
	i32.const	$push3=, 0
	i32.const	$push2=, .L.str.186
	call    	eosio_assert@FUNCTION, $pop3, $pop2
	i32.const	$push10=, 0
	i32.const	$push8=, 16
	i32.add 	$push9=, $0, $pop8
	i32.store	__stack_pointer($pop10), $pop9
	.endfunc
.Lfunc_end57:
	.size	_ZN22test_compiler_builtins17test_udivti3_by_0Ev, .Lfunc_end57-_ZN22test_compiler_builtins17test_udivti3_by_0Ev

	.hidden	_ZN22test_compiler_builtins12test_lshlti3Ev
	.globl	_ZN22test_compiler_builtins12test_lshlti3Ev
	.type	_ZN22test_compiler_builtins12test_lshlti3Ev,@function
_ZN22test_compiler_builtins12test_lshlti3Ev:
	.local  	i32
	i32.const	$push56=, 0
	i32.const	$push53=, 0
	i32.load	$push54=, __stack_pointer($pop53)
	i32.const	$push55=, 16
	i32.sub 	$push78=, $pop54, $pop55
	tee_local	$push77=, $0=, $pop78
	i32.store	__stack_pointer($pop56), $pop77
	i64.const	$push0=, 0
	i64.store	8($0), $pop0
	i64.const	$push76=, 0
	i64.store	0($0), $pop76
	i64.const	$push2=, 1
	i64.const	$push75=, 0
	i32.const	$push1=, 0
	call    	__lshlti3@FUNCTION, $0, $pop2, $pop75, $pop1
	i64.load	$push3=, 0($0)
	i64.const	$push74=, 1
	i64.xor 	$push4=, $pop3, $pop74
	i64.load	$push5=, 8($0)
	i64.or  	$push6=, $pop4, $pop5
	i64.eqz 	$push7=, $pop6
	i32.const	$push8=, .L.str.190
	call    	eosio_assert@FUNCTION, $pop7, $pop8
	i64.const	$push73=, 1
	i64.const	$push72=, 0
	i32.const	$push9=, 1
	call    	__lshlti3@FUNCTION, $0, $pop73, $pop72, $pop9
	i64.load	$push11=, 0($0)
	i64.const	$push10=, 2
	i64.xor 	$push12=, $pop11, $pop10
	i64.load	$push13=, 8($0)
	i64.or  	$push14=, $pop12, $pop13
	i64.eqz 	$push15=, $pop14
	i32.const	$push16=, .L.str.191
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	i64.const	$push71=, 1
	i64.const	$push70=, 0
	i32.const	$push17=, 31
	call    	__lshlti3@FUNCTION, $0, $pop71, $pop70, $pop17
	i64.load	$push19=, 0($0)
	i64.const	$push18=, 2147483648
	i64.xor 	$push20=, $pop19, $pop18
	i64.load	$push21=, 8($0)
	i64.or  	$push22=, $pop20, $pop21
	i64.eqz 	$push23=, $pop22
	i32.const	$push24=, .L.str.193
	call    	eosio_assert@FUNCTION, $pop23, $pop24
	i64.const	$push69=, 1
	i64.const	$push68=, 0
	i32.const	$push25=, 63
	call    	__lshlti3@FUNCTION, $0, $pop69, $pop68, $pop25
	i64.load	$push27=, 0($0)
	i64.const	$push26=, -9223372036854775808
	i64.xor 	$push28=, $pop27, $pop26
	i64.load	$push29=, 8($0)
	i64.or  	$push30=, $pop28, $pop29
	i64.eqz 	$push31=, $pop30
	i32.const	$push32=, .L.str.195
	call    	eosio_assert@FUNCTION, $pop31, $pop32
	i64.const	$push67=, 1
	i64.const	$push66=, 0
	i32.const	$push33=, 64
	call    	__lshlti3@FUNCTION, $0, $pop67, $pop66, $pop33
	i64.load	$push36=, 0($0)
	i64.load	$push34=, 8($0)
	i64.const	$push65=, 1
	i64.xor 	$push35=, $pop34, $pop65
	i64.or  	$push37=, $pop36, $pop35
	i64.eqz 	$push38=, $pop37
	i32.const	$push39=, .L.str.196
	call    	eosio_assert@FUNCTION, $pop38, $pop39
	i64.const	$push64=, 1
	i64.const	$push63=, 0
	i32.const	$push40=, 127
	call    	__lshlti3@FUNCTION, $0, $pop64, $pop63, $pop40
	i64.load	$push43=, 0($0)
	i64.load	$push41=, 8($0)
	i64.const	$push62=, -9223372036854775808
	i64.xor 	$push42=, $pop41, $pop62
	i64.or  	$push44=, $pop43, $pop42
	i64.eqz 	$push45=, $pop44
	i32.const	$push46=, .L.str.197
	call    	eosio_assert@FUNCTION, $pop45, $pop46
	i64.const	$push61=, 1
	i64.const	$push60=, 0
	i32.const	$push47=, 128
	call    	__lshlti3@FUNCTION, $0, $pop61, $pop60, $pop47
	i64.load	$push49=, 0($0)
	i64.load	$push48=, 8($0)
	i64.or  	$push50=, $pop49, $pop48
	i64.eqz 	$push51=, $pop50
	i32.const	$push52=, .L.str.198
	call    	eosio_assert@FUNCTION, $pop51, $pop52
	i32.const	$push59=, 0
	i32.const	$push57=, 16
	i32.add 	$push58=, $0, $pop57
	i32.store	__stack_pointer($pop59), $pop58
	.endfunc
.Lfunc_end58:
	.size	_ZN22test_compiler_builtins12test_lshlti3Ev, .Lfunc_end58-_ZN22test_compiler_builtins12test_lshlti3Ev

	.hidden	_ZN22test_compiler_builtins12test_ashlti3Ev
	.globl	_ZN22test_compiler_builtins12test_ashlti3Ev
	.type	_ZN22test_compiler_builtins12test_ashlti3Ev,@function
_ZN22test_compiler_builtins12test_ashlti3Ev:
	.local  	i32
	i32.const	$push56=, 0
	i32.const	$push53=, 0
	i32.load	$push54=, __stack_pointer($pop53)
	i32.const	$push55=, 16
	i32.sub 	$push78=, $pop54, $pop55
	tee_local	$push77=, $0=, $pop78
	i32.store	__stack_pointer($pop56), $pop77
	i64.const	$push0=, 0
	i64.store	8($0), $pop0
	i64.const	$push76=, 0
	i64.store	0($0), $pop76
	i64.const	$push2=, 1
	i64.const	$push75=, 0
	i32.const	$push1=, 0
	call    	__ashlti3@FUNCTION, $0, $pop2, $pop75, $pop1
	i64.load	$push3=, 0($0)
	i64.const	$push74=, 1
	i64.xor 	$push4=, $pop3, $pop74
	i64.load	$push5=, 8($0)
	i64.or  	$push6=, $pop4, $pop5
	i64.eqz 	$push7=, $pop6
	i32.const	$push8=, .L.str.199
	call    	eosio_assert@FUNCTION, $pop7, $pop8
	i64.const	$push73=, 1
	i64.const	$push72=, 0
	i32.const	$push9=, 1
	call    	__ashlti3@FUNCTION, $0, $pop73, $pop72, $pop9
	i64.load	$push11=, 0($0)
	i64.const	$push10=, 2
	i64.xor 	$push12=, $pop11, $pop10
	i64.load	$push13=, 8($0)
	i64.or  	$push14=, $pop12, $pop13
	i64.eqz 	$push15=, $pop14
	i32.const	$push16=, .L.str.200
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	i64.const	$push71=, 1
	i64.const	$push70=, 0
	i32.const	$push17=, 31
	call    	__ashlti3@FUNCTION, $0, $pop71, $pop70, $pop17
	i64.load	$push19=, 0($0)
	i64.const	$push18=, 2147483648
	i64.xor 	$push20=, $pop19, $pop18
	i64.load	$push21=, 8($0)
	i64.or  	$push22=, $pop20, $pop21
	i64.eqz 	$push23=, $pop22
	i32.const	$push24=, .L.str.201
	call    	eosio_assert@FUNCTION, $pop23, $pop24
	i64.const	$push69=, 1
	i64.const	$push68=, 0
	i32.const	$push25=, 63
	call    	__ashlti3@FUNCTION, $0, $pop69, $pop68, $pop25
	i64.load	$push27=, 0($0)
	i64.const	$push26=, -9223372036854775808
	i64.xor 	$push28=, $pop27, $pop26
	i64.load	$push29=, 8($0)
	i64.or  	$push30=, $pop28, $pop29
	i64.eqz 	$push31=, $pop30
	i32.const	$push32=, .L.str.202
	call    	eosio_assert@FUNCTION, $pop31, $pop32
	i64.const	$push67=, 1
	i64.const	$push66=, 0
	i32.const	$push33=, 64
	call    	__ashlti3@FUNCTION, $0, $pop67, $pop66, $pop33
	i64.load	$push36=, 0($0)
	i64.load	$push34=, 8($0)
	i64.const	$push65=, 1
	i64.xor 	$push35=, $pop34, $pop65
	i64.or  	$push37=, $pop36, $pop35
	i64.eqz 	$push38=, $pop37
	i32.const	$push39=, .L.str.203
	call    	eosio_assert@FUNCTION, $pop38, $pop39
	i64.const	$push64=, 1
	i64.const	$push63=, 0
	i32.const	$push40=, 127
	call    	__ashlti3@FUNCTION, $0, $pop64, $pop63, $pop40
	i64.load	$push43=, 0($0)
	i64.load	$push41=, 8($0)
	i64.const	$push62=, -9223372036854775808
	i64.xor 	$push42=, $pop41, $pop62
	i64.or  	$push44=, $pop43, $pop42
	i64.eqz 	$push45=, $pop44
	i32.const	$push46=, .L.str.204
	call    	eosio_assert@FUNCTION, $pop45, $pop46
	i64.const	$push61=, 1
	i64.const	$push60=, 0
	i32.const	$push47=, 128
	call    	__ashlti3@FUNCTION, $0, $pop61, $pop60, $pop47
	i64.load	$push49=, 0($0)
	i64.load	$push48=, 8($0)
	i64.or  	$push50=, $pop49, $pop48
	i64.eqz 	$push51=, $pop50
	i32.const	$push52=, .L.str.205
	call    	eosio_assert@FUNCTION, $pop51, $pop52
	i32.const	$push59=, 0
	i32.const	$push57=, 16
	i32.add 	$push58=, $0, $pop57
	i32.store	__stack_pointer($pop59), $pop58
	.endfunc
.Lfunc_end59:
	.size	_ZN22test_compiler_builtins12test_ashlti3Ev, .Lfunc_end59-_ZN22test_compiler_builtins12test_ashlti3Ev

	.hidden	_ZN22test_compiler_builtins12test_lshrti3Ev
	.globl	_ZN22test_compiler_builtins12test_lshrti3Ev
	.type	_ZN22test_compiler_builtins12test_lshrti3Ev,@function
_ZN22test_compiler_builtins12test_lshrti3Ev:
	.local  	i32
	i32.const	$push50=, 0
	i32.const	$push47=, 0
	i32.load	$push48=, __stack_pointer($pop47)
	i32.const	$push49=, 16
	i32.sub 	$push70=, $pop48, $pop49
	tee_local	$push69=, $0=, $pop70
	i32.store	__stack_pointer($pop50), $pop69
	i64.const	$push0=, 0
	i64.store	8($0), $pop0
	i64.const	$push68=, 0
	i64.store	0($0), $pop68
	i64.const	$push67=, 0
	i64.const	$push2=, -9223372036854775808
	i32.const	$push1=, 0
	call    	__lshrti3@FUNCTION, $0, $pop67, $pop2, $pop1
	i64.load	$push5=, 0($0)
	i64.load	$push3=, 8($0)
	i64.const	$push66=, -9223372036854775808
	i64.xor 	$push4=, $pop3, $pop66
	i64.or  	$push6=, $pop5, $pop4
	i64.eqz 	$push7=, $pop6
	i32.const	$push8=, .L.str.206
	call    	eosio_assert@FUNCTION, $pop7, $pop8
	i64.const	$push65=, 0
	i64.const	$push64=, -9223372036854775808
	i32.const	$push9=, 1
	call    	__lshrti3@FUNCTION, $0, $pop65, $pop64, $pop9
	i64.load	$push13=, 0($0)
	i64.load	$push11=, 8($0)
	i64.const	$push10=, 4611686018427387904
	i64.xor 	$push12=, $pop11, $pop10
	i64.or  	$push14=, $pop13, $pop12
	i64.eqz 	$push15=, $pop14
	i32.const	$push16=, .L.str.208
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	i64.const	$push63=, 0
	i64.const	$push62=, -9223372036854775808
	i32.const	$push17=, 63
	call    	__lshrti3@FUNCTION, $0, $pop63, $pop62, $pop17
	i64.load	$push21=, 0($0)
	i64.load	$push19=, 8($0)
	i64.const	$push18=, 1
	i64.xor 	$push20=, $pop19, $pop18
	i64.or  	$push22=, $pop21, $pop20
	i64.eqz 	$push23=, $pop22
	i32.const	$push24=, .L.str.210
	call    	eosio_assert@FUNCTION, $pop23, $pop24
	i64.const	$push61=, 0
	i64.const	$push60=, -9223372036854775808
	i32.const	$push25=, 64
	call    	__lshrti3@FUNCTION, $0, $pop61, $pop60, $pop25
	i64.load	$push26=, 0($0)
	i64.const	$push59=, -9223372036854775808
	i64.xor 	$push27=, $pop26, $pop59
	i64.load	$push28=, 8($0)
	i64.or  	$push29=, $pop27, $pop28
	i64.eqz 	$push30=, $pop29
	i32.const	$push31=, .L.str.211
	call    	eosio_assert@FUNCTION, $pop30, $pop31
	i64.const	$push58=, 0
	i64.const	$push57=, -9223372036854775808
	i32.const	$push32=, 96
	call    	__lshrti3@FUNCTION, $0, $pop58, $pop57, $pop32
	i64.load	$push34=, 0($0)
	i64.const	$push33=, 2147483648
	i64.xor 	$push35=, $pop34, $pop33
	i64.load	$push36=, 8($0)
	i64.or  	$push37=, $pop35, $pop36
	i64.eqz 	$push38=, $pop37
	i32.const	$push39=, .L.str.212
	call    	eosio_assert@FUNCTION, $pop38, $pop39
	i64.const	$push56=, 0
	i64.const	$push55=, -9223372036854775808
	i32.const	$push40=, 127
	call    	__lshrti3@FUNCTION, $0, $pop56, $pop55, $pop40
	i64.load	$push41=, 0($0)
	i64.const	$push54=, 1
	i64.xor 	$push42=, $pop41, $pop54
	i64.load	$push43=, 8($0)
	i64.or  	$push44=, $pop42, $pop43
	i64.eqz 	$push45=, $pop44
	i32.const	$push46=, .L.str.213
	call    	eosio_assert@FUNCTION, $pop45, $pop46
	i32.const	$push53=, 0
	i32.const	$push51=, 16
	i32.add 	$push52=, $0, $pop51
	i32.store	__stack_pointer($pop53), $pop52
	.endfunc
.Lfunc_end60:
	.size	_ZN22test_compiler_builtins12test_lshrti3Ev, .Lfunc_end60-_ZN22test_compiler_builtins12test_lshrti3Ev

	.hidden	_ZN22test_compiler_builtins12test_ashrti3Ev
	.globl	_ZN22test_compiler_builtins12test_ashrti3Ev
	.type	_ZN22test_compiler_builtins12test_ashrti3Ev,@function
_ZN22test_compiler_builtins12test_ashrti3Ev:
	.local  	i32
	i32.const	$push52=, 0
	i32.const	$push49=, 0
	i32.load	$push50=, __stack_pointer($pop49)
	i32.const	$push51=, 16
	i32.sub 	$push73=, $pop50, $pop51
	tee_local	$push72=, $0=, $pop73
	i32.store	__stack_pointer($pop52), $pop72
	i64.const	$push0=, 0
	i64.store	8($0), $pop0
	i64.const	$push71=, 0
	i64.store	0($0), $pop71
	i64.const	$push70=, 0
	i64.const	$push2=, -9223372036854775808
	i32.const	$push1=, 0
	call    	__ashrti3@FUNCTION, $0, $pop70, $pop2, $pop1
	i64.load	$push5=, 0($0)
	i64.load	$push3=, 8($0)
	i64.const	$push69=, -9223372036854775808
	i64.xor 	$push4=, $pop3, $pop69
	i64.or  	$push6=, $pop5, $pop4
	i64.eqz 	$push7=, $pop6
	i32.const	$push8=, .L.str.215
	call    	eosio_assert@FUNCTION, $pop7, $pop8
	i64.const	$push68=, 0
	i64.const	$push67=, -9223372036854775808
	i32.const	$push9=, 1
	call    	__ashrti3@FUNCTION, $0, $pop68, $pop67, $pop9
	i64.load	$push13=, 0($0)
	i64.load	$push11=, 8($0)
	i64.const	$push10=, -4611686018427387904
	i64.xor 	$push12=, $pop11, $pop10
	i64.or  	$push14=, $pop13, $pop12
	i64.eqz 	$push15=, $pop14
	i32.const	$push16=, .L.str.216
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	i64.const	$push66=, 0
	i64.const	$push65=, -9223372036854775808
	i32.const	$push17=, 2
	call    	__ashrti3@FUNCTION, $0, $pop66, $pop65, $pop17
	i64.load	$push21=, 0($0)
	i64.load	$push19=, 8($0)
	i64.const	$push18=, -2305843009213693952
	i64.xor 	$push20=, $pop19, $pop18
	i64.or  	$push22=, $pop21, $pop20
	i64.eqz 	$push23=, $pop22
	i32.const	$push24=, .L.str.217
	call    	eosio_assert@FUNCTION, $pop23, $pop24
	i64.const	$push64=, 0
	i64.const	$push63=, -9223372036854775808
	i32.const	$push25=, 64
	call    	__ashrti3@FUNCTION, $0, $pop64, $pop63, $pop25
	i64.load	$push29=, 0($0)
	i64.const	$push62=, -9223372036854775808
	i64.xor 	$push30=, $pop29, $pop62
	i64.load	$push27=, 8($0)
	i64.const	$push26=, -1
	i64.xor 	$push28=, $pop27, $pop26
	i64.or  	$push31=, $pop30, $pop28
	i64.eqz 	$push32=, $pop31
	i32.const	$push33=, .L.str.218
	call    	eosio_assert@FUNCTION, $pop32, $pop33
	i64.const	$push61=, 0
	i64.const	$push60=, -9223372036854775808
	i32.const	$push34=, 95
	call    	__ashrti3@FUNCTION, $0, $pop61, $pop60, $pop34
	i64.load	$push38=, 0($0)
	i64.const	$push37=, -4294967296
	i64.xor 	$push39=, $pop38, $pop37
	i64.load	$push35=, 8($0)
	i64.const	$push59=, -1
	i64.xor 	$push36=, $pop35, $pop59
	i64.or  	$push40=, $pop39, $pop36
	i64.eqz 	$push41=, $pop40
	i32.const	$push42=, .L.str.219
	call    	eosio_assert@FUNCTION, $pop41, $pop42
	i64.const	$push58=, 0
	i64.const	$push57=, -9223372036854775808
	i32.const	$push43=, 127
	call    	__ashrti3@FUNCTION, $0, $pop58, $pop57, $pop43
	i64.load	$push45=, 0($0)
	i64.load	$push44=, 8($0)
	i64.and 	$push46=, $pop45, $pop44
	i64.const	$push56=, -1
	i64.eq  	$push47=, $pop46, $pop56
	i32.const	$push48=, .L.str.220
	call    	eosio_assert@FUNCTION, $pop47, $pop48
	i32.const	$push55=, 0
	i32.const	$push53=, 16
	i32.add 	$push54=, $0, $pop53
	i32.store	__stack_pointer($pop55), $pop54
	.endfunc
.Lfunc_end61:
	.size	_ZN22test_compiler_builtins12test_ashrti3Ev, .Lfunc_end61-_ZN22test_compiler_builtins12test_ashrti3Ev

	.hidden	_ZN22test_compiler_builtins11test_modti3Ev
	.globl	_ZN22test_compiler_builtins11test_modti3Ev
	.type	_ZN22test_compiler_builtins11test_modti3Ev,@function
_ZN22test_compiler_builtins11test_modti3Ev:
	.local  	i32
	i32.const	$push48=, 0
	i32.const	$push45=, 0
	i32.load	$push46=, __stack_pointer($pop45)
	i32.const	$push47=, 16
	i32.sub 	$push85=, $pop46, $pop47
	tee_local	$push84=, $0=, $pop85
	i32.store	__stack_pointer($pop48), $pop84
	i64.const	$push0=, 0
	i64.store	8($0), $pop0
	i64.const	$push83=, 0
	i64.store	0($0), $pop83
	i64.const	$push3=, -30
	i64.const	$push2=, -1
	i64.const	$push1=, 100
	i64.const	$push82=, 0
	call    	__modti3@FUNCTION, $0, $pop3, $pop2, $pop1, $pop82
	i64.load	$push6=, 0($0)
	i64.const	$push81=, -30
	i64.xor 	$push7=, $pop6, $pop81
	i64.load	$push4=, 8($0)
	i64.const	$push80=, -1
	i64.xor 	$push5=, $pop4, $pop80
	i64.or  	$push8=, $pop7, $pop5
	i64.eqz 	$push9=, $pop8
	i32.const	$push10=, .L.str.221
	call    	eosio_assert@FUNCTION, $pop9, $pop10
	i64.const	$push12=, 30
	i64.const	$push79=, 0
	i64.const	$push11=, -100
	i64.const	$push78=, -1
	call    	__modti3@FUNCTION, $0, $pop12, $pop79, $pop11, $pop78
	i64.load	$push13=, 0($0)
	i64.const	$push77=, 30
	i64.xor 	$push14=, $pop13, $pop77
	i64.load	$push15=, 8($0)
	i64.or  	$push16=, $pop14, $pop15
	i64.eqz 	$push17=, $pop16
	i32.const	$push18=, .L.str.222
	call    	eosio_assert@FUNCTION, $pop17, $pop18
	i64.const	$push76=, -30
	i64.const	$push75=, -1
	i64.const	$push74=, -100
	i64.const	$push73=, -1
	call    	__modti3@FUNCTION, $0, $pop76, $pop75, $pop74, $pop73
	i64.load	$push21=, 0($0)
	i64.const	$push72=, -30
	i64.xor 	$push22=, $pop21, $pop72
	i64.load	$push19=, 8($0)
	i64.const	$push71=, -1
	i64.xor 	$push20=, $pop19, $pop71
	i64.or  	$push23=, $pop22, $pop20
	i64.eqz 	$push24=, $pop23
	i32.const	$push70=, .L.str.221
	call    	eosio_assert@FUNCTION, $pop24, $pop70
	i64.const	$push69=, 100
	i64.const	$push68=, 0
	i64.const	$push67=, 30
	i64.const	$push66=, 0
	call    	__modti3@FUNCTION, $0, $pop69, $pop68, $pop67, $pop66
	i64.load	$push26=, 0($0)
	i64.const	$push25=, 10
	i64.xor 	$push27=, $pop26, $pop25
	i64.load	$push28=, 8($0)
	i64.or  	$push29=, $pop27, $pop28
	i64.eqz 	$push30=, $pop29
	i32.const	$push31=, .L.str.223
	call    	eosio_assert@FUNCTION, $pop30, $pop31
	i64.const	$push65=, 100
	i64.const	$push64=, 0
	i64.const	$push63=, -100
	i64.const	$push62=, -1
	call    	__modti3@FUNCTION, $0, $pop65, $pop64, $pop63, $pop62
	i64.load	$push33=, 0($0)
	i64.load	$push32=, 8($0)
	i64.or  	$push34=, $pop33, $pop32
	i64.eqz 	$push35=, $pop34
	i32.const	$push36=, .L.str.224
	call    	eosio_assert@FUNCTION, $pop35, $pop36
	i64.const	$push61=, 100
	i64.const	$push60=, 0
	i64.const	$push59=, 100
	i64.const	$push58=, 0
	call    	__modti3@FUNCTION, $0, $pop61, $pop60, $pop59, $pop58
	i64.load	$push38=, 0($0)
	i64.load	$push37=, 8($0)
	i64.or  	$push39=, $pop38, $pop37
	i64.eqz 	$push40=, $pop39
	i32.const	$push57=, .L.str.224
	call    	eosio_assert@FUNCTION, $pop40, $pop57
	i64.const	$push56=, 0
	i64.const	$push55=, 0
	i64.const	$push54=, 100
	i64.const	$push53=, 0
	call    	__modti3@FUNCTION, $0, $pop56, $pop55, $pop54, $pop53
	i64.load	$push42=, 0($0)
	i64.load	$push41=, 8($0)
	i64.or  	$push43=, $pop42, $pop41
	i64.eqz 	$push44=, $pop43
	i32.const	$push52=, .L.str.224
	call    	eosio_assert@FUNCTION, $pop44, $pop52
	i32.const	$push51=, 0
	i32.const	$push49=, 16
	i32.add 	$push50=, $0, $pop49
	i32.store	__stack_pointer($pop51), $pop50
	.endfunc
.Lfunc_end62:
	.size	_ZN22test_compiler_builtins11test_modti3Ev, .Lfunc_end62-_ZN22test_compiler_builtins11test_modti3Ev

	.hidden	_ZN22test_compiler_builtins16test_modti3_by_0Ev
	.globl	_ZN22test_compiler_builtins16test_modti3_by_0Ev
	.type	_ZN22test_compiler_builtins16test_modti3_by_0Ev,@function
_ZN22test_compiler_builtins16test_modti3_by_0Ev:
	.local  	i32
	i32.const	$push7=, 0
	i32.const	$push4=, 0
	i32.load	$push5=, __stack_pointer($pop4)
	i32.const	$push6=, 16
	i32.sub 	$push16=, $pop5, $pop6
	tee_local	$push15=, $0=, $pop16
	i32.store	__stack_pointer($pop7), $pop15
	i64.const	$push0=, 0
	i64.store	8($0), $pop0
	i64.const	$push14=, 0
	i64.store	0($0), $pop14
	i64.const	$push1=, 100
	i64.const	$push13=, 0
	i64.const	$push12=, 0
	i64.const	$push11=, 0
	call    	__modti3@FUNCTION, $0, $pop1, $pop13, $pop12, $pop11
	i32.const	$push3=, 0
	i32.const	$push2=, .L.str.225
	call    	eosio_assert@FUNCTION, $pop3, $pop2
	i32.const	$push10=, 0
	i32.const	$push8=, 16
	i32.add 	$push9=, $0, $pop8
	i32.store	__stack_pointer($pop10), $pop9
	.endfunc
.Lfunc_end63:
	.size	_ZN22test_compiler_builtins16test_modti3_by_0Ev, .Lfunc_end63-_ZN22test_compiler_builtins16test_modti3_by_0Ev

	.hidden	_ZN22test_compiler_builtins12test_umodti3Ev
	.globl	_ZN22test_compiler_builtins12test_umodti3Ev
	.type	_ZN22test_compiler_builtins12test_umodti3Ev,@function
_ZN22test_compiler_builtins12test_umodti3Ev:
	.local  	i32
	i32.const	$push48=, 0
	i32.const	$push45=, 0
	i32.load	$push46=, __stack_pointer($pop45)
	i32.const	$push47=, 16
	i32.sub 	$push85=, $pop46, $pop47
	tee_local	$push84=, $0=, $pop85
	i32.store	__stack_pointer($pop48), $pop84
	i64.const	$push0=, 0
	i64.store	8($0), $pop0
	i64.const	$push83=, 0
	i64.store	0($0), $pop83
	i64.const	$push3=, -30
	i64.const	$push2=, -1
	i64.const	$push1=, 100
	i64.const	$push82=, 0
	call    	__umodti3@FUNCTION, $0, $pop3, $pop2, $pop1, $pop82
	i64.load	$push6=, 0($0)
	i64.const	$push81=, -30
	i64.xor 	$push7=, $pop6, $pop81
	i64.load	$push4=, 8($0)
	i64.const	$push80=, -1
	i64.xor 	$push5=, $pop4, $pop80
	i64.or  	$push8=, $pop7, $pop5
	i64.eqz 	$push9=, $pop8
	i32.const	$push10=, .L.str.221
	call    	eosio_assert@FUNCTION, $pop9, $pop10
	i64.const	$push12=, 30
	i64.const	$push79=, 0
	i64.const	$push11=, -100
	i64.const	$push78=, -1
	call    	__umodti3@FUNCTION, $0, $pop12, $pop79, $pop11, $pop78
	i64.load	$push13=, 0($0)
	i64.const	$push77=, 30
	i64.xor 	$push14=, $pop13, $pop77
	i64.load	$push15=, 8($0)
	i64.or  	$push16=, $pop14, $pop15
	i64.eqz 	$push17=, $pop16
	i32.const	$push18=, .L.str.222
	call    	eosio_assert@FUNCTION, $pop17, $pop18
	i64.const	$push76=, -30
	i64.const	$push75=, -1
	i64.const	$push74=, -100
	i64.const	$push73=, -1
	call    	__umodti3@FUNCTION, $0, $pop76, $pop75, $pop74, $pop73
	i64.load	$push21=, 0($0)
	i64.const	$push72=, -30
	i64.xor 	$push22=, $pop21, $pop72
	i64.load	$push19=, 8($0)
	i64.const	$push71=, -1
	i64.xor 	$push20=, $pop19, $pop71
	i64.or  	$push23=, $pop22, $pop20
	i64.eqz 	$push24=, $pop23
	i32.const	$push70=, .L.str.221
	call    	eosio_assert@FUNCTION, $pop24, $pop70
	i64.const	$push69=, 100
	i64.const	$push68=, 0
	i64.const	$push67=, 30
	i64.const	$push66=, 0
	call    	__umodti3@FUNCTION, $0, $pop69, $pop68, $pop67, $pop66
	i64.load	$push26=, 0($0)
	i64.const	$push25=, 10
	i64.xor 	$push27=, $pop26, $pop25
	i64.load	$push28=, 8($0)
	i64.or  	$push29=, $pop27, $pop28
	i64.eqz 	$push30=, $pop29
	i32.const	$push31=, .L.str.223
	call    	eosio_assert@FUNCTION, $pop30, $pop31
	i64.const	$push65=, 100
	i64.const	$push64=, 0
	i64.const	$push63=, -100
	i64.const	$push62=, -1
	call    	__umodti3@FUNCTION, $0, $pop65, $pop64, $pop63, $pop62
	i64.load	$push33=, 0($0)
	i64.load	$push32=, 8($0)
	i64.or  	$push34=, $pop33, $pop32
	i64.eqz 	$push35=, $pop34
	i32.const	$push36=, .L.str.224
	call    	eosio_assert@FUNCTION, $pop35, $pop36
	i64.const	$push61=, 100
	i64.const	$push60=, 0
	i64.const	$push59=, 100
	i64.const	$push58=, 0
	call    	__umodti3@FUNCTION, $0, $pop61, $pop60, $pop59, $pop58
	i64.load	$push38=, 0($0)
	i64.load	$push37=, 8($0)
	i64.or  	$push39=, $pop38, $pop37
	i64.eqz 	$push40=, $pop39
	i32.const	$push57=, .L.str.224
	call    	eosio_assert@FUNCTION, $pop40, $pop57
	i64.const	$push56=, 0
	i64.const	$push55=, 0
	i64.const	$push54=, 100
	i64.const	$push53=, 0
	call    	__umodti3@FUNCTION, $0, $pop56, $pop55, $pop54, $pop53
	i64.load	$push42=, 0($0)
	i64.load	$push41=, 8($0)
	i64.or  	$push43=, $pop42, $pop41
	i64.eqz 	$push44=, $pop43
	i32.const	$push52=, .L.str.224
	call    	eosio_assert@FUNCTION, $pop44, $pop52
	i32.const	$push51=, 0
	i32.const	$push49=, 16
	i32.add 	$push50=, $0, $pop49
	i32.store	__stack_pointer($pop51), $pop50
	.endfunc
.Lfunc_end64:
	.size	_ZN22test_compiler_builtins12test_umodti3Ev, .Lfunc_end64-_ZN22test_compiler_builtins12test_umodti3Ev

	.hidden	_ZN22test_compiler_builtins17test_umodti3_by_0Ev
	.globl	_ZN22test_compiler_builtins17test_umodti3_by_0Ev
	.type	_ZN22test_compiler_builtins17test_umodti3_by_0Ev,@function
_ZN22test_compiler_builtins17test_umodti3_by_0Ev:
	.local  	i32
	i32.const	$push7=, 0
	i32.const	$push4=, 0
	i32.load	$push5=, __stack_pointer($pop4)
	i32.const	$push6=, 16
	i32.sub 	$push16=, $pop5, $pop6
	tee_local	$push15=, $0=, $pop16
	i32.store	__stack_pointer($pop7), $pop15
	i64.const	$push0=, 0
	i64.store	8($0), $pop0
	i64.const	$push14=, 0
	i64.store	0($0), $pop14
	i64.const	$push1=, 100
	i64.const	$push13=, 0
	i64.const	$push12=, 0
	i64.const	$push11=, 0
	call    	__umodti3@FUNCTION, $0, $pop1, $pop13, $pop12, $pop11
	i32.const	$push3=, 0
	i32.const	$push2=, .L.str.225
	call    	eosio_assert@FUNCTION, $pop3, $pop2
	i32.const	$push10=, 0
	i32.const	$push8=, 16
	i32.add 	$push9=, $0, $pop8
	i32.store	__stack_pointer($pop10), $pop9
	.endfunc
.Lfunc_end65:
	.size	_ZN22test_compiler_builtins17test_umodti3_by_0Ev, .Lfunc_end65-_ZN22test_compiler_builtins17test_umodti3_by_0Ev

	.hidden	my_strlen
	.globl	my_strlen
	.type	my_strlen,@function
my_strlen:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32
	i32.const	$3=, -1
.LBB66_1:
	loop    	
	i32.add 	$2=, $0, $3
	i32.const	$push5=, 1
	i32.add 	$push4=, $3, $pop5
	tee_local	$push3=, $1=, $pop4
	copy_local	$3=, $pop3
	i32.const	$push2=, 1
	i32.add 	$push0=, $2, $pop2
	i32.load8_u	$push1=, 0($pop0)
	br_if   	0, $pop1
	end_loop
	copy_local	$push6=, $1
	.endfunc
.Lfunc_end66:
	.size	my_strlen, .Lfunc_end66-my_strlen

	.hidden	my_memcmp
	.globl	my_memcmp
	.type	my_memcmp,@function
my_memcmp:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32
	block   	
	block   	
	i32.eqz 	$push12=, $2
	br_if   	0, $pop12
	i32.const	$3=, 0
.LBB67_2:
	loop    	
	i32.add 	$push2=, $0, $3
	i32.load8_u	$push3=, 0($pop2)
	i32.add 	$push0=, $1, $3
	i32.load8_u	$push1=, 0($pop0)
	i32.ne  	$push4=, $pop3, $pop1
	br_if   	2, $pop4
	i32.const	$push10=, 1
	i32.add 	$push9=, $3, $pop10
	tee_local	$push8=, $3=, $pop9
	i32.lt_u	$push5=, $pop8, $2
	br_if   	0, $pop5
	end_loop
	i32.const	$push6=, 1
	return  	$pop6
.LBB67_5:
	end_block
	i32.const	$push7=, 1
	return  	$pop7
.LBB67_6:
	end_block
	i32.const	$push11=, 0
	.endfunc
.Lfunc_end67:
	.size	my_memcmp, .Lfunc_end67-my_memcmp

	.hidden	_ZN11test_crypto28test_recover_key_assert_trueEv
	.globl	_ZN11test_crypto28test_recover_key_assert_trueEv
	.type	_ZN11test_crypto28test_recover_key_assert_trueEv,@function
_ZN11test_crypto28test_recover_key_assert_trueEv:
	.local  	i32
	i32.const	$push9=, 0
	i32.const	$push6=, 0
	i32.load	$push7=, __stack_pointer($pop6)
	i32.const	$push8=, 144
	i32.sub 	$push15=, $pop7, $pop8
	tee_local	$push14=, $0=, $pop15
	i32.store	__stack_pointer($pop9), $pop14
	i32.const	$push0=, 144
	i32.call	$drop=, read_action_data@FUNCTION, $0, $pop0
	i32.const	$push3=, 66
	i32.add 	$push4=, $0, $pop3
	i32.const	$push13=, 66
	i32.const	$push1=, 32
	i32.add 	$push2=, $0, $pop1
	i32.const	$push5=, 34
	call    	assert_recover_key@FUNCTION, $0, $pop4, $pop13, $pop2, $pop5
	i32.const	$push12=, 0
	i32.const	$push10=, 144
	i32.add 	$push11=, $0, $pop10
	i32.store	__stack_pointer($pop12), $pop11
	.endfunc
.Lfunc_end68:
	.size	_ZN11test_crypto28test_recover_key_assert_trueEv, .Lfunc_end68-_ZN11test_crypto28test_recover_key_assert_trueEv

	.hidden	_ZN11test_crypto29test_recover_key_assert_falseEv
	.globl	_ZN11test_crypto29test_recover_key_assert_falseEv
	.type	_ZN11test_crypto29test_recover_key_assert_falseEv,@function
_ZN11test_crypto29test_recover_key_assert_falseEv:
	.local  	i32
	i32.const	$push11=, 0
	i32.const	$push8=, 0
	i32.load	$push9=, __stack_pointer($pop8)
	i32.const	$push10=, 144
	i32.sub 	$push17=, $pop9, $pop10
	tee_local	$push16=, $0=, $pop17
	i32.store	__stack_pointer($pop11), $pop16
	i32.const	$push0=, 144
	i32.call	$drop=, read_action_data@FUNCTION, $0, $pop0
	i32.const	$push3=, 66
	i32.add 	$push4=, $0, $pop3
	i32.const	$push15=, 66
	i32.const	$push1=, 32
	i32.add 	$push2=, $0, $pop1
	i32.const	$push5=, 34
	call    	assert_recover_key@FUNCTION, $0, $pop4, $pop15, $pop2, $pop5
	i32.const	$push7=, 0
	i32.const	$push6=, .L.str.225
	call    	eosio_assert@FUNCTION, $pop7, $pop6
	i32.const	$push14=, 0
	i32.const	$push12=, 144
	i32.add 	$push13=, $0, $pop12
	i32.store	__stack_pointer($pop14), $pop13
	.endfunc
.Lfunc_end69:
	.size	_ZN11test_crypto29test_recover_key_assert_falseEv, .Lfunc_end69-_ZN11test_crypto29test_recover_key_assert_falseEv

	.hidden	_ZN11test_crypto16test_recover_keyEv
	.globl	_ZN11test_crypto16test_recover_keyEv
	.type	_ZN11test_crypto16test_recover_keyEv,@function
_ZN11test_crypto16test_recover_keyEv:
	.local  	i32, i32, i32
	i32.const	$push13=, 0
	i32.const	$push10=, 0
	i32.load	$push11=, __stack_pointer($pop10)
	i32.const	$push12=, 192
	i32.sub 	$push30=, $pop11, $pop12
	tee_local	$push29=, $2=, $pop30
	i32.store	__stack_pointer($pop13), $pop29
	i32.const	$push17=, 48
	i32.add 	$push18=, $2, $pop17
	i32.const	$push0=, 144
	i32.call	$drop=, read_action_data@FUNCTION, $pop18, $pop0
	i32.const	$push21=, 48
	i32.add 	$push22=, $2, $pop21
	i32.const	$push19=, 48
	i32.add 	$push20=, $2, $pop19
	i32.const	$push1=, 66
	i32.add 	$push2=, $pop20, $pop1
	i32.const	$push28=, 66
	i32.const	$push23=, 8
	i32.add 	$push24=, $2, $pop23
	i32.const	$push27=, 34
	i32.call	$drop=, recover_key@FUNCTION, $pop22, $pop2, $pop28, $pop24, $pop27
	i32.const	$push3=, 80
	i32.add 	$0=, $2, $pop3
	i32.const	$1=, 0
.LBB70_1:
	loop    	
	block   	
	i32.const	$push25=, 8
	i32.add 	$push26=, $2, $pop25
	i32.add 	$push6=, $pop26, $1
	i32.load8_u	$push7=, 0($pop6)
	i32.add 	$push4=, $0, $1
	i32.load8_u	$push5=, 0($pop4)
	i32.eq  	$push8=, $pop7, $pop5
	br_if   	0, $pop8
	i32.const	$push32=, 0
	i32.const	$push31=, .L.str.226
	call    	eosio_assert@FUNCTION, $pop32, $pop31
.LBB70_3:
	end_block
	i32.const	$push36=, 1
	i32.add 	$push35=, $1, $pop36
	tee_local	$push34=, $1=, $pop35
	i32.const	$push33=, 34
	i32.ne  	$push9=, $pop34, $pop33
	br_if   	0, $pop9
	end_loop
	i32.const	$push16=, 0
	i32.const	$push14=, 192
	i32.add 	$push15=, $2, $pop14
	i32.store	__stack_pointer($pop16), $pop15
	.endfunc
.Lfunc_end70:
	.size	_ZN11test_crypto16test_recover_keyEv, .Lfunc_end70-_ZN11test_crypto16test_recover_keyEv

	.hidden	_ZN11test_crypto9test_sha1Ev
	.globl	_ZN11test_crypto9test_sha1Ev
	.type	_ZN11test_crypto9test_sha1Ev,@function
_ZN11test_crypto9test_sha1Ev:
	.local  	i32, i32, i32
	i32.const	$push39=, 0
	i32.const	$push36=, 0
	i32.load	$push37=, __stack_pointer($pop36)
	i32.const	$push38=, 32
	i32.sub 	$push44=, $pop37, $pop38
	tee_local	$push43=, $2=, $pop44
	i32.store	__stack_pointer($pop39), $pop43
	i32.const	$push1=, .L.str.301
	i32.const	$push0=, 3
	call    	sha1@FUNCTION, $pop1, $pop0, $2
	i32.const	$1=, 0
	i32.const	$0=, 0
.LBB71_1:
	block   	
	loop    	
	i32.const	$push45=, _ZL10test1_ok_1
	i32.add 	$push2=, $0, $pop45
	i32.load8_u	$push3=, 0($pop2)
	i32.add 	$push4=, $2, $0
	i32.load8_u	$push5=, 0($pop4)
	i32.ne  	$push6=, $pop3, $pop5
	br_if   	1, $pop6
	i32.const	$push49=, 1
	i32.add 	$push48=, $0, $pop49
	tee_local	$push47=, $0=, $pop48
	i32.const	$push46=, 31
	i32.le_u	$push7=, $pop47, $pop46
	br_if   	0, $pop7
	end_loop
	i32.const	$1=, 1
.LBB71_4:
	end_block
	i32.const	$push8=, .L.str.227
	call    	eosio_assert@FUNCTION, $1, $pop8
	i32.const	$push10=, _ZL5test3
	i32.const	$push9=, 56
	call    	sha1@FUNCTION, $pop10, $pop9, $2
	i32.const	$1=, 0
	i32.const	$0=, 0
.LBB71_5:
	block   	
	loop    	
	i32.const	$push50=, _ZL10test3_ok_1
	i32.add 	$push11=, $0, $pop50
	i32.load8_u	$push12=, 0($pop11)
	i32.add 	$push13=, $2, $0
	i32.load8_u	$push14=, 0($pop13)
	i32.ne  	$push15=, $pop12, $pop14
	br_if   	1, $pop15
	i32.const	$push54=, 1
	i32.add 	$push53=, $0, $pop54
	tee_local	$push52=, $0=, $pop53
	i32.const	$push51=, 31
	i32.le_u	$push16=, $pop52, $pop51
	br_if   	0, $pop16
	end_loop
	i32.const	$1=, 1
.LBB71_8:
	end_block
	i32.const	$push17=, .L.str.228
	call    	eosio_assert@FUNCTION, $1, $pop17
	i32.const	$push19=, _ZL5test4
	i32.const	$push18=, 112
	call    	sha1@FUNCTION, $pop19, $pop18, $2
	i32.const	$1=, 0
	i32.const	$0=, 0
.LBB71_9:
	block   	
	loop    	
	i32.const	$push55=, _ZL10test4_ok_1
	i32.add 	$push20=, $0, $pop55
	i32.load8_u	$push21=, 0($pop20)
	i32.add 	$push22=, $2, $0
	i32.load8_u	$push23=, 0($pop22)
	i32.ne  	$push24=, $pop21, $pop23
	br_if   	1, $pop24
	i32.const	$push59=, 1
	i32.add 	$push58=, $0, $pop59
	tee_local	$push57=, $0=, $pop58
	i32.const	$push56=, 31
	i32.le_u	$push25=, $pop57, $pop56
	br_if   	0, $pop25
	end_loop
	i32.const	$1=, 1
.LBB71_12:
	end_block
	i32.const	$push26=, .L.str.229
	call    	eosio_assert@FUNCTION, $1, $pop26
	i32.const	$push28=, _ZL5test5
	i32.const	$push27=, 14
	call    	sha1@FUNCTION, $pop28, $pop27, $2
	i32.const	$1=, 0
	i32.const	$0=, 0
.LBB71_13:
	block   	
	loop    	
	i32.const	$push60=, _ZL10test5_ok_1
	i32.add 	$push29=, $0, $pop60
	i32.load8_u	$push30=, 0($pop29)
	i32.add 	$push31=, $2, $0
	i32.load8_u	$push32=, 0($pop31)
	i32.ne  	$push33=, $pop30, $pop32
	br_if   	1, $pop33
	i32.const	$push64=, 1
	i32.add 	$push63=, $0, $pop64
	tee_local	$push62=, $0=, $pop63
	i32.const	$push61=, 31
	i32.le_u	$push34=, $pop62, $pop61
	br_if   	0, $pop34
	end_loop
	i32.const	$1=, 1
.LBB71_16:
	end_block
	i32.const	$push35=, .L.str.230
	call    	eosio_assert@FUNCTION, $1, $pop35
	i32.const	$push42=, 0
	i32.const	$push40=, 32
	i32.add 	$push41=, $2, $pop40
	i32.store	__stack_pointer($pop42), $pop41
	.endfunc
.Lfunc_end71:
	.size	_ZN11test_crypto9test_sha1Ev, .Lfunc_end71-_ZN11test_crypto9test_sha1Ev

	.hidden	_ZN11test_crypto11test_sha256Ev
	.globl	_ZN11test_crypto11test_sha256Ev
	.type	_ZN11test_crypto11test_sha256Ev,@function
_ZN11test_crypto11test_sha256Ev:
	.local  	i32, i32, i32
	i32.const	$push39=, 0
	i32.const	$push36=, 0
	i32.load	$push37=, __stack_pointer($pop36)
	i32.const	$push38=, 32
	i32.sub 	$push44=, $pop37, $pop38
	tee_local	$push43=, $2=, $pop44
	i32.store	__stack_pointer($pop39), $pop43
	i32.const	$push1=, .L.str.301
	i32.const	$push0=, 3
	call    	sha256@FUNCTION, $pop1, $pop0, $2
	i32.const	$1=, 0
	i32.const	$0=, 0
.LBB72_1:
	block   	
	loop    	
	i32.const	$push45=, _ZL12test1_ok_256
	i32.add 	$push2=, $0, $pop45
	i32.load8_u	$push3=, 0($pop2)
	i32.add 	$push4=, $2, $0
	i32.load8_u	$push5=, 0($pop4)
	i32.ne  	$push6=, $pop3, $pop5
	br_if   	1, $pop6
	i32.const	$push49=, 1
	i32.add 	$push48=, $0, $pop49
	tee_local	$push47=, $0=, $pop48
	i32.const	$push46=, 31
	i32.le_u	$push7=, $pop47, $pop46
	br_if   	0, $pop7
	end_loop
	i32.const	$1=, 1
.LBB72_4:
	end_block
	i32.const	$push8=, .L.str.231
	call    	eosio_assert@FUNCTION, $1, $pop8
	i32.const	$push10=, _ZL5test3
	i32.const	$push9=, 56
	call    	sha256@FUNCTION, $pop10, $pop9, $2
	i32.const	$1=, 0
	i32.const	$0=, 0
.LBB72_5:
	block   	
	loop    	
	i32.const	$push50=, _ZL12test3_ok_256
	i32.add 	$push11=, $0, $pop50
	i32.load8_u	$push12=, 0($pop11)
	i32.add 	$push13=, $2, $0
	i32.load8_u	$push14=, 0($pop13)
	i32.ne  	$push15=, $pop12, $pop14
	br_if   	1, $pop15
	i32.const	$push54=, 1
	i32.add 	$push53=, $0, $pop54
	tee_local	$push52=, $0=, $pop53
	i32.const	$push51=, 31
	i32.le_u	$push16=, $pop52, $pop51
	br_if   	0, $pop16
	end_loop
	i32.const	$1=, 1
.LBB72_8:
	end_block
	i32.const	$push17=, .L.str.232
	call    	eosio_assert@FUNCTION, $1, $pop17
	i32.const	$push19=, _ZL5test4
	i32.const	$push18=, 112
	call    	sha256@FUNCTION, $pop19, $pop18, $2
	i32.const	$1=, 0
	i32.const	$0=, 0
.LBB72_9:
	block   	
	loop    	
	i32.const	$push55=, _ZL12test4_ok_256
	i32.add 	$push20=, $0, $pop55
	i32.load8_u	$push21=, 0($pop20)
	i32.add 	$push22=, $2, $0
	i32.load8_u	$push23=, 0($pop22)
	i32.ne  	$push24=, $pop21, $pop23
	br_if   	1, $pop24
	i32.const	$push59=, 1
	i32.add 	$push58=, $0, $pop59
	tee_local	$push57=, $0=, $pop58
	i32.const	$push56=, 31
	i32.le_u	$push25=, $pop57, $pop56
	br_if   	0, $pop25
	end_loop
	i32.const	$1=, 1
.LBB72_12:
	end_block
	i32.const	$push26=, .L.str.233
	call    	eosio_assert@FUNCTION, $1, $pop26
	i32.const	$push28=, _ZL5test5
	i32.const	$push27=, 14
	call    	sha256@FUNCTION, $pop28, $pop27, $2
	i32.const	$1=, 0
	i32.const	$0=, 0
.LBB72_13:
	block   	
	loop    	
	i32.const	$push60=, _ZL12test5_ok_256
	i32.add 	$push29=, $0, $pop60
	i32.load8_u	$push30=, 0($pop29)
	i32.add 	$push31=, $2, $0
	i32.load8_u	$push32=, 0($pop31)
	i32.ne  	$push33=, $pop30, $pop32
	br_if   	1, $pop33
	i32.const	$push64=, 1
	i32.add 	$push63=, $0, $pop64
	tee_local	$push62=, $0=, $pop63
	i32.const	$push61=, 31
	i32.le_u	$push34=, $pop62, $pop61
	br_if   	0, $pop34
	end_loop
	i32.const	$1=, 1
.LBB72_16:
	end_block
	i32.const	$push35=, .L.str.234
	call    	eosio_assert@FUNCTION, $1, $pop35
	i32.const	$push42=, 0
	i32.const	$push40=, 32
	i32.add 	$push41=, $2, $pop40
	i32.store	__stack_pointer($pop42), $pop41
	.endfunc
.Lfunc_end72:
	.size	_ZN11test_crypto11test_sha256Ev, .Lfunc_end72-_ZN11test_crypto11test_sha256Ev

	.hidden	_ZN11test_crypto11test_sha512Ev
	.globl	_ZN11test_crypto11test_sha512Ev
	.type	_ZN11test_crypto11test_sha512Ev,@function
_ZN11test_crypto11test_sha512Ev:
	.local  	i32, i32, i32
	i32.const	$push39=, 0
	i32.const	$push36=, 0
	i32.load	$push37=, __stack_pointer($pop36)
	i32.const	$push38=, 64
	i32.sub 	$push44=, $pop37, $pop38
	tee_local	$push43=, $2=, $pop44
	i32.store	__stack_pointer($pop39), $pop43
	i32.const	$push1=, .L.str.301
	i32.const	$push0=, 3
	call    	sha512@FUNCTION, $pop1, $pop0, $2
	i32.const	$1=, 0
	i32.const	$0=, 0
.LBB73_1:
	block   	
	loop    	
	i32.const	$push45=, _ZL12test1_ok_512
	i32.add 	$push2=, $0, $pop45
	i32.load8_u	$push3=, 0($pop2)
	i32.add 	$push4=, $2, $0
	i32.load8_u	$push5=, 0($pop4)
	i32.ne  	$push6=, $pop3, $pop5
	br_if   	1, $pop6
	i32.const	$push49=, 1
	i32.add 	$push48=, $0, $pop49
	tee_local	$push47=, $0=, $pop48
	i32.const	$push46=, 63
	i32.le_u	$push7=, $pop47, $pop46
	br_if   	0, $pop7
	end_loop
	i32.const	$1=, 1
.LBB73_4:
	end_block
	i32.const	$push8=, .L.str.235
	call    	eosio_assert@FUNCTION, $1, $pop8
	i32.const	$push10=, _ZL5test3
	i32.const	$push9=, 56
	call    	sha512@FUNCTION, $pop10, $pop9, $2
	i32.const	$1=, 0
	i32.const	$0=, 0
.LBB73_5:
	block   	
	loop    	
	i32.const	$push50=, _ZL12test3_ok_512
	i32.add 	$push11=, $0, $pop50
	i32.load8_u	$push12=, 0($pop11)
	i32.add 	$push13=, $2, $0
	i32.load8_u	$push14=, 0($pop13)
	i32.ne  	$push15=, $pop12, $pop14
	br_if   	1, $pop15
	i32.const	$push54=, 1
	i32.add 	$push53=, $0, $pop54
	tee_local	$push52=, $0=, $pop53
	i32.const	$push51=, 63
	i32.le_u	$push16=, $pop52, $pop51
	br_if   	0, $pop16
	end_loop
	i32.const	$1=, 1
.LBB73_8:
	end_block
	i32.const	$push17=, .L.str.236
	call    	eosio_assert@FUNCTION, $1, $pop17
	i32.const	$push19=, _ZL5test4
	i32.const	$push18=, 112
	call    	sha512@FUNCTION, $pop19, $pop18, $2
	i32.const	$1=, 0
	i32.const	$0=, 0
.LBB73_9:
	block   	
	loop    	
	i32.const	$push55=, _ZL12test4_ok_512
	i32.add 	$push20=, $0, $pop55
	i32.load8_u	$push21=, 0($pop20)
	i32.add 	$push22=, $2, $0
	i32.load8_u	$push23=, 0($pop22)
	i32.ne  	$push24=, $pop21, $pop23
	br_if   	1, $pop24
	i32.const	$push59=, 1
	i32.add 	$push58=, $0, $pop59
	tee_local	$push57=, $0=, $pop58
	i32.const	$push56=, 63
	i32.le_u	$push25=, $pop57, $pop56
	br_if   	0, $pop25
	end_loop
	i32.const	$1=, 1
.LBB73_12:
	end_block
	i32.const	$push26=, .L.str.237
	call    	eosio_assert@FUNCTION, $1, $pop26
	i32.const	$push28=, _ZL5test5
	i32.const	$push27=, 14
	call    	sha512@FUNCTION, $pop28, $pop27, $2
	i32.const	$1=, 0
	i32.const	$0=, 0
.LBB73_13:
	block   	
	loop    	
	i32.const	$push60=, _ZL12test5_ok_512
	i32.add 	$push29=, $0, $pop60
	i32.load8_u	$push30=, 0($pop29)
	i32.add 	$push31=, $2, $0
	i32.load8_u	$push32=, 0($pop31)
	i32.ne  	$push33=, $pop30, $pop32
	br_if   	1, $pop33
	i32.const	$push64=, 1
	i32.add 	$push63=, $0, $pop64
	tee_local	$push62=, $0=, $pop63
	i32.const	$push61=, 63
	i32.le_u	$push34=, $pop62, $pop61
	br_if   	0, $pop34
	end_loop
	i32.const	$1=, 1
.LBB73_16:
	end_block
	i32.const	$push35=, .L.str.238
	call    	eosio_assert@FUNCTION, $1, $pop35
	i32.const	$push42=, 0
	i32.const	$push40=, 64
	i32.add 	$push41=, $2, $pop40
	i32.store	__stack_pointer($pop42), $pop41
	.endfunc
.Lfunc_end73:
	.size	_ZN11test_crypto11test_sha512Ev, .Lfunc_end73-_ZN11test_crypto11test_sha512Ev

	.hidden	_ZN11test_crypto14test_ripemd160Ev
	.globl	_ZN11test_crypto14test_ripemd160Ev
	.type	_ZN11test_crypto14test_ripemd160Ev,@function
_ZN11test_crypto14test_ripemd160Ev:
	.local  	i32, i32, i32
	i32.const	$push39=, 0
	i32.const	$push36=, 0
	i32.load	$push37=, __stack_pointer($pop36)
	i32.const	$push38=, 32
	i32.sub 	$push44=, $pop37, $pop38
	tee_local	$push43=, $2=, $pop44
	i32.store	__stack_pointer($pop39), $pop43
	i32.const	$push1=, .L.str.301
	i32.const	$push0=, 3
	call    	ripemd160@FUNCTION, $pop1, $pop0, $2
	i32.const	$1=, 0
	i32.const	$0=, 0
.LBB74_1:
	block   	
	loop    	
	i32.const	$push45=, _ZL13test1_ok_ripe
	i32.add 	$push2=, $0, $pop45
	i32.load8_u	$push3=, 0($pop2)
	i32.add 	$push4=, $2, $0
	i32.load8_u	$push5=, 0($pop4)
	i32.ne  	$push6=, $pop3, $pop5
	br_if   	1, $pop6
	i32.const	$push49=, 1
	i32.add 	$push48=, $0, $pop49
	tee_local	$push47=, $0=, $pop48
	i32.const	$push46=, 31
	i32.le_u	$push7=, $pop47, $pop46
	br_if   	0, $pop7
	end_loop
	i32.const	$1=, 1
.LBB74_4:
	end_block
	i32.const	$push8=, .L.str.239
	call    	eosio_assert@FUNCTION, $1, $pop8
	i32.const	$push10=, _ZL5test3
	i32.const	$push9=, 56
	call    	ripemd160@FUNCTION, $pop10, $pop9, $2
	i32.const	$1=, 0
	i32.const	$0=, 0
.LBB74_5:
	block   	
	loop    	
	i32.const	$push50=, _ZL13test3_ok_ripe
	i32.add 	$push11=, $0, $pop50
	i32.load8_u	$push12=, 0($pop11)
	i32.add 	$push13=, $2, $0
	i32.load8_u	$push14=, 0($pop13)
	i32.ne  	$push15=, $pop12, $pop14
	br_if   	1, $pop15
	i32.const	$push54=, 1
	i32.add 	$push53=, $0, $pop54
	tee_local	$push52=, $0=, $pop53
	i32.const	$push51=, 31
	i32.le_u	$push16=, $pop52, $pop51
	br_if   	0, $pop16
	end_loop
	i32.const	$1=, 1
.LBB74_8:
	end_block
	i32.const	$push17=, .L.str.240
	call    	eosio_assert@FUNCTION, $1, $pop17
	i32.const	$push19=, _ZL5test4
	i32.const	$push18=, 112
	call    	ripemd160@FUNCTION, $pop19, $pop18, $2
	i32.const	$1=, 0
	i32.const	$0=, 0
.LBB74_9:
	block   	
	loop    	
	i32.const	$push55=, _ZL13test4_ok_ripe
	i32.add 	$push20=, $0, $pop55
	i32.load8_u	$push21=, 0($pop20)
	i32.add 	$push22=, $2, $0
	i32.load8_u	$push23=, 0($pop22)
	i32.ne  	$push24=, $pop21, $pop23
	br_if   	1, $pop24
	i32.const	$push59=, 1
	i32.add 	$push58=, $0, $pop59
	tee_local	$push57=, $0=, $pop58
	i32.const	$push56=, 31
	i32.le_u	$push25=, $pop57, $pop56
	br_if   	0, $pop25
	end_loop
	i32.const	$1=, 1
.LBB74_12:
	end_block
	i32.const	$push26=, .L.str.241
	call    	eosio_assert@FUNCTION, $1, $pop26
	i32.const	$push28=, _ZL5test5
	i32.const	$push27=, 14
	call    	ripemd160@FUNCTION, $pop28, $pop27, $2
	i32.const	$1=, 0
	i32.const	$0=, 0
.LBB74_13:
	block   	
	loop    	
	i32.const	$push60=, _ZL13test5_ok_ripe
	i32.add 	$push29=, $0, $pop60
	i32.load8_u	$push30=, 0($pop29)
	i32.add 	$push31=, $2, $0
	i32.load8_u	$push32=, 0($pop31)
	i32.ne  	$push33=, $pop30, $pop32
	br_if   	1, $pop33
	i32.const	$push64=, 1
	i32.add 	$push63=, $0, $pop64
	tee_local	$push62=, $0=, $pop63
	i32.const	$push61=, 31
	i32.le_u	$push34=, $pop62, $pop61
	br_if   	0, $pop34
	end_loop
	i32.const	$1=, 1
.LBB74_16:
	end_block
	i32.const	$push35=, .L.str.242
	call    	eosio_assert@FUNCTION, $1, $pop35
	i32.const	$push42=, 0
	i32.const	$push40=, 32
	i32.add 	$push41=, $2, $pop40
	i32.store	__stack_pointer($pop42), $pop41
	.endfunc
.Lfunc_end74:
	.size	_ZN11test_crypto14test_ripemd160Ev, .Lfunc_end74-_ZN11test_crypto14test_ripemd160Ev

	.hidden	_ZN11test_crypto11sha256_nullEv
	.globl	_ZN11test_crypto11sha256_nullEv
	.type	_ZN11test_crypto11sha256_nullEv,@function
_ZN11test_crypto11sha256_nullEv:
	.local  	i32
	i32.const	$push5=, 0
	i32.const	$push2=, 0
	i32.load	$push3=, __stack_pointer($pop2)
	i32.const	$push4=, 32
	i32.sub 	$push10=, $pop3, $pop4
	tee_local	$push9=, $0=, $pop10
	i32.store	__stack_pointer($pop5), $pop9
	i32.const	$push1=, 0
	i32.const	$push0=, 100
	call    	sha256@FUNCTION, $pop1, $pop0, $0
	i32.const	$push8=, 0
	i32.const	$push6=, 32
	i32.add 	$push7=, $0, $pop6
	i32.store	__stack_pointer($pop8), $pop7
	.endfunc
.Lfunc_end75:
	.size	_ZN11test_crypto11sha256_nullEv, .Lfunc_end75-_ZN11test_crypto11sha256_nullEv

	.hidden	_ZN11test_crypto12sha1_no_dataEv
	.globl	_ZN11test_crypto12sha1_no_dataEv
	.type	_ZN11test_crypto12sha1_no_dataEv,@function
_ZN11test_crypto12sha1_no_dataEv:
	.local  	i32, i32, i32
	i32.const	$push11=, 0
	i32.const	$push8=, 0
	i32.load	$push9=, __stack_pointer($pop8)
	i32.const	$push10=, 32
	i32.sub 	$push17=, $pop9, $pop10
	tee_local	$push16=, $2=, $pop17
	i32.store	__stack_pointer($pop11), $pop16
	i32.const	$1=, 0
	i32.const	$push0=, _ZL5test2
	i32.const	$push15=, 0
	call    	sha1@FUNCTION, $pop0, $pop15, $2
	i32.const	$0=, 0
.LBB76_1:
	block   	
	loop    	
	i32.const	$push18=, _ZL10test2_ok_1
	i32.add 	$push1=, $0, $pop18
	i32.load8_u	$push2=, 0($pop1)
	i32.add 	$push3=, $2, $0
	i32.load8_u	$push4=, 0($pop3)
	i32.ne  	$push5=, $pop2, $pop4
	br_if   	1, $pop5
	i32.const	$push22=, 1
	i32.add 	$push21=, $0, $pop22
	tee_local	$push20=, $0=, $pop21
	i32.const	$push19=, 31
	i32.le_u	$push6=, $pop20, $pop19
	br_if   	0, $pop6
	end_loop
	i32.const	$1=, 1
.LBB76_4:
	end_block
	i32.const	$push7=, .L.str.243
	call    	eosio_assert@FUNCTION, $1, $pop7
	i32.const	$push14=, 0
	i32.const	$push12=, 32
	i32.add 	$push13=, $2, $pop12
	i32.store	__stack_pointer($pop14), $pop13
	.endfunc
.Lfunc_end76:
	.size	_ZN11test_crypto12sha1_no_dataEv, .Lfunc_end76-_ZN11test_crypto12sha1_no_dataEv

	.hidden	_ZN11test_crypto14sha256_no_dataEv
	.globl	_ZN11test_crypto14sha256_no_dataEv
	.type	_ZN11test_crypto14sha256_no_dataEv,@function
_ZN11test_crypto14sha256_no_dataEv:
	.local  	i32, i32, i32
	i32.const	$push11=, 0
	i32.const	$push8=, 0
	i32.load	$push9=, __stack_pointer($pop8)
	i32.const	$push10=, 32
	i32.sub 	$push17=, $pop9, $pop10
	tee_local	$push16=, $2=, $pop17
	i32.store	__stack_pointer($pop11), $pop16
	i32.const	$1=, 0
	i32.const	$push0=, _ZL5test2
	i32.const	$push15=, 0
	call    	sha256@FUNCTION, $pop0, $pop15, $2
	i32.const	$0=, 0
.LBB77_1:
	block   	
	loop    	
	i32.const	$push18=, _ZL12test2_ok_256
	i32.add 	$push1=, $0, $pop18
	i32.load8_u	$push2=, 0($pop1)
	i32.add 	$push3=, $2, $0
	i32.load8_u	$push4=, 0($pop3)
	i32.ne  	$push5=, $pop2, $pop4
	br_if   	1, $pop5
	i32.const	$push22=, 1
	i32.add 	$push21=, $0, $pop22
	tee_local	$push20=, $0=, $pop21
	i32.const	$push19=, 31
	i32.le_u	$push6=, $pop20, $pop19
	br_if   	0, $pop6
	end_loop
	i32.const	$1=, 1
.LBB77_4:
	end_block
	i32.const	$push7=, .L.str.244
	call    	eosio_assert@FUNCTION, $1, $pop7
	i32.const	$push14=, 0
	i32.const	$push12=, 32
	i32.add 	$push13=, $2, $pop12
	i32.store	__stack_pointer($pop14), $pop13
	.endfunc
.Lfunc_end77:
	.size	_ZN11test_crypto14sha256_no_dataEv, .Lfunc_end77-_ZN11test_crypto14sha256_no_dataEv

	.hidden	_ZN11test_crypto14sha512_no_dataEv
	.globl	_ZN11test_crypto14sha512_no_dataEv
	.type	_ZN11test_crypto14sha512_no_dataEv,@function
_ZN11test_crypto14sha512_no_dataEv:
	.local  	i32, i32, i32
	i32.const	$push11=, 0
	i32.const	$push8=, 0
	i32.load	$push9=, __stack_pointer($pop8)
	i32.const	$push10=, 64
	i32.sub 	$push17=, $pop9, $pop10
	tee_local	$push16=, $2=, $pop17
	i32.store	__stack_pointer($pop11), $pop16
	i32.const	$1=, 0
	i32.const	$push0=, _ZL5test2
	i32.const	$push15=, 0
	call    	sha512@FUNCTION, $pop0, $pop15, $2
	i32.const	$0=, 0
.LBB78_1:
	block   	
	loop    	
	i32.const	$push18=, _ZL12test2_ok_512
	i32.add 	$push1=, $0, $pop18
	i32.load8_u	$push2=, 0($pop1)
	i32.add 	$push3=, $2, $0
	i32.load8_u	$push4=, 0($pop3)
	i32.ne  	$push5=, $pop2, $pop4
	br_if   	1, $pop5
	i32.const	$push22=, 1
	i32.add 	$push21=, $0, $pop22
	tee_local	$push20=, $0=, $pop21
	i32.const	$push19=, 63
	i32.le_u	$push6=, $pop20, $pop19
	br_if   	0, $pop6
	end_loop
	i32.const	$1=, 1
.LBB78_4:
	end_block
	i32.const	$push7=, .L.str.245
	call    	eosio_assert@FUNCTION, $1, $pop7
	i32.const	$push14=, 0
	i32.const	$push12=, 64
	i32.add 	$push13=, $2, $pop12
	i32.store	__stack_pointer($pop14), $pop13
	.endfunc
.Lfunc_end78:
	.size	_ZN11test_crypto14sha512_no_dataEv, .Lfunc_end78-_ZN11test_crypto14sha512_no_dataEv

	.hidden	_ZN11test_crypto17ripemd160_no_dataEv
	.globl	_ZN11test_crypto17ripemd160_no_dataEv
	.type	_ZN11test_crypto17ripemd160_no_dataEv,@function
_ZN11test_crypto17ripemd160_no_dataEv:
	.local  	i32, i32, i32
	i32.const	$push11=, 0
	i32.const	$push8=, 0
	i32.load	$push9=, __stack_pointer($pop8)
	i32.const	$push10=, 32
	i32.sub 	$push17=, $pop9, $pop10
	tee_local	$push16=, $2=, $pop17
	i32.store	__stack_pointer($pop11), $pop16
	i32.const	$1=, 0
	i32.const	$push0=, _ZL5test2
	i32.const	$push15=, 0
	call    	ripemd160@FUNCTION, $pop0, $pop15, $2
	i32.const	$0=, 0
.LBB79_1:
	block   	
	loop    	
	i32.const	$push18=, _ZL13test2_ok_ripe
	i32.add 	$push1=, $0, $pop18
	i32.load8_u	$push2=, 0($pop1)
	i32.add 	$push3=, $2, $0
	i32.load8_u	$push4=, 0($pop3)
	i32.ne  	$push5=, $pop2, $pop4
	br_if   	1, $pop5
	i32.const	$push22=, 1
	i32.add 	$push21=, $0, $pop22
	tee_local	$push20=, $0=, $pop21
	i32.const	$push19=, 31
	i32.le_u	$push6=, $pop20, $pop19
	br_if   	0, $pop6
	end_loop
	i32.const	$1=, 1
.LBB79_4:
	end_block
	i32.const	$push7=, .L.str.246
	call    	eosio_assert@FUNCTION, $1, $pop7
	i32.const	$push14=, 0
	i32.const	$push12=, 32
	i32.add 	$push13=, $2, $pop12
	i32.store	__stack_pointer($pop14), $pop13
	.endfunc
.Lfunc_end79:
	.size	_ZN11test_crypto17ripemd160_no_dataEv, .Lfunc_end79-_ZN11test_crypto17ripemd160_no_dataEv

	.hidden	_ZN11test_crypto19assert_sha256_falseEv
	.globl	_ZN11test_crypto19assert_sha256_falseEv
	.type	_ZN11test_crypto19assert_sha256_falseEv,@function
_ZN11test_crypto19assert_sha256_falseEv:
	.local  	i32
	i32.const	$push10=, 0
	i32.const	$push7=, 0
	i32.load	$push8=, __stack_pointer($pop7)
	i32.const	$push9=, 32
	i32.sub 	$push17=, $pop8, $pop9
	tee_local	$push16=, $0=, $pop17
	i32.store	__stack_pointer($pop10), $pop16
	i32.const	$push1=, .L.str.301
	i32.const	$push0=, 3
	call    	sha256@FUNCTION, $pop1, $pop0, $0
	i32.load8_u	$push3=, 0($0)
	i32.const	$push2=, -1
	i32.xor 	$push4=, $pop3, $pop2
	i32.store8	0($0), $pop4
	i32.const	$push15=, .L.str.301
	i32.const	$push14=, 3
	call    	assert_sha256@FUNCTION, $pop15, $pop14, $0
	i32.const	$push6=, 0
	i32.const	$push5=, .L.str.247
	call    	eosio_assert@FUNCTION, $pop6, $pop5
	i32.const	$push13=, 0
	i32.const	$push11=, 32
	i32.add 	$push12=, $0, $pop11
	i32.store	__stack_pointer($pop13), $pop12
	.endfunc
.Lfunc_end80:
	.size	_ZN11test_crypto19assert_sha256_falseEv, .Lfunc_end80-_ZN11test_crypto19assert_sha256_falseEv

	.hidden	_ZN11test_crypto18assert_sha256_trueEv
	.globl	_ZN11test_crypto18assert_sha256_trueEv
	.type	_ZN11test_crypto18assert_sha256_trueEv,@function
_ZN11test_crypto18assert_sha256_trueEv:
	.local  	i32
	i32.const	$push11=, 0
	i32.const	$push8=, 0
	i32.load	$push9=, __stack_pointer($pop8)
	i32.const	$push10=, 32
	i32.sub 	$push24=, $pop9, $pop10
	tee_local	$push23=, $0=, $pop24
	i32.store	__stack_pointer($pop11), $pop23
	i32.const	$push1=, .L.str.301
	i32.const	$push0=, 3
	call    	sha256@FUNCTION, $pop1, $pop0, $0
	i32.const	$push22=, .L.str.301
	i32.const	$push21=, 3
	call    	assert_sha256@FUNCTION, $pop22, $pop21, $0
	i32.const	$push3=, _ZL5test3
	i32.const	$push2=, 56
	call    	sha256@FUNCTION, $pop3, $pop2, $0
	i32.const	$push20=, _ZL5test3
	i32.const	$push19=, 56
	call    	assert_sha256@FUNCTION, $pop20, $pop19, $0
	i32.const	$push5=, _ZL5test4
	i32.const	$push4=, 112
	call    	sha256@FUNCTION, $pop5, $pop4, $0
	i32.const	$push18=, _ZL5test4
	i32.const	$push17=, 112
	call    	assert_sha256@FUNCTION, $pop18, $pop17, $0
	i32.const	$push7=, _ZL5test5
	i32.const	$push6=, 14
	call    	sha256@FUNCTION, $pop7, $pop6, $0
	i32.const	$push16=, _ZL5test5
	i32.const	$push15=, 14
	call    	assert_sha256@FUNCTION, $pop16, $pop15, $0
	i32.const	$push14=, 0
	i32.const	$push12=, 32
	i32.add 	$push13=, $0, $pop12
	i32.store	__stack_pointer($pop14), $pop13
	.endfunc
.Lfunc_end81:
	.size	_ZN11test_crypto18assert_sha256_trueEv, .Lfunc_end81-_ZN11test_crypto18assert_sha256_trueEv

	.hidden	_ZN11test_crypto17assert_sha1_falseEv
	.globl	_ZN11test_crypto17assert_sha1_falseEv
	.type	_ZN11test_crypto17assert_sha1_falseEv,@function
_ZN11test_crypto17assert_sha1_falseEv:
	.local  	i32
	i32.const	$push10=, 0
	i32.const	$push7=, 0
	i32.load	$push8=, __stack_pointer($pop7)
	i32.const	$push9=, 32
	i32.sub 	$push17=, $pop8, $pop9
	tee_local	$push16=, $0=, $pop17
	i32.store	__stack_pointer($pop10), $pop16
	i32.const	$push1=, .L.str.301
	i32.const	$push0=, 3
	call    	sha1@FUNCTION, $pop1, $pop0, $0
	i32.load8_u	$push3=, 0($0)
	i32.const	$push2=, -1
	i32.xor 	$push4=, $pop3, $pop2
	i32.store8	0($0), $pop4
	i32.const	$push15=, .L.str.301
	i32.const	$push14=, 3
	call    	assert_sha1@FUNCTION, $pop15, $pop14, $0
	i32.const	$push6=, 0
	i32.const	$push5=, .L.str.247
	call    	eosio_assert@FUNCTION, $pop6, $pop5
	i32.const	$push13=, 0
	i32.const	$push11=, 32
	i32.add 	$push12=, $0, $pop11
	i32.store	__stack_pointer($pop13), $pop12
	.endfunc
.Lfunc_end82:
	.size	_ZN11test_crypto17assert_sha1_falseEv, .Lfunc_end82-_ZN11test_crypto17assert_sha1_falseEv

	.hidden	_ZN11test_crypto16assert_sha1_trueEv
	.globl	_ZN11test_crypto16assert_sha1_trueEv
	.type	_ZN11test_crypto16assert_sha1_trueEv,@function
_ZN11test_crypto16assert_sha1_trueEv:
	.local  	i32
	i32.const	$push11=, 0
	i32.const	$push8=, 0
	i32.load	$push9=, __stack_pointer($pop8)
	i32.const	$push10=, 32
	i32.sub 	$push24=, $pop9, $pop10
	tee_local	$push23=, $0=, $pop24
	i32.store	__stack_pointer($pop11), $pop23
	i32.const	$push1=, .L.str.301
	i32.const	$push0=, 3
	call    	sha1@FUNCTION, $pop1, $pop0, $0
	i32.const	$push22=, .L.str.301
	i32.const	$push21=, 3
	call    	assert_sha1@FUNCTION, $pop22, $pop21, $0
	i32.const	$push3=, _ZL5test3
	i32.const	$push2=, 56
	call    	sha1@FUNCTION, $pop3, $pop2, $0
	i32.const	$push20=, _ZL5test3
	i32.const	$push19=, 56
	call    	assert_sha1@FUNCTION, $pop20, $pop19, $0
	i32.const	$push5=, _ZL5test4
	i32.const	$push4=, 112
	call    	sha1@FUNCTION, $pop5, $pop4, $0
	i32.const	$push18=, _ZL5test4
	i32.const	$push17=, 112
	call    	assert_sha1@FUNCTION, $pop18, $pop17, $0
	i32.const	$push7=, _ZL5test5
	i32.const	$push6=, 14
	call    	sha1@FUNCTION, $pop7, $pop6, $0
	i32.const	$push16=, _ZL5test5
	i32.const	$push15=, 14
	call    	assert_sha1@FUNCTION, $pop16, $pop15, $0
	i32.const	$push14=, 0
	i32.const	$push12=, 32
	i32.add 	$push13=, $0, $pop12
	i32.store	__stack_pointer($pop14), $pop13
	.endfunc
.Lfunc_end83:
	.size	_ZN11test_crypto16assert_sha1_trueEv, .Lfunc_end83-_ZN11test_crypto16assert_sha1_trueEv

	.hidden	_ZN11test_crypto19assert_sha512_falseEv
	.globl	_ZN11test_crypto19assert_sha512_falseEv
	.type	_ZN11test_crypto19assert_sha512_falseEv,@function
_ZN11test_crypto19assert_sha512_falseEv:
	.local  	i32
	i32.const	$push10=, 0
	i32.const	$push7=, 0
	i32.load	$push8=, __stack_pointer($pop7)
	i32.const	$push9=, 64
	i32.sub 	$push17=, $pop8, $pop9
	tee_local	$push16=, $0=, $pop17
	i32.store	__stack_pointer($pop10), $pop16
	i32.const	$push1=, .L.str.301
	i32.const	$push0=, 3
	call    	sha512@FUNCTION, $pop1, $pop0, $0
	i32.load8_u	$push3=, 0($0)
	i32.const	$push2=, -1
	i32.xor 	$push4=, $pop3, $pop2
	i32.store8	0($0), $pop4
	i32.const	$push15=, .L.str.301
	i32.const	$push14=, 3
	call    	assert_sha512@FUNCTION, $pop15, $pop14, $0
	i32.const	$push6=, 0
	i32.const	$push5=, .L.str.247
	call    	eosio_assert@FUNCTION, $pop6, $pop5
	i32.const	$push13=, 0
	i32.const	$push11=, 64
	i32.add 	$push12=, $0, $pop11
	i32.store	__stack_pointer($pop13), $pop12
	.endfunc
.Lfunc_end84:
	.size	_ZN11test_crypto19assert_sha512_falseEv, .Lfunc_end84-_ZN11test_crypto19assert_sha512_falseEv

	.hidden	_ZN11test_crypto18assert_sha512_trueEv
	.globl	_ZN11test_crypto18assert_sha512_trueEv
	.type	_ZN11test_crypto18assert_sha512_trueEv,@function
_ZN11test_crypto18assert_sha512_trueEv:
	.local  	i32
	i32.const	$push11=, 0
	i32.const	$push8=, 0
	i32.load	$push9=, __stack_pointer($pop8)
	i32.const	$push10=, 64
	i32.sub 	$push24=, $pop9, $pop10
	tee_local	$push23=, $0=, $pop24
	i32.store	__stack_pointer($pop11), $pop23
	i32.const	$push1=, .L.str.301
	i32.const	$push0=, 3
	call    	sha512@FUNCTION, $pop1, $pop0, $0
	i32.const	$push22=, .L.str.301
	i32.const	$push21=, 3
	call    	assert_sha512@FUNCTION, $pop22, $pop21, $0
	i32.const	$push3=, _ZL5test3
	i32.const	$push2=, 56
	call    	sha512@FUNCTION, $pop3, $pop2, $0
	i32.const	$push20=, _ZL5test3
	i32.const	$push19=, 56
	call    	assert_sha512@FUNCTION, $pop20, $pop19, $0
	i32.const	$push5=, _ZL5test4
	i32.const	$push4=, 112
	call    	sha512@FUNCTION, $pop5, $pop4, $0
	i32.const	$push18=, _ZL5test4
	i32.const	$push17=, 112
	call    	assert_sha512@FUNCTION, $pop18, $pop17, $0
	i32.const	$push7=, _ZL5test5
	i32.const	$push6=, 14
	call    	sha512@FUNCTION, $pop7, $pop6, $0
	i32.const	$push16=, _ZL5test5
	i32.const	$push15=, 14
	call    	assert_sha512@FUNCTION, $pop16, $pop15, $0
	i32.const	$push14=, 0
	i32.const	$push12=, 64
	i32.add 	$push13=, $0, $pop12
	i32.store	__stack_pointer($pop14), $pop13
	.endfunc
.Lfunc_end85:
	.size	_ZN11test_crypto18assert_sha512_trueEv, .Lfunc_end85-_ZN11test_crypto18assert_sha512_trueEv

	.hidden	_ZN11test_crypto22assert_ripemd160_falseEv
	.globl	_ZN11test_crypto22assert_ripemd160_falseEv
	.type	_ZN11test_crypto22assert_ripemd160_falseEv,@function
_ZN11test_crypto22assert_ripemd160_falseEv:
	.local  	i32
	i32.const	$push10=, 0
	i32.const	$push7=, 0
	i32.load	$push8=, __stack_pointer($pop7)
	i32.const	$push9=, 32
	i32.sub 	$push17=, $pop8, $pop9
	tee_local	$push16=, $0=, $pop17
	i32.store	__stack_pointer($pop10), $pop16
	i32.const	$push1=, .L.str.301
	i32.const	$push0=, 3
	call    	ripemd160@FUNCTION, $pop1, $pop0, $0
	i32.load8_u	$push3=, 0($0)
	i32.const	$push2=, -1
	i32.xor 	$push4=, $pop3, $pop2
	i32.store8	0($0), $pop4
	i32.const	$push15=, .L.str.301
	i32.const	$push14=, 3
	call    	assert_ripemd160@FUNCTION, $pop15, $pop14, $0
	i32.const	$push6=, 0
	i32.const	$push5=, .L.str.247
	call    	eosio_assert@FUNCTION, $pop6, $pop5
	i32.const	$push13=, 0
	i32.const	$push11=, 32
	i32.add 	$push12=, $0, $pop11
	i32.store	__stack_pointer($pop13), $pop12
	.endfunc
.Lfunc_end86:
	.size	_ZN11test_crypto22assert_ripemd160_falseEv, .Lfunc_end86-_ZN11test_crypto22assert_ripemd160_falseEv

	.hidden	_ZN11test_crypto21assert_ripemd160_trueEv
	.globl	_ZN11test_crypto21assert_ripemd160_trueEv
	.type	_ZN11test_crypto21assert_ripemd160_trueEv,@function
_ZN11test_crypto21assert_ripemd160_trueEv:
	.local  	i32
	i32.const	$push11=, 0
	i32.const	$push8=, 0
	i32.load	$push9=, __stack_pointer($pop8)
	i32.const	$push10=, 32
	i32.sub 	$push24=, $pop9, $pop10
	tee_local	$push23=, $0=, $pop24
	i32.store	__stack_pointer($pop11), $pop23
	i32.const	$push1=, .L.str.301
	i32.const	$push0=, 3
	call    	ripemd160@FUNCTION, $pop1, $pop0, $0
	i32.const	$push22=, .L.str.301
	i32.const	$push21=, 3
	call    	assert_ripemd160@FUNCTION, $pop22, $pop21, $0
	i32.const	$push3=, _ZL5test3
	i32.const	$push2=, 56
	call    	ripemd160@FUNCTION, $pop3, $pop2, $0
	i32.const	$push20=, _ZL5test3
	i32.const	$push19=, 56
	call    	assert_ripemd160@FUNCTION, $pop20, $pop19, $0
	i32.const	$push5=, _ZL5test4
	i32.const	$push4=, 112
	call    	ripemd160@FUNCTION, $pop5, $pop4, $0
	i32.const	$push18=, _ZL5test4
	i32.const	$push17=, 112
	call    	assert_ripemd160@FUNCTION, $pop18, $pop17, $0
	i32.const	$push7=, _ZL5test5
	i32.const	$push6=, 14
	call    	ripemd160@FUNCTION, $pop7, $pop6, $0
	i32.const	$push16=, _ZL5test5
	i32.const	$push15=, 14
	call    	assert_ripemd160@FUNCTION, $pop16, $pop15, $0
	i32.const	$push14=, 0
	i32.const	$push12=, 32
	i32.add 	$push13=, $0, $pop12
	i32.store	__stack_pointer($pop14), $pop13
	.endfunc
.Lfunc_end87:
	.size	_ZN11test_crypto21assert_ripemd160_trueEv, .Lfunc_end87-_ZN11test_crypto21assert_ripemd160_trueEv

	.hidden	_ZN10test_chain16test_activeprodsEv
	.globl	_ZN10test_chain16test_activeprodsEv
	.type	_ZN10test_chain16test_activeprodsEv,@function
_ZN10test_chain16test_activeprodsEv:
	.local  	i32, i32
	i32.const	$push15=, 0
	i32.const	$push12=, 0
	i32.load	$push13=, __stack_pointer($pop12)
	i32.const	$push14=, 352
	i32.sub 	$push26=, $pop13, $pop14
	tee_local	$push25=, $1=, $pop26
	i32.store	__stack_pointer($pop15), $pop25
	i32.const	$push19=, 176
	i32.add 	$push20=, $1, $pop19
	i32.const	$push24=, 169
	i32.call	$drop=, read_action_data@FUNCTION, $pop20, $pop24
	i32.load8_u	$push1=, 176($1)
	i32.const	$push0=, 21
	i32.eq  	$push2=, $pop1, $pop0
	i32.const	$push3=, .L.str.248
	call    	eosio_assert@FUNCTION, $pop2, $pop3
	i32.const	$0=, 1
	i32.const	$push23=, 1
	i32.or  	$push4=, $1, $pop23
	i32.const	$push5=, 168
	i32.call	$drop=, get_active_producers@FUNCTION, $pop4, $pop5
.LBB88_1:
	loop    	
	i32.add 	$push8=, $1, $0
	i64.load	$push9=, 0($pop8):p2align=0
	i32.const	$push21=, 176
	i32.add 	$push22=, $1, $pop21
	i32.add 	$push6=, $pop22, $0
	i64.load	$push7=, 0($pop6):p2align=0
	i64.eq  	$push10=, $pop9, $pop7
	i32.const	$push31=, .L.str.249
	call    	eosio_assert@FUNCTION, $pop10, $pop31
	i32.const	$push30=, 8
	i32.add 	$push29=, $0, $pop30
	tee_local	$push28=, $0=, $pop29
	i32.const	$push27=, 169
	i32.ne  	$push11=, $pop28, $pop27
	br_if   	0, $pop11
	end_loop
	i32.const	$push18=, 0
	i32.const	$push16=, 352
	i32.add 	$push17=, $1, $pop16
	i32.store	__stack_pointer($pop18), $pop17
	.endfunc
.Lfunc_end88:
	.size	_ZN10test_chain16test_activeprodsEv, .Lfunc_end88-_ZN10test_chain16test_activeprodsEv

	.hidden	_Z9copy_dataPcjRNSt3__16vectorIcNS0_9allocatorIcEEEE
	.globl	_Z9copy_dataPcjRNSt3__16vectorIcNS0_9allocatorIcEEEE
	.type	_Z9copy_dataPcjRNSt3__16vectorIcNS0_9allocatorIcEEEE,@function
_Z9copy_dataPcjRNSt3__16vectorIcNS0_9allocatorIcEEEE:
	.param  	i32, i32, i32
	.local  	i32, i32, i32
	block   	
	i32.eqz 	$push14=, $1
	br_if   	0, $pop14
	i32.const	$push0=, 8
	i32.add 	$4=, $2, $pop0
	i32.const	$push2=, 4
	i32.add 	$5=, $2, $pop2
.LBB89_2:
	loop    	
	block   	
	block   	
	i32.load	$push8=, 0($5)
	tee_local	$push7=, $3=, $pop8
	i32.load	$push1=, 0($4)
	i32.eq  	$push3=, $pop7, $pop1
	br_if   	0, $pop3
	i32.load8_u	$push4=, 0($0)
	i32.store8	0($3), $pop4
	i32.load	$push5=, 0($5)
	i32.const	$push9=, 1
	i32.add 	$push6=, $pop5, $pop9
	i32.store	0($5), $pop6
	br      	1
.LBB89_4:
	end_block
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_@FUNCTION, $2, $0
.LBB89_5:
	end_block
	i32.const	$push13=, 1
	i32.add 	$0=, $0, $pop13
	i32.const	$push12=, -1
	i32.add 	$push11=, $1, $pop12
	tee_local	$push10=, $1=, $pop11
	br_if   	0, $pop10
.LBB89_6:
	end_loop
	end_block
	.endfunc
.Lfunc_end89:
	.size	_Z9copy_dataPcjRNSt3__16vectorIcNS0_9allocatorIcEEEE, .Lfunc_end89-_Z9copy_dataPcjRNSt3__16vectorIcNS0_9allocatorIcEEEE

	.section	.text._ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_,"axG",@progbits,_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_,comdat
	.hidden	_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_
	.weak	_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_
	.type	_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_,@function
_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push24=, 4($0)
	tee_local	$push23=, $5=, $pop24
	i32.load	$push22=, 0($0)
	tee_local	$push21=, $4=, $pop22
	i32.sub 	$push20=, $pop23, $pop21
	tee_local	$push19=, $3=, $pop20
	i32.const	$push0=, 1
	i32.add 	$push18=, $pop19, $pop0
	tee_local	$push17=, $7=, $pop18
	i32.const	$push1=, -1
	i32.le_s	$push2=, $pop17, $pop1
	br_if   	0, $pop2
	i32.const	$6=, 2147483647
	block   	
	block   	
	i32.load	$push3=, 8($0)
	i32.sub 	$push26=, $pop3, $4
	tee_local	$push25=, $2=, $pop26
	i32.const	$push4=, 1073741822
	i32.gt_u	$push5=, $pop25, $pop4
	br_if   	0, $pop5
	i32.const	$push6=, 1
	i32.shl 	$push30=, $2, $pop6
	tee_local	$push29=, $6=, $pop30
	i32.lt_u	$push7=, $6, $7
	i32.select	$push28=, $7, $pop29, $pop7
	tee_local	$push27=, $6=, $pop28
	i32.eqz 	$push36=, $pop27
	br_if   	1, $pop36
.LBB90_3:
	end_block
	i32.call	$7=, _Znwj@FUNCTION, $6
	i32.const	$push8=, 4
	i32.add 	$push9=, $0, $pop8
	i32.load	$5=, 0($pop9)
	i32.load	$4=, 0($0)
	br      	2
.LBB90_4:
	end_block
	i32.const	$6=, 0
	i32.const	$7=, 0
	br      	1
.LBB90_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB90_6:
	end_block
	i32.add 	$push35=, $7, $3
	tee_local	$push34=, $3=, $pop35
	i32.load8_u	$push10=, 0($1)
	i32.store8	0($pop34), $pop10
	i32.sub 	$push33=, $5, $4
	tee_local	$push32=, $5=, $pop33
	i32.sub 	$1=, $3, $pop32
	i32.add 	$6=, $7, $6
	i32.const	$push11=, 1
	i32.add 	$7=, $3, $pop11
	block   	
	i32.const	$push31=, 1
	i32.lt_s	$push12=, $5, $pop31
	br_if   	0, $pop12
	i32.call	$drop=, memcpy@FUNCTION, $1, $4, $5
	i32.load	$4=, 0($0)
.LBB90_8:
	end_block
	i32.store	0($0), $1
	i32.const	$push13=, 4
	i32.add 	$push14=, $0, $pop13
	i32.store	0($pop14), $7
	i32.const	$push15=, 8
	i32.add 	$push16=, $0, $pop15
	i32.store	0($pop16), $6
	block   	
	i32.eqz 	$push37=, $4
	br_if   	0, $pop37
	call    	_ZdlPv@FUNCTION, $4
.LBB90_10:
	end_block
	.endfunc
.Lfunc_end90:
	.size	_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_, .Lfunc_end90-_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_

	.text
	.hidden	_ZN16test_transaction11send_actionEv
	.globl	_ZN16test_transaction11send_actionEv
	.type	_ZN16test_transaction11send_actionEv,@function
_ZN16test_transaction11send_actionEv:
	.local  	i32, i32, i64, i64, i64, i64, i64, i32
	i32.const	$push56=, 0
	i32.const	$push53=, 0
	i32.load	$push54=, __stack_pointer($pop53)
	i32.const	$push55=, 96
	i32.sub 	$push74=, $pop54, $pop55
	tee_local	$push73=, $7=, $pop74
	i32.store	__stack_pointer($pop56), $pop73
	i32.const	$push1=, 92
	i32.add 	$push2=, $7, $pop1
	i32.const	$push72=, 0
	i32.load8_u	$push0=, .L_ZZN16test_transaction11send_actionEvE11test_action+12($pop72)
	i32.store8	0($pop2), $pop0
	i32.const	$push4=, 88
	i32.add 	$push5=, $7, $pop4
	i32.const	$push71=, 0
	i32.load	$push3=, .L_ZZN16test_transaction11send_actionEvE11test_action+8($pop71):p2align=0
	i32.store	0($pop5), $pop3
	i32.const	$push70=, 0
	i64.load	$push6=, .L_ZZN16test_transaction11send_actionEvE11test_action($pop70):p2align=0
	i64.store	80($7), $pop6
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.9
	i64.const	$4=, 0
.LBB91_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push75=, 6
	i64.gt_u	$push7=, $3, $pop75
	br_if   	0, $pop7
	i32.load8_s	$push80=, 0($1)
	tee_local	$push79=, $0=, $pop80
	i32.const	$push78=, -97
	i32.add 	$push9=, $pop79, $pop78
	i32.const	$push77=, 255
	i32.and 	$push10=, $pop9, $pop77
	i32.const	$push76=, 25
	i32.gt_u	$push11=, $pop10, $pop76
	br_if   	1, $pop11
	i32.const	$push81=, 165
	i32.add 	$0=, $0, $pop81
	br      	2
.LBB91_4:
	end_block
	i64.const	$5=, 0
	i64.const	$push82=, 11
	i64.le_u	$push8=, $3, $pop82
	br_if   	2, $pop8
	br      	3
.LBB91_5:
	end_block
	i32.const	$push87=, 208
	i32.add 	$push12=, $0, $pop87
	i32.const	$push86=, 0
	i32.const	$push85=, -49
	i32.add 	$push13=, $0, $pop85
	i32.const	$push84=, 255
	i32.and 	$push14=, $pop13, $pop84
	i32.const	$push83=, 5
	i32.lt_u	$push15=, $pop14, $pop83
	i32.select	$0=, $pop12, $pop86, $pop15
.LBB91_6:
	end_block
	i64.extend_u/i32	$push16=, $0
	i64.const	$push89=, 56
	i64.shl 	$push17=, $pop16, $pop89
	i64.const	$push88=, 56
	i64.shr_s	$5=, $pop17, $pop88
.LBB91_7:
	end_block
	i64.const	$push91=, 31
	i64.and 	$push19=, $5, $pop91
	i64.const	$push90=, 4294967295
	i64.and 	$push18=, $2, $pop90
	i64.shl 	$5=, $pop19, $pop18
.LBB91_8:
	end_block
	i32.const	$push97=, 1
	i32.add 	$1=, $1, $pop97
	i64.const	$push96=, 1
	i64.add 	$3=, $3, $pop96
	i64.or  	$4=, $5, $4
	i64.const	$push95=, -5
	i64.add 	$push94=, $2, $pop95
	tee_local	$push93=, $2=, $pop94
	i64.const	$push92=, -6
	i64.ne  	$push20=, $pop93, $pop92
	br_if   	0, $pop20
	end_loop
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.11
	i64.const	$6=, 0
.LBB91_10:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push98=, 5
	i64.gt_u	$push21=, $3, $pop98
	br_if   	0, $pop21
	i32.load8_s	$push103=, 0($1)
	tee_local	$push102=, $0=, $pop103
	i32.const	$push101=, -97
	i32.add 	$push23=, $pop102, $pop101
	i32.const	$push100=, 255
	i32.and 	$push24=, $pop23, $pop100
	i32.const	$push99=, 25
	i32.gt_u	$push25=, $pop24, $pop99
	br_if   	1, $pop25
	i32.const	$push104=, 165
	i32.add 	$0=, $0, $pop104
	br      	2
.LBB91_13:
	end_block
	i64.const	$5=, 0
	i64.const	$push105=, 11
	i64.le_u	$push22=, $3, $pop105
	br_if   	2, $pop22
	br      	3
.LBB91_14:
	end_block
	i32.const	$push110=, 208
	i32.add 	$push26=, $0, $pop110
	i32.const	$push109=, 0
	i32.const	$push108=, -49
	i32.add 	$push27=, $0, $pop108
	i32.const	$push107=, 255
	i32.and 	$push28=, $pop27, $pop107
	i32.const	$push106=, 5
	i32.lt_u	$push29=, $pop28, $pop106
	i32.select	$0=, $pop26, $pop109, $pop29
.LBB91_15:
	end_block
	i64.extend_u/i32	$push30=, $0
	i64.const	$push112=, 56
	i64.shl 	$push31=, $pop30, $pop112
	i64.const	$push111=, 56
	i64.shr_s	$5=, $pop31, $pop111
.LBB91_16:
	end_block
	i64.const	$push114=, 31
	i64.and 	$push33=, $5, $pop114
	i64.const	$push113=, 4294967295
	i64.and 	$push32=, $2, $pop113
	i64.shl 	$5=, $pop33, $pop32
.LBB91_17:
	end_block
	i32.const	$push120=, 1
	i32.add 	$1=, $1, $pop120
	i64.const	$push119=, 1
	i64.add 	$3=, $3, $pop119
	i64.or  	$6=, $5, $6
	i64.const	$push118=, -5
	i64.add 	$push117=, $2, $pop118
	tee_local	$push116=, $2=, $pop117
	i64.const	$push115=, -6
	i64.ne  	$push34=, $pop116, $pop115
	br_if   	0, $pop34
	end_loop
	i64.store	16($7), $6
	i64.store	8($7), $4
	i32.const	$push35=, 16
	i32.call	$push128=, _Znwj@FUNCTION, $pop35
	tee_local	$push127=, $1=, $pop128
	i32.const	$push36=, 12
	i32.add 	$push37=, $pop127, $pop36
	i32.const	$push60=, 8
	i32.add 	$push61=, $7, $pop60
	i32.const	$push126=, 12
	i32.add 	$push38=, $pop61, $pop126
	i32.load	$push39=, 0($pop38)
	i32.store	0($pop37), $pop39
	i32.const	$push40=, 4
	i32.add 	$push41=, $1, $pop40
	i32.load	$push42=, 12($7)
	i32.store	0($pop41), $pop42
	i32.store	24($7), $1
	i32.load	$push43=, 8($7)
	i32.store	0($1), $pop43
	i32.const	$push125=, 16
	i32.add 	$push124=, $1, $pop125
	tee_local	$push123=, $0=, $pop124
	i32.store	32($7), $pop123
	i32.const	$push44=, 8
	i32.add 	$push45=, $1, $pop44
	i32.load	$push46=, 16($7)
	i32.store	0($pop45), $pop46
	i32.store	28($7), $0
	i32.const	$push62=, 40
	i32.add 	$push63=, $7, $pop62
	i32.const	$push64=, 24
	i32.add 	$push65=, $7, $pop64
	i32.const	$push66=, 80
	i32.add 	$push67=, $7, $pop66
	i32.call	$1=, _ZN5eosio6actionC2I17test_dummy_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_@FUNCTION, $pop63, $pop65, $pop67
	block   	
	i32.load	$push122=, 24($7)
	tee_local	$push121=, $0=, $pop122
	i32.eqz 	$push137=, $pop121
	br_if   	0, $pop137
	i32.store	28($7), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB91_20:
	end_block
	i32.const	$push68=, 8
	i32.add 	$push69=, $7, $pop68
	call    	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop69, $1
	i32.load	$push132=, 8($7)
	tee_local	$push131=, $0=, $pop132
	i32.load	$push47=, 12($7)
	i32.sub 	$push48=, $pop47, $0
	call    	send_inline@FUNCTION, $pop131, $pop48
	block   	
	i32.load	$push130=, 8($7)
	tee_local	$push129=, $0=, $pop130
	i32.eqz 	$push138=, $pop129
	br_if   	0, $pop138
	i32.store	12($7), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB91_22:
	end_block
	block   	
	i32.load	$push134=, 28($1)
	tee_local	$push133=, $0=, $pop134
	i32.eqz 	$push139=, $pop133
	br_if   	0, $pop139
	i32.const	$push49=, 32
	i32.add 	$push50=, $1, $pop49
	i32.store	0($pop50), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB91_24:
	end_block
	block   	
	i32.load	$push136=, 16($1)
	tee_local	$push135=, $0=, $pop136
	i32.eqz 	$push140=, $pop135
	br_if   	0, $pop140
	i32.const	$push51=, 20
	i32.add 	$push52=, $1, $pop51
	i32.store	0($pop52), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB91_26:
	end_block
	i32.const	$push59=, 0
	i32.const	$push57=, 96
	i32.add 	$push58=, $7, $pop57
	i32.store	__stack_pointer($pop59), $pop58
	.endfunc
.Lfunc_end91:
	.size	_ZN16test_transaction11send_actionEv, .Lfunc_end91-_ZN16test_transaction11send_actionEv

	.section	.text._ZN5eosio6actionC2I17test_dummy_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,"axG",@progbits,_ZN5eosio6actionC2I17test_dummy_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,comdat
	.hidden	_ZN5eosio6actionC2I17test_dummy_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_
	.weak	_ZN5eosio6actionC2I17test_dummy_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_
	.type	_ZN5eosio6actionC2I17test_dummy_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,@function
_ZN5eosio6actionC2I17test_dummy_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32
	i32.const	$push42=, 0
	i32.const	$push39=, 0
	i32.load	$push40=, __stack_pointer($pop39)
	i32.const	$push41=, 16
	i32.sub 	$push71=, $pop40, $pop41
	tee_local	$push70=, $5=, $pop71
	i32.store	__stack_pointer($pop42), $pop70
	i64.const	$push69=, 0
	i64.store	16($0):p2align=2, $pop69
	i32.const	$push0=, 24
	i32.add 	$push68=, $0, $pop0
	tee_local	$push67=, $4=, $pop68
	i64.const	$push66=, 0
	i64.store	0($pop67):p2align=2, $pop66
	i32.const	$push1=, 32
	i32.add 	$push65=, $0, $pop1
	tee_local	$push64=, $3=, $pop65
	i64.const	$push63=, 0
	i64.store	0($pop64):p2align=2, $pop63
	i64.const	$push2=, -3841127010667593728
	i64.store	0($0), $pop2
	i64.const	$push3=, -8665432478272688454
	i64.store	8($0), $pop3
	i32.load	$push4=, 0($1)
	i32.store	16($0), $pop4
	i32.const	$push5=, 20
	i32.add 	$push6=, $0, $pop5
	i32.load	$push7=, 4($1)
	i32.store	0($pop6), $pop7
	i32.load	$push8=, 8($1)
	i32.store	0($4), $pop8
	i32.const	$push62=, 0
	i32.store	8($1), $pop62
	i64.const	$push61=, 0
	i64.store	0($1):p2align=2, $pop61
	i32.const	$push60=, 0
	i32.store	8($5), $pop60
	i64.const	$push59=, 0
	i64.store	0($5), $pop59
	i32.const	$push9=, 13
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $5, $pop9
	i32.load	$push10=, 4($5)
	i32.load	$push58=, 0($5)
	tee_local	$push57=, $1=, $pop58
	i32.sub 	$push56=, $pop10, $pop57
	tee_local	$push55=, $4=, $pop56
	i32.const	$push54=, 0
	i32.gt_s	$push11=, $pop55, $pop54
	i32.const	$push12=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop11, $pop12
	i32.const	$push13=, 1
	i32.call	$drop=, memcpy@FUNCTION, $1, $2, $pop13
	i32.const	$push14=, -1
	i32.add 	$push15=, $4, $pop14
	i32.const	$push16=, 7
	i32.gt_s	$push17=, $pop15, $pop16
	i32.const	$push53=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop17, $pop53
	i32.const	$push52=, 1
	i32.add 	$push19=, $1, $pop52
	i32.const	$push51=, 1
	i32.add 	$push18=, $2, $pop51
	i32.const	$push50=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop19, $pop18, $pop50
	i32.const	$push20=, -9
	i32.add 	$push21=, $4, $pop20
	i32.const	$push22=, 3
	i32.gt_s	$push23=, $pop21, $pop22
	i32.const	$push49=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop23, $pop49
	i32.const	$push24=, 9
	i32.add 	$push26=, $1, $pop24
	i32.const	$push48=, 9
	i32.add 	$push25=, $2, $pop48
	i32.const	$push27=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop26, $pop25, $pop27
	block   	
	i32.load	$push47=, 28($0)
	tee_local	$push46=, $1=, $pop47
	i32.eqz 	$push75=, $pop46
	br_if   	0, $pop75
	i32.store	0($3), $1
	call    	_ZdlPv@FUNCTION, $1
	i32.const	$push28=, 36
	i32.add 	$push29=, $0, $pop28
	i32.const	$push73=, 0
	i32.store	0($pop29), $pop73
	i32.const	$push30=, 28
	i32.add 	$push31=, $0, $pop30
	i64.const	$push72=, 0
	i64.store	0($pop31):p2align=2, $pop72
.LBB92_2:
	end_block
	i32.const	$push32=, 28
	i32.add 	$push33=, $0, $pop32
	i64.load	$push34=, 0($5)
	i64.store	0($pop33):p2align=2, $pop34
	i32.const	$push35=, 36
	i32.add 	$push36=, $0, $pop35
	i32.const	$push74=, 8
	i32.add 	$push37=, $5, $pop74
	i32.load	$push38=, 0($pop37)
	i32.store	0($pop36), $pop38
	i32.const	$push45=, 0
	i32.const	$push43=, 16
	i32.add 	$push44=, $5, $pop43
	i32.store	__stack_pointer($pop45), $pop44
	copy_local	$push76=, $0
	.endfunc
.Lfunc_end92:
	.size	_ZN5eosio6actionC2I17test_dummy_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_, .Lfunc_end92-_ZN5eosio6actionC2I17test_dummy_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_

	.text
	.hidden	_ZN16test_transaction17send_action_emptyEv
	.globl	_ZN16test_transaction17send_action_emptyEv
	.type	_ZN16test_transaction17send_action_emptyEv,@function
_ZN16test_transaction17send_action_emptyEv:
	.local  	i32, i32, i64, i64, i64, i64, i64, i32
	i32.const	$push49=, 0
	i32.const	$push46=, 0
	i32.load	$push47=, __stack_pointer($pop46)
	i32.const	$push48=, 96
	i32.sub 	$push66=, $pop47, $pop48
	tee_local	$push65=, $7=, $pop66
	i32.store	__stack_pointer($pop49), $pop65
	i32.const	$push64=, 0
	i32.store	88($7), $pop64
	i64.const	$3=, 0
	i64.const	$push63=, 0
	i64.store	80($7), $pop63
	i64.const	$2=, 59
	i32.const	$1=, .L.str.9
	i64.const	$4=, 0
.LBB93_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push67=, 6
	i64.gt_u	$push0=, $3, $pop67
	br_if   	0, $pop0
	i32.load8_s	$push72=, 0($1)
	tee_local	$push71=, $0=, $pop72
	i32.const	$push70=, -97
	i32.add 	$push2=, $pop71, $pop70
	i32.const	$push69=, 255
	i32.and 	$push3=, $pop2, $pop69
	i32.const	$push68=, 25
	i32.gt_u	$push4=, $pop3, $pop68
	br_if   	1, $pop4
	i32.const	$push73=, 165
	i32.add 	$0=, $0, $pop73
	br      	2
.LBB93_4:
	end_block
	i64.const	$5=, 0
	i64.const	$push74=, 11
	i64.le_u	$push1=, $3, $pop74
	br_if   	2, $pop1
	br      	3
.LBB93_5:
	end_block
	i32.const	$push79=, 208
	i32.add 	$push5=, $0, $pop79
	i32.const	$push78=, 0
	i32.const	$push77=, -49
	i32.add 	$push6=, $0, $pop77
	i32.const	$push76=, 255
	i32.and 	$push7=, $pop6, $pop76
	i32.const	$push75=, 5
	i32.lt_u	$push8=, $pop7, $pop75
	i32.select	$0=, $pop5, $pop78, $pop8
.LBB93_6:
	end_block
	i64.extend_u/i32	$push9=, $0
	i64.const	$push81=, 56
	i64.shl 	$push10=, $pop9, $pop81
	i64.const	$push80=, 56
	i64.shr_s	$5=, $pop10, $pop80
.LBB93_7:
	end_block
	i64.const	$push83=, 31
	i64.and 	$push12=, $5, $pop83
	i64.const	$push82=, 4294967295
	i64.and 	$push11=, $2, $pop82
	i64.shl 	$5=, $pop12, $pop11
.LBB93_8:
	end_block
	i32.const	$push89=, 1
	i32.add 	$1=, $1, $pop89
	i64.const	$push88=, 1
	i64.add 	$3=, $3, $pop88
	i64.or  	$4=, $5, $4
	i64.const	$push87=, -5
	i64.add 	$push86=, $2, $pop87
	tee_local	$push85=, $2=, $pop86
	i64.const	$push84=, -6
	i64.ne  	$push13=, $pop85, $pop84
	br_if   	0, $pop13
	end_loop
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.11
	i64.const	$6=, 0
.LBB93_10:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push90=, 5
	i64.gt_u	$push14=, $3, $pop90
	br_if   	0, $pop14
	i32.load8_s	$push95=, 0($1)
	tee_local	$push94=, $0=, $pop95
	i32.const	$push93=, -97
	i32.add 	$push16=, $pop94, $pop93
	i32.const	$push92=, 255
	i32.and 	$push17=, $pop16, $pop92
	i32.const	$push91=, 25
	i32.gt_u	$push18=, $pop17, $pop91
	br_if   	1, $pop18
	i32.const	$push96=, 165
	i32.add 	$0=, $0, $pop96
	br      	2
.LBB93_13:
	end_block
	i64.const	$5=, 0
	i64.const	$push97=, 11
	i64.le_u	$push15=, $3, $pop97
	br_if   	2, $pop15
	br      	3
.LBB93_14:
	end_block
	i32.const	$push102=, 208
	i32.add 	$push19=, $0, $pop102
	i32.const	$push101=, 0
	i32.const	$push100=, -49
	i32.add 	$push20=, $0, $pop100
	i32.const	$push99=, 255
	i32.and 	$push21=, $pop20, $pop99
	i32.const	$push98=, 5
	i32.lt_u	$push22=, $pop21, $pop98
	i32.select	$0=, $pop19, $pop101, $pop22
.LBB93_15:
	end_block
	i64.extend_u/i32	$push23=, $0
	i64.const	$push104=, 56
	i64.shl 	$push24=, $pop23, $pop104
	i64.const	$push103=, 56
	i64.shr_s	$5=, $pop24, $pop103
.LBB93_16:
	end_block
	i64.const	$push106=, 31
	i64.and 	$push26=, $5, $pop106
	i64.const	$push105=, 4294967295
	i64.and 	$push25=, $2, $pop105
	i64.shl 	$5=, $pop26, $pop25
.LBB93_17:
	end_block
	i32.const	$push112=, 1
	i32.add 	$1=, $1, $pop112
	i64.const	$push111=, 1
	i64.add 	$3=, $3, $pop111
	i64.or  	$6=, $5, $6
	i64.const	$push110=, -5
	i64.add 	$push109=, $2, $pop110
	tee_local	$push108=, $2=, $pop109
	i64.const	$push107=, -6
	i64.ne  	$push27=, $pop108, $pop107
	br_if   	0, $pop27
	end_loop
	i64.store	16($7), $6
	i64.store	8($7), $4
	i32.const	$push28=, 16
	i32.call	$push120=, _Znwj@FUNCTION, $pop28
	tee_local	$push119=, $1=, $pop120
	i32.const	$push29=, 12
	i32.add 	$push30=, $pop119, $pop29
	i32.const	$push53=, 8
	i32.add 	$push54=, $7, $pop53
	i32.const	$push118=, 12
	i32.add 	$push31=, $pop54, $pop118
	i32.load	$push32=, 0($pop31)
	i32.store	0($pop30), $pop32
	i32.const	$push33=, 4
	i32.add 	$push34=, $1, $pop33
	i32.load	$push35=, 12($7)
	i32.store	0($pop34), $pop35
	i32.store	24($7), $1
	i32.load	$push36=, 8($7)
	i32.store	0($1), $pop36
	i32.const	$push117=, 16
	i32.add 	$push116=, $1, $pop117
	tee_local	$push115=, $0=, $pop116
	i32.store	32($7), $pop115
	i32.const	$push37=, 8
	i32.add 	$push38=, $1, $pop37
	i32.load	$push39=, 16($7)
	i32.store	0($pop38), $pop39
	i32.store	28($7), $0
	i32.const	$push55=, 40
	i32.add 	$push56=, $7, $pop55
	i32.const	$push57=, 24
	i32.add 	$push58=, $7, $pop57
	i32.const	$push59=, 80
	i32.add 	$push60=, $7, $pop59
	i32.call	$1=, _ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311596421349198EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_@FUNCTION, $pop56, $pop58, $pop60
	block   	
	i32.load	$push114=, 24($7)
	tee_local	$push113=, $0=, $pop114
	i32.eqz 	$push131=, $pop113
	br_if   	0, $pop131
	i32.store	28($7), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB93_20:
	end_block
	i32.const	$push61=, 8
	i32.add 	$push62=, $7, $pop61
	call    	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop62, $1
	i32.load	$push124=, 8($7)
	tee_local	$push123=, $0=, $pop124
	i32.load	$push40=, 12($7)
	i32.sub 	$push41=, $pop40, $0
	call    	send_inline@FUNCTION, $pop123, $pop41
	block   	
	i32.load	$push122=, 8($7)
	tee_local	$push121=, $0=, $pop122
	i32.eqz 	$push132=, $pop121
	br_if   	0, $pop132
	i32.store	12($7), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB93_22:
	end_block
	block   	
	i32.load	$push126=, 28($1)
	tee_local	$push125=, $0=, $pop126
	i32.eqz 	$push133=, $pop125
	br_if   	0, $pop133
	i32.const	$push42=, 32
	i32.add 	$push43=, $1, $pop42
	i32.store	0($pop43), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB93_24:
	end_block
	block   	
	i32.load	$push128=, 16($1)
	tee_local	$push127=, $0=, $pop128
	i32.eqz 	$push134=, $pop127
	br_if   	0, $pop134
	i32.const	$push44=, 20
	i32.add 	$push45=, $1, $pop44
	i32.store	0($pop45), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB93_26:
	end_block
	block   	
	i32.load	$push130=, 80($7)
	tee_local	$push129=, $1=, $pop130
	i32.eqz 	$push135=, $pop129
	br_if   	0, $pop135
	i32.store	84($7), $1
	call    	_ZdlPv@FUNCTION, $1
.LBB93_28:
	end_block
	i32.const	$push52=, 0
	i32.const	$push50=, 96
	i32.add 	$push51=, $7, $pop50
	i32.store	__stack_pointer($pop52), $pop51
	.endfunc
.Lfunc_end93:
	.size	_ZN16test_transaction17send_action_emptyEv, .Lfunc_end93-_ZN16test_transaction17send_action_emptyEv

	.section	.text._ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311596421349198EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,"axG",@progbits,_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311596421349198EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,comdat
	.hidden	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311596421349198EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_
	.weak	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311596421349198EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_
	.type	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311596421349198EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,@function
_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311596421349198EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	i32.const	$push35=, 0
	i32.const	$push32=, 0
	i32.load	$push33=, __stack_pointer($pop32)
	i32.const	$push34=, 16
	i32.sub 	$push54=, $pop33, $pop34
	tee_local	$push53=, $7=, $pop54
	i32.store	__stack_pointer($pop35), $pop53
	i64.const	$push0=, 0
	i64.store	16($0):p2align=2, $pop0
	i32.const	$push1=, 24
	i32.add 	$push52=, $0, $pop1
	tee_local	$push51=, $6=, $pop52
	i64.const	$push50=, 0
	i64.store	0($pop51):p2align=2, $pop50
	i32.const	$push2=, 32
	i32.add 	$push3=, $0, $pop2
	i64.const	$push49=, 0
	i64.store	0($pop3):p2align=2, $pop49
	i64.const	$push4=, -3841127010667593728
	i64.store	0($0), $pop4
	i64.const	$push5=, -8665432477288202418
	i64.store	8($0), $pop5
	i32.load	$push6=, 0($1)
	i32.store	16($0), $pop6
	i32.const	$push7=, 20
	i32.add 	$push8=, $0, $pop7
	i32.load	$push9=, 4($1)
	i32.store	0($pop8), $pop9
	i32.load	$push10=, 8($1)
	i32.store	0($6), $pop10
	i32.const	$6=, 0
	i32.const	$push48=, 0
	i32.store	8($1), $pop48
	i64.const	$push47=, 0
	i64.store	0($1):p2align=2, $pop47
	i32.const	$push46=, 0
	i32.store	8($7), $pop46
	i64.const	$push45=, 0
	i64.store	0($7), $pop45
	i32.const	$5=, 0
	block   	
	i32.load	$push44=, 0($2)
	tee_local	$push43=, $1=, $pop44
	i32.load	$push42=, 4($2)
	tee_local	$push41=, $4=, $pop42
	i32.eq  	$push11=, $pop43, $pop41
	br_if   	0, $pop11
	i32.sub 	$push56=, $4, $1
	tee_local	$push55=, $3=, $pop56
	i32.eqz 	$push68=, $pop55
	br_if   	0, $pop68
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $7, $3
	i32.const	$push12=, 4
	i32.add 	$push13=, $2, $pop12
	i32.load	$4=, 0($pop13)
	i32.load	$1=, 0($2)
	i32.load	$5=, 4($7)
	i32.load	$6=, 0($7)
.LBB94_3:
	end_block
	block   	
	i32.eq  	$push14=, $1, $4
	br_if   	0, $pop14
.LBB94_5:
	loop    	
	i32.load8_u	$push15=, 0($1)
	i32.store8	15($7), $pop15
	i32.sub 	$push16=, $5, $6
	i32.const	$push63=, 0
	i32.gt_s	$push17=, $pop16, $pop63
	i32.const	$push62=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop17, $pop62
	i32.const	$push39=, 15
	i32.add 	$push40=, $7, $pop39
	i32.const	$push61=, 1
	i32.call	$drop=, memcpy@FUNCTION, $6, $pop40, $pop61
	i32.const	$push60=, 1
	i32.add 	$6=, $6, $pop60
	i32.const	$push59=, 1
	i32.add 	$push58=, $1, $pop59
	tee_local	$push57=, $1=, $pop58
	i32.ne  	$push18=, $4, $pop57
	br_if   	0, $pop18
.LBB94_6:
	end_loop
	end_block
	block   	
	i32.const	$push19=, 28
	i32.add 	$push67=, $0, $pop19
	tee_local	$push66=, $6=, $pop67
	i32.load	$push65=, 0($pop66)
	tee_local	$push64=, $1=, $pop65
	i32.eqz 	$push69=, $pop64
	br_if   	0, $pop69
	i32.const	$push20=, 32
	i32.add 	$push21=, $0, $pop20
	i32.store	0($pop21), $1
	call    	_ZdlPv@FUNCTION, $1
	i32.const	$push22=, 36
	i32.add 	$push23=, $0, $pop22
	i32.const	$push24=, 0
	i32.store	0($pop23), $pop24
	i64.const	$push25=, 0
	i64.store	0($6):p2align=2, $pop25
.LBB94_8:
	end_block
	i64.load	$push26=, 0($7)
	i64.store	0($6):p2align=2, $pop26
	i32.const	$push27=, 36
	i32.add 	$push28=, $0, $pop27
	i32.const	$push29=, 8
	i32.add 	$push30=, $7, $pop29
	i32.load	$push31=, 0($pop30)
	i32.store	0($pop28), $pop31
	i32.const	$push38=, 0
	i32.const	$push36=, 16
	i32.add 	$push37=, $7, $pop36
	i32.store	__stack_pointer($pop38), $pop37
	copy_local	$push70=, $0
	.endfunc
.Lfunc_end94:
	.size	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311596421349198EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_, .Lfunc_end94-_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311596421349198EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_

	.text
	.hidden	_ZN16test_transaction17send_action_largeEv
	.globl	_ZN16test_transaction17send_action_largeEv
	.type	_ZN16test_transaction17send_action_largeEv,@function
_ZN16test_transaction17send_action_largeEv:
	.local  	i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32
	i32.const	$push59=, 0
	i32.const	$push56=, 0
	i32.load	$push57=, __stack_pointer($pop56)
	i32.const	$push58=, 96
	i32.sub 	$push77=, $pop57, $pop58
	tee_local	$push76=, $10=, $pop77
	i32.store	__stack_pointer($pop59), $pop76
	i32.const	$2=, 0
	i32.const	$push75=, 0
	i32.store	88($10), $pop75
	i64.const	$push0=, 0
	i64.store	80($10), $pop0
	i32.const	$push7=, 88
	i32.add 	$1=, $10, $pop7
	i32.const	$3=, 0
	i32.const	$4=, 0
.LBB95_1:
	block   	
	loop    	
	i32.const	$push79=, _ZZN16test_transaction17send_action_largeEvE13large_message
	i32.add 	$0=, $4, $pop79
	block   	
	block   	
	i32.eq  	$push1=, $3, $2
	br_if   	0, $pop1
	i32.load8_u	$push2=, 0($0)
	i32.store8	0($3), $pop2
	i32.load	$push3=, 84($10)
	i32.const	$push81=, 1
	i32.add 	$push4=, $pop3, $pop81
	i32.store	84($10), $pop4
	i32.const	$push80=, 8191
	i32.ne  	$push5=, $4, $pop80
	br_if   	1, $pop5
	br      	3
.LBB95_3:
	end_block
	i32.const	$push63=, 80
	i32.add 	$push64=, $10, $pop63
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_@FUNCTION, $pop64, $0
	i32.const	$push82=, 8191
	i32.eq  	$push6=, $4, $pop82
	br_if   	2, $pop6
.LBB95_4:
	end_block
	i32.const	$push78=, 1
	i32.add 	$4=, $4, $pop78
	i32.load	$2=, 0($1)
	i32.load	$3=, 84($10)
	br      	0
.LBB95_5:
	end_loop
	end_block
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.9
	i64.const	$7=, 0
.LBB95_6:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push83=, 6
	i64.gt_u	$push8=, $6, $pop83
	br_if   	0, $pop8
	i32.load8_s	$push88=, 0($4)
	tee_local	$push87=, $3=, $pop88
	i32.const	$push86=, -97
	i32.add 	$push10=, $pop87, $pop86
	i32.const	$push85=, 255
	i32.and 	$push11=, $pop10, $pop85
	i32.const	$push84=, 25
	i32.gt_u	$push12=, $pop11, $pop84
	br_if   	1, $pop12
	i32.const	$push89=, 165
	i32.add 	$3=, $3, $pop89
	br      	2
.LBB95_9:
	end_block
	i64.const	$8=, 0
	i64.const	$push90=, 11
	i64.le_u	$push9=, $6, $pop90
	br_if   	2, $pop9
	br      	3
.LBB95_10:
	end_block
	i32.const	$push95=, 208
	i32.add 	$push13=, $3, $pop95
	i32.const	$push94=, 0
	i32.const	$push93=, -49
	i32.add 	$push14=, $3, $pop93
	i32.const	$push92=, 255
	i32.and 	$push15=, $pop14, $pop92
	i32.const	$push91=, 5
	i32.lt_u	$push16=, $pop15, $pop91
	i32.select	$3=, $pop13, $pop94, $pop16
.LBB95_11:
	end_block
	i64.extend_u/i32	$push17=, $3
	i64.const	$push97=, 56
	i64.shl 	$push18=, $pop17, $pop97
	i64.const	$push96=, 56
	i64.shr_s	$8=, $pop18, $pop96
.LBB95_12:
	end_block
	i64.const	$push99=, 31
	i64.and 	$push20=, $8, $pop99
	i64.const	$push98=, 4294967295
	i64.and 	$push19=, $5, $pop98
	i64.shl 	$8=, $pop20, $pop19
.LBB95_13:
	end_block
	i32.const	$push105=, 1
	i32.add 	$4=, $4, $pop105
	i64.const	$push104=, 1
	i64.add 	$6=, $6, $pop104
	i64.or  	$7=, $8, $7
	i64.const	$push103=, -5
	i64.add 	$push102=, $5, $pop103
	tee_local	$push101=, $5=, $pop102
	i64.const	$push100=, -6
	i64.ne  	$push21=, $pop101, $pop100
	br_if   	0, $pop21
	end_loop
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.11
	i64.const	$9=, 0
.LBB95_15:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push106=, 5
	i64.gt_u	$push22=, $6, $pop106
	br_if   	0, $pop22
	i32.load8_s	$push111=, 0($4)
	tee_local	$push110=, $3=, $pop111
	i32.const	$push109=, -97
	i32.add 	$push24=, $pop110, $pop109
	i32.const	$push108=, 255
	i32.and 	$push25=, $pop24, $pop108
	i32.const	$push107=, 25
	i32.gt_u	$push26=, $pop25, $pop107
	br_if   	1, $pop26
	i32.const	$push112=, 165
	i32.add 	$3=, $3, $pop112
	br      	2
.LBB95_18:
	end_block
	i64.const	$8=, 0
	i64.const	$push113=, 11
	i64.le_u	$push23=, $6, $pop113
	br_if   	2, $pop23
	br      	3
.LBB95_19:
	end_block
	i32.const	$push118=, 208
	i32.add 	$push27=, $3, $pop118
	i32.const	$push117=, 0
	i32.const	$push116=, -49
	i32.add 	$push28=, $3, $pop116
	i32.const	$push115=, 255
	i32.and 	$push29=, $pop28, $pop115
	i32.const	$push114=, 5
	i32.lt_u	$push30=, $pop29, $pop114
	i32.select	$3=, $pop27, $pop117, $pop30
.LBB95_20:
	end_block
	i64.extend_u/i32	$push31=, $3
	i64.const	$push120=, 56
	i64.shl 	$push32=, $pop31, $pop120
	i64.const	$push119=, 56
	i64.shr_s	$8=, $pop32, $pop119
.LBB95_21:
	end_block
	i64.const	$push122=, 31
	i64.and 	$push34=, $8, $pop122
	i64.const	$push121=, 4294967295
	i64.and 	$push33=, $5, $pop121
	i64.shl 	$8=, $pop34, $pop33
.LBB95_22:
	end_block
	i32.const	$push128=, 1
	i32.add 	$4=, $4, $pop128
	i64.const	$push127=, 1
	i64.add 	$6=, $6, $pop127
	i64.or  	$9=, $8, $9
	i64.const	$push126=, -5
	i64.add 	$push125=, $5, $pop126
	tee_local	$push124=, $5=, $pop125
	i64.const	$push123=, -6
	i64.ne  	$push35=, $pop124, $pop123
	br_if   	0, $pop35
	end_loop
	i64.store	16($10), $9
	i64.store	8($10), $7
	i32.const	$push36=, 16
	i32.call	$push136=, _Znwj@FUNCTION, $pop36
	tee_local	$push135=, $4=, $pop136
	i32.const	$push37=, 12
	i32.add 	$push38=, $pop135, $pop37
	i32.const	$push65=, 8
	i32.add 	$push66=, $10, $pop65
	i32.const	$push134=, 12
	i32.add 	$push39=, $pop66, $pop134
	i32.load	$push40=, 0($pop39)
	i32.store	0($pop38), $pop40
	i32.const	$push41=, 4
	i32.add 	$push42=, $4, $pop41
	i32.load	$push43=, 12($10)
	i32.store	0($pop42), $pop43
	i32.store	24($10), $4
	i32.load	$push44=, 8($10)
	i32.store	0($4), $pop44
	i32.const	$push133=, 16
	i32.add 	$push132=, $4, $pop133
	tee_local	$push131=, $3=, $pop132
	i32.store	32($10), $pop131
	i32.const	$push45=, 8
	i32.add 	$push46=, $4, $pop45
	i32.load	$push47=, 16($10)
	i32.store	0($pop46), $pop47
	i32.store	28($10), $3
	i32.const	$push67=, 40
	i32.add 	$push68=, $10, $pop67
	i32.const	$push69=, 24
	i32.add 	$push70=, $10, $pop69
	i32.const	$push71=, 80
	i32.add 	$push72=, $10, $pop71
	i32.call	$4=, _ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_@FUNCTION, $pop68, $pop70, $pop72
	block   	
	i32.load	$push130=, 24($10)
	tee_local	$push129=, $3=, $pop130
	i32.eqz 	$push147=, $pop129
	br_if   	0, $pop147
	i32.store	28($10), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB95_25:
	end_block
	i32.const	$push73=, 8
	i32.add 	$push74=, $10, $pop73
	call    	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop74, $4
	i32.load	$push140=, 8($10)
	tee_local	$push139=, $3=, $pop140
	i32.load	$push48=, 12($10)
	i32.sub 	$push49=, $pop48, $3
	call    	send_inline@FUNCTION, $pop139, $pop49
	block   	
	i32.load	$push138=, 8($10)
	tee_local	$push137=, $3=, $pop138
	i32.eqz 	$push148=, $pop137
	br_if   	0, $pop148
	i32.store	12($10), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB95_27:
	end_block
	i32.const	$push51=, 0
	i32.const	$push50=, .L.str.250
	call    	eosio_assert@FUNCTION, $pop51, $pop50
	block   	
	i32.load	$push142=, 28($4)
	tee_local	$push141=, $3=, $pop142
	i32.eqz 	$push149=, $pop141
	br_if   	0, $pop149
	i32.const	$push52=, 32
	i32.add 	$push53=, $4, $pop52
	i32.store	0($pop53), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB95_29:
	end_block
	block   	
	i32.load	$push144=, 16($4)
	tee_local	$push143=, $3=, $pop144
	i32.eqz 	$push150=, $pop143
	br_if   	0, $pop150
	i32.const	$push54=, 20
	i32.add 	$push55=, $4, $pop54
	i32.store	0($pop55), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB95_31:
	end_block
	block   	
	i32.load	$push146=, 80($10)
	tee_local	$push145=, $4=, $pop146
	i32.eqz 	$push151=, $pop145
	br_if   	0, $pop151
	i32.store	84($10), $4
	call    	_ZdlPv@FUNCTION, $4
.LBB95_33:
	end_block
	i32.const	$push62=, 0
	i32.const	$push60=, 96
	i32.add 	$push61=, $10, $pop60
	i32.store	__stack_pointer($pop62), $pop61
	.endfunc
.Lfunc_end95:
	.size	_ZN16test_transaction17send_action_largeEv, .Lfunc_end95-_ZN16test_transaction17send_action_largeEv

	.section	.text._ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,"axG",@progbits,_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,comdat
	.hidden	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_
	.weak	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_
	.type	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,@function
_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	i32.const	$push35=, 0
	i32.const	$push32=, 0
	i32.load	$push33=, __stack_pointer($pop32)
	i32.const	$push34=, 16
	i32.sub 	$push54=, $pop33, $pop34
	tee_local	$push53=, $7=, $pop54
	i32.store	__stack_pointer($pop35), $pop53
	i64.const	$push0=, 0
	i64.store	16($0):p2align=2, $pop0
	i32.const	$push1=, 24
	i32.add 	$push52=, $0, $pop1
	tee_local	$push51=, $6=, $pop52
	i64.const	$push50=, 0
	i64.store	0($pop51):p2align=2, $pop50
	i32.const	$push2=, 32
	i32.add 	$push3=, $0, $pop2
	i64.const	$push49=, 0
	i64.store	0($pop3):p2align=2, $pop49
	i64.const	$push4=, -3841127010667593728
	i64.store	0($0), $pop4
	i64.const	$push5=, -8665432478272688454
	i64.store	8($0), $pop5
	i32.load	$push6=, 0($1)
	i32.store	16($0), $pop6
	i32.const	$push7=, 20
	i32.add 	$push8=, $0, $pop7
	i32.load	$push9=, 4($1)
	i32.store	0($pop8), $pop9
	i32.load	$push10=, 8($1)
	i32.store	0($6), $pop10
	i32.const	$6=, 0
	i32.const	$push48=, 0
	i32.store	8($1), $pop48
	i64.const	$push47=, 0
	i64.store	0($1):p2align=2, $pop47
	i32.const	$push46=, 0
	i32.store	8($7), $pop46
	i64.const	$push45=, 0
	i64.store	0($7), $pop45
	i32.const	$5=, 0
	block   	
	i32.load	$push44=, 0($2)
	tee_local	$push43=, $1=, $pop44
	i32.load	$push42=, 4($2)
	tee_local	$push41=, $4=, $pop42
	i32.eq  	$push11=, $pop43, $pop41
	br_if   	0, $pop11
	i32.sub 	$push56=, $4, $1
	tee_local	$push55=, $3=, $pop56
	i32.eqz 	$push68=, $pop55
	br_if   	0, $pop68
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $7, $3
	i32.const	$push12=, 4
	i32.add 	$push13=, $2, $pop12
	i32.load	$4=, 0($pop13)
	i32.load	$1=, 0($2)
	i32.load	$5=, 4($7)
	i32.load	$6=, 0($7)
.LBB96_3:
	end_block
	block   	
	i32.eq  	$push14=, $1, $4
	br_if   	0, $pop14
.LBB96_5:
	loop    	
	i32.load8_u	$push15=, 0($1)
	i32.store8	15($7), $pop15
	i32.sub 	$push16=, $5, $6
	i32.const	$push63=, 0
	i32.gt_s	$push17=, $pop16, $pop63
	i32.const	$push62=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop17, $pop62
	i32.const	$push39=, 15
	i32.add 	$push40=, $7, $pop39
	i32.const	$push61=, 1
	i32.call	$drop=, memcpy@FUNCTION, $6, $pop40, $pop61
	i32.const	$push60=, 1
	i32.add 	$6=, $6, $pop60
	i32.const	$push59=, 1
	i32.add 	$push58=, $1, $pop59
	tee_local	$push57=, $1=, $pop58
	i32.ne  	$push18=, $4, $pop57
	br_if   	0, $pop18
.LBB96_6:
	end_loop
	end_block
	block   	
	i32.const	$push19=, 28
	i32.add 	$push67=, $0, $pop19
	tee_local	$push66=, $6=, $pop67
	i32.load	$push65=, 0($pop66)
	tee_local	$push64=, $1=, $pop65
	i32.eqz 	$push69=, $pop64
	br_if   	0, $pop69
	i32.const	$push20=, 32
	i32.add 	$push21=, $0, $pop20
	i32.store	0($pop21), $1
	call    	_ZdlPv@FUNCTION, $1
	i32.const	$push22=, 36
	i32.add 	$push23=, $0, $pop22
	i32.const	$push24=, 0
	i32.store	0($pop23), $pop24
	i64.const	$push25=, 0
	i64.store	0($6):p2align=2, $pop25
.LBB96_8:
	end_block
	i64.load	$push26=, 0($7)
	i64.store	0($6):p2align=2, $pop26
	i32.const	$push27=, 36
	i32.add 	$push28=, $0, $pop27
	i32.const	$push29=, 8
	i32.add 	$push30=, $7, $pop29
	i32.load	$push31=, 0($pop30)
	i32.store	0($pop28), $pop31
	i32.const	$push38=, 0
	i32.const	$push36=, 16
	i32.add 	$push37=, $7, $pop36
	i32.store	__stack_pointer($pop38), $pop37
	copy_local	$push70=, $0
	.endfunc
.Lfunc_end96:
	.size	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_, .Lfunc_end96-_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_

	.text
	.hidden	_ZN16test_transaction19send_action_recurseEv
	.globl	_ZN16test_transaction19send_action_recurseEv
	.type	_ZN16test_transaction19send_action_recurseEv,@function
_ZN16test_transaction19send_action_recurseEv:
	.local  	i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32
	i32.const	$push58=, 0
	i32.const	$push55=, 0
	i32.load	$push56=, __stack_pointer($pop55)
	i32.const	$push57=, 1120
	i32.sub 	$push80=, $pop56, $pop57
	tee_local	$push79=, $10=, $pop80
	i32.store	__stack_pointer($pop58), $pop79
	i32.const	$push62=, 96
	i32.add 	$push63=, $10, $pop62
	i32.const	$push0=, 1024
	i32.call	$drop=, read_action_data@FUNCTION, $pop63, $pop0
	i32.const	$2=, 0
	i32.const	$push78=, 0
	i32.store	88($10), $pop78
	i64.const	$push1=, 0
	i64.store	80($10), $pop1
	i32.const	$push8=, 88
	i32.add 	$1=, $10, $pop8
	i32.const	$3=, 0
	i32.const	$4=, 0
.LBB97_1:
	block   	
	loop    	
	i32.const	$push64=, 96
	i32.add 	$push65=, $10, $pop64
	i32.add 	$0=, $pop65, $4
	block   	
	block   	
	i32.eq  	$push2=, $3, $2
	br_if   	0, $pop2
	i32.load8_u	$push3=, 0($0)
	i32.store8	0($3), $pop3
	i32.load	$push4=, 84($10)
	i32.const	$push83=, 1
	i32.add 	$push5=, $pop4, $pop83
	i32.store	84($10), $pop5
	i32.const	$push82=, 1023
	i32.ne  	$push6=, $4, $pop82
	br_if   	1, $pop6
	br      	3
.LBB97_3:
	end_block
	i32.const	$push66=, 80
	i32.add 	$push67=, $10, $pop66
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_@FUNCTION, $pop67, $0
	i32.const	$push84=, 1023
	i32.eq  	$push7=, $4, $pop84
	br_if   	2, $pop7
.LBB97_4:
	end_block
	i32.const	$push81=, 1
	i32.add 	$4=, $4, $pop81
	i32.load	$2=, 0($1)
	i32.load	$3=, 84($10)
	br      	0
.LBB97_5:
	end_loop
	end_block
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.9
	i64.const	$7=, 0
.LBB97_6:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push85=, 6
	i64.gt_u	$push9=, $6, $pop85
	br_if   	0, $pop9
	i32.load8_s	$push90=, 0($4)
	tee_local	$push89=, $3=, $pop90
	i32.const	$push88=, -97
	i32.add 	$push11=, $pop89, $pop88
	i32.const	$push87=, 255
	i32.and 	$push12=, $pop11, $pop87
	i32.const	$push86=, 25
	i32.gt_u	$push13=, $pop12, $pop86
	br_if   	1, $pop13
	i32.const	$push91=, 165
	i32.add 	$3=, $3, $pop91
	br      	2
.LBB97_9:
	end_block
	i64.const	$8=, 0
	i64.const	$push92=, 11
	i64.le_u	$push10=, $6, $pop92
	br_if   	2, $pop10
	br      	3
.LBB97_10:
	end_block
	i32.const	$push97=, 208
	i32.add 	$push14=, $3, $pop97
	i32.const	$push96=, 0
	i32.const	$push95=, -49
	i32.add 	$push15=, $3, $pop95
	i32.const	$push94=, 255
	i32.and 	$push16=, $pop15, $pop94
	i32.const	$push93=, 5
	i32.lt_u	$push17=, $pop16, $pop93
	i32.select	$3=, $pop14, $pop96, $pop17
.LBB97_11:
	end_block
	i64.extend_u/i32	$push18=, $3
	i64.const	$push99=, 56
	i64.shl 	$push19=, $pop18, $pop99
	i64.const	$push98=, 56
	i64.shr_s	$8=, $pop19, $pop98
.LBB97_12:
	end_block
	i64.const	$push101=, 31
	i64.and 	$push21=, $8, $pop101
	i64.const	$push100=, 4294967295
	i64.and 	$push20=, $5, $pop100
	i64.shl 	$8=, $pop21, $pop20
.LBB97_13:
	end_block
	i32.const	$push107=, 1
	i32.add 	$4=, $4, $pop107
	i64.const	$push106=, 1
	i64.add 	$6=, $6, $pop106
	i64.or  	$7=, $8, $7
	i64.const	$push105=, -5
	i64.add 	$push104=, $5, $pop105
	tee_local	$push103=, $5=, $pop104
	i64.const	$push102=, -6
	i64.ne  	$push22=, $pop103, $pop102
	br_if   	0, $pop22
	end_loop
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.11
	i64.const	$9=, 0
.LBB97_15:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push108=, 5
	i64.gt_u	$push23=, $6, $pop108
	br_if   	0, $pop23
	i32.load8_s	$push113=, 0($4)
	tee_local	$push112=, $3=, $pop113
	i32.const	$push111=, -97
	i32.add 	$push25=, $pop112, $pop111
	i32.const	$push110=, 255
	i32.and 	$push26=, $pop25, $pop110
	i32.const	$push109=, 25
	i32.gt_u	$push27=, $pop26, $pop109
	br_if   	1, $pop27
	i32.const	$push114=, 165
	i32.add 	$3=, $3, $pop114
	br      	2
.LBB97_18:
	end_block
	i64.const	$8=, 0
	i64.const	$push115=, 11
	i64.le_u	$push24=, $6, $pop115
	br_if   	2, $pop24
	br      	3
.LBB97_19:
	end_block
	i32.const	$push120=, 208
	i32.add 	$push28=, $3, $pop120
	i32.const	$push119=, 0
	i32.const	$push118=, -49
	i32.add 	$push29=, $3, $pop118
	i32.const	$push117=, 255
	i32.and 	$push30=, $pop29, $pop117
	i32.const	$push116=, 5
	i32.lt_u	$push31=, $pop30, $pop116
	i32.select	$3=, $pop28, $pop119, $pop31
.LBB97_20:
	end_block
	i64.extend_u/i32	$push32=, $3
	i64.const	$push122=, 56
	i64.shl 	$push33=, $pop32, $pop122
	i64.const	$push121=, 56
	i64.shr_s	$8=, $pop33, $pop121
.LBB97_21:
	end_block
	i64.const	$push124=, 31
	i64.and 	$push35=, $8, $pop124
	i64.const	$push123=, 4294967295
	i64.and 	$push34=, $5, $pop123
	i64.shl 	$8=, $pop35, $pop34
.LBB97_22:
	end_block
	i32.const	$push130=, 1
	i32.add 	$4=, $4, $pop130
	i64.const	$push129=, 1
	i64.add 	$6=, $6, $pop129
	i64.or  	$9=, $8, $9
	i64.const	$push128=, -5
	i64.add 	$push127=, $5, $pop128
	tee_local	$push126=, $5=, $pop127
	i64.const	$push125=, -6
	i64.ne  	$push36=, $pop126, $pop125
	br_if   	0, $pop36
	end_loop
	i64.store	16($10), $9
	i64.store	8($10), $7
	i32.const	$push37=, 16
	i32.call	$push138=, _Znwj@FUNCTION, $pop37
	tee_local	$push137=, $4=, $pop138
	i32.const	$push38=, 12
	i32.add 	$push39=, $pop137, $pop38
	i32.const	$push68=, 8
	i32.add 	$push69=, $10, $pop68
	i32.const	$push136=, 12
	i32.add 	$push40=, $pop69, $pop136
	i32.load	$push41=, 0($pop40)
	i32.store	0($pop39), $pop41
	i32.const	$push42=, 4
	i32.add 	$push43=, $4, $pop42
	i32.load	$push44=, 12($10)
	i32.store	0($pop43), $pop44
	i32.store	24($10), $4
	i32.load	$push45=, 8($10)
	i32.store	0($4), $pop45
	i32.const	$push135=, 16
	i32.add 	$push134=, $4, $pop135
	tee_local	$push133=, $3=, $pop134
	i32.store	32($10), $pop133
	i32.const	$push46=, 8
	i32.add 	$push47=, $4, $pop46
	i32.load	$push48=, 16($10)
	i32.store	0($pop47), $pop48
	i32.store	28($10), $3
	i32.const	$push70=, 40
	i32.add 	$push71=, $10, $pop70
	i32.const	$push72=, 24
	i32.add 	$push73=, $10, $pop72
	i32.const	$push74=, 80
	i32.add 	$push75=, $10, $pop74
	i32.call	$4=, _ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy17750730571693710178EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_@FUNCTION, $pop71, $pop73, $pop75
	block   	
	i32.load	$push132=, 24($10)
	tee_local	$push131=, $3=, $pop132
	i32.eqz 	$push149=, $pop131
	br_if   	0, $pop149
	i32.store	28($10), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB97_25:
	end_block
	i32.const	$push76=, 8
	i32.add 	$push77=, $10, $pop76
	call    	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop77, $4
	i32.load	$push142=, 8($10)
	tee_local	$push141=, $3=, $pop142
	i32.load	$push49=, 12($10)
	i32.sub 	$push50=, $pop49, $3
	call    	send_inline@FUNCTION, $pop141, $pop50
	block   	
	i32.load	$push140=, 8($10)
	tee_local	$push139=, $3=, $pop140
	i32.eqz 	$push150=, $pop139
	br_if   	0, $pop150
	i32.store	12($10), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB97_27:
	end_block
	block   	
	i32.load	$push144=, 28($4)
	tee_local	$push143=, $3=, $pop144
	i32.eqz 	$push151=, $pop143
	br_if   	0, $pop151
	i32.const	$push51=, 32
	i32.add 	$push52=, $4, $pop51
	i32.store	0($pop52), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB97_29:
	end_block
	block   	
	i32.load	$push146=, 16($4)
	tee_local	$push145=, $3=, $pop146
	i32.eqz 	$push152=, $pop145
	br_if   	0, $pop152
	i32.const	$push53=, 20
	i32.add 	$push54=, $4, $pop53
	i32.store	0($pop54), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB97_31:
	end_block
	block   	
	i32.load	$push148=, 80($10)
	tee_local	$push147=, $4=, $pop148
	i32.eqz 	$push153=, $pop147
	br_if   	0, $pop153
	i32.store	84($10), $4
	call    	_ZdlPv@FUNCTION, $4
.LBB97_33:
	end_block
	i32.const	$push61=, 0
	i32.const	$push59=, 1120
	i32.add 	$push60=, $10, $pop59
	i32.store	__stack_pointer($pop61), $pop60
	.endfunc
.Lfunc_end97:
	.size	_ZN16test_transaction19send_action_recurseEv, .Lfunc_end97-_ZN16test_transaction19send_action_recurseEv

	.section	.text._ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy17750730571693710178EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,"axG",@progbits,_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy17750730571693710178EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,comdat
	.hidden	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy17750730571693710178EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_
	.weak	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy17750730571693710178EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_
	.type	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy17750730571693710178EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,@function
_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy17750730571693710178EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	i32.const	$push35=, 0
	i32.const	$push32=, 0
	i32.load	$push33=, __stack_pointer($pop32)
	i32.const	$push34=, 16
	i32.sub 	$push54=, $pop33, $pop34
	tee_local	$push53=, $7=, $pop54
	i32.store	__stack_pointer($pop35), $pop53
	i64.const	$push0=, 0
	i64.store	16($0):p2align=2, $pop0
	i32.const	$push1=, 24
	i32.add 	$push52=, $0, $pop1
	tee_local	$push51=, $6=, $pop52
	i64.const	$push50=, 0
	i64.store	0($pop51):p2align=2, $pop50
	i32.const	$push2=, 32
	i32.add 	$push3=, $0, $pop2
	i64.const	$push49=, 0
	i64.store	0($pop3):p2align=2, $pop49
	i64.const	$push4=, -3841127010667593728
	i64.store	0($0), $pop4
	i64.const	$push5=, -696013502015841438
	i64.store	8($0), $pop5
	i32.load	$push6=, 0($1)
	i32.store	16($0), $pop6
	i32.const	$push7=, 20
	i32.add 	$push8=, $0, $pop7
	i32.load	$push9=, 4($1)
	i32.store	0($pop8), $pop9
	i32.load	$push10=, 8($1)
	i32.store	0($6), $pop10
	i32.const	$6=, 0
	i32.const	$push48=, 0
	i32.store	8($1), $pop48
	i64.const	$push47=, 0
	i64.store	0($1):p2align=2, $pop47
	i32.const	$push46=, 0
	i32.store	8($7), $pop46
	i64.const	$push45=, 0
	i64.store	0($7), $pop45
	i32.const	$5=, 0
	block   	
	i32.load	$push44=, 0($2)
	tee_local	$push43=, $1=, $pop44
	i32.load	$push42=, 4($2)
	tee_local	$push41=, $4=, $pop42
	i32.eq  	$push11=, $pop43, $pop41
	br_if   	0, $pop11
	i32.sub 	$push56=, $4, $1
	tee_local	$push55=, $3=, $pop56
	i32.eqz 	$push68=, $pop55
	br_if   	0, $pop68
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $7, $3
	i32.const	$push12=, 4
	i32.add 	$push13=, $2, $pop12
	i32.load	$4=, 0($pop13)
	i32.load	$1=, 0($2)
	i32.load	$5=, 4($7)
	i32.load	$6=, 0($7)
.LBB98_3:
	end_block
	block   	
	i32.eq  	$push14=, $1, $4
	br_if   	0, $pop14
.LBB98_5:
	loop    	
	i32.load8_u	$push15=, 0($1)
	i32.store8	15($7), $pop15
	i32.sub 	$push16=, $5, $6
	i32.const	$push63=, 0
	i32.gt_s	$push17=, $pop16, $pop63
	i32.const	$push62=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop17, $pop62
	i32.const	$push39=, 15
	i32.add 	$push40=, $7, $pop39
	i32.const	$push61=, 1
	i32.call	$drop=, memcpy@FUNCTION, $6, $pop40, $pop61
	i32.const	$push60=, 1
	i32.add 	$6=, $6, $pop60
	i32.const	$push59=, 1
	i32.add 	$push58=, $1, $pop59
	tee_local	$push57=, $1=, $pop58
	i32.ne  	$push18=, $4, $pop57
	br_if   	0, $pop18
.LBB98_6:
	end_loop
	end_block
	block   	
	i32.const	$push19=, 28
	i32.add 	$push67=, $0, $pop19
	tee_local	$push66=, $6=, $pop67
	i32.load	$push65=, 0($pop66)
	tee_local	$push64=, $1=, $pop65
	i32.eqz 	$push69=, $pop64
	br_if   	0, $pop69
	i32.const	$push20=, 32
	i32.add 	$push21=, $0, $pop20
	i32.store	0($pop21), $1
	call    	_ZdlPv@FUNCTION, $1
	i32.const	$push22=, 36
	i32.add 	$push23=, $0, $pop22
	i32.const	$push24=, 0
	i32.store	0($pop23), $pop24
	i64.const	$push25=, 0
	i64.store	0($6):p2align=2, $pop25
.LBB98_8:
	end_block
	i64.load	$push26=, 0($7)
	i64.store	0($6):p2align=2, $pop26
	i32.const	$push27=, 36
	i32.add 	$push28=, $0, $pop27
	i32.const	$push29=, 8
	i32.add 	$push30=, $7, $pop29
	i32.load	$push31=, 0($pop30)
	i32.store	0($pop28), $pop31
	i32.const	$push38=, 0
	i32.const	$push36=, 16
	i32.add 	$push37=, $7, $pop36
	i32.store	__stack_pointer($pop38), $pop37
	copy_local	$push70=, $0
	.endfunc
.Lfunc_end98:
	.size	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy17750730571693710178EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_, .Lfunc_end98-_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy17750730571693710178EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_

	.text
	.hidden	_ZN16test_transaction23send_action_inline_failEv
	.globl	_ZN16test_transaction23send_action_inline_failEv
	.type	_ZN16test_transaction23send_action_inline_failEv,@function
_ZN16test_transaction23send_action_inline_failEv:
	.local  	i32, i32, i64, i64, i64, i64, i64, i32
	i32.const	$push49=, 0
	i32.const	$push46=, 0
	i32.load	$push47=, __stack_pointer($pop46)
	i32.const	$push48=, 96
	i32.sub 	$push66=, $pop47, $pop48
	tee_local	$push65=, $7=, $pop66
	i32.store	__stack_pointer($pop49), $pop65
	i32.const	$push64=, 0
	i32.store	88($7), $pop64
	i64.const	$3=, 0
	i64.const	$push63=, 0
	i64.store	80($7), $pop63
	i64.const	$2=, 59
	i32.const	$1=, .L.str.9
	i64.const	$4=, 0
.LBB99_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push67=, 6
	i64.gt_u	$push0=, $3, $pop67
	br_if   	0, $pop0
	i32.load8_s	$push72=, 0($1)
	tee_local	$push71=, $0=, $pop72
	i32.const	$push70=, -97
	i32.add 	$push2=, $pop71, $pop70
	i32.const	$push69=, 255
	i32.and 	$push3=, $pop2, $pop69
	i32.const	$push68=, 25
	i32.gt_u	$push4=, $pop3, $pop68
	br_if   	1, $pop4
	i32.const	$push73=, 165
	i32.add 	$0=, $0, $pop73
	br      	2
.LBB99_4:
	end_block
	i64.const	$5=, 0
	i64.const	$push74=, 11
	i64.le_u	$push1=, $3, $pop74
	br_if   	2, $pop1
	br      	3
.LBB99_5:
	end_block
	i32.const	$push79=, 208
	i32.add 	$push5=, $0, $pop79
	i32.const	$push78=, 0
	i32.const	$push77=, -49
	i32.add 	$push6=, $0, $pop77
	i32.const	$push76=, 255
	i32.and 	$push7=, $pop6, $pop76
	i32.const	$push75=, 5
	i32.lt_u	$push8=, $pop7, $pop75
	i32.select	$0=, $pop5, $pop78, $pop8
.LBB99_6:
	end_block
	i64.extend_u/i32	$push9=, $0
	i64.const	$push81=, 56
	i64.shl 	$push10=, $pop9, $pop81
	i64.const	$push80=, 56
	i64.shr_s	$5=, $pop10, $pop80
.LBB99_7:
	end_block
	i64.const	$push83=, 31
	i64.and 	$push12=, $5, $pop83
	i64.const	$push82=, 4294967295
	i64.and 	$push11=, $2, $pop82
	i64.shl 	$5=, $pop12, $pop11
.LBB99_8:
	end_block
	i32.const	$push89=, 1
	i32.add 	$1=, $1, $pop89
	i64.const	$push88=, 1
	i64.add 	$3=, $3, $pop88
	i64.or  	$4=, $5, $4
	i64.const	$push87=, -5
	i64.add 	$push86=, $2, $pop87
	tee_local	$push85=, $2=, $pop86
	i64.const	$push84=, -6
	i64.ne  	$push13=, $pop85, $pop84
	br_if   	0, $pop13
	end_loop
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.11
	i64.const	$6=, 0
.LBB99_10:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push90=, 5
	i64.gt_u	$push14=, $3, $pop90
	br_if   	0, $pop14
	i32.load8_s	$push95=, 0($1)
	tee_local	$push94=, $0=, $pop95
	i32.const	$push93=, -97
	i32.add 	$push16=, $pop94, $pop93
	i32.const	$push92=, 255
	i32.and 	$push17=, $pop16, $pop92
	i32.const	$push91=, 25
	i32.gt_u	$push18=, $pop17, $pop91
	br_if   	1, $pop18
	i32.const	$push96=, 165
	i32.add 	$0=, $0, $pop96
	br      	2
.LBB99_13:
	end_block
	i64.const	$5=, 0
	i64.const	$push97=, 11
	i64.le_u	$push15=, $3, $pop97
	br_if   	2, $pop15
	br      	3
.LBB99_14:
	end_block
	i32.const	$push102=, 208
	i32.add 	$push19=, $0, $pop102
	i32.const	$push101=, 0
	i32.const	$push100=, -49
	i32.add 	$push20=, $0, $pop100
	i32.const	$push99=, 255
	i32.and 	$push21=, $pop20, $pop99
	i32.const	$push98=, 5
	i32.lt_u	$push22=, $pop21, $pop98
	i32.select	$0=, $pop19, $pop101, $pop22
.LBB99_15:
	end_block
	i64.extend_u/i32	$push23=, $0
	i64.const	$push104=, 56
	i64.shl 	$push24=, $pop23, $pop104
	i64.const	$push103=, 56
	i64.shr_s	$5=, $pop24, $pop103
.LBB99_16:
	end_block
	i64.const	$push106=, 31
	i64.and 	$push26=, $5, $pop106
	i64.const	$push105=, 4294967295
	i64.and 	$push25=, $2, $pop105
	i64.shl 	$5=, $pop26, $pop25
.LBB99_17:
	end_block
	i32.const	$push112=, 1
	i32.add 	$1=, $1, $pop112
	i64.const	$push111=, 1
	i64.add 	$3=, $3, $pop111
	i64.or  	$6=, $5, $6
	i64.const	$push110=, -5
	i64.add 	$push109=, $2, $pop110
	tee_local	$push108=, $2=, $pop109
	i64.const	$push107=, -6
	i64.ne  	$push27=, $pop108, $pop107
	br_if   	0, $pop27
	end_loop
	i64.store	16($7), $6
	i64.store	8($7), $4
	i32.const	$push28=, 16
	i32.call	$push120=, _Znwj@FUNCTION, $pop28
	tee_local	$push119=, $1=, $pop120
	i32.const	$push29=, 12
	i32.add 	$push30=, $pop119, $pop29
	i32.const	$push53=, 8
	i32.add 	$push54=, $7, $pop53
	i32.const	$push118=, 12
	i32.add 	$push31=, $pop54, $pop118
	i32.load	$push32=, 0($pop31)
	i32.store	0($pop30), $pop32
	i32.const	$push33=, 4
	i32.add 	$push34=, $1, $pop33
	i32.load	$push35=, 12($7)
	i32.store	0($pop34), $pop35
	i32.store	24($7), $1
	i32.load	$push36=, 8($7)
	i32.store	0($1), $pop36
	i32.const	$push117=, 16
	i32.add 	$push116=, $1, $pop117
	tee_local	$push115=, $0=, $pop116
	i32.store	32($7), $pop115
	i32.const	$push37=, 8
	i32.add 	$push38=, $1, $pop37
	i32.load	$push39=, 16($7)
	i32.store	0($pop38), $pop39
	i32.store	28($7), $0
	i32.const	$push55=, 40
	i32.add 	$push56=, $7, $pop55
	i32.const	$push57=, 24
	i32.add 	$push58=, $7, $pop57
	i32.const	$push59=, 80
	i32.add 	$push60=, $7, $pop59
	i32.call	$1=, _ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_@FUNCTION, $pop56, $pop58, $pop60
	block   	
	i32.load	$push114=, 24($7)
	tee_local	$push113=, $0=, $pop114
	i32.eqz 	$push131=, $pop113
	br_if   	0, $pop131
	i32.store	28($7), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB99_20:
	end_block
	i32.const	$push61=, 8
	i32.add 	$push62=, $7, $pop61
	call    	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop62, $1
	i32.load	$push124=, 8($7)
	tee_local	$push123=, $0=, $pop124
	i32.load	$push40=, 12($7)
	i32.sub 	$push41=, $pop40, $0
	call    	send_inline@FUNCTION, $pop123, $pop41
	block   	
	i32.load	$push122=, 8($7)
	tee_local	$push121=, $0=, $pop122
	i32.eqz 	$push132=, $pop121
	br_if   	0, $pop132
	i32.store	12($7), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB99_22:
	end_block
	block   	
	i32.load	$push126=, 28($1)
	tee_local	$push125=, $0=, $pop126
	i32.eqz 	$push133=, $pop125
	br_if   	0, $pop133
	i32.const	$push42=, 32
	i32.add 	$push43=, $1, $pop42
	i32.store	0($pop43), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB99_24:
	end_block
	block   	
	i32.load	$push128=, 16($1)
	tee_local	$push127=, $0=, $pop128
	i32.eqz 	$push134=, $pop127
	br_if   	0, $pop134
	i32.const	$push44=, 20
	i32.add 	$push45=, $1, $pop44
	i32.store	0($pop45), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB99_26:
	end_block
	block   	
	i32.load	$push130=, 80($7)
	tee_local	$push129=, $1=, $pop130
	i32.eqz 	$push135=, $pop129
	br_if   	0, $pop135
	i32.store	84($7), $1
	call    	_ZdlPv@FUNCTION, $1
.LBB99_28:
	end_block
	i32.const	$push52=, 0
	i32.const	$push50=, 96
	i32.add 	$push51=, $7, $pop50
	i32.store	__stack_pointer($pop52), $pop51
	.endfunc
.Lfunc_end99:
	.size	_ZN16test_transaction23send_action_inline_failEv, .Lfunc_end99-_ZN16test_transaction23send_action_inline_failEv

	.section	.text._ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,"axG",@progbits,_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,comdat
	.hidden	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_
	.weak	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_
	.type	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,@function
_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	i32.const	$push35=, 0
	i32.const	$push32=, 0
	i32.load	$push33=, __stack_pointer($pop32)
	i32.const	$push34=, 16
	i32.sub 	$push54=, $pop33, $pop34
	tee_local	$push53=, $7=, $pop54
	i32.store	__stack_pointer($pop35), $pop53
	i64.const	$push0=, 0
	i64.store	16($0):p2align=2, $pop0
	i32.const	$push1=, 24
	i32.add 	$push52=, $0, $pop1
	tee_local	$push51=, $6=, $pop52
	i64.const	$push50=, 0
	i64.store	0($pop51):p2align=2, $pop50
	i32.const	$push2=, 32
	i32.add 	$push3=, $0, $pop2
	i64.const	$push49=, 0
	i64.store	0($pop3):p2align=2, $pop49
	i64.const	$push4=, -3841127010667593728
	i64.store	0($0), $pop4
	i64.const	$push5=, -8665432478290165179
	i64.store	8($0), $pop5
	i32.load	$push6=, 0($1)
	i32.store	16($0), $pop6
	i32.const	$push7=, 20
	i32.add 	$push8=, $0, $pop7
	i32.load	$push9=, 4($1)
	i32.store	0($pop8), $pop9
	i32.load	$push10=, 8($1)
	i32.store	0($6), $pop10
	i32.const	$6=, 0
	i32.const	$push48=, 0
	i32.store	8($1), $pop48
	i64.const	$push47=, 0
	i64.store	0($1):p2align=2, $pop47
	i32.const	$push46=, 0
	i32.store	8($7), $pop46
	i64.const	$push45=, 0
	i64.store	0($7), $pop45
	i32.const	$5=, 0
	block   	
	i32.load	$push44=, 0($2)
	tee_local	$push43=, $1=, $pop44
	i32.load	$push42=, 4($2)
	tee_local	$push41=, $4=, $pop42
	i32.eq  	$push11=, $pop43, $pop41
	br_if   	0, $pop11
	i32.sub 	$push56=, $4, $1
	tee_local	$push55=, $3=, $pop56
	i32.eqz 	$push68=, $pop55
	br_if   	0, $pop68
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $7, $3
	i32.const	$push12=, 4
	i32.add 	$push13=, $2, $pop12
	i32.load	$4=, 0($pop13)
	i32.load	$1=, 0($2)
	i32.load	$5=, 4($7)
	i32.load	$6=, 0($7)
.LBB100_3:
	end_block
	block   	
	i32.eq  	$push14=, $1, $4
	br_if   	0, $pop14
.LBB100_5:
	loop    	
	i32.load8_u	$push15=, 0($1)
	i32.store8	15($7), $pop15
	i32.sub 	$push16=, $5, $6
	i32.const	$push63=, 0
	i32.gt_s	$push17=, $pop16, $pop63
	i32.const	$push62=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop17, $pop62
	i32.const	$push39=, 15
	i32.add 	$push40=, $7, $pop39
	i32.const	$push61=, 1
	i32.call	$drop=, memcpy@FUNCTION, $6, $pop40, $pop61
	i32.const	$push60=, 1
	i32.add 	$6=, $6, $pop60
	i32.const	$push59=, 1
	i32.add 	$push58=, $1, $pop59
	tee_local	$push57=, $1=, $pop58
	i32.ne  	$push18=, $4, $pop57
	br_if   	0, $pop18
.LBB100_6:
	end_loop
	end_block
	block   	
	i32.const	$push19=, 28
	i32.add 	$push67=, $0, $pop19
	tee_local	$push66=, $6=, $pop67
	i32.load	$push65=, 0($pop66)
	tee_local	$push64=, $1=, $pop65
	i32.eqz 	$push69=, $pop64
	br_if   	0, $pop69
	i32.const	$push20=, 32
	i32.add 	$push21=, $0, $pop20
	i32.store	0($pop21), $1
	call    	_ZdlPv@FUNCTION, $1
	i32.const	$push22=, 36
	i32.add 	$push23=, $0, $pop22
	i32.const	$push24=, 0
	i32.store	0($pop23), $pop24
	i64.const	$push25=, 0
	i64.store	0($6):p2align=2, $pop25
.LBB100_8:
	end_block
	i64.load	$push26=, 0($7)
	i64.store	0($6):p2align=2, $pop26
	i32.const	$push27=, 36
	i32.add 	$push28=, $0, $pop27
	i32.const	$push29=, 8
	i32.add 	$push30=, $7, $pop29
	i32.load	$push31=, 0($pop30)
	i32.store	0($pop28), $pop31
	i32.const	$push38=, 0
	i32.const	$push36=, 16
	i32.add 	$push37=, $7, $pop36
	i32.store	__stack_pointer($pop38), $pop37
	copy_local	$push70=, $0
	.endfunc
.Lfunc_end100:
	.size	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_, .Lfunc_end100-_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_

	.text
	.hidden	_ZN16test_transaction23test_tapos_block_prefixEv
	.globl	_ZN16test_transaction23test_tapos_block_prefixEv
	.type	_ZN16test_transaction23test_tapos_block_prefixEv,@function
_ZN16test_transaction23test_tapos_block_prefixEv:
	.local  	i32
	i32.const	$push8=, 0
	i32.const	$push5=, 0
	i32.load	$push6=, __stack_pointer($pop5)
	i32.const	$push7=, 16
	i32.sub 	$push15=, $pop6, $pop7
	tee_local	$push14=, $0=, $pop15
	i32.store	__stack_pointer($pop8), $pop14
	i32.const	$push12=, 12
	i32.add 	$push13=, $0, $pop12
	i32.const	$push0=, 4
	i32.call	$drop=, read_action_data@FUNCTION, $pop13, $pop0
	i32.load	$push1=, 12($0)
	i32.call	$push2=, tapos_block_prefix@FUNCTION
	i32.eq  	$push3=, $pop1, $pop2
	i32.const	$push4=, .L.str.251
	call    	eosio_assert@FUNCTION, $pop3, $pop4
	i32.const	$push11=, 0
	i32.const	$push9=, 16
	i32.add 	$push10=, $0, $pop9
	i32.store	__stack_pointer($pop11), $pop10
	.endfunc
.Lfunc_end101:
	.size	_ZN16test_transaction23test_tapos_block_prefixEv, .Lfunc_end101-_ZN16test_transaction23test_tapos_block_prefixEv

	.hidden	_ZN16test_transaction20test_tapos_block_numEv
	.globl	_ZN16test_transaction20test_tapos_block_numEv
	.type	_ZN16test_transaction20test_tapos_block_numEv,@function
_ZN16test_transaction20test_tapos_block_numEv:
	.local  	i32
	i32.const	$push8=, 0
	i32.const	$push5=, 0
	i32.load	$push6=, __stack_pointer($pop5)
	i32.const	$push7=, 16
	i32.sub 	$push15=, $pop6, $pop7
	tee_local	$push14=, $0=, $pop15
	i32.store	__stack_pointer($pop8), $pop14
	i32.const	$push12=, 12
	i32.add 	$push13=, $0, $pop12
	i32.const	$push0=, 4
	i32.call	$drop=, read_action_data@FUNCTION, $pop13, $pop0
	i32.load	$push1=, 12($0)
	i32.call	$push2=, tapos_block_num@FUNCTION
	i32.eq  	$push3=, $pop1, $pop2
	i32.const	$push4=, .L.str.252
	call    	eosio_assert@FUNCTION, $pop3, $pop4
	i32.const	$push11=, 0
	i32.const	$push9=, 16
	i32.add 	$push10=, $0, $pop9
	i32.store	__stack_pointer($pop11), $pop10
	.endfunc
.Lfunc_end102:
	.size	_ZN16test_transaction20test_tapos_block_numEv, .Lfunc_end102-_ZN16test_transaction20test_tapos_block_numEv

	.hidden	_ZN16test_transaction21test_read_transactionEv
	.globl	_ZN16test_transaction21test_read_transactionEv
	.type	_ZN16test_transaction21test_read_transactionEv,@function
_ZN16test_transaction21test_read_transactionEv:
	.local  	i32, i32, i32, i32
	i32.const	$push12=, 0
	i32.const	$push9=, 0
	i32.load	$push10=, __stack_pointer($pop9)
	i32.const	$push11=, 32
	i32.sub 	$push26=, $pop10, $pop11
	tee_local	$push25=, $3=, $pop26
	i32.store	__stack_pointer($pop12), $pop25
	i32.const	$push8=, 0
	i32.call	$push24=, transaction_size@FUNCTION
	tee_local	$push23=, $0=, $pop24
	i32.const	$push0=, 15
	i32.add 	$push1=, $pop23, $pop0
	i32.const	$push2=, -16
	i32.and 	$push3=, $pop1, $pop2
	i32.sub 	$push22=, $3, $pop3
	tee_local	$push21=, $1=, $pop22
	copy_local	$push16=, $pop21
	i32.store	__stack_pointer($pop8), $pop16
	i32.call	$push20=, read_transaction@FUNCTION, $1, $0
	tee_local	$push19=, $2=, $pop20
	i32.eq  	$push5=, $0, $pop19
	i32.const	$push6=, .L.str.253
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	copy_local	$push18=, $3
	tee_local	$push17=, $0=, $pop18
	call    	sha256@FUNCTION, $1, $2, $pop17
	i32.const	$push7=, 32
	call    	printhex@FUNCTION, $0, $pop7
	copy_local	$push4=, $3
	copy_local	$drop=, $pop4
	i32.const	$push15=, 0
	i32.const	$push13=, 32
	i32.add 	$push14=, $0, $pop13
	i32.store	__stack_pointer($pop15), $pop14
	.endfunc
.Lfunc_end103:
	.size	_ZN16test_transaction21test_read_transactionEv, .Lfunc_end103-_ZN16test_transaction21test_read_transactionEv

	.hidden	_ZN16test_transaction21test_transaction_sizeEv
	.globl	_ZN16test_transaction21test_transaction_sizeEv
	.type	_ZN16test_transaction21test_transaction_sizeEv,@function
_ZN16test_transaction21test_transaction_sizeEv:
	.local  	i32, i32
	i32.const	$push11=, 0
	i32.const	$push8=, 0
	i32.load	$push9=, __stack_pointer($pop8)
	i32.const	$push10=, 16
	i32.sub 	$push18=, $pop9, $pop10
	tee_local	$push17=, $1=, $pop18
	i32.store	__stack_pointer($pop11), $pop17
	i32.const	$push0=, 0
	i32.store	12($1), $pop0
	i32.const	$push15=, 12
	i32.add 	$push16=, $1, $pop15
	i32.const	$push1=, 4
	i32.call	$drop=, read_action_data@FUNCTION, $pop16, $pop1
	i32.call	$0=, transaction_size@FUNCTION
	i32.const	$push2=, .L.str.254
	call    	prints@FUNCTION, $pop2
	i64.extend_u/i32	$push3=, $0
	call    	printui@FUNCTION, $pop3
	i32.load	$push4=, 12($1)
	i32.call	$push5=, transaction_size@FUNCTION
	i32.eq  	$push6=, $pop4, $pop5
	i32.const	$push7=, .L.str.255
	call    	eosio_assert@FUNCTION, $pop6, $pop7
	i32.const	$push14=, 0
	i32.const	$push12=, 16
	i32.add 	$push13=, $1, $pop12
	i32.store	__stack_pointer($pop14), $pop13
	.endfunc
.Lfunc_end104:
	.size	_ZN16test_transaction21test_transaction_sizeEv, .Lfunc_end104-_ZN16test_transaction21test_transaction_sizeEv

	.hidden	_ZN16test_transaction16send_transactionEyyy
	.globl	_ZN16test_transaction16send_transactionEyyy
	.type	_ZN16test_transaction16send_transactionEyyy,@function
_ZN16test_transaction16send_transactionEyyy:
	.param  	i64, i64, i64
	.local  	i32, i32, i32, i32, i64, i64, i64, i64, i64, i32
	i32.const	$push78=, 0
	i32.const	$push75=, 0
	i32.load	$push76=, __stack_pointer($pop75)
	i32.const	$push77=, 128
	i32.sub 	$push109=, $pop76, $pop77
	tee_local	$push108=, $12=, $pop109
	i32.store	__stack_pointer($pop78), $pop108
	i32.const	$4=, 0
	i32.const	$push82=, 80
	i32.add 	$push83=, $12, $pop82
	i32.const	$push107=, 12
	i32.add 	$push1=, $pop83, $pop107
	i32.const	$push106=, 0
	i32.load8_u	$push0=, .L_ZZN16test_transaction16send_transactionEyyyE7payload+12($pop106)
	i32.store8	0($pop1), $pop0
	i32.const	$push84=, 80
	i32.add 	$push85=, $12, $pop84
	i32.const	$push105=, 8
	i32.add 	$push3=, $pop85, $pop105
	i32.const	$push104=, 0
	i32.load	$push2=, .L_ZZN16test_transaction16send_transactionEyyyE7payload+8($pop104):p2align=0
	i32.store	0($pop3), $pop2
	i32.const	$push103=, 0
	i64.load	$push4=, .L_ZZN16test_transaction16send_transactionEyyyE7payload($pop103):p2align=0
	i64.store	80($12):p2align=2, $pop4
	i32.const	$push102=, 0
	i32.store	72($12), $pop102
	i64.const	$push5=, 0
	i64.store	64($12), $pop5
	i32.const	$5=, 0
	i32.const	$6=, 0
.LBB105_1:
	block   	
	loop    	
	i32.const	$push86=, 80
	i32.add 	$push87=, $12, $pop86
	i32.add 	$3=, $pop87, $6
	block   	
	block   	
	i32.eq  	$push6=, $5, $4
	br_if   	0, $pop6
	i32.load8_u	$push7=, 0($3)
	i32.store8	0($5), $pop7
	i32.load	$push8=, 68($12)
	i32.const	$push113=, 1
	i32.add 	$push9=, $pop8, $pop113
	i32.store	68($12), $pop9
	i32.const	$push112=, 12
	i32.ne  	$push10=, $6, $pop112
	br_if   	1, $pop10
	br      	3
.LBB105_3:
	end_block
	i32.const	$push88=, 64
	i32.add 	$push89=, $12, $pop88
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_@FUNCTION, $pop89, $3
	i32.const	$push114=, 12
	i32.eq  	$push11=, $6, $pop114
	br_if   	2, $pop11
.LBB105_4:
	end_block
	i32.const	$push111=, 1
	i32.add 	$6=, $6, $pop111
	i32.const	$push100=, 64
	i32.add 	$push101=, $12, $pop100
	i32.const	$push110=, 8
	i32.add 	$push12=, $pop101, $pop110
	i32.load	$4=, 0($pop12)
	i32.load	$5=, 68($12)
	br      	0
.LBB105_5:
	end_loop
	end_block
	i64.call	$8=, current_time@FUNCTION
	i32.const	$push13=, 28
	i32.add 	$push14=, $12, $pop13
	i32.const	$push126=, 0
	i32.store	0($pop14), $pop126
	i32.const	$push15=, 32
	i32.add 	$push16=, $12, $pop15
	i32.const	$push125=, 0
	i32.store	0($pop16), $pop125
	i32.const	$push124=, 0
	i32.store	12($12), $pop124
	i32.const	$push123=, 0
	i32.store8	16($12), $pop123
	i32.const	$push122=, 0
	i32.store	20($12), $pop122
	i32.const	$push121=, 0
	i32.store	24($12), $pop121
	i64.const	$push17=, 1000000
	i64.div_u	$push18=, $8, $pop17
	i32.wrap/i64	$push19=, $pop18
	i32.const	$push20=, 60
	i32.add 	$push21=, $pop19, $pop20
	i32.store	0($12), $pop21
	i32.const	$push120=, 0
	i32.store	36($12), $pop120
	i32.const	$push22=, 40
	i32.add 	$push23=, $12, $pop22
	i32.const	$push119=, 0
	i32.store	0($pop23), $pop119
	i32.const	$push24=, 44
	i32.add 	$push25=, $12, $pop24
	i32.const	$push118=, 0
	i32.store	0($pop25), $pop118
	i32.const	$push117=, 0
	i32.store	48($12), $pop117
	i32.const	$push26=, 52
	i32.add 	$push27=, $12, $pop26
	i32.const	$push116=, 0
	i32.store	0($pop27), $pop116
	i32.const	$push28=, 56
	i32.add 	$push29=, $12, $pop28
	i32.const	$push115=, 0
	i32.store	0($pop29), $pop115
	i32.const	$push30=, 36
	i32.add 	$4=, $12, $pop30
	i64.const	$8=, 0
	i64.const	$7=, 59
	i32.const	$6=, .L.str.9
	i64.const	$9=, 0
.LBB105_6:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push127=, 6
	i64.gt_u	$push31=, $8, $pop127
	br_if   	0, $pop31
	i32.load8_s	$push132=, 0($6)
	tee_local	$push131=, $5=, $pop132
	i32.const	$push130=, -97
	i32.add 	$push33=, $pop131, $pop130
	i32.const	$push129=, 255
	i32.and 	$push34=, $pop33, $pop129
	i32.const	$push128=, 25
	i32.gt_u	$push35=, $pop34, $pop128
	br_if   	1, $pop35
	i32.const	$push133=, 165
	i32.add 	$5=, $5, $pop133
	br      	2
.LBB105_9:
	end_block
	i64.const	$10=, 0
	i64.const	$push134=, 11
	i64.le_u	$push32=, $8, $pop134
	br_if   	2, $pop32
	br      	3
.LBB105_10:
	end_block
	i32.const	$push139=, 208
	i32.add 	$push36=, $5, $pop139
	i32.const	$push138=, 0
	i32.const	$push137=, -49
	i32.add 	$push37=, $5, $pop137
	i32.const	$push136=, 255
	i32.and 	$push38=, $pop37, $pop136
	i32.const	$push135=, 5
	i32.lt_u	$push39=, $pop38, $pop135
	i32.select	$5=, $pop36, $pop138, $pop39
.LBB105_11:
	end_block
	i64.extend_u/i32	$push40=, $5
	i64.const	$push141=, 56
	i64.shl 	$push41=, $pop40, $pop141
	i64.const	$push140=, 56
	i64.shr_s	$10=, $pop41, $pop140
.LBB105_12:
	end_block
	i64.const	$push143=, 31
	i64.and 	$push43=, $10, $pop143
	i64.const	$push142=, 4294967295
	i64.and 	$push42=, $7, $pop142
	i64.shl 	$10=, $pop43, $pop42
.LBB105_13:
	end_block
	i32.const	$push149=, 1
	i32.add 	$6=, $6, $pop149
	i64.const	$push148=, 1
	i64.add 	$8=, $8, $pop148
	i64.or  	$9=, $10, $9
	i64.const	$push147=, -5
	i64.add 	$push146=, $7, $pop147
	tee_local	$push145=, $7=, $pop146
	i64.const	$push144=, -6
	i64.ne  	$push44=, $pop145, $pop144
	br_if   	0, $pop44
	end_loop
	i64.const	$8=, 0
	i64.const	$7=, 59
	i32.const	$6=, .L.str.11
	i64.const	$11=, 0
.LBB105_15:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push150=, 5
	i64.gt_u	$push45=, $8, $pop150
	br_if   	0, $pop45
	i32.load8_s	$push155=, 0($6)
	tee_local	$push154=, $5=, $pop155
	i32.const	$push153=, -97
	i32.add 	$push47=, $pop154, $pop153
	i32.const	$push152=, 255
	i32.and 	$push48=, $pop47, $pop152
	i32.const	$push151=, 25
	i32.gt_u	$push49=, $pop48, $pop151
	br_if   	1, $pop49
	i32.const	$push156=, 165
	i32.add 	$5=, $5, $pop156
	br      	2
.LBB105_18:
	end_block
	i64.const	$10=, 0
	i64.const	$push157=, 11
	i64.le_u	$push46=, $8, $pop157
	br_if   	2, $pop46
	br      	3
.LBB105_19:
	end_block
	i32.const	$push162=, 208
	i32.add 	$push50=, $5, $pop162
	i32.const	$push161=, 0
	i32.const	$push160=, -49
	i32.add 	$push51=, $5, $pop160
	i32.const	$push159=, 255
	i32.and 	$push52=, $pop51, $pop159
	i32.const	$push158=, 5
	i32.lt_u	$push53=, $pop52, $pop158
	i32.select	$5=, $pop50, $pop161, $pop53
.LBB105_20:
	end_block
	i64.extend_u/i32	$push54=, $5
	i64.const	$push164=, 56
	i64.shl 	$push55=, $pop54, $pop164
	i64.const	$push163=, 56
	i64.shr_s	$10=, $pop55, $pop163
.LBB105_21:
	end_block
	i64.const	$push166=, 31
	i64.and 	$push57=, $10, $pop166
	i64.const	$push165=, 4294967295
	i64.and 	$push56=, $7, $pop165
	i64.shl 	$10=, $pop57, $pop56
.LBB105_22:
	end_block
	i32.const	$push172=, 1
	i32.add 	$6=, $6, $pop172
	i64.const	$push171=, 1
	i64.add 	$8=, $8, $pop171
	i64.or  	$11=, $10, $11
	i64.const	$push170=, -5
	i64.add 	$push169=, $7, $pop170
	tee_local	$push168=, $7=, $pop169
	i64.const	$push167=, -6
	i64.ne  	$push58=, $pop168, $pop167
	br_if   	0, $pop58
	end_loop
	i64.store	104($12), $11
	i64.store	96($12), $9
	i32.const	$push59=, 16
	i32.call	$push180=, _Znwj@FUNCTION, $pop59
	tee_local	$push179=, $6=, $pop180
	i32.const	$push60=, 12
	i32.add 	$push61=, $pop179, $pop60
	i32.const	$push90=, 96
	i32.add 	$push91=, $12, $pop90
	i32.const	$push178=, 12
	i32.add 	$push62=, $pop91, $pop178
	i32.load	$push63=, 0($pop62)
	i32.store	0($pop61), $pop63
	i32.const	$push64=, 4
	i32.add 	$push65=, $6, $pop64
	i32.load	$push66=, 100($12)
	i32.store	0($pop65), $pop66
	i32.store	112($12), $6
	i32.load	$push67=, 96($12)
	i32.store	0($6), $pop67
	i32.const	$push177=, 16
	i32.add 	$push176=, $6, $pop177
	tee_local	$push175=, $5=, $pop176
	i32.store	120($12), $pop175
	i32.const	$push68=, 8
	i32.add 	$push69=, $6, $pop68
	i32.load	$push70=, 104($12)
	i32.store	0($pop69), $pop70
	i32.store	116($12), $5
	i32.const	$push92=, 112
	i32.add 	$push93=, $12, $pop92
	i32.const	$push94=, 64
	i32.add 	$push95=, $12, $pop94
	call    	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEEvDpOT_@FUNCTION, $4, $pop93, $pop95
	block   	
	i32.load	$push174=, 112($12)
	tee_local	$push173=, $6=, $pop174
	i32.eqz 	$push188=, $pop173
	br_if   	0, $pop188
	i32.store	116($12), $6
	call    	_ZdlPv@FUNCTION, $6
.LBB105_25:
	end_block
	i32.const	$push96=, 112
	i32.add 	$push97=, $12, $pop96
	call    	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop97, $12
	i64.const	$push71=, 0
	i64.store	96($12), $pop71
	i64.const	$push185=, 0
	i64.store	104($12), $pop185
	i32.const	$push98=, 96
	i32.add 	$push99=, $12, $pop98
	i32.load	$push184=, 112($12)
	tee_local	$push183=, $6=, $pop184
	i32.load	$push72=, 116($12)
	i32.sub 	$push73=, $pop72, $6
	i32.const	$push74=, 0
	call    	send_deferred@FUNCTION, $pop99, $0, $pop183, $pop73, $pop74
	block   	
	i32.load	$push182=, 112($12)
	tee_local	$push181=, $6=, $pop182
	i32.eqz 	$push189=, $pop181
	br_if   	0, $pop189
	i32.store	116($12), $6
	call    	_ZdlPv@FUNCTION, $6
.LBB105_27:
	end_block
	i32.call	$drop=, _ZN5eosio11transactionD2Ev@FUNCTION, $12
	block   	
	i32.load	$push187=, 64($12)
	tee_local	$push186=, $6=, $pop187
	i32.eqz 	$push190=, $pop186
	br_if   	0, $pop190
	i32.store	68($12), $6
	call    	_ZdlPv@FUNCTION, $6
.LBB105_29:
	end_block
	i32.const	$push81=, 0
	i32.const	$push79=, 128
	i32.add 	$push80=, $12, $pop79
	i32.store	__stack_pointer($pop81), $pop80
	.endfunc
.Lfunc_end105:
	.size	_ZN16test_transaction16send_transactionEyyy, .Lfunc_end105-_ZN16test_transaction16send_transactionEyyy

	.section	.text._ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEEvDpOT_:
	.param  	i32, i32, i32
	.local  	i32, i32, i32, i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push53=, 0($0)
	tee_local	$push52=, $8=, $pop53
	i32.sub 	$push1=, $pop0, $pop52
	i32.const	$push51=, 40
	i32.div_s	$push50=, $pop1, $pop51
	tee_local	$push49=, $9=, $pop50
	i32.const	$push2=, 1
	i32.add 	$push48=, $pop49, $pop2
	tee_local	$push47=, $6=, $pop48
	i32.const	$push3=, 107374183
	i32.ge_u	$push4=, $pop47, $pop3
	br_if   	0, $pop4
	i32.const	$7=, 107374182
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $8
	i32.const	$push56=, 40
	i32.div_s	$push55=, $pop6, $pop56
	tee_local	$push54=, $8=, $pop55
	i32.const	$push7=, 53687090
	i32.gt_u	$push8=, $pop54, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push60=, $8, $pop9
	tee_local	$push59=, $7=, $pop60
	i32.lt_u	$push10=, $7, $6
	i32.select	$push58=, $6, $pop59, $pop10
	tee_local	$push57=, $7=, $pop58
	i32.eqz 	$push133=, $pop57
	br_if   	1, $pop133
.LBB106_3:
	end_block
	i32.const	$push11=, 40
	i32.mul 	$push12=, $7, $pop11
	i32.call	$8=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB106_4:
	end_block
	i32.const	$7=, 0
	i32.const	$8=, 0
	br      	1
.LBB106_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB106_6:
	end_block
	i32.const	$push13=, 40
	i32.mul 	$push14=, $7, $pop13
	i32.add 	$3=, $8, $pop14
	i32.const	$push71=, 40
	i32.mul 	$push15=, $9, $pop71
	i32.add 	$push70=, $8, $pop15
	tee_local	$push69=, $9=, $pop70
	i32.call	$push68=, _ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_@FUNCTION, $pop69, $1, $2
	tee_local	$push67=, $8=, $pop68
	i32.const	$push66=, 40
	i32.add 	$4=, $pop67, $pop66
	block   	
	block   	
	i32.const	$push65=, 4
	i32.add 	$push16=, $0, $pop65
	i32.load	$push64=, 0($pop16)
	tee_local	$push63=, $1=, $pop64
	i32.load	$push62=, 0($0)
	tee_local	$push61=, $7=, $pop62
	i32.eq  	$push17=, $pop63, $pop61
	br_if   	0, $pop17
	i32.const	$push73=, 0
	i32.sub 	$5=, $pop73, $7
	i32.const	$push72=, -20
	i32.add 	$7=, $1, $pop72
.LBB106_8:
	loop    	
	i32.const	$push119=, -32
	i32.add 	$push18=, $8, $pop119
	i32.const	$push118=, -12
	i32.add 	$push19=, $7, $pop118
	i64.load	$push20=, 0($pop19)
	i64.store	0($pop18), $pop20
	i32.const	$push117=, -40
	i32.add 	$push21=, $8, $pop117
	i32.const	$push116=, -20
	i32.add 	$push22=, $7, $pop116
	i64.load	$push23=, 0($pop22)
	i64.store	0($pop21), $pop23
	i32.const	$push115=, -24
	i32.add 	$push114=, $8, $pop115
	tee_local	$push113=, $1=, $pop114
	i64.const	$push112=, 0
	i64.store	0($pop113):p2align=2, $pop112
	i32.const	$push111=, -16
	i32.add 	$push110=, $8, $pop111
	tee_local	$push109=, $2=, $pop110
	i32.const	$push108=, 0
	i32.store	0($pop109), $pop108
	i32.const	$push107=, -4
	i32.add 	$push106=, $7, $pop107
	tee_local	$push105=, $6=, $pop106
	i32.load	$push24=, 0($pop105)
	i32.store	0($1), $pop24
	i32.const	$push104=, -20
	i32.add 	$push25=, $8, $pop104
	i32.load	$push26=, 0($7)
	i32.store	0($pop25), $pop26
	i32.const	$push103=, 4
	i32.add 	$push102=, $7, $pop103
	tee_local	$push101=, $1=, $pop102
	i32.load	$push27=, 0($pop101)
	i32.store	0($2), $pop27
	i32.const	$push100=, 0
	i32.store	0($1), $pop100
	i32.const	$push99=, -12
	i32.add 	$push98=, $8, $pop99
	tee_local	$push97=, $1=, $pop98
	i64.const	$push96=, 0
	i64.store	0($pop97):p2align=2, $pop96
	i64.const	$push95=, 0
	i64.store	0($6):p2align=2, $pop95
	i32.const	$push94=, -4
	i32.add 	$push93=, $8, $pop94
	tee_local	$push92=, $2=, $pop93
	i32.const	$push91=, 0
	i32.store	0($pop92), $pop91
	i32.const	$push90=, 8
	i32.add 	$push89=, $7, $pop90
	tee_local	$push88=, $6=, $pop89
	i32.load	$push28=, 0($pop88)
	i32.store	0($1), $pop28
	i32.const	$push87=, -8
	i32.add 	$push29=, $8, $pop87
	i32.const	$push86=, 12
	i32.add 	$push30=, $7, $pop86
	i32.load	$push31=, 0($pop30)
	i32.store	0($pop29), $pop31
	i32.const	$push85=, 16
	i32.add 	$push84=, $7, $pop85
	tee_local	$push83=, $8=, $pop84
	i32.load	$push32=, 0($pop83)
	i32.store	0($2), $pop32
	i32.const	$push82=, 0
	i32.store	0($8), $pop82
	i64.const	$push81=, 0
	i64.store	0($6):p2align=2, $pop81
	i32.const	$push80=, -40
	i32.add 	$push79=, $9, $pop80
	tee_local	$push78=, $9=, $pop79
	copy_local	$8=, $pop78
	i32.const	$push77=, -40
	i32.add 	$push76=, $7, $pop77
	tee_local	$push75=, $7=, $pop76
	i32.add 	$push33=, $pop75, $5
	i32.const	$push74=, -20
	i32.ne  	$push34=, $pop33, $pop74
	br_if   	0, $pop34
	end_loop
	i32.const	$push35=, 4
	i32.add 	$push36=, $0, $pop35
	i32.load	$7=, 0($pop36)
	i32.load	$1=, 0($0)
	br      	1
.LBB106_10:
	end_block
	copy_local	$1=, $7
.LBB106_11:
	end_block
	i32.store	0($0), $9
	i32.const	$push120=, 4
	i32.add 	$push37=, $0, $pop120
	i32.store	0($pop37), $4
	i32.const	$push38=, 8
	i32.add 	$push39=, $0, $pop38
	i32.store	0($pop39), $3
	block   	
	i32.eq  	$push40=, $7, $1
	br_if   	0, $pop40
	i32.const	$push41=, 0
	i32.sub 	$9=, $pop41, $1
	i32.const	$push121=, -24
	i32.add 	$7=, $7, $pop121
.LBB106_13:
	loop    	
	block   	
	i32.const	$push124=, 12
	i32.add 	$push42=, $7, $pop124
	i32.load	$push123=, 0($pop42)
	tee_local	$push122=, $8=, $pop123
	i32.eqz 	$push134=, $pop122
	br_if   	0, $pop134
	i32.const	$push125=, 16
	i32.add 	$push43=, $7, $pop125
	i32.store	0($pop43), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB106_15:
	end_block
	block   	
	i32.load	$push127=, 0($7)
	tee_local	$push126=, $8=, $pop127
	i32.eqz 	$push135=, $pop126
	br_if   	0, $pop135
	i32.const	$push128=, 4
	i32.add 	$push44=, $7, $pop128
	i32.store	0($pop44), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB106_17:
	end_block
	i32.const	$push132=, -40
	i32.add 	$push131=, $7, $pop132
	tee_local	$push130=, $7=, $pop131
	i32.add 	$push45=, $pop130, $9
	i32.const	$push129=, -24
	i32.ne  	$push46=, $pop45, $pop129
	br_if   	0, $pop46
.LBB106_18:
	end_loop
	end_block
	block   	
	i32.eqz 	$push136=, $1
	br_if   	0, $pop136
	call    	_ZdlPv@FUNCTION, $1
.LBB106_20:
	end_block
	.endfunc
.Lfunc_end106:
	.size	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEEvDpOT_, .Lfunc_end106-_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEEvDpOT_

	.section	.text._ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_,"axG",@progbits,_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_,comdat
	.hidden	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
	.weak	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
	.type	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_,@function
_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_:
	.param  	i32, i32
	.local  	i32, i32, i32
	i32.const	$push14=, 0
	i32.const	$push11=, 0
	i32.load	$push12=, __stack_pointer($pop11)
	i32.const	$push13=, 16
	i32.sub 	$push23=, $pop12, $pop13
	tee_local	$push22=, $4=, $pop23
	i32.store	__stack_pointer($pop14), $pop22
	i32.const	$3=, 0
	i32.const	$push21=, 0
	i32.store	8($0), $pop21
	i64.const	$push0=, 0
	i64.store	0($0):p2align=2, $pop0
	i32.const	$push20=, 0
	i32.store	0($4), $pop20
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE@FUNCTION, $4, $1
	block   	
	block   	
	i32.load	$push19=, 0($4)
	tee_local	$push18=, $2=, $pop19
	i32.eqz 	$push24=, $pop18
	br_if   	0, $pop24
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $0, $2
	i32.const	$push1=, 4
	i32.add 	$push2=, $0, $pop1
	i32.load	$3=, 0($pop2)
	i32.load	$0=, 0($0)
	br      	1
.LBB107_2:
	end_block
	i32.const	$0=, 0
.LBB107_3:
	end_block
	i32.store	4($4), $0
	i32.store	0($4), $0
	i32.store	8($4), $3
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE@FUNCTION, $4, $1
	i32.const	$push5=, 24
	i32.add 	$push6=, $1, $pop5
	i32.call	$push7=, _ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE@FUNCTION, $4, $pop6
	i32.const	$push3=, 36
	i32.add 	$push4=, $1, $pop3
	i32.call	$push8=, _ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE@FUNCTION, $pop7, $pop4
	i32.const	$push9=, 48
	i32.add 	$push10=, $1, $pop9
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE@FUNCTION, $pop8, $pop10
	i32.const	$push17=, 0
	i32.const	$push15=, 16
	i32.add 	$push16=, $4, $pop15
	i32.store	__stack_pointer($pop17), $pop16
	.endfunc
.Lfunc_end107:
	.size	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_, .Lfunc_end107-_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_

	.section	.text._ZN5eosio11transactionD2Ev,"axG",@progbits,_ZN5eosio11transactionD2Ev,comdat
	.hidden	_ZN5eosio11transactionD2Ev
	.weak	_ZN5eosio11transactionD2Ev
	.type	_ZN5eosio11transactionD2Ev,@function
_ZN5eosio11transactionD2Ev:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	block   	
	i32.load	$push29=, 48($0)
	tee_local	$push28=, $1=, $pop29
	i32.eqz 	$push78=, $pop28
	br_if   	0, $pop78
	block   	
	block   	
	i32.const	$push0=, 52
	i32.add 	$push33=, $0, $pop0
	tee_local	$push32=, $4=, $pop33
	i32.load	$push31=, 0($pop32)
	tee_local	$push30=, $5=, $pop31
	i32.eq  	$push1=, $pop30, $1
	br_if   	0, $pop1
	i32.const	$push2=, 0
	i32.sub 	$2=, $pop2, $1
	i32.const	$push34=, -12
	i32.add 	$5=, $5, $pop34
.LBB108_3:
	loop    	
	block   	
	i32.load	$push36=, 0($5)
	tee_local	$push35=, $3=, $pop36
	i32.eqz 	$push79=, $pop35
	br_if   	0, $pop79
	i32.const	$push37=, 4
	i32.add 	$push3=, $5, $pop37
	i32.store	0($pop3), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB108_5:
	end_block
	i32.const	$push41=, -16
	i32.add 	$push40=, $5, $pop41
	tee_local	$push39=, $5=, $pop40
	i32.add 	$push4=, $pop39, $2
	i32.const	$push38=, -12
	i32.ne  	$push5=, $pop4, $pop38
	br_if   	0, $pop5
	end_loop
	i32.const	$push6=, 48
	i32.add 	$push7=, $0, $pop6
	i32.load	$5=, 0($pop7)
	br      	1
.LBB108_7:
	end_block
	copy_local	$5=, $1
.LBB108_8:
	end_block
	i32.store	0($4), $1
	call    	_ZdlPv@FUNCTION, $5
.LBB108_9:
	end_block
	block   	
	i32.load	$push43=, 36($0)
	tee_local	$push42=, $1=, $pop43
	i32.eqz 	$push80=, $pop42
	br_if   	0, $pop80
	block   	
	block   	
	i32.const	$push8=, 40
	i32.add 	$push47=, $0, $pop8
	tee_local	$push46=, $4=, $pop47
	i32.load	$push45=, 0($pop46)
	tee_local	$push44=, $5=, $pop45
	i32.eq  	$push9=, $pop44, $1
	br_if   	0, $pop9
	i32.const	$push10=, 0
	i32.sub 	$2=, $pop10, $1
	i32.const	$push48=, -24
	i32.add 	$5=, $5, $pop48
.LBB108_12:
	loop    	
	block   	
	i32.const	$push51=, 12
	i32.add 	$push11=, $5, $pop51
	i32.load	$push50=, 0($pop11)
	tee_local	$push49=, $3=, $pop50
	i32.eqz 	$push81=, $pop49
	br_if   	0, $pop81
	i32.const	$push52=, 16
	i32.add 	$push12=, $5, $pop52
	i32.store	0($pop12), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB108_14:
	end_block
	block   	
	i32.load	$push54=, 0($5)
	tee_local	$push53=, $3=, $pop54
	i32.eqz 	$push82=, $pop53
	br_if   	0, $pop82
	i32.const	$push55=, 4
	i32.add 	$push13=, $5, $pop55
	i32.store	0($pop13), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB108_16:
	end_block
	i32.const	$push59=, -40
	i32.add 	$push58=, $5, $pop59
	tee_local	$push57=, $5=, $pop58
	i32.add 	$push14=, $pop57, $2
	i32.const	$push56=, -24
	i32.ne  	$push15=, $pop14, $pop56
	br_if   	0, $pop15
	end_loop
	i32.const	$push16=, 36
	i32.add 	$push17=, $0, $pop16
	i32.load	$5=, 0($pop17)
	br      	1
.LBB108_18:
	end_block
	copy_local	$5=, $1
.LBB108_19:
	end_block
	i32.store	0($4), $1
	call    	_ZdlPv@FUNCTION, $5
.LBB108_20:
	end_block
	block   	
	i32.load	$push61=, 24($0)
	tee_local	$push60=, $1=, $pop61
	i32.eqz 	$push83=, $pop60
	br_if   	0, $pop83
	block   	
	block   	
	i32.const	$push18=, 28
	i32.add 	$push65=, $0, $pop18
	tee_local	$push64=, $4=, $pop65
	i32.load	$push63=, 0($pop64)
	tee_local	$push62=, $5=, $pop63
	i32.eq  	$push19=, $pop62, $1
	br_if   	0, $pop19
	i32.const	$push20=, 0
	i32.sub 	$2=, $pop20, $1
	i32.const	$push66=, -24
	i32.add 	$5=, $5, $pop66
.LBB108_23:
	loop    	
	block   	
	i32.const	$push69=, 12
	i32.add 	$push21=, $5, $pop69
	i32.load	$push68=, 0($pop21)
	tee_local	$push67=, $3=, $pop68
	i32.eqz 	$push84=, $pop67
	br_if   	0, $pop84
	i32.const	$push70=, 16
	i32.add 	$push22=, $5, $pop70
	i32.store	0($pop22), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB108_25:
	end_block
	block   	
	i32.load	$push72=, 0($5)
	tee_local	$push71=, $3=, $pop72
	i32.eqz 	$push85=, $pop71
	br_if   	0, $pop85
	i32.const	$push73=, 4
	i32.add 	$push23=, $5, $pop73
	i32.store	0($pop23), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB108_27:
	end_block
	i32.const	$push77=, -40
	i32.add 	$push76=, $5, $pop77
	tee_local	$push75=, $5=, $pop76
	i32.add 	$push24=, $pop75, $2
	i32.const	$push74=, -24
	i32.ne  	$push25=, $pop24, $pop74
	br_if   	0, $pop25
	end_loop
	i32.const	$push26=, 24
	i32.add 	$push27=, $0, $pop26
	i32.load	$5=, 0($pop27)
	br      	1
.LBB108_29:
	end_block
	copy_local	$5=, $1
.LBB108_30:
	end_block
	i32.store	0($4), $1
	call    	_ZdlPv@FUNCTION, $5
.LBB108_31:
	end_block
	copy_local	$push86=, $0
	.endfunc
.Lfunc_end108:
	.size	_ZN5eosio11transactionD2Ev, .Lfunc_end108-_ZN5eosio11transactionD2Ev

	.section	.text._ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE
	.weak	_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE
	.type	_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE,@function
_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i64
	i32.load	$push52=, 0($0)
	tee_local	$push51=, $6=, $pop52
	i32.const	$push0=, 10
	i32.add 	$push1=, $pop51, $pop0
	i32.store	0($0), $pop1
	i32.const	$push2=, 11
	i32.add 	$6=, $6, $pop2
	i64.load32_u	$8=, 12($1)
.LBB109_1:
	loop    	
	i32.const	$push57=, 1
	i32.add 	$6=, $6, $pop57
	i64.const	$push56=, 7
	i64.shr_u	$push55=, $8, $pop56
	tee_local	$push54=, $8=, $pop55
	i64.const	$push53=, 0
	i64.ne  	$push3=, $pop54, $pop53
	br_if   	0, $pop3
	end_loop
	i32.store	0($0), $6
	i64.load32_u	$8=, 20($1)
.LBB109_3:
	loop    	
	i32.const	$push62=, 1
	i32.add 	$6=, $6, $pop62
	i64.const	$push61=, 7
	i64.shr_u	$push60=, $8, $pop61
	tee_local	$push59=, $8=, $pop60
	i64.const	$push58=, 0
	i64.ne  	$push4=, $pop59, $pop58
	br_if   	0, $pop4
	end_loop
	i32.store	0($0), $6
	i32.const	$push5=, 28
	i32.add 	$push6=, $1, $pop5
	i32.load	$push66=, 0($pop6)
	tee_local	$push65=, $2=, $pop66
	i32.load	$push64=, 24($1)
	tee_local	$push63=, $7=, $pop64
	i32.sub 	$push7=, $pop65, $pop63
	i32.const	$push8=, 40
	i32.div_s	$push9=, $pop7, $pop8
	i64.extend_u/i32	$8=, $pop9
.LBB109_5:
	loop    	
	i32.const	$push71=, 1
	i32.add 	$6=, $6, $pop71
	i64.const	$push70=, 7
	i64.shr_u	$push69=, $8, $pop70
	tee_local	$push68=, $8=, $pop69
	i64.const	$push67=, 0
	i64.ne  	$push10=, $pop68, $pop67
	br_if   	0, $pop10
	end_loop
	i32.store	0($0), $6
	block   	
	i32.eq  	$push11=, $7, $2
	br_if   	0, $pop11
.LBB109_8:
	loop    	
	i32.const	$push80=, 16
	i32.add 	$6=, $6, $pop80
	i32.const	$push79=, 20
	i32.add 	$push12=, $7, $pop79
	i32.load	$push78=, 0($pop12)
	tee_local	$push77=, $3=, $pop78
	i32.load	$push76=, 16($7)
	tee_local	$push75=, $4=, $pop76
	i32.sub 	$push74=, $pop77, $pop75
	tee_local	$push73=, $5=, $pop74
	i32.const	$push72=, 4
	i32.shr_s	$push13=, $pop73, $pop72
	i64.extend_u/i32	$8=, $pop13
.LBB109_9:
	loop    	
	i32.const	$push85=, 1
	i32.add 	$6=, $6, $pop85
	i64.const	$push84=, 7
	i64.shr_u	$push83=, $8, $pop84
	tee_local	$push82=, $8=, $pop83
	i64.const	$push81=, 0
	i64.ne  	$push14=, $pop82, $pop81
	br_if   	0, $pop14
	end_loop
	block   	
	i32.eq  	$push15=, $4, $3
	br_if   	0, $pop15
	i32.const	$push86=, -16
	i32.and 	$push16=, $5, $pop86
	i32.add 	$6=, $pop16, $6
.LBB109_12:
	end_block
	i32.const	$push91=, 32
	i32.add 	$push17=, $7, $pop91
	i32.load	$push90=, 0($pop17)
	tee_local	$push89=, $3=, $pop90
	i32.add 	$push18=, $6, $pop89
	i32.load	$push88=, 28($7)
	tee_local	$push87=, $4=, $pop88
	i32.sub 	$6=, $pop18, $pop87
	i32.sub 	$push19=, $3, $4
	i64.extend_u/i32	$8=, $pop19
.LBB109_13:
	loop    	
	i32.const	$push96=, 1
	i32.add 	$6=, $6, $pop96
	i64.const	$push95=, 7
	i64.shr_u	$push94=, $8, $pop95
	tee_local	$push93=, $8=, $pop94
	i64.const	$push92=, 0
	i64.ne  	$push20=, $pop93, $pop92
	br_if   	0, $pop20
	end_loop
	i32.const	$push99=, 40
	i32.add 	$push98=, $7, $pop99
	tee_local	$push97=, $7=, $pop98
	i32.ne  	$push21=, $pop97, $2
	br_if   	0, $pop21
	end_loop
	i32.store	0($0), $6
.LBB109_16:
	end_block
	i32.const	$push22=, 40
	i32.add 	$push23=, $1, $pop22
	i32.load	$push104=, 0($pop23)
	tee_local	$push103=, $2=, $pop104
	i32.load	$push102=, 36($1)
	tee_local	$push101=, $7=, $pop102
	i32.sub 	$push24=, $pop103, $pop101
	i32.const	$push100=, 40
	i32.div_s	$push25=, $pop24, $pop100
	i64.extend_u/i32	$8=, $pop25
.LBB109_17:
	loop    	
	i32.const	$push109=, 1
	i32.add 	$6=, $6, $pop109
	i64.const	$push108=, 7
	i64.shr_u	$push107=, $8, $pop108
	tee_local	$push106=, $8=, $pop107
	i64.const	$push105=, 0
	i64.ne  	$push26=, $pop106, $pop105
	br_if   	0, $pop26
	end_loop
	i32.store	0($0), $6
	block   	
	i32.eq  	$push27=, $7, $2
	br_if   	0, $pop27
.LBB109_20:
	loop    	
	i32.const	$push118=, 16
	i32.add 	$6=, $6, $pop118
	i32.const	$push117=, 20
	i32.add 	$push28=, $7, $pop117
	i32.load	$push116=, 0($pop28)
	tee_local	$push115=, $3=, $pop116
	i32.load	$push114=, 16($7)
	tee_local	$push113=, $4=, $pop114
	i32.sub 	$push112=, $pop115, $pop113
	tee_local	$push111=, $5=, $pop112
	i32.const	$push110=, 4
	i32.shr_s	$push29=, $pop111, $pop110
	i64.extend_u/i32	$8=, $pop29
.LBB109_21:
	loop    	
	i32.const	$push123=, 1
	i32.add 	$6=, $6, $pop123
	i64.const	$push122=, 7
	i64.shr_u	$push121=, $8, $pop122
	tee_local	$push120=, $8=, $pop121
	i64.const	$push119=, 0
	i64.ne  	$push30=, $pop120, $pop119
	br_if   	0, $pop30
	end_loop
	block   	
	i32.eq  	$push31=, $4, $3
	br_if   	0, $pop31
	i32.const	$push124=, -16
	i32.and 	$push32=, $5, $pop124
	i32.add 	$6=, $pop32, $6
.LBB109_24:
	end_block
	i32.const	$push129=, 32
	i32.add 	$push33=, $7, $pop129
	i32.load	$push128=, 0($pop33)
	tee_local	$push127=, $3=, $pop128
	i32.add 	$push34=, $6, $pop127
	i32.load	$push126=, 28($7)
	tee_local	$push125=, $4=, $pop126
	i32.sub 	$6=, $pop34, $pop125
	i32.sub 	$push35=, $3, $4
	i64.extend_u/i32	$8=, $pop35
.LBB109_25:
	loop    	
	i32.const	$push134=, 1
	i32.add 	$6=, $6, $pop134
	i64.const	$push133=, 7
	i64.shr_u	$push132=, $8, $pop133
	tee_local	$push131=, $8=, $pop132
	i64.const	$push130=, 0
	i64.ne  	$push36=, $pop131, $pop130
	br_if   	0, $pop36
	end_loop
	i32.const	$push137=, 40
	i32.add 	$push136=, $7, $pop137
	tee_local	$push135=, $7=, $pop136
	i32.ne  	$push37=, $pop135, $2
	br_if   	0, $pop37
	end_loop
	i32.store	0($0), $6
.LBB109_28:
	end_block
	i32.const	$push38=, 52
	i32.add 	$push39=, $1, $pop38
	i32.load	$push141=, 0($pop39)
	tee_local	$push140=, $5=, $pop141
	i32.load	$push139=, 48($1)
	tee_local	$push138=, $7=, $pop139
	i32.sub 	$push40=, $pop140, $pop138
	i32.const	$push41=, 4
	i32.shr_s	$push42=, $pop40, $pop41
	i64.extend_u/i32	$8=, $pop42
.LBB109_29:
	loop    	
	i32.const	$push146=, 1
	i32.add 	$6=, $6, $pop146
	i64.const	$push145=, 7
	i64.shr_u	$push144=, $8, $pop145
	tee_local	$push143=, $8=, $pop144
	i64.const	$push142=, 0
	i64.ne  	$push43=, $pop143, $pop142
	br_if   	0, $pop43
	end_loop
	i32.store	0($0), $6
	block   	
	i32.eq  	$push44=, $7, $5
	br_if   	0, $pop44
.LBB109_32:
	loop    	
	i32.const	$push152=, 8
	i32.add 	$push45=, $7, $pop152
	i32.load	$push151=, 0($pop45)
	tee_local	$push150=, $3=, $pop151
	i32.add 	$push46=, $6, $pop150
	i32.const	$push149=, 2
	i32.add 	$push47=, $pop46, $pop149
	i32.load	$push148=, 4($7)
	tee_local	$push147=, $4=, $pop148
	i32.sub 	$6=, $pop47, $pop147
	i32.sub 	$push48=, $3, $4
	i64.extend_u/i32	$8=, $pop48
.LBB109_33:
	loop    	
	i32.const	$push157=, 1
	i32.add 	$6=, $6, $pop157
	i64.const	$push156=, 7
	i64.shr_u	$push155=, $8, $pop156
	tee_local	$push154=, $8=, $pop155
	i64.const	$push153=, 0
	i64.ne  	$push49=, $pop154, $pop153
	br_if   	0, $pop49
	end_loop
	i32.const	$push160=, 16
	i32.add 	$push159=, $7, $pop160
	tee_local	$push158=, $7=, $pop159
	i32.ne  	$push50=, $pop158, $5
	br_if   	0, $pop50
	end_loop
	i32.store	0($0), $6
.LBB109_36:
	end_block
	copy_local	$push161=, $0
	.endfunc
.Lfunc_end109:
	.size	_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE, .Lfunc_end109-_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE
	.type	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE,@function
_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i64, i32
	i32.const	$push49=, 0
	i32.const	$push46=, 0
	i32.load	$push47=, __stack_pointer($pop46)
	i32.const	$push48=, 16
	i32.sub 	$push76=, $pop47, $pop48
	tee_local	$push75=, $7=, $pop76
	i32.store	__stack_pointer($pop49), $pop75
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 3
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push74=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop4, $pop74
	i32.load	$push5=, 4($0)
	i32.const	$push73=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop5, $1, $pop73
	i32.load	$push6=, 4($0)
	i32.const	$push72=, 4
	i32.add 	$push71=, $pop6, $pop72
	tee_local	$push70=, $4=, $pop71
	i32.store	4($0), $pop70
	i32.load	$push7=, 8($0)
	i32.sub 	$push8=, $pop7, $4
	i32.const	$push69=, 1
	i32.gt_s	$push9=, $pop8, $pop69
	i32.const	$push68=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop9, $pop68
	i32.load	$push11=, 4($0)
	i32.const	$push67=, 4
	i32.add 	$push10=, $1, $pop67
	i32.const	$push12=, 2
	i32.call	$drop=, memcpy@FUNCTION, $pop11, $pop10, $pop12
	i32.load	$push13=, 4($0)
	i32.const	$push66=, 2
	i32.add 	$push65=, $pop13, $pop66
	tee_local	$push64=, $4=, $pop65
	i32.store	4($0), $pop64
	i32.load	$push14=, 8($0)
	i32.sub 	$push15=, $pop14, $4
	i32.const	$push63=, 3
	i32.gt_s	$push16=, $pop15, $pop63
	i32.const	$push62=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop16, $pop62
	i32.load	$push18=, 4($0)
	i32.const	$push61=, 8
	i32.add 	$push17=, $1, $pop61
	i32.const	$push60=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop18, $pop17, $pop60
	i32.load	$push19=, 4($0)
	i32.const	$push59=, 4
	i32.add 	$push58=, $pop19, $pop59
	tee_local	$push57=, $5=, $pop58
	i32.store	4($0), $pop57
	i64.load32_u	$6=, 12($1)
.LBB110_1:
	loop    	
	i32.wrap/i64	$4=, $6
	i64.const	$push94=, 7
	i64.shr_u	$push93=, $6, $pop94
	tee_local	$push92=, $6=, $pop93
	i64.const	$push91=, 0
	i64.ne  	$push90=, $pop92, $pop91
	tee_local	$push89=, $2=, $pop90
	i32.const	$push88=, 7
	i32.shl 	$push21=, $pop89, $pop88
	i32.const	$push87=, 127
	i32.and 	$push20=, $4, $pop87
	i32.or  	$push22=, $pop21, $pop20
	i32.store8	14($7), $pop22
	i32.const	$push86=, 8
	i32.add 	$push23=, $0, $pop86
	i32.load	$push24=, 0($pop23)
	i32.sub 	$push25=, $pop24, $5
	i32.const	$push85=, 0
	i32.gt_s	$push26=, $pop25, $pop85
	i32.const	$push84=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop26, $pop84
	i32.const	$push83=, 4
	i32.add 	$push82=, $0, $pop83
	tee_local	$push81=, $4=, $pop82
	i32.load	$push27=, 0($pop81)
	i32.const	$push53=, 14
	i32.add 	$push54=, $7, $pop53
	i32.const	$push80=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $pop54, $pop80
	i32.load	$push28=, 0($4)
	i32.const	$push79=, 1
	i32.add 	$push78=, $pop28, $pop79
	tee_local	$push77=, $5=, $pop78
	i32.store	0($4), $pop77
	br_if   	0, $2
	end_loop
	i32.const	$push29=, 8
	i32.add 	$push104=, $0, $pop29
	tee_local	$push103=, $3=, $pop104
	i32.load	$push30=, 0($pop103)
	i32.sub 	$push31=, $pop30, $5
	i32.const	$push102=, 0
	i32.gt_s	$push32=, $pop31, $pop102
	i32.const	$push101=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop32, $pop101
	i32.const	$push35=, 4
	i32.add 	$push100=, $0, $pop35
	tee_local	$push99=, $4=, $pop100
	i32.load	$push36=, 0($pop99)
	i32.const	$push33=, 16
	i32.add 	$push34=, $1, $pop33
	i32.const	$push98=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop36, $pop34, $pop98
	i32.load	$push37=, 0($4)
	i32.const	$push97=, 1
	i32.add 	$push96=, $pop37, $pop97
	tee_local	$push95=, $5=, $pop96
	i32.store	0($4), $pop95
	i64.load32_u	$6=, 20($1)
.LBB110_3:
	loop    	
	i32.wrap/i64	$2=, $6
	i64.const	$push118=, 7
	i64.shr_u	$push117=, $6, $pop118
	tee_local	$push116=, $6=, $pop117
	i64.const	$push115=, 0
	i64.ne  	$push114=, $pop116, $pop115
	tee_local	$push113=, $1=, $pop114
	i32.const	$push112=, 7
	i32.shl 	$push39=, $pop113, $pop112
	i32.const	$push111=, 127
	i32.and 	$push38=, $2, $pop111
	i32.or  	$push40=, $pop39, $pop38
	i32.store8	15($7), $pop40
	i32.load	$push41=, 0($3)
	i32.sub 	$push42=, $pop41, $5
	i32.const	$push110=, 0
	i32.gt_s	$push43=, $pop42, $pop110
	i32.const	$push109=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop43, $pop109
	i32.load	$push44=, 0($4)
	i32.const	$push55=, 15
	i32.add 	$push56=, $7, $pop55
	i32.const	$push108=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop44, $pop56, $pop108
	i32.load	$push45=, 0($4)
	i32.const	$push107=, 1
	i32.add 	$push106=, $pop45, $pop107
	tee_local	$push105=, $5=, $pop106
	i32.store	0($4), $pop105
	br_if   	0, $1
	end_loop
	i32.const	$push52=, 0
	i32.const	$push50=, 16
	i32.add 	$push51=, $7, $pop50
	i32.store	__stack_pointer($pop52), $pop51
	copy_local	$push119=, $0
	.endfunc
.Lfunc_end110:
	.size	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE, .Lfunc_end110-_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,@function
_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32
	i32.const	$push36=, 0
	i32.const	$push33=, 0
	i32.load	$push34=, __stack_pointer($pop33)
	i32.const	$push35=, 16
	i32.sub 	$push43=, $pop34, $pop35
	tee_local	$push42=, $8=, $pop43
	i32.store	__stack_pointer($pop36), $pop42
	i32.load	$push1=, 4($1)
	i32.load	$push0=, 0($1)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 40
	i32.div_s	$push4=, $pop2, $pop3
	i64.extend_u/i32	$5=, $pop4
	i32.load	$6=, 4($0)
	i32.const	$push8=, 8
	i32.add 	$3=, $0, $pop8
	i32.const	$push12=, 4
	i32.add 	$4=, $0, $pop12
.LBB111_1:
	loop    	
	i32.wrap/i64	$7=, $5
	i64.const	$push57=, 7
	i64.shr_u	$push56=, $5, $pop57
	tee_local	$push55=, $5=, $pop56
	i64.const	$push54=, 0
	i64.ne  	$push53=, $pop55, $pop54
	tee_local	$push52=, $2=, $pop53
	i32.const	$push51=, 7
	i32.shl 	$push6=, $pop52, $pop51
	i32.const	$push50=, 127
	i32.and 	$push5=, $7, $pop50
	i32.or  	$push7=, $pop6, $pop5
	i32.store8	15($8), $pop7
	i32.load	$push9=, 0($3)
	i32.sub 	$push10=, $pop9, $6
	i32.const	$push49=, 0
	i32.gt_s	$push11=, $pop10, $pop49
	i32.const	$push48=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop11, $pop48
	i32.load	$push13=, 0($4)
	i32.const	$push40=, 15
	i32.add 	$push41=, $8, $pop40
	i32.const	$push47=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop41, $pop47
	i32.load	$push14=, 0($4)
	i32.const	$push46=, 1
	i32.add 	$push45=, $pop14, $pop46
	tee_local	$push44=, $6=, $pop45
	i32.store	0($4), $pop44
	br_if   	0, $2
	end_loop
	block   	
	i32.load	$push62=, 0($1)
	tee_local	$push61=, $7=, $pop62
	i32.const	$push60=, 4
	i32.add 	$push15=, $1, $pop60
	i32.load	$push59=, 0($pop15)
	tee_local	$push58=, $3=, $pop59
	i32.eq  	$push16=, $pop61, $pop58
	br_if   	0, $pop16
	i32.const	$push63=, 4
	i32.add 	$4=, $0, $pop63
.LBB111_4:
	loop    	
	i32.const	$push82=, 8
	i32.add 	$push81=, $0, $pop82
	tee_local	$push80=, $2=, $pop81
	i32.load	$push17=, 0($pop80)
	i32.sub 	$push18=, $pop17, $6
	i32.const	$push79=, 7
	i32.gt_s	$push19=, $pop18, $pop79
	i32.const	$push78=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop19, $pop78
	i32.load	$push20=, 0($4)
	i32.const	$push77=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop20, $7, $pop77
	i32.load	$push21=, 0($4)
	i32.const	$push76=, 8
	i32.add 	$push75=, $pop21, $pop76
	tee_local	$push74=, $6=, $pop75
	i32.store	0($4), $pop74
	i32.load	$push22=, 0($2)
	i32.sub 	$push23=, $pop22, $6
	i32.const	$push73=, 7
	i32.gt_s	$push24=, $pop23, $pop73
	i32.const	$push72=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop24, $pop72
	i32.load	$push26=, 0($4)
	i32.const	$push71=, 8
	i32.add 	$push25=, $7, $pop71
	i32.const	$push70=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop26, $pop25, $pop70
	i32.load	$push27=, 0($4)
	i32.const	$push69=, 8
	i32.add 	$push28=, $pop27, $pop69
	i32.store	0($4), $pop28
	i32.const	$push68=, 16
	i32.add 	$push30=, $7, $pop68
	i32.call	$push31=, _ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE@FUNCTION, $0, $pop30
	i32.const	$push67=, 28
	i32.add 	$push29=, $7, $pop67
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE@FUNCTION, $pop31, $pop29
	i32.const	$push66=, 40
	i32.add 	$push65=, $7, $pop66
	tee_local	$push64=, $7=, $pop65
	i32.eq  	$push32=, $pop64, $3
	br_if   	1, $pop32
	i32.load	$6=, 0($4)
	br      	0
.LBB111_6:
	end_loop
	end_block
	i32.const	$push39=, 0
	i32.const	$push37=, 16
	i32.add 	$push38=, $8, $pop37
	i32.store	__stack_pointer($pop39), $pop38
	copy_local	$push83=, $0
	.endfunc
.Lfunc_end111:
	.size	_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE, .Lfunc_end111-_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE,@function
_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32
	i32.const	$push27=, 0
	i32.const	$push24=, 0
	i32.load	$push25=, __stack_pointer($pop24)
	i32.const	$push26=, 16
	i32.sub 	$push35=, $pop25, $pop26
	tee_local	$push34=, $7=, $pop35
	i32.store	__stack_pointer($pop27), $pop34
	i32.load	$push1=, 4($1)
	i32.load	$push0=, 0($1)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push33=, 4
	i32.shr_s	$push3=, $pop2, $pop33
	i64.extend_u/i32	$5=, $pop3
	i32.load	$6=, 4($0)
	i32.const	$push7=, 8
	i32.add 	$3=, $0, $pop7
.LBB112_1:
	loop    	
	i32.wrap/i64	$4=, $5
	i64.const	$push52=, 7
	i64.shr_u	$push51=, $5, $pop52
	tee_local	$push50=, $5=, $pop51
	i64.const	$push49=, 0
	i64.ne  	$push48=, $pop50, $pop49
	tee_local	$push47=, $2=, $pop48
	i32.const	$push46=, 7
	i32.shl 	$push5=, $pop47, $pop46
	i32.const	$push45=, 127
	i32.and 	$push4=, $4, $pop45
	i32.or  	$push6=, $pop5, $pop4
	i32.store8	15($7), $pop6
	i32.load	$push8=, 0($3)
	i32.sub 	$push9=, $pop8, $6
	i32.const	$push44=, 0
	i32.gt_s	$push10=, $pop9, $pop44
	i32.const	$push43=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop10, $pop43
	i32.const	$push42=, 4
	i32.add 	$push41=, $0, $pop42
	tee_local	$push40=, $4=, $pop41
	i32.load	$push11=, 0($pop40)
	i32.const	$push31=, 15
	i32.add 	$push32=, $7, $pop31
	i32.const	$push39=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop11, $pop32, $pop39
	i32.load	$push12=, 0($4)
	i32.const	$push38=, 1
	i32.add 	$push37=, $pop12, $pop38
	tee_local	$push36=, $6=, $pop37
	i32.store	0($4), $pop36
	br_if   	0, $2
	end_loop
	block   	
	i32.load	$push57=, 0($1)
	tee_local	$push56=, $4=, $pop57
	i32.const	$push55=, 4
	i32.add 	$push13=, $1, $pop55
	i32.load	$push54=, 0($pop13)
	tee_local	$push53=, $2=, $pop54
	i32.eq  	$push14=, $pop56, $pop53
	br_if   	0, $pop14
	i32.const	$push15=, 8
	i32.add 	$3=, $0, $pop15
.LBB112_4:
	loop    	
	i32.load	$push16=, 0($3)
	i32.sub 	$push17=, $pop16, $6
	i32.const	$push68=, 1
	i32.gt_s	$push18=, $pop17, $pop68
	i32.const	$push67=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop18, $pop67
	i32.const	$push66=, 4
	i32.add 	$push65=, $0, $pop66
	tee_local	$push64=, $6=, $pop65
	i32.load	$push19=, 0($pop64)
	i32.const	$push63=, 2
	i32.call	$drop=, memcpy@FUNCTION, $pop19, $4, $pop63
	i32.load	$push20=, 0($6)
	i32.const	$push62=, 2
	i32.add 	$push21=, $pop20, $pop62
	i32.store	0($6), $pop21
	i32.const	$push61=, 4
	i32.add 	$push22=, $4, $pop61
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE@FUNCTION, $0, $pop22
	i32.const	$push60=, 16
	i32.add 	$push59=, $4, $pop60
	tee_local	$push58=, $4=, $pop59
	i32.eq  	$push23=, $pop58, $2
	br_if   	1, $pop23
	i32.load	$6=, 0($6)
	br      	0
.LBB112_6:
	end_loop
	end_block
	i32.const	$push30=, 0
	i32.const	$push28=, 16
	i32.add 	$push29=, $7, $pop28
	i32.store	__stack_pointer($pop30), $pop29
	copy_local	$push69=, $0
	.endfunc
.Lfunc_end112:
	.size	_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE, .Lfunc_end112-_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE

	.text
	.hidden	_ZN16test_transaction18send_action_senderEyyy
	.globl	_ZN16test_transaction18send_action_senderEyyy
	.type	_ZN16test_transaction18send_action_senderEyyy,@function
_ZN16test_transaction18send_action_senderEyyy:
	.param  	i64, i64, i64
	.local  	i32, i32, i32, i64, i64, i64, i64, i64, i32
	i32.const	$push128=, 0
	i32.const	$push125=, 0
	i32.load	$push126=, __stack_pointer($pop125)
	i32.const	$push127=, 128
	i32.sub 	$push183=, $pop126, $pop127
	tee_local	$push182=, $11=, $pop183
	i32.store	__stack_pointer($pop128), $pop182
	i32.const	$push132=, 88
	i32.add 	$push133=, $11, $pop132
	i32.const	$push7=, 8
	i32.call	$drop=, read_action_data@FUNCTION, $pop133, $pop7
	i32.const	$push8=, 0
	i32.store	80($11), $pop8
	i64.const	$push9=, 0
	i64.store	72($11), $pop9
	i32.const	$push134=, 72
	i32.add 	$push135=, $11, $pop134
	i32.const	$push136=, 88
	i32.add 	$push137=, $11, $pop136
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_@FUNCTION, $pop135, $pop137
	block   	
	block   	
	i32.load	$push181=, 76($11)
	tee_local	$push180=, $5=, $pop181
	i32.load	$push10=, 80($11)
	i32.eq  	$push11=, $pop180, $pop10
	br_if   	0, $pop11
	i32.load8_u	$push12=, 89($11)
	i32.store8	0($5), $pop12
	i32.load	$push13=, 76($11)
	i32.const	$push186=, 1
	i32.add 	$push185=, $pop13, $pop186
	tee_local	$push184=, $5=, $pop185
	i32.store	76($11), $pop184
	br      	1
.LBB113_2:
	end_block
	i32.const	$push140=, 72
	i32.add 	$push141=, $11, $pop140
	i32.const	$push138=, 88
	i32.add 	$push139=, $11, $pop138
	i32.const	$push187=, 1
	i32.or  	$push0=, $pop139, $pop187
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_@FUNCTION, $pop141, $pop0
	i32.load	$5=, 76($11)
.LBB113_3:
	end_block
	block   	
	block   	
	i32.const	$push14=, 80
	i32.add 	$push15=, $11, $pop14
	i32.load	$push16=, 0($pop15)
	i32.eq  	$push17=, $5, $pop16
	br_if   	0, $pop17
	i32.load8_u	$push19=, 90($11)
	i32.store8	0($5), $pop19
	i32.load	$push21=, 76($11)
	i32.const	$push20=, 1
	i32.add 	$push189=, $pop21, $pop20
	tee_local	$push188=, $5=, $pop189
	i32.store	76($11), $pop188
	br      	1
.LBB113_5:
	end_block
	i32.const	$push144=, 72
	i32.add 	$push145=, $11, $pop144
	i32.const	$push142=, 88
	i32.add 	$push143=, $11, $pop142
	i32.const	$push18=, 2
	i32.or  	$push1=, $pop143, $pop18
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_@FUNCTION, $pop145, $pop1
	i32.load	$5=, 76($11)
.LBB113_6:
	end_block
	block   	
	block   	
	i32.const	$push22=, 80
	i32.add 	$push23=, $11, $pop22
	i32.load	$push24=, 0($pop23)
	i32.eq  	$push25=, $5, $pop24
	br_if   	0, $pop25
	i32.load8_u	$push27=, 91($11)
	i32.store8	0($5), $pop27
	i32.load	$push29=, 76($11)
	i32.const	$push28=, 1
	i32.add 	$push191=, $pop29, $pop28
	tee_local	$push190=, $5=, $pop191
	i32.store	76($11), $pop190
	br      	1
.LBB113_8:
	end_block
	i32.const	$push148=, 72
	i32.add 	$push149=, $11, $pop148
	i32.const	$push146=, 88
	i32.add 	$push147=, $11, $pop146
	i32.const	$push26=, 3
	i32.or  	$push2=, $pop147, $pop26
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_@FUNCTION, $pop149, $pop2
	i32.load	$5=, 76($11)
.LBB113_9:
	end_block
	block   	
	block   	
	i32.const	$push30=, 80
	i32.add 	$push31=, $11, $pop30
	i32.load	$push32=, 0($pop31)
	i32.eq  	$push33=, $5, $pop32
	br_if   	0, $pop33
	i32.load8_u	$push35=, 92($11)
	i32.store8	0($5), $pop35
	i32.load	$push37=, 76($11)
	i32.const	$push36=, 1
	i32.add 	$push193=, $pop37, $pop36
	tee_local	$push192=, $5=, $pop193
	i32.store	76($11), $pop192
	br      	1
.LBB113_11:
	end_block
	i32.const	$push152=, 72
	i32.add 	$push153=, $11, $pop152
	i32.const	$push150=, 88
	i32.add 	$push151=, $11, $pop150
	i32.const	$push34=, 4
	i32.or  	$push3=, $pop151, $pop34
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_@FUNCTION, $pop153, $pop3
	i32.load	$5=, 76($11)
.LBB113_12:
	end_block
	block   	
	block   	
	i32.const	$push38=, 80
	i32.add 	$push39=, $11, $pop38
	i32.load	$push40=, 0($pop39)
	i32.eq  	$push41=, $5, $pop40
	br_if   	0, $pop41
	i32.load8_u	$push43=, 93($11)
	i32.store8	0($5), $pop43
	i32.load	$push45=, 76($11)
	i32.const	$push44=, 1
	i32.add 	$push195=, $pop45, $pop44
	tee_local	$push194=, $5=, $pop195
	i32.store	76($11), $pop194
	br      	1
.LBB113_14:
	end_block
	i32.const	$push156=, 72
	i32.add 	$push157=, $11, $pop156
	i32.const	$push154=, 88
	i32.add 	$push155=, $11, $pop154
	i32.const	$push42=, 5
	i32.or  	$push4=, $pop155, $pop42
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_@FUNCTION, $pop157, $pop4
	i32.load	$5=, 76($11)
.LBB113_15:
	end_block
	block   	
	block   	
	i32.const	$push46=, 80
	i32.add 	$push47=, $11, $pop46
	i32.load	$push48=, 0($pop47)
	i32.eq  	$push49=, $5, $pop48
	br_if   	0, $pop49
	i32.load8_u	$push51=, 94($11)
	i32.store8	0($5), $pop51
	i32.load	$push53=, 76($11)
	i32.const	$push52=, 1
	i32.add 	$push197=, $pop53, $pop52
	tee_local	$push196=, $5=, $pop197
	i32.store	76($11), $pop196
	br      	1
.LBB113_17:
	end_block
	i32.const	$push160=, 72
	i32.add 	$push161=, $11, $pop160
	i32.const	$push158=, 88
	i32.add 	$push159=, $11, $pop158
	i32.const	$push50=, 6
	i32.or  	$push5=, $pop159, $pop50
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_@FUNCTION, $pop161, $pop5
	i32.load	$5=, 76($11)
.LBB113_18:
	end_block
	block   	
	block   	
	i32.const	$push54=, 80
	i32.add 	$push55=, $11, $pop54
	i32.load	$push56=, 0($pop55)
	i32.eq  	$push57=, $5, $pop56
	br_if   	0, $pop57
	i32.load8_u	$push59=, 95($11)
	i32.store8	0($5), $pop59
	i32.load	$push61=, 76($11)
	i32.const	$push60=, 1
	i32.add 	$push62=, $pop61, $pop60
	i32.store	76($11), $pop62
	br      	1
.LBB113_20:
	end_block
	i32.const	$push164=, 72
	i32.add 	$push165=, $11, $pop164
	i32.const	$push162=, 88
	i32.add 	$push163=, $11, $pop162
	i32.const	$push58=, 7
	i32.or  	$push6=, $pop163, $pop58
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_@FUNCTION, $pop165, $pop6
.LBB113_21:
	end_block
	i64.call	$7=, current_time@FUNCTION
	i32.const	$push63=, 36
	i32.add 	$push64=, $11, $pop63
	i32.const	$push209=, 0
	i32.store	0($pop64), $pop209
	i32.const	$push65=, 40
	i32.add 	$push66=, $11, $pop65
	i32.const	$push208=, 0
	i32.store	0($pop66), $pop208
	i32.const	$push207=, 0
	i32.store	20($11), $pop207
	i32.const	$push206=, 0
	i32.store8	24($11), $pop206
	i32.const	$push205=, 0
	i32.store	28($11), $pop205
	i32.const	$push204=, 0
	i32.store	32($11), $pop204
	i64.const	$push67=, 1000000
	i64.div_u	$push68=, $7, $pop67
	i32.wrap/i64	$push69=, $pop68
	i32.const	$push70=, 60
	i32.add 	$push71=, $pop69, $pop70
	i32.store	8($11), $pop71
	i32.const	$push203=, 0
	i32.store	44($11), $pop203
	i32.const	$push72=, 48
	i32.add 	$push73=, $11, $pop72
	i32.const	$push202=, 0
	i32.store	0($pop73), $pop202
	i32.const	$push74=, 52
	i32.add 	$push75=, $11, $pop74
	i32.const	$push201=, 0
	i32.store	0($pop75), $pop201
	i32.const	$push200=, 0
	i32.store	56($11), $pop200
	i32.const	$push76=, 60
	i32.add 	$push77=, $11, $pop76
	i32.const	$push199=, 0
	i32.store	0($pop77), $pop199
	i32.const	$push78=, 64
	i32.add 	$push79=, $11, $pop78
	i32.const	$push198=, 0
	i32.store	0($pop79), $pop198
	i32.const	$push80=, 44
	i32.add 	$4=, $11, $pop80
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$5=, .L.str.9
	i64.const	$8=, 0
.LBB113_22:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push210=, 6
	i64.gt_u	$push81=, $7, $pop210
	br_if   	0, $pop81
	i32.load8_s	$push215=, 0($5)
	tee_local	$push214=, $3=, $pop215
	i32.const	$push213=, -97
	i32.add 	$push83=, $pop214, $pop213
	i32.const	$push212=, 255
	i32.and 	$push84=, $pop83, $pop212
	i32.const	$push211=, 25
	i32.gt_u	$push85=, $pop84, $pop211
	br_if   	1, $pop85
	i32.const	$push216=, 165
	i32.add 	$3=, $3, $pop216
	br      	2
.LBB113_25:
	end_block
	i64.const	$9=, 0
	i64.const	$push217=, 11
	i64.le_u	$push82=, $7, $pop217
	br_if   	2, $pop82
	br      	3
.LBB113_26:
	end_block
	i32.const	$push222=, 208
	i32.add 	$push86=, $3, $pop222
	i32.const	$push221=, 0
	i32.const	$push220=, -49
	i32.add 	$push87=, $3, $pop220
	i32.const	$push219=, 255
	i32.and 	$push88=, $pop87, $pop219
	i32.const	$push218=, 5
	i32.lt_u	$push89=, $pop88, $pop218
	i32.select	$3=, $pop86, $pop221, $pop89
.LBB113_27:
	end_block
	i64.extend_u/i32	$push90=, $3
	i64.const	$push224=, 56
	i64.shl 	$push91=, $pop90, $pop224
	i64.const	$push223=, 56
	i64.shr_s	$9=, $pop91, $pop223
.LBB113_28:
	end_block
	i64.const	$push226=, 31
	i64.and 	$push93=, $9, $pop226
	i64.const	$push225=, 4294967295
	i64.and 	$push92=, $6, $pop225
	i64.shl 	$9=, $pop93, $pop92
.LBB113_29:
	end_block
	i32.const	$push232=, 1
	i32.add 	$5=, $5, $pop232
	i64.const	$push231=, 1
	i64.add 	$7=, $7, $pop231
	i64.or  	$8=, $9, $8
	i64.const	$push230=, -5
	i64.add 	$push229=, $6, $pop230
	tee_local	$push228=, $6=, $pop229
	i64.const	$push227=, -6
	i64.ne  	$push94=, $pop228, $pop227
	br_if   	0, $pop94
	end_loop
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$5=, .L.str.11
	i64.const	$10=, 0
.LBB113_31:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push233=, 5
	i64.gt_u	$push95=, $7, $pop233
	br_if   	0, $pop95
	i32.load8_s	$push238=, 0($5)
	tee_local	$push237=, $3=, $pop238
	i32.const	$push236=, -97
	i32.add 	$push97=, $pop237, $pop236
	i32.const	$push235=, 255
	i32.and 	$push98=, $pop97, $pop235
	i32.const	$push234=, 25
	i32.gt_u	$push99=, $pop98, $pop234
	br_if   	1, $pop99
	i32.const	$push239=, 165
	i32.add 	$3=, $3, $pop239
	br      	2
.LBB113_34:
	end_block
	i64.const	$9=, 0
	i64.const	$push240=, 11
	i64.le_u	$push96=, $7, $pop240
	br_if   	2, $pop96
	br      	3
.LBB113_35:
	end_block
	i32.const	$push245=, 208
	i32.add 	$push100=, $3, $pop245
	i32.const	$push244=, 0
	i32.const	$push243=, -49
	i32.add 	$push101=, $3, $pop243
	i32.const	$push242=, 255
	i32.and 	$push102=, $pop101, $pop242
	i32.const	$push241=, 5
	i32.lt_u	$push103=, $pop102, $pop241
	i32.select	$3=, $pop100, $pop244, $pop103
.LBB113_36:
	end_block
	i64.extend_u/i32	$push104=, $3
	i64.const	$push247=, 56
	i64.shl 	$push105=, $pop104, $pop247
	i64.const	$push246=, 56
	i64.shr_s	$9=, $pop105, $pop246
.LBB113_37:
	end_block
	i64.const	$push249=, 31
	i64.and 	$push107=, $9, $pop249
	i64.const	$push248=, 4294967295
	i64.and 	$push106=, $6, $pop248
	i64.shl 	$9=, $pop107, $pop106
.LBB113_38:
	end_block
	i32.const	$push255=, 1
	i32.add 	$5=, $5, $pop255
	i64.const	$push254=, 1
	i64.add 	$7=, $7, $pop254
	i64.or  	$10=, $9, $10
	i64.const	$push253=, -5
	i64.add 	$push252=, $6, $pop253
	tee_local	$push251=, $6=, $pop252
	i64.const	$push250=, -6
	i64.ne  	$push108=, $pop251, $pop250
	br_if   	0, $pop108
	end_loop
	i64.store	104($11), $10
	i64.store	96($11), $8
	i32.const	$push109=, 16
	i32.call	$push263=, _Znwj@FUNCTION, $pop109
	tee_local	$push262=, $5=, $pop263
	i32.const	$push110=, 12
	i32.add 	$push111=, $pop262, $pop110
	i32.const	$push166=, 96
	i32.add 	$push167=, $11, $pop166
	i32.const	$push261=, 12
	i32.add 	$push112=, $pop167, $pop261
	i32.load	$push113=, 0($pop112)
	i32.store	0($pop111), $pop113
	i32.const	$push114=, 4
	i32.add 	$push115=, $5, $pop114
	i32.load	$push116=, 100($11)
	i32.store	0($pop115), $pop116
	i32.store	112($11), $5
	i32.load	$push117=, 96($11)
	i32.store	0($5), $pop117
	i32.const	$push260=, 16
	i32.add 	$push259=, $5, $pop260
	tee_local	$push258=, $3=, $pop259
	i32.store	120($11), $pop258
	i32.const	$push118=, 8
	i32.add 	$push119=, $5, $pop118
	i32.load	$push120=, 104($11)
	i32.store	0($pop119), $pop120
	i32.store	116($11), $3
	i32.const	$push168=, 112
	i32.add 	$push169=, $11, $pop168
	i32.const	$push170=, 72
	i32.add 	$push171=, $11, $pop170
	call    	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311597322538353EEEEEvDpOT_@FUNCTION, $4, $pop169, $pop171
	block   	
	i32.load	$push257=, 112($11)
	tee_local	$push256=, $5=, $pop257
	i32.eqz 	$push271=, $pop256
	br_if   	0, $pop271
	i32.store	116($11), $5
	call    	_ZdlPv@FUNCTION, $5
.LBB113_41:
	end_block
	i32.const	$push172=, 112
	i32.add 	$push173=, $11, $pop172
	i32.const	$push174=, 8
	i32.add 	$push175=, $11, $pop174
	call    	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop173, $pop175
	i64.const	$push121=, 0
	i64.store	96($11), $pop121
	i64.const	$push268=, 0
	i64.store	104($11), $pop268
	i32.const	$push176=, 96
	i32.add 	$push177=, $11, $pop176
	i32.load	$push267=, 112($11)
	tee_local	$push266=, $5=, $pop267
	i32.load	$push122=, 116($11)
	i32.sub 	$push123=, $pop122, $5
	i32.const	$push124=, 0
	call    	send_deferred@FUNCTION, $pop177, $0, $pop266, $pop123, $pop124
	block   	
	i32.load	$push265=, 112($11)
	tee_local	$push264=, $5=, $pop265
	i32.eqz 	$push272=, $pop264
	br_if   	0, $pop272
	i32.store	116($11), $5
	call    	_ZdlPv@FUNCTION, $5
.LBB113_43:
	end_block
	i32.const	$push178=, 8
	i32.add 	$push179=, $11, $pop178
	i32.call	$drop=, _ZN5eosio11transactionD2Ev@FUNCTION, $pop179
	block   	
	i32.load	$push270=, 72($11)
	tee_local	$push269=, $5=, $pop270
	i32.eqz 	$push273=, $pop269
	br_if   	0, $pop273
	i32.store	76($11), $5
	call    	_ZdlPv@FUNCTION, $5
.LBB113_45:
	end_block
	i32.const	$push131=, 0
	i32.const	$push129=, 128
	i32.add 	$push130=, $11, $pop129
	i32.store	__stack_pointer($pop131), $pop130
	.endfunc
.Lfunc_end113:
	.size	_ZN16test_transaction18send_action_senderEyyy, .Lfunc_end113-_ZN16test_transaction18send_action_senderEyyy

	.section	.text._ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311597322538353EEEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311597322538353EEEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311597322538353EEEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311597322538353EEEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311597322538353EEEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311597322538353EEEEEvDpOT_:
	.param  	i32, i32, i32
	.local  	i32, i32, i32, i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push53=, 0($0)
	tee_local	$push52=, $8=, $pop53
	i32.sub 	$push1=, $pop0, $pop52
	i32.const	$push51=, 40
	i32.div_s	$push50=, $pop1, $pop51
	tee_local	$push49=, $9=, $pop50
	i32.const	$push2=, 1
	i32.add 	$push48=, $pop49, $pop2
	tee_local	$push47=, $6=, $pop48
	i32.const	$push3=, 107374183
	i32.ge_u	$push4=, $pop47, $pop3
	br_if   	0, $pop4
	i32.const	$7=, 107374182
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $8
	i32.const	$push56=, 40
	i32.div_s	$push55=, $pop6, $pop56
	tee_local	$push54=, $8=, $pop55
	i32.const	$push7=, 53687090
	i32.gt_u	$push8=, $pop54, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push60=, $8, $pop9
	tee_local	$push59=, $7=, $pop60
	i32.lt_u	$push10=, $7, $6
	i32.select	$push58=, $6, $pop59, $pop10
	tee_local	$push57=, $7=, $pop58
	i32.eqz 	$push133=, $pop57
	br_if   	1, $pop133
.LBB114_3:
	end_block
	i32.const	$push11=, 40
	i32.mul 	$push12=, $7, $pop11
	i32.call	$8=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB114_4:
	end_block
	i32.const	$7=, 0
	i32.const	$8=, 0
	br      	1
.LBB114_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB114_6:
	end_block
	i32.const	$push13=, 40
	i32.mul 	$push14=, $7, $pop13
	i32.add 	$3=, $8, $pop14
	i32.const	$push71=, 40
	i32.mul 	$push15=, $9, $pop71
	i32.add 	$push70=, $8, $pop15
	tee_local	$push69=, $9=, $pop70
	i32.call	$push68=, _ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311597322538353EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_@FUNCTION, $pop69, $1, $2
	tee_local	$push67=, $8=, $pop68
	i32.const	$push66=, 40
	i32.add 	$4=, $pop67, $pop66
	block   	
	block   	
	i32.const	$push65=, 4
	i32.add 	$push16=, $0, $pop65
	i32.load	$push64=, 0($pop16)
	tee_local	$push63=, $1=, $pop64
	i32.load	$push62=, 0($0)
	tee_local	$push61=, $7=, $pop62
	i32.eq  	$push17=, $pop63, $pop61
	br_if   	0, $pop17
	i32.const	$push73=, 0
	i32.sub 	$5=, $pop73, $7
	i32.const	$push72=, -20
	i32.add 	$7=, $1, $pop72
.LBB114_8:
	loop    	
	i32.const	$push119=, -32
	i32.add 	$push18=, $8, $pop119
	i32.const	$push118=, -12
	i32.add 	$push19=, $7, $pop118
	i64.load	$push20=, 0($pop19)
	i64.store	0($pop18), $pop20
	i32.const	$push117=, -40
	i32.add 	$push21=, $8, $pop117
	i32.const	$push116=, -20
	i32.add 	$push22=, $7, $pop116
	i64.load	$push23=, 0($pop22)
	i64.store	0($pop21), $pop23
	i32.const	$push115=, -24
	i32.add 	$push114=, $8, $pop115
	tee_local	$push113=, $1=, $pop114
	i64.const	$push112=, 0
	i64.store	0($pop113):p2align=2, $pop112
	i32.const	$push111=, -16
	i32.add 	$push110=, $8, $pop111
	tee_local	$push109=, $2=, $pop110
	i32.const	$push108=, 0
	i32.store	0($pop109), $pop108
	i32.const	$push107=, -4
	i32.add 	$push106=, $7, $pop107
	tee_local	$push105=, $6=, $pop106
	i32.load	$push24=, 0($pop105)
	i32.store	0($1), $pop24
	i32.const	$push104=, -20
	i32.add 	$push25=, $8, $pop104
	i32.load	$push26=, 0($7)
	i32.store	0($pop25), $pop26
	i32.const	$push103=, 4
	i32.add 	$push102=, $7, $pop103
	tee_local	$push101=, $1=, $pop102
	i32.load	$push27=, 0($pop101)
	i32.store	0($2), $pop27
	i32.const	$push100=, 0
	i32.store	0($1), $pop100
	i32.const	$push99=, -12
	i32.add 	$push98=, $8, $pop99
	tee_local	$push97=, $1=, $pop98
	i64.const	$push96=, 0
	i64.store	0($pop97):p2align=2, $pop96
	i64.const	$push95=, 0
	i64.store	0($6):p2align=2, $pop95
	i32.const	$push94=, -4
	i32.add 	$push93=, $8, $pop94
	tee_local	$push92=, $2=, $pop93
	i32.const	$push91=, 0
	i32.store	0($pop92), $pop91
	i32.const	$push90=, 8
	i32.add 	$push89=, $7, $pop90
	tee_local	$push88=, $6=, $pop89
	i32.load	$push28=, 0($pop88)
	i32.store	0($1), $pop28
	i32.const	$push87=, -8
	i32.add 	$push29=, $8, $pop87
	i32.const	$push86=, 12
	i32.add 	$push30=, $7, $pop86
	i32.load	$push31=, 0($pop30)
	i32.store	0($pop29), $pop31
	i32.const	$push85=, 16
	i32.add 	$push84=, $7, $pop85
	tee_local	$push83=, $8=, $pop84
	i32.load	$push32=, 0($pop83)
	i32.store	0($2), $pop32
	i32.const	$push82=, 0
	i32.store	0($8), $pop82
	i64.const	$push81=, 0
	i64.store	0($6):p2align=2, $pop81
	i32.const	$push80=, -40
	i32.add 	$push79=, $9, $pop80
	tee_local	$push78=, $9=, $pop79
	copy_local	$8=, $pop78
	i32.const	$push77=, -40
	i32.add 	$push76=, $7, $pop77
	tee_local	$push75=, $7=, $pop76
	i32.add 	$push33=, $pop75, $5
	i32.const	$push74=, -20
	i32.ne  	$push34=, $pop33, $pop74
	br_if   	0, $pop34
	end_loop
	i32.const	$push35=, 4
	i32.add 	$push36=, $0, $pop35
	i32.load	$7=, 0($pop36)
	i32.load	$1=, 0($0)
	br      	1
.LBB114_10:
	end_block
	copy_local	$1=, $7
.LBB114_11:
	end_block
	i32.store	0($0), $9
	i32.const	$push120=, 4
	i32.add 	$push37=, $0, $pop120
	i32.store	0($pop37), $4
	i32.const	$push38=, 8
	i32.add 	$push39=, $0, $pop38
	i32.store	0($pop39), $3
	block   	
	i32.eq  	$push40=, $7, $1
	br_if   	0, $pop40
	i32.const	$push41=, 0
	i32.sub 	$9=, $pop41, $1
	i32.const	$push121=, -24
	i32.add 	$7=, $7, $pop121
.LBB114_13:
	loop    	
	block   	
	i32.const	$push124=, 12
	i32.add 	$push42=, $7, $pop124
	i32.load	$push123=, 0($pop42)
	tee_local	$push122=, $8=, $pop123
	i32.eqz 	$push134=, $pop122
	br_if   	0, $pop134
	i32.const	$push125=, 16
	i32.add 	$push43=, $7, $pop125
	i32.store	0($pop43), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB114_15:
	end_block
	block   	
	i32.load	$push127=, 0($7)
	tee_local	$push126=, $8=, $pop127
	i32.eqz 	$push135=, $pop126
	br_if   	0, $pop135
	i32.const	$push128=, 4
	i32.add 	$push44=, $7, $pop128
	i32.store	0($pop44), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB114_17:
	end_block
	i32.const	$push132=, -40
	i32.add 	$push131=, $7, $pop132
	tee_local	$push130=, $7=, $pop131
	i32.add 	$push45=, $pop130, $9
	i32.const	$push129=, -24
	i32.ne  	$push46=, $pop45, $pop129
	br_if   	0, $pop46
.LBB114_18:
	end_loop
	end_block
	block   	
	i32.eqz 	$push136=, $1
	br_if   	0, $pop136
	call    	_ZdlPv@FUNCTION, $1
.LBB114_20:
	end_block
	.endfunc
.Lfunc_end114:
	.size	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311597322538353EEEEEvDpOT_, .Lfunc_end114-_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311597322538353EEEEEvDpOT_

	.section	.text._ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311597322538353EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,"axG",@progbits,_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311597322538353EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,comdat
	.hidden	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311597322538353EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_
	.weak	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311597322538353EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_
	.type	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311597322538353EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,@function
_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311597322538353EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	i32.const	$push35=, 0
	i32.const	$push32=, 0
	i32.load	$push33=, __stack_pointer($pop32)
	i32.const	$push34=, 16
	i32.sub 	$push54=, $pop33, $pop34
	tee_local	$push53=, $7=, $pop54
	i32.store	__stack_pointer($pop35), $pop53
	i64.const	$push0=, 0
	i64.store	16($0):p2align=2, $pop0
	i32.const	$push1=, 24
	i32.add 	$push52=, $0, $pop1
	tee_local	$push51=, $6=, $pop52
	i64.const	$push50=, 0
	i64.store	0($pop51):p2align=2, $pop50
	i32.const	$push2=, 32
	i32.add 	$push3=, $0, $pop2
	i64.const	$push49=, 0
	i64.store	0($pop3):p2align=2, $pop49
	i64.const	$push4=, -3841127010667593728
	i64.store	0($0), $pop4
	i64.const	$push5=, -8665432476387013263
	i64.store	8($0), $pop5
	i32.load	$push6=, 0($1)
	i32.store	16($0), $pop6
	i32.const	$push7=, 20
	i32.add 	$push8=, $0, $pop7
	i32.load	$push9=, 4($1)
	i32.store	0($pop8), $pop9
	i32.load	$push10=, 8($1)
	i32.store	0($6), $pop10
	i32.const	$6=, 0
	i32.const	$push48=, 0
	i32.store	8($1), $pop48
	i64.const	$push47=, 0
	i64.store	0($1):p2align=2, $pop47
	i32.const	$push46=, 0
	i32.store	8($7), $pop46
	i64.const	$push45=, 0
	i64.store	0($7), $pop45
	i32.const	$5=, 0
	block   	
	i32.load	$push44=, 0($2)
	tee_local	$push43=, $1=, $pop44
	i32.load	$push42=, 4($2)
	tee_local	$push41=, $4=, $pop42
	i32.eq  	$push11=, $pop43, $pop41
	br_if   	0, $pop11
	i32.sub 	$push56=, $4, $1
	tee_local	$push55=, $3=, $pop56
	i32.eqz 	$push68=, $pop55
	br_if   	0, $pop68
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $7, $3
	i32.const	$push12=, 4
	i32.add 	$push13=, $2, $pop12
	i32.load	$4=, 0($pop13)
	i32.load	$1=, 0($2)
	i32.load	$5=, 4($7)
	i32.load	$6=, 0($7)
.LBB115_3:
	end_block
	block   	
	i32.eq  	$push14=, $1, $4
	br_if   	0, $pop14
.LBB115_5:
	loop    	
	i32.load8_u	$push15=, 0($1)
	i32.store8	15($7), $pop15
	i32.sub 	$push16=, $5, $6
	i32.const	$push63=, 0
	i32.gt_s	$push17=, $pop16, $pop63
	i32.const	$push62=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop17, $pop62
	i32.const	$push39=, 15
	i32.add 	$push40=, $7, $pop39
	i32.const	$push61=, 1
	i32.call	$drop=, memcpy@FUNCTION, $6, $pop40, $pop61
	i32.const	$push60=, 1
	i32.add 	$6=, $6, $pop60
	i32.const	$push59=, 1
	i32.add 	$push58=, $1, $pop59
	tee_local	$push57=, $1=, $pop58
	i32.ne  	$push18=, $4, $pop57
	br_if   	0, $pop18
.LBB115_6:
	end_loop
	end_block
	block   	
	i32.const	$push19=, 28
	i32.add 	$push67=, $0, $pop19
	tee_local	$push66=, $6=, $pop67
	i32.load	$push65=, 0($pop66)
	tee_local	$push64=, $1=, $pop65
	i32.eqz 	$push69=, $pop64
	br_if   	0, $pop69
	i32.const	$push20=, 32
	i32.add 	$push21=, $0, $pop20
	i32.store	0($pop21), $1
	call    	_ZdlPv@FUNCTION, $1
	i32.const	$push22=, 36
	i32.add 	$push23=, $0, $pop22
	i32.const	$push24=, 0
	i32.store	0($pop23), $pop24
	i64.const	$push25=, 0
	i64.store	0($6):p2align=2, $pop25
.LBB115_8:
	end_block
	i64.load	$push26=, 0($7)
	i64.store	0($6):p2align=2, $pop26
	i32.const	$push27=, 36
	i32.add 	$push28=, $0, $pop27
	i32.const	$push29=, 8
	i32.add 	$push30=, $7, $pop29
	i32.load	$push31=, 0($pop30)
	i32.store	0($pop28), $pop31
	i32.const	$push38=, 0
	i32.const	$push36=, 16
	i32.add 	$push37=, $7, $pop36
	i32.store	__stack_pointer($pop38), $pop37
	copy_local	$push70=, $0
	.endfunc
.Lfunc_end115:
	.size	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311597322538353EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_, .Lfunc_end115-_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311597322538353EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_

	.text
	.hidden	_ZN16test_transaction22send_transaction_emptyEyyy
	.globl	_ZN16test_transaction22send_transaction_emptyEyyy
	.type	_ZN16test_transaction22send_transaction_emptyEyyy,@function
_ZN16test_transaction22send_transaction_emptyEyyy:
	.param  	i64, i64, i64
	.local  	i32, i64, i32
	i32.const	$push24=, 0
	i32.const	$push21=, 0
	i32.load	$push22=, __stack_pointer($pop21)
	i32.const	$push23=, 96
	i32.sub 	$push51=, $pop22, $pop23
	tee_local	$push50=, $5=, $pop51
	i32.store	__stack_pointer($pop24), $pop50
	i64.call	$4=, current_time@FUNCTION
	i32.const	$push0=, 28
	i32.add 	$push1=, $5, $pop0
	i32.const	$push49=, 0
	i32.store	0($pop1), $pop49
	i32.const	$push2=, 32
	i32.add 	$push3=, $5, $pop2
	i32.const	$push48=, 0
	i32.store	0($pop3), $pop48
	i32.const	$push47=, 0
	i32.store	12($5), $pop47
	i32.const	$push46=, 0
	i32.store8	16($5), $pop46
	i32.const	$push45=, 0
	i32.store	20($5), $pop45
	i32.const	$push44=, 0
	i32.store	24($5), $pop44
	i64.const	$push4=, 1000000
	i64.div_u	$push5=, $4, $pop4
	i32.wrap/i64	$push6=, $pop5
	i32.const	$push7=, 60
	i32.add 	$push8=, $pop6, $pop7
	i32.store	0($5), $pop8
	i32.const	$push43=, 0
	i32.store	36($5), $pop43
	i32.const	$push9=, 40
	i32.add 	$push10=, $5, $pop9
	i32.const	$push42=, 0
	i32.store	0($pop10), $pop42
	i32.const	$push11=, 44
	i32.add 	$push12=, $5, $pop11
	i32.const	$push41=, 0
	i32.store	0($pop12), $pop41
	i32.const	$push40=, 0
	i32.store	48($5), $pop40
	i32.const	$push13=, 52
	i32.add 	$push14=, $5, $pop13
	i32.const	$push39=, 0
	i32.store	0($pop14), $pop39
	i32.const	$push15=, 56
	i32.add 	$push16=, $5, $pop15
	i32.const	$push38=, 0
	i32.store	0($pop16), $pop38
	i32.const	$push28=, 80
	i32.add 	$push29=, $5, $pop28
	call    	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop29, $5
	i64.const	$push17=, 0
	i64.store	64($5), $pop17
	i64.const	$push37=, 0
	i64.store	72($5), $pop37
	i32.const	$push30=, 64
	i32.add 	$push31=, $5, $pop30
	i32.load	$push36=, 80($5)
	tee_local	$push35=, $3=, $pop36
	i32.load	$push18=, 84($5)
	i32.sub 	$push19=, $pop18, $3
	i32.const	$push34=, 0
	call    	send_deferred@FUNCTION, $pop31, $0, $pop35, $pop19, $pop34
	block   	
	i32.load	$push33=, 80($5)
	tee_local	$push32=, $3=, $pop33
	i32.eqz 	$push53=, $pop32
	br_if   	0, $pop53
	i32.store	84($5), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB116_2:
	end_block
	i32.const	$push52=, 0
	i32.const	$push20=, .L.str.256
	call    	eosio_assert@FUNCTION, $pop52, $pop20
	i32.call	$drop=, _ZN5eosio11transactionD2Ev@FUNCTION, $5
	i32.const	$push27=, 0
	i32.const	$push25=, 96
	i32.add 	$push26=, $5, $pop25
	i32.store	__stack_pointer($pop27), $pop26
	.endfunc
.Lfunc_end116:
	.size	_ZN16test_transaction22send_transaction_emptyEyyy, .Lfunc_end116-_ZN16test_transaction22send_transaction_emptyEyyy

	.hidden	_ZN16test_transaction38send_transaction_trigger_error_handlerEyyy
	.globl	_ZN16test_transaction38send_transaction_trigger_error_handlerEyyy
	.type	_ZN16test_transaction38send_transaction_trigger_error_handlerEyyy,@function
_ZN16test_transaction38send_transaction_trigger_error_handlerEyyy:
	.param  	i64, i64, i64
	.local  	i32, i32, i32, i64, i64, i64, i64, i64, i32
	i32.const	$push65=, 0
	i32.const	$push62=, 0
	i32.load	$push63=, __stack_pointer($pop62)
	i32.const	$push64=, 112
	i32.sub 	$push96=, $pop63, $pop64
	tee_local	$push95=, $11=, $pop96
	i32.store	__stack_pointer($pop65), $pop95
	i64.call	$7=, current_time@FUNCTION
	i32.const	$push0=, 44
	i32.add 	$push1=, $11, $pop0
	i32.const	$push94=, 0
	i32.store	0($pop1), $pop94
	i32.const	$push2=, 48
	i32.add 	$push3=, $11, $pop2
	i32.const	$push93=, 0
	i32.store	0($pop3), $pop93
	i32.const	$push92=, 0
	i32.store	28($11), $pop92
	i32.const	$push91=, 0
	i32.store8	32($11), $pop91
	i32.const	$push90=, 0
	i32.store	36($11), $pop90
	i32.const	$push89=, 0
	i32.store	40($11), $pop89
	i64.const	$push4=, 1000000
	i64.div_u	$push5=, $7, $pop4
	i32.wrap/i64	$push6=, $pop5
	i32.const	$push7=, 60
	i32.add 	$push8=, $pop6, $pop7
	i32.store	16($11), $pop8
	i32.const	$push88=, 0
	i32.store	52($11), $pop88
	i32.const	$push9=, 56
	i32.add 	$push10=, $11, $pop9
	i32.const	$push87=, 0
	i32.store	0($pop10), $pop87
	i32.const	$push11=, 60
	i32.add 	$push12=, $11, $pop11
	i32.const	$push86=, 0
	i32.store	0($pop12), $pop86
	i32.const	$push85=, 0
	i32.store	64($11), $pop85
	i32.const	$push13=, 68
	i32.add 	$push14=, $11, $pop13
	i32.const	$push84=, 0
	i32.store	0($pop14), $pop84
	i32.const	$push15=, 72
	i32.add 	$push16=, $11, $pop15
	i32.const	$push83=, 0
	i32.store	0($pop16), $pop83
	i32.const	$push82=, 0
	i32.store	8($11), $pop82
	i64.const	$7=, 0
	i64.const	$push81=, 0
	i64.store	0($11), $pop81
	i32.const	$push17=, 52
	i32.add 	$3=, $11, $pop17
	i64.const	$6=, 59
	i32.const	$5=, .L.str.9
	i64.const	$8=, 0
.LBB117_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push97=, 6
	i64.gt_u	$push18=, $7, $pop97
	br_if   	0, $pop18
	i32.load8_s	$push102=, 0($5)
	tee_local	$push101=, $4=, $pop102
	i32.const	$push100=, -97
	i32.add 	$push20=, $pop101, $pop100
	i32.const	$push99=, 255
	i32.and 	$push21=, $pop20, $pop99
	i32.const	$push98=, 25
	i32.gt_u	$push22=, $pop21, $pop98
	br_if   	1, $pop22
	i32.const	$push103=, 165
	i32.add 	$4=, $4, $pop103
	br      	2
.LBB117_4:
	end_block
	i64.const	$9=, 0
	i64.const	$push104=, 11
	i64.le_u	$push19=, $7, $pop104
	br_if   	2, $pop19
	br      	3
.LBB117_5:
	end_block
	i32.const	$push109=, 208
	i32.add 	$push23=, $4, $pop109
	i32.const	$push108=, 0
	i32.const	$push107=, -49
	i32.add 	$push24=, $4, $pop107
	i32.const	$push106=, 255
	i32.and 	$push25=, $pop24, $pop106
	i32.const	$push105=, 5
	i32.lt_u	$push26=, $pop25, $pop105
	i32.select	$4=, $pop23, $pop108, $pop26
.LBB117_6:
	end_block
	i64.extend_u/i32	$push27=, $4
	i64.const	$push111=, 56
	i64.shl 	$push28=, $pop27, $pop111
	i64.const	$push110=, 56
	i64.shr_s	$9=, $pop28, $pop110
.LBB117_7:
	end_block
	i64.const	$push113=, 31
	i64.and 	$push30=, $9, $pop113
	i64.const	$push112=, 4294967295
	i64.and 	$push29=, $6, $pop112
	i64.shl 	$9=, $pop30, $pop29
.LBB117_8:
	end_block
	i32.const	$push119=, 1
	i32.add 	$5=, $5, $pop119
	i64.const	$push118=, 1
	i64.add 	$7=, $7, $pop118
	i64.or  	$8=, $9, $8
	i64.const	$push117=, -5
	i64.add 	$push116=, $6, $pop117
	tee_local	$push115=, $6=, $pop116
	i64.const	$push114=, -6
	i64.ne  	$push31=, $pop115, $pop114
	br_if   	0, $pop31
	end_loop
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$5=, .L.str.11
	i64.const	$10=, 0
.LBB117_10:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push120=, 5
	i64.gt_u	$push32=, $7, $pop120
	br_if   	0, $pop32
	i32.load8_s	$push125=, 0($5)
	tee_local	$push124=, $4=, $pop125
	i32.const	$push123=, -97
	i32.add 	$push34=, $pop124, $pop123
	i32.const	$push122=, 255
	i32.and 	$push35=, $pop34, $pop122
	i32.const	$push121=, 25
	i32.gt_u	$push36=, $pop35, $pop121
	br_if   	1, $pop36
	i32.const	$push126=, 165
	i32.add 	$4=, $4, $pop126
	br      	2
.LBB117_13:
	end_block
	i64.const	$9=, 0
	i64.const	$push127=, 11
	i64.le_u	$push33=, $7, $pop127
	br_if   	2, $pop33
	br      	3
.LBB117_14:
	end_block
	i32.const	$push132=, 208
	i32.add 	$push37=, $4, $pop132
	i32.const	$push131=, 0
	i32.const	$push130=, -49
	i32.add 	$push38=, $4, $pop130
	i32.const	$push129=, 255
	i32.and 	$push39=, $pop38, $pop129
	i32.const	$push128=, 5
	i32.lt_u	$push40=, $pop39, $pop128
	i32.select	$4=, $pop37, $pop131, $pop40
.LBB117_15:
	end_block
	i64.extend_u/i32	$push41=, $4
	i64.const	$push134=, 56
	i64.shl 	$push42=, $pop41, $pop134
	i64.const	$push133=, 56
	i64.shr_s	$9=, $pop42, $pop133
.LBB117_16:
	end_block
	i64.const	$push136=, 31
	i64.and 	$push44=, $9, $pop136
	i64.const	$push135=, 4294967295
	i64.and 	$push43=, $6, $pop135
	i64.shl 	$9=, $pop44, $pop43
.LBB117_17:
	end_block
	i32.const	$push142=, 1
	i32.add 	$5=, $5, $pop142
	i64.const	$push141=, 1
	i64.add 	$7=, $7, $pop141
	i64.or  	$10=, $9, $10
	i64.const	$push140=, -5
	i64.add 	$push139=, $6, $pop140
	tee_local	$push138=, $6=, $pop139
	i64.const	$push137=, -6
	i64.ne  	$push45=, $pop138, $pop137
	br_if   	0, $pop45
	end_loop
	i64.store	88($11), $10
	i64.store	80($11), $8
	i32.const	$push46=, 16
	i32.call	$push150=, _Znwj@FUNCTION, $pop46
	tee_local	$push149=, $5=, $pop150
	i32.const	$push47=, 12
	i32.add 	$push48=, $pop149, $pop47
	i32.const	$push69=, 80
	i32.add 	$push70=, $11, $pop69
	i32.const	$push148=, 12
	i32.add 	$push49=, $pop70, $pop148
	i32.load	$push50=, 0($pop49)
	i32.store	0($pop48), $pop50
	i32.const	$push51=, 4
	i32.add 	$push52=, $5, $pop51
	i32.load	$push53=, 84($11)
	i32.store	0($pop52), $pop53
	i32.store	96($11), $5
	i32.load	$push54=, 80($11)
	i32.store	0($5), $pop54
	i32.const	$push147=, 16
	i32.add 	$push146=, $5, $pop147
	tee_local	$push145=, $4=, $pop146
	i32.store	104($11), $pop145
	i32.const	$push55=, 8
	i32.add 	$push56=, $5, $pop55
	i32.load	$push57=, 88($11)
	i32.store	0($pop56), $pop57
	i32.store	100($11), $4
	i32.const	$push71=, 96
	i32.add 	$push72=, $11, $pop71
	call    	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEEvDpOT_@FUNCTION, $3, $pop72, $11
	block   	
	i32.load	$push144=, 96($11)
	tee_local	$push143=, $5=, $pop144
	i32.eqz 	$push158=, $pop143
	br_if   	0, $pop158
	i32.store	100($11), $5
	call    	_ZdlPv@FUNCTION, $5
.LBB117_20:
	end_block
	i32.const	$push73=, 96
	i32.add 	$push74=, $11, $pop73
	i32.const	$push75=, 16
	i32.add 	$push76=, $11, $pop75
	call    	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop74, $pop76
	i64.const	$push58=, 0
	i64.store	80($11), $pop58
	i64.const	$push155=, 0
	i64.store	88($11), $pop155
	i32.const	$push77=, 80
	i32.add 	$push78=, $11, $pop77
	i32.load	$push154=, 96($11)
	tee_local	$push153=, $5=, $pop154
	i32.load	$push59=, 100($11)
	i32.sub 	$push60=, $pop59, $5
	i32.const	$push61=, 0
	call    	send_deferred@FUNCTION, $pop78, $0, $pop153, $pop60, $pop61
	block   	
	i32.load	$push152=, 96($11)
	tee_local	$push151=, $5=, $pop152
	i32.eqz 	$push159=, $pop151
	br_if   	0, $pop159
	i32.store	100($11), $5
	call    	_ZdlPv@FUNCTION, $5
.LBB117_22:
	end_block
	block   	
	i32.load	$push157=, 0($11)
	tee_local	$push156=, $5=, $pop157
	i32.eqz 	$push160=, $pop156
	br_if   	0, $pop160
	i32.store	4($11), $5
	call    	_ZdlPv@FUNCTION, $5
.LBB117_24:
	end_block
	i32.const	$push79=, 16
	i32.add 	$push80=, $11, $pop79
	i32.call	$drop=, _ZN5eosio11transactionD2Ev@FUNCTION, $pop80
	i32.const	$push68=, 0
	i32.const	$push66=, 112
	i32.add 	$push67=, $11, $pop66
	i32.store	__stack_pointer($pop68), $pop67
	.endfunc
.Lfunc_end117:
	.size	_ZN16test_transaction38send_transaction_trigger_error_handlerEyyy, .Lfunc_end117-_ZN16test_transaction38send_transaction_trigger_error_handlerEyyy

	.section	.text._ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEEvDpOT_:
	.param  	i32, i32, i32
	.local  	i32, i32, i32, i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push53=, 0($0)
	tee_local	$push52=, $8=, $pop53
	i32.sub 	$push1=, $pop0, $pop52
	i32.const	$push51=, 40
	i32.div_s	$push50=, $pop1, $pop51
	tee_local	$push49=, $9=, $pop50
	i32.const	$push2=, 1
	i32.add 	$push48=, $pop49, $pop2
	tee_local	$push47=, $6=, $pop48
	i32.const	$push3=, 107374183
	i32.ge_u	$push4=, $pop47, $pop3
	br_if   	0, $pop4
	i32.const	$7=, 107374182
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $8
	i32.const	$push56=, 40
	i32.div_s	$push55=, $pop6, $pop56
	tee_local	$push54=, $8=, $pop55
	i32.const	$push7=, 53687090
	i32.gt_u	$push8=, $pop54, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push60=, $8, $pop9
	tee_local	$push59=, $7=, $pop60
	i32.lt_u	$push10=, $7, $6
	i32.select	$push58=, $6, $pop59, $pop10
	tee_local	$push57=, $7=, $pop58
	i32.eqz 	$push133=, $pop57
	br_if   	1, $pop133
.LBB118_3:
	end_block
	i32.const	$push11=, 40
	i32.mul 	$push12=, $7, $pop11
	i32.call	$8=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB118_4:
	end_block
	i32.const	$7=, 0
	i32.const	$8=, 0
	br      	1
.LBB118_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB118_6:
	end_block
	i32.const	$push13=, 40
	i32.mul 	$push14=, $7, $pop13
	i32.add 	$3=, $8, $pop14
	i32.const	$push71=, 40
	i32.mul 	$push15=, $9, $pop71
	i32.add 	$push70=, $8, $pop15
	tee_local	$push69=, $9=, $pop70
	i32.call	$push68=, _ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_@FUNCTION, $pop69, $1, $2
	tee_local	$push67=, $8=, $pop68
	i32.const	$push66=, 40
	i32.add 	$4=, $pop67, $pop66
	block   	
	block   	
	i32.const	$push65=, 4
	i32.add 	$push16=, $0, $pop65
	i32.load	$push64=, 0($pop16)
	tee_local	$push63=, $1=, $pop64
	i32.load	$push62=, 0($0)
	tee_local	$push61=, $7=, $pop62
	i32.eq  	$push17=, $pop63, $pop61
	br_if   	0, $pop17
	i32.const	$push73=, 0
	i32.sub 	$5=, $pop73, $7
	i32.const	$push72=, -20
	i32.add 	$7=, $1, $pop72
.LBB118_8:
	loop    	
	i32.const	$push119=, -32
	i32.add 	$push18=, $8, $pop119
	i32.const	$push118=, -12
	i32.add 	$push19=, $7, $pop118
	i64.load	$push20=, 0($pop19)
	i64.store	0($pop18), $pop20
	i32.const	$push117=, -40
	i32.add 	$push21=, $8, $pop117
	i32.const	$push116=, -20
	i32.add 	$push22=, $7, $pop116
	i64.load	$push23=, 0($pop22)
	i64.store	0($pop21), $pop23
	i32.const	$push115=, -24
	i32.add 	$push114=, $8, $pop115
	tee_local	$push113=, $1=, $pop114
	i64.const	$push112=, 0
	i64.store	0($pop113):p2align=2, $pop112
	i32.const	$push111=, -16
	i32.add 	$push110=, $8, $pop111
	tee_local	$push109=, $2=, $pop110
	i32.const	$push108=, 0
	i32.store	0($pop109), $pop108
	i32.const	$push107=, -4
	i32.add 	$push106=, $7, $pop107
	tee_local	$push105=, $6=, $pop106
	i32.load	$push24=, 0($pop105)
	i32.store	0($1), $pop24
	i32.const	$push104=, -20
	i32.add 	$push25=, $8, $pop104
	i32.load	$push26=, 0($7)
	i32.store	0($pop25), $pop26
	i32.const	$push103=, 4
	i32.add 	$push102=, $7, $pop103
	tee_local	$push101=, $1=, $pop102
	i32.load	$push27=, 0($pop101)
	i32.store	0($2), $pop27
	i32.const	$push100=, 0
	i32.store	0($1), $pop100
	i32.const	$push99=, -12
	i32.add 	$push98=, $8, $pop99
	tee_local	$push97=, $1=, $pop98
	i64.const	$push96=, 0
	i64.store	0($pop97):p2align=2, $pop96
	i64.const	$push95=, 0
	i64.store	0($6):p2align=2, $pop95
	i32.const	$push94=, -4
	i32.add 	$push93=, $8, $pop94
	tee_local	$push92=, $2=, $pop93
	i32.const	$push91=, 0
	i32.store	0($pop92), $pop91
	i32.const	$push90=, 8
	i32.add 	$push89=, $7, $pop90
	tee_local	$push88=, $6=, $pop89
	i32.load	$push28=, 0($pop88)
	i32.store	0($1), $pop28
	i32.const	$push87=, -8
	i32.add 	$push29=, $8, $pop87
	i32.const	$push86=, 12
	i32.add 	$push30=, $7, $pop86
	i32.load	$push31=, 0($pop30)
	i32.store	0($pop29), $pop31
	i32.const	$push85=, 16
	i32.add 	$push84=, $7, $pop85
	tee_local	$push83=, $8=, $pop84
	i32.load	$push32=, 0($pop83)
	i32.store	0($2), $pop32
	i32.const	$push82=, 0
	i32.store	0($8), $pop82
	i64.const	$push81=, 0
	i64.store	0($6):p2align=2, $pop81
	i32.const	$push80=, -40
	i32.add 	$push79=, $9, $pop80
	tee_local	$push78=, $9=, $pop79
	copy_local	$8=, $pop78
	i32.const	$push77=, -40
	i32.add 	$push76=, $7, $pop77
	tee_local	$push75=, $7=, $pop76
	i32.add 	$push33=, $pop75, $5
	i32.const	$push74=, -20
	i32.ne  	$push34=, $pop33, $pop74
	br_if   	0, $pop34
	end_loop
	i32.const	$push35=, 4
	i32.add 	$push36=, $0, $pop35
	i32.load	$7=, 0($pop36)
	i32.load	$1=, 0($0)
	br      	1
.LBB118_10:
	end_block
	copy_local	$1=, $7
.LBB118_11:
	end_block
	i32.store	0($0), $9
	i32.const	$push120=, 4
	i32.add 	$push37=, $0, $pop120
	i32.store	0($pop37), $4
	i32.const	$push38=, 8
	i32.add 	$push39=, $0, $pop38
	i32.store	0($pop39), $3
	block   	
	i32.eq  	$push40=, $7, $1
	br_if   	0, $pop40
	i32.const	$push41=, 0
	i32.sub 	$9=, $pop41, $1
	i32.const	$push121=, -24
	i32.add 	$7=, $7, $pop121
.LBB118_13:
	loop    	
	block   	
	i32.const	$push124=, 12
	i32.add 	$push42=, $7, $pop124
	i32.load	$push123=, 0($pop42)
	tee_local	$push122=, $8=, $pop123
	i32.eqz 	$push134=, $pop122
	br_if   	0, $pop134
	i32.const	$push125=, 16
	i32.add 	$push43=, $7, $pop125
	i32.store	0($pop43), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB118_15:
	end_block
	block   	
	i32.load	$push127=, 0($7)
	tee_local	$push126=, $8=, $pop127
	i32.eqz 	$push135=, $pop126
	br_if   	0, $pop135
	i32.const	$push128=, 4
	i32.add 	$push44=, $7, $pop128
	i32.store	0($pop44), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB118_17:
	end_block
	i32.const	$push132=, -40
	i32.add 	$push131=, $7, $pop132
	tee_local	$push130=, $7=, $pop131
	i32.add 	$push45=, $pop130, $9
	i32.const	$push129=, -24
	i32.ne  	$push46=, $pop45, $pop129
	br_if   	0, $pop46
.LBB118_18:
	end_loop
	end_block
	block   	
	i32.eqz 	$push136=, $1
	br_if   	0, $pop136
	call    	_ZdlPv@FUNCTION, $1
.LBB118_20:
	end_block
	.endfunc
.Lfunc_end118:
	.size	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEEvDpOT_, .Lfunc_end118-_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595419386437EEEEEvDpOT_

	.text
	.hidden	_ZN16test_transaction26assert_false_error_handlerERKN5eosio11transactionE
	.globl	_ZN16test_transaction26assert_false_error_handlerERKN5eosio11transactionE
	.type	_ZN16test_transaction26assert_false_error_handlerERKN5eosio11transactionE,@function
_ZN16test_transaction26assert_false_error_handlerERKN5eosio11transactionE:
	.param  	i32
	.local  	i64, i32, i32, i64, i64, i64, i64
	i32.const	$push0=, 40
	i32.add 	$push1=, $0, $pop0
	i32.load	$push2=, 0($pop1)
	i32.load	$push3=, 36($0)
	i32.sub 	$push4=, $pop2, $pop3
	i32.const	$push76=, 40
	i32.eq  	$push5=, $pop4, $pop76
	i32.const	$push6=, .L.str.257
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	i32.load	$push7=, 36($0)
	i64.load	$1=, 0($pop7)
	i64.const	$5=, 0
	i64.const	$4=, 59
	i32.const	$3=, .L.str.9
	i64.const	$6=, 0
.LBB119_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push77=, 6
	i64.gt_u	$push8=, $5, $pop77
	br_if   	0, $pop8
	i32.load8_s	$push82=, 0($3)
	tee_local	$push81=, $2=, $pop82
	i32.const	$push80=, -97
	i32.add 	$push10=, $pop81, $pop80
	i32.const	$push79=, 255
	i32.and 	$push11=, $pop10, $pop79
	i32.const	$push78=, 25
	i32.gt_u	$push12=, $pop11, $pop78
	br_if   	1, $pop12
	i32.const	$push83=, 165
	i32.add 	$2=, $2, $pop83
	br      	2
.LBB119_4:
	end_block
	i64.const	$7=, 0
	i64.const	$push84=, 11
	i64.le_u	$push9=, $5, $pop84
	br_if   	2, $pop9
	br      	3
.LBB119_5:
	end_block
	i32.const	$push89=, 208
	i32.add 	$push13=, $2, $pop89
	i32.const	$push88=, 0
	i32.const	$push87=, -49
	i32.add 	$push14=, $2, $pop87
	i32.const	$push86=, 255
	i32.and 	$push15=, $pop14, $pop86
	i32.const	$push85=, 5
	i32.lt_u	$push16=, $pop15, $pop85
	i32.select	$2=, $pop13, $pop88, $pop16
.LBB119_6:
	end_block
	i64.extend_u/i32	$push17=, $2
	i64.const	$push91=, 56
	i64.shl 	$push18=, $pop17, $pop91
	i64.const	$push90=, 56
	i64.shr_s	$7=, $pop18, $pop90
.LBB119_7:
	end_block
	i64.const	$push93=, 31
	i64.and 	$push20=, $7, $pop93
	i64.const	$push92=, 4294967295
	i64.and 	$push19=, $4, $pop92
	i64.shl 	$7=, $pop20, $pop19
.LBB119_8:
	end_block
	i32.const	$push99=, 1
	i32.add 	$3=, $3, $pop99
	i64.const	$push98=, 1
	i64.add 	$5=, $5, $pop98
	i64.or  	$6=, $7, $6
	i64.const	$push97=, -5
	i64.add 	$push96=, $4, $pop97
	tee_local	$push95=, $4=, $pop96
	i64.const	$push94=, -6
	i64.ne  	$push21=, $pop95, $pop94
	br_if   	0, $pop21
	end_loop
	i64.eq  	$push22=, $1, $6
	i32.const	$push23=, .L.str.258
	call    	eosio_assert@FUNCTION, $pop22, $pop23
	i32.const	$push24=, 36
	i32.add 	$push103=, $0, $pop24
	tee_local	$push102=, $3=, $pop103
	i32.load	$push25=, 0($pop102)
	i64.load	$push26=, 8($pop25)
	i64.const	$push27=, -8665432478290165179
	i64.eq  	$push28=, $pop26, $pop27
	i32.const	$push29=, .L.str.261
	call    	eosio_assert@FUNCTION, $pop28, $pop29
	i32.load	$push101=, 0($3)
	tee_local	$push100=, $2=, $pop101
	i32.const	$push31=, 20
	i32.add 	$push32=, $pop100, $pop31
	i32.load	$push33=, 0($pop32)
	i32.load	$push30=, 16($2)
	i32.sub 	$push34=, $pop33, $pop30
	i32.const	$push35=, 16
	i32.eq  	$push36=, $pop34, $pop35
	i32.const	$push37=, .L.str.262
	call    	eosio_assert@FUNCTION, $pop36, $pop37
	i32.load	$push38=, 0($3)
	i32.load	$push39=, 16($pop38)
	i64.load	$1=, 0($pop39)
	i64.const	$5=, 0
	i64.const	$4=, 59
	i32.const	$3=, .L.str.9
	i64.const	$6=, 0
.LBB119_10:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push104=, 6
	i64.gt_u	$push40=, $5, $pop104
	br_if   	0, $pop40
	i32.load8_s	$push109=, 0($3)
	tee_local	$push108=, $2=, $pop109
	i32.const	$push107=, -97
	i32.add 	$push42=, $pop108, $pop107
	i32.const	$push106=, 255
	i32.and 	$push43=, $pop42, $pop106
	i32.const	$push105=, 25
	i32.gt_u	$push44=, $pop43, $pop105
	br_if   	1, $pop44
	i32.const	$push110=, 165
	i32.add 	$2=, $2, $pop110
	br      	2
.LBB119_13:
	end_block
	i64.const	$7=, 0
	i64.const	$push111=, 11
	i64.le_u	$push41=, $5, $pop111
	br_if   	2, $pop41
	br      	3
.LBB119_14:
	end_block
	i32.const	$push116=, 208
	i32.add 	$push45=, $2, $pop116
	i32.const	$push115=, 0
	i32.const	$push114=, -49
	i32.add 	$push46=, $2, $pop114
	i32.const	$push113=, 255
	i32.and 	$push47=, $pop46, $pop113
	i32.const	$push112=, 5
	i32.lt_u	$push48=, $pop47, $pop112
	i32.select	$2=, $pop45, $pop115, $pop48
.LBB119_15:
	end_block
	i64.extend_u/i32	$push49=, $2
	i64.const	$push118=, 56
	i64.shl 	$push50=, $pop49, $pop118
	i64.const	$push117=, 56
	i64.shr_s	$7=, $pop50, $pop117
.LBB119_16:
	end_block
	i64.const	$push120=, 31
	i64.and 	$push52=, $7, $pop120
	i64.const	$push119=, 4294967295
	i64.and 	$push51=, $4, $pop119
	i64.shl 	$7=, $pop52, $pop51
.LBB119_17:
	end_block
	i32.const	$push126=, 1
	i32.add 	$3=, $3, $pop126
	i64.const	$push125=, 1
	i64.add 	$5=, $5, $pop125
	i64.or  	$6=, $7, $6
	i64.const	$push124=, -5
	i64.add 	$push123=, $4, $pop124
	tee_local	$push122=, $4=, $pop123
	i64.const	$push121=, -6
	i64.ne  	$push53=, $pop122, $pop121
	br_if   	0, $pop53
	end_loop
	i64.eq  	$push54=, $1, $6
	i32.const	$push55=, .L.str.263
	call    	eosio_assert@FUNCTION, $pop54, $pop55
	i32.const	$push56=, 36
	i32.add 	$push57=, $0, $pop56
	i32.load	$push58=, 0($pop57)
	i32.load	$push59=, 16($pop58)
	i64.load	$1=, 8($pop59)
	i64.const	$5=, 0
	i64.const	$4=, 59
	i32.const	$3=, .L.str.11
	i64.const	$6=, 0
.LBB119_19:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push127=, 5
	i64.gt_u	$push60=, $5, $pop127
	br_if   	0, $pop60
	i32.load8_s	$push132=, 0($3)
	tee_local	$push131=, $2=, $pop132
	i32.const	$push130=, -97
	i32.add 	$push62=, $pop131, $pop130
	i32.const	$push129=, 255
	i32.and 	$push63=, $pop62, $pop129
	i32.const	$push128=, 25
	i32.gt_u	$push64=, $pop63, $pop128
	br_if   	1, $pop64
	i32.const	$push133=, 165
	i32.add 	$2=, $2, $pop133
	br      	2
.LBB119_22:
	end_block
	i64.const	$7=, 0
	i64.const	$push134=, 11
	i64.le_u	$push61=, $5, $pop134
	br_if   	2, $pop61
	br      	3
.LBB119_23:
	end_block
	i32.const	$push139=, 208
	i32.add 	$push65=, $2, $pop139
	i32.const	$push138=, 0
	i32.const	$push137=, -49
	i32.add 	$push66=, $2, $pop137
	i32.const	$push136=, 255
	i32.and 	$push67=, $pop66, $pop136
	i32.const	$push135=, 5
	i32.lt_u	$push68=, $pop67, $pop135
	i32.select	$2=, $pop65, $pop138, $pop68
.LBB119_24:
	end_block
	i64.extend_u/i32	$push69=, $2
	i64.const	$push141=, 56
	i64.shl 	$push70=, $pop69, $pop141
	i64.const	$push140=, 56
	i64.shr_s	$7=, $pop70, $pop140
.LBB119_25:
	end_block
	i64.const	$push143=, 31
	i64.and 	$push72=, $7, $pop143
	i64.const	$push142=, 4294967295
	i64.and 	$push71=, $4, $pop142
	i64.shl 	$7=, $pop72, $pop71
.LBB119_26:
	end_block
	i32.const	$push149=, 1
	i32.add 	$3=, $3, $pop149
	i64.const	$push148=, 1
	i64.add 	$5=, $5, $pop148
	i64.or  	$6=, $7, $6
	i64.const	$push147=, -5
	i64.add 	$push146=, $4, $pop147
	tee_local	$push145=, $4=, $pop146
	i64.const	$push144=, -6
	i64.ne  	$push73=, $pop145, $pop144
	br_if   	0, $pop73
	end_loop
	i64.eq  	$push74=, $1, $6
	i32.const	$push75=, .L.str.264
	call    	eosio_assert@FUNCTION, $pop74, $pop75
	.endfunc
.Lfunc_end119:
	.size	_ZN16test_transaction26assert_false_error_handlerERKN5eosio11transactionE, .Lfunc_end119-_ZN16test_transaction26assert_false_error_handlerERKN5eosio11transactionE

	.hidden	_ZN16test_transaction22send_transaction_largeEyyy
	.globl	_ZN16test_transaction22send_transaction_largeEyyy
	.type	_ZN16test_transaction22send_transaction_largeEyyy,@function
_ZN16test_transaction22send_transaction_largeEyyy:
	.param  	i64, i64, i64
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32
	i32.const	$push68=, 0
	i32.const	$push65=, 0
	i32.load	$push66=, __stack_pointer($pop65)
	i32.const	$push67=, 1136
	i32.sub 	$push118=, $pop66, $pop67
	tee_local	$push117=, $17=, $pop118
	i32.store	__stack_pointer($pop68), $pop117
	i64.call	$13=, current_time@FUNCTION
	i32.const	$push0=, 1100
	i32.add 	$push1=, $17, $pop0
	i32.const	$push116=, 0
	i32.store	0($pop1), $pop116
	i32.const	$push72=, 1072
	i32.add 	$push73=, $17, $pop72
	i32.const	$push115=, 32
	i32.add 	$push2=, $pop73, $pop115
	i32.const	$push114=, 0
	i32.store	0($pop2), $pop114
	i32.const	$push113=, 0
	i32.store	1084($17), $pop113
	i32.const	$push112=, 0
	i32.store8	1088($17), $pop112
	i32.const	$push111=, 0
	i32.store	1092($17), $pop111
	i32.const	$push110=, 0
	i32.store	1096($17), $pop110
	i64.const	$push3=, 1000000
	i64.div_u	$push4=, $13, $pop3
	i32.wrap/i64	$push5=, $pop4
	i32.const	$push6=, 60
	i32.add 	$push7=, $pop5, $pop6
	i32.store	1072($17), $pop7
	i32.const	$push109=, 0
	i32.store	1108($17), $pop109
	i32.const	$push74=, 1072
	i32.add 	$push75=, $17, $pop74
	i32.const	$push108=, 40
	i32.add 	$push107=, $pop75, $pop108
	tee_local	$push106=, $5=, $pop107
	i32.const	$push105=, 0
	i32.store	0($pop106), $pop105
	i32.const	$push8=, 1116
	i32.add 	$push104=, $17, $pop8
	tee_local	$push103=, $6=, $pop104
	i32.const	$push102=, 0
	i32.store	0($pop103), $pop102
	i32.const	$push101=, 0
	i32.store	1120($17), $pop101
	i32.const	$push9=, 1124
	i32.add 	$push10=, $17, $pop9
	i32.const	$push100=, 0
	i32.store	0($pop10), $pop100
	i32.const	$push11=, 1128
	i32.add 	$push12=, $17, $pop11
	i32.const	$push99=, 0
	i32.store	0($pop12), $pop99
	i32.const	$push13=, 1108
	i32.add 	$3=, $17, $pop13
	i32.const	$push76=, 32
	i32.add 	$push77=, $17, $pop76
	i32.const	$push98=, 8
	i32.add 	$7=, $pop77, $pop98
	i32.const	$8=, 0
.LBB120_1:
	loop    	
	i32.const	$push120=, 0
	i32.store	0($7), $pop120
	i64.const	$push119=, 0
	i64.store	32($17), $pop119
	i32.const	$9=, 0
	i32.const	$10=, 0
	i32.const	$11=, 0
.LBB120_2:
	block   	
	loop    	
	i32.const	$push78=, 48
	i32.add 	$push79=, $17, $pop78
	i32.add 	$4=, $pop79, $11
	block   	
	block   	
	i32.eq  	$push14=, $10, $9
	br_if   	0, $pop14
	i32.load8_u	$push15=, 0($4)
	i32.store8	0($10), $pop15
	i32.load	$push16=, 36($17)
	i32.const	$push123=, 1
	i32.add 	$push17=, $pop16, $pop123
	i32.store	36($17), $pop17
	i32.const	$push122=, 1023
	i32.ne  	$push18=, $11, $pop122
	br_if   	1, $pop18
	br      	3
.LBB120_4:
	end_block
	i32.const	$push80=, 32
	i32.add 	$push81=, $17, $pop80
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_@FUNCTION, $pop81, $4
	i32.const	$push124=, 1023
	i32.eq  	$push19=, $11, $pop124
	br_if   	2, $pop19
.LBB120_5:
	end_block
	i32.const	$push121=, 1
	i32.add 	$11=, $11, $pop121
	i32.load	$9=, 0($7)
	i32.load	$10=, 36($17)
	br      	0
.LBB120_6:
	end_loop
	end_block
	i64.const	$13=, 0
	i64.const	$12=, 59
	i32.const	$11=, .L.str.9
	i64.const	$14=, 0
.LBB120_7:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push125=, 6
	i64.gt_u	$push20=, $13, $pop125
	br_if   	0, $pop20
	i32.load8_s	$push130=, 0($11)
	tee_local	$push129=, $10=, $pop130
	i32.const	$push128=, -97
	i32.add 	$push22=, $pop129, $pop128
	i32.const	$push127=, 255
	i32.and 	$push23=, $pop22, $pop127
	i32.const	$push126=, 25
	i32.gt_u	$push24=, $pop23, $pop126
	br_if   	1, $pop24
	i32.const	$push131=, 165
	i32.add 	$10=, $10, $pop131
	br      	2
.LBB120_10:
	end_block
	i64.const	$15=, 0
	i64.const	$push132=, 11
	i64.le_u	$push21=, $13, $pop132
	br_if   	2, $pop21
	br      	3
.LBB120_11:
	end_block
	i32.const	$push137=, 208
	i32.add 	$push25=, $10, $pop137
	i32.const	$push136=, 0
	i32.const	$push135=, -49
	i32.add 	$push26=, $10, $pop135
	i32.const	$push134=, 255
	i32.and 	$push27=, $pop26, $pop134
	i32.const	$push133=, 5
	i32.lt_u	$push28=, $pop27, $pop133
	i32.select	$10=, $pop25, $pop136, $pop28
.LBB120_12:
	end_block
	i64.extend_u/i32	$push29=, $10
	i64.const	$push139=, 56
	i64.shl 	$push30=, $pop29, $pop139
	i64.const	$push138=, 56
	i64.shr_s	$15=, $pop30, $pop138
.LBB120_13:
	end_block
	i64.const	$push141=, 31
	i64.and 	$push32=, $15, $pop141
	i64.const	$push140=, 4294967295
	i64.and 	$push31=, $12, $pop140
	i64.shl 	$15=, $pop32, $pop31
.LBB120_14:
	end_block
	i32.const	$push147=, 1
	i32.add 	$11=, $11, $pop147
	i64.const	$push146=, 1
	i64.add 	$13=, $13, $pop146
	i64.or  	$14=, $15, $14
	i64.const	$push145=, -5
	i64.add 	$push144=, $12, $pop145
	tee_local	$push143=, $12=, $pop144
	i64.const	$push142=, -6
	i64.ne  	$push33=, $pop143, $pop142
	br_if   	0, $pop33
	end_loop
	i64.const	$13=, 0
	i64.const	$12=, 59
	i32.const	$11=, .L.str.11
	i64.const	$16=, 0
.LBB120_16:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push148=, 5
	i64.gt_u	$push34=, $13, $pop148
	br_if   	0, $pop34
	i32.load8_s	$push153=, 0($11)
	tee_local	$push152=, $10=, $pop153
	i32.const	$push151=, -97
	i32.add 	$push36=, $pop152, $pop151
	i32.const	$push150=, 255
	i32.and 	$push37=, $pop36, $pop150
	i32.const	$push149=, 25
	i32.gt_u	$push38=, $pop37, $pop149
	br_if   	1, $pop38
	i32.const	$push154=, 165
	i32.add 	$10=, $10, $pop154
	br      	2
.LBB120_19:
	end_block
	i64.const	$15=, 0
	i64.const	$push155=, 11
	i64.le_u	$push35=, $13, $pop155
	br_if   	2, $pop35
	br      	3
.LBB120_20:
	end_block
	i32.const	$push160=, 208
	i32.add 	$push39=, $10, $pop160
	i32.const	$push159=, 0
	i32.const	$push158=, -49
	i32.add 	$push40=, $10, $pop158
	i32.const	$push157=, 255
	i32.and 	$push41=, $pop40, $pop157
	i32.const	$push156=, 5
	i32.lt_u	$push42=, $pop41, $pop156
	i32.select	$10=, $pop39, $pop159, $pop42
.LBB120_21:
	end_block
	i64.extend_u/i32	$push43=, $10
	i64.const	$push162=, 56
	i64.shl 	$push44=, $pop43, $pop162
	i64.const	$push161=, 56
	i64.shr_s	$15=, $pop44, $pop161
.LBB120_22:
	end_block
	i64.const	$push164=, 31
	i64.and 	$push46=, $15, $pop164
	i64.const	$push163=, 4294967295
	i64.and 	$push45=, $12, $pop163
	i64.shl 	$15=, $pop46, $pop45
.LBB120_23:
	end_block
	i32.const	$push170=, 1
	i32.add 	$11=, $11, $pop170
	i64.const	$push169=, 1
	i64.add 	$13=, $13, $pop169
	i64.or  	$16=, $15, $16
	i64.const	$push168=, -5
	i64.add 	$push167=, $12, $pop168
	tee_local	$push166=, $12=, $pop167
	i64.const	$push165=, -6
	i64.ne  	$push47=, $pop166, $pop165
	br_if   	0, $pop47
	end_loop
	i32.const	$push190=, 8
	i32.add 	$push189=, $17, $pop190
	tee_local	$push188=, $10=, $pop189
	i64.store	0($pop188), $16
	i32.const	$push82=, 16
	i32.add 	$push83=, $17, $pop82
	i32.const	$push187=, 8
	i32.add 	$push186=, $pop83, $pop187
	tee_local	$push185=, $9=, $pop186
	i32.const	$push184=, 0
	i32.store	0($pop185), $pop184
	i64.store	0($17), $14
	i64.const	$push183=, 0
	i64.store	16($17), $pop183
	i32.const	$push182=, 16
	i32.call	$push181=, _Znwj@FUNCTION, $pop182
	tee_local	$push180=, $11=, $pop181
	i32.const	$push179=, 16
	i32.add 	$push178=, $pop180, $pop179
	tee_local	$push177=, $4=, $pop178
	i32.store	0($9), $pop177
	i32.const	$push176=, 12
	i32.add 	$push48=, $11, $pop176
	i32.const	$push175=, 12
	i32.add 	$push49=, $17, $pop175
	i32.load	$push50=, 0($pop49)
	i32.store	0($pop48), $pop50
	i32.const	$push174=, 4
	i32.add 	$push51=, $11, $pop174
	i32.load	$push52=, 4($17)
	i32.store	0($pop51), $pop52
	i32.store	16($17), $11
	i32.load	$push53=, 0($17)
	i32.store	0($11), $pop53
	i32.const	$push173=, 8
	i32.add 	$push54=, $11, $pop173
	i32.load	$push55=, 0($10)
	i32.store	0($pop54), $pop55
	i32.store	20($17), $4
	block   	
	block   	
	block   	
	i32.load	$push172=, 0($5)
	tee_local	$push171=, $11=, $pop172
	i32.load	$push56=, 0($6)
	i32.ge_u	$push57=, $pop171, $pop56
	br_if   	0, $pop57
	i32.const	$push84=, 16
	i32.add 	$push85=, $17, $pop84
	i32.const	$push86=, 32
	i32.add 	$push87=, $17, $pop86
	i32.call	$drop=, _ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_@FUNCTION, $11, $pop85, $pop87
	i32.load	$push58=, 0($5)
	i32.const	$push193=, 40
	i32.add 	$push59=, $pop58, $pop193
	i32.store	0($5), $pop59
	i32.load	$push192=, 16($17)
	tee_local	$push191=, $11=, $pop192
	br_if   	1, $pop191
	br      	2
.LBB120_26:
	end_block
	i32.const	$push94=, 16
	i32.add 	$push95=, $17, $pop94
	i32.const	$push96=, 32
	i32.add 	$push97=, $17, $pop96
	call    	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy9781311595436863162EEEEEvDpOT_@FUNCTION, $3, $pop95, $pop97
	i32.load	$push195=, 16($17)
	tee_local	$push194=, $11=, $pop195
	i32.eqz 	$push209=, $pop194
	br_if   	1, $pop209
.LBB120_27:
	end_block
	i32.store	20($17), $11
	call    	_ZdlPv@FUNCTION, $11
.LBB120_28:
	end_block
	block   	
	i32.load	$push197=, 32($17)
	tee_local	$push196=, $11=, $pop197
	i32.eqz 	$push210=, $pop196
	br_if   	0, $pop210
	i32.store	36($17), $11
	call    	_ZdlPv@FUNCTION, $11
.LBB120_30:
	end_block
	i32.const	$push201=, 1
	i32.add 	$push200=, $8, $pop201
	tee_local	$push199=, $8=, $pop200
	i32.const	$push198=, 32
	i32.ne  	$push60=, $pop199, $pop198
	br_if   	0, $pop60
	end_loop
	i32.const	$push88=, 1072
	i32.add 	$push89=, $17, $pop88
	call    	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $17, $pop89
	i64.const	$push61=, 0
	i64.store	48($17), $pop61
	i64.const	$push207=, 0
	i64.store	56($17), $pop207
	i32.const	$push90=, 48
	i32.add 	$push91=, $17, $pop90
	i32.load	$push206=, 0($17)
	tee_local	$push205=, $11=, $pop206
	i32.load	$push62=, 4($17)
	i32.sub 	$push63=, $pop62, $11
	i32.const	$push204=, 0
	call    	send_deferred@FUNCTION, $pop91, $0, $pop205, $pop63, $pop204
	block   	
	i32.load	$push203=, 0($17)
	tee_local	$push202=, $11=, $pop203
	i32.eqz 	$push211=, $pop202
	br_if   	0, $pop211
	i32.store	4($17), $11
	call    	_ZdlPv@FUNCTION, $11
.LBB120_33:
	end_block
	i32.const	$push208=, 0
	i32.const	$push64=, .L.str.265
	call    	eosio_assert@FUNCTION, $pop208, $pop64
	i32.const	$push92=, 1072
	i32.add 	$push93=, $17, $pop92
	i32.call	$drop=, _ZN5eosio11transactionD2Ev@FUNCTION, $pop93
	i32.const	$push71=, 0
	i32.const	$push69=, 1136
	i32.add 	$push70=, $17, $pop69
	i32.store	__stack_pointer($pop71), $pop70
	.endfunc
.Lfunc_end120:
	.size	_ZN16test_transaction22send_transaction_largeEyyy, .Lfunc_end120-_ZN16test_transaction22send_transaction_largeEyyy

	.hidden	_ZN16test_transaction14deferred_printEv
	.globl	_ZN16test_transaction14deferred_printEv
	.type	_ZN16test_transaction14deferred_printEv,@function
_ZN16test_transaction14deferred_printEv:
	i32.const	$push0=, .L.str.266
	call    	prints@FUNCTION, $pop0
	.endfunc
.Lfunc_end121:
	.size	_ZN16test_transaction14deferred_printEv, .Lfunc_end121-_ZN16test_transaction14deferred_printEv

	.hidden	_ZN16test_transaction25send_deferred_transactionEyyy
	.globl	_ZN16test_transaction25send_deferred_transactionEyyy
	.type	_ZN16test_transaction25send_deferred_transactionEyyy,@function
_ZN16test_transaction25send_deferred_transactionEyyy:
	.param  	i64, i64, i64
	.local  	i32, i32, i32, i64, i64, i64, i64, i64, i32
	i32.const	$push69=, 0
	i32.const	$push66=, 0
	i32.load	$push67=, __stack_pointer($pop66)
	i32.const	$push68=, 112
	i32.sub 	$push100=, $pop67, $pop68
	tee_local	$push99=, $11=, $pop100
	i32.store	__stack_pointer($pop69), $pop99
	i64.call	$7=, current_time@FUNCTION
	i32.const	$push0=, 44
	i32.add 	$push1=, $11, $pop0
	i32.const	$push98=, 0
	i32.store	0($pop1), $pop98
	i32.const	$push2=, 48
	i32.add 	$push3=, $11, $pop2
	i32.const	$push97=, 0
	i32.store	0($pop3), $pop97
	i32.const	$push96=, 0
	i32.store	28($11), $pop96
	i32.const	$push95=, 0
	i32.store8	32($11), $pop95
	i32.const	$push94=, 0
	i32.store	36($11), $pop94
	i32.const	$push93=, 0
	i32.store	40($11), $pop93
	i64.const	$push4=, 1000000
	i64.div_u	$push5=, $7, $pop4
	i32.wrap/i64	$push6=, $pop5
	i32.const	$push7=, 60
	i32.add 	$push8=, $pop6, $pop7
	i32.store	16($11), $pop8
	i32.const	$push92=, 0
	i32.store	52($11), $pop92
	i32.const	$push9=, 56
	i32.add 	$push10=, $11, $pop9
	i32.const	$push91=, 0
	i32.store	0($pop10), $pop91
	i32.const	$push11=, 60
	i32.add 	$push12=, $11, $pop11
	i32.const	$push90=, 0
	i32.store	0($pop12), $pop90
	i32.const	$push89=, 0
	i32.store	64($11), $pop89
	i32.const	$push13=, 68
	i32.add 	$push14=, $11, $pop13
	i32.const	$push88=, 0
	i32.store	0($pop14), $pop88
	i32.const	$push15=, 72
	i32.add 	$push16=, $11, $pop15
	i32.const	$push87=, 0
	i32.store	0($pop16), $pop87
	i32.const	$push86=, 0
	i32.store	8($11), $pop86
	i64.const	$7=, 0
	i64.const	$push85=, 0
	i64.store	0($11), $pop85
	i32.const	$push17=, 52
	i32.add 	$3=, $11, $pop17
	i64.const	$6=, 59
	i32.const	$5=, .L.str.9
	i64.const	$8=, 0
.LBB122_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push101=, 6
	i64.gt_u	$push18=, $7, $pop101
	br_if   	0, $pop18
	i32.load8_s	$push106=, 0($5)
	tee_local	$push105=, $4=, $pop106
	i32.const	$push104=, -97
	i32.add 	$push20=, $pop105, $pop104
	i32.const	$push103=, 255
	i32.and 	$push21=, $pop20, $pop103
	i32.const	$push102=, 25
	i32.gt_u	$push22=, $pop21, $pop102
	br_if   	1, $pop22
	i32.const	$push107=, 165
	i32.add 	$4=, $4, $pop107
	br      	2
.LBB122_4:
	end_block
	i64.const	$9=, 0
	i64.const	$push108=, 11
	i64.le_u	$push19=, $7, $pop108
	br_if   	2, $pop19
	br      	3
.LBB122_5:
	end_block
	i32.const	$push113=, 208
	i32.add 	$push23=, $4, $pop113
	i32.const	$push112=, 0
	i32.const	$push111=, -49
	i32.add 	$push24=, $4, $pop111
	i32.const	$push110=, 255
	i32.and 	$push25=, $pop24, $pop110
	i32.const	$push109=, 5
	i32.lt_u	$push26=, $pop25, $pop109
	i32.select	$4=, $pop23, $pop112, $pop26
.LBB122_6:
	end_block
	i64.extend_u/i32	$push27=, $4
	i64.const	$push115=, 56
	i64.shl 	$push28=, $pop27, $pop115
	i64.const	$push114=, 56
	i64.shr_s	$9=, $pop28, $pop114
.LBB122_7:
	end_block
	i64.const	$push117=, 31
	i64.and 	$push30=, $9, $pop117
	i64.const	$push116=, 4294967295
	i64.and 	$push29=, $6, $pop116
	i64.shl 	$9=, $pop30, $pop29
.LBB122_8:
	end_block
	i32.const	$push123=, 1
	i32.add 	$5=, $5, $pop123
	i64.const	$push122=, 1
	i64.add 	$7=, $7, $pop122
	i64.or  	$8=, $9, $8
	i64.const	$push121=, -5
	i64.add 	$push120=, $6, $pop121
	tee_local	$push119=, $6=, $pop120
	i64.const	$push118=, -6
	i64.ne  	$push31=, $pop119, $pop118
	br_if   	0, $pop31
	end_loop
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$5=, .L.str.11
	i64.const	$10=, 0
.LBB122_10:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push124=, 5
	i64.gt_u	$push32=, $7, $pop124
	br_if   	0, $pop32
	i32.load8_s	$push129=, 0($5)
	tee_local	$push128=, $4=, $pop129
	i32.const	$push127=, -97
	i32.add 	$push34=, $pop128, $pop127
	i32.const	$push126=, 255
	i32.and 	$push35=, $pop34, $pop126
	i32.const	$push125=, 25
	i32.gt_u	$push36=, $pop35, $pop125
	br_if   	1, $pop36
	i32.const	$push130=, 165
	i32.add 	$4=, $4, $pop130
	br      	2
.LBB122_13:
	end_block
	i64.const	$9=, 0
	i64.const	$push131=, 11
	i64.le_u	$push33=, $7, $pop131
	br_if   	2, $pop33
	br      	3
.LBB122_14:
	end_block
	i32.const	$push136=, 208
	i32.add 	$push37=, $4, $pop136
	i32.const	$push135=, 0
	i32.const	$push134=, -49
	i32.add 	$push38=, $4, $pop134
	i32.const	$push133=, 255
	i32.and 	$push39=, $pop38, $pop133
	i32.const	$push132=, 5
	i32.lt_u	$push40=, $pop39, $pop132
	i32.select	$4=, $pop37, $pop135, $pop40
.LBB122_15:
	end_block
	i64.extend_u/i32	$push41=, $4
	i64.const	$push138=, 56
	i64.shl 	$push42=, $pop41, $pop138
	i64.const	$push137=, 56
	i64.shr_s	$9=, $pop42, $pop137
.LBB122_16:
	end_block
	i64.const	$push140=, 31
	i64.and 	$push44=, $9, $pop140
	i64.const	$push139=, 4294967295
	i64.and 	$push43=, $6, $pop139
	i64.shl 	$9=, $pop44, $pop43
.LBB122_17:
	end_block
	i32.const	$push146=, 1
	i32.add 	$5=, $5, $pop146
	i64.const	$push145=, 1
	i64.add 	$7=, $7, $pop145
	i64.or  	$10=, $9, $10
	i64.const	$push144=, -5
	i64.add 	$push143=, $6, $pop144
	tee_local	$push142=, $6=, $pop143
	i64.const	$push141=, -6
	i64.ne  	$push45=, $pop142, $pop141
	br_if   	0, $pop45
	end_loop
	i64.store	88($11), $10
	i64.store	80($11), $8
	i32.const	$push46=, 16
	i32.call	$push154=, _Znwj@FUNCTION, $pop46
	tee_local	$push153=, $5=, $pop154
	i32.const	$push47=, 12
	i32.add 	$push48=, $pop153, $pop47
	i32.const	$push73=, 80
	i32.add 	$push74=, $11, $pop73
	i32.const	$push152=, 12
	i32.add 	$push49=, $pop74, $pop152
	i32.load	$push50=, 0($pop49)
	i32.store	0($pop48), $pop50
	i32.const	$push51=, 4
	i32.add 	$push52=, $5, $pop51
	i32.load	$push53=, 84($11)
	i32.store	0($pop52), $pop53
	i32.store	96($11), $5
	i32.load	$push54=, 80($11)
	i32.store	0($5), $pop54
	i32.const	$push151=, 16
	i32.add 	$push150=, $5, $pop151
	tee_local	$push149=, $4=, $pop150
	i32.store	104($11), $pop149
	i32.const	$push55=, 8
	i32.add 	$push56=, $5, $pop55
	i32.load	$push57=, 88($11)
	i32.store	0($pop56), $pop57
	i32.store	100($11), $4
	i32.const	$push75=, 96
	i32.add 	$push76=, $11, $pop75
	call    	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEEvDpOT_@FUNCTION, $3, $pop76, $11
	block   	
	i32.load	$push148=, 96($11)
	tee_local	$push147=, $5=, $pop148
	i32.eqz 	$push161=, $pop147
	br_if   	0, $pop161
	i32.store	100($11), $5
	call    	_ZdlPv@FUNCTION, $5
.LBB122_20:
	end_block
	i32.const	$push58=, 36
	i32.add 	$push59=, $11, $pop58
	i32.const	$push60=, 2
	i32.store	0($pop59), $pop60
	i32.const	$push77=, 96
	i32.add 	$push78=, $11, $pop77
	i32.const	$push79=, 16
	i32.add 	$push80=, $11, $pop79
	call    	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop78, $pop80
	i64.const	$push61=, -1
	i64.store	80($11), $pop61
	i64.const	$push62=, 0
	i64.store	88($11), $pop62
	i32.const	$push81=, 80
	i32.add 	$push82=, $11, $pop81
	i32.load	$push158=, 96($11)
	tee_local	$push157=, $5=, $pop158
	i32.load	$push63=, 100($11)
	i32.sub 	$push64=, $pop63, $5
	i32.const	$push65=, 0
	call    	send_deferred@FUNCTION, $pop82, $0, $pop157, $pop64, $pop65
	block   	
	i32.load	$push156=, 96($11)
	tee_local	$push155=, $5=, $pop156
	i32.eqz 	$push162=, $pop155
	br_if   	0, $pop162
	i32.store	100($11), $5
	call    	_ZdlPv@FUNCTION, $5
.LBB122_22:
	end_block
	block   	
	i32.load	$push160=, 0($11)
	tee_local	$push159=, $5=, $pop160
	i32.eqz 	$push163=, $pop159
	br_if   	0, $pop163
	i32.store	4($11), $5
	call    	_ZdlPv@FUNCTION, $5
.LBB122_24:
	end_block
	i32.const	$push83=, 16
	i32.add 	$push84=, $11, $pop83
	i32.call	$drop=, _ZN5eosio11transactionD2Ev@FUNCTION, $pop84
	i32.const	$push72=, 0
	i32.const	$push70=, 112
	i32.add 	$push71=, $11, $pop70
	i32.store	__stack_pointer($pop72), $pop71
	.endfunc
.Lfunc_end122:
	.size	_ZN16test_transaction25send_deferred_transactionEyyy, .Lfunc_end122-_ZN16test_transaction25send_deferred_transactionEyyy

	.section	.text._ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEEvDpOT_:
	.param  	i32, i32, i32
	.local  	i32, i32, i32, i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push53=, 0($0)
	tee_local	$push52=, $8=, $pop53
	i32.sub 	$push1=, $pop0, $pop52
	i32.const	$push51=, 40
	i32.div_s	$push50=, $pop1, $pop51
	tee_local	$push49=, $9=, $pop50
	i32.const	$push2=, 1
	i32.add 	$push48=, $pop49, $pop2
	tee_local	$push47=, $6=, $pop48
	i32.const	$push3=, 107374183
	i32.ge_u	$push4=, $pop47, $pop3
	br_if   	0, $pop4
	i32.const	$7=, 107374182
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $8
	i32.const	$push56=, 40
	i32.div_s	$push55=, $pop6, $pop56
	tee_local	$push54=, $8=, $pop55
	i32.const	$push7=, 53687090
	i32.gt_u	$push8=, $pop54, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push60=, $8, $pop9
	tee_local	$push59=, $7=, $pop60
	i32.lt_u	$push10=, $7, $6
	i32.select	$push58=, $6, $pop59, $pop10
	tee_local	$push57=, $7=, $pop58
	i32.eqz 	$push133=, $pop57
	br_if   	1, $pop133
.LBB123_3:
	end_block
	i32.const	$push11=, 40
	i32.mul 	$push12=, $7, $pop11
	i32.call	$8=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB123_4:
	end_block
	i32.const	$7=, 0
	i32.const	$8=, 0
	br      	1
.LBB123_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB123_6:
	end_block
	i32.const	$push13=, 40
	i32.mul 	$push14=, $7, $pop13
	i32.add 	$3=, $8, $pop14
	i32.const	$push71=, 40
	i32.mul 	$push15=, $9, $pop71
	i32.add 	$push70=, $8, $pop15
	tee_local	$push69=, $9=, $pop70
	i32.call	$push68=, _ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_@FUNCTION, $pop69, $1, $2
	tee_local	$push67=, $8=, $pop68
	i32.const	$push66=, 40
	i32.add 	$4=, $pop67, $pop66
	block   	
	block   	
	i32.const	$push65=, 4
	i32.add 	$push16=, $0, $pop65
	i32.load	$push64=, 0($pop16)
	tee_local	$push63=, $1=, $pop64
	i32.load	$push62=, 0($0)
	tee_local	$push61=, $7=, $pop62
	i32.eq  	$push17=, $pop63, $pop61
	br_if   	0, $pop17
	i32.const	$push73=, 0
	i32.sub 	$5=, $pop73, $7
	i32.const	$push72=, -20
	i32.add 	$7=, $1, $pop72
.LBB123_8:
	loop    	
	i32.const	$push119=, -32
	i32.add 	$push18=, $8, $pop119
	i32.const	$push118=, -12
	i32.add 	$push19=, $7, $pop118
	i64.load	$push20=, 0($pop19)
	i64.store	0($pop18), $pop20
	i32.const	$push117=, -40
	i32.add 	$push21=, $8, $pop117
	i32.const	$push116=, -20
	i32.add 	$push22=, $7, $pop116
	i64.load	$push23=, 0($pop22)
	i64.store	0($pop21), $pop23
	i32.const	$push115=, -24
	i32.add 	$push114=, $8, $pop115
	tee_local	$push113=, $1=, $pop114
	i64.const	$push112=, 0
	i64.store	0($pop113):p2align=2, $pop112
	i32.const	$push111=, -16
	i32.add 	$push110=, $8, $pop111
	tee_local	$push109=, $2=, $pop110
	i32.const	$push108=, 0
	i32.store	0($pop109), $pop108
	i32.const	$push107=, -4
	i32.add 	$push106=, $7, $pop107
	tee_local	$push105=, $6=, $pop106
	i32.load	$push24=, 0($pop105)
	i32.store	0($1), $pop24
	i32.const	$push104=, -20
	i32.add 	$push25=, $8, $pop104
	i32.load	$push26=, 0($7)
	i32.store	0($pop25), $pop26
	i32.const	$push103=, 4
	i32.add 	$push102=, $7, $pop103
	tee_local	$push101=, $1=, $pop102
	i32.load	$push27=, 0($pop101)
	i32.store	0($2), $pop27
	i32.const	$push100=, 0
	i32.store	0($1), $pop100
	i32.const	$push99=, -12
	i32.add 	$push98=, $8, $pop99
	tee_local	$push97=, $1=, $pop98
	i64.const	$push96=, 0
	i64.store	0($pop97):p2align=2, $pop96
	i64.const	$push95=, 0
	i64.store	0($6):p2align=2, $pop95
	i32.const	$push94=, -4
	i32.add 	$push93=, $8, $pop94
	tee_local	$push92=, $2=, $pop93
	i32.const	$push91=, 0
	i32.store	0($pop92), $pop91
	i32.const	$push90=, 8
	i32.add 	$push89=, $7, $pop90
	tee_local	$push88=, $6=, $pop89
	i32.load	$push28=, 0($pop88)
	i32.store	0($1), $pop28
	i32.const	$push87=, -8
	i32.add 	$push29=, $8, $pop87
	i32.const	$push86=, 12
	i32.add 	$push30=, $7, $pop86
	i32.load	$push31=, 0($pop30)
	i32.store	0($pop29), $pop31
	i32.const	$push85=, 16
	i32.add 	$push84=, $7, $pop85
	tee_local	$push83=, $8=, $pop84
	i32.load	$push32=, 0($pop83)
	i32.store	0($2), $pop32
	i32.const	$push82=, 0
	i32.store	0($8), $pop82
	i64.const	$push81=, 0
	i64.store	0($6):p2align=2, $pop81
	i32.const	$push80=, -40
	i32.add 	$push79=, $9, $pop80
	tee_local	$push78=, $9=, $pop79
	copy_local	$8=, $pop78
	i32.const	$push77=, -40
	i32.add 	$push76=, $7, $pop77
	tee_local	$push75=, $7=, $pop76
	i32.add 	$push33=, $pop75, $5
	i32.const	$push74=, -20
	i32.ne  	$push34=, $pop33, $pop74
	br_if   	0, $pop34
	end_loop
	i32.const	$push35=, 4
	i32.add 	$push36=, $0, $pop35
	i32.load	$7=, 0($pop36)
	i32.load	$1=, 0($0)
	br      	1
.LBB123_10:
	end_block
	copy_local	$1=, $7
.LBB123_11:
	end_block
	i32.store	0($0), $9
	i32.const	$push120=, 4
	i32.add 	$push37=, $0, $pop120
	i32.store	0($pop37), $4
	i32.const	$push38=, 8
	i32.add 	$push39=, $0, $pop38
	i32.store	0($pop39), $3
	block   	
	i32.eq  	$push40=, $7, $1
	br_if   	0, $pop40
	i32.const	$push41=, 0
	i32.sub 	$9=, $pop41, $1
	i32.const	$push121=, -24
	i32.add 	$7=, $7, $pop121
.LBB123_13:
	loop    	
	block   	
	i32.const	$push124=, 12
	i32.add 	$push42=, $7, $pop124
	i32.load	$push123=, 0($pop42)
	tee_local	$push122=, $8=, $pop123
	i32.eqz 	$push134=, $pop122
	br_if   	0, $pop134
	i32.const	$push125=, 16
	i32.add 	$push43=, $7, $pop125
	i32.store	0($pop43), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB123_15:
	end_block
	block   	
	i32.load	$push127=, 0($7)
	tee_local	$push126=, $8=, $pop127
	i32.eqz 	$push135=, $pop126
	br_if   	0, $pop135
	i32.const	$push128=, 4
	i32.add 	$push44=, $7, $pop128
	i32.store	0($pop44), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB123_17:
	end_block
	i32.const	$push132=, -40
	i32.add 	$push131=, $7, $pop132
	tee_local	$push130=, $7=, $pop131
	i32.add 	$push45=, $pop130, $9
	i32.const	$push129=, -24
	i32.ne  	$push46=, $pop45, $pop129
	br_if   	0, $pop46
.LBB123_18:
	end_loop
	end_block
	block   	
	i32.eqz 	$push136=, $1
	br_if   	0, $pop136
	call    	_ZdlPv@FUNCTION, $1
.LBB123_20:
	end_block
	.endfunc
.Lfunc_end123:
	.size	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEEvDpOT_, .Lfunc_end123-_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEEvDpOT_

	.section	.text._ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,"axG",@progbits,_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,comdat
	.hidden	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_
	.weak	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_
	.type	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,@function
_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	i32.const	$push35=, 0
	i32.const	$push32=, 0
	i32.load	$push33=, __stack_pointer($pop32)
	i32.const	$push34=, 16
	i32.sub 	$push54=, $pop33, $pop34
	tee_local	$push53=, $7=, $pop54
	i32.store	__stack_pointer($pop35), $pop53
	i64.const	$push0=, 0
	i64.store	16($0):p2align=2, $pop0
	i32.const	$push1=, 24
	i32.add 	$push52=, $0, $pop1
	tee_local	$push51=, $6=, $pop52
	i64.const	$push50=, 0
	i64.store	0($pop51):p2align=2, $pop50
	i32.const	$push2=, 32
	i32.add 	$push3=, $0, $pop2
	i64.const	$push49=, 0
	i64.store	0($pop3):p2align=2, $pop49
	i64.const	$push4=, -3841127010667593728
	i64.store	0($0), $pop4
	i64.const	$push5=, -696013501027893080
	i64.store	8($0), $pop5
	i32.load	$push6=, 0($1)
	i32.store	16($0), $pop6
	i32.const	$push7=, 20
	i32.add 	$push8=, $0, $pop7
	i32.load	$push9=, 4($1)
	i32.store	0($pop8), $pop9
	i32.load	$push10=, 8($1)
	i32.store	0($6), $pop10
	i32.const	$6=, 0
	i32.const	$push48=, 0
	i32.store	8($1), $pop48
	i64.const	$push47=, 0
	i64.store	0($1):p2align=2, $pop47
	i32.const	$push46=, 0
	i32.store	8($7), $pop46
	i64.const	$push45=, 0
	i64.store	0($7), $pop45
	i32.const	$5=, 0
	block   	
	i32.load	$push44=, 0($2)
	tee_local	$push43=, $1=, $pop44
	i32.load	$push42=, 4($2)
	tee_local	$push41=, $4=, $pop42
	i32.eq  	$push11=, $pop43, $pop41
	br_if   	0, $pop11
	i32.sub 	$push56=, $4, $1
	tee_local	$push55=, $3=, $pop56
	i32.eqz 	$push68=, $pop55
	br_if   	0, $pop68
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $7, $3
	i32.const	$push12=, 4
	i32.add 	$push13=, $2, $pop12
	i32.load	$4=, 0($pop13)
	i32.load	$1=, 0($2)
	i32.load	$5=, 4($7)
	i32.load	$6=, 0($7)
.LBB124_3:
	end_block
	block   	
	i32.eq  	$push14=, $1, $4
	br_if   	0, $pop14
.LBB124_5:
	loop    	
	i32.load8_u	$push15=, 0($1)
	i32.store8	15($7), $pop15
	i32.sub 	$push16=, $5, $6
	i32.const	$push63=, 0
	i32.gt_s	$push17=, $pop16, $pop63
	i32.const	$push62=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop17, $pop62
	i32.const	$push39=, 15
	i32.add 	$push40=, $7, $pop39
	i32.const	$push61=, 1
	i32.call	$drop=, memcpy@FUNCTION, $6, $pop40, $pop61
	i32.const	$push60=, 1
	i32.add 	$6=, $6, $pop60
	i32.const	$push59=, 1
	i32.add 	$push58=, $1, $pop59
	tee_local	$push57=, $1=, $pop58
	i32.ne  	$push18=, $4, $pop57
	br_if   	0, $pop18
.LBB124_6:
	end_loop
	end_block
	block   	
	i32.const	$push19=, 28
	i32.add 	$push67=, $0, $pop19
	tee_local	$push66=, $6=, $pop67
	i32.load	$push65=, 0($pop66)
	tee_local	$push64=, $1=, $pop65
	i32.eqz 	$push69=, $pop64
	br_if   	0, $pop69
	i32.const	$push20=, 32
	i32.add 	$push21=, $0, $pop20
	i32.store	0($pop21), $1
	call    	_ZdlPv@FUNCTION, $1
	i32.const	$push22=, 36
	i32.add 	$push23=, $0, $pop22
	i32.const	$push24=, 0
	i32.store	0($pop23), $pop24
	i64.const	$push25=, 0
	i64.store	0($6):p2align=2, $pop25
.LBB124_8:
	end_block
	i64.load	$push26=, 0($7)
	i64.store	0($6):p2align=2, $pop26
	i32.const	$push27=, 36
	i32.add 	$push28=, $0, $pop27
	i32.const	$push29=, 8
	i32.add 	$push30=, $7, $pop29
	i32.load	$push31=, 0($pop30)
	i32.store	0($pop28), $pop31
	i32.const	$push38=, 0
	i32.const	$push36=, 16
	i32.add 	$push37=, $7, $pop36
	i32.store	__stack_pointer($pop38), $pop37
	copy_local	$push70=, $0
	.endfunc
.Lfunc_end124:
	.size	_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_, .Lfunc_end124-_ZN5eosio6actionC2I18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_

	.text
	.hidden	_ZN16test_transaction33send_deferred_transaction_replaceEyyy
	.globl	_ZN16test_transaction33send_deferred_transaction_replaceEyyy
	.type	_ZN16test_transaction33send_deferred_transaction_replaceEyyy,@function
_ZN16test_transaction33send_deferred_transaction_replaceEyyy:
	.param  	i64, i64, i64
	.local  	i32, i32, i32, i64, i64, i64, i64, i64, i32
	i32.const	$push69=, 0
	i32.const	$push66=, 0
	i32.load	$push67=, __stack_pointer($pop66)
	i32.const	$push68=, 112
	i32.sub 	$push100=, $pop67, $pop68
	tee_local	$push99=, $11=, $pop100
	i32.store	__stack_pointer($pop69), $pop99
	i64.call	$7=, current_time@FUNCTION
	i32.const	$push0=, 44
	i32.add 	$push1=, $11, $pop0
	i32.const	$push98=, 0
	i32.store	0($pop1), $pop98
	i32.const	$push2=, 48
	i32.add 	$push3=, $11, $pop2
	i32.const	$push97=, 0
	i32.store	0($pop3), $pop97
	i32.const	$push96=, 0
	i32.store	28($11), $pop96
	i32.const	$push95=, 0
	i32.store8	32($11), $pop95
	i32.const	$push94=, 0
	i32.store	36($11), $pop94
	i32.const	$push93=, 0
	i32.store	40($11), $pop93
	i64.const	$push4=, 1000000
	i64.div_u	$push5=, $7, $pop4
	i32.wrap/i64	$push6=, $pop5
	i32.const	$push7=, 60
	i32.add 	$push8=, $pop6, $pop7
	i32.store	16($11), $pop8
	i32.const	$push92=, 0
	i32.store	52($11), $pop92
	i32.const	$push9=, 56
	i32.add 	$push10=, $11, $pop9
	i32.const	$push91=, 0
	i32.store	0($pop10), $pop91
	i32.const	$push11=, 60
	i32.add 	$push12=, $11, $pop11
	i32.const	$push90=, 0
	i32.store	0($pop12), $pop90
	i32.const	$push89=, 0
	i32.store	64($11), $pop89
	i32.const	$push13=, 68
	i32.add 	$push14=, $11, $pop13
	i32.const	$push88=, 0
	i32.store	0($pop14), $pop88
	i32.const	$push15=, 72
	i32.add 	$push16=, $11, $pop15
	i32.const	$push87=, 0
	i32.store	0($pop16), $pop87
	i32.const	$push86=, 0
	i32.store	8($11), $pop86
	i64.const	$7=, 0
	i64.const	$push85=, 0
	i64.store	0($11), $pop85
	i32.const	$push17=, 52
	i32.add 	$3=, $11, $pop17
	i64.const	$6=, 59
	i32.const	$5=, .L.str.9
	i64.const	$8=, 0
.LBB125_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push101=, 6
	i64.gt_u	$push18=, $7, $pop101
	br_if   	0, $pop18
	i32.load8_s	$push106=, 0($5)
	tee_local	$push105=, $4=, $pop106
	i32.const	$push104=, -97
	i32.add 	$push20=, $pop105, $pop104
	i32.const	$push103=, 255
	i32.and 	$push21=, $pop20, $pop103
	i32.const	$push102=, 25
	i32.gt_u	$push22=, $pop21, $pop102
	br_if   	1, $pop22
	i32.const	$push107=, 165
	i32.add 	$4=, $4, $pop107
	br      	2
.LBB125_4:
	end_block
	i64.const	$9=, 0
	i64.const	$push108=, 11
	i64.le_u	$push19=, $7, $pop108
	br_if   	2, $pop19
	br      	3
.LBB125_5:
	end_block
	i32.const	$push113=, 208
	i32.add 	$push23=, $4, $pop113
	i32.const	$push112=, 0
	i32.const	$push111=, -49
	i32.add 	$push24=, $4, $pop111
	i32.const	$push110=, 255
	i32.and 	$push25=, $pop24, $pop110
	i32.const	$push109=, 5
	i32.lt_u	$push26=, $pop25, $pop109
	i32.select	$4=, $pop23, $pop112, $pop26
.LBB125_6:
	end_block
	i64.extend_u/i32	$push27=, $4
	i64.const	$push115=, 56
	i64.shl 	$push28=, $pop27, $pop115
	i64.const	$push114=, 56
	i64.shr_s	$9=, $pop28, $pop114
.LBB125_7:
	end_block
	i64.const	$push117=, 31
	i64.and 	$push30=, $9, $pop117
	i64.const	$push116=, 4294967295
	i64.and 	$push29=, $6, $pop116
	i64.shl 	$9=, $pop30, $pop29
.LBB125_8:
	end_block
	i32.const	$push123=, 1
	i32.add 	$5=, $5, $pop123
	i64.const	$push122=, 1
	i64.add 	$7=, $7, $pop122
	i64.or  	$8=, $9, $8
	i64.const	$push121=, -5
	i64.add 	$push120=, $6, $pop121
	tee_local	$push119=, $6=, $pop120
	i64.const	$push118=, -6
	i64.ne  	$push31=, $pop119, $pop118
	br_if   	0, $pop31
	end_loop
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$5=, .L.str.11
	i64.const	$10=, 0
.LBB125_10:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push124=, 5
	i64.gt_u	$push32=, $7, $pop124
	br_if   	0, $pop32
	i32.load8_s	$push129=, 0($5)
	tee_local	$push128=, $4=, $pop129
	i32.const	$push127=, -97
	i32.add 	$push34=, $pop128, $pop127
	i32.const	$push126=, 255
	i32.and 	$push35=, $pop34, $pop126
	i32.const	$push125=, 25
	i32.gt_u	$push36=, $pop35, $pop125
	br_if   	1, $pop36
	i32.const	$push130=, 165
	i32.add 	$4=, $4, $pop130
	br      	2
.LBB125_13:
	end_block
	i64.const	$9=, 0
	i64.const	$push131=, 11
	i64.le_u	$push33=, $7, $pop131
	br_if   	2, $pop33
	br      	3
.LBB125_14:
	end_block
	i32.const	$push136=, 208
	i32.add 	$push37=, $4, $pop136
	i32.const	$push135=, 0
	i32.const	$push134=, -49
	i32.add 	$push38=, $4, $pop134
	i32.const	$push133=, 255
	i32.and 	$push39=, $pop38, $pop133
	i32.const	$push132=, 5
	i32.lt_u	$push40=, $pop39, $pop132
	i32.select	$4=, $pop37, $pop135, $pop40
.LBB125_15:
	end_block
	i64.extend_u/i32	$push41=, $4
	i64.const	$push138=, 56
	i64.shl 	$push42=, $pop41, $pop138
	i64.const	$push137=, 56
	i64.shr_s	$9=, $pop42, $pop137
.LBB125_16:
	end_block
	i64.const	$push140=, 31
	i64.and 	$push44=, $9, $pop140
	i64.const	$push139=, 4294967295
	i64.and 	$push43=, $6, $pop139
	i64.shl 	$9=, $pop44, $pop43
.LBB125_17:
	end_block
	i32.const	$push146=, 1
	i32.add 	$5=, $5, $pop146
	i64.const	$push145=, 1
	i64.add 	$7=, $7, $pop145
	i64.or  	$10=, $9, $10
	i64.const	$push144=, -5
	i64.add 	$push143=, $6, $pop144
	tee_local	$push142=, $6=, $pop143
	i64.const	$push141=, -6
	i64.ne  	$push45=, $pop142, $pop141
	br_if   	0, $pop45
	end_loop
	i64.store	88($11), $10
	i64.store	80($11), $8
	i32.const	$push46=, 16
	i32.call	$push154=, _Znwj@FUNCTION, $pop46
	tee_local	$push153=, $5=, $pop154
	i32.const	$push47=, 12
	i32.add 	$push48=, $pop153, $pop47
	i32.const	$push73=, 80
	i32.add 	$push74=, $11, $pop73
	i32.const	$push152=, 12
	i32.add 	$push49=, $pop74, $pop152
	i32.load	$push50=, 0($pop49)
	i32.store	0($pop48), $pop50
	i32.const	$push51=, 4
	i32.add 	$push52=, $5, $pop51
	i32.load	$push53=, 84($11)
	i32.store	0($pop52), $pop53
	i32.store	96($11), $5
	i32.load	$push54=, 80($11)
	i32.store	0($5), $pop54
	i32.const	$push151=, 16
	i32.add 	$push150=, $5, $pop151
	tee_local	$push149=, $4=, $pop150
	i32.store	104($11), $pop149
	i32.const	$push55=, 8
	i32.add 	$push56=, $5, $pop55
	i32.load	$push57=, 88($11)
	i32.store	0($pop56), $pop57
	i32.store	100($11), $4
	i32.const	$push75=, 96
	i32.add 	$push76=, $11, $pop75
	call    	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_INS1_16permission_levelENS3_IS7_EEEER18test_action_actionILy14605617063041957888ELy17750730572681658536EEEEEvDpOT_@FUNCTION, $3, $pop76, $11
	block   	
	i32.load	$push148=, 96($11)
	tee_local	$push147=, $5=, $pop148
	i32.eqz 	$push161=, $pop147
	br_if   	0, $pop161
	i32.store	100($11), $5
	call    	_ZdlPv@FUNCTION, $5
.LBB125_20:
	end_block
	i32.const	$push58=, 36
	i32.add 	$push59=, $11, $pop58
	i32.const	$push60=, 2
	i32.store	0($pop59), $pop60
	i32.const	$push77=, 96
	i32.add 	$push78=, $11, $pop77
	i32.const	$push79=, 16
	i32.add 	$push80=, $11, $pop79
	call    	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop78, $pop80
	i64.const	$push61=, -1
	i64.store	80($11), $pop61
	i64.const	$push62=, 0
	i64.store	88($11), $pop62
	i32.const	$push81=, 80
	i32.add 	$push82=, $11, $pop81
	i32.load	$push158=, 96($11)
	tee_local	$push157=, $5=, $pop158
	i32.load	$push63=, 100($11)
	i32.sub 	$push64=, $pop63, $5
	i32.const	$push65=, 1
	call    	send_deferred@FUNCTION, $pop82, $0, $pop157, $pop64, $pop65
	block   	
	i32.load	$push156=, 96($11)
	tee_local	$push155=, $5=, $pop156
	i32.eqz 	$push162=, $pop155
	br_if   	0, $pop162
	i32.store	100($11), $5
	call    	_ZdlPv@FUNCTION, $5
.LBB125_22:
	end_block
	block   	
	i32.load	$push160=, 0($11)
	tee_local	$push159=, $5=, $pop160
	i32.eqz 	$push163=, $pop159
	br_if   	0, $pop163
	i32.store	4($11), $5
	call    	_ZdlPv@FUNCTION, $5
.LBB125_24:
	end_block
	i32.const	$push83=, 16
	i32.add 	$push84=, $11, $pop83
	i32.call	$drop=, _ZN5eosio11transactionD2Ev@FUNCTION, $pop84
	i32.const	$push72=, 0
	i32.const	$push70=, 112
	i32.add 	$push71=, $11, $pop70
	i32.store	__stack_pointer($pop72), $pop71
	.endfunc
.Lfunc_end125:
	.size	_ZN16test_transaction33send_deferred_transaction_replaceEyyy, .Lfunc_end125-_ZN16test_transaction33send_deferred_transaction_replaceEyyy

	.hidden	_ZN16test_transaction32send_deferred_tx_with_dtt_actionEv
	.globl	_ZN16test_transaction32send_deferred_tx_with_dtt_actionEv
	.type	_ZN16test_transaction32send_deferred_tx_with_dtt_actionEv,@function
_ZN16test_transaction32send_deferred_tx_with_dtt_actionEv:
	.local  	i32, i32, i32, i64, i64, i64, i64, i32
	i32.const	$push66=, 0
	i32.const	$push63=, 0
	i32.load	$push64=, __stack_pointer($pop63)
	i32.const	$push65=, 176
	i32.sub 	$push86=, $pop64, $pop65
	tee_local	$push85=, $7=, $pop86
	i32.store	__stack_pointer($pop66), $pop85
	i32.const	$push70=, 104
	i32.add 	$push71=, $7, $pop70
	i32.call	$0=, _ZN10dtt_actionC2Ev@FUNCTION, $pop71
	i32.const	$push72=, 104
	i32.add 	$push73=, $7, $pop72
	i32.call	$push0=, action_data_size@FUNCTION
	i32.call	$drop=, read_action_data@FUNCTION, $pop73, $pop0
	i64.const	$4=, 0
	i32.const	$push1=, 88
	i32.add 	$push2=, $7, $pop1
	i64.const	$push84=, 0
	i64.store	0($pop2), $pop84
	i32.const	$push3=, 96
	i32.add 	$push4=, $7, $pop3
	i64.const	$push83=, 0
	i64.store	0($pop4), $pop83
	i64.const	$push82=, 0
	i64.store	80($7), $pop82
	i64.load	$push5=, 8($0)
	i64.store	64($7), $pop5
	i64.load	$push6=, 16($0)
	i64.store	72($7), $pop6
	i64.const	$3=, 59
	i32.const	$2=, .L.str.9
	i64.const	$5=, 0
.LBB126_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push87=, 6
	i64.gt_u	$push7=, $4, $pop87
	br_if   	0, $pop7
	i32.load8_s	$push92=, 0($2)
	tee_local	$push91=, $1=, $pop92
	i32.const	$push90=, -97
	i32.add 	$push9=, $pop91, $pop90
	i32.const	$push89=, 255
	i32.and 	$push10=, $pop9, $pop89
	i32.const	$push88=, 25
	i32.gt_u	$push11=, $pop10, $pop88
	br_if   	1, $pop11
	i32.const	$push93=, 165
	i32.add 	$1=, $1, $pop93
	br      	2
.LBB126_4:
	end_block
	i64.const	$6=, 0
	i64.const	$push94=, 11
	i64.le_u	$push8=, $4, $pop94
	br_if   	2, $pop8
	br      	3
.LBB126_5:
	end_block
	i32.const	$push99=, 208
	i32.add 	$push12=, $1, $pop99
	i32.const	$push98=, 0
	i32.const	$push97=, -49
	i32.add 	$push13=, $1, $pop97
	i32.const	$push96=, 255
	i32.and 	$push14=, $pop13, $pop96
	i32.const	$push95=, 5
	i32.lt_u	$push15=, $pop14, $pop95
	i32.select	$1=, $pop12, $pop98, $pop15
.LBB126_6:
	end_block
	i64.extend_u/i32	$push16=, $1
	i64.const	$push101=, 56
	i64.shl 	$push17=, $pop16, $pop101
	i64.const	$push100=, 56
	i64.shr_s	$6=, $pop17, $pop100
.LBB126_7:
	end_block
	i64.const	$push103=, 31
	i64.and 	$push19=, $6, $pop103
	i64.const	$push102=, 4294967295
	i64.and 	$push18=, $3, $pop102
	i64.shl 	$6=, $pop19, $pop18
.LBB126_8:
	end_block
	i32.const	$push109=, 1
	i32.add 	$2=, $2, $pop109
	i64.const	$push108=, 1
	i64.add 	$4=, $4, $pop108
	i64.or  	$5=, $6, $5
	i64.const	$push107=, -5
	i64.add 	$push106=, $3, $pop107
	tee_local	$push105=, $3=, $pop106
	i64.const	$push104=, -6
	i64.ne  	$push20=, $pop105, $pop104
	br_if   	0, $pop20
	end_loop
	i64.store	0($7), $5
	i64.load	$push21=, 24($0)
	i64.store	8($7), $pop21
	i32.const	$push22=, 16
	i32.call	$push130=, _Znwj@FUNCTION, $pop22
	tee_local	$push129=, $2=, $pop130
	i32.const	$push23=, 8
	i32.add 	$push24=, $pop129, $pop23
	i64.load	$push25=, 8($7)
	i64.store	0($pop24), $pop25
	i64.load	$push26=, 0($7)
	i64.store	0($2), $pop26
	i32.const	$push27=, 84
	i32.add 	$push28=, $7, $pop27
	i32.const	$push128=, 16
	i32.add 	$push127=, $2, $pop128
	tee_local	$push126=, $1=, $pop127
	i32.store	0($pop28), $pop126
	i32.store	80($7), $2
	i32.const	$push29=, 88
	i32.add 	$push30=, $7, $pop29
	i32.store	0($pop30), $1
	i64.call	$4=, current_time@FUNCTION
	i32.const	$push125=, 28
	i32.add 	$push31=, $7, $pop125
	i32.const	$push32=, 0
	i32.store	0($pop31), $pop32
	i32.const	$push33=, 32
	i32.add 	$push34=, $7, $pop33
	i32.const	$push124=, 0
	i32.store	0($pop34), $pop124
	i32.const	$push123=, 0
	i32.store	12($7), $pop123
	i32.const	$push122=, 0
	i32.store8	16($7), $pop122
	i32.const	$push121=, 0
	i32.store	20($7), $pop121
	i32.const	$push120=, 0
	i32.store	24($7), $pop120
	i64.const	$push35=, 1000000
	i64.div_u	$push36=, $4, $pop35
	i32.wrap/i64	$push37=, $pop36
	i32.const	$push38=, 60
	i32.add 	$push39=, $pop37, $pop38
	i32.store	0($7), $pop39
	i32.const	$push119=, 0
	i32.store	36($7), $pop119
	i32.const	$push40=, 40
	i32.add 	$push41=, $7, $pop40
	i32.const	$push118=, 0
	i32.store	0($pop41), $pop118
	i32.const	$push42=, 44
	i32.add 	$push43=, $7, $pop42
	i32.const	$push117=, 0
	i32.store	0($pop43), $pop117
	i32.const	$push116=, 0
	i32.store	48($7), $pop116
	i32.const	$push44=, 52
	i32.add 	$push45=, $7, $pop44
	i32.const	$push115=, 0
	i32.store	0($pop45), $pop115
	i32.const	$push46=, 56
	i32.add 	$push47=, $7, $pop46
	i32.const	$push114=, 0
	i32.store	0($pop47), $pop114
	i32.const	$push48=, 36
	i32.add 	$push49=, $7, $pop48
	i32.const	$push74=, 64
	i32.add 	$push75=, $7, $pop74
	call    	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRS2_EEEvDpOT_@FUNCTION, $pop49, $pop75
	i32.load	$push50=, 32($0)
	i32.store	20($7), $pop50
	i64.load	$4=, 0($0)
	i32.const	$push76=, 160
	i32.add 	$push77=, $7, $pop76
	call    	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop77, $7
	i64.const	$push51=, -1
	i64.store	144($7), $pop51
	i64.const	$push52=, 0
	i64.store	152($7), $pop52
	i32.const	$push78=, 144
	i32.add 	$push79=, $7, $pop78
	i32.load	$push113=, 160($7)
	tee_local	$push112=, $2=, $pop113
	i32.load	$push53=, 164($7)
	i32.sub 	$push54=, $pop53, $2
	i32.const	$push55=, 1
	call    	send_deferred@FUNCTION, $pop79, $4, $pop112, $pop54, $pop55
	block   	
	i32.load	$push111=, 160($7)
	tee_local	$push110=, $2=, $pop111
	i32.eqz 	$push136=, $pop110
	br_if   	0, $pop136
	i32.store	164($7), $2
	call    	_ZdlPv@FUNCTION, $2
.LBB126_11:
	end_block
	i32.call	$drop=, _ZN5eosio11transactionD2Ev@FUNCTION, $7
	block   	
	i32.const	$push80=, 64
	i32.add 	$push81=, $7, $pop80
	i32.const	$push133=, 28
	i32.add 	$push56=, $pop81, $pop133
	i32.load	$push132=, 0($pop56)
	tee_local	$push131=, $2=, $pop132
	i32.eqz 	$push137=, $pop131
	br_if   	0, $pop137
	i32.const	$push57=, 96
	i32.add 	$push58=, $7, $pop57
	i32.store	0($pop58), $2
	call    	_ZdlPv@FUNCTION, $2
.LBB126_13:
	end_block
	block   	
	i32.const	$push59=, 80
	i32.add 	$push60=, $7, $pop59
	i32.load	$push135=, 0($pop60)
	tee_local	$push134=, $2=, $pop135
	i32.eqz 	$push138=, $pop134
	br_if   	0, $pop138
	i32.const	$push61=, 84
	i32.add 	$push62=, $7, $pop61
	i32.store	0($pop62), $2
	call    	_ZdlPv@FUNCTION, $2
.LBB126_15:
	end_block
	i32.const	$push69=, 0
	i32.const	$push67=, 176
	i32.add 	$push68=, $7, $pop67
	i32.store	__stack_pointer($pop69), $pop68
	.endfunc
.Lfunc_end126:
	.size	_ZN16test_transaction32send_deferred_tx_with_dtt_actionEv, .Lfunc_end126-_ZN16test_transaction32send_deferred_tx_with_dtt_actionEv

	.section	.text._ZN10dtt_actionC2Ev,"axG",@progbits,_ZN10dtt_actionC2Ev,comdat
	.hidden	_ZN10dtt_actionC2Ev
	.weak	_ZN10dtt_actionC2Ev
	.type	_ZN10dtt_actionC2Ev,@function
_ZN10dtt_actionC2Ev:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i64, i64, i64, i64
	i64.const	$4=, 0
	i64.const	$3=, 59
	i32.const	$2=, .L.str.9
	i64.const	$5=, 0
.LBB127_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push48=, 6
	i64.gt_u	$push0=, $4, $pop48
	br_if   	0, $pop0
	i32.load8_s	$push53=, 0($2)
	tee_local	$push52=, $1=, $pop53
	i32.const	$push51=, -97
	i32.add 	$push2=, $pop52, $pop51
	i32.const	$push50=, 255
	i32.and 	$push3=, $pop2, $pop50
	i32.const	$push49=, 25
	i32.gt_u	$push4=, $pop3, $pop49
	br_if   	1, $pop4
	i32.const	$push54=, 165
	i32.add 	$1=, $1, $pop54
	br      	2
.LBB127_4:
	end_block
	i64.const	$6=, 0
	i64.const	$push55=, 11
	i64.le_u	$push1=, $4, $pop55
	br_if   	2, $pop1
	br      	3
.LBB127_5:
	end_block
	i32.const	$push60=, 208
	i32.add 	$push5=, $1, $pop60
	i32.const	$push59=, 0
	i32.const	$push58=, -49
	i32.add 	$push6=, $1, $pop58
	i32.const	$push57=, 255
	i32.and 	$push7=, $pop6, $pop57
	i32.const	$push56=, 5
	i32.lt_u	$push8=, $pop7, $pop56
	i32.select	$1=, $pop5, $pop59, $pop8
.LBB127_6:
	end_block
	i64.extend_u/i32	$push9=, $1
	i64.const	$push62=, 56
	i64.shl 	$push10=, $pop9, $pop62
	i64.const	$push61=, 56
	i64.shr_s	$6=, $pop10, $pop61
.LBB127_7:
	end_block
	i64.const	$push64=, 31
	i64.and 	$push12=, $6, $pop64
	i64.const	$push63=, 4294967295
	i64.and 	$push11=, $3, $pop63
	i64.shl 	$6=, $pop12, $pop11
.LBB127_8:
	end_block
	i32.const	$push70=, 1
	i32.add 	$2=, $2, $pop70
	i64.const	$push69=, 1
	i64.add 	$4=, $4, $pop69
	i64.or  	$5=, $6, $5
	i64.const	$push68=, -5
	i64.add 	$push67=, $3, $pop68
	tee_local	$push66=, $3=, $pop67
	i64.const	$push65=, -6
	i64.ne  	$push13=, $pop66, $pop65
	br_if   	0, $pop13
	end_loop
	i64.store	0($0):p2align=0, $5
	i64.const	$4=, 0
	i64.const	$3=, 59
	i32.const	$2=, .L.str.9
	i64.const	$5=, 0
.LBB127_10:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push71=, 6
	i64.gt_u	$push14=, $4, $pop71
	br_if   	0, $pop14
	i32.load8_s	$push76=, 0($2)
	tee_local	$push75=, $1=, $pop76
	i32.const	$push74=, -97
	i32.add 	$push16=, $pop75, $pop74
	i32.const	$push73=, 255
	i32.and 	$push17=, $pop16, $pop73
	i32.const	$push72=, 25
	i32.gt_u	$push18=, $pop17, $pop72
	br_if   	1, $pop18
	i32.const	$push77=, 165
	i32.add 	$1=, $1, $pop77
	br      	2
.LBB127_13:
	end_block
	i64.const	$6=, 0
	i64.const	$push78=, 11
	i64.le_u	$push15=, $4, $pop78
	br_if   	2, $pop15
	br      	3
.LBB127_14:
	end_block
	i32.const	$push83=, 208
	i32.add 	$push19=, $1, $pop83
	i32.const	$push82=, 0
	i32.const	$push81=, -49
	i32.add 	$push20=, $1, $pop81
	i32.const	$push80=, 255
	i32.and 	$push21=, $pop20, $pop80
	i32.const	$push79=, 5
	i32.lt_u	$push22=, $pop21, $pop79
	i32.select	$1=, $pop19, $pop82, $pop22
.LBB127_15:
	end_block
	i64.extend_u/i32	$push23=, $1
	i64.const	$push85=, 56
	i64.shl 	$push24=, $pop23, $pop85
	i64.const	$push84=, 56
	i64.shr_s	$6=, $pop24, $pop84
.LBB127_16:
	end_block
	i64.const	$push87=, 31
	i64.and 	$push26=, $6, $pop87
	i64.const	$push86=, 4294967295
	i64.and 	$push25=, $3, $pop86
	i64.shl 	$6=, $pop26, $pop25
.LBB127_17:
	end_block
	i32.const	$push93=, 1
	i32.add 	$2=, $2, $pop93
	i64.const	$push92=, 1
	i64.add 	$4=, $4, $pop92
	i64.or  	$5=, $6, $5
	i64.const	$push91=, -5
	i64.add 	$push90=, $3, $pop91
	tee_local	$push89=, $3=, $pop90
	i64.const	$push88=, -6
	i64.ne  	$push27=, $pop89, $pop88
	br_if   	0, $pop27
	end_loop
	i64.const	$push28=, -696013501027893080
	i64.store	16($0):p2align=0, $pop28
	i32.const	$push29=, 8
	i32.add 	$push30=, $0, $pop29
	i64.store	0($pop30):p2align=0, $5
	i64.const	$4=, 0
	i64.const	$3=, 59
	i32.const	$2=, .L.str.11
	i64.const	$5=, 0
.LBB127_19:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push94=, 5
	i64.gt_u	$push31=, $4, $pop94
	br_if   	0, $pop31
	i32.load8_s	$push99=, 0($2)
	tee_local	$push98=, $1=, $pop99
	i32.const	$push97=, -97
	i32.add 	$push33=, $pop98, $pop97
	i32.const	$push96=, 255
	i32.and 	$push34=, $pop33, $pop96
	i32.const	$push95=, 25
	i32.gt_u	$push35=, $pop34, $pop95
	br_if   	1, $pop35
	i32.const	$push100=, 165
	i32.add 	$1=, $1, $pop100
	br      	2
.LBB127_22:
	end_block
	i64.const	$6=, 0
	i64.const	$push101=, 11
	i64.le_u	$push32=, $4, $pop101
	br_if   	2, $pop32
	br      	3
.LBB127_23:
	end_block
	i32.const	$push106=, 208
	i32.add 	$push36=, $1, $pop106
	i32.const	$push105=, 0
	i32.const	$push104=, -49
	i32.add 	$push37=, $1, $pop104
	i32.const	$push103=, 255
	i32.and 	$push38=, $pop37, $pop103
	i32.const	$push102=, 5
	i32.lt_u	$push39=, $pop38, $pop102
	i32.select	$1=, $pop36, $pop105, $pop39
.LBB127_24:
	end_block
	i64.extend_u/i32	$push40=, $1
	i64.const	$push108=, 56
	i64.shl 	$push41=, $pop40, $pop108
	i64.const	$push107=, 56
	i64.shr_s	$6=, $pop41, $pop107
.LBB127_25:
	end_block
	i64.const	$push110=, 31
	i64.and 	$push43=, $6, $pop110
	i64.const	$push109=, 4294967295
	i64.and 	$push42=, $3, $pop109
	i64.shl 	$6=, $pop43, $pop42
.LBB127_26:
	end_block
	i32.const	$push116=, 1
	i32.add 	$2=, $2, $pop116
	i64.const	$push115=, 1
	i64.add 	$4=, $4, $pop115
	i64.or  	$5=, $6, $5
	i64.const	$push114=, -5
	i64.add 	$push113=, $3, $pop114
	tee_local	$push112=, $3=, $pop113
	i64.const	$push111=, -6
	i64.ne  	$push44=, $pop112, $pop111
	br_if   	0, $pop44
	end_loop
	i32.const	$push45=, 2
	i32.store	32($0):p2align=0, $pop45
	i32.const	$push46=, 24
	i32.add 	$push47=, $0, $pop46
	i64.store	0($pop47):p2align=0, $5
	copy_local	$push117=, $0
	.endfunc
.Lfunc_end127:
	.size	_ZN10dtt_actionC2Ev, .Lfunc_end127-_ZN10dtt_actionC2Ev

	.section	.text._ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRS2_EEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRS2_EEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRS2_EEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRS2_EEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRS2_EEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRS2_EEEvDpOT_:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push53=, 0($0)
	tee_local	$push52=, $8=, $pop53
	i32.sub 	$push1=, $pop0, $pop52
	i32.const	$push51=, 40
	i32.div_s	$push50=, $pop1, $pop51
	tee_local	$push49=, $9=, $pop50
	i32.const	$push2=, 1
	i32.add 	$push48=, $pop49, $pop2
	tee_local	$push47=, $5=, $pop48
	i32.const	$push3=, 107374183
	i32.ge_u	$push4=, $pop47, $pop3
	br_if   	0, $pop4
	i32.const	$7=, 107374182
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $8
	i32.const	$push56=, 40
	i32.div_s	$push55=, $pop6, $pop56
	tee_local	$push54=, $8=, $pop55
	i32.const	$push7=, 53687090
	i32.gt_u	$push8=, $pop54, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push60=, $8, $pop9
	tee_local	$push59=, $7=, $pop60
	i32.lt_u	$push10=, $7, $5
	i32.select	$push58=, $5, $pop59, $pop10
	tee_local	$push57=, $7=, $pop58
	i32.eqz 	$push133=, $pop57
	br_if   	1, $pop133
.LBB128_3:
	end_block
	i32.const	$push11=, 40
	i32.mul 	$push12=, $7, $pop11
	i32.call	$8=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB128_4:
	end_block
	i32.const	$7=, 0
	i32.const	$8=, 0
	br      	1
.LBB128_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB128_6:
	end_block
	i32.const	$push13=, 40
	i32.mul 	$push14=, $7, $pop13
	i32.add 	$2=, $8, $pop14
	i32.const	$push71=, 40
	i32.mul 	$push15=, $9, $pop71
	i32.add 	$push70=, $8, $pop15
	tee_local	$push69=, $9=, $pop70
	i32.call	$push68=, _ZN5eosio6actionC2ERKS0_@FUNCTION, $pop69, $1
	tee_local	$push67=, $8=, $pop68
	i32.const	$push66=, 40
	i32.add 	$3=, $pop67, $pop66
	block   	
	block   	
	i32.const	$push65=, 4
	i32.add 	$push16=, $0, $pop65
	i32.load	$push64=, 0($pop16)
	tee_local	$push63=, $1=, $pop64
	i32.load	$push62=, 0($0)
	tee_local	$push61=, $7=, $pop62
	i32.eq  	$push17=, $pop63, $pop61
	br_if   	0, $pop17
	i32.const	$push73=, 0
	i32.sub 	$4=, $pop73, $7
	i32.const	$push72=, -20
	i32.add 	$7=, $1, $pop72
.LBB128_8:
	loop    	
	i32.const	$push119=, -32
	i32.add 	$push18=, $8, $pop119
	i32.const	$push118=, -12
	i32.add 	$push19=, $7, $pop118
	i64.load	$push20=, 0($pop19)
	i64.store	0($pop18), $pop20
	i32.const	$push117=, -40
	i32.add 	$push21=, $8, $pop117
	i32.const	$push116=, -20
	i32.add 	$push22=, $7, $pop116
	i64.load	$push23=, 0($pop22)
	i64.store	0($pop21), $pop23
	i32.const	$push115=, -24
	i32.add 	$push114=, $8, $pop115
	tee_local	$push113=, $1=, $pop114
	i64.const	$push112=, 0
	i64.store	0($pop113):p2align=2, $pop112
	i32.const	$push111=, -16
	i32.add 	$push110=, $8, $pop111
	tee_local	$push109=, $5=, $pop110
	i32.const	$push108=, 0
	i32.store	0($pop109), $pop108
	i32.const	$push107=, -4
	i32.add 	$push106=, $7, $pop107
	tee_local	$push105=, $6=, $pop106
	i32.load	$push24=, 0($pop105)
	i32.store	0($1), $pop24
	i32.const	$push104=, -20
	i32.add 	$push25=, $8, $pop104
	i32.load	$push26=, 0($7)
	i32.store	0($pop25), $pop26
	i32.const	$push103=, 4
	i32.add 	$push102=, $7, $pop103
	tee_local	$push101=, $1=, $pop102
	i32.load	$push27=, 0($pop101)
	i32.store	0($5), $pop27
	i32.const	$push100=, 0
	i32.store	0($1), $pop100
	i32.const	$push99=, -12
	i32.add 	$push98=, $8, $pop99
	tee_local	$push97=, $1=, $pop98
	i64.const	$push96=, 0
	i64.store	0($pop97):p2align=2, $pop96
	i64.const	$push95=, 0
	i64.store	0($6):p2align=2, $pop95
	i32.const	$push94=, -4
	i32.add 	$push93=, $8, $pop94
	tee_local	$push92=, $5=, $pop93
	i32.const	$push91=, 0
	i32.store	0($pop92), $pop91
	i32.const	$push90=, 8
	i32.add 	$push89=, $7, $pop90
	tee_local	$push88=, $6=, $pop89
	i32.load	$push28=, 0($pop88)
	i32.store	0($1), $pop28
	i32.const	$push87=, -8
	i32.add 	$push29=, $8, $pop87
	i32.const	$push86=, 12
	i32.add 	$push30=, $7, $pop86
	i32.load	$push31=, 0($pop30)
	i32.store	0($pop29), $pop31
	i32.const	$push85=, 16
	i32.add 	$push84=, $7, $pop85
	tee_local	$push83=, $8=, $pop84
	i32.load	$push32=, 0($pop83)
	i32.store	0($5), $pop32
	i32.const	$push82=, 0
	i32.store	0($8), $pop82
	i64.const	$push81=, 0
	i64.store	0($6):p2align=2, $pop81
	i32.const	$push80=, -40
	i32.add 	$push79=, $9, $pop80
	tee_local	$push78=, $9=, $pop79
	copy_local	$8=, $pop78
	i32.const	$push77=, -40
	i32.add 	$push76=, $7, $pop77
	tee_local	$push75=, $7=, $pop76
	i32.add 	$push33=, $pop75, $4
	i32.const	$push74=, -20
	i32.ne  	$push34=, $pop33, $pop74
	br_if   	0, $pop34
	end_loop
	i32.const	$push35=, 4
	i32.add 	$push36=, $0, $pop35
	i32.load	$7=, 0($pop36)
	i32.load	$1=, 0($0)
	br      	1
.LBB128_10:
	end_block
	copy_local	$1=, $7
.LBB128_11:
	end_block
	i32.store	0($0), $9
	i32.const	$push120=, 4
	i32.add 	$push37=, $0, $pop120
	i32.store	0($pop37), $3
	i32.const	$push38=, 8
	i32.add 	$push39=, $0, $pop38
	i32.store	0($pop39), $2
	block   	
	i32.eq  	$push40=, $7, $1
	br_if   	0, $pop40
	i32.const	$push41=, 0
	i32.sub 	$9=, $pop41, $1
	i32.const	$push121=, -24
	i32.add 	$7=, $7, $pop121
.LBB128_13:
	loop    	
	block   	
	i32.const	$push124=, 12
	i32.add 	$push42=, $7, $pop124
	i32.load	$push123=, 0($pop42)
	tee_local	$push122=, $8=, $pop123
	i32.eqz 	$push134=, $pop122
	br_if   	0, $pop134
	i32.const	$push125=, 16
	i32.add 	$push43=, $7, $pop125
	i32.store	0($pop43), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB128_15:
	end_block
	block   	
	i32.load	$push127=, 0($7)
	tee_local	$push126=, $8=, $pop127
	i32.eqz 	$push135=, $pop126
	br_if   	0, $pop135
	i32.const	$push128=, 4
	i32.add 	$push44=, $7, $pop128
	i32.store	0($pop44), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB128_17:
	end_block
	i32.const	$push132=, -40
	i32.add 	$push131=, $7, $pop132
	tee_local	$push130=, $7=, $pop131
	i32.add 	$push45=, $pop130, $9
	i32.const	$push129=, -24
	i32.ne  	$push46=, $pop45, $pop129
	br_if   	0, $pop46
.LBB128_18:
	end_loop
	end_block
	block   	
	i32.eqz 	$push136=, $1
	br_if   	0, $pop136
	call    	_ZdlPv@FUNCTION, $1
.LBB128_20:
	end_block
	.endfunc
.Lfunc_end128:
	.size	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRS2_EEEvDpOT_, .Lfunc_end128-_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRS2_EEEvDpOT_

	.section	.text._ZN5eosio6actionC2ERKS0_,"axG",@progbits,_ZN5eosio6actionC2ERKS0_,comdat
	.hidden	_ZN5eosio6actionC2ERKS0_
	.weak	_ZN5eosio6actionC2ERKS0_
	.type	_ZN5eosio6actionC2ERKS0_,@function
_ZN5eosio6actionC2ERKS0_:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32
	i64.load	$push2=, 0($1)
	i64.store	0($0), $pop2
	i32.const	$push3=, 8
	i32.add 	$push4=, $0, $pop3
	i32.const	$push60=, 8
	i32.add 	$push5=, $1, $pop60
	i64.load	$push6=, 0($pop5)
	i64.store	0($pop4), $pop6
	i64.const	$push59=, 0
	i64.store	16($0):p2align=2, $pop59
	i32.const	$push7=, 24
	i32.add 	$push8=, $0, $pop7
	i32.const	$push58=, 0
	i32.store	0($pop8), $pop58
	block   	
	block   	
	block   	
	i32.const	$push10=, 20
	i32.add 	$push11=, $1, $pop10
	i32.load	$push12=, 0($pop11)
	i32.load	$push13=, 16($1)
	i32.sub 	$push57=, $pop12, $pop13
	tee_local	$push56=, $4=, $pop57
	i32.const	$push14=, 4
	i32.shr_s	$push55=, $pop56, $pop14
	tee_local	$push54=, $5=, $pop55
	i32.eqz 	$push85=, $pop54
	br_if   	0, $pop85
	i32.const	$push15=, 268435456
	i32.ge_u	$push16=, $5, $pop15
	br_if   	1, $pop16
	i32.const	$push17=, 16
	i32.add 	$push18=, $0, $pop17
	i32.call	$push70=, _Znwj@FUNCTION, $4
	tee_local	$push69=, $4=, $pop70
	i32.store	0($pop18), $pop69
	i32.const	$push19=, 24
	i32.add 	$push20=, $0, $pop19
	i32.const	$push21=, 4
	i32.shl 	$push22=, $5, $pop21
	i32.add 	$push23=, $4, $pop22
	i32.store	0($pop20), $pop23
	i32.const	$push24=, 20
	i32.add 	$push68=, $0, $pop24
	tee_local	$push67=, $5=, $pop68
	i32.store	0($pop67), $4
	i32.const	$push66=, 20
	i32.add 	$push26=, $1, $pop66
	i32.load	$push27=, 0($pop26)
	i32.const	$push65=, 16
	i32.add 	$push25=, $1, $pop65
	i32.load	$push64=, 0($pop25)
	tee_local	$push63=, $2=, $pop64
	i32.sub 	$push62=, $pop27, $pop63
	tee_local	$push61=, $3=, $pop62
	i32.const	$push28=, 1
	i32.lt_s	$push29=, $pop61, $pop28
	br_if   	0, $pop29
	i32.call	$drop=, memcpy@FUNCTION, $4, $2, $3
	i32.load	$push30=, 0($5)
	i32.add 	$push31=, $pop30, $3
	i32.store	0($5), $pop31
.LBB129_4:
	end_block
	i64.const	$push74=, 0
	i64.store	28($0):p2align=2, $pop74
	i32.const	$push32=, 36
	i32.add 	$push33=, $0, $pop32
	i32.const	$push73=, 0
	i32.store	0($pop33), $pop73
	block   	
	i32.const	$push35=, 32
	i32.add 	$push36=, $1, $pop35
	i32.load	$push37=, 0($pop36)
	i32.load	$push38=, 28($1)
	i32.sub 	$push72=, $pop37, $pop38
	tee_local	$push71=, $4=, $pop72
	i32.eqz 	$push86=, $pop71
	br_if   	0, $pop86
	i32.const	$push39=, -1
	i32.le_s	$push40=, $4, $pop39
	br_if   	2, $pop40
	i32.const	$push41=, 28
	i32.add 	$push42=, $0, $pop41
	i32.call	$push84=, _Znwj@FUNCTION, $4
	tee_local	$push83=, $5=, $pop84
	i32.store	0($pop42), $pop83
	i32.const	$push43=, 36
	i32.add 	$push44=, $0, $pop43
	i32.add 	$push45=, $5, $4
	i32.store	0($pop44), $pop45
	i32.const	$push46=, 32
	i32.add 	$push82=, $0, $pop46
	tee_local	$push81=, $4=, $pop82
	i32.store	0($pop81), $5
	i32.const	$push80=, 32
	i32.add 	$push48=, $1, $pop80
	i32.load	$push49=, 0($pop48)
	i32.const	$push79=, 28
	i32.add 	$push47=, $1, $pop79
	i32.load	$push78=, 0($pop47)
	tee_local	$push77=, $3=, $pop78
	i32.sub 	$push76=, $pop49, $pop77
	tee_local	$push75=, $1=, $pop76
	i32.const	$push50=, 1
	i32.lt_s	$push51=, $pop75, $pop50
	br_if   	0, $pop51
	i32.call	$drop=, memcpy@FUNCTION, $5, $3, $1
	i32.load	$push52=, 0($4)
	i32.add 	$push53=, $pop52, $1
	i32.store	0($4), $pop53
.LBB129_8:
	end_block
	return  	$0
.LBB129_9:
	end_block
	i32.const	$push9=, 16
	i32.add 	$push0=, $0, $pop9
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop0
	unreachable
.LBB129_10:
	end_block
	i32.const	$push34=, 28
	i32.add 	$push1=, $0, $pop34
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop1
	unreachable
	.endfunc
.Lfunc_end129:
	.size	_ZN5eosio6actionC2ERKS0_, .Lfunc_end129-_ZN5eosio6actionC2ERKS0_

	.text
	.hidden	_ZN16test_transaction35cancel_deferred_transaction_successEv
	.globl	_ZN16test_transaction35cancel_deferred_transaction_successEv
	.type	_ZN16test_transaction35cancel_deferred_transaction_successEv,@function
_ZN16test_transaction35cancel_deferred_transaction_successEv:
	.local  	i32
	i32.const	$push9=, 0
	i32.const	$push6=, 0
	i32.load	$push7=, __stack_pointer($pop6)
	i32.const	$push8=, 16
	i32.sub 	$push14=, $pop7, $pop8
	tee_local	$push13=, $0=, $pop14
	i32.store	__stack_pointer($pop9), $pop13
	i64.const	$push0=, 0
	i64.store	8($0), $pop0
	i64.const	$push1=, -1
	i64.store	0($0), $pop1
	i32.call	$push3=, cancel_deferred@FUNCTION, $0
	i32.const	$push2=, 0
	i32.ne  	$push4=, $pop3, $pop2
	i32.const	$push5=, .L.str.267
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.const	$push12=, 0
	i32.const	$push10=, 16
	i32.add 	$push11=, $0, $pop10
	i32.store	__stack_pointer($pop12), $pop11
	.endfunc
.Lfunc_end130:
	.size	_ZN16test_transaction35cancel_deferred_transaction_successEv, .Lfunc_end130-_ZN16test_transaction35cancel_deferred_transaction_successEv

	.hidden	_ZN16test_transaction37cancel_deferred_transaction_not_foundEv
	.globl	_ZN16test_transaction37cancel_deferred_transaction_not_foundEv
	.type	_ZN16test_transaction37cancel_deferred_transaction_not_foundEv,@function
_ZN16test_transaction37cancel_deferred_transaction_not_foundEv:
	.local  	i32
	i32.const	$push8=, 0
	i32.const	$push5=, 0
	i32.load	$push6=, __stack_pointer($pop5)
	i32.const	$push7=, 16
	i32.sub 	$push13=, $pop6, $pop7
	tee_local	$push12=, $0=, $pop13
	i32.store	__stack_pointer($pop8), $pop12
	i64.const	$push0=, 0
	i64.store	8($0), $pop0
	i64.const	$push1=, -1
	i64.store	0($0), $pop1
	i32.call	$push2=, cancel_deferred@FUNCTION, $0
	i32.eqz 	$push3=, $pop2
	i32.const	$push4=, .L.str.268
	call    	eosio_assert@FUNCTION, $pop3, $pop4
	i32.const	$push11=, 0
	i32.const	$push9=, 16
	i32.add 	$push10=, $0, $pop9
	i32.store	__stack_pointer($pop11), $pop10
	.endfunc
.Lfunc_end131:
	.size	_ZN16test_transaction37cancel_deferred_transaction_not_foundEv, .Lfunc_end131-_ZN16test_transaction37cancel_deferred_transaction_not_foundEv

	.hidden	_ZN16test_transaction14send_cf_actionEv
	.globl	_ZN16test_transaction14send_cf_actionEv
	.type	_ZN16test_transaction14send_cf_actionEv,@function
_ZN16test_transaction14send_cf_actionEv:
	.local  	i32, i32
	i32.const	$push20=, 0
	i32.const	$push17=, 0
	i32.load	$push18=, __stack_pointer($pop17)
	i32.const	$push19=, 64
	i32.sub 	$push35=, $pop18, $pop19
	tee_local	$push34=, $1=, $pop35
	i32.store	__stack_pointer($pop20), $pop34
	i32.const	$push0=, 32
	i32.add 	$push1=, $1, $pop0
	i64.const	$push2=, 0
	i64.store	0($pop1), $pop2
	i32.const	$push3=, 40
	i32.add 	$push4=, $1, $pop3
	i64.const	$push33=, 0
	i64.store	0($pop4), $pop33
	i64.const	$push32=, 0
	i64.store	24($1), $pop32
	i64.const	$push5=, 5666987383162142720
	i64.store	8($1), $pop5
	i64.const	$push6=, 6256973794934521856
	i64.store	16($1), $pop6
	i32.const	$push8=, 1
	i32.const	$push7=, .L.str.428
	call    	eosio_assert@FUNCTION, $pop8, $pop7
	i32.const	$push24=, 48
	i32.add 	$push25=, $1, $pop24
	i32.const	$push26=, 8
	i32.add 	$push27=, $1, $pop26
	call    	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop25, $pop27
	i32.load	$push31=, 48($1)
	tee_local	$push30=, $0=, $pop31
	i32.load	$push9=, 52($1)
	i32.sub 	$push10=, $pop9, $0
	call    	send_context_free_inline@FUNCTION, $pop30, $pop10
	block   	
	i32.load	$push29=, 48($1)
	tee_local	$push28=, $0=, $pop29
	i32.eqz 	$push40=, $pop28
	br_if   	0, $pop40
	i32.store	52($1), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB132_2:
	end_block
	block   	
	i32.load	$push37=, 36($1)
	tee_local	$push36=, $0=, $pop37
	i32.eqz 	$push41=, $pop36
	br_if   	0, $pop41
	i32.const	$push11=, 40
	i32.add 	$push12=, $1, $pop11
	i32.store	0($pop12), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB132_4:
	end_block
	block   	
	i32.const	$push13=, 24
	i32.add 	$push14=, $1, $pop13
	i32.load	$push39=, 0($pop14)
	tee_local	$push38=, $0=, $pop39
	i32.eqz 	$push42=, $pop38
	br_if   	0, $pop42
	i32.const	$push15=, 28
	i32.add 	$push16=, $1, $pop15
	i32.store	0($pop16), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB132_6:
	end_block
	i32.const	$push23=, 0
	i32.const	$push21=, 64
	i32.add 	$push22=, $1, $pop21
	i32.store	__stack_pointer($pop23), $pop22
	.endfunc
.Lfunc_end132:
	.size	_ZN16test_transaction14send_cf_actionEv, .Lfunc_end132-_ZN16test_transaction14send_cf_actionEv

	.hidden	_ZN16test_transaction19send_cf_action_failEv
	.globl	_ZN16test_transaction19send_cf_action_failEv
	.type	_ZN16test_transaction19send_cf_action_failEv,@function
_ZN16test_transaction19send_cf_action_failEv:
	.local  	i32, i32, i64, i64, i64, i64, i64, i32
	i32.const	$push57=, 0
	i32.const	$push54=, 0
	i32.load	$push55=, __stack_pointer($pop54)
	i32.const	$push56=, 96
	i32.sub 	$push74=, $pop55, $pop56
	tee_local	$push73=, $7=, $pop74
	i32.store	__stack_pointer($pop57), $pop73
	i32.const	$push72=, 0
	i32.store	88($7), $pop72
	i64.const	$3=, 0
	i64.const	$push71=, 0
	i64.store	80($7), $pop71
	i64.const	$2=, 59
	i32.const	$1=, .L.str.269
	i64.const	$4=, 0
.LBB133_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push75=, 4
	i64.gt_u	$push0=, $3, $pop75
	br_if   	0, $pop0
	i32.load8_s	$push80=, 0($1)
	tee_local	$push79=, $0=, $pop80
	i32.const	$push78=, -97
	i32.add 	$push2=, $pop79, $pop78
	i32.const	$push77=, 255
	i32.and 	$push3=, $pop2, $pop77
	i32.const	$push76=, 25
	i32.gt_u	$push4=, $pop3, $pop76
	br_if   	1, $pop4
	i32.const	$push81=, 165
	i32.add 	$0=, $0, $pop81
	br      	2
.LBB133_4:
	end_block
	i64.const	$5=, 0
	i64.const	$push82=, 11
	i64.le_u	$push1=, $3, $pop82
	br_if   	2, $pop1
	br      	3
.LBB133_5:
	end_block
	i32.const	$push87=, 208
	i32.add 	$push5=, $0, $pop87
	i32.const	$push86=, 0
	i32.const	$push85=, -49
	i32.add 	$push6=, $0, $pop85
	i32.const	$push84=, 255
	i32.and 	$push7=, $pop6, $pop84
	i32.const	$push83=, 5
	i32.lt_u	$push8=, $pop7, $pop83
	i32.select	$0=, $pop5, $pop86, $pop8
.LBB133_6:
	end_block
	i64.extend_u/i32	$push9=, $0
	i64.const	$push89=, 56
	i64.shl 	$push10=, $pop9, $pop89
	i64.const	$push88=, 56
	i64.shr_s	$5=, $pop10, $pop88
.LBB133_7:
	end_block
	i64.const	$push91=, 31
	i64.and 	$push12=, $5, $pop91
	i64.const	$push90=, 4294967295
	i64.and 	$push11=, $2, $pop90
	i64.shl 	$5=, $pop12, $pop11
.LBB133_8:
	end_block
	i32.const	$push97=, 1
	i32.add 	$1=, $1, $pop97
	i64.const	$push96=, 1
	i64.add 	$3=, $3, $pop96
	i64.or  	$4=, $5, $4
	i64.const	$push95=, -5
	i64.add 	$push94=, $2, $pop95
	tee_local	$push93=, $2=, $pop94
	i64.const	$push92=, -6
	i64.ne  	$push13=, $pop93, $pop92
	br_if   	0, $pop13
	end_loop
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.11
	i64.const	$6=, 0
.LBB133_10:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push98=, 5
	i64.gt_u	$push14=, $3, $pop98
	br_if   	0, $pop14
	i32.load8_s	$push103=, 0($1)
	tee_local	$push102=, $0=, $pop103
	i32.const	$push101=, -97
	i32.add 	$push16=, $pop102, $pop101
	i32.const	$push100=, 255
	i32.and 	$push17=, $pop16, $pop100
	i32.const	$push99=, 25
	i32.gt_u	$push18=, $pop17, $pop99
	br_if   	1, $pop18
	i32.const	$push104=, 165
	i32.add 	$0=, $0, $pop104
	br      	2
.LBB133_13:
	end_block
	i64.const	$5=, 0
	i64.const	$push105=, 11
	i64.le_u	$push15=, $3, $pop105
	br_if   	2, $pop15
	br      	3
.LBB133_14:
	end_block
	i32.const	$push110=, 208
	i32.add 	$push19=, $0, $pop110
	i32.const	$push109=, 0
	i32.const	$push108=, -49
	i32.add 	$push20=, $0, $pop108
	i32.const	$push107=, 255
	i32.and 	$push21=, $pop20, $pop107
	i32.const	$push106=, 5
	i32.lt_u	$push22=, $pop21, $pop106
	i32.select	$0=, $pop19, $pop109, $pop22
.LBB133_15:
	end_block
	i64.extend_u/i32	$push23=, $0
	i64.const	$push112=, 56
	i64.shl 	$push24=, $pop23, $pop112
	i64.const	$push111=, 56
	i64.shr_s	$5=, $pop24, $pop111
.LBB133_16:
	end_block
	i64.const	$push114=, 31
	i64.and 	$push26=, $5, $pop114
	i64.const	$push113=, 4294967295
	i64.and 	$push25=, $2, $pop113
	i64.shl 	$5=, $pop26, $pop25
.LBB133_17:
	end_block
	i32.const	$push120=, 1
	i32.add 	$1=, $1, $pop120
	i64.const	$push119=, 1
	i64.add 	$3=, $3, $pop119
	i64.or  	$6=, $5, $6
	i64.const	$push118=, -5
	i64.add 	$push117=, $2, $pop118
	tee_local	$push116=, $2=, $pop117
	i64.const	$push115=, -6
	i64.ne  	$push27=, $pop116, $pop115
	br_if   	0, $pop27
	end_loop
	i64.store	16($7), $6
	i64.store	8($7), $4
	i32.const	$push28=, 16
	i32.call	$push128=, _Znwj@FUNCTION, $pop28
	tee_local	$push127=, $1=, $pop128
	i32.const	$push29=, 12
	i32.add 	$push30=, $pop127, $pop29
	i32.const	$push61=, 8
	i32.add 	$push62=, $7, $pop61
	i32.const	$push126=, 12
	i32.add 	$push31=, $pop62, $pop126
	i32.load	$push32=, 0($pop31)
	i32.store	0($pop30), $pop32
	i32.const	$push33=, 4
	i32.add 	$push34=, $1, $pop33
	i32.load	$push35=, 12($7)
	i32.store	0($pop34), $pop35
	i32.store	24($7), $1
	i32.load	$push36=, 8($7)
	i32.store	0($1), $pop36
	i32.const	$push125=, 16
	i32.add 	$push124=, $1, $pop125
	tee_local	$push123=, $0=, $pop124
	i32.store	32($7), $pop123
	i32.const	$push37=, 8
	i32.add 	$push38=, $1, $pop37
	i32.load	$push39=, 16($7)
	i32.store	0($pop38), $pop39
	i32.store	28($7), $0
	i32.const	$push63=, 40
	i32.add 	$push64=, $7, $pop63
	i32.const	$push65=, 24
	i32.add 	$push66=, $7, $pop65
	i32.const	$push67=, 80
	i32.add 	$push68=, $7, $pop67
	i32.call	$1=, _ZN5eosio6actionC2I18test_action_actionILy5666987383162142720ELy6256973794934521856EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_@FUNCTION, $pop64, $pop66, $pop68
	block   	
	i32.load	$push122=, 24($7)
	tee_local	$push121=, $0=, $pop122
	i32.eqz 	$push139=, $pop121
	br_if   	0, $pop139
	i32.store	28($7), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB133_20:
	end_block
	i32.const	$push40=, 20
	i32.add 	$push41=, $1, $pop40
	i32.load	$push42=, 0($pop41)
	i32.load	$push43=, 16($1)
	i32.eq  	$push44=, $pop42, $pop43
	i32.const	$push45=, .L.str.428
	call    	eosio_assert@FUNCTION, $pop44, $pop45
	i32.const	$push69=, 8
	i32.add 	$push70=, $7, $pop69
	call    	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop70, $1
	i32.load	$push132=, 8($7)
	tee_local	$push131=, $0=, $pop132
	i32.load	$push46=, 12($7)
	i32.sub 	$push47=, $pop46, $0
	call    	send_context_free_inline@FUNCTION, $pop131, $pop47
	block   	
	i32.load	$push130=, 8($7)
	tee_local	$push129=, $0=, $pop130
	i32.eqz 	$push140=, $pop129
	br_if   	0, $pop140
	i32.store	12($7), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB133_22:
	end_block
	i32.const	$push49=, 0
	i32.const	$push48=, .L.str.270
	call    	eosio_assert@FUNCTION, $pop49, $pop48
	block   	
	i32.load	$push134=, 28($1)
	tee_local	$push133=, $0=, $pop134
	i32.eqz 	$push141=, $pop133
	br_if   	0, $pop141
	i32.const	$push50=, 32
	i32.add 	$push51=, $1, $pop50
	i32.store	0($pop51), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB133_24:
	end_block
	block   	
	i32.load	$push136=, 16($1)
	tee_local	$push135=, $0=, $pop136
	i32.eqz 	$push142=, $pop135
	br_if   	0, $pop142
	i32.const	$push52=, 20
	i32.add 	$push53=, $1, $pop52
	i32.store	0($pop53), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB133_26:
	end_block
	block   	
	i32.load	$push138=, 80($7)
	tee_local	$push137=, $1=, $pop138
	i32.eqz 	$push143=, $pop137
	br_if   	0, $pop143
	i32.store	84($7), $1
	call    	_ZdlPv@FUNCTION, $1
.LBB133_28:
	end_block
	i32.const	$push60=, 0
	i32.const	$push58=, 96
	i32.add 	$push59=, $7, $pop58
	i32.store	__stack_pointer($pop60), $pop59
	.endfunc
.Lfunc_end133:
	.size	_ZN16test_transaction19send_cf_action_failEv, .Lfunc_end133-_ZN16test_transaction19send_cf_action_failEv

	.section	.text._ZN5eosio6actionC2I18test_action_actionILy5666987383162142720ELy6256973794934521856EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,"axG",@progbits,_ZN5eosio6actionC2I18test_action_actionILy5666987383162142720ELy6256973794934521856EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,comdat
	.hidden	_ZN5eosio6actionC2I18test_action_actionILy5666987383162142720ELy6256973794934521856EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_
	.weak	_ZN5eosio6actionC2I18test_action_actionILy5666987383162142720ELy6256973794934521856EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_
	.type	_ZN5eosio6actionC2I18test_action_actionILy5666987383162142720ELy6256973794934521856EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_,@function
_ZN5eosio6actionC2I18test_action_actionILy5666987383162142720ELy6256973794934521856EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	i32.const	$push35=, 0
	i32.const	$push32=, 0
	i32.load	$push33=, __stack_pointer($pop32)
	i32.const	$push34=, 16
	i32.sub 	$push54=, $pop33, $pop34
	tee_local	$push53=, $7=, $pop54
	i32.store	__stack_pointer($pop35), $pop53
	i64.const	$push0=, 0
	i64.store	16($0):p2align=2, $pop0
	i32.const	$push1=, 24
	i32.add 	$push52=, $0, $pop1
	tee_local	$push51=, $6=, $pop52
	i64.const	$push50=, 0
	i64.store	0($pop51):p2align=2, $pop50
	i32.const	$push2=, 32
	i32.add 	$push3=, $0, $pop2
	i64.const	$push49=, 0
	i64.store	0($pop3):p2align=2, $pop49
	i64.const	$push4=, 5666987383162142720
	i64.store	0($0), $pop4
	i64.const	$push5=, 6256973794934521856
	i64.store	8($0), $pop5
	i32.load	$push6=, 0($1)
	i32.store	16($0), $pop6
	i32.const	$push7=, 20
	i32.add 	$push8=, $0, $pop7
	i32.load	$push9=, 4($1)
	i32.store	0($pop8), $pop9
	i32.load	$push10=, 8($1)
	i32.store	0($6), $pop10
	i32.const	$6=, 0
	i32.const	$push48=, 0
	i32.store	8($1), $pop48
	i64.const	$push47=, 0
	i64.store	0($1):p2align=2, $pop47
	i32.const	$push46=, 0
	i32.store	8($7), $pop46
	i64.const	$push45=, 0
	i64.store	0($7), $pop45
	i32.const	$5=, 0
	block   	
	i32.load	$push44=, 0($2)
	tee_local	$push43=, $1=, $pop44
	i32.load	$push42=, 4($2)
	tee_local	$push41=, $4=, $pop42
	i32.eq  	$push11=, $pop43, $pop41
	br_if   	0, $pop11
	i32.sub 	$push56=, $4, $1
	tee_local	$push55=, $3=, $pop56
	i32.eqz 	$push68=, $pop55
	br_if   	0, $pop68
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $7, $3
	i32.const	$push12=, 4
	i32.add 	$push13=, $2, $pop12
	i32.load	$4=, 0($pop13)
	i32.load	$1=, 0($2)
	i32.load	$5=, 4($7)
	i32.load	$6=, 0($7)
.LBB134_3:
	end_block
	block   	
	i32.eq  	$push14=, $1, $4
	br_if   	0, $pop14
.LBB134_5:
	loop    	
	i32.load8_u	$push15=, 0($1)
	i32.store8	15($7), $pop15
	i32.sub 	$push16=, $5, $6
	i32.const	$push63=, 0
	i32.gt_s	$push17=, $pop16, $pop63
	i32.const	$push62=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop17, $pop62
	i32.const	$push39=, 15
	i32.add 	$push40=, $7, $pop39
	i32.const	$push61=, 1
	i32.call	$drop=, memcpy@FUNCTION, $6, $pop40, $pop61
	i32.const	$push60=, 1
	i32.add 	$6=, $6, $pop60
	i32.const	$push59=, 1
	i32.add 	$push58=, $1, $pop59
	tee_local	$push57=, $1=, $pop58
	i32.ne  	$push18=, $4, $pop57
	br_if   	0, $pop18
.LBB134_6:
	end_loop
	end_block
	block   	
	i32.const	$push19=, 28
	i32.add 	$push67=, $0, $pop19
	tee_local	$push66=, $6=, $pop67
	i32.load	$push65=, 0($pop66)
	tee_local	$push64=, $1=, $pop65
	i32.eqz 	$push69=, $pop64
	br_if   	0, $pop69
	i32.const	$push20=, 32
	i32.add 	$push21=, $0, $pop20
	i32.store	0($pop21), $1
	call    	_ZdlPv@FUNCTION, $1
	i32.const	$push22=, 36
	i32.add 	$push23=, $0, $pop22
	i32.const	$push24=, 0
	i32.store	0($pop23), $pop24
	i64.const	$push25=, 0
	i64.store	0($6):p2align=2, $pop25
.LBB134_8:
	end_block
	i64.load	$push26=, 0($7)
	i64.store	0($6):p2align=2, $pop26
	i32.const	$push27=, 36
	i32.add 	$push28=, $0, $pop27
	i32.const	$push29=, 8
	i32.add 	$push30=, $7, $pop29
	i32.load	$push31=, 0($pop30)
	i32.store	0($pop28), $pop31
	i32.const	$push38=, 0
	i32.const	$push36=, 16
	i32.add 	$push37=, $7, $pop36
	i32.store	__stack_pointer($pop38), $pop37
	copy_local	$push70=, $0
	.endfunc
.Lfunc_end134:
	.size	_ZN5eosio6actionC2I18test_action_actionILy5666987383162142720ELy6256973794934521856EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_, .Lfunc_end134-_ZN5eosio6actionC2I18test_action_actionILy5666987383162142720ELy6256973794934521856EEEEONSt3__16vectorINS_16permission_levelENS4_9allocatorIS6_EEEERKT_

	.text
	.hidden	_ZN16test_transaction12stateful_apiEv
	.globl	_ZN16test_transaction12stateful_apiEv
	.type	_ZN16test_transaction12stateful_apiEv,@function
_ZN16test_transaction12stateful_apiEv:
	.local  	i32, i32, i64, i64, i64, i64, i64, i64, i32
	i32.const	$push47=, 0
	i32.const	$push44=, 0
	i32.load	$push45=, __stack_pointer($pop44)
	i32.const	$push46=, 16
	i32.sub 	$push55=, $pop45, $pop46
	tee_local	$push54=, $8=, $pop55
	i32.store	__stack_pointer($pop47), $pop54
	i32.const	$push53=, 1
	i32.store	12($8), $pop53
	i64.const	$2=, 0
	i64.const	$4=, 59
	i32.const	$1=, .L.str.271
	i64.const	$3=, 0
.LBB135_1:
	loop    	
	i64.const	$6=, 0
	block   	
	block   	
	i64.const	$push56=, 15
	i64.gt_u	$push0=, $2, $pop56
	br_if   	0, $pop0
	block   	
	block   	
	i32.load8_s	$push61=, 0($1)
	tee_local	$push60=, $0=, $pop61
	i32.const	$push59=, -97
	i32.add 	$push1=, $pop60, $pop59
	i32.const	$push58=, 255
	i32.and 	$push2=, $pop1, $pop58
	i32.const	$push57=, 25
	i32.gt_u	$push3=, $pop2, $pop57
	br_if   	0, $pop3
	i32.const	$push62=, 165
	i32.add 	$0=, $0, $pop62
	br      	1
.LBB135_4:
	end_block
	i32.const	$push67=, 208
	i32.add 	$push4=, $0, $pop67
	i32.const	$push66=, 0
	i32.const	$push65=, -49
	i32.add 	$push5=, $0, $pop65
	i32.const	$push64=, 255
	i32.and 	$push6=, $pop5, $pop64
	i32.const	$push63=, 5
	i32.lt_u	$push7=, $pop6, $pop63
	i32.select	$0=, $pop4, $pop66, $pop7
.LBB135_5:
	end_block
	i64.extend_u/i32	$push8=, $0
	i64.const	$push70=, 56
	i64.shl 	$push9=, $pop8, $pop70
	i64.const	$push69=, 56
	i64.shr_s	$6=, $pop9, $pop69
	i64.const	$push68=, 11
	i64.gt_u	$push10=, $2, $pop68
	br_if   	0, $pop10
	i64.const	$push72=, 31
	i64.and 	$push12=, $6, $pop72
	i64.const	$push71=, 4294967295
	i64.and 	$push11=, $4, $pop71
	i64.shl 	$6=, $pop12, $pop11
	br      	1
.LBB135_7:
	end_block
	i64.const	$push73=, 15
	i64.and 	$6=, $6, $pop73
.LBB135_8:
	end_block
	i32.const	$push79=, 1
	i32.add 	$1=, $1, $pop79
	i64.const	$push78=, 1
	i64.add 	$2=, $2, $pop78
	i64.or  	$3=, $6, $3
	i64.const	$push77=, -5
	i64.add 	$push76=, $4, $pop77
	tee_local	$push75=, $4=, $pop76
	i64.const	$push74=, -6
	i64.ne  	$push13=, $pop75, $pop74
	br_if   	0, $pop13
	end_loop
	i64.const	$2=, 0
	i64.const	$4=, 59
	i32.const	$1=, .L.str.272
	i64.const	$5=, 0
.LBB135_10:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push80=, 4
	i64.gt_u	$push14=, $2, $pop80
	br_if   	0, $pop14
	i32.load8_s	$push85=, 0($1)
	tee_local	$push84=, $0=, $pop85
	i32.const	$push83=, -97
	i32.add 	$push16=, $pop84, $pop83
	i32.const	$push82=, 255
	i32.and 	$push17=, $pop16, $pop82
	i32.const	$push81=, 25
	i32.gt_u	$push18=, $pop17, $pop81
	br_if   	1, $pop18
	i32.const	$push86=, 165
	i32.add 	$0=, $0, $pop86
	br      	2
.LBB135_13:
	end_block
	i64.const	$6=, 0
	i64.const	$push87=, 11
	i64.le_u	$push15=, $2, $pop87
	br_if   	2, $pop15
	br      	3
.LBB135_14:
	end_block
	i32.const	$push92=, 208
	i32.add 	$push19=, $0, $pop92
	i32.const	$push91=, 0
	i32.const	$push90=, -49
	i32.add 	$push20=, $0, $pop90
	i32.const	$push89=, 255
	i32.and 	$push21=, $pop20, $pop89
	i32.const	$push88=, 5
	i32.lt_u	$push22=, $pop21, $pop88
	i32.select	$0=, $pop19, $pop91, $pop22
.LBB135_15:
	end_block
	i64.extend_u/i32	$push23=, $0
	i64.const	$push94=, 56
	i64.shl 	$push24=, $pop23, $pop94
	i64.const	$push93=, 56
	i64.shr_s	$6=, $pop24, $pop93
.LBB135_16:
	end_block
	i64.const	$push96=, 31
	i64.and 	$push26=, $6, $pop96
	i64.const	$push95=, 4294967295
	i64.and 	$push25=, $4, $pop95
	i64.shl 	$6=, $pop26, $pop25
.LBB135_17:
	end_block
	i32.const	$push102=, 1
	i32.add 	$1=, $1, $pop102
	i64.const	$push101=, 1
	i64.add 	$2=, $2, $pop101
	i64.or  	$5=, $6, $5
	i64.const	$push100=, -5
	i64.add 	$push99=, $4, $pop100
	tee_local	$push98=, $4=, $pop99
	i64.const	$push97=, -6
	i64.ne  	$push27=, $pop98, $pop97
	br_if   	0, $pop27
	end_loop
	i64.const	$2=, 0
	i64.const	$4=, 59
	i32.const	$1=, .L.str.271
	i64.const	$7=, 0
.LBB135_19:
	loop    	
	i64.const	$6=, 0
	block   	
	block   	
	i64.const	$push103=, 15
	i64.gt_u	$push28=, $2, $pop103
	br_if   	0, $pop28
	block   	
	block   	
	i32.load8_s	$push108=, 0($1)
	tee_local	$push107=, $0=, $pop108
	i32.const	$push106=, -97
	i32.add 	$push29=, $pop107, $pop106
	i32.const	$push105=, 255
	i32.and 	$push30=, $pop29, $pop105
	i32.const	$push104=, 25
	i32.gt_u	$push31=, $pop30, $pop104
	br_if   	0, $pop31
	i32.const	$push109=, 165
	i32.add 	$0=, $0, $pop109
	br      	1
.LBB135_22:
	end_block
	i32.const	$push114=, 208
	i32.add 	$push32=, $0, $pop114
	i32.const	$push113=, 0
	i32.const	$push112=, -49
	i32.add 	$push33=, $0, $pop112
	i32.const	$push111=, 255
	i32.and 	$push34=, $pop33, $pop111
	i32.const	$push110=, 5
	i32.lt_u	$push35=, $pop34, $pop110
	i32.select	$0=, $pop32, $pop113, $pop35
.LBB135_23:
	end_block
	i64.extend_u/i32	$push36=, $0
	i64.const	$push117=, 56
	i64.shl 	$push37=, $pop36, $pop117
	i64.const	$push116=, 56
	i64.shr_s	$6=, $pop37, $pop116
	i64.const	$push115=, 11
	i64.gt_u	$push38=, $2, $pop115
	br_if   	0, $pop38
	i64.const	$push119=, 31
	i64.and 	$push40=, $6, $pop119
	i64.const	$push118=, 4294967295
	i64.and 	$push39=, $4, $pop118
	i64.shl 	$6=, $pop40, $pop39
	br      	1
.LBB135_25:
	end_block
	i64.const	$push120=, 15
	i64.and 	$6=, $6, $pop120
.LBB135_26:
	end_block
	i32.const	$push126=, 1
	i32.add 	$1=, $1, $pop126
	i64.const	$push125=, 1
	i64.add 	$2=, $2, $pop125
	i64.or  	$7=, $6, $7
	i64.const	$push124=, -5
	i64.add 	$push123=, $4, $pop124
	tee_local	$push122=, $4=, $pop123
	i64.const	$push121=, -6
	i64.ne  	$push41=, $pop122, $pop121
	br_if   	0, $pop41
	end_loop
	i64.const	$push43=, 0
	i32.const	$push51=, 12
	i32.add 	$push52=, $8, $pop51
	i32.const	$push42=, 4
	i32.call	$drop=, db_store_i64@FUNCTION, $3, $5, $7, $pop43, $pop52, $pop42
	i32.const	$push50=, 0
	i32.const	$push48=, 16
	i32.add 	$push49=, $8, $pop48
	i32.store	__stack_pointer($pop50), $pop49
	.endfunc
.Lfunc_end135:
	.size	_ZN16test_transaction12stateful_apiEv, .Lfunc_end135-_ZN16test_transaction12stateful_apiEv

	.hidden	_ZN16test_transaction16context_free_apiEv
	.globl	_ZN16test_transaction16context_free_apiEv
	.type	_ZN16test_transaction16context_free_apiEv,@function
_ZN16test_transaction16context_free_apiEv:
	.local  	i32
	i32.const	$push5=, 0
	i32.const	$push2=, 0
	i32.load	$push3=, __stack_pointer($pop2)
	i32.const	$push4=, 128
	i32.sub 	$push14=, $pop3, $pop4
	tee_local	$push13=, $0=, $pop14
	i32.store	__stack_pointer($pop5), $pop13
	i32.const	$push1=, 0
	i32.const	$push12=, 0
	i32.const	$push0=, 128
	i32.call	$push11=, memset@FUNCTION, $0, $pop12, $pop0
	tee_local	$push10=, $0=, $pop11
	i32.const	$push9=, 128
	i32.call	$drop=, get_context_free_data@FUNCTION, $pop1, $pop10, $pop9
	i32.const	$push8=, 0
	i32.const	$push6=, 128
	i32.add 	$push7=, $0, $pop6
	i32.store	__stack_pointer($pop8), $pop7
	.endfunc
.Lfunc_end136:
	.size	_ZN16test_transaction16context_free_apiEv, .Lfunc_end136-_ZN16test_transaction16context_free_apiEv

	.hidden	_ZN16test_transaction11new_featureEv
	.globl	_ZN16test_transaction11new_featureEv
	.type	_ZN16test_transaction11new_featureEv,@function
_ZN16test_transaction11new_featureEv:
	.local  	i32, i32, i64, i64, i64, i64
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.273
	i64.const	$4=, 0
.LBB137_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push17=, 9
	i64.gt_u	$push0=, $3, $pop17
	br_if   	0, $pop0
	i32.load8_s	$push22=, 0($1)
	tee_local	$push21=, $0=, $pop22
	i32.const	$push20=, -97
	i32.add 	$push2=, $pop21, $pop20
	i32.const	$push19=, 255
	i32.and 	$push3=, $pop2, $pop19
	i32.const	$push18=, 25
	i32.gt_u	$push4=, $pop3, $pop18
	br_if   	1, $pop4
	i32.const	$push23=, 165
	i32.add 	$0=, $0, $pop23
	br      	2
.LBB137_4:
	end_block
	i64.const	$5=, 0
	i64.const	$push24=, 11
	i64.le_u	$push1=, $3, $pop24
	br_if   	2, $pop1
	br      	3
.LBB137_5:
	end_block
	i32.const	$push29=, 208
	i32.add 	$push5=, $0, $pop29
	i32.const	$push28=, 0
	i32.const	$push27=, -49
	i32.add 	$push6=, $0, $pop27
	i32.const	$push26=, 255
	i32.and 	$push7=, $pop6, $pop26
	i32.const	$push25=, 5
	i32.lt_u	$push8=, $pop7, $pop25
	i32.select	$0=, $pop5, $pop28, $pop8
.LBB137_6:
	end_block
	i64.extend_u/i32	$push9=, $0
	i64.const	$push31=, 56
	i64.shl 	$push10=, $pop9, $pop31
	i64.const	$push30=, 56
	i64.shr_s	$5=, $pop10, $pop30
.LBB137_7:
	end_block
	i64.const	$push33=, 31
	i64.and 	$push12=, $5, $pop33
	i64.const	$push32=, 4294967295
	i64.and 	$push11=, $2, $pop32
	i64.shl 	$5=, $pop12, $pop11
.LBB137_8:
	end_block
	i32.const	$push39=, 1
	i32.add 	$1=, $1, $pop39
	i64.const	$push38=, 1
	i64.add 	$3=, $3, $pop38
	i64.or  	$4=, $5, $4
	i64.const	$push37=, -5
	i64.add 	$push36=, $2, $pop37
	tee_local	$push35=, $2=, $pop36
	i64.const	$push34=, -6
	i64.ne  	$push13=, $pop35, $pop34
	br_if   	0, $pop13
	end_loop
	i32.call	$push14=, is_feature_active@FUNCTION, $4
	i32.eqz 	$push15=, $pop14
	i32.const	$push16=, .L.str.274
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	.endfunc
.Lfunc_end137:
	.size	_ZN16test_transaction11new_featureEv, .Lfunc_end137-_ZN16test_transaction11new_featureEv

	.hidden	_ZN16test_transaction18active_new_featureEv
	.globl	_ZN16test_transaction18active_new_featureEv
	.type	_ZN16test_transaction18active_new_featureEv,@function
_ZN16test_transaction18active_new_featureEv:
	.local  	i32, i32, i64, i64, i64, i64
	i64.const	$3=, 0
	i64.const	$2=, 59
	i32.const	$1=, .L.str.273
	i64.const	$4=, 0
.LBB138_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push14=, 9
	i64.gt_u	$push0=, $3, $pop14
	br_if   	0, $pop0
	i32.load8_s	$push19=, 0($1)
	tee_local	$push18=, $0=, $pop19
	i32.const	$push17=, -97
	i32.add 	$push2=, $pop18, $pop17
	i32.const	$push16=, 255
	i32.and 	$push3=, $pop2, $pop16
	i32.const	$push15=, 25
	i32.gt_u	$push4=, $pop3, $pop15
	br_if   	1, $pop4
	i32.const	$push20=, 165
	i32.add 	$0=, $0, $pop20
	br      	2
.LBB138_4:
	end_block
	i64.const	$5=, 0
	i64.const	$push21=, 11
	i64.le_u	$push1=, $3, $pop21
	br_if   	2, $pop1
	br      	3
.LBB138_5:
	end_block
	i32.const	$push26=, 208
	i32.add 	$push5=, $0, $pop26
	i32.const	$push25=, 0
	i32.const	$push24=, -49
	i32.add 	$push6=, $0, $pop24
	i32.const	$push23=, 255
	i32.and 	$push7=, $pop6, $pop23
	i32.const	$push22=, 5
	i32.lt_u	$push8=, $pop7, $pop22
	i32.select	$0=, $pop5, $pop25, $pop8
.LBB138_6:
	end_block
	i64.extend_u/i32	$push9=, $0
	i64.const	$push28=, 56
	i64.shl 	$push10=, $pop9, $pop28
	i64.const	$push27=, 56
	i64.shr_s	$5=, $pop10, $pop27
.LBB138_7:
	end_block
	i64.const	$push30=, 31
	i64.and 	$push12=, $5, $pop30
	i64.const	$push29=, 4294967295
	i64.and 	$push11=, $2, $pop29
	i64.shl 	$5=, $pop12, $pop11
.LBB138_8:
	end_block
	i32.const	$push36=, 1
	i32.add 	$1=, $1, $pop36
	i64.const	$push35=, 1
	i64.add 	$3=, $3, $pop35
	i64.or  	$4=, $5, $4
	i64.const	$push34=, -5
	i64.add 	$push33=, $2, $pop34
	tee_local	$push32=, $2=, $pop33
	i64.const	$push31=, -6
	i64.ne  	$push13=, $pop32, $pop31
	br_if   	0, $pop13
	end_loop
	call    	activate_feature@FUNCTION, $4
	.endfunc
.Lfunc_end138:
	.size	_ZN16test_transaction18active_new_featureEv, .Lfunc_end138-_ZN16test_transaction18active_new_featureEv

	.hidden	_ZN14test_checktime14checktime_passEv
	.globl	_ZN14test_checktime14checktime_passEv
	.type	_ZN14test_checktime14checktime_passEv,@function
_ZN14test_checktime14checktime_passEv:
	i64.const	$push0=, 49995000
	call    	printi@FUNCTION, $pop0
	.endfunc
.Lfunc_end139:
	.size	_ZN14test_checktime14checktime_passEv, .Lfunc_end139-_ZN14test_checktime14checktime_passEv

	.hidden	_ZN14test_checktime17checktime_failureEv
	.globl	_ZN14test_checktime17checktime_failureEv
	.type	_ZN14test_checktime17checktime_failureEv,@function
_ZN14test_checktime17checktime_failureEv:
	.local  	i64, i64, i64, i64
	i64.const	$2=, 0
	i64.const	$1=, 1
	i64.const	$3=, 0
.LBB140_1:
	loop    	
	copy_local	$push14=, $2
	tee_local	$push13=, $0=, $pop14
	i64.const	$push12=, 4294967295
	i64.and 	$push1=, $pop13, $pop12
	i64.add 	$2=, $pop1, $3
	i64.const	$push11=, 1
	i64.add 	$push0=, $3, $pop11
	copy_local	$3=, $pop0
	i64.const	$push10=, -1
	i64.add 	$push9=, $1, $pop10
	tee_local	$push8=, $1=, $pop9
	i64.const	$push7=, 8446744073709551617
	i64.ne  	$push2=, $pop8, $pop7
	br_if   	0, $pop2
	end_loop
	i64.sub 	$push3=, $0, $1
	i64.const	$push4=, 32
	i64.shl 	$push5=, $pop3, $pop4
	i64.const	$push15=, 32
	i64.shr_s	$push6=, $pop5, $pop15
	call    	printi@FUNCTION, $pop6
	.endfunc
.Lfunc_end140:
	.size	_ZN14test_checktime17checktime_failureEv, .Lfunc_end140-_ZN14test_checktime17checktime_failureEv

	.hidden	_ZN14test_checktime22checktime_sha1_failureEv
	.globl	_ZN14test_checktime22checktime_sha1_failureEv
	.type	_ZN14test_checktime22checktime_sha1_failureEv,@function
_ZN14test_checktime22checktime_sha1_failureEv:
	.local  	i32
	i32.const	$push5=, 0
	i32.const	$push2=, 0
	i32.load	$push3=, __stack_pointer($pop2)
	i32.const	$push4=, 32
	i32.sub 	$push11=, $pop3, $pop4
	tee_local	$push10=, $0=, $pop11
	i32.store	__stack_pointer($pop5), $pop10
	i32.const	$push0=, 20000000
	i32.call	$push1=, _Znaj@FUNCTION, $pop0
	i32.const	$push9=, 20000000
	call    	sha1@FUNCTION, $pop1, $pop9, $0
	i32.const	$push8=, 0
	i32.const	$push6=, 32
	i32.add 	$push7=, $0, $pop6
	i32.store	__stack_pointer($pop8), $pop7
	.endfunc
.Lfunc_end141:
	.size	_ZN14test_checktime22checktime_sha1_failureEv, .Lfunc_end141-_ZN14test_checktime22checktime_sha1_failureEv

	.hidden	_ZN14test_checktime29checktime_assert_sha1_failureEv
	.globl	_ZN14test_checktime29checktime_assert_sha1_failureEv
	.type	_ZN14test_checktime29checktime_assert_sha1_failureEv,@function
_ZN14test_checktime29checktime_assert_sha1_failureEv:
	.local  	i32
	i32.const	$push5=, 0
	i32.const	$push2=, 0
	i32.load	$push3=, __stack_pointer($pop2)
	i32.const	$push4=, 32
	i32.sub 	$push11=, $pop3, $pop4
	tee_local	$push10=, $0=, $pop11
	i32.store	__stack_pointer($pop5), $pop10
	i32.const	$push0=, 20000000
	i32.call	$push1=, _Znaj@FUNCTION, $pop0
	i32.const	$push9=, 20000000
	call    	assert_sha1@FUNCTION, $pop1, $pop9, $0
	i32.const	$push8=, 0
	i32.const	$push6=, 32
	i32.add 	$push7=, $0, $pop6
	i32.store	__stack_pointer($pop8), $pop7
	.endfunc
.Lfunc_end142:
	.size	_ZN14test_checktime29checktime_assert_sha1_failureEv, .Lfunc_end142-_ZN14test_checktime29checktime_assert_sha1_failureEv

	.hidden	_ZN14test_checktime24checktime_sha256_failureEv
	.globl	_ZN14test_checktime24checktime_sha256_failureEv
	.type	_ZN14test_checktime24checktime_sha256_failureEv,@function
_ZN14test_checktime24checktime_sha256_failureEv:
	.local  	i32
	i32.const	$push5=, 0
	i32.const	$push2=, 0
	i32.load	$push3=, __stack_pointer($pop2)
	i32.const	$push4=, 32
	i32.sub 	$push11=, $pop3, $pop4
	tee_local	$push10=, $0=, $pop11
	i32.store	__stack_pointer($pop5), $pop10
	i32.const	$push0=, 20000000
	i32.call	$push1=, _Znaj@FUNCTION, $pop0
	i32.const	$push9=, 20000000
	call    	sha256@FUNCTION, $pop1, $pop9, $0
	i32.const	$push8=, 0
	i32.const	$push6=, 32
	i32.add 	$push7=, $0, $pop6
	i32.store	__stack_pointer($pop8), $pop7
	.endfunc
.Lfunc_end143:
	.size	_ZN14test_checktime24checktime_sha256_failureEv, .Lfunc_end143-_ZN14test_checktime24checktime_sha256_failureEv

	.hidden	_ZN14test_checktime31checktime_assert_sha256_failureEv
	.globl	_ZN14test_checktime31checktime_assert_sha256_failureEv
	.type	_ZN14test_checktime31checktime_assert_sha256_failureEv,@function
_ZN14test_checktime31checktime_assert_sha256_failureEv:
	.local  	i32
	i32.const	$push5=, 0
	i32.const	$push2=, 0
	i32.load	$push3=, __stack_pointer($pop2)
	i32.const	$push4=, 32
	i32.sub 	$push11=, $pop3, $pop4
	tee_local	$push10=, $0=, $pop11
	i32.store	__stack_pointer($pop5), $pop10
	i32.const	$push0=, 20000000
	i32.call	$push1=, _Znaj@FUNCTION, $pop0
	i32.const	$push9=, 20000000
	call    	assert_sha256@FUNCTION, $pop1, $pop9, $0
	i32.const	$push8=, 0
	i32.const	$push6=, 32
	i32.add 	$push7=, $0, $pop6
	i32.store	__stack_pointer($pop8), $pop7
	.endfunc
.Lfunc_end144:
	.size	_ZN14test_checktime31checktime_assert_sha256_failureEv, .Lfunc_end144-_ZN14test_checktime31checktime_assert_sha256_failureEv

	.hidden	_ZN14test_checktime24checktime_sha512_failureEv
	.globl	_ZN14test_checktime24checktime_sha512_failureEv
	.type	_ZN14test_checktime24checktime_sha512_failureEv,@function
_ZN14test_checktime24checktime_sha512_failureEv:
	.local  	i32
	i32.const	$push5=, 0
	i32.const	$push2=, 0
	i32.load	$push3=, __stack_pointer($pop2)
	i32.const	$push4=, 64
	i32.sub 	$push11=, $pop3, $pop4
	tee_local	$push10=, $0=, $pop11
	i32.store	__stack_pointer($pop5), $pop10
	i32.const	$push0=, 20000000
	i32.call	$push1=, _Znaj@FUNCTION, $pop0
	i32.const	$push9=, 20000000
	call    	sha512@FUNCTION, $pop1, $pop9, $0
	i32.const	$push8=, 0
	i32.const	$push6=, 64
	i32.add 	$push7=, $0, $pop6
	i32.store	__stack_pointer($pop8), $pop7
	.endfunc
.Lfunc_end145:
	.size	_ZN14test_checktime24checktime_sha512_failureEv, .Lfunc_end145-_ZN14test_checktime24checktime_sha512_failureEv

	.hidden	_ZN14test_checktime31checktime_assert_sha512_failureEv
	.globl	_ZN14test_checktime31checktime_assert_sha512_failureEv
	.type	_ZN14test_checktime31checktime_assert_sha512_failureEv,@function
_ZN14test_checktime31checktime_assert_sha512_failureEv:
	.local  	i32
	i32.const	$push5=, 0
	i32.const	$push2=, 0
	i32.load	$push3=, __stack_pointer($pop2)
	i32.const	$push4=, 64
	i32.sub 	$push11=, $pop3, $pop4
	tee_local	$push10=, $0=, $pop11
	i32.store	__stack_pointer($pop5), $pop10
	i32.const	$push0=, 20000000
	i32.call	$push1=, _Znaj@FUNCTION, $pop0
	i32.const	$push9=, 20000000
	call    	assert_sha512@FUNCTION, $pop1, $pop9, $0
	i32.const	$push8=, 0
	i32.const	$push6=, 64
	i32.add 	$push7=, $0, $pop6
	i32.store	__stack_pointer($pop8), $pop7
	.endfunc
.Lfunc_end146:
	.size	_ZN14test_checktime31checktime_assert_sha512_failureEv, .Lfunc_end146-_ZN14test_checktime31checktime_assert_sha512_failureEv

	.hidden	_ZN14test_checktime27checktime_ripemd160_failureEv
	.globl	_ZN14test_checktime27checktime_ripemd160_failureEv
	.type	_ZN14test_checktime27checktime_ripemd160_failureEv,@function
_ZN14test_checktime27checktime_ripemd160_failureEv:
	.local  	i32
	i32.const	$push5=, 0
	i32.const	$push2=, 0
	i32.load	$push3=, __stack_pointer($pop2)
	i32.const	$push4=, 32
	i32.sub 	$push11=, $pop3, $pop4
	tee_local	$push10=, $0=, $pop11
	i32.store	__stack_pointer($pop5), $pop10
	i32.const	$push0=, 20000000
	i32.call	$push1=, _Znaj@FUNCTION, $pop0
	i32.const	$push9=, 20000000
	call    	ripemd160@FUNCTION, $pop1, $pop9, $0
	i32.const	$push8=, 0
	i32.const	$push6=, 32
	i32.add 	$push7=, $0, $pop6
	i32.store	__stack_pointer($pop8), $pop7
	.endfunc
.Lfunc_end147:
	.size	_ZN14test_checktime27checktime_ripemd160_failureEv, .Lfunc_end147-_ZN14test_checktime27checktime_ripemd160_failureEv

	.hidden	_ZN14test_checktime34checktime_assert_ripemd160_failureEv
	.globl	_ZN14test_checktime34checktime_assert_ripemd160_failureEv
	.type	_ZN14test_checktime34checktime_assert_ripemd160_failureEv,@function
_ZN14test_checktime34checktime_assert_ripemd160_failureEv:
	.local  	i32
	i32.const	$push5=, 0
	i32.const	$push2=, 0
	i32.load	$push3=, __stack_pointer($pop2)
	i32.const	$push4=, 32
	i32.sub 	$push11=, $pop3, $pop4
	tee_local	$push10=, $0=, $pop11
	i32.store	__stack_pointer($pop5), $pop10
	i32.const	$push0=, 20000000
	i32.call	$push1=, _Znaj@FUNCTION, $pop0
	i32.const	$push9=, 20000000
	call    	assert_ripemd160@FUNCTION, $pop1, $pop9, $0
	i32.const	$push8=, 0
	i32.const	$push6=, 32
	i32.add 	$push7=, $0, $pop6
	i32.store	__stack_pointer($pop8), $pop7
	.endfunc
.Lfunc_end148:
	.size	_ZN14test_checktime34checktime_assert_ripemd160_failureEv, .Lfunc_end148-_ZN14test_checktime34checktime_assert_ripemd160_failureEv

	.hidden	_ZN15test_permission19check_authorizationEyyy
	.globl	_ZN15test_permission19check_authorizationEyyy
	.type	_ZN15test_permission19check_authorizationEyyy,@function
_ZN15test_permission19check_authorizationEyyy:
	.param  	i64, i64, i64
	.local  	i32, i32, i32, i32, i32, i64, i32
	i32.const	$push27=, 0
	i32.const	$push24=, 0
	i32.load	$push25=, __stack_pointer($pop24)
	i32.const	$push26=, 64
	i32.sub 	$push48=, $pop25, $pop26
	tee_local	$push47=, $9=, $pop48
	i32.store	__stack_pointer($pop27), $pop47
	i32.const	$push31=, 16
	i32.add 	$push32=, $9, $pop31
	call    	_ZN5eosio18unpack_action_dataI14check_auth_msgEET_v@FUNCTION, $pop32
	i32.const	$push0=, 0
	i32.store	8($9), $pop0
	i64.const	$push46=, 0
	i64.store	0($9), $pop46
	i32.const	$7=, 34
	i32.const	$push1=, 36
	i32.add 	$push2=, $9, $pop1
	i32.load	$push45=, 0($pop2)
	tee_local	$push44=, $4=, $pop45
	i32.load	$push43=, 32($9)
	tee_local	$push42=, $5=, $pop43
	i32.sub 	$push41=, $pop44, $pop42
	tee_local	$push40=, $6=, $pop41
	i32.const	$push39=, 34
	i32.div_s	$push3=, $pop40, $pop39
	i64.extend_u/i32	$8=, $pop3
	i32.const	$push4=, 32
	i32.add 	$3=, $9, $pop4
.LBB149_1:
	loop    	
	i32.const	$push53=, 1
	i32.add 	$7=, $7, $pop53
	i64.const	$push52=, 7
	i64.shr_u	$push51=, $8, $pop52
	tee_local	$push50=, $8=, $pop51
	i64.const	$push49=, 0
	i64.ne  	$push5=, $pop50, $pop49
	br_if   	0, $pop5
	end_loop
	block   	
	block   	
	block   	
	i32.eq  	$push6=, $5, $4
	br_if   	0, $pop6
	i32.const	$push58=, -34
	i32.add 	$push57=, $6, $pop58
	tee_local	$push56=, $4=, $pop57
	i32.const	$push7=, 34
	i32.rem_u	$push8=, $4, $pop7
	i32.sub 	$push9=, $pop56, $pop8
	i32.add 	$push55=, $pop9, $7
	tee_local	$push54=, $7=, $pop55
	br_if   	1, $pop54
	i32.const	$4=, 0
	i32.const	$7=, 0
	br      	2
.LBB149_5:
	end_block
	i32.const	$push59=, -34
	i32.add 	$7=, $7, $pop59
.LBB149_6:
	end_block
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $9, $7
	i32.load	$4=, 4($9)
	i32.load	$7=, 0($9)
.LBB149_7:
	end_block
	i32.store	52($9), $7
	i32.store	48($9), $7
	i32.store	56($9), $4
	i32.const	$push33=, 48
	i32.add 	$push34=, $9, $pop33
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEE10public_keyEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE@FUNCTION, $pop34, $3
	i64.load	$push13=, 16($9)
	i64.load	$push12=, 24($9)
	i32.load	$push65=, 0($9)
	tee_local	$push64=, $7=, $pop65
	i32.load	$push10=, 4($9)
	i32.sub 	$push11=, $pop10, $7
	i32.const	$push15=, 0
	i32.const	$push63=, 0
	i64.const	$push14=, 9223372036854775807
	i32.call	$push16=, check_permission_authorization@FUNCTION, $pop13, $pop12, $pop64, $pop11, $pop15, $pop63, $pop14
	i64.extend_s/i32	$push17=, $pop16
	i64.store	48($9), $pop17
	block   	
	block   	
	block   	
	i64.const	$push62=, 1
	i32.call	$push61=, db_lowerbound_i64@FUNCTION, $0, $0, $0, $pop62
	tee_local	$push60=, $7=, $pop61
	i32.const	$push18=, -1
	i32.eq  	$push19=, $pop60, $pop18
	br_if   	0, $pop19
	i32.const	$push37=, 48
	i32.add 	$push38=, $9, $pop37
	i32.const	$push20=, 8
	call    	db_update_i64@FUNCTION, $7, $0, $pop38, $pop20
	i32.load	$push67=, 0($9)
	tee_local	$push66=, $7=, $pop67
	br_if   	1, $pop66
	br      	2
.LBB149_9:
	end_block
	i64.const	$push70=, 1
	i32.const	$push35=, 48
	i32.add 	$push36=, $9, $pop35
	i32.const	$push21=, 8
	i32.call	$drop=, db_store_i64@FUNCTION, $0, $0, $0, $pop70, $pop36, $pop21
	i32.load	$push69=, 0($9)
	tee_local	$push68=, $7=, $pop69
	i32.eqz 	$push73=, $pop68
	br_if   	1, $pop73
.LBB149_10:
	end_block
	i32.store	4($9), $7
	call    	_ZdlPv@FUNCTION, $7
.LBB149_11:
	end_block
	block   	
	i32.load	$push72=, 32($9)
	tee_local	$push71=, $7=, $pop72
	i32.eqz 	$push74=, $pop71
	br_if   	0, $pop74
	i32.const	$push22=, 36
	i32.add 	$push23=, $9, $pop22
	i32.store	0($pop23), $7
	call    	_ZdlPv@FUNCTION, $7
.LBB149_13:
	end_block
	i32.const	$push30=, 0
	i32.const	$push28=, 64
	i32.add 	$push29=, $9, $pop28
	i32.store	__stack_pointer($pop30), $pop29
	.endfunc
.Lfunc_end149:
	.size	_ZN15test_permission19check_authorizationEyyy, .Lfunc_end149-_ZN15test_permission19check_authorizationEyyy

	.section	.text._ZN5eosio18unpack_action_dataI14check_auth_msgEET_v,"axG",@progbits,_ZN5eosio18unpack_action_dataI14check_auth_msgEET_v,comdat
	.hidden	_ZN5eosio18unpack_action_dataI14check_auth_msgEET_v
	.weak	_ZN5eosio18unpack_action_dataI14check_auth_msgEET_v
	.type	_ZN5eosio18unpack_action_dataI14check_auth_msgEET_v,@function
_ZN5eosio18unpack_action_dataI14check_auth_msgEET_v:
	.param  	i32
	.local  	i32, i32, i32, i32
	i32.const	$push21=, 0
	i32.load	$push22=, __stack_pointer($pop21)
	i32.const	$push23=, 16
	i32.sub 	$push32=, $pop22, $pop23
	tee_local	$push31=, $3=, $pop32
	copy_local	$4=, $pop31
	i32.const	$push24=, 0
	i32.store	__stack_pointer($pop24), $3
	block   	
	block   	
	i32.call	$push30=, action_data_size@FUNCTION
	tee_local	$push29=, $1=, $pop30
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $pop29, $pop0
	br_if   	0, $pop1
	i32.call	$3=, malloc@FUNCTION, $1
	br      	1
.LBB150_2:
	end_block
	i32.const	$push20=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push34=, $3, $pop5
	tee_local	$push33=, $3=, $pop34
	copy_local	$push28=, $pop33
	i32.store	__stack_pointer($pop20), $pop28
.LBB150_3:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $3, $1
	i32.const	$push6=, 24
	i32.add 	$push7=, $0, $pop6
	i32.const	$push8=, 0
	i32.store	0($pop7), $pop8
	i64.const	$push9=, 0
	i64.store	16($0):p2align=2, $pop9
	i32.store	0($4), $3
	i32.add 	$push44=, $3, $1
	tee_local	$push43=, $2=, $pop44
	i32.store	8($4), $pop43
	i32.const	$push10=, 7
	i32.gt_u	$push11=, $1, $pop10
	i32.const	$push12=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop11, $pop12
	i32.const	$push13=, 8
	i32.call	$drop=, memcpy@FUNCTION, $0, $3, $pop13
	i32.const	$push42=, 8
	i32.add 	$push41=, $3, $pop42
	tee_local	$push40=, $1=, $pop41
	i32.sub 	$push14=, $2, $pop40
	i32.const	$push39=, 7
	i32.gt_u	$push15=, $pop14, $pop39
	i32.const	$push38=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop15, $pop38
	i32.const	$push37=, 8
	i32.add 	$push16=, $0, $pop37
	i32.const	$push36=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop16, $1, $pop36
	i32.const	$push17=, 16
	i32.add 	$push18=, $3, $pop17
	i32.store	4($4), $pop18
	i32.const	$push35=, 16
	i32.add 	$push19=, $0, $pop35
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEE10public_keyEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE@FUNCTION, $4, $pop19
	i32.const	$push27=, 0
	i32.const	$push25=, 16
	i32.add 	$push26=, $4, $pop25
	i32.store	__stack_pointer($pop27), $pop26
	.endfunc
.Lfunc_end150:
	.size	_ZN5eosio18unpack_action_dataI14check_auth_msgEET_v, .Lfunc_end150-_ZN5eosio18unpack_action_dataI14check_auth_msgEET_v

	.section	.text._ZN5eosiolsINS_10datastreamIPcEE10public_keyEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEE10public_keyEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEE10public_keyEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEE10public_keyEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEE10public_keyEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,@function
_ZN5eosiolsINS_10datastreamIPcEE10public_keyEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i64, i32, i32
	i32.const	$push27=, 0
	i32.const	$push24=, 0
	i32.load	$push25=, __stack_pointer($pop24)
	i32.const	$push26=, 80
	i32.sub 	$push42=, $pop25, $pop26
	tee_local	$push41=, $8=, $pop42
	i32.store	__stack_pointer($pop27), $pop41
	i32.load	$push1=, 4($1)
	i32.load	$push0=, 0($1)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 34
	i32.div_s	$push4=, $pop2, $pop3
	i64.extend_u/i32	$6=, $pop4
	i32.load	$7=, 4($0)
	i32.const	$push8=, 8
	i32.add 	$4=, $0, $pop8
	i32.const	$push12=, 4
	i32.add 	$5=, $0, $pop12
.LBB151_1:
	loop    	
	i32.wrap/i64	$2=, $6
	i64.const	$push56=, 7
	i64.shr_u	$push55=, $6, $pop56
	tee_local	$push54=, $6=, $pop55
	i64.const	$push53=, 0
	i64.ne  	$push52=, $pop54, $pop53
	tee_local	$push51=, $3=, $pop52
	i32.const	$push50=, 7
	i32.shl 	$push6=, $pop51, $pop50
	i32.const	$push49=, 127
	i32.and 	$push5=, $2, $pop49
	i32.or  	$push7=, $pop6, $pop5
	i32.store8	40($8), $pop7
	i32.load	$push9=, 0($4)
	i32.sub 	$push10=, $pop9, $7
	i32.const	$push48=, 0
	i32.gt_s	$push11=, $pop10, $pop48
	i32.const	$push47=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop11, $pop47
	i32.load	$push13=, 0($5)
	i32.const	$push31=, 40
	i32.add 	$push32=, $8, $pop31
	i32.const	$push46=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop32, $pop46
	i32.load	$push14=, 0($5)
	i32.const	$push45=, 1
	i32.add 	$push44=, $pop14, $pop45
	tee_local	$push43=, $7=, $pop44
	i32.store	0($5), $pop43
	br_if   	0, $3
	end_loop
	block   	
	i32.load	$push61=, 0($1)
	tee_local	$push60=, $5=, $pop61
	i32.const	$push59=, 4
	i32.add 	$push15=, $1, $pop59
	i32.load	$push58=, 0($pop15)
	tee_local	$push57=, $3=, $pop58
	i32.eq  	$push16=, $pop60, $pop57
	br_if   	0, $pop16
	i32.const	$push17=, 8
	i32.add 	$4=, $0, $pop17
	i32.const	$push62=, 4
	i32.add 	$2=, $0, $pop62
.LBB151_4:
	loop    	
	i32.const	$push33=, 6
	i32.add 	$push34=, $8, $pop33
	i32.const	$push73=, 34
	i32.call	$drop=, memcpy@FUNCTION, $pop34, $5, $pop73
	i32.const	$push35=, 40
	i32.add 	$push36=, $8, $pop35
	i32.const	$push37=, 6
	i32.add 	$push38=, $8, $pop37
	i32.const	$push72=, 34
	i32.call	$drop=, memcpy@FUNCTION, $pop36, $pop38, $pop72
	i32.load	$push18=, 0($4)
	i32.sub 	$push19=, $pop18, $7
	i32.const	$push71=, 33
	i32.gt_s	$push20=, $pop19, $pop71
	i32.const	$push70=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop20, $pop70
	i32.load	$push21=, 0($2)
	i32.const	$push39=, 40
	i32.add 	$push40=, $8, $pop39
	i32.const	$push69=, 34
	i32.call	$drop=, memcpy@FUNCTION, $pop21, $pop40, $pop69
	i32.load	$push22=, 0($2)
	i32.const	$push68=, 34
	i32.add 	$push67=, $pop22, $pop68
	tee_local	$push66=, $7=, $pop67
	i32.store	0($2), $pop66
	i32.const	$push65=, 34
	i32.add 	$push64=, $5, $pop65
	tee_local	$push63=, $5=, $pop64
	i32.ne  	$push23=, $3, $pop63
	br_if   	0, $pop23
.LBB151_5:
	end_loop
	end_block
	i32.const	$push30=, 0
	i32.const	$push28=, 80
	i32.add 	$push29=, $8, $pop28
	i32.store	__stack_pointer($pop30), $pop29
	copy_local	$push74=, $0
	.endfunc
.Lfunc_end151:
	.size	_ZN5eosiolsINS_10datastreamIPcEE10public_keyEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE, .Lfunc_end151-_ZN5eosiolsINS_10datastreamIPcEE10public_keyEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEE10public_keyEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEE10public_keyEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEE10public_keyEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEE10public_keyEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE
	.type	_ZN5eosiorsINS_10datastreamIPKcEE10public_keyEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE,@function
_ZN5eosiorsINS_10datastreamIPKcEE10public_keyEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i64, i32
	i32.load	$5=, 4($0)
	i32.const	$7=, 0
	i64.const	$6=, 0
	i32.const	$push0=, 8
	i32.add 	$2=, $0, $pop0
	i32.const	$push3=, 4
	i32.add 	$3=, $0, $pop3
.LBB152_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $5, $pop1
	i32.const	$push40=, .L.str.424
	call    	eosio_assert@FUNCTION, $pop2, $pop40
	i32.load	$push39=, 0($3)
	tee_local	$push38=, $5=, $pop39
	i32.load8_u	$4=, 0($pop38)
	i32.const	$push37=, 1
	i32.add 	$push36=, $5, $pop37
	tee_local	$push35=, $5=, $pop36
	i32.store	0($3), $pop35
	i32.const	$push34=, 127
	i32.and 	$push4=, $4, $pop34
	i32.const	$push33=, 255
	i32.and 	$push32=, $7, $pop33
	tee_local	$push31=, $7=, $pop32
	i32.shl 	$push5=, $pop4, $pop31
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$6=, $pop6, $6
	i32.const	$push30=, 7
	i32.add 	$7=, $7, $pop30
	i32.const	$push29=, 7
	i32.shr_u	$push7=, $4, $pop29
	br_if   	0, $pop7
	end_loop
	block   	
	block   	
	block   	
	i32.wrap/i64	$push48=, $6
	tee_local	$push47=, $5=, $pop48
	i32.load	$push46=, 4($1)
	tee_local	$push45=, $3=, $pop46
	i32.load	$push44=, 0($1)
	tee_local	$push43=, $4=, $pop44
	i32.sub 	$push8=, $pop45, $pop43
	i32.const	$push9=, 34
	i32.div_s	$push42=, $pop8, $pop9
	tee_local	$push41=, $7=, $pop42
	i32.le_u	$push10=, $pop47, $pop41
	br_if   	0, $pop10
	i32.sub 	$push16=, $5, $7
	call    	_ZNSt3__16vectorI10public_keyNS_9allocatorIS1_EEE8__appendEj@FUNCTION, $1, $pop16
	i32.load	$push52=, 0($1)
	tee_local	$push51=, $4=, $pop52
	i32.const	$push17=, 4
	i32.add 	$push18=, $1, $pop17
	i32.load	$push50=, 0($pop18)
	tee_local	$push49=, $3=, $pop50
	i32.ne  	$push19=, $pop51, $pop49
	br_if   	1, $pop19
	br      	2
.LBB152_4:
	end_block
	block   	
	i32.ge_u	$push11=, $5, $7
	br_if   	0, $pop11
	i32.const	$push12=, 4
	i32.add 	$push13=, $1, $pop12
	i32.const	$push14=, 34
	i32.mul 	$push15=, $5, $pop14
	i32.add 	$push54=, $4, $pop15
	tee_local	$push53=, $3=, $pop54
	i32.store	0($pop13), $pop53
.LBB152_6:
	end_block
	i32.eq  	$push20=, $4, $3
	br_if   	1, $pop20
.LBB152_7:
	end_block
	i32.const	$push21=, 4
	i32.add 	$push56=, $0, $pop21
	tee_local	$push55=, $5=, $pop56
	i32.load	$7=, 0($pop55)
	i32.const	$push22=, 8
	i32.add 	$2=, $0, $pop22
.LBB152_8:
	loop    	
	i32.load	$push23=, 0($2)
	i32.sub 	$push24=, $pop23, $7
	i32.const	$push65=, 33
	i32.gt_u	$push25=, $pop24, $pop65
	i32.const	$push64=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop25, $pop64
	i32.load	$push26=, 0($5)
	i32.const	$push63=, 34
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop26, $pop63
	i32.load	$push27=, 0($5)
	i32.const	$push62=, 34
	i32.add 	$push61=, $pop27, $pop62
	tee_local	$push60=, $7=, $pop61
	i32.store	0($5), $pop60
	i32.const	$push59=, 34
	i32.add 	$push58=, $4, $pop59
	tee_local	$push57=, $4=, $pop58
	i32.ne  	$push28=, $3, $pop57
	br_if   	0, $pop28
.LBB152_9:
	end_loop
	end_block
	copy_local	$push66=, $0
	.endfunc
.Lfunc_end152:
	.size	_ZN5eosiorsINS_10datastreamIPKcEE10public_keyEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE, .Lfunc_end152-_ZN5eosiorsINS_10datastreamIPKcEE10public_keyEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE

	.section	.text._ZNSt3__16vectorI10public_keyNS_9allocatorIS1_EEE8__appendEj,"axG",@progbits,_ZNSt3__16vectorI10public_keyNS_9allocatorIS1_EEE8__appendEj,comdat
	.hidden	_ZNSt3__16vectorI10public_keyNS_9allocatorIS1_EEE8__appendEj
	.weak	_ZNSt3__16vectorI10public_keyNS_9allocatorIS1_EEE8__appendEj
	.type	_ZNSt3__16vectorI10public_keyNS_9allocatorIS1_EEE8__appendEj,@function
_ZNSt3__16vectorI10public_keyNS_9allocatorIS1_EEE8__appendEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push31=, 8($0)
	tee_local	$push30=, $2=, $pop31
	i32.load	$push29=, 4($0)
	tee_local	$push28=, $6=, $pop29
	i32.sub 	$push1=, $pop30, $pop28
	i32.const	$push27=, 34
	i32.div_s	$push2=, $pop1, $pop27
	i32.ge_u	$push3=, $pop2, $1
	br_if   	0, $pop3
	i32.load	$push38=, 0($0)
	tee_local	$push37=, $5=, $pop38
	i32.sub 	$push6=, $6, $pop37
	i32.const	$push36=, 34
	i32.div_s	$push35=, $pop6, $pop36
	tee_local	$push34=, $3=, $pop35
	i32.add 	$push33=, $pop34, $1
	tee_local	$push32=, $4=, $pop33
	i32.const	$push7=, 126322568
	i32.ge_u	$push8=, $pop32, $pop7
	br_if   	2, $pop8
	i32.const	$6=, 126322567
	block   	
	i32.sub 	$push9=, $2, $5
	i32.const	$push41=, 34
	i32.div_s	$push40=, $pop9, $pop41
	tee_local	$push39=, $2=, $pop40
	i32.const	$push10=, 63161282
	i32.gt_u	$push11=, $pop39, $pop10
	br_if   	0, $pop11
	i32.const	$push12=, 1
	i32.shl 	$push45=, $2, $pop12
	tee_local	$push44=, $6=, $pop45
	i32.lt_u	$push13=, $6, $4
	i32.select	$push43=, $4, $pop44, $pop13
	tee_local	$push42=, $6=, $pop43
	i32.eqz 	$push71=, $pop42
	br_if   	2, $pop71
.LBB153_4:
	end_block
	i32.const	$push46=, 34
	i32.mul 	$push14=, $6, $pop46
	i32.call	$2=, _Znwj@FUNCTION, $pop14
	br      	3
.LBB153_5:
	end_block
	i32.const	$push4=, 4
	i32.add 	$0=, $0, $pop4
.LBB153_6:
	loop    	
	i32.const	$push70=, 0
	i32.const	$push69=, 34
	i32.call	$drop=, memset@FUNCTION, $6, $pop70, $pop69
	i32.load	$push5=, 0($0)
	i32.const	$push68=, 34
	i32.add 	$push67=, $pop5, $pop68
	tee_local	$push66=, $6=, $pop67
	i32.store	0($0), $pop66
	i32.const	$push65=, -1
	i32.add 	$push64=, $1, $pop65
	tee_local	$push63=, $1=, $pop64
	br_if   	0, $pop63
	br      	4
.LBB153_7:
	end_loop
	end_block
	i32.const	$6=, 0
	i32.const	$2=, 0
	br      	1
.LBB153_8:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB153_9:
	end_block
	i32.const	$push50=, 34
	i32.mul 	$push15=, $6, $pop50
	i32.add 	$4=, $2, $pop15
	i32.const	$push49=, 34
	i32.mul 	$push16=, $3, $pop49
	i32.add 	$push48=, $2, $pop16
	tee_local	$push47=, $5=, $pop48
	copy_local	$6=, $pop47
.LBB153_10:
	loop    	
	i32.const	$push56=, 0
	i32.const	$push55=, 34
	i32.call	$push0=, memset@FUNCTION, $6, $pop56, $pop55
	i32.const	$push54=, 34
	i32.add 	$6=, $pop0, $pop54
	i32.const	$push53=, -1
	i32.add 	$push52=, $1, $pop53
	tee_local	$push51=, $1=, $pop52
	br_if   	0, $pop51
	end_loop
	i32.const	$push17=, 4
	i32.add 	$push62=, $0, $pop17
	tee_local	$push61=, $3=, $pop62
	i32.load	$push18=, 0($pop61)
	i32.load	$push60=, 0($0)
	tee_local	$push59=, $1=, $pop60
	i32.sub 	$push58=, $pop18, $pop59
	tee_local	$push57=, $2=, $pop58
	i32.const	$push19=, -34
	i32.div_s	$push20=, $pop57, $pop19
	i32.const	$push21=, 34
	i32.mul 	$push22=, $pop20, $pop21
	i32.add 	$5=, $5, $pop22
	block   	
	i32.const	$push23=, 1
	i32.lt_s	$push24=, $2, $pop23
	br_if   	0, $pop24
	i32.call	$drop=, memcpy@FUNCTION, $5, $1, $2
	i32.load	$1=, 0($0)
.LBB153_13:
	end_block
	i32.store	0($0), $5
	i32.store	0($3), $6
	i32.const	$push25=, 8
	i32.add 	$push26=, $0, $pop25
	i32.store	0($pop26), $4
	i32.eqz 	$push72=, $1
	br_if   	0, $pop72
	call    	_ZdlPv@FUNCTION, $1
	return
.LBB153_15:
	end_block
	.endfunc
.Lfunc_end153:
	.size	_ZNSt3__16vectorI10public_keyNS_9allocatorIS1_EEE8__appendEj, .Lfunc_end153-_ZNSt3__16vectorI10public_keyNS_9allocatorIS1_EEE8__appendEj

	.text
	.hidden	_ZN15test_permission25test_permission_last_usedEyyy
	.globl	_ZN15test_permission25test_permission_last_usedEyyy
	.type	_ZN15test_permission25test_permission_last_usedEyyy,@function
_ZN15test_permission25test_permission_last_usedEyyy:
	.param  	i64, i64, i64
	.local  	i32
	i32.const	$push9=, 0
	i32.const	$push6=, 0
	i32.load	$push7=, __stack_pointer($pop6)
	i32.const	$push8=, 32
	i32.sub 	$push16=, $pop7, $pop8
	tee_local	$push15=, $3=, $pop16
	i32.store	__stack_pointer($pop9), $pop15
	i32.const	$push13=, 8
	i32.add 	$push14=, $3, $pop13
	call    	_ZN5eosio18unpack_action_dataI29test_permission_last_used_msgEET_v@FUNCTION, $pop14
	i64.load	$push1=, 8($3)
	i64.load	$push0=, 16($3)
	i64.call	$push2=, get_permission_last_used@FUNCTION, $pop1, $pop0
	i64.load	$push3=, 24($3)
	i64.eq  	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.275
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.const	$push12=, 0
	i32.const	$push10=, 32
	i32.add 	$push11=, $3, $pop10
	i32.store	__stack_pointer($pop12), $pop11
	.endfunc
.Lfunc_end154:
	.size	_ZN15test_permission25test_permission_last_usedEyyy, .Lfunc_end154-_ZN15test_permission25test_permission_last_usedEyyy

	.section	.text._ZN5eosio18unpack_action_dataI29test_permission_last_used_msgEET_v,"axG",@progbits,_ZN5eosio18unpack_action_dataI29test_permission_last_used_msgEET_v,comdat
	.hidden	_ZN5eosio18unpack_action_dataI29test_permission_last_used_msgEET_v
	.weak	_ZN5eosio18unpack_action_dataI29test_permission_last_used_msgEET_v
	.type	_ZN5eosio18unpack_action_dataI29test_permission_last_used_msgEET_v,@function
_ZN5eosio18unpack_action_dataI29test_permission_last_used_msgEET_v:
	.param  	i32
	.local  	i32, i32, i32
	i32.const	$push19=, 0
	i32.load	$push25=, __stack_pointer($pop19)
	tee_local	$push24=, $2=, $pop25
	copy_local	$3=, $pop24
	block   	
	block   	
	i32.call	$push23=, action_data_size@FUNCTION
	tee_local	$push22=, $1=, $pop23
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $pop22, $pop0
	br_if   	0, $pop1
	i32.call	$2=, malloc@FUNCTION, $1
	br      	1
.LBB155_2:
	end_block
	i32.const	$push18=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push27=, $2, $pop5
	tee_local	$push26=, $2=, $pop27
	copy_local	$push21=, $pop26
	i32.store	__stack_pointer($pop18), $pop21
.LBB155_3:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $2, $1
	i32.const	$push6=, 7
	i32.gt_u	$push7=, $1, $pop6
	i32.const	$push8=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop7, $pop8
	i32.const	$push9=, 8
	i32.call	$drop=, memcpy@FUNCTION, $0, $2, $pop9
	i32.const	$push10=, -8
	i32.and 	$push38=, $1, $pop10
	tee_local	$push37=, $1=, $pop38
	i32.const	$push36=, 8
	i32.ne  	$push11=, $pop37, $pop36
	i32.const	$push35=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop11, $pop35
	i32.const	$push34=, 8
	i32.add 	$push13=, $0, $pop34
	i32.const	$push33=, 8
	i32.add 	$push12=, $2, $pop33
	i32.const	$push32=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop12, $pop32
	i32.const	$push14=, 16
	i32.ne  	$push15=, $1, $pop14
	i32.const	$push31=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop15, $pop31
	i32.const	$push30=, 16
	i32.add 	$push17=, $0, $pop30
	i32.const	$push29=, 16
	i32.add 	$push16=, $2, $pop29
	i32.const	$push28=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop17, $pop16, $pop28
	i32.const	$push20=, 0
	i32.store	__stack_pointer($pop20), $3
	.endfunc
.Lfunc_end155:
	.size	_ZN5eosio18unpack_action_dataI29test_permission_last_used_msgEET_v, .Lfunc_end155-_ZN5eosio18unpack_action_dataI29test_permission_last_used_msgEET_v

	.text
	.hidden	_ZN15test_permission26test_account_creation_timeEyyy
	.globl	_ZN15test_permission26test_account_creation_timeEyyy
	.type	_ZN15test_permission26test_account_creation_timeEyyy,@function
_ZN15test_permission26test_account_creation_timeEyyy:
	.param  	i64, i64, i64
	.local  	i32
	i32.const	$push8=, 0
	i32.const	$push5=, 0
	i32.load	$push6=, __stack_pointer($pop5)
	i32.const	$push7=, 32
	i32.sub 	$push15=, $pop6, $pop7
	tee_local	$push14=, $3=, $pop15
	i32.store	__stack_pointer($pop8), $pop14
	i32.const	$push12=, 8
	i32.add 	$push13=, $3, $pop12
	call    	_ZN5eosio18unpack_action_dataI29test_permission_last_used_msgEET_v@FUNCTION, $pop13
	i64.load	$push0=, 8($3)
	i64.call	$push1=, get_account_creation_time@FUNCTION, $pop0
	i64.load	$push2=, 24($3)
	i64.eq  	$push3=, $pop1, $pop2
	i32.const	$push4=, .L.str.276
	call    	eosio_assert@FUNCTION, $pop3, $pop4
	i32.const	$push11=, 0
	i32.const	$push9=, 32
	i32.add 	$push10=, $3, $pop9
	i32.store	__stack_pointer($pop11), $pop10
	.endfunc
.Lfunc_end156:
	.size	_ZN15test_permission26test_account_creation_timeEyyy, .Lfunc_end156-_ZN15test_permission26test_account_creation_timeEyyy

	.hidden	_ZN15test_datastream10test_basicEv
	.globl	_ZN15test_datastream10test_basicEv
	.type	_ZN15test_datastream10test_basicEv,@function
_ZN15test_datastream10test_basicEv:
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	i32.const	$push283=, 0
	i32.const	$push280=, 0
	i32.load	$push281=, __stack_pointer($pop280)
	i32.const	$push282=, 160
	i32.sub 	$push537=, $pop281, $pop282
	tee_local	$push536=, $8=, $pop537
	i32.store	__stack_pointer($pop283), $pop536
	i32.const	$push535=, 1
	i32.store8	144($8), $pop535
	i32.const	$push534=, 1
	i32.const	$push533=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop534, $pop533
	i32.const	$push287=, 16
	i32.add 	$push288=, $8, $pop287
	i32.const	$push289=, 144
	i32.add 	$push290=, $8, $pop289
	i32.const	$push532=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop288, $pop290, $pop532
	i32.const	$push531=, 1
	i32.const	$push530=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop531, $pop530
	i32.const	$push291=, 144
	i32.add 	$push292=, $8, $pop291
	i32.const	$push293=, 16
	i32.add 	$push294=, $8, $pop293
	i32.const	$push529=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop292, $pop294, $pop529
	i32.load8_u	$push0=, 144($8)
	i32.const	$push528=, 0
	i32.ne  	$push1=, $pop0, $pop528
	i32.const	$push2=, .L.str.277
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i32.const	$push527=, 0
	i32.store8	144($8), $pop527
	i32.const	$push526=, 1
	i32.const	$push525=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop526, $pop525
	i32.const	$push295=, 16
	i32.add 	$push296=, $8, $pop295
	i32.const	$push297=, 144
	i32.add 	$push298=, $8, $pop297
	i32.const	$push524=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop296, $pop298, $pop524
	i32.const	$push523=, 1
	i32.const	$push522=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop523, $pop522
	i32.const	$push299=, 144
	i32.add 	$push300=, $8, $pop299
	i32.const	$push301=, 16
	i32.add 	$push302=, $8, $pop301
	i32.const	$push521=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop300, $pop302, $pop521
	i32.load8_u	$push3=, 144($8)
	i32.eqz 	$push4=, $pop3
	i32.const	$push520=, .L.str.277
	call    	eosio_assert@FUNCTION, $pop4, $pop520
	i32.const	$push5=, 133
	i32.store8	8($8), $pop5
	i32.const	$push519=, 1
	i32.const	$push518=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop519, $pop518
	i32.const	$push303=, 16
	i32.add 	$push304=, $8, $pop303
	i32.const	$push305=, 8
	i32.add 	$push306=, $8, $pop305
	i32.const	$push517=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop304, $pop306, $pop517
	i32.const	$push516=, 1
	i32.const	$push515=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop516, $pop515
	i32.const	$push307=, 144
	i32.add 	$push308=, $8, $pop307
	i32.const	$push309=, 16
	i32.add 	$push310=, $8, $pop309
	i32.const	$push514=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop308, $pop310, $pop514
	i32.load8_u	$push7=, 8($8)
	i32.load8_u	$push6=, 144($8)
	i32.eq  	$push8=, $pop7, $pop6
	i32.const	$push9=, .L.str.278
	call    	eosio_assert@FUNCTION, $pop8, $pop9
	i32.const	$push10=, 127
	i32.store8	8($8), $pop10
	i32.const	$push513=, 1
	i32.const	$push512=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop513, $pop512
	i32.const	$push311=, 16
	i32.add 	$push312=, $8, $pop311
	i32.const	$push313=, 8
	i32.add 	$push314=, $8, $pop313
	i32.const	$push511=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop312, $pop314, $pop511
	i32.const	$push510=, 1
	i32.const	$push509=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop510, $pop509
	i32.const	$push315=, 144
	i32.add 	$push316=, $8, $pop315
	i32.const	$push317=, 16
	i32.add 	$push318=, $8, $pop317
	i32.const	$push508=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop316, $pop318, $pop508
	i32.load8_u	$push12=, 8($8)
	i32.load8_u	$push11=, 144($8)
	i32.eq  	$push13=, $pop12, $pop11
	i32.const	$push14=, .L.str.279
	call    	eosio_assert@FUNCTION, $pop13, $pop14
	i32.const	$push15=, 53191
	i32.store16	8($8), $pop15
	i32.const	$push507=, 1
	i32.const	$push506=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop507, $pop506
	i32.const	$push319=, 16
	i32.add 	$push320=, $8, $pop319
	i32.const	$push321=, 8
	i32.add 	$push322=, $8, $pop321
	i32.const	$push16=, 2
	i32.call	$drop=, memcpy@FUNCTION, $pop320, $pop322, $pop16
	i32.const	$push505=, 1
	i32.const	$push504=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop505, $pop504
	i32.const	$push323=, 144
	i32.add 	$push324=, $8, $pop323
	i32.const	$push325=, 16
	i32.add 	$push326=, $8, $pop325
	i32.const	$push503=, 2
	i32.call	$drop=, memcpy@FUNCTION, $pop324, $pop326, $pop503
	i32.load16_u	$push18=, 8($8)
	i32.load16_u	$push17=, 144($8)
	i32.eq  	$push19=, $pop18, $pop17
	i32.const	$push20=, .L.str.280
	call    	eosio_assert@FUNCTION, $pop19, $pop20
	i32.const	$push21=, 12345
	i32.store16	8($8), $pop21
	i32.const	$push502=, 1
	i32.const	$push501=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop502, $pop501
	i32.const	$push327=, 16
	i32.add 	$push328=, $8, $pop327
	i32.const	$push329=, 8
	i32.add 	$push330=, $8, $pop329
	i32.const	$push500=, 2
	i32.call	$drop=, memcpy@FUNCTION, $pop328, $pop330, $pop500
	i32.const	$push499=, 1
	i32.const	$push498=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop499, $pop498
	i32.const	$push331=, 144
	i32.add 	$push332=, $8, $pop331
	i32.const	$push333=, 16
	i32.add 	$push334=, $8, $pop333
	i32.const	$push497=, 2
	i32.call	$drop=, memcpy@FUNCTION, $pop332, $pop334, $pop497
	i32.load16_u	$push23=, 8($8)
	i32.load16_u	$push22=, 144($8)
	i32.eq  	$push24=, $pop23, $pop22
	i32.const	$push25=, .L.str.281
	call    	eosio_assert@FUNCTION, $pop24, $pop25
	i32.const	$push26=, -1234567890
	i32.store	8($8), $pop26
	i32.const	$push496=, 1
	i32.const	$push495=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop496, $pop495
	i32.const	$push335=, 16
	i32.add 	$push336=, $8, $pop335
	i32.const	$push337=, 8
	i32.add 	$push338=, $8, $pop337
	i32.const	$push494=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop336, $pop338, $pop494
	i32.const	$push493=, 1
	i32.const	$push492=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop493, $pop492
	i32.const	$push339=, 144
	i32.add 	$push340=, $8, $pop339
	i32.const	$push341=, 16
	i32.add 	$push342=, $8, $pop341
	i32.const	$push491=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop340, $pop342, $pop491
	i32.load	$push28=, 8($8)
	i32.load	$push27=, 144($8)
	i32.eq  	$push29=, $pop28, $pop27
	i32.const	$push30=, .L.str.282
	call    	eosio_assert@FUNCTION, $pop29, $pop30
	i32.const	$push31=, -1060399406
	i32.store	8($8), $pop31
	i32.const	$push490=, 1
	i32.const	$push489=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop490, $pop489
	i32.const	$push343=, 16
	i32.add 	$push344=, $8, $pop343
	i32.const	$push345=, 8
	i32.add 	$push346=, $8, $pop345
	i32.const	$push488=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop344, $pop346, $pop488
	i32.const	$push487=, 1
	i32.const	$push486=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop487, $pop486
	i32.const	$push347=, 144
	i32.add 	$push348=, $8, $pop347
	i32.const	$push349=, 16
	i32.add 	$push350=, $8, $pop349
	i32.const	$push485=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop348, $pop350, $pop485
	i32.load	$push33=, 8($8)
	i32.load	$push32=, 144($8)
	i32.eq  	$push34=, $pop33, $pop32
	i32.const	$push35=, .L.str.283
	call    	eosio_assert@FUNCTION, $pop34, $pop35
	i64.const	$push36=, -9223372036854775808
	i64.store	8($8), $pop36
	i32.const	$push484=, 1
	i32.const	$push483=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop484, $pop483
	i32.const	$push351=, 16
	i32.add 	$push352=, $8, $pop351
	i32.const	$push353=, 8
	i32.add 	$push354=, $8, $pop353
	i32.const	$push482=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop352, $pop354, $pop482
	i32.const	$push481=, 1
	i32.const	$push480=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop481, $pop480
	i32.const	$push355=, 144
	i32.add 	$push356=, $8, $pop355
	i32.const	$push357=, 16
	i32.add 	$push358=, $8, $pop357
	i32.const	$push479=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop356, $pop358, $pop479
	i64.load	$push38=, 8($8)
	i64.load	$push37=, 144($8)
	i64.eq  	$push39=, $pop38, $pop37
	i32.const	$push40=, .L.str.284
	call    	eosio_assert@FUNCTION, $pop39, $pop40
	i64.const	$push41=, 9223372036854775807
	i64.store	8($8), $pop41
	i32.const	$push478=, 1
	i32.const	$push477=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop478, $pop477
	i32.const	$push359=, 16
	i32.add 	$push360=, $8, $pop359
	i32.const	$push361=, 8
	i32.add 	$push362=, $8, $pop361
	i32.const	$push476=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop360, $pop362, $pop476
	i32.const	$push475=, 1
	i32.const	$push474=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop475, $pop474
	i32.const	$push363=, 144
	i32.add 	$push364=, $8, $pop363
	i32.const	$push365=, 16
	i32.add 	$push366=, $8, $pop365
	i32.const	$push473=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop364, $pop366, $pop473
	i64.load	$push43=, 8($8)
	i64.load	$push42=, 144($8)
	i64.eq  	$push44=, $pop43, $pop42
	i32.const	$push45=, .L.str.285
	call    	eosio_assert@FUNCTION, $pop44, $pop45
	i32.const	$push46=, 1067316150
	i32.store	8($8), $pop46
	i32.const	$push472=, 1
	i32.const	$push471=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop472, $pop471
	i32.const	$push367=, 16
	i32.add 	$push368=, $8, $pop367
	i32.const	$push369=, 8
	i32.add 	$push370=, $8, $pop369
	i32.const	$push470=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop368, $pop370, $pop470
	i32.const	$push469=, 1
	i32.const	$push468=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop469, $pop468
	i32.const	$push371=, 144
	i32.add 	$push372=, $8, $pop371
	i32.const	$push373=, 16
	i32.add 	$push374=, $8, $pop373
	i32.const	$push467=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop372, $pop374, $pop467
	f32.load	$push48=, 8($8)
	f32.load	$push47=, 144($8)
	f32.sub 	$push49=, $pop48, $pop47
	f32.call	$push50=, fabsf@FUNCTION, $pop49
	f32.const	$push51=, 0x1.b7cdfep-34
	f32.lt  	$push52=, $pop50, $pop51
	i32.const	$push53=, .L.str.286
	call    	eosio_assert@FUNCTION, $pop52, $pop53
	i64.const	$push54=, 4599676419421066581
	i64.store	8($8), $pop54
	i32.const	$push466=, 1
	i32.const	$push465=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop466, $pop465
	i32.const	$push375=, 16
	i32.add 	$push376=, $8, $pop375
	i32.const	$push377=, 8
	i32.add 	$push378=, $8, $pop377
	i32.const	$push464=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop376, $pop378, $pop464
	i32.const	$push463=, 1
	i32.const	$push462=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop463, $pop462
	i32.const	$push379=, 144
	i32.add 	$push380=, $8, $pop379
	i32.const	$push381=, 16
	i32.add 	$push382=, $8, $pop381
	i32.const	$push461=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop380, $pop382, $pop461
	f64.load	$push56=, 8($8)
	f64.load	$push55=, 144($8)
	f64.sub 	$push57=, $pop56, $pop55
	f64.call	$push58=, fabs@FUNCTION, $pop57
	f64.const	$push460=, 0x1.79ca10c924223p-67
	f64.lt  	$push59=, $pop58, $pop460
	i32.const	$push60=, .L.str.287
	call    	eosio_assert@FUNCTION, $pop59, $pop60
	i32.const	$push459=, 1
	i32.const	$push458=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop459, $pop458
	i32.const	$push383=, 16
	i32.add 	$push384=, $8, $pop383
	i32.const	$push61=, .L.ref.tmp
	i32.const	$push457=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop384, $pop61, $pop457
	i32.const	$push456=, 1
	i32.const	$push455=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop456, $pop455
	i32.const	$push385=, 16
	i32.add 	$push386=, $8, $pop385
	i32.const	$push454=, 4
	i32.or  	$push453=, $pop386, $pop454
	tee_local	$push452=, $7=, $pop453
	i32.const	$push62=, .L.ref.tmp+8
	i32.const	$push451=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop452, $pop62, $pop451
	i32.const	$push450=, 1
	i32.const	$push449=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop450, $pop449
	i32.const	$push387=, 144
	i32.add 	$push388=, $8, $pop387
	i32.const	$push389=, 16
	i32.add 	$push390=, $8, $pop389
	i32.const	$push448=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop388, $pop390, $pop448
	i32.const	$push447=, 1
	i32.const	$push446=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop447, $pop446
	i32.const	$push391=, 144
	i32.add 	$push392=, $8, $pop391
	i32.const	$push445=, 8
	i32.add 	$push444=, $pop392, $pop445
	tee_local	$push443=, $2=, $pop444
	i32.const	$push442=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop443, $7, $pop442
	i32.const	$6=, 0
	block   	
	i32.load	$push63=, 144($8)
	i32.const	$push441=, 1
	i32.ne  	$push64=, $pop63, $pop441
	br_if   	0, $pop64
	f64.const	$push66=, 0x1.3c0c1fc8f3238p0
	f64.load	$push65=, 0($2)
	f64.sub 	$push67=, $pop66, $pop65
	f64.call	$push68=, fabs@FUNCTION, $pop67
	f64.const	$push538=, 0x1.79ca10c924223p-67
	f64.lt  	$6=, $pop68, $pop538
.LBB157_2:
	end_block
	i32.const	$push69=, .L.str.288
	call    	eosio_assert@FUNCTION, $6, $pop69
	i32.const	$push555=, 1
	i32.const	$push554=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop555, $pop554
	i32.const	$push393=, 16
	i32.add 	$push394=, $8, $pop393
	i32.const	$push70=, .L.ref.tmp.289
	i32.const	$push553=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop394, $pop70, $pop553
	i32.const	$push552=, 1
	i32.const	$push551=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop552, $pop551
	i32.const	$push71=, .L.ref.tmp.289+4
	i32.const	$push550=, 4
	i32.call	$drop=, memcpy@FUNCTION, $7, $pop71, $pop550
	i32.const	$push549=, 1
	i32.const	$push548=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop549, $pop548
	i32.const	$push395=, 144
	i32.add 	$push396=, $8, $pop395
	i32.const	$push397=, 16
	i32.add 	$push398=, $8, $pop397
	i32.const	$push547=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop396, $pop398, $pop547
	i32.const	$push546=, 1
	i32.const	$push545=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop546, $pop545
	i32.const	$push399=, 144
	i32.add 	$push400=, $8, $pop399
	i32.const	$push544=, 4
	i32.or  	$push72=, $pop400, $pop544
	i32.const	$push543=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop72, $7, $pop543
	i32.load	$push77=, 144($8)
	i32.const	$push76=, 10
	i32.eq  	$push78=, $pop77, $pop76
	i32.load	$push74=, 148($8)
	i32.const	$push73=, 20
	i32.eq  	$push75=, $pop74, $pop73
	i32.and 	$push79=, $pop78, $pop75
	i32.const	$push80=, .L.str.290
	call    	eosio_assert@FUNCTION, $pop79, $pop80
	i32.const	$push401=, 16
	i32.add 	$push402=, $8, $pop401
	i32.const	$push542=, 8
	i32.add 	$push81=, $pop402, $pop542
	i32.const	$push541=, 0
	i32.store	0($pop81), $pop541
	i64.const	$push82=, 0
	i64.store	16($8), $pop82
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push83=, .L.str.33
	i32.call	$push540=, strlen@FUNCTION, $pop83
	tee_local	$push539=, $6=, $pop540
	i32.const	$push84=, -16
	i32.ge_u	$push85=, $pop539, $pop84
	br_if   	0, $pop85
	block   	
	block   	
	block   	
	i32.const	$push86=, 11
	i32.ge_u	$push87=, $6, $pop86
	br_if   	0, $pop87
	i32.const	$push93=, 1
	i32.shl 	$push94=, $6, $pop93
	i32.store8	16($8), $pop94
	i32.const	$push405=, 16
	i32.add 	$push406=, $8, $pop405
	i32.const	$push556=, 1
	i32.or  	$2=, $pop406, $pop556
	br_if   	1, $6
	br      	2
.LBB157_5:
	end_block
	i32.const	$push88=, 16
	i32.add 	$push89=, $6, $pop88
	i32.const	$push90=, -16
	i32.and 	$push558=, $pop89, $pop90
	tee_local	$push557=, $3=, $pop558
	i32.call	$2=, _Znwj@FUNCTION, $pop557
	i32.const	$push91=, 1
	i32.or  	$push92=, $3, $pop91
	i32.store	16($8), $pop92
	i32.store	24($8), $2
	i32.store	20($8), $6
.LBB157_6:
	end_block
	i32.const	$push95=, .L.str.33
	i32.call	$drop=, memcpy@FUNCTION, $2, $pop95, $6
.LBB157_7:
	end_block
	i32.add 	$push96=, $2, $6
	i32.const	$push559=, 0
	i32.store8	0($pop96), $pop559
	i32.const	$push407=, 16
	i32.add 	$push408=, $8, $pop407
	i32.const	$push97=, .L.str.291
	call    	_ZN8testtypeINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3runERKS6_PKc@FUNCTION, $pop408, $pop97
	block   	
	i32.load8_u	$push99=, 16($8)
	i32.const	$push98=, 1
	i32.and 	$push100=, $pop99, $pop98
	i32.eqz 	$push661=, $pop100
	br_if   	0, $pop661
	i32.load	$push101=, 24($8)
	call    	_ZdlPv@FUNCTION, $pop101
.LBB157_9:
	end_block
	i32.const	$push568=, 0
	i32.store	24($8), $pop568
	i64.const	$push567=, 0
	i64.store	16($8), $pop567
	i32.const	$push102=, 12
	i32.call	$push566=, _Znwj@FUNCTION, $pop102
	tee_local	$push565=, $6=, $pop566
	i64.const	$push103=, 85899345930
	i64.store	0($pop565):p2align=2, $pop103
	i32.const	$push104=, 30
	i32.store	8($6), $pop104
	i32.store	16($8), $6
	i32.const	$push564=, 12
	i32.add 	$push563=, $6, $pop564
	tee_local	$push562=, $6=, $pop563
	i32.store	24($8), $pop562
	i32.store	20($8), $6
	i32.const	$push409=, 16
	i32.add 	$push410=, $8, $pop409
	i32.const	$push105=, .L.str.293
	call    	_ZN8testtypeINSt3__16vectorIiNS0_9allocatorIiEEEEE3runERKS4_PKc@FUNCTION, $pop410, $pop105
	block   	
	i32.load	$push561=, 16($8)
	tee_local	$push560=, $6=, $pop561
	i32.eqz 	$push662=, $pop560
	br_if   	0, $pop662
	i32.store	20($8), $6
	call    	_ZdlPv@FUNCTION, $6
.LBB157_11:
	end_block
	i32.const	$6=, 0
	i32.const	$push572=, 0
	i32.store	24($8), $pop572
	i64.const	$push571=, 0
	i64.store	16($8), $pop571
	i32.const	$push411=, 16
	i32.add 	$push412=, $8, $pop411
	i32.const	$push106=, .L.str.294
	call    	_ZN8testtypeINSt3__16vectorIiNS0_9allocatorIiEEEEE3runERKS4_PKc@FUNCTION, $pop412, $pop106
	block   	
	i32.load	$push570=, 16($8)
	tee_local	$push569=, $2=, $pop570
	i32.eqz 	$push663=, $pop569
	br_if   	0, $pop663
	i32.store	20($8), $2
	call    	_ZdlPv@FUNCTION, $2
.LBB157_13:
	end_block
	i32.const	$push109=, 1
	i32.const	$push108=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop109, $pop108
	i32.const	$push413=, 16
	i32.add 	$push414=, $8, $pop413
	i32.const	$push110=, .L.ref.tmp.295
	i32.const	$push592=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop414, $pop110, $pop592
	i32.const	$push591=, 1
	i32.const	$push590=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop591, $pop590
	i32.const	$push111=, .L.ref.tmp.295+4
	i32.const	$push589=, 4
	i32.call	$drop=, memcpy@FUNCTION, $7, $pop111, $pop589
	i32.const	$push588=, 1
	i32.const	$push587=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop588, $pop587
	i32.const	$push415=, 16
	i32.add 	$push416=, $8, $pop415
	i32.const	$push586=, 8
	i32.or  	$push585=, $pop416, $pop586
	tee_local	$push584=, $2=, $pop585
	i32.const	$push112=, .L.ref.tmp.295+8
	i32.const	$push583=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop584, $pop112, $pop583
	i32.const	$push582=, 1
	i32.const	$push113=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop582, $pop113
	i32.const	$push417=, 144
	i32.add 	$push418=, $8, $pop417
	i32.const	$push419=, 16
	i32.add 	$push420=, $8, $pop419
	i32.const	$push581=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop418, $pop420, $pop581
	i32.const	$push580=, 1
	i32.const	$push579=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop580, $pop579
	i32.const	$push421=, 144
	i32.add 	$push422=, $8, $pop421
	i32.const	$push578=, 4
	i32.or  	$push114=, $pop422, $pop578
	i32.const	$push577=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop114, $7, $pop577
	i32.const	$push576=, 1
	i32.const	$push575=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop576, $pop575
	i32.const	$push423=, 144
	i32.add 	$push424=, $8, $pop423
	i32.const	$push574=, 8
	i32.add 	$push115=, $pop424, $pop574
	i32.const	$push573=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop115, $2, $pop573
	block   	
	i32.load	$push117=, 144($8)
	i32.const	$push116=, 10
	i32.ne  	$push118=, $pop117, $pop116
	br_if   	0, $pop118
	i32.load	$push107=, 148($8)
	i32.const	$push119=, 20
	i32.ne  	$push120=, $pop107, $pop119
	br_if   	0, $pop120
	i32.const	$push121=, 152
	i32.add 	$push122=, $8, $pop121
	i32.load	$push123=, 0($pop122)
	i32.const	$push124=, 30
	i32.eq  	$6=, $pop123, $pop124
.LBB157_16:
	end_block
	i32.const	$push125=, .L.str.296
	call    	eosio_assert@FUNCTION, $6, $pop125
	i32.const	$push425=, 16
	i32.add 	$push426=, $8, $pop425
	i32.const	$push596=, 8
	i32.add 	$push126=, $pop426, $pop596
	i64.const	$push127=, 0
	i64.store	0($pop126):p2align=2, $pop127
	i64.const	$push128=, 1
	i64.store	16($8), $pop128
	i32.const	$push427=, 16
	i32.add 	$push428=, $8, $pop427
	i32.const	$push595=, 4
	i32.or  	$6=, $pop428, $pop595
	i32.const	$push129=, .L.str.297
	i32.call	$push594=, strlen@FUNCTION, $pop129
	tee_local	$push593=, $7=, $pop594
	i32.const	$push130=, -16
	i32.ge_u	$push131=, $pop593, $pop130
	br_if   	1, $pop131
	block   	
	block   	
	block   	
	i32.const	$push132=, 11
	i32.ge_u	$push133=, $7, $pop132
	br_if   	0, $pop133
	i32.const	$push143=, 1
	i32.shl 	$push144=, $7, $pop143
	i32.store8	20($8), $pop144
	i32.const	$push597=, 1
	i32.add 	$6=, $6, $pop597
	br_if   	1, $7
	br      	2
.LBB157_19:
	end_block
	i32.const	$push137=, 28
	i32.add 	$push138=, $8, $pop137
	i32.const	$push134=, 16
	i32.add 	$push135=, $7, $pop134
	i32.const	$push136=, -16
	i32.and 	$push601=, $pop135, $pop136
	tee_local	$push600=, $2=, $pop601
	i32.call	$push599=, _Znwj@FUNCTION, $pop600
	tee_local	$push598=, $6=, $pop599
	i32.store	0($pop138), $pop598
	i32.const	$push139=, 24
	i32.add 	$push140=, $8, $pop139
	i32.store	0($pop140), $7
	i32.const	$push141=, 1
	i32.or  	$push142=, $2, $pop141
	i32.store	20($8), $pop142
.LBB157_20:
	end_block
	i32.const	$push145=, .L.str.297
	i32.call	$drop=, memcpy@FUNCTION, $6, $pop145, $7
.LBB157_21:
	end_block
	i32.add 	$push146=, $6, $7
	i32.const	$push147=, 0
	i32.store8	0($pop146), $pop147
	i32.const	$push148=, 40
	i32.add 	$push149=, $8, $pop148
	i64.const	$push150=, 0
	i64.store	0($pop149):p2align=2, $pop150
	i64.const	$push151=, 2
	i64.store	32($8), $pop151
	i32.const	$push155=, 36
	i32.add 	$6=, $8, $pop155
	i32.const	$push152=, .L.str.298
	i32.call	$push603=, strlen@FUNCTION, $pop152
	tee_local	$push602=, $7=, $pop603
	i32.const	$push153=, -16
	i32.ge_u	$push154=, $pop602, $pop153
	br_if   	2, $pop154
	block   	
	block   	
	block   	
	i32.const	$push156=, 11
	i32.ge_u	$push157=, $7, $pop156
	br_if   	0, $pop157
	i32.const	$push171=, 36
	i32.add 	$push172=, $8, $pop171
	i32.const	$push169=, 1
	i32.shl 	$push170=, $7, $pop169
	i32.store8	0($pop172), $pop170
	i32.const	$push604=, 1
	i32.add 	$6=, $6, $pop604
	br_if   	1, $7
	br      	2
.LBB157_24:
	end_block
	i32.const	$push158=, 16
	i32.add 	$push159=, $7, $pop158
	i32.const	$push160=, -16
	i32.and 	$push606=, $pop159, $pop160
	tee_local	$push605=, $2=, $pop606
	i32.call	$6=, _Znwj@FUNCTION, $pop605
	i32.const	$push163=, 36
	i32.add 	$push164=, $8, $pop163
	i32.const	$push161=, 1
	i32.or  	$push162=, $2, $pop161
	i32.store	0($pop164), $pop162
	i32.const	$push165=, 44
	i32.add 	$push166=, $8, $pop165
	i32.store	0($pop166), $6
	i32.const	$push167=, 40
	i32.add 	$push168=, $8, $pop167
	i32.store	0($pop168), $7
.LBB157_25:
	end_block
	i32.const	$push173=, .L.str.298
	i32.call	$drop=, memcpy@FUNCTION, $6, $pop173, $7
.LBB157_26:
	end_block
	i32.add 	$push174=, $6, $7
	i32.const	$push175=, 0
	i32.store8	0($pop174), $pop175
	i32.const	$push176=, 56
	i32.add 	$push177=, $8, $pop176
	i64.const	$push178=, 0
	i64.store	0($pop177):p2align=2, $pop178
	i64.const	$push179=, 3
	i64.store	48($8), $pop179
	i32.const	$push183=, 52
	i32.add 	$6=, $8, $pop183
	i32.const	$push180=, .L.str.299
	i32.call	$push608=, strlen@FUNCTION, $pop180
	tee_local	$push607=, $7=, $pop608
	i32.const	$push181=, -16
	i32.ge_u	$push182=, $pop607, $pop181
	br_if   	3, $pop182
	block   	
	block   	
	block   	
	i32.const	$push184=, 11
	i32.ge_u	$push185=, $7, $pop184
	br_if   	0, $pop185
	i32.const	$push199=, 52
	i32.add 	$push200=, $8, $pop199
	i32.const	$push197=, 1
	i32.shl 	$push198=, $7, $pop197
	i32.store8	0($pop200), $pop198
	i32.const	$push609=, 1
	i32.add 	$6=, $6, $pop609
	br_if   	1, $7
	br      	2
.LBB157_29:
	end_block
	i32.const	$push186=, 16
	i32.add 	$push187=, $7, $pop186
	i32.const	$push188=, -16
	i32.and 	$push611=, $pop187, $pop188
	tee_local	$push610=, $2=, $pop611
	i32.call	$6=, _Znwj@FUNCTION, $pop610
	i32.const	$push191=, 52
	i32.add 	$push192=, $8, $pop191
	i32.const	$push189=, 1
	i32.or  	$push190=, $2, $pop189
	i32.store	0($pop192), $pop190
	i32.const	$push193=, 60
	i32.add 	$push194=, $8, $pop193
	i32.store	0($pop194), $6
	i32.const	$push195=, 56
	i32.add 	$push196=, $8, $pop195
	i32.store	0($pop196), $7
.LBB157_30:
	end_block
	i32.const	$push201=, .L.str.299
	i32.call	$drop=, memcpy@FUNCTION, $6, $pop201, $7
.LBB157_31:
	end_block
	i32.const	$2=, 0
	i32.add 	$push202=, $6, $7
	i32.const	$push617=, 0
	i32.store8	0($pop202), $pop617
	i32.const	$push616=, 0
	i32.store	152($8), $pop616
	i32.const	$push615=, 0
	i32.store	148($8), $pop615
	i32.const	$push429=, 144
	i32.add 	$push430=, $8, $pop429
	i32.const	$push614=, 4
	i32.or  	$push613=, $pop430, $pop614
	tee_local	$push612=, $1=, $pop613
	i32.store	144($8), $pop612
	i32.const	$push203=, 64
	i32.add 	$0=, $8, $pop203
	i32.const	$push431=, 16
	i32.add 	$push432=, $8, $pop431
	copy_local	$5=, $pop432
	i32.const	$push220=, 152
	i32.add 	$4=, $8, $pop220
	copy_local	$push278=, $1
	i32.ne  	$push204=, $pop278, $1
	br_if   	5, $pop204
	br      	4
.LBB157_32:
	end_block
	i32.const	$push403=, 16
	i32.add 	$push404=, $8, $pop403
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop404
	unreachable
.LBB157_33:
	end_block
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $6
	unreachable
.LBB157_34:
	end_block
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $6
	unreachable
.LBB157_35:
	end_block
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $6
	unreachable
.LBB157_36:
	end_block
	i32.const	$9=, 21
	br      	1
.LBB157_37:
	end_block
	i32.const	$9=, 3
.LBB157_38:
	end_block
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	br_table 	$9, 17, 21, 0, 1, 2, 6, 9, 12, 14, 16, 18, 19, 20, 15, 11, 13, 10, 7, 8, 4, 5, 3, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 30, 36, 36
.LBB157_39:
	end_block
	i32.load	$2=, 148($8)
	i32.load	$push279=, 144($8)
	i32.eq  	$push205=, $pop279, $1
	br_if   	36, $pop205
	i32.const	$9=, 3
	br      	68
.LBB157_41:
	end_block
	copy_local	$6=, $2
	i32.eqz 	$push664=, $2
	br_if   	50, $pop664
	i32.const	$9=, 4
	br      	67
.LBB157_43:
	end_block
	copy_local	$push621=, $6
	tee_local	$push620=, $7=, $pop621
	i32.load	$push619=, 4($pop620)
	tee_local	$push618=, $6=, $pop619
	br_if   	48, $pop618
	br      	47
.LBB157_44:
	end_block
	copy_local	$7=, $1
	br_if   	56, $2
	br      	55
.LBB157_45:
	end_block
	copy_local	$6=, $1
	i32.const	$9=, 20
	br      	64
.LBB157_47:
	end_block
	i32.load	$push623=, 8($6)
	tee_local	$push622=, $7=, $pop623
	i32.load	$push206=, 0($pop622)
	i32.eq  	$3=, $pop206, $6
	copy_local	$6=, $7
	br_if   	47, $3
	i32.const	$9=, 5
	br      	63
.LBB157_49:
	end_block
	i32.load	$push207=, 16($7)
	i32.load	$push625=, 0($5)
	tee_local	$push624=, $6=, $pop625
	i32.ge_s	$push208=, $pop207, $pop624
	br_if   	47, $pop208
	i32.const	$9=, 17
	br      	62
.LBB157_51:
	end_block
	i32.eqz 	$push665=, $2
	br_if   	30, $pop665
	i32.const	$9=, 18
	br      	61
.LBB157_53:
	end_block
	i32.const	$push628=, 4
	i32.add 	$push627=, $7, $pop628
	tee_local	$push626=, $2=, $pop627
	i32.load	$push212=, 0($pop626)
	br_if   	31, $pop212
	br      	30
.LBB157_54:
	end_block
	copy_local	$3=, $1
	br_if   	31, $2
	i32.const	$9=, 16
	br      	59
.LBB157_56:
	end_block
	copy_local	$7=, $1
	copy_local	$push630=, $1
	tee_local	$push629=, $2=, $pop630
	i32.load	$push211=, 0($pop629)
	br_if   	37, $pop211
	br      	36
.LBB157_57:
	end_block
	copy_local	$2=, $7
	i32.const	$9=, 7
	br      	57
.LBB157_59:
	end_block
	i32.load	$push632=, 16($2)
	tee_local	$push631=, $7=, $pop632
	i32.ge_s	$push209=, $6, $pop631
	br_if   	42, $pop209
	i32.const	$9=, 15
	br      	56
.LBB157_61:
	end_block
	copy_local	$3=, $2
	i32.load	$push634=, 0($2)
	tee_local	$push633=, $7=, $pop634
	br_if   	32, $pop633
	br      	31
.LBB157_62:
	end_block
	i32.ge_s	$push210=, $7, $6
	br_if   	41, $pop210
	i32.const	$9=, 13
	br      	54
.LBB157_64:
	end_block
	i32.const	$push637=, 4
	i32.add 	$3=, $2, $pop637
	i32.load	$push636=, 4($2)
	tee_local	$push635=, $7=, $pop636
	br_if   	41, $pop635
	i32.const	$9=, 9
	br      	53
.LBB157_66:
	end_block
	copy_local	$7=, $2
	copy_local	$push639=, $3
	tee_local	$push638=, $2=, $pop639
	i32.load	$push213=, 0($pop638)
	br_if   	26, $pop213
	br      	25
.LBB157_67:
	end_block
	copy_local	$7=, $2
	i32.load	$push214=, 0($2)
	br_if   	26, $pop214
	i32.const	$9=, 10
	br      	51
.LBB157_69:
	end_block
	i32.const	$push647=, 32
	i32.call	$push646=, _Znwj@FUNCTION, $pop647
	tee_local	$push645=, $6=, $pop646
	i32.load	$push215=, 0($5)
	i32.store	16($pop645), $pop215
	i32.const	$push644=, 20
	i32.add 	$push217=, $6, $pop644
	i32.const	$push643=, 4
	i32.add 	$push216=, $5, $pop643
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop217, $pop216
	i32.store	8($6), $7
	i64.const	$push642=, 0
	i64.store	0($6):p2align=2, $pop642
	i32.store	0($2), $6
	i32.load	$push218=, 144($8)
	i32.load	$push641=, 0($pop218)
	tee_local	$push640=, $7=, $pop641
	i32.eqz 	$push666=, $pop640
	br_if   	39, $pop666
	i32.const	$9=, 11
	br      	50
.LBB157_71:
	end_block
	i32.store	144($8), $7
	i32.load	$6=, 0($2)
	i32.const	$9=, 12
	br      	49
.LBB157_73:
	end_block
	i32.load	$push219=, 148($8)
	call    	_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_@FUNCTION, $pop219, $6
	i32.load	$push221=, 0($4)
	i32.const	$push648=, 1
	i32.add 	$push222=, $pop221, $pop648
	i32.store	0($4), $pop222
	i32.const	$9=, 1
	br      	48
.LBB157_75:
	end_block
	i32.const	$push651=, 16
	i32.add 	$push650=, $5, $pop651
	tee_local	$push649=, $5=, $pop650
	i32.ne  	$push223=, $pop649, $0
	br_if   	27, $pop223
	i32.const	$9=, 22
	br      	47
.LBB157_77:
	end_block
	i32.const	$push433=, 144
	i32.add 	$push434=, $8, $pop433
	i32.const	$push224=, .L.str.300
	call    	_ZN8testtypeINSt3__13mapIiNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_4lessIiEENS5_INS0_4pairIKiS7_EEEEEEE3runERKSE_PKc@FUNCTION, $pop434, $pop224
	i32.const	$push435=, 144
	i32.add 	$push436=, $8, $pop435
	i32.load	$push225=, 148($8)
	call    	_ZNSt3__16__treeINS_12__value_typeIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_19__map_value_compareIiS8_NS_4lessIiEELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE@FUNCTION, $pop436, $pop225
	i32.const	$push226=, 52
	i32.add 	$push227=, $8, $pop226
	i32.load8_u	$push228=, 0($pop227)
	i32.const	$push652=, 1
	i32.and 	$push229=, $pop228, $pop652
	i32.eqz 	$push667=, $pop229
	br_if   	38, $pop667
	i32.const	$9=, 23
	br      	46
.LBB157_79:
	end_block
	i32.const	$push230=, 60
	i32.add 	$push231=, $8, $pop230
	i32.load	$push232=, 0($pop231)
	call    	_ZdlPv@FUNCTION, $pop232
	i32.const	$9=, 24
	br      	45
.LBB157_81:
	end_block
	i32.const	$push233=, 36
	i32.add 	$push234=, $8, $pop233
	i32.load8_u	$push235=, 0($pop234)
	i32.const	$push653=, 1
	i32.and 	$push236=, $pop235, $pop653
	i32.eqz 	$push668=, $pop236
	br_if   	37, $pop668
	i32.const	$9=, 25
	br      	44
.LBB157_83:
	end_block
	i32.const	$push237=, 44
	i32.add 	$push238=, $8, $pop237
	i32.load	$push239=, 0($pop238)
	call    	_ZdlPv@FUNCTION, $pop239
	i32.const	$9=, 26
	br      	43
.LBB157_85:
	end_block
	i32.load8_u	$push241=, 20($8)
	i32.const	$push240=, 1
	i32.and 	$push242=, $pop241, $pop240
	i32.eqz 	$push669=, $pop242
	br_if   	36, $pop669
	i32.const	$9=, 27
	br      	42
.LBB157_87:
	end_block
	i32.const	$push243=, 28
	i32.add 	$push244=, $8, $pop243
	i32.load	$push245=, 0($pop244)
	call    	_ZdlPv@FUNCTION, $pop245
	i32.const	$9=, 28
	br      	41
.LBB157_89:
	end_block
	i32.const	$push246=, 24
	i32.add 	$push247=, $8, $pop246
	i64.const	$push248=, 0
	i64.store	0($pop247):p2align=2, $pop248
	i64.const	$push249=, 1
	i64.store	16($8), $pop249
	i32.const	$push437=, 16
	i32.add 	$push438=, $8, $pop437
	i32.const	$push253=, 4
	i32.or  	$6=, $pop438, $pop253
	i32.const	$push250=, .L.str.301
	i32.call	$push655=, strlen@FUNCTION, $pop250
	tee_local	$push654=, $7=, $pop655
	i32.const	$push251=, -17
	i32.gt_u	$push252=, $pop654, $pop251
	br_if   	35, $pop252
	i32.const	$9=, 29
	br      	40
.LBB157_91:
	end_block
	i32.const	$push254=, 11
	i32.ge_u	$push255=, $7, $pop254
	br_if   	35, $pop255
	i32.const	$9=, 35
	br      	39
.LBB157_93:
	end_block
	i32.const	$push265=, 1
	i32.shl 	$push266=, $7, $pop265
	i32.store8	20($8), $pop266
	i32.const	$push656=, 1
	i32.add 	$6=, $6, $pop656
	br_if   	36, $7
	br      	35
.LBB157_94:
	end_block
	i32.const	$push259=, 28
	i32.add 	$push260=, $8, $pop259
	i32.const	$push256=, 16
	i32.add 	$push257=, $7, $pop256
	i32.const	$push258=, -16
	i32.and 	$push660=, $pop257, $pop258
	tee_local	$push659=, $2=, $pop660
	i32.call	$push658=, _Znwj@FUNCTION, $pop659
	tee_local	$push657=, $6=, $pop658
	i32.store	0($pop260), $pop657
	i32.const	$push261=, 24
	i32.add 	$push262=, $8, $pop261
	i32.store	0($pop262), $7
	i32.const	$push263=, 1
	i32.or  	$push264=, $2, $pop263
	i32.store	20($8), $pop264
	i32.const	$9=, 31
	br      	37
.LBB157_96:
	end_block
	i32.const	$push267=, .L.str.301
	i32.call	$drop=, memcpy@FUNCTION, $6, $pop267, $7
	i32.const	$9=, 32
	br      	36
.LBB157_98:
	end_block
	i32.add 	$push268=, $6, $7
	i32.const	$push269=, 0
	i32.store8	0($pop268), $pop269
	i64.const	$push270=, 4614688343118974445
	i64.store	32($8), $pop270
	i32.const	$push439=, 16
	i32.add 	$push440=, $8, $pop439
	i32.const	$push271=, .L.str.302
	call    	_ZN8testtypeINSt3__15tupleIJiNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEdEEEE3runERKS8_PKc@FUNCTION, $pop440, $pop271
	i32.load8_u	$push273=, 20($8)
	i32.const	$push272=, 1
	i32.and 	$push274=, $pop273, $pop272
	i32.eqz 	$push670=, $pop274
	br_if   	34, $pop670
	i32.const	$9=, 33
	br      	35
.LBB157_100:
	end_block
	i32.const	$push275=, 28
	i32.add 	$push276=, $8, $pop275
	i32.load	$push277=, 0($pop276)
	call    	_ZdlPv@FUNCTION, $pop277
	i32.const	$9=, 34
	br      	34
.LBB157_102:
	end_block
	i32.const	$push286=, 0
	i32.const	$push284=, 160
	i32.add 	$push285=, $8, $pop284
	i32.store	__stack_pointer($pop286), $pop285
	return
.LBB157_103:
	end_block
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $6
	unreachable
.LBB157_104:
	end_block
	i32.const	$9=, 21
	br      	31
.LBB157_105:
	end_block
	i32.const	$9=, 16
	br      	30
.LBB157_106:
	end_block
	i32.const	$9=, 10
	br      	29
.LBB157_107:
	end_block
	i32.const	$9=, 1
	br      	28
.LBB157_108:
	end_block
	i32.const	$9=, 7
	br      	27
.LBB157_109:
	end_block
	i32.const	$9=, 10
	br      	26
.LBB157_110:
	end_block
	i32.const	$9=, 1
	br      	25
.LBB157_111:
	end_block
	i32.const	$9=, 1
	br      	24
.LBB157_112:
	end_block
	i32.const	$9=, 0
	br      	23
.LBB157_113:
	end_block
	i32.const	$9=, 14
	br      	22
.LBB157_114:
	end_block
	i32.const	$9=, 10
	br      	21
.LBB157_115:
	end_block
	i32.const	$9=, 1
	br      	20
.LBB157_116:
	end_block
	i32.const	$9=, 2
	br      	19
.LBB157_117:
	end_block
	i32.const	$9=, 5
	br      	18
.LBB157_118:
	end_block
	i32.const	$9=, 4
	br      	17
.LBB157_119:
	end_block
	i32.const	$9=, 19
	br      	16
.LBB157_120:
	end_block
	i32.const	$9=, 20
	br      	15
.LBB157_121:
	end_block
	i32.const	$9=, 6
	br      	14
.LBB157_122:
	end_block
	i32.const	$9=, 8
	br      	13
.LBB157_123:
	end_block
	i32.const	$9=, 9
	br      	12
.LBB157_124:
	end_block
	i32.const	$9=, 14
	br      	11
.LBB157_125:
	end_block
	i32.const	$9=, 12
	br      	10
.LBB157_126:
	end_block
	i32.const	$9=, 16
	br      	9
.LBB157_127:
	end_block
	i32.const	$9=, 18
	br      	8
.LBB157_128:
	end_block
	i32.const	$9=, 24
	br      	7
.LBB157_129:
	end_block
	i32.const	$9=, 26
	br      	6
.LBB157_130:
	end_block
	i32.const	$9=, 28
	br      	5
.LBB157_131:
	end_block
	i32.const	$9=, 36
	br      	4
.LBB157_132:
	end_block
	i32.const	$9=, 30
	br      	3
.LBB157_133:
	end_block
	i32.const	$9=, 32
	br      	2
.LBB157_134:
	end_block
	i32.const	$9=, 31
	br      	1
.LBB157_135:
	end_block
	i32.const	$9=, 34
	br      	0
.LBB157_136:
	end_loop
	.endfunc
.Lfunc_end157:
	.size	_ZN15test_datastream10test_basicEv, .Lfunc_end157-_ZN15test_datastream10test_basicEv

	.section	.text._ZN8testtypeINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3runERKS6_PKc,"axG",@progbits,_ZN8testtypeINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3runERKS6_PKc,comdat
	.hidden	_ZN8testtypeINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3runERKS6_PKc
	.weak	_ZN8testtypeINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3runERKS6_PKc
	.type	_ZN8testtypeINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3runERKS6_PKc,@function
_ZN8testtypeINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3runERKS6_PKc:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32, i32
	i32.const	$push28=, 0
	i32.const	$push25=, 0
	i32.load	$push26=, __stack_pointer($pop25)
	i32.const	$push27=, 160
	i32.sub 	$push58=, $pop26, $pop27
	tee_local	$push57=, $8=, $pop58
	i32.store	__stack_pointer($pop28), $pop57
	i32.const	$push1=, 160
	i32.add 	$push2=, $8, $pop1
	i32.store	24($8), $pop2
	i32.const	$push32=, 32
	i32.add 	$push33=, $8, $pop32
	i32.store	20($8), $pop33
	i32.const	$push34=, 32
	i32.add 	$push35=, $8, $pop34
	i32.store	16($8), $pop35
	i32.const	$push36=, 16
	i32.add 	$push37=, $8, $pop36
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop37, $0
	i64.const	$push3=, 0
	i64.store	0($8), $pop3
	i32.const	$7=, 0
	i32.const	$push56=, 0
	i32.store	8($8), $pop56
	i32.load	$push4=, 16($8)
	i32.store	20($8), $pop4
	i32.const	$push38=, 16
	i32.add 	$push39=, $8, $pop38
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop39, $8
	block   	
	i32.load	$push8=, 4($0)
	i32.load8_u	$push55=, 0($0)
	tee_local	$push54=, $5=, $pop55
	i32.const	$push53=, 1
	i32.shr_u	$push52=, $pop54, $pop53
	tee_local	$push51=, $3=, $pop52
	i32.const	$push50=, 1
	i32.and 	$push49=, $5, $pop50
	tee_local	$push48=, $2=, $pop49
	i32.select	$push47=, $pop8, $pop51, $pop48
	tee_local	$push46=, $4=, $pop47
	i32.load	$push6=, 4($8)
	i32.load8_u	$push45=, 0($8)
	tee_local	$push44=, $5=, $pop45
	i32.const	$push43=, 1
	i32.shr_u	$push5=, $pop44, $pop43
	i32.const	$push42=, 1
	i32.and 	$push41=, $5, $pop42
	tee_local	$push40=, $5=, $pop41
	i32.select	$push7=, $pop6, $pop5, $pop40
	i32.ne  	$push9=, $pop46, $pop7
	br_if   	0, $pop9
	i32.const	$push11=, 8
	i32.add 	$push12=, $8, $pop11
	i32.load	$push13=, 0($pop12)
	i32.const	$push60=, 1
	i32.or  	$push10=, $8, $pop60
	i32.select	$5=, $pop13, $pop10, $5
	i32.const	$push59=, 1
	i32.add 	$6=, $0, $pop59
	block   	
	block   	
	block   	
	br_if   	0, $2
	i32.eqz 	$push67=, $4
	br_if   	1, $pop67
	i32.const	$push16=, 0
	i32.sub 	$0=, $pop16, $3
.LBB158_4:
	loop    	
	i32.load8_u	$push18=, 0($6)
	i32.load8_u	$push17=, 0($5)
	i32.ne  	$push19=, $pop18, $pop17
	br_if   	3, $pop19
	i32.const	$7=, 1
	i32.const	$push65=, 1
	i32.add 	$5=, $5, $pop65
	i32.const	$push64=, 1
	i32.add 	$6=, $6, $pop64
	i32.const	$push63=, 1
	i32.add 	$push62=, $0, $pop63
	tee_local	$push61=, $0=, $pop62
	br_if   	0, $pop61
	br      	4
.LBB158_6:
	end_loop
	end_block
	i32.eqz 	$push68=, $4
	br_if   	0, $pop68
	i32.load	$push14=, 8($0)
	i32.select	$push0=, $pop14, $6, $2
	i32.call	$push15=, memcmp@FUNCTION, $pop0, $5, $4
	i32.eqz 	$7=, $pop15
	br      	2
.LBB158_8:
	end_block
	i32.const	$7=, 1
	br      	1
.LBB158_9:
	end_block
	i32.const	$7=, 0
.LBB158_10:
	end_block
	call    	eosio_assert@FUNCTION, $7, $1
	block   	
	i32.load8_u	$push20=, 0($8)
	i32.const	$push66=, 1
	i32.and 	$push21=, $pop20, $pop66
	i32.eqz 	$push69=, $pop21
	br_if   	0, $pop69
	i32.const	$push22=, 8
	i32.add 	$push23=, $8, $pop22
	i32.load	$push24=, 0($pop23)
	call    	_ZdlPv@FUNCTION, $pop24
.LBB158_12:
	end_block
	i32.const	$push31=, 0
	i32.const	$push29=, 160
	i32.add 	$push30=, $8, $pop29
	i32.store	__stack_pointer($pop31), $pop30
	.endfunc
.Lfunc_end158:
	.size	_ZN8testtypeINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3runERKS6_PKc, .Lfunc_end158-_ZN8testtypeINSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEE3runERKS6_PKc

	.section	.text._ZN8testtypeINSt3__16vectorIiNS0_9allocatorIiEEEEE3runERKS4_PKc,"axG",@progbits,_ZN8testtypeINSt3__16vectorIiNS0_9allocatorIiEEEEE3runERKS4_PKc,comdat
	.hidden	_ZN8testtypeINSt3__16vectorIiNS0_9allocatorIiEEEEE3runERKS4_PKc
	.weak	_ZN8testtypeINSt3__16vectorIiNS0_9allocatorIiEEEEE3runERKS4_PKc
	.type	_ZN8testtypeINSt3__16vectorIiNS0_9allocatorIiEEEEE3runERKS4_PKc,@function
_ZN8testtypeINSt3__16vectorIiNS0_9allocatorIiEEEEE3runERKS4_PKc:
	.param  	i32, i32
	.local  	i32, i32, i32, i32
	i32.const	$push16=, 0
	i32.const	$push13=, 0
	i32.load	$push14=, __stack_pointer($pop13)
	i32.const	$push15=, 160
	i32.sub 	$push36=, $pop14, $pop15
	tee_local	$push35=, $5=, $pop36
	i32.store	__stack_pointer($pop16), $pop35
	i32.const	$push0=, 160
	i32.add 	$push1=, $5, $pop0
	i32.store	24($5), $pop1
	i32.const	$push20=, 32
	i32.add 	$push21=, $5, $pop20
	i32.store	20($5), $pop21
	i32.const	$push22=, 32
	i32.add 	$push23=, $5, $pop22
	i32.store	16($5), $pop23
	i32.const	$push24=, 16
	i32.add 	$push25=, $5, $pop24
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEiEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE@FUNCTION, $pop25, $0
	i64.const	$push2=, 0
	i64.store	0($5), $pop2
	i32.const	$4=, 0
	i32.const	$push34=, 0
	i32.store	8($5), $pop34
	i32.load	$push3=, 16($5)
	i32.store	20($5), $pop3
	i32.const	$push26=, 16
	i32.add 	$push27=, $5, $pop26
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPcEEiEERT_S5_RNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE@FUNCTION, $pop27, $5
	block   	
	i32.load	$push33=, 4($0)
	tee_local	$push32=, $2=, $pop33
	i32.load	$push31=, 0($0)
	tee_local	$push30=, $0=, $pop31
	i32.sub 	$push6=, $pop32, $pop30
	i32.load	$push4=, 4($5)
	i32.load	$push29=, 0($5)
	tee_local	$push28=, $3=, $pop29
	i32.sub 	$push5=, $pop4, $pop28
	i32.ne  	$push7=, $pop6, $pop5
	br_if   	0, $pop7
	block   	
	i32.eq  	$push8=, $0, $2
	br_if   	0, $pop8
.LBB159_3:
	loop    	
	i32.load	$push10=, 0($0)
	i32.load	$push9=, 0($3)
	i32.ne  	$push11=, $pop10, $pop9
	br_if   	2, $pop11
	i32.const	$push40=, 4
	i32.add 	$3=, $3, $pop40
	i32.const	$push39=, 4
	i32.add 	$push38=, $0, $pop39
	tee_local	$push37=, $0=, $pop38
	i32.ne  	$push12=, $2, $pop37
	br_if   	0, $pop12
.LBB159_5:
	end_loop
	end_block
	i32.const	$4=, 1
.LBB159_6:
	end_block
	call    	eosio_assert@FUNCTION, $4, $1
	block   	
	i32.load	$push42=, 0($5)
	tee_local	$push41=, $0=, $pop42
	i32.eqz 	$push43=, $pop41
	br_if   	0, $pop43
	i32.store	4($5), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB159_8:
	end_block
	i32.const	$push19=, 0
	i32.const	$push17=, 160
	i32.add 	$push18=, $5, $pop17
	i32.store	__stack_pointer($pop19), $pop18
	.endfunc
.Lfunc_end159:
	.size	_ZN8testtypeINSt3__16vectorIiNS0_9allocatorIiEEEEE3runERKS4_PKc, .Lfunc_end159-_ZN8testtypeINSt3__16vectorIiNS0_9allocatorIiEEEEE3runERKS4_PKc

	.section	.text._ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_,"axG",@progbits,_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_,comdat
	.hidden	_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	.weak	_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	.type	_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_,@function
_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_:
	.param  	i32, i32
	.local  	i32, i32, i32
	i32.eq  	$push44=, $1, $0
	tee_local	$push43=, $3=, $pop44
	i32.store8	12($1), $pop43
	block   	
	block   	
	block   	
	br_if   	0, $3
.LBB160_2:
	block   	
	block   	
	block   	
	loop    	
	i32.load	$push46=, 8($1)
	tee_local	$push45=, $2=, $pop46
	i32.load8_u	$push0=, 12($pop45)
	br_if   	4, $pop0
	block   	
	block   	
	block   	
	i32.load	$push50=, 8($2)
	tee_local	$push49=, $3=, $pop50
	i32.load	$push48=, 0($pop49)
	tee_local	$push47=, $4=, $pop48
	i32.eq  	$push1=, $pop47, $2
	br_if   	0, $pop1
	i32.eqz 	$push90=, $4
	br_if   	2, $pop90
	i32.load8_u	$push2=, 12($4)
	br_if   	2, $pop2
	i32.const	$push51=, 12
	i32.add 	$4=, $4, $pop51
	br      	1
.LBB160_7:
	end_block
	i32.load	$push53=, 4($3)
	tee_local	$push52=, $4=, $pop53
	i32.eqz 	$push91=, $pop52
	br_if   	3, $pop91
	i32.load8_u	$push22=, 12($4)
	br_if   	3, $pop22
	i32.const	$push54=, 12
	i32.add 	$4=, $4, $pop54
.LBB160_10:
	end_block
	i32.const	$push59=, 12
	i32.add 	$push23=, $2, $pop59
	i32.const	$push58=, 1
	i32.store8	0($pop23), $pop58
	i32.eq  	$push57=, $3, $0
	tee_local	$push56=, $2=, $pop57
	i32.store8	12($3), $pop56
	i32.const	$push55=, 1
	i32.store8	0($4), $pop55
	copy_local	$1=, $3
	i32.eqz 	$push92=, $2
	br_if   	1, $pop92
	br      	5
.LBB160_11:
	end_block
	end_loop
	i32.load	$push3=, 0($2)
	i32.eq  	$push4=, $pop3, $1
	br_if   	1, $pop4
	copy_local	$4=, $2
	br      	2
.LBB160_13:
	end_block
	i32.load	$push24=, 0($2)
	i32.eq  	$push25=, $pop24, $1
	br_if   	3, $pop25
	i32.load	$push63=, 4($2)
	tee_local	$push62=, $4=, $pop63
	i32.load	$push61=, 0($pop62)
	tee_local	$push60=, $1=, $pop61
	i32.store	4($2), $pop60
	block   	
	i32.eqz 	$push93=, $1
	br_if   	0, $pop93
	i32.store	8($1), $2
	i32.const	$push26=, 8
	i32.add 	$push27=, $2, $pop26
	i32.load	$3=, 0($pop27)
.LBB160_16:
	end_block
	i32.store	8($4), $3
	i32.const	$push28=, 8
	i32.add 	$push67=, $2, $pop28
	tee_local	$push66=, $1=, $pop67
	i32.load	$push65=, 0($pop66)
	tee_local	$push64=, $3=, $pop65
	i32.const	$push29=, 4
	i32.add 	$push30=, $3, $pop29
	i32.load	$push31=, 0($3)
	i32.eq  	$push32=, $pop31, $2
	i32.select	$push33=, $pop64, $pop30, $pop32
	i32.store	0($pop33), $4
	i32.store	0($1), $4
	i32.store	0($4), $2
	i32.load	$3=, 8($4)
	br      	4
.LBB160_17:
	end_block
	i32.load	$push71=, 0($2)
	tee_local	$push70=, $4=, $pop71
	i32.load	$push69=, 4($pop70)
	tee_local	$push68=, $1=, $pop69
	i32.store	0($2), $pop68
	block   	
	i32.eqz 	$push94=, $1
	br_if   	0, $pop94
	i32.store	8($1), $2
	i32.const	$push5=, 8
	i32.add 	$push6=, $2, $pop5
	i32.load	$3=, 0($pop6)
.LBB160_19:
	end_block
	i32.store	8($4), $3
	i32.const	$push7=, 8
	i32.add 	$push76=, $2, $pop7
	tee_local	$push75=, $1=, $pop76
	i32.load	$push74=, 0($pop75)
	tee_local	$push73=, $3=, $pop74
	i32.const	$push8=, 4
	i32.add 	$push9=, $3, $pop8
	i32.load	$push10=, 0($3)
	i32.eq  	$push11=, $pop10, $2
	i32.select	$push12=, $pop73, $pop9, $pop11
	i32.store	0($pop12), $4
	i32.store	0($1), $4
	i32.const	$push72=, 4
	i32.add 	$push13=, $4, $pop72
	i32.store	0($pop13), $2
	i32.load	$3=, 8($4)
.LBB160_20:
	end_block
	i32.const	$push14=, 1
	i32.store8	12($4), $pop14
	i32.const	$push15=, 0
	i32.store8	12($3), $pop15
	i32.load	$push80=, 4($3)
	tee_local	$push79=, $2=, $pop80
	i32.load	$push78=, 0($pop79)
	tee_local	$push77=, $4=, $pop78
	i32.store	4($3), $pop77
	block   	
	i32.eqz 	$push95=, $4
	br_if   	0, $pop95
	i32.store	8($4), $3
.LBB160_22:
	end_block
	i32.load	$push16=, 8($3)
	i32.store	8($2), $pop16
	i32.load	$push82=, 8($3)
	tee_local	$push81=, $4=, $pop82
	i32.const	$push17=, 4
	i32.add 	$push18=, $4, $pop17
	i32.load	$push19=, 0($4)
	i32.eq  	$push20=, $pop19, $3
	i32.select	$push21=, $pop81, $pop18, $pop20
	i32.store	0($pop21), $2
	i32.store	8($3), $2
	i32.store	0($2), $3
.LBB160_23:
	end_block
	return
.LBB160_24:
	end_block
	copy_local	$4=, $2
.LBB160_25:
	end_block
	i32.const	$push34=, 1
	i32.store8	12($4), $pop34
	i32.const	$push35=, 0
	i32.store8	12($3), $pop35
	i32.load	$push86=, 0($3)
	tee_local	$push85=, $2=, $pop86
	i32.load	$push84=, 4($pop85)
	tee_local	$push83=, $4=, $pop84
	i32.store	0($3), $pop83
	block   	
	i32.eqz 	$push96=, $4
	br_if   	0, $pop96
	i32.store	8($4), $3
.LBB160_27:
	end_block
	i32.load	$push36=, 8($3)
	i32.store	8($2), $pop36
	i32.load	$push89=, 8($3)
	tee_local	$push88=, $4=, $pop89
	i32.const	$push37=, 4
	i32.add 	$push38=, $4, $pop37
	i32.load	$push39=, 0($4)
	i32.eq  	$push40=, $pop39, $3
	i32.select	$push41=, $pop88, $pop38, $pop40
	i32.store	0($pop41), $2
	i32.store	8($3), $2
	i32.const	$push87=, 4
	i32.add 	$push42=, $2, $pop87
	i32.store	0($pop42), $3
	.endfunc
.Lfunc_end160:
	.size	_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_, .Lfunc_end160-_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_

	.section	.text._ZN8testtypeINSt3__13mapIiNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_4lessIiEENS5_INS0_4pairIKiS7_EEEEEEE3runERKSE_PKc,"axG",@progbits,_ZN8testtypeINSt3__13mapIiNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_4lessIiEENS5_INS0_4pairIKiS7_EEEEEEE3runERKSE_PKc,comdat
	.hidden	_ZN8testtypeINSt3__13mapIiNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_4lessIiEENS5_INS0_4pairIKiS7_EEEEEEE3runERKSE_PKc
	.weak	_ZN8testtypeINSt3__13mapIiNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_4lessIiEENS5_INS0_4pairIKiS7_EEEEEEE3runERKSE_PKc
	.type	_ZN8testtypeINSt3__13mapIiNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_4lessIiEENS5_INS0_4pairIKiS7_EEEEEEE3runERKSE_PKc,@function
_ZN8testtypeINSt3__13mapIiNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_4lessIiEENS5_INS0_4pairIKiS7_EEEEEEE3runERKSE_PKc:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32
	i32.const	$push39=, 0
	i32.const	$push36=, 0
	i32.load	$push37=, __stack_pointer($pop36)
	i32.const	$push38=, 160
	i32.sub 	$push55=, $pop37, $pop38
	tee_local	$push54=, $10=, $pop55
	i32.store	__stack_pointer($pop39), $pop54
	i32.const	$push3=, 160
	i32.add 	$push4=, $10, $pop3
	i32.store	24($10), $pop4
	i32.const	$push43=, 32
	i32.add 	$push44=, $10, $pop43
	i32.store	20($10), $pop44
	i32.const	$push45=, 32
	i32.add 	$push46=, $10, $pop45
	i32.store	16($10), $pop46
	i32.const	$push47=, 16
	i32.add 	$push48=, $10, $pop47
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEERT_SC_RKNS4_3mapIT0_T1_NS4_4lessISE_EENS8_INS4_4pairIKSE_SF_EEEEEE@FUNCTION, $pop48, $0
	i32.const	$push53=, 4
	i32.or  	$push5=, $10, $pop53
	i32.store	0($10), $pop5
	i32.const	$9=, 0
	i32.const	$push52=, 0
	i32.store	8($10), $pop52
	i32.const	$push51=, 0
	i32.store	4($10), $pop51
	i32.load	$push6=, 16($10)
	i32.store	20($10), $pop6
	i32.const	$push49=, 16
	i32.add 	$push50=, $10, $pop49
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPcEEiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEERT_SC_RNS4_3mapIT0_T1_NS4_4lessISE_EENS8_INS4_4pairIKSE_SF_EEEEEE@FUNCTION, $pop50, $10
	block   	
	i32.load	$push7=, 8($0)
	i32.load	$push8=, 8($10)
	i32.ne  	$push9=, $pop7, $pop8
	br_if   	0, $pop9
	block   	
	i32.load	$push60=, 0($0)
	tee_local	$push59=, $6=, $pop60
	i32.const	$push58=, 4
	i32.add 	$push57=, $0, $pop58
	tee_local	$push56=, $2=, $pop57
	i32.eq  	$push10=, $pop59, $pop56
	br_if   	0, $pop10
	i32.load	$7=, 0($10)
	i32.const	$9=, 0
.LBB161_3:
	loop    	
	copy_local	$push64=, $6
	tee_local	$push63=, $3=, $pop64
	i32.load	$push12=, 16($pop63)
	copy_local	$push62=, $7
	tee_local	$push61=, $8=, $pop62
	i32.load	$push11=, 16($pop61)
	i32.ne  	$push13=, $pop12, $pop11
	br_if   	2, $pop13
	i32.load	$push17=, 24($3)
	i32.load8_u	$push80=, 20($3)
	tee_local	$push79=, $0=, $pop80
	i32.const	$push78=, 1
	i32.shr_u	$push77=, $pop79, $pop78
	tee_local	$push76=, $4=, $pop77
	i32.const	$push75=, 1
	i32.and 	$push74=, $0, $pop75
	tee_local	$push73=, $7=, $pop74
	i32.select	$push72=, $pop17, $pop76, $pop73
	tee_local	$push71=, $5=, $pop72
	i32.load	$push15=, 24($8)
	i32.load8_u	$push70=, 20($8)
	tee_local	$push69=, $0=, $pop70
	i32.const	$push68=, 1
	i32.shr_u	$push14=, $pop69, $pop68
	i32.const	$push67=, 1
	i32.and 	$push66=, $0, $pop67
	tee_local	$push65=, $0=, $pop66
	i32.select	$push16=, $pop15, $pop14, $pop65
	i32.ne  	$push18=, $pop71, $pop16
	br_if   	2, $pop18
	i32.load	$push20=, 28($8)
	i32.const	$push84=, 20
	i32.add 	$push1=, $8, $pop84
	i32.const	$push83=, 1
	i32.add 	$push19=, $pop1, $pop83
	i32.select	$0=, $pop20, $pop19, $0
	i32.const	$push82=, 20
	i32.add 	$push0=, $3, $pop82
	i32.const	$push81=, 1
	i32.add 	$6=, $pop0, $pop81
	block   	
	block   	
	br_if   	0, $7
	i32.eqz 	$push119=, $5
	br_if   	1, $pop119
	i32.const	$push85=, 0
	i32.sub 	$7=, $pop85, $4
.LBB161_8:
	loop    	
	i32.load8_u	$push24=, 0($6)
	i32.load8_u	$push23=, 0($0)
	i32.ne  	$push25=, $pop24, $pop23
	br_if   	5, $pop25
	i32.const	$push90=, 1
	i32.add 	$0=, $0, $pop90
	i32.const	$push89=, 1
	i32.add 	$6=, $6, $pop89
	i32.const	$push88=, 1
	i32.add 	$push87=, $7, $pop88
	tee_local	$push86=, $7=, $pop87
	br_if   	0, $pop86
	br      	2
.LBB161_10:
	end_loop
	end_block
	i32.eqz 	$push120=, $5
	br_if   	0, $pop120
	i32.load	$push21=, 28($3)
	i32.select	$push2=, $pop21, $6, $7
	i32.call	$push22=, memcmp@FUNCTION, $pop2, $0, $5
	br_if   	3, $pop22
.LBB161_12:
	end_block
	block   	
	block   	
	i32.load	$push92=, 4($3)
	tee_local	$push91=, $0=, $pop92
	i32.eqz 	$push121=, $pop91
	br_if   	0, $pop121
.LBB161_13:
	loop    	
	copy_local	$push96=, $0
	tee_local	$push95=, $6=, $pop96
	i32.load	$push94=, 0($pop95)
	tee_local	$push93=, $0=, $pop94
	br_if   	0, $pop93
	br      	2
.LBB161_14:
	end_loop
	end_block
	i32.load	$push98=, 8($3)
	tee_local	$push97=, $6=, $pop98
	i32.load	$push26=, 0($pop97)
	i32.eq  	$push27=, $pop26, $3
	br_if   	0, $pop27
	i32.const	$push99=, 8
	i32.add 	$7=, $3, $pop99
.LBB161_16:
	loop    	
	i32.load	$push104=, 0($7)
	tee_local	$push103=, $0=, $pop104
	i32.const	$push102=, 8
	i32.add 	$7=, $pop103, $pop102
	i32.load	$push101=, 8($0)
	tee_local	$push100=, $6=, $pop101
	i32.load	$push28=, 0($pop100)
	i32.ne  	$push29=, $0, $pop28
	br_if   	0, $pop29
.LBB161_17:
	end_loop
	end_block
	block   	
	block   	
	i32.load	$push106=, 4($8)
	tee_local	$push105=, $0=, $pop106
	i32.eqz 	$push122=, $pop105
	br_if   	0, $pop122
.LBB161_18:
	loop    	
	copy_local	$push110=, $0
	tee_local	$push109=, $7=, $pop110
	i32.load	$push108=, 0($pop109)
	tee_local	$push107=, $0=, $pop108
	br_if   	0, $pop107
	br      	2
.LBB161_19:
	end_loop
	end_block
	i32.load	$push112=, 8($8)
	tee_local	$push111=, $7=, $pop112
	i32.load	$push30=, 0($pop111)
	i32.eq  	$push31=, $pop30, $8
	br_if   	0, $pop31
	i32.const	$push113=, 8
	i32.add 	$8=, $8, $pop113
.LBB161_21:
	loop    	
	i32.load	$push118=, 0($8)
	tee_local	$push117=, $0=, $pop118
	i32.const	$push116=, 8
	i32.add 	$8=, $pop117, $pop116
	i32.load	$push115=, 8($0)
	tee_local	$push114=, $7=, $pop115
	i32.load	$push32=, 0($pop114)
	i32.ne  	$push33=, $0, $pop32
	br_if   	0, $pop33
.LBB161_22:
	end_loop
	end_block
	i32.ne  	$push34=, $6, $2
	br_if   	0, $pop34
.LBB161_23:
	end_loop
	end_block
	i32.const	$9=, 1
.LBB161_24:
	end_block
	call    	eosio_assert@FUNCTION, $9, $1
	i32.load	$push35=, 4($10)
	call    	_ZNSt3__16__treeINS_12__value_typeIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_19__map_value_compareIiS8_NS_4lessIiEELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE@FUNCTION, $10, $pop35
	i32.const	$push42=, 0
	i32.const	$push40=, 160
	i32.add 	$push41=, $10, $pop40
	i32.store	__stack_pointer($pop42), $pop41
	.endfunc
.Lfunc_end161:
	.size	_ZN8testtypeINSt3__13mapIiNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_4lessIiEENS5_INS0_4pairIKiS7_EEEEEEE3runERKSE_PKc, .Lfunc_end161-_ZN8testtypeINSt3__13mapIiNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_4lessIiEENS5_INS0_4pairIKiS7_EEEEEEE3runERKSE_PKc

	.section	.text._ZNSt3__16__treeINS_12__value_typeIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_19__map_value_compareIiS8_NS_4lessIiEELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE,"axG",@progbits,_ZNSt3__16__treeINS_12__value_typeIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_19__map_value_compareIiS8_NS_4lessIiEELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE,comdat
	.hidden	_ZNSt3__16__treeINS_12__value_typeIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_19__map_value_compareIiS8_NS_4lessIiEELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE
	.weak	_ZNSt3__16__treeINS_12__value_typeIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_19__map_value_compareIiS8_NS_4lessIiEELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE
	.type	_ZNSt3__16__treeINS_12__value_typeIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_19__map_value_compareIiS8_NS_4lessIiEELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE,@function
_ZNSt3__16__treeINS_12__value_typeIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_19__map_value_compareIiS8_NS_4lessIiEELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE:
	.param  	i32, i32
	block   	
	i32.eqz 	$push10=, $1
	br_if   	0, $pop10
	i32.load	$push0=, 0($1)
	call    	_ZNSt3__16__treeINS_12__value_typeIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_19__map_value_compareIiS8_NS_4lessIiEELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE@FUNCTION, $0, $pop0
	i32.load	$push1=, 4($1)
	call    	_ZNSt3__16__treeINS_12__value_typeIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_19__map_value_compareIiS8_NS_4lessIiEELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE@FUNCTION, $0, $pop1
	block   	
	i32.const	$push2=, 20
	i32.add 	$push3=, $1, $pop2
	i32.load8_u	$push4=, 0($pop3)
	i32.const	$push5=, 1
	i32.and 	$push6=, $pop4, $pop5
	i32.eqz 	$push11=, $pop6
	br_if   	0, $pop11
	i32.const	$push7=, 28
	i32.add 	$push8=, $1, $pop7
	i32.load	$push9=, 0($pop8)
	call    	_ZdlPv@FUNCTION, $pop9
.LBB162_3:
	end_block
	call    	_ZdlPv@FUNCTION, $1
.LBB162_4:
	end_block
	.endfunc
.Lfunc_end162:
	.size	_ZNSt3__16__treeINS_12__value_typeIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_19__map_value_compareIiS8_NS_4lessIiEELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE, .Lfunc_end162-_ZNSt3__16__treeINS_12__value_typeIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_19__map_value_compareIiS8_NS_4lessIiEELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE

	.section	.text._ZN8testtypeINSt3__15tupleIJiNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEdEEEE3runERKS8_PKc,"axG",@progbits,_ZN8testtypeINSt3__15tupleIJiNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEdEEEE3runERKS8_PKc,comdat
	.hidden	_ZN8testtypeINSt3__15tupleIJiNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEdEEEE3runERKS8_PKc
	.weak	_ZN8testtypeINSt3__15tupleIJiNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEdEEEE3runERKS8_PKc
	.type	_ZN8testtypeINSt3__15tupleIJiNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEdEEEE3runERKS8_PKc,@function
_ZN8testtypeINSt3__15tupleIJiNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEdEEEE3runERKS8_PKc:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	i32.const	$push61=, 0
	i32.const	$push58=, 0
	i32.load	$push59=, __stack_pointer($pop58)
	i32.const	$push60=, 176
	i32.sub 	$push112=, $pop59, $pop60
	tee_local	$push111=, $11=, $pop112
	i32.store	__stack_pointer($pop61), $pop111
	i32.const	$push1=, 176
	i32.add 	$push2=, $11, $pop1
	i32.store	40($11), $pop2
	i32.const	$push65=, 48
	i32.add 	$push66=, $11, $pop65
	i32.store	32($11), $pop66
	i32.const	$push110=, 1
	i32.const	$push3=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop110, $pop3
	i32.const	$push67=, 48
	i32.add 	$push68=, $11, $pop67
	i32.const	$push4=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop68, $0, $pop4
	i32.const	$push69=, 48
	i32.add 	$push70=, $11, $pop69
	i32.const	$push109=, 4
	i32.or  	$push5=, $pop70, $pop109
	i32.store	36($11), $pop5
	i32.const	$push71=, 32
	i32.add 	$push72=, $11, $pop71
	i32.const	$push108=, 4
	i32.add 	$push107=, $0, $pop108
	tee_local	$push106=, $8=, $pop107
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop72, $pop106
	i32.load	$push7=, 40($11)
	i32.load	$push6=, 36($11)
	i32.sub 	$push8=, $pop7, $pop6
	i32.const	$push9=, 7
	i32.gt_s	$push10=, $pop8, $pop9
	i32.const	$push105=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop10, $pop105
	i32.load	$push12=, 36($11)
	i32.const	$push11=, 16
	i32.add 	$push104=, $0, $pop11
	tee_local	$push103=, $2=, $pop104
	i32.const	$push102=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop103, $pop102
	i32.const	$push73=, 8
	i32.add 	$push74=, $11, $pop73
	i32.const	$push101=, 8
	i32.add 	$push100=, $pop74, $pop101
	tee_local	$push99=, $7=, $pop100
	i64.const	$push13=, 0
	i64.store	0($pop99), $pop13
	i64.const	$push98=, 0
	i64.store	8($11), $pop98
	i64.const	$push97=, 0
	i64.store	24($11), $pop97
	i32.load	$push96=, 32($11)
	tee_local	$push95=, $9=, $pop96
	i32.store	36($11), $pop95
	i32.load	$push14=, 40($11)
	i32.sub 	$push15=, $pop14, $9
	i32.const	$push16=, 3
	i32.gt_u	$push17=, $pop15, $pop16
	i32.const	$push18=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop17, $pop18
	i32.const	$push75=, 8
	i32.add 	$push76=, $11, $pop75
	i32.load	$push19=, 36($11)
	i32.const	$push94=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop76, $pop19, $pop94
	i32.load	$push20=, 36($11)
	i32.const	$push93=, 4
	i32.add 	$push21=, $pop20, $pop93
	i32.store	36($11), $pop21
	i32.const	$push79=, 32
	i32.add 	$push80=, $11, $pop79
	i32.const	$push77=, 8
	i32.add 	$push78=, $11, $pop77
	i32.const	$push92=, 4
	i32.or  	$push91=, $pop78, $pop92
	tee_local	$push90=, $3=, $pop91
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop80, $pop90
	i32.load	$push23=, 40($11)
	i32.load	$push22=, 36($11)
	i32.sub 	$push24=, $pop23, $pop22
	i32.const	$push89=, 7
	i32.gt_u	$push25=, $pop24, $pop89
	i32.const	$push88=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop25, $pop88
	i32.const	$push81=, 8
	i32.add 	$push82=, $11, $pop81
	i32.const	$push87=, 16
	i32.add 	$push26=, $pop82, $pop87
	i32.load	$push27=, 36($11)
	i32.const	$push86=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop26, $pop27, $pop86
	i32.load	$push28=, 36($11)
	i32.const	$push85=, 8
	i32.add 	$push29=, $pop28, $pop85
	i32.store	36($11), $pop29
	i32.const	$10=, 0
	block   	
	i32.load	$push30=, 0($0)
	i32.load	$push31=, 8($11)
	i32.ne  	$push32=, $pop30, $pop31
	br_if   	0, $pop32
	i32.const	$push129=, 8
	i32.add 	$push33=, $0, $pop129
	i32.load	$push34=, 0($pop33)
	i32.load8_u	$push128=, 0($8)
	tee_local	$push127=, $9=, $pop128
	i32.const	$push126=, 1
	i32.shr_u	$push125=, $pop127, $pop126
	tee_local	$push124=, $5=, $pop125
	i32.const	$push123=, 1
	i32.and 	$push122=, $9, $pop123
	tee_local	$push121=, $4=, $pop122
	i32.select	$push120=, $pop34, $pop124, $pop121
	tee_local	$push119=, $6=, $pop120
	i32.load	$push36=, 0($7)
	i32.load8_u	$push118=, 12($11)
	tee_local	$push117=, $9=, $pop118
	i32.const	$push116=, 1
	i32.shr_u	$push35=, $pop117, $pop116
	i32.const	$push115=, 1
	i32.and 	$push114=, $9, $pop115
	tee_local	$push113=, $7=, $pop114
	i32.select	$push37=, $pop36, $pop35, $pop113
	i32.ne  	$push38=, $pop119, $pop37
	br_if   	0, $pop38
	i32.const	$push39=, 1
	i32.add 	$9=, $8, $pop39
	i32.const	$push83=, 8
	i32.add 	$push84=, $11, $pop83
	i32.const	$push131=, 12
	i32.add 	$push43=, $pop84, $pop131
	i32.load	$push44=, 0($pop43)
	i32.const	$push130=, 1
	i32.add 	$push42=, $3, $pop130
	i32.select	$8=, $pop44, $pop42, $7
	block   	
	block   	
	br_if   	0, $4
	i32.eqz 	$push140=, $6
	br_if   	1, $pop140
	i32.const	$10=, 0
	i32.const	$push132=, 0
	i32.sub 	$0=, $pop132, $5
.LBB163_5:
	loop    	
	i32.load8_u	$push47=, 0($9)
	i32.load8_u	$push46=, 0($8)
	i32.ne  	$push48=, $pop47, $pop46
	br_if   	3, $pop48
	i32.const	$push137=, 1
	i32.add 	$8=, $8, $pop137
	i32.const	$push136=, 1
	i32.add 	$9=, $9, $pop136
	i32.const	$push135=, 1
	i32.add 	$push134=, $0, $pop135
	tee_local	$push133=, $0=, $pop134
	br_if   	0, $pop133
	br      	2
.LBB163_7:
	end_loop
	end_block
	i32.eqz 	$push141=, $6
	br_if   	0, $pop141
	i32.const	$push138=, 12
	i32.add 	$push40=, $0, $pop138
	i32.load	$push41=, 0($pop40)
	i32.select	$push0=, $pop41, $9, $4
	i32.call	$push45=, memcmp@FUNCTION, $pop0, $8, $6
	br_if   	1, $pop45
.LBB163_9:
	end_block
	f64.load	$push49=, 0($2)
	i32.const	$push50=, 24
	i32.add 	$push51=, $11, $pop50
	f64.load	$push52=, 0($pop51)
	f64.eq  	$10=, $pop49, $pop52
.LBB163_10:
	end_block
	call    	eosio_assert@FUNCTION, $10, $1
	block   	
	i32.load8_u	$push53=, 12($11)
	i32.const	$push139=, 1
	i32.and 	$push54=, $pop53, $pop139
	i32.eqz 	$push142=, $pop54
	br_if   	0, $pop142
	i32.const	$push55=, 20
	i32.add 	$push56=, $11, $pop55
	i32.load	$push57=, 0($pop56)
	call    	_ZdlPv@FUNCTION, $pop57
.LBB163_12:
	end_block
	i32.const	$push64=, 0
	i32.const	$push62=, 176
	i32.add 	$push63=, $11, $pop62
	i32.store	__stack_pointer($pop64), $pop63
	.endfunc
.Lfunc_end163:
	.size	_ZN8testtypeINSt3__15tupleIJiNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEdEEEE3runERKS8_PKc, .Lfunc_end163-_ZN8testtypeINSt3__15tupleIJiNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEdEEEE3runERKS8_PKc

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE,@function
_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i64, i32
	i32.const	$push31=, 0
	i32.const	$push28=, 0
	i32.load	$push29=, __stack_pointer($pop28)
	i32.const	$push30=, 16
	i32.sub 	$push42=, $pop29, $pop30
	tee_local	$push41=, $8=, $pop42
	i32.store	__stack_pointer($pop31), $pop41
	i32.load	$push2=, 4($1)
	i32.load8_u	$push40=, 0($1)
	tee_local	$push39=, $5=, $pop40
	i32.const	$push38=, 1
	i32.shr_u	$push1=, $pop39, $pop38
	i32.const	$push37=, 1
	i32.and 	$push0=, $5, $pop37
	i32.select	$push3=, $pop2, $pop1, $pop0
	i64.extend_u/i32	$7=, $pop3
	i32.load	$6=, 4($0)
	i32.const	$push7=, 8
	i32.add 	$4=, $0, $pop7
	i32.const	$push11=, 4
	i32.add 	$5=, $0, $pop11
.LBB164_1:
	loop    	
	i32.wrap/i64	$2=, $7
	i64.const	$push56=, 7
	i64.shr_u	$push55=, $7, $pop56
	tee_local	$push54=, $7=, $pop55
	i64.const	$push53=, 0
	i64.ne  	$push52=, $pop54, $pop53
	tee_local	$push51=, $3=, $pop52
	i32.const	$push50=, 7
	i32.shl 	$push5=, $pop51, $pop50
	i32.const	$push49=, 127
	i32.and 	$push4=, $2, $pop49
	i32.or  	$push6=, $pop5, $pop4
	i32.store8	15($8), $pop6
	i32.load	$push8=, 0($4)
	i32.sub 	$push9=, $pop8, $6
	i32.const	$push48=, 0
	i32.gt_s	$push10=, $pop9, $pop48
	i32.const	$push47=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop10, $pop47
	i32.load	$push12=, 0($5)
	i32.const	$push35=, 15
	i32.add 	$push36=, $8, $pop35
	i32.const	$push46=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop36, $pop46
	i32.load	$push13=, 0($5)
	i32.const	$push45=, 1
	i32.add 	$push44=, $pop13, $pop45
	tee_local	$push43=, $6=, $pop44
	i32.store	0($5), $pop43
	br_if   	0, $3
	end_loop
	block   	
	i32.const	$push65=, 4
	i32.add 	$push15=, $1, $pop65
	i32.load	$push16=, 0($pop15)
	i32.load8_u	$push64=, 0($1)
	tee_local	$push63=, $5=, $pop64
	i32.const	$push62=, 1
	i32.shr_u	$push14=, $pop63, $pop62
	i32.const	$push61=, 1
	i32.and 	$push60=, $5, $pop61
	tee_local	$push59=, $2=, $pop60
	i32.select	$push58=, $pop16, $pop14, $pop59
	tee_local	$push57=, $5=, $pop58
	i32.eqz 	$push70=, $pop57
	br_if   	0, $pop70
	i32.load	$3=, 8($1)
	i32.const	$push17=, 8
	i32.add 	$push18=, $0, $pop17
	i32.load	$push19=, 0($pop18)
	i32.sub 	$push20=, $pop19, $6
	i32.ge_s	$push21=, $pop20, $5
	i32.const	$push22=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop21, $pop22
	i32.const	$push69=, 4
	i32.add 	$push68=, $0, $pop69
	tee_local	$push67=, $6=, $pop68
	i32.load	$push25=, 0($pop67)
	i32.const	$push66=, 1
	i32.add 	$push23=, $1, $pop66
	i32.select	$push24=, $3, $pop23, $2
	i32.call	$drop=, memcpy@FUNCTION, $pop25, $pop24, $5
	i32.load	$push26=, 0($6)
	i32.add 	$push27=, $pop26, $5
	i32.store	0($6), $pop27
.LBB164_4:
	end_block
	i32.const	$push34=, 0
	i32.const	$push32=, 16
	i32.add 	$push33=, $8, $pop32
	i32.store	__stack_pointer($pop34), $pop33
	copy_local	$push71=, $0
	.endfunc
.Lfunc_end164:
	.size	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE, .Lfunc_end164-_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE

	.section	.text._ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
	.weak	_ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
	.type	_ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE,@function
_ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32
	i32.const	$push38=, 0
	i32.const	$push35=, 0
	i32.load	$push36=, __stack_pointer($pop35)
	i32.const	$push37=, 32
	i32.sub 	$push51=, $pop36, $pop37
	tee_local	$push50=, $7=, $pop51
	i32.store	__stack_pointer($pop38), $pop50
	i32.const	$push49=, 0
	i32.store	24($7), $pop49
	i64.const	$push48=, 0
	i64.store	16($7), $pop48
	i32.const	$push42=, 16
	i32.add 	$push43=, $7, $pop42
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__16vectorIcNS6_9allocatorIcEEEE@FUNCTION, $0, $pop43
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push47=, 20($7)
	tee_local	$push46=, $5=, $pop47
	i32.load	$push45=, 16($7)
	tee_local	$push44=, $4=, $pop45
	i32.ne  	$push0=, $pop46, $pop44
	br_if   	0, $pop0
	i32.load8_u	$push25=, 0($1)
	i32.const	$push26=, 1
	i32.and 	$push27=, $pop25, $pop26
	br_if   	1, $pop27
	i32.const	$push31=, 0
	i32.store16	0($1), $pop31
	i32.const	$push32=, 8
	i32.add 	$4=, $1, $pop32
	br      	2
.LBB165_3:
	end_block
	i32.const	$push1=, 8
	i32.add 	$push2=, $7, $pop1
	i32.const	$push55=, 0
	i32.store	0($pop2), $pop55
	i64.const	$push54=, 0
	i64.store	0($7), $pop54
	i32.sub 	$push53=, $5, $4
	tee_local	$push52=, $2=, $pop53
	i32.const	$push3=, -16
	i32.ge_u	$push4=, $pop52, $pop3
	br_if   	7, $pop4
	i32.const	$push5=, 11
	i32.ge_u	$push6=, $2, $pop5
	br_if   	2, $pop6
	i32.const	$push12=, 1
	i32.shl 	$push13=, $2, $pop12
	i32.store8	0($7), $pop13
	i32.const	$push56=, 1
	i32.or  	$6=, $7, $pop56
	br_if   	3, $2
	br      	4
.LBB165_6:
	end_block
	i32.load	$push28=, 8($1)
	i32.const	$push29=, 0
	i32.store8	0($pop28), $pop29
	i32.const	$push57=, 0
	i32.store	4($1), $pop57
	i32.const	$push30=, 8
	i32.add 	$4=, $1, $pop30
.LBB165_7:
	end_block
	i32.const	$push33=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj@FUNCTION, $1, $pop33
	i32.const	$push60=, 0
	i32.store	0($4), $pop60
	i64.const	$push34=, 0
	i64.store	0($1):p2align=2, $pop34
	i32.load	$push59=, 16($7)
	tee_local	$push58=, $4=, $pop59
	br_if   	3, $pop58
	br      	4
.LBB165_8:
	end_block
	i32.const	$push7=, 16
	i32.add 	$push8=, $2, $pop7
	i32.const	$push9=, -16
	i32.and 	$push62=, $pop8, $pop9
	tee_local	$push61=, $5=, $pop62
	i32.call	$6=, _Znwj@FUNCTION, $pop61
	i32.const	$push10=, 1
	i32.or  	$push11=, $5, $pop10
	i32.store	0($7), $pop11
	i32.store	8($7), $6
	i32.store	4($7), $2
.LBB165_9:
	end_block
	copy_local	$3=, $2
	copy_local	$5=, $6
.LBB165_10:
	loop    	
	i32.load8_u	$push14=, 0($4)
	i32.store8	0($5), $pop14
	i32.const	$push67=, 1
	i32.add 	$5=, $5, $pop67
	i32.const	$push66=, 1
	i32.add 	$4=, $4, $pop66
	i32.const	$push65=, -1
	i32.add 	$push64=, $3, $pop65
	tee_local	$push63=, $3=, $pop64
	br_if   	0, $pop63
	end_loop
	i32.add 	$6=, $6, $2
.LBB165_12:
	end_block
	i32.const	$push68=, 0
	i32.store8	0($6), $pop68
	block   	
	block   	
	i32.load8_u	$push15=, 0($1)
	i32.const	$push16=, 1
	i32.and 	$push17=, $pop15, $pop16
	br_if   	0, $pop17
	i32.const	$push69=, 0
	i32.store16	0($1), $pop69
	br      	1
.LBB165_14:
	end_block
	i32.load	$push18=, 8($1)
	i32.const	$push71=, 0
	i32.store8	0($pop18), $pop71
	i32.const	$push70=, 0
	i32.store	4($1), $pop70
.LBB165_15:
	end_block
	i32.const	$push19=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj@FUNCTION, $1, $pop19
	i32.const	$push20=, 8
	i32.add 	$push21=, $1, $pop20
	i32.const	$push74=, 8
	i32.add 	$push22=, $7, $pop74
	i32.load	$push23=, 0($pop22)
	i32.store	0($pop21), $pop23
	i64.load	$push24=, 0($7)
	i64.store	0($1):p2align=2, $pop24
	i32.load	$push73=, 16($7)
	tee_local	$push72=, $4=, $pop73
	i32.eqz 	$push75=, $pop72
	br_if   	1, $pop75
.LBB165_16:
	end_block
	i32.store	20($7), $4
	call    	_ZdlPv@FUNCTION, $4
.LBB165_17:
	end_block
	i32.const	$push41=, 0
	i32.const	$push39=, 32
	i32.add 	$push40=, $7, $pop39
	i32.store	__stack_pointer($pop41), $pop40
	return  	$0
.LBB165_18:
	end_block
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $7
	unreachable
	.endfunc
.Lfunc_end165:
	.size	_ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE, .Lfunc_end165-_ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE

	.section	.text._ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__16vectorIcNS6_9allocatorIcEEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__16vectorIcNS6_9allocatorIcEEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__16vectorIcNS6_9allocatorIcEEEE
	.weak	_ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__16vectorIcNS6_9allocatorIcEEEE
	.type	_ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__16vectorIcNS6_9allocatorIcEEEE,@function
_ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__16vectorIcNS6_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i64, i32
	i32.load	$5=, 4($0)
	i32.const	$7=, 0
	i64.const	$6=, 0
	i32.const	$push0=, 8
	i32.add 	$2=, $0, $pop0
	i32.const	$push3=, 4
	i32.add 	$3=, $0, $pop3
.LBB166_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $5, $pop1
	i32.const	$push37=, .L.str.424
	call    	eosio_assert@FUNCTION, $pop2, $pop37
	i32.load	$push36=, 0($3)
	tee_local	$push35=, $5=, $pop36
	i32.load8_u	$4=, 0($pop35)
	i32.const	$push34=, 1
	i32.add 	$push33=, $5, $pop34
	tee_local	$push32=, $5=, $pop33
	i32.store	0($3), $pop32
	i32.const	$push31=, 127
	i32.and 	$push4=, $4, $pop31
	i32.const	$push30=, 255
	i32.and 	$push29=, $7, $pop30
	tee_local	$push28=, $7=, $pop29
	i32.shl 	$push5=, $pop4, $pop28
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$6=, $pop6, $6
	i32.const	$push27=, 7
	i32.add 	$7=, $7, $pop27
	i32.const	$push26=, 7
	i32.shr_u	$push7=, $4, $pop26
	br_if   	0, $pop7
	end_loop
	block   	
	block   	
	i32.wrap/i64	$push45=, $6
	tee_local	$push44=, $3=, $pop45
	i32.load	$push43=, 4($1)
	tee_local	$push42=, $7=, $pop43
	i32.load	$push41=, 0($1)
	tee_local	$push40=, $4=, $pop41
	i32.sub 	$push39=, $pop42, $pop40
	tee_local	$push38=, $2=, $pop39
	i32.le_u	$push8=, $pop44, $pop38
	br_if   	0, $pop8
	i32.sub 	$push12=, $3, $2
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $1, $pop12
	i32.const	$push13=, 4
	i32.add 	$push14=, $0, $pop13
	i32.load	$5=, 0($pop14)
	i32.const	$push46=, 4
	i32.add 	$push15=, $1, $pop46
	i32.load	$7=, 0($pop15)
	i32.load	$4=, 0($1)
	br      	1
.LBB166_4:
	end_block
	i32.ge_u	$push9=, $3, $2
	br_if   	0, $pop9
	i32.const	$push10=, 4
	i32.add 	$push11=, $1, $pop10
	i32.add 	$push48=, $4, $3
	tee_local	$push47=, $7=, $pop48
	i32.store	0($pop11), $pop47
.LBB166_6:
	end_block
	i32.const	$push16=, 8
	i32.add 	$push17=, $0, $pop16
	i32.load	$push18=, 0($pop17)
	i32.sub 	$push19=, $pop18, $5
	i32.sub 	$push52=, $7, $4
	tee_local	$push51=, $5=, $pop52
	i32.ge_u	$push20=, $pop19, $pop51
	i32.const	$push21=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop20, $pop21
	i32.const	$push22=, 4
	i32.add 	$push50=, $0, $pop22
	tee_local	$push49=, $7=, $pop50
	i32.load	$push23=, 0($pop49)
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop23, $5
	i32.load	$push24=, 0($7)
	i32.add 	$push25=, $pop24, $5
	i32.store	0($7), $pop25
	copy_local	$push53=, $0
	.endfunc
.Lfunc_end166:
	.size	_ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__16vectorIcNS6_9allocatorIcEEEE, .Lfunc_end166-_ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__16vectorIcNS6_9allocatorIcEEEE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEERT_SC_RKNS4_3mapIT0_T1_NS4_4lessISE_EENS8_INS4_4pairIKSE_SF_EEEEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEERT_SC_RKNS4_3mapIT0_T1_NS4_4lessISE_EENS8_INS4_4pairIKSE_SF_EEEEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEERT_SC_RKNS4_3mapIT0_T1_NS4_4lessISE_EENS8_INS4_4pairIKSE_SF_EEEEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEERT_SC_RKNS4_3mapIT0_T1_NS4_4lessISE_EENS8_INS4_4pairIKSE_SF_EEEEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEEiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEERT_SC_RKNS4_3mapIT0_T1_NS4_4lessISE_EENS8_INS4_4pairIKSE_SF_EEEEEE,@function
_ZN5eosiolsINS_10datastreamIPcEEiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEERT_SC_RKNS4_3mapIT0_T1_NS4_4lessISE_EENS8_INS4_4pairIKSE_SF_EEEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i64, i32, i32, i32, i32
	i32.const	$push27=, 0
	i32.const	$push24=, 0
	i32.load	$push25=, __stack_pointer($pop24)
	i32.const	$push26=, 16
	i32.sub 	$push34=, $pop25, $pop26
	tee_local	$push33=, $8=, $pop34
	i32.store	__stack_pointer($pop27), $pop33
	i32.load	$6=, 4($0)
	i64.load32_u	$4=, 8($1)
	i32.const	$push3=, 8
	i32.add 	$2=, $0, $pop3
	i32.const	$push7=, 4
	i32.add 	$5=, $0, $pop7
.LBB167_1:
	loop    	
	i32.wrap/i64	$7=, $4
	i64.const	$push48=, 7
	i64.shr_u	$push47=, $4, $pop48
	tee_local	$push46=, $4=, $pop47
	i64.const	$push45=, 0
	i64.ne  	$push44=, $pop46, $pop45
	tee_local	$push43=, $3=, $pop44
	i32.const	$push42=, 7
	i32.shl 	$push1=, $pop43, $pop42
	i32.const	$push41=, 127
	i32.and 	$push0=, $7, $pop41
	i32.or  	$push2=, $pop1, $pop0
	i32.store8	15($8), $pop2
	i32.load	$push4=, 0($2)
	i32.sub 	$push5=, $pop4, $6
	i32.const	$push40=, 0
	i32.gt_s	$push6=, $pop5, $pop40
	i32.const	$push39=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop6, $pop39
	i32.load	$push8=, 0($5)
	i32.const	$push31=, 15
	i32.add 	$push32=, $8, $pop31
	i32.const	$push38=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop8, $pop32, $pop38
	i32.load	$push9=, 0($5)
	i32.const	$push37=, 1
	i32.add 	$push36=, $pop9, $pop37
	tee_local	$push35=, $6=, $pop36
	i32.store	0($5), $pop35
	br_if   	0, $3
	end_loop
	block   	
	i32.load	$push53=, 0($1)
	tee_local	$push52=, $7=, $pop53
	i32.const	$push51=, 4
	i32.add 	$push50=, $1, $pop51
	tee_local	$push49=, $2=, $pop50
	i32.eq  	$push10=, $pop52, $pop49
	br_if   	0, $pop10
	i32.const	$push54=, 8
	i32.add 	$1=, $0, $pop54
.LBB167_4:
	loop    	
	i32.load	$push11=, 0($1)
	i32.sub 	$push12=, $pop11, $6
	i32.const	$push65=, 3
	i32.gt_s	$push13=, $pop12, $pop65
	i32.const	$push64=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop13, $pop64
	i32.const	$push63=, 4
	i32.add 	$push62=, $0, $pop63
	tee_local	$push61=, $3=, $pop62
	i32.load	$push15=, 0($pop61)
	i32.const	$push60=, 16
	i32.add 	$push14=, $7, $pop60
	i32.const	$push59=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop15, $pop14, $pop59
	i32.load	$push16=, 0($3)
	i32.const	$push58=, 4
	i32.add 	$push17=, $pop16, $pop58
	i32.store	0($3), $pop17
	i32.const	$push57=, 20
	i32.add 	$push18=, $7, $pop57
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $0, $pop18
	block   	
	block   	
	i32.load	$push56=, 4($7)
	tee_local	$push55=, $6=, $pop56
	i32.eqz 	$push78=, $pop55
	br_if   	0, $pop78
.LBB167_5:
	loop    	
	copy_local	$push69=, $6
	tee_local	$push68=, $5=, $pop69
	i32.load	$push67=, 0($pop68)
	tee_local	$push66=, $6=, $pop67
	br_if   	0, $pop66
	br      	2
.LBB167_6:
	end_loop
	end_block
	i32.load	$push71=, 8($7)
	tee_local	$push70=, $5=, $pop71
	i32.load	$push19=, 0($pop70)
	i32.eq  	$push20=, $pop19, $7
	br_if   	0, $pop20
	i32.const	$push72=, 8
	i32.add 	$7=, $7, $pop72
.LBB167_8:
	loop    	
	i32.load	$push77=, 0($7)
	tee_local	$push76=, $6=, $pop77
	i32.const	$push75=, 8
	i32.add 	$7=, $pop76, $pop75
	i32.load	$push74=, 8($6)
	tee_local	$push73=, $5=, $pop74
	i32.load	$push21=, 0($pop73)
	i32.ne  	$push22=, $6, $pop21
	br_if   	0, $pop22
.LBB167_9:
	end_loop
	end_block
	i32.eq  	$push23=, $5, $2
	br_if   	1, $pop23
	i32.load	$6=, 0($3)
	copy_local	$7=, $5
	br      	0
.LBB167_11:
	end_loop
	end_block
	i32.const	$push30=, 0
	i32.const	$push28=, 16
	i32.add 	$push29=, $8, $pop28
	i32.store	__stack_pointer($pop30), $pop29
	copy_local	$push79=, $0
	.endfunc
.Lfunc_end167:
	.size	_ZN5eosiolsINS_10datastreamIPcEEiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEERT_SC_RKNS4_3mapIT0_T1_NS4_4lessISE_EENS8_INS4_4pairIKSE_SF_EEEEEE, .Lfunc_end167-_ZN5eosiolsINS_10datastreamIPcEEiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEERT_SC_RKNS4_3mapIT0_T1_NS4_4lessISE_EENS8_INS4_4pairIKSE_SF_EEEEEE

	.section	.text._ZN5eosiorsINS_10datastreamIPcEEiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEERT_SC_RNS4_3mapIT0_T1_NS4_4lessISE_EENS8_INS4_4pairIKSE_SF_EEEEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPcEEiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEERT_SC_RNS4_3mapIT0_T1_NS4_4lessISE_EENS8_INS4_4pairIKSE_SF_EEEEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPcEEiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEERT_SC_RNS4_3mapIT0_T1_NS4_4lessISE_EENS8_INS4_4pairIKSE_SF_EEEEEE
	.weak	_ZN5eosiorsINS_10datastreamIPcEEiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEERT_SC_RNS4_3mapIT0_T1_NS4_4lessISE_EENS8_INS4_4pairIKSE_SF_EEEEEE
	.type	_ZN5eosiorsINS_10datastreamIPcEEiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEERT_SC_RNS4_3mapIT0_T1_NS4_4lessISE_EENS8_INS4_4pairIKSE_SF_EEEEEE,@function
_ZN5eosiorsINS_10datastreamIPcEEiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEERT_SC_RNS4_3mapIT0_T1_NS4_4lessISE_EENS8_INS4_4pairIKSE_SF_EEEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32
	i32.const	$push37=, 0
	i32.const	$push34=, 0
	i32.load	$push35=, __stack_pointer($pop34)
	i32.const	$push36=, 16
	i32.sub 	$push49=, $pop35, $pop36
	tee_local	$push48=, $13=, $pop49
	i32.store	__stack_pointer($pop37), $pop48
	i32.load	$push0=, 4($1)
	call    	_ZNSt3__16__treeINS_12__value_typeIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_19__map_value_compareIiS8_NS_4lessIiEELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE@FUNCTION, $1, $pop0
	i32.const	$push47=, 4
	i32.add 	$push46=, $1, $pop47
	tee_local	$push45=, $2=, $pop46
	i32.store	0($1), $pop45
	i32.const	$5=, 0
	i32.const	$push44=, 0
	i32.store	8($1), $pop44
	i32.const	$push43=, 0
	i32.store	4($1), $pop43
	i32.load	$6=, 4($0)
	i64.const	$10=, 0
	i32.const	$push1=, 8
	i32.add 	$9=, $0, $pop1
.LBB168_1:
	loop    	
	i32.load	$push2=, 0($9)
	i32.lt_u	$push3=, $6, $pop2
	i32.const	$push64=, .L.str.424
	call    	eosio_assert@FUNCTION, $pop3, $pop64
	i32.const	$push63=, 4
	i32.add 	$push62=, $0, $pop63
	tee_local	$push61=, $7=, $pop62
	i32.load	$push60=, 0($pop61)
	tee_local	$push59=, $6=, $pop60
	i32.load8_u	$12=, 0($pop59)
	i32.const	$push58=, 1
	i32.add 	$push57=, $6, $pop58
	tee_local	$push56=, $6=, $pop57
	i32.store	0($7), $pop56
	i32.const	$push55=, 127
	i32.and 	$push4=, $12, $pop55
	i32.const	$push54=, 255
	i32.and 	$push53=, $5, $pop54
	tee_local	$push52=, $5=, $pop53
	i32.shl 	$push5=, $pop4, $pop52
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$10=, $pop6, $10
	i32.const	$push51=, 7
	i32.add 	$5=, $5, $pop51
	i32.const	$push50=, 7
	i32.shr_u	$push7=, $12, $pop50
	br_if   	0, $pop7
	end_loop
	block   	
	i32.wrap/i64	$push66=, $10
	tee_local	$push65=, $3=, $pop66
	i32.eqz 	$push113=, $pop65
	br_if   	0, $pop113
	i32.const	$push67=, 4
	i32.add 	$4=, $1, $pop67
	i32.const	$11=, 0
.LBB168_4:
	loop    	
	i32.const	$push82=, 8
	i32.add 	$push81=, $13, $pop82
	tee_local	$push80=, $8=, $pop81
	i32.const	$push79=, 0
	i32.store	0($pop80), $pop79
	i64.const	$push78=, 0
	i64.store	0($13), $pop78
	i32.const	$push77=, 8
	i32.add 	$push8=, $0, $pop77
	i32.load	$push9=, 0($pop8)
	i32.sub 	$push10=, $pop9, $6
	i32.const	$push76=, 3
	i32.gt_u	$push11=, $pop10, $pop76
	i32.const	$push75=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop11, $pop75
	i32.const	$push41=, 12
	i32.add 	$push42=, $13, $pop41
	i32.const	$push74=, 4
	i32.add 	$push73=, $0, $pop74
	tee_local	$push72=, $9=, $pop73
	i32.load	$push12=, 0($pop72)
	i32.const	$push71=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop42, $pop12, $pop71
	i32.load	$push13=, 0($9)
	i32.const	$push70=, 4
	i32.add 	$push14=, $pop13, $pop70
	i32.store	0($9), $pop14
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPcEEEERT_S5_RNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $0, $13
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push69=, 0($2)
	tee_local	$push68=, $6=, $pop69
	i32.eqz 	$push114=, $pop68
	br_if   	0, $pop114
	i32.load	$5=, 12($13)
	copy_local	$7=, $4
.LBB168_6:
	loop    	
	block   	
	block   	
	i32.load	$push84=, 16($6)
	tee_local	$push83=, $12=, $pop84
	i32.ge_s	$push15=, $5, $pop83
	br_if   	0, $pop15
	copy_local	$7=, $6
	i32.load	$push86=, 0($6)
	tee_local	$push85=, $12=, $pop86
	br_if   	1, $pop85
	br      	4
.LBB168_8:
	end_block
	i32.ge_s	$push16=, $12, $5
	br_if   	4, $pop16
	i32.const	$push89=, 4
	i32.add 	$7=, $6, $pop89
	i32.load	$push88=, 4($6)
	tee_local	$push87=, $12=, $pop88
	i32.eqz 	$push115=, $pop87
	br_if   	4, $pop115
.LBB168_10:
	end_block
	copy_local	$6=, $12
	br      	0
.LBB168_11:
	end_loop
	end_block
	copy_local	$6=, $2
	copy_local	$push91=, $2
	tee_local	$push90=, $7=, $pop91
	i32.load	$push17=, 0($pop90)
	br_if   	3, $pop17
	br      	2
.LBB168_12:
	end_block
	copy_local	$7=, $6
.LBB168_13:
	end_block
	i32.load	$push18=, 0($7)
	br_if   	1, $pop18
.LBB168_14:
	end_block
	i32.const	$push103=, 32
	i32.call	$push102=, _Znwj@FUNCTION, $pop103
	tee_local	$push101=, $12=, $pop102
	i32.load	$push19=, 12($13)
	i32.store	16($pop101), $pop19
	i32.const	$push100=, 28
	i32.add 	$push20=, $12, $pop100
	i32.load	$push21=, 0($8)
	i32.store	0($pop20), $pop21
	i32.const	$push99=, 24
	i32.add 	$push22=, $12, $pop99
	i32.load	$push23=, 4($13)
	i32.store	0($pop22), $pop23
	i32.load	$push24=, 0($13)
	i32.store	20($12), $pop24
	i32.const	$push98=, 0
	i32.store	0($13), $pop98
	i32.const	$push97=, 0
	i32.store	4($13), $pop97
	i32.const	$push96=, 0
	i32.store	0($8), $pop96
	i32.const	$push95=, 0
	i32.store	0($12), $pop95
	i32.const	$push94=, 0
	i32.store	4($12), $pop94
	i32.store	8($12), $6
	i32.store	0($7), $12
	block   	
	i32.load	$push25=, 0($1)
	i32.load	$push93=, 0($pop25)
	tee_local	$push92=, $6=, $pop93
	i32.eqz 	$push116=, $pop92
	br_if   	0, $pop116
	i32.store	0($1), $6
	i32.load	$12=, 0($7)
.LBB168_16:
	end_block
	i32.const	$push108=, 4
	i32.add 	$push26=, $1, $pop108
	i32.load	$push27=, 0($pop26)
	call    	_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_@FUNCTION, $pop27, $12
	i32.const	$push107=, 8
	i32.add 	$push106=, $1, $pop107
	tee_local	$push105=, $6=, $pop106
	i32.load	$push28=, 0($6)
	i32.const	$push104=, 1
	i32.add 	$push29=, $pop28, $pop104
	i32.store	0($pop105), $pop29
.LBB168_17:
	end_block
	block   	
	i32.load8_u	$push30=, 0($13)
	i32.const	$push109=, 1
	i32.and 	$push31=, $pop30, $pop109
	i32.eqz 	$push117=, $pop31
	br_if   	0, $pop117
	i32.load	$push32=, 0($8)
	call    	_ZdlPv@FUNCTION, $pop32
.LBB168_19:
	end_block
	i32.const	$push112=, 1
	i32.add 	$push111=, $11, $pop112
	tee_local	$push110=, $11=, $pop111
	i32.eq  	$push33=, $pop110, $3
	br_if   	1, $pop33
	i32.load	$6=, 0($9)
	br      	0
.LBB168_21:
	end_loop
	end_block
	i32.const	$push40=, 0
	i32.const	$push38=, 16
	i32.add 	$push39=, $13, $pop38
	i32.store	__stack_pointer($pop40), $pop39
	copy_local	$push118=, $0
	.endfunc
.Lfunc_end168:
	.size	_ZN5eosiorsINS_10datastreamIPcEEiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEERT_SC_RNS4_3mapIT0_T1_NS4_4lessISE_EENS8_INS4_4pairIKSE_SF_EEEEEE, .Lfunc_end168-_ZN5eosiorsINS_10datastreamIPcEEiNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEERT_SC_RNS4_3mapIT0_T1_NS4_4lessISE_EENS8_INS4_4pairIKSE_SF_EEEEEE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEiEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEiEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEiEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEiEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEEiEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE,@function
_ZN5eosiolsINS_10datastreamIPcEEiEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i64, i32, i32
	i32.const	$push27=, 0
	i32.const	$push24=, 0
	i32.load	$push25=, __stack_pointer($pop24)
	i32.const	$push26=, 16
	i32.sub 	$push34=, $pop25, $pop26
	tee_local	$push33=, $8=, $pop34
	i32.store	__stack_pointer($pop27), $pop33
	i32.load	$push1=, 4($1)
	i32.load	$push0=, 0($1)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 2
	i32.shr_s	$push4=, $pop2, $pop3
	i64.extend_u/i32	$6=, $pop4
	i32.load	$7=, 4($0)
	i32.const	$push8=, 8
	i32.add 	$4=, $0, $pop8
	i32.const	$push12=, 4
	i32.add 	$5=, $0, $pop12
.LBB169_1:
	loop    	
	i32.wrap/i64	$2=, $6
	i64.const	$push48=, 7
	i64.shr_u	$push47=, $6, $pop48
	tee_local	$push46=, $6=, $pop47
	i64.const	$push45=, 0
	i64.ne  	$push44=, $pop46, $pop45
	tee_local	$push43=, $3=, $pop44
	i32.const	$push42=, 7
	i32.shl 	$push6=, $pop43, $pop42
	i32.const	$push41=, 127
	i32.and 	$push5=, $2, $pop41
	i32.or  	$push7=, $pop6, $pop5
	i32.store8	15($8), $pop7
	i32.load	$push9=, 0($4)
	i32.sub 	$push10=, $pop9, $7
	i32.const	$push40=, 0
	i32.gt_s	$push11=, $pop10, $pop40
	i32.const	$push39=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop11, $pop39
	i32.load	$push13=, 0($5)
	i32.const	$push31=, 15
	i32.add 	$push32=, $8, $pop31
	i32.const	$push38=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop32, $pop38
	i32.load	$push14=, 0($5)
	i32.const	$push37=, 1
	i32.add 	$push36=, $pop14, $pop37
	tee_local	$push35=, $7=, $pop36
	i32.store	0($5), $pop35
	br_if   	0, $3
	end_loop
	block   	
	i32.load	$push53=, 0($1)
	tee_local	$push52=, $5=, $pop53
	i32.const	$push51=, 4
	i32.add 	$push15=, $1, $pop51
	i32.load	$push50=, 0($pop15)
	tee_local	$push49=, $3=, $pop50
	i32.eq  	$push16=, $pop52, $pop49
	br_if   	0, $pop16
	i32.const	$push17=, 8
	i32.add 	$4=, $0, $pop17
.LBB169_4:
	loop    	
	i32.load	$push18=, 0($4)
	i32.sub 	$push19=, $pop18, $7
	i32.const	$push65=, 3
	i32.gt_s	$push20=, $pop19, $pop65
	i32.const	$push64=, .L.str.427
	call    	eosio_assert@FUNCTION, $pop20, $pop64
	i32.const	$push63=, 4
	i32.add 	$push62=, $0, $pop63
	tee_local	$push61=, $2=, $pop62
	i32.load	$push21=, 0($pop61)
	i32.const	$push60=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop21, $5, $pop60
	i32.load	$push22=, 0($2)
	i32.const	$push59=, 4
	i32.add 	$push58=, $pop22, $pop59
	tee_local	$push57=, $7=, $pop58
	i32.store	0($2), $pop57
	i32.const	$push56=, 4
	i32.add 	$push55=, $5, $pop56
	tee_local	$push54=, $5=, $pop55
	i32.ne  	$push23=, $3, $pop54
	br_if   	0, $pop23
.LBB169_5:
	end_loop
	end_block
	i32.const	$push30=, 0
	i32.const	$push28=, 16
	i32.add 	$push29=, $8, $pop28
	i32.store	__stack_pointer($pop30), $pop29
	copy_local	$push66=, $0
	.endfunc
.Lfunc_end169:
	.size	_ZN5eosiolsINS_10datastreamIPcEEiEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE, .Lfunc_end169-_ZN5eosiolsINS_10datastreamIPcEEiEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE

	.section	.text._ZN5eosiorsINS_10datastreamIPcEEiEERT_S5_RNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPcEEiEERT_S5_RNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPcEEiEERT_S5_RNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE
	.weak	_ZN5eosiorsINS_10datastreamIPcEEiEERT_S5_RNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE
	.type	_ZN5eosiorsINS_10datastreamIPcEEiEERT_S5_RNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE,@function
_ZN5eosiorsINS_10datastreamIPcEEiEERT_S5_RNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i64, i32
	i32.load	$5=, 4($0)
	i32.const	$7=, 0
	i64.const	$6=, 0
	i32.const	$push0=, 8
	i32.add 	$2=, $0, $pop0
	i32.const	$push3=, 4
	i32.add 	$3=, $0, $pop3
.LBB170_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $5, $pop1
	i32.const	$push39=, .L.str.424
	call    	eosio_assert@FUNCTION, $pop2, $pop39
	i32.load	$push38=, 0($3)
	tee_local	$push37=, $5=, $pop38
	i32.load8_u	$4=, 0($pop37)
	i32.const	$push36=, 1
	i32.add 	$push35=, $5, $pop36
	tee_local	$push34=, $5=, $pop35
	i32.store	0($3), $pop34
	i32.const	$push33=, 127
	i32.and 	$push4=, $4, $pop33
	i32.const	$push32=, 255
	i32.and 	$push31=, $7, $pop32
	tee_local	$push30=, $7=, $pop31
	i32.shl 	$push5=, $pop4, $pop30
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$6=, $pop6, $6
	i32.const	$push29=, 7
	i32.add 	$7=, $7, $pop29
	i32.const	$push28=, 7
	i32.shr_u	$push7=, $4, $pop28
	br_if   	0, $pop7
	end_loop
	block   	
	block   	
	block   	
	i32.wrap/i64	$push47=, $6
	tee_local	$push46=, $5=, $pop47
	i32.load	$push45=, 4($1)
	tee_local	$push44=, $3=, $pop45
	i32.load	$push43=, 0($1)
	tee_local	$push42=, $4=, $pop43
	i32.sub 	$push8=, $pop44, $pop42
	i32.const	$push9=, 2
	i32.shr_s	$push41=, $pop8, $pop9
	tee_local	$push40=, $7=, $pop41
	i32.le_u	$push10=, $pop46, $pop40
	br_if   	0, $pop10
	i32.sub 	$push16=, $5, $7
	call    	_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEj@FUNCTION, $1, $pop16
	i32.load	$push51=, 0($1)
	tee_local	$push50=, $4=, $pop51
	i32.const	$push17=, 4
	i32.add 	$push18=, $1, $pop17
	i32.load	$push49=, 0($pop18)
	tee_local	$push48=, $3=, $pop49
	i32.ne  	$push19=, $pop50, $pop48
	br_if   	1, $pop19
	br      	2
.LBB170_4:
	end_block
	block   	
	i32.ge_u	$push11=, $5, $7
	br_if   	0, $pop11
	i32.const	$push12=, 4
	i32.add 	$push13=, $1, $pop12
	i32.const	$push14=, 2
	i32.shl 	$push15=, $5, $pop14
	i32.add 	$push53=, $4, $pop15
	tee_local	$push52=, $3=, $pop53
	i32.store	0($pop13), $pop52
.LBB170_6:
	end_block
	i32.eq  	$push20=, $4, $3
	br_if   	1, $pop20
.LBB170_7:
	end_block
	i32.const	$push56=, 4
	i32.add 	$push55=, $0, $pop56
	tee_local	$push54=, $5=, $pop55
	i32.load	$7=, 0($pop54)
	i32.const	$push21=, 8
	i32.add 	$2=, $0, $pop21
.LBB170_8:
	loop    	
	i32.load	$push22=, 0($2)
	i32.sub 	$push23=, $pop22, $7
	i32.const	$push65=, 3
	i32.gt_u	$push24=, $pop23, $pop65
	i32.const	$push64=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop24, $pop64
	i32.load	$push25=, 0($5)
	i32.const	$push63=, 4
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop25, $pop63
	i32.load	$push26=, 0($5)
	i32.const	$push62=, 4
	i32.add 	$push61=, $pop26, $pop62
	tee_local	$push60=, $7=, $pop61
	i32.store	0($5), $pop60
	i32.const	$push59=, 4
	i32.add 	$push58=, $4, $pop59
	tee_local	$push57=, $4=, $pop58
	i32.ne  	$push27=, $3, $pop57
	br_if   	0, $pop27
.LBB170_9:
	end_loop
	end_block
	copy_local	$push66=, $0
	.endfunc
.Lfunc_end170:
	.size	_ZN5eosiorsINS_10datastreamIPcEEiEERT_S5_RNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE, .Lfunc_end170-_ZN5eosiorsINS_10datastreamIPcEEiEERT_S5_RNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE

	.section	.text._ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEj,"axG",@progbits,_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEj,comdat
	.hidden	_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEj
	.weak	_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEj
	.type	_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEj,@function
_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push34=, 8($0)
	tee_local	$push33=, $7=, $pop34
	i32.load	$push32=, 4($0)
	tee_local	$push31=, $2=, $pop32
	i32.sub 	$push0=, $pop33, $pop31
	i32.const	$push30=, 2
	i32.shr_s	$push1=, $pop0, $pop30
	i32.ge_u	$push2=, $pop1, $1
	br_if   	0, $pop2
	i32.load	$push41=, 0($0)
	tee_local	$push40=, $3=, $pop41
	i32.sub 	$push8=, $2, $pop40
	i32.const	$push39=, 2
	i32.shr_s	$push38=, $pop8, $pop39
	tee_local	$push37=, $4=, $pop38
	i32.add 	$push36=, $pop37, $1
	tee_local	$push35=, $2=, $pop36
	i32.const	$push9=, 1073741824
	i32.ge_u	$push10=, $pop35, $pop9
	br_if   	2, $pop10
	i32.const	$6=, 1073741823
	block   	
	i32.sub 	$push44=, $7, $3
	tee_local	$push43=, $7=, $pop44
	i32.const	$push42=, 2
	i32.shr_s	$push11=, $pop43, $pop42
	i32.const	$push12=, 536870910
	i32.gt_u	$push13=, $pop11, $pop12
	br_if   	0, $pop13
	i32.const	$push14=, 1
	i32.shr_s	$push48=, $7, $pop14
	tee_local	$push47=, $6=, $pop48
	i32.lt_u	$push15=, $6, $2
	i32.select	$push46=, $2, $pop47, $pop15
	tee_local	$push45=, $6=, $pop46
	i32.eqz 	$push69=, $pop45
	br_if   	2, $pop69
	i32.const	$push16=, 1073741824
	i32.ge_u	$push17=, $6, $pop16
	br_if   	4, $pop17
.LBB171_5:
	end_block
	i32.const	$push49=, 2
	i32.shl 	$push18=, $6, $pop49
	i32.call	$7=, _Znwj@FUNCTION, $pop18
	br      	4
.LBB171_6:
	end_block
	copy_local	$6=, $2
	copy_local	$7=, $1
.LBB171_7:
	loop    	
	i32.const	$push68=, 0
	i32.store	0($6), $pop68
	i32.const	$push67=, 4
	i32.add 	$6=, $6, $pop67
	i32.const	$push66=, -1
	i32.add 	$push65=, $7, $pop66
	tee_local	$push64=, $7=, $pop65
	br_if   	0, $pop64
	end_loop
	i32.const	$push3=, 4
	i32.add 	$push4=, $0, $pop3
	i32.const	$push5=, 2
	i32.shl 	$push6=, $1, $pop5
	i32.add 	$push7=, $2, $pop6
	i32.store	0($pop4), $pop7
	return
.LBB171_9:
	end_block
	i32.const	$6=, 0
	i32.const	$7=, 0
	br      	2
.LBB171_10:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB171_11:
	end_block
	call    	abort@FUNCTION
	unreachable
.LBB171_12:
	end_block
	i32.const	$push19=, 2
	i32.shl 	$push20=, $6, $pop19
	i32.add 	$3=, $7, $pop20
	i32.const	$push52=, 2
	i32.shl 	$push21=, $4, $pop52
	i32.add 	$push51=, $7, $pop21
	tee_local	$push50=, $2=, $pop51
	copy_local	$6=, $pop50
	copy_local	$7=, $1
.LBB171_13:
	loop    	
	i32.const	$push57=, 0
	i32.store	0($6), $pop57
	i32.const	$push56=, 4
	i32.add 	$6=, $6, $pop56
	i32.const	$push55=, -1
	i32.add 	$push54=, $7, $pop55
	tee_local	$push53=, $7=, $pop54
	br_if   	0, $pop53
	end_loop
	i32.const	$push22=, 2
	i32.shl 	$push23=, $1, $pop22
	i32.add 	$4=, $2, $pop23
	i32.const	$push24=, 4
	i32.add 	$push63=, $0, $pop24
	tee_local	$push62=, $5=, $pop63
	i32.load	$push25=, 0($pop62)
	i32.load	$push61=, 0($0)
	tee_local	$push60=, $6=, $pop61
	i32.sub 	$push59=, $pop25, $pop60
	tee_local	$push58=, $7=, $pop59
	i32.sub 	$1=, $2, $pop58
	block   	
	i32.const	$push26=, 1
	i32.lt_s	$push27=, $7, $pop26
	br_if   	0, $pop27
	i32.call	$drop=, memcpy@FUNCTION, $1, $6, $7
	i32.load	$6=, 0($0)
.LBB171_16:
	end_block
	i32.store	0($0), $1
	i32.store	0($5), $4
	i32.const	$push28=, 8
	i32.add 	$push29=, $0, $pop28
	i32.store	0($pop29), $3
	block   	
	i32.eqz 	$push70=, $6
	br_if   	0, $pop70
	call    	_ZdlPv@FUNCTION, $6
.LBB171_18:
	end_block
	.endfunc
.Lfunc_end171:
	.size	_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEj, .Lfunc_end171-_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEj

	.text
	.hidden	apply
	.globl	apply
	.type	apply,@function
apply:
	.param  	i64, i64, i64
	.local  	i32, i32, i32, i64, i64, i64, i64, i32
	i32.const	$push745=, 0
	i32.const	$push742=, 0
	i32.load	$push743=, __stack_pointer($pop742)
	i32.const	$push744=, 384
	i32.sub 	$push964=, $pop743, $pop744
	tee_local	$push963=, $10=, $pop964
	i32.store	__stack_pointer($pop745), $pop963
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$5=, .L.str.303
	i64.const	$8=, 0
.LBB172_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push965=, 4
	i64.gt_u	$push1=, $7, $pop965
	br_if   	0, $pop1
	i32.load8_s	$push970=, 0($5)
	tee_local	$push969=, $3=, $pop970
	i32.const	$push968=, -97
	i32.add 	$push3=, $pop969, $pop968
	i32.const	$push967=, 255
	i32.and 	$push4=, $pop3, $pop967
	i32.const	$push966=, 25
	i32.gt_u	$push5=, $pop4, $pop966
	br_if   	1, $pop5
	i32.const	$push971=, 165
	i32.add 	$3=, $3, $pop971
	br      	2
.LBB172_4:
	end_block
	i64.const	$9=, 0
	i64.const	$push972=, 11
	i64.le_u	$push2=, $7, $pop972
	br_if   	2, $pop2
	br      	3
.LBB172_5:
	end_block
	i32.const	$push977=, 208
	i32.add 	$push6=, $3, $pop977
	i32.const	$push976=, 0
	i32.const	$push975=, -49
	i32.add 	$push7=, $3, $pop975
	i32.const	$push974=, 255
	i32.and 	$push8=, $pop7, $pop974
	i32.const	$push973=, 5
	i32.lt_u	$push9=, $pop8, $pop973
	i32.select	$3=, $pop6, $pop976, $pop9
.LBB172_6:
	end_block
	i64.extend_u/i32	$push10=, $3
	i64.const	$push979=, 56
	i64.shl 	$push11=, $pop10, $pop979
	i64.const	$push978=, 56
	i64.shr_s	$9=, $pop11, $pop978
.LBB172_7:
	end_block
	i64.const	$push981=, 31
	i64.and 	$push13=, $9, $pop981
	i64.const	$push980=, 4294967295
	i64.and 	$push12=, $6, $pop980
	i64.shl 	$9=, $pop13, $pop12
.LBB172_8:
	end_block
	i32.const	$push987=, 1
	i32.add 	$5=, $5, $pop987
	i64.const	$push986=, 1
	i64.add 	$7=, $7, $pop986
	i64.or  	$8=, $9, $8
	i64.const	$push985=, -5
	i64.add 	$push984=, $6, $pop985
	tee_local	$push983=, $6=, $pop984
	i64.const	$push982=, -6
	i64.ne  	$push14=, $pop983, $pop982
	br_if   	0, $pop14
	end_loop
	block   	
	block   	
	block   	
	block   	
	i64.ne  	$push15=, $8, $1
	br_if   	0, $pop15
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$5=, .L.str.304
	i64.const	$8=, 0
.LBB172_11:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push988=, 6
	i64.gt_u	$push16=, $7, $pop988
	br_if   	0, $pop16
	i32.load8_s	$push993=, 0($5)
	tee_local	$push992=, $3=, $pop993
	i32.const	$push991=, -97
	i32.add 	$push18=, $pop992, $pop991
	i32.const	$push990=, 255
	i32.and 	$push19=, $pop18, $pop990
	i32.const	$push989=, 25
	i32.gt_u	$push20=, $pop19, $pop989
	br_if   	1, $pop20
	i32.const	$push994=, 165
	i32.add 	$3=, $3, $pop994
	br      	2
.LBB172_14:
	end_block
	i64.const	$9=, 0
	i64.const	$push995=, 11
	i64.le_u	$push17=, $7, $pop995
	br_if   	2, $pop17
	br      	3
.LBB172_15:
	end_block
	i32.const	$push1000=, 208
	i32.add 	$push21=, $3, $pop1000
	i32.const	$push999=, 0
	i32.const	$push998=, -49
	i32.add 	$push22=, $3, $pop998
	i32.const	$push997=, 255
	i32.and 	$push23=, $pop22, $pop997
	i32.const	$push996=, 5
	i32.lt_u	$push24=, $pop23, $pop996
	i32.select	$3=, $pop21, $pop999, $pop24
.LBB172_16:
	end_block
	i64.extend_u/i32	$push25=, $3
	i64.const	$push1002=, 56
	i64.shl 	$push26=, $pop25, $pop1002
	i64.const	$push1001=, 56
	i64.shr_s	$9=, $pop26, $pop1001
.LBB172_17:
	end_block
	i64.const	$push1004=, 31
	i64.and 	$push28=, $9, $pop1004
	i64.const	$push1003=, 4294967295
	i64.and 	$push27=, $6, $pop1003
	i64.shl 	$9=, $pop28, $pop27
.LBB172_18:
	end_block
	i32.const	$push1010=, 1
	i32.add 	$5=, $5, $pop1010
	i64.const	$push1009=, 1
	i64.add 	$7=, $7, $pop1009
	i64.or  	$8=, $9, $8
	i64.const	$push1008=, -5
	i64.add 	$push1007=, $6, $pop1008
	tee_local	$push1006=, $6=, $pop1007
	i64.const	$push1005=, -6
	i64.ne  	$push29=, $pop1006, $pop1005
	br_if   	0, $pop29
	end_loop
	i64.ne  	$push30=, $8, $2
	br_if   	0, $pop30
	i32.const	$push749=, 32
	i32.add 	$push750=, $10, $pop749
	call    	_ZN5eosio18unpack_action_dataINS_7onerrorEEET_v@FUNCTION, $pop750
	i32.const	$push706=, .L.str.305
	call    	prints@FUNCTION, $pop706
	i32.const	$push707=, 52
	i32.add 	$push708=, $10, $pop707
	i32.load	$3=, 0($pop708)
	i32.load	$5=, 48($10)
	i64.call	$7=, current_time@FUNCTION
	i32.const	$push709=, 236
	i32.add 	$push710=, $10, $pop709
	i32.const	$push711=, 0
	i32.store	0($pop710), $pop711
	i32.const	$push712=, 240
	i32.add 	$push713=, $10, $pop712
	i32.const	$push1027=, 0
	i32.store	0($pop713), $pop1027
	i32.const	$push1026=, 0
	i32.store	220($10), $pop1026
	i32.const	$push1025=, 0
	i32.store8	224($10), $pop1025
	i32.const	$push1024=, 0
	i32.store	228($10), $pop1024
	i32.const	$push1023=, 0
	i32.store	232($10), $pop1023
	i64.const	$push714=, 1000000
	i64.div_u	$push715=, $7, $pop714
	i32.wrap/i64	$push716=, $pop715
	i32.const	$push717=, 60
	i32.add 	$push718=, $pop716, $pop717
	i32.store	208($10), $pop718
	i32.const	$push1022=, 0
	i32.store	244($10), $pop1022
	i32.const	$push719=, 248
	i32.add 	$push1021=, $10, $pop719
	tee_local	$push1020=, $4=, $pop1021
	i32.const	$push1019=, 0
	i32.store	0($pop1020), $pop1019
	i32.const	$push720=, 252
	i32.add 	$push721=, $10, $pop720
	i32.const	$push1018=, 0
	i32.store	0($pop721), $pop1018
	i32.const	$push1017=, 0
	i32.store	256($10), $pop1017
	i32.const	$push722=, 260
	i32.add 	$push723=, $10, $pop722
	i32.const	$push1016=, 0
	i32.store	0($pop723), $pop1016
	i32.const	$push724=, 264
	i32.add 	$push725=, $10, $pop724
	i32.const	$push1015=, 0
	i32.store	0($pop725), $pop1015
	i32.store	20($10), $5
	i32.store	16($10), $5
	i32.store	24($10), $3
	i32.const	$push751=, 16
	i32.add 	$push752=, $10, $pop751
	i32.const	$push753=, 208
	i32.add 	$push754=, $10, $pop753
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_18transaction_headerE@FUNCTION, $pop752, $pop754
	i32.const	$push755=, 16
	i32.add 	$push756=, $10, $pop755
	i32.const	$push727=, 232
	i32.add 	$push728=, $10, $pop727
	i32.call	$push729=, _ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE@FUNCTION, $pop756, $pop728
	i32.const	$push726=, 244
	i32.add 	$push1014=, $10, $pop726
	tee_local	$push1013=, $3=, $pop1014
	i32.call	$push730=, _ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE@FUNCTION, $pop729, $pop1013
	i32.const	$push731=, 256
	i32.add 	$push732=, $10, $pop731
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEENSt3__15tupleIJtNS5_6vectorIcNS5_9allocatorIcEEEEEEEEERT_SD_RNS7_IT0_NS8_ISE_EEEE@FUNCTION, $pop730, $pop732
	i32.load	$push733=, 0($4)
	i32.load	$push1012=, 244($10)
	tee_local	$push1011=, $5=, $pop1012
	i32.eq  	$push734=, $pop733, $pop1011
	br_if   	1, $pop734
	block   	
	i64.load	$push735=, 8($5)
	i64.const	$push736=, -8665432478290165179
	i64.ne  	$push737=, $pop735, $pop736
	br_if   	0, $pop737
	i32.const	$push757=, 208
	i32.add 	$push758=, $10, $pop757
	call    	_ZN16test_transaction26assert_false_error_handlerERKN5eosio11transactionE@FUNCTION, $pop758
.LBB172_23:
	end_block
	i32.const	$push759=, 208
	i32.add 	$push760=, $10, $pop759
	i32.call	$drop=, _ZN5eosio11transactionD2Ev@FUNCTION, $pop760
	i32.const	$push738=, 48
	i32.add 	$push739=, $10, $pop738
	i32.load	$push1029=, 0($pop739)
	tee_local	$push1028=, $5=, $pop1029
	i32.eqz 	$push1273=, $pop1028
	br_if   	3, $pop1273
	i32.const	$push740=, 52
	i32.add 	$push741=, $10, $pop740
	i32.store	0($pop741), $5
	call    	_ZdlPv@FUNCTION, $5
	br      	3
.LBB172_25:
	end_block
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$5=, .L.str.306
	i64.const	$8=, 0
.LBB172_26:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push1030=, 8
	i64.gt_u	$push31=, $7, $pop1030
	br_if   	0, $pop31
	i32.load8_s	$push1035=, 0($5)
	tee_local	$push1034=, $3=, $pop1035
	i32.const	$push1033=, -97
	i32.add 	$push33=, $pop1034, $pop1033
	i32.const	$push1032=, 255
	i32.and 	$push34=, $pop33, $pop1032
	i32.const	$push1031=, 25
	i32.gt_u	$push35=, $pop34, $pop1031
	br_if   	1, $pop35
	i32.const	$push1036=, 165
	i32.add 	$3=, $3, $pop1036
	br      	2
.LBB172_29:
	end_block
	i64.const	$9=, 0
	i64.const	$push1037=, 11
	i64.le_u	$push32=, $7, $pop1037
	br_if   	2, $pop32
	br      	3
.LBB172_30:
	end_block
	i32.const	$push1042=, 208
	i32.add 	$push36=, $3, $pop1042
	i32.const	$push1041=, 0
	i32.const	$push1040=, -49
	i32.add 	$push37=, $3, $pop1040
	i32.const	$push1039=, 255
	i32.and 	$push38=, $pop37, $pop1039
	i32.const	$push1038=, 5
	i32.lt_u	$push39=, $pop38, $pop1038
	i32.select	$3=, $pop36, $pop1041, $pop39
.LBB172_31:
	end_block
	i64.extend_u/i32	$push40=, $3
	i64.const	$push1044=, 56
	i64.shl 	$push41=, $pop40, $pop1044
	i64.const	$push1043=, 56
	i64.shr_s	$9=, $pop41, $pop1043
.LBB172_32:
	end_block
	i64.const	$push1046=, 31
	i64.and 	$push43=, $9, $pop1046
	i64.const	$push1045=, 4294967295
	i64.and 	$push42=, $6, $pop1045
	i64.shl 	$9=, $pop43, $pop42
.LBB172_33:
	end_block
	i32.const	$push1052=, 1
	i32.add 	$5=, $5, $pop1052
	i64.const	$push1051=, 1
	i64.add 	$7=, $7, $pop1051
	i64.or  	$8=, $9, $8
	i64.const	$push1050=, -5
	i64.add 	$push1049=, $6, $pop1050
	tee_local	$push1048=, $6=, $pop1049
	i64.const	$push1047=, -6
	i64.ne  	$push44=, $pop1048, $pop1047
	br_if   	0, $pop44
	end_loop
	block   	
	i64.ne  	$push45=, $8, $2
	br_if   	0, $pop45
	call    	_ZN11test_action14test_cf_actionEv@FUNCTION
	br      	3
.LBB172_36:
	end_block
	block   	
	block   	
	i64.const	$push46=, -8665432478235101900
	i64.eq  	$push47=, $2, $pop46
	br_if   	0, $pop47
	i64.const	$push48=, -696013500020145514
	i64.eq  	$push49=, $2, $pop48
	br_if   	3, $pop49
	i64.const	$push50=, -696013499845391606
	i64.ne  	$push51=, $2, $pop50
	br_if   	1, $pop51
	br      	3
.LBB172_39:
	end_block
	i32.const	$push53=, 1
	i32.const	$push52=, .L.str.42
	call    	eosio_assert@FUNCTION, $pop53, $pop52
	br      	3
.LBB172_40:
	end_block
	call    	require_auth@FUNCTION, $1
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push54=, -6575469300789510042
	i64.gt_s	$push55=, $2, $pop54
	br_if   	0, $pop55
	i64.const	$push94=, -8665432477288202419
	i64.gt_s	$push95=, $2, $pop94
	br_if   	1, $pop95
	i64.const	$push114=, -8665432478290165180
	i64.gt_s	$push115=, $2, $pop114
	br_if   	3, $pop115
	i64.const	$push126=, -8665432478739662526
	i64.gt_s	$push127=, $2, $pop126
	br_if   	7, $pop127
	i64.const	$push132=, -8665432479170847876
	i64.eq  	$push133=, $2, $pop132
	br_if   	12, $pop133
	i64.const	$push134=, -8665432478848840241
	i64.ne  	$push135=, $2, $pop134
	br_if   	29, $pop135
	i64.const	$push156=, 0
	i64.store	208($10), $pop156
	i32.const	$push949=, 208
	i32.add 	$push950=, $10, $pop949
	i32.const	$push157=, 8
	i32.call	$push158=, read_action_data@FUNCTION, $pop950, $pop157
	i32.const	$push1096=, 8
	i32.eq  	$push159=, $pop158, $pop1096
	i32.const	$push160=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop159, $pop160
	i64.load	$push161=, 208($10)
	i64.call	$push162=, current_time@FUNCTION
	i64.eq  	$push163=, $pop161, $pop162
	i32.const	$push164=, .L.str.46
	call    	eosio_assert@FUNCTION, $pop163, $pop164
	br      	30
.LBB172_47:
	end_block
	i64.const	$push56=, -6575469299402901114
	i64.gt_s	$push57=, $2, $pop56
	br_if   	1, $pop57
	i64.const	$push76=, -6575469300549176619
	i64.le_s	$push77=, $2, $pop76
	br_if   	3, $pop77
	i64.const	$push78=, -6575469299641207703
	i64.gt_s	$push79=, $2, $pop78
	br_if   	7, $pop79
	i64.const	$push84=, -6575469300549176618
	i64.eq  	$push85=, $2, $pop84
	br_if   	12, $pop85
	i64.const	$push86=, -6575469300234199047
	i64.ne  	$push87=, $2, $pop86
	br_if   	28, $pop87
	call    	_ZN22test_compiler_builtins11test_divti3Ev@FUNCTION
	br      	29
.LBB172_53:
	end_block
	i64.const	$push96=, -8665432476325739330
	i64.le_s	$push97=, $2, $pop96
	br_if   	3, $pop97
	i64.const	$push98=, -6575469302011795920
	i64.gt_s	$push99=, $2, $pop98
	br_if   	7, $pop99
	i64.const	$push104=, -8665432476325739329
	i64.eq  	$push105=, $2, $pop104
	br_if   	12, $pop105
	i64.const	$push106=, -6575469302268922734
	i64.ne  	$push107=, $2, $pop106
	br_if   	27, $pop107
	i64.const	$push185=, 0
	i64.store	216($10), $pop185
	i64.const	$push1109=, 0
	i64.store	208($10), $pop1109
	i32.const	$push955=, 208
	i32.add 	$push956=, $10, $pop955
	i64.const	$push186=, 100
	i64.const	$push1108=, 0
	i64.const	$push1107=, 0
	i64.const	$push1106=, 0
	call    	__divti3@FUNCTION, $pop956, $pop186, $pop1108, $pop1107, $pop1106
	i32.const	$push188=, 0
	i32.const	$push187=, .L.str.186
	call    	eosio_assert@FUNCTION, $pop188, $pop187
	br      	28
.LBB172_58:
	end_block
	i64.const	$push58=, -5790280401120060142
	i64.le_s	$push59=, $2, $pop58
	br_if   	3, $pop59
	i64.const	$push60=, -5790280400999598625
	i64.gt_s	$push61=, $2, $pop60
	br_if   	7, $pop61
	i64.const	$push66=, -5790280401120060141
	i64.eq  	$push67=, $2, $pop66
	br_if   	12, $pop67
	i64.const	$push68=, -5790280401000535180
	i64.ne  	$push69=, $2, $pop68
	br_if   	26, $pop69
	call    	_ZN10test_types10types_sizeEv@FUNCTION
	br      	27
.LBB172_63:
	end_block
	i64.const	$push116=, -8665432477679290203
	i64.gt_s	$push117=, $2, $pop116
	br_if   	7, $pop117
	i64.const	$push122=, -8665432478290165179
	i64.eq  	$push123=, $2, $pop122
	br_if   	12, $pop123
	i64.const	$push124=, -8665432478272688454
	i64.ne  	$push125=, $2, $pop124
	br_if   	25, $pop125
	call    	_ZN11test_action18read_action_normalEv@FUNCTION
	br      	26
.LBB172_67:
	end_block
	i64.const	$push88=, -6575469300789510041
	i64.eq  	$push89=, $2, $pop88
	br_if   	12, $pop89
	i64.const	$push90=, -6575469300788910535
	i64.eq  	$push91=, $2, $pop90
	br_if   	13, $pop91
	i64.const	$push92=, -6575469300561148988
	i64.ne  	$push93=, $2, $pop92
	br_if   	24, $pop93
	call    	_ZN22test_compiler_builtins11test_modti3Ev@FUNCTION
	br      	25
.LBB172_71:
	end_block
	i64.const	$push108=, -8665432477288202418
	i64.eq  	$push109=, $2, $pop108
	br_if   	13, $pop109
	i64.const	$push110=, -8665432477185147987
	i64.eq  	$push111=, $2, $pop110
	br_if   	14, $pop111
	i64.const	$push112=, -8665432476560123846
	i64.ne  	$push113=, $2, $pop112
	br_if   	23, $pop113
	i64.const	$push143=, 0
	i64.store	208($10), $pop143
	i32.const	$push953=, 208
	i32.add 	$push954=, $10, $pop953
	i32.const	$push144=, 8
	i32.call	$push145=, read_action_data@FUNCTION, $pop954, $pop144
	i32.const	$push1118=, 8
	i32.eq  	$push146=, $pop145, $pop1118
	i32.const	$push147=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop146, $pop147
	i64.load	$push148=, 208($10)
	i64.call	$push149=, publication_time@FUNCTION
	i64.eq  	$push150=, $pop148, $pop149
	i32.const	$push151=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop150, $pop151
	br      	24
.LBB172_75:
	end_block
	i64.const	$push70=, -6575469299402901113
	i64.eq  	$push71=, $2, $pop70
	br_if   	14, $pop71
	i64.const	$push72=, -6575469299349951025
	i64.eq  	$push73=, $2, $pop72
	br_if   	15, $pop73
	i64.const	$push74=, -6575469299199638822
	i64.ne  	$push75=, $2, $pop74
	br_if   	22, $pop75
	i64.const	$push173=, 0
	i64.store	216($10), $pop173
	i64.const	$push1122=, 0
	i64.store	208($10), $pop1122
	i32.const	$push961=, 208
	i32.add 	$push962=, $10, $pop961
	i64.const	$push174=, 100
	i64.const	$push1121=, 0
	i64.const	$push1120=, 0
	i64.const	$push1119=, 0
	call    	__umodti3@FUNCTION, $pop962, $pop174, $pop1121, $pop1120, $pop1119
	i32.const	$push176=, 0
	i32.const	$push175=, .L.str.225
	call    	eosio_assert@FUNCTION, $pop176, $pop175
	br      	23
.LBB172_79:
	end_block
	i64.const	$push128=, -8665432478739662525
	i64.eq  	$push129=, $2, $pop128
	br_if   	15, $pop129
	i64.const	$push130=, -8665432478353100899
	i64.ne  	$push131=, $2, $pop130
	br_if   	21, $pop131
	i32.const	$push172=, 0
	i32.call	$push171=, action_data_size@FUNCTION
	i32.call	$drop=, read_action_data@FUNCTION, $pop172, $pop171
	br      	22
.LBB172_82:
	end_block
	i64.const	$push80=, -6575469299641207702
	i64.eq  	$push81=, $2, $pop80
	br_if   	15, $pop81
	i64.const	$push82=, -6575469299640583116
	i64.ne  	$push83=, $2, $pop82
	br_if   	20, $pop83
	call    	_ZN22test_compiler_builtins12test_ashlti3Ev@FUNCTION
	br      	21
.LBB172_85:
	end_block
	i64.const	$push100=, -6575469302011795919
	i64.eq  	$push101=, $2, $pop100
	br_if   	15, $pop101
	i64.const	$push102=, -6575469301755127924
	i64.ne  	$push103=, $2, $pop102
	br_if   	19, $pop103
	call    	_ZN22test_compiler_builtins12test_udivti3Ev@FUNCTION
	br      	20
.LBB172_88:
	end_block
	i64.const	$push62=, -5790280400999598624
	i64.eq  	$push63=, $2, $pop62
	br_if   	15, $pop63
	i64.const	$push64=, -5790280398527684980
	i64.ne  	$push65=, $2, $pop64
	br_if   	18, $pop65
	call    	_ZN10test_types14string_to_nameEv@FUNCTION
	br      	19
.LBB172_91:
	end_block
	i64.const	$push118=, -8665432477579625276
	i64.ne  	$push119=, $2, $pop118
	br_if   	15, $pop119
	i32.const	$push170=, 65534
	i32.call	$push169=, action_data_size@FUNCTION
	i32.call	$drop=, read_action_data@FUNCTION, $pop170, $pop169
	br      	18
.LBB172_93:
	end_block
	i64.const	$push136=, 0
	i64.store	208($10), $pop136
	i32.const	$push947=, 208
	i32.add 	$push948=, $10, $pop947
	i32.const	$push137=, 8
	i32.call	$push138=, read_action_data@FUNCTION, $pop948, $pop137
	i32.const	$push1128=, 8
	i32.eq  	$push139=, $pop138, $pop1128
	i32.const	$push140=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop139, $pop140
	i32.const	$push141=, 0
	i64.load	$push142=, 208($10)
	call    	eosio_assert_code@FUNCTION, $pop141, $pop142
	br      	17
.LBB172_94:
	end_block
	call    	_ZN22test_compiler_builtins11test_multi3Ev@FUNCTION
	br      	16
.LBB172_95:
	end_block
	call    	_ZN11test_action12require_authEv@FUNCTION
	br      	15
.LBB172_96:
	end_block
	call    	_ZN10test_types10name_classEv@FUNCTION
	br      	14
.LBB172_97:
	end_block
	i32.const	$push168=, 0
	i32.const	$push167=, .L.str.41
	call    	eosio_assert@FUNCTION, $pop168, $pop167
	br      	13
.LBB172_98:
	end_block
	call    	_ZN22test_compiler_builtins12test_lshrti3Ev@FUNCTION
	br      	12
.LBB172_99:
	end_block
	call    	_ZN22test_compiler_builtins12test_lshlti3Ev@FUNCTION
	br      	11
.LBB172_100:
	end_block
	i32.const	$push166=, 1
	i32.const	$push165=, .L.str.42
	call    	eosio_assert@FUNCTION, $pop166, $pop165
	br      	10
.LBB172_101:
	end_block
	call    	_ZN11test_action14require_noticeEyyy@FUNCTION, $0, $7, $7
	br      	9
.LBB172_102:
	end_block
	i64.const	$push181=, 0
	i64.store	216($10), $pop181
	i64.const	$push1132=, 0
	i64.store	208($10), $pop1132
	i32.const	$push957=, 208
	i32.add 	$push958=, $10, $pop957
	i64.const	$push182=, 100
	i64.const	$push1131=, 0
	i64.const	$push1130=, 0
	i64.const	$push1129=, 0
	call    	__udivti3@FUNCTION, $pop958, $pop182, $pop1131, $pop1130, $pop1129
	i32.const	$push184=, 0
	i32.const	$push183=, .L.str.186
	call    	eosio_assert@FUNCTION, $pop184, $pop183
	br      	8
.LBB172_103:
	end_block
	i64.const	$push177=, 0
	i64.store	216($10), $pop177
	i64.const	$push1136=, 0
	i64.store	208($10), $pop1136
	i32.const	$push959=, 208
	i32.add 	$push960=, $10, $pop959
	i64.const	$push178=, 100
	i64.const	$push1135=, 0
	i64.const	$push1134=, 0
	i64.const	$push1133=, 0
	call    	__modti3@FUNCTION, $pop960, $pop178, $pop1135, $pop1134, $pop1133
	i32.const	$push180=, 0
	i32.const	$push179=, .L.str.225
	call    	eosio_assert@FUNCTION, $pop180, $pop179
	br      	7
.LBB172_104:
	end_block
	i32.const	$push951=, 208
	i32.add 	$push952=, $10, $pop951
	i32.const	$push152=, 8
	i32.call	$drop=, read_action_data@FUNCTION, $pop952, $pop152
	i64.load	$push153=, 208($10)
	i64.eq  	$push154=, $pop153, $0
	i32.const	$push155=, .L.str.45
	call    	eosio_assert@FUNCTION, $pop154, $pop155
	br      	6
.LBB172_105:
	end_block
	call    	_ZN22test_compiler_builtins12test_ashrti3Ev@FUNCTION
	br      	5
.LBB172_106:
	end_block
	call    	_ZN22test_compiler_builtins12test_umodti3Ev@FUNCTION
	br      	4
.LBB172_107:
	end_block
	call    	_ZN10test_types14char_to_symbolEv@FUNCTION
	br      	3
.LBB172_108:
	end_block
	i64.const	$push120=, -8665432477679290202
	i64.ne  	$push121=, $2, $pop120
	br_if   	1, $pop121
	call    	abort@FUNCTION
	unreachable
.LBB172_110:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv@FUNCTION, $3
	unreachable
.LBB172_111:
	end_block
	i64.const	$7=, 0
	i64.const	$9=, 59
	i32.const	$5=, .L.str.339
	i64.const	$8=, 0
.LBB172_112:
	loop    	
	i64.const	$6=, 0
	block   	
	i64.const	$push1053=, 11
	i64.gt_u	$push189=, $7, $pop1053
	br_if   	0, $pop189
	block   	
	block   	
	i32.load8_s	$push1058=, 0($5)
	tee_local	$push1057=, $3=, $pop1058
	i32.const	$push1056=, -97
	i32.add 	$push190=, $pop1057, $pop1056
	i32.const	$push1055=, 255
	i32.and 	$push191=, $pop190, $pop1055
	i32.const	$push1054=, 25
	i32.gt_u	$push192=, $pop191, $pop1054
	br_if   	0, $pop192
	i32.const	$push1059=, 165
	i32.add 	$3=, $3, $pop1059
	br      	1
.LBB172_115:
	end_block
	i32.const	$push1064=, 208
	i32.add 	$push193=, $3, $pop1064
	i32.const	$push1063=, 0
	i32.const	$push1062=, -49
	i32.add 	$push194=, $3, $pop1062
	i32.const	$push1061=, 255
	i32.and 	$push195=, $pop194, $pop1061
	i32.const	$push1060=, 5
	i32.lt_u	$push196=, $pop195, $pop1060
	i32.select	$3=, $pop193, $pop1063, $pop196
.LBB172_116:
	end_block
	i32.const	$push1066=, 31
	i32.and 	$push198=, $3, $pop1066
	i64.extend_u/i32	$push199=, $pop198
	i64.const	$push1065=, 4294967295
	i64.and 	$push197=, $9, $pop1065
	i64.shl 	$6=, $pop199, $pop197
.LBB172_117:
	end_block
	i32.const	$push1072=, 1
	i32.add 	$5=, $5, $pop1072
	i64.const	$push1071=, 1
	i64.add 	$7=, $7, $pop1071
	i64.or  	$8=, $6, $8
	i64.const	$push1070=, -5
	i64.add 	$push1069=, $9, $pop1070
	tee_local	$push1068=, $9=, $pop1069
	i64.const	$push1067=, -6
	i64.ne  	$push200=, $pop1068, $pop1067
	br_if   	0, $pop200
	end_loop
	block   	
	i64.ne  	$push201=, $8, $2
	br_if   	0, $pop201
	call    	_ZN11test_action17test_dummy_actionEv@FUNCTION
	br      	1
.LBB172_120:
	end_block
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push202=, -5767735918449313230
	i64.le_s	$push203=, $2, $pop202
	br_if   	0, $pop203
	i64.const	$push204=, -696013502478964675
	i64.le_s	$push205=, $2, $pop204
	br_if   	1, $pop205
	i64.const	$push206=, -696013501204331988
	i64.gt_s	$push207=, $2, $pop206
	br_if   	3, $pop207
	i64.const	$push234=, -696013502015841439
	i64.gt_s	$push235=, $2, $pop234
	br_if   	7, $pop235
	i64.const	$push248=, -696013502305735711
	i64.le_s	$push249=, $2, $pop248
	br_if   	15, $pop249
	i64.const	$push250=, -696013502305735710
	i64.eq  	$push251=, $2, $pop250
	br_if   	31, $pop251
	i64.const	$push252=, -696013502197092929
	i64.eq  	$push253=, $2, $pop252
	br_if   	32, $pop253
	i64.const	$push254=, -696013502194763679
	i64.ne  	$push255=, $2, $pop254
	br_if   	76, $pop255
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$5=, .L.str.273
	i64.const	$8=, 0
.LBB172_129:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push1073=, 9
	i64.gt_u	$push483=, $7, $pop1073
	br_if   	0, $pop483
	i32.load8_s	$push1078=, 0($5)
	tee_local	$push1077=, $3=, $pop1078
	i32.const	$push1076=, -97
	i32.add 	$push485=, $pop1077, $pop1076
	i32.const	$push1075=, 255
	i32.and 	$push486=, $pop485, $pop1075
	i32.const	$push1074=, 25
	i32.gt_u	$push487=, $pop486, $pop1074
	br_if   	1, $pop487
	i32.const	$push1079=, 165
	i32.add 	$3=, $3, $pop1079
	br      	2
.LBB172_132:
	end_block
	i64.const	$9=, 0
	i64.const	$push1080=, 11
	i64.le_u	$push484=, $7, $pop1080
	br_if   	2, $pop484
	br      	3
.LBB172_133:
	end_block
	i32.const	$push1085=, 208
	i32.add 	$push488=, $3, $pop1085
	i32.const	$push1084=, 0
	i32.const	$push1083=, -49
	i32.add 	$push489=, $3, $pop1083
	i32.const	$push1082=, 255
	i32.and 	$push490=, $pop489, $pop1082
	i32.const	$push1081=, 5
	i32.lt_u	$push491=, $pop490, $pop1081
	i32.select	$3=, $pop488, $pop1084, $pop491
.LBB172_134:
	end_block
	i64.extend_u/i32	$push492=, $3
	i64.const	$push1087=, 56
	i64.shl 	$push493=, $pop492, $pop1087
	i64.const	$push1086=, 56
	i64.shr_s	$9=, $pop493, $pop1086
.LBB172_135:
	end_block
	i64.const	$push1089=, 31
	i64.and 	$push495=, $9, $pop1089
	i64.const	$push1088=, 4294967295
	i64.and 	$push494=, $6, $pop1088
	i64.shl 	$9=, $pop495, $pop494
.LBB172_136:
	end_block
	i32.const	$push1095=, 1
	i32.add 	$5=, $5, $pop1095
	i64.const	$push1094=, 1
	i64.add 	$7=, $7, $pop1094
	i64.or  	$8=, $9, $8
	i64.const	$push1093=, -5
	i64.add 	$push1092=, $6, $pop1093
	tee_local	$push1091=, $6=, $pop1092
	i64.const	$push1090=, -6
	i64.ne  	$push496=, $pop1091, $pop1090
	br_if   	0, $pop496
	end_loop
	call    	activate_feature@FUNCTION, $8
	br      	77
.LBB172_138:
	end_block
	i64.const	$push312=, -7587351443459632866
	i64.gt_s	$push313=, $2, $pop312
	br_if   	1, $pop313
	i64.const	$push366=, -7587351445379665367
	i64.le_s	$push367=, $2, $pop366
	br_if   	3, $pop367
	i64.const	$push368=, -7587351443887725216
	i64.gt_s	$push369=, $2, $pop368
	br_if   	7, $pop369
	i64.const	$push382=, -7587351445310893856
	i64.le_s	$push383=, $2, $pop382
	br_if   	15, $pop383
	i64.const	$push384=, -7587351445310893855
	i64.eq  	$push385=, $2, $pop384
	br_if   	32, $pop385
	i64.const	$push386=, -7587351445208375855
	i64.eq  	$push387=, $2, $pop386
	br_if   	33, $pop387
	i64.const	$push388=, -7587351444330131777
	i64.ne  	$push389=, $2, $pop388
	br_if   	75, $pop389
	i32.const	$3=, 0
	i32.const	$push624=, _ZL5test2
	i32.const	$push1097=, 0
	i32.const	$push817=, 208
	i32.add 	$push818=, $10, $pop817
	call    	sha256@FUNCTION, $pop624, $pop1097, $pop818
	i32.const	$5=, 0
.LBB172_146:
	block   	
	loop    	
	i32.const	$push1098=, _ZL12test2_ok_256
	i32.add 	$push625=, $5, $pop1098
	i32.load8_u	$push626=, 0($pop625)
	i32.const	$push819=, 208
	i32.add 	$push820=, $10, $pop819
	i32.add 	$push627=, $pop820, $5
	i32.load8_u	$push628=, 0($pop627)
	i32.ne  	$push629=, $pop626, $pop628
	br_if   	1, $pop629
	i32.const	$push1102=, 1
	i32.add 	$push1101=, $5, $pop1102
	tee_local	$push1100=, $5=, $pop1101
	i32.const	$push1099=, 31
	i32.le_u	$push630=, $pop1100, $pop1099
	br_if   	0, $pop630
	end_loop
	i32.const	$3=, 1
.LBB172_149:
	end_block
	i32.const	$push631=, .L.str.244
	call    	eosio_assert@FUNCTION, $3, $pop631
	br      	76
.LBB172_150:
	end_block
	i64.const	$push260=, -4239006003814146663
	i64.le_s	$push261=, $2, $pop260
	br_if   	3, $pop261
	i64.const	$push262=, -696013503128813882
	i64.gt_s	$push263=, $2, $pop262
	br_if   	7, $pop263
	i64.const	$push276=, -4239006002805448792
	i64.le_s	$push277=, $2, $pop276
	br_if   	15, $pop277
	i64.const	$push278=, -4239006002805448791
	i64.eq  	$push279=, $2, $pop278
	br_if   	33, $pop279
	i64.const	$push280=, -696013503327366014
	i64.eq  	$push281=, $2, $pop280
	br_if   	34, $pop281
	i64.const	$push282=, -696013503202962952
	i64.ne  	$push283=, $2, $pop282
	br_if   	74, $pop283
	i64.const	$push521=, 0
	i64.store	216($10), $pop521
	i64.const	$push522=, -1
	i64.store	208($10), $pop522
	i32.const	$push933=, 208
	i32.add 	$push934=, $10, $pop933
	i32.call	$push524=, cancel_deferred@FUNCTION, $pop934
	i32.const	$push523=, 0
	i32.ne  	$push525=, $pop524, $pop523
	i32.const	$push526=, .L.str.267
	call    	eosio_assert@FUNCTION, $pop525, $pop526
	br      	75
.LBB172_157:
	end_block
	i64.const	$push314=, -7078304395291034138
	i64.le_s	$push315=, $2, $pop314
	br_if   	3, $pop315
	i64.const	$push316=, -5767735919218491074
	i64.gt_s	$push317=, $2, $pop316
	br_if   	7, $pop317
	i64.const	$push330=, -5767735919218491584
	i64.le_s	$push331=, $2, $pop330
	br_if   	15, $pop331
	i64.const	$push332=, -5767735919218491583
	i64.eq  	$push333=, $2, $pop332
	br_if   	34, $pop333
	i64.const	$push334=, -5767735919218491512
	i64.eq  	$push335=, $2, $pop334
	br_if   	35, $pop335
	i64.const	$push336=, -5767735919218491446
	i64.ne  	$push337=, $2, $pop336
	br_if   	73, $pop337
	i64.const	$push664=, 4611123068473966592
	i64.store	216($10), $pop664
	i64.const	$push665=, 0
	i64.store	208($10), $pop665
	i64.const	$push666=, -4611439727822766080
	i64.store	40($10), $pop666
	i64.const	$push1105=, 0
	i64.store	32($10), $pop1105
	i64.const	$push667=, 4605605624503281953
	i64.store	24($10), $pop667
	i64.const	$push668=, 1865728291273748996
	i64.store	16($10), $pop668
	i32.const	$push893=, 208
	i32.add 	$push894=, $10, $pop893
	call    	printqf@FUNCTION, $pop894
	i32.const	$push669=, .L.str.50
	call    	prints@FUNCTION, $pop669
	i32.const	$push895=, 32
	i32.add 	$push896=, $10, $pop895
	call    	printqf@FUNCTION, $pop896
	i32.const	$push1104=, .L.str.50
	call    	prints@FUNCTION, $pop1104
	i32.const	$push897=, 16
	i32.add 	$push898=, $10, $pop897
	call    	printqf@FUNCTION, $pop898
	i32.const	$push1103=, .L.str.50
	call    	prints@FUNCTION, $pop1103
	br      	74
.LBB172_164:
	end_block
	i64.const	$push208=, -696013500238724021
	i64.gt_s	$push209=, $2, $pop208
	br_if   	7, $pop209
	i64.const	$push222=, -696013501027893081
	i64.le_s	$push223=, $2, $pop222
	br_if   	15, $pop223
	i64.const	$push224=, -696013501027893080
	i64.eq  	$push225=, $2, $pop224
	br_if   	35, $pop225
	i64.const	$push226=, -696013500328286318
	i64.eq  	$push227=, $2, $pop226
	br_if   	36, $pop227
	i64.const	$push228=, -696013500268167086
	i64.ne  	$push229=, $2, $pop228
	br_if   	72, $pop229
	i32.const	$push528=, 0
	i32.store	208($10), $pop528
	i32.const	$push941=, 208
	i32.add 	$push942=, $10, $pop941
	i32.const	$push529=, 4
	i32.call	$drop=, read_action_data@FUNCTION, $pop942, $pop529
	i32.call	$5=, transaction_size@FUNCTION
	i32.const	$push530=, .L.str.254
	call    	prints@FUNCTION, $pop530
	i64.extend_u/i32	$push531=, $5
	call    	printui@FUNCTION, $pop531
	i32.load	$push532=, 208($10)
	i32.call	$push533=, transaction_size@FUNCTION
	i32.eq  	$push534=, $pop532, $pop533
	i32.const	$push535=, .L.str.255
	call    	eosio_assert@FUNCTION, $pop534, $pop535
	br      	73
.LBB172_170:
	end_block
	i64.const	$push394=, -8022470633028214611
	i64.le_s	$push395=, $2, $pop394
	br_if   	7, $pop395
	i64.const	$push396=, -7587351446419414473
	i64.le_s	$push397=, $2, $pop396
	br_if   	15, $pop397
	i64.const	$push398=, -7587351446419414472
	i64.eq  	$push399=, $2, $pop398
	br_if   	36, $pop399
	i64.const	$push400=, -7587351446368672234
	i64.eq  	$push401=, $2, $pop400
	br_if   	37, $pop401
	i64.const	$push402=, -7587351445800925699
	i64.ne  	$push403=, $2, $pop402
	br_if   	71, $pop403
	i32.const	$push562=, .L.str.301
	i32.const	$push561=, 3
	i32.const	$push769=, 208
	i32.add 	$push770=, $10, $pop769
	call    	sha512@FUNCTION, $pop562, $pop561, $pop770
	i32.const	$push1117=, .L.str.301
	i32.const	$push1116=, 3
	i32.const	$push771=, 208
	i32.add 	$push772=, $10, $pop771
	call    	assert_sha512@FUNCTION, $pop1117, $pop1116, $pop772
	i32.const	$push564=, _ZL5test3
	i32.const	$push563=, 56
	i32.const	$push773=, 208
	i32.add 	$push774=, $10, $pop773
	call    	sha512@FUNCTION, $pop564, $pop563, $pop774
	i32.const	$push1115=, _ZL5test3
	i32.const	$push1114=, 56
	i32.const	$push775=, 208
	i32.add 	$push776=, $10, $pop775
	call    	assert_sha512@FUNCTION, $pop1115, $pop1114, $pop776
	i32.const	$push566=, _ZL5test4
	i32.const	$push565=, 112
	i32.const	$push777=, 208
	i32.add 	$push778=, $10, $pop777
	call    	sha512@FUNCTION, $pop566, $pop565, $pop778
	i32.const	$push1113=, _ZL5test4
	i32.const	$push1112=, 112
	i32.const	$push779=, 208
	i32.add 	$push780=, $10, $pop779
	call    	assert_sha512@FUNCTION, $pop1113, $pop1112, $pop780
	i32.const	$push568=, _ZL5test5
	i32.const	$push567=, 14
	i32.const	$push781=, 208
	i32.add 	$push782=, $10, $pop781
	call    	sha512@FUNCTION, $pop568, $pop567, $pop782
	i32.const	$push1111=, _ZL5test5
	i32.const	$push1110=, 14
	i32.const	$push783=, 208
	i32.add 	$push784=, $10, $pop783
	call    	assert_sha512@FUNCTION, $pop1111, $pop1110, $pop784
	br      	72
.LBB172_176:
	end_block
	i64.const	$push288=, -4239006005939931649
	i64.le_s	$push289=, $2, $pop288
	br_if   	7, $pop289
	i64.const	$push290=, -4239006005058986438
	i64.le_s	$push291=, $2, $pop290
	br_if   	15, $pop291
	i64.const	$push292=, -4239006005058986437
	i64.eq  	$push293=, $2, $pop292
	br_if   	37, $pop293
	i64.const	$push294=, -4239006004389140451
	i64.eq  	$push295=, $2, $pop294
	br_if   	38, $pop295
	i64.const	$push296=, -4239006003864401096
	i64.ne  	$push297=, $2, $pop296
	br_if   	70, $pop297
	i64.const	$push451=, 49995000
	call    	printi@FUNCTION, $pop451
	br      	71
.LBB172_182:
	end_block
	i64.const	$push342=, -7587351442891060093
	i64.le_s	$push343=, $2, $pop342
	br_if   	7, $pop343
	i64.const	$push344=, -7587351442575377031
	i64.le_s	$push345=, $2, $pop344
	br_if   	15, $pop345
	i64.const	$push346=, -7587351442575377030
	i64.eq  	$push347=, $2, $pop346
	br_if   	38, $pop347
	i64.const	$push348=, -7078304397416668495
	i64.eq  	$push349=, $2, $pop348
	br_if   	39, $pop349
	i64.const	$push350=, -7078304396558272662
	i64.ne  	$push351=, $2, $pop350
	br_if   	69, $pop351
	i32.const	$push883=, 208
	i32.add 	$push884=, $10, $pop883
	call    	_ZN5eosio18unpack_action_dataI29test_permission_last_used_msgEET_v@FUNCTION, $pop884
	i64.load	$push424=, 208($10)
	i64.load	$push423=, 216($10)
	i64.call	$push425=, get_permission_last_used@FUNCTION, $pop424, $pop423
	i64.load	$push426=, 224($10)
	i64.eq  	$push427=, $pop425, $pop426
	i32.const	$push428=, .L.str.275
	call    	eosio_assert@FUNCTION, $pop427, $pop428
	br      	70
.LBB172_188:
	end_block
	i64.const	$push236=, -696013501554943132
	i64.le_s	$push237=, $2, $pop236
	br_if   	15, $pop237
	i64.const	$push238=, -696013501554943131
	i64.eq  	$push239=, $2, $pop238
	br_if   	39, $pop239
	i64.const	$push240=, -696013501453266856
	i64.eq  	$push241=, $2, $pop240
	br_if   	40, $pop241
	i64.const	$push242=, -696013501288626511
	i64.ne  	$push243=, $2, $pop242
	br_if   	68, $pop243
	call    	_ZN16test_transaction32send_deferred_tx_with_dtt_actionEv@FUNCTION
	br      	69
.LBB172_193:
	end_block
	i64.const	$push370=, -7587351443763769797
	i64.le_s	$push371=, $2, $pop370
	br_if   	15, $pop371
	i64.const	$push372=, -7587351443763769796
	i64.eq  	$push373=, $2, $pop372
	br_if   	40, $pop373
	i64.const	$push374=, -7587351443732945056
	i64.eq  	$push375=, $2, $pop374
	br_if   	41, $pop375
	i64.const	$push376=, -7587351443732941913
	i64.ne  	$push377=, $2, $pop376
	br_if   	67, $pop377
	call    	_ZN11test_crypto11test_sha256Ev@FUNCTION
	br      	68
.LBB172_198:
	end_block
	i64.const	$push264=, -696013502719373095
	i64.le_s	$push265=, $2, $pop264
	br_if   	15, $pop265
	i64.const	$push266=, -696013502719373094
	i64.eq  	$push267=, $2, $pop266
	br_if   	41, $pop267
	i64.const	$push268=, -696013502690195168
	i64.eq  	$push269=, $2, $pop268
	br_if   	42, $pop269
	i64.const	$push270=, -696013502688730040
	i64.ne  	$push271=, $2, $pop270
	br_if   	66, $pop271
	call    	_ZN16test_transaction22send_transaction_emptyEyyy@FUNCTION, $0, $7, $7
	br      	67
.LBB172_203:
	end_block
	i64.const	$push318=, -5767735918831569476
	i64.le_s	$push319=, $2, $pop318
	br_if   	15, $pop319
	i64.const	$push320=, -5767735918831569475
	i64.eq  	$push321=, $2, $pop320
	br_if   	42, $pop321
	i64.const	$push322=, -5767735918500807270
	i64.eq  	$push323=, $2, $pop322
	br_if   	43, $pop323
	i64.const	$push324=, -5767735918449313234
	i64.ne  	$push325=, $2, $pop324
	br_if   	65, $pop325
	i32.const	$push700=, .L.str.47
	call    	prints@FUNCTION, $pop700
	i32.const	$push701=, 0
	call    	prints@FUNCTION, $pop701
	i32.const	$push702=, .L.str.48
	call    	prints@FUNCTION, $pop702
	i32.const	$push1124=, 0
	call    	prints@FUNCTION, $pop1124
	i32.const	$push703=, .L.str.49
	call    	prints@FUNCTION, $pop703
	i32.const	$push1123=, 0
	call    	prints@FUNCTION, $pop1123
	br      	66
.LBB172_208:
	end_block
	i64.const	$push210=, -696013499845391607
	i64.le_s	$push211=, $2, $pop210
	br_if   	15, $pop211
	i64.const	$push212=, -696013499845391606
	i64.eq  	$push213=, $2, $pop212
	br_if   	43, $pop213
	i64.const	$push214=, -696013499608977787
	i64.eq  	$push215=, $2, $pop214
	br_if   	44, $pop215
	i64.const	$push216=, -187209993639507722
	i64.ne  	$push217=, $2, $pop216
	br_if   	64, $pop217
	call    	_ZN15test_datastream10test_basicEv@FUNCTION
	br      	65
.LBB172_213:
	end_block
	i64.const	$push408=, -8022470633505015025
	i64.gt_s	$push409=, $2, $pop408
	br_if   	15, $pop409
	i64.const	$push414=, -8022470634635220200
	i64.eq  	$push415=, $2, $pop414
	br_if   	44, $pop415
	i64.const	$push416=, -8022470633818130162
	i64.ne  	$push417=, $2, $pop416
	br_if   	63, $pop417
	i32.const	$push456=, 1
	i32.const	$push455=, .L.str.171
	call    	eosio_assert@FUNCTION, $pop456, $pop455
	i32.const	$push1125=, 1
	i32.const	$push457=, .L.str.172
	call    	eosio_assert@FUNCTION, $pop1125, $pop457
	br      	64
.LBB172_217:
	end_block
	i64.const	$push302=, -4239006006334808644
	i64.gt_s	$push303=, $2, $pop302
	br_if   	15, $pop303
	i64.const	$push308=, -5767735918449313229
	i64.eq  	$push309=, $2, $pop308
	br_if   	44, $pop309
	i64.const	$push310=, -5767735918449313228
	i64.ne  	$push311=, $2, $pop310
	br_if   	62, $pop311
	i64.const	$push691=, 0
	call    	printi@FUNCTION, $pop691
	i64.const	$push692=, 556644
	call    	printi@FUNCTION, $pop692
	i64.const	$push693=, -1
	call    	printi@FUNCTION, $pop693
	br      	63
.LBB172_221:
	end_block
	i64.const	$push356=, -7587351443299599511
	i64.gt_s	$push357=, $2, $pop356
	br_if   	15, $pop357
	i64.const	$push362=, -7587351443459632865
	i64.eq  	$push363=, $2, $pop362
	br_if   	44, $pop363
	i64.const	$push364=, -7587351443325747446
	i64.ne  	$push365=, $2, $pop364
	br_if   	61, $pop365
	i32.const	$push555=, .L.str.301
	i32.const	$push554=, 3
	i32.const	$push851=, 208
	i32.add 	$push852=, $10, $pop851
	call    	ripemd160@FUNCTION, $pop555, $pop554, $pop852
	i32.load8_u	$push557=, 208($10)
	i32.const	$push556=, -1
	i32.xor 	$push558=, $pop557, $pop556
	i32.store8	208($10), $pop558
	i32.const	$push1127=, .L.str.301
	i32.const	$push1126=, 3
	i32.const	$push853=, 208
	i32.add 	$push854=, $10, $pop853
	call    	assert_ripemd160@FUNCTION, $pop1127, $pop1126, $pop854
	i32.const	$push560=, 0
	i32.const	$push559=, .L.str.247
	call    	eosio_assert@FUNCTION, $pop560, $pop559
	br      	62
.LBB172_225:
	end_block
	i64.const	$push256=, -696013502478964674
	i64.eq  	$push257=, $2, $pop256
	br_if   	44, $pop257
	i64.const	$push258=, -696013502330537453
	i64.ne  	$push259=, $2, $pop258
	br_if   	60, $pop259
	call    	_ZN16test_transaction23send_action_inline_failEv@FUNCTION
	br      	61
.LBB172_228:
	end_block
	i64.const	$push390=, -7587351445379665366
	i64.eq  	$push391=, $2, $pop390
	br_if   	44, $pop391
	i64.const	$push392=, -7587351445375451046
	i64.ne  	$push393=, $2, $pop392
	br_if   	59, $pop393
	i32.const	$push592=, .L.str.301
	i32.const	$push591=, 3
	i32.const	$push791=, 208
	i32.add 	$push792=, $10, $pop791
	call    	sha256@FUNCTION, $pop592, $pop591, $pop792
	i32.const	$push1144=, .L.str.301
	i32.const	$push1143=, 3
	i32.const	$push793=, 208
	i32.add 	$push794=, $10, $pop793
	call    	assert_sha256@FUNCTION, $pop1144, $pop1143, $pop794
	i32.const	$push594=, _ZL5test3
	i32.const	$push593=, 56
	i32.const	$push795=, 208
	i32.add 	$push796=, $10, $pop795
	call    	sha256@FUNCTION, $pop594, $pop593, $pop796
	i32.const	$push1142=, _ZL5test3
	i32.const	$push1141=, 56
	i32.const	$push797=, 208
	i32.add 	$push798=, $10, $pop797
	call    	assert_sha256@FUNCTION, $pop1142, $pop1141, $pop798
	i32.const	$push596=, _ZL5test4
	i32.const	$push595=, 112
	i32.const	$push799=, 208
	i32.add 	$push800=, $10, $pop799
	call    	sha256@FUNCTION, $pop596, $pop595, $pop800
	i32.const	$push1140=, _ZL5test4
	i32.const	$push1139=, 112
	i32.const	$push801=, 208
	i32.add 	$push802=, $10, $pop801
	call    	assert_sha256@FUNCTION, $pop1140, $pop1139, $pop802
	i32.const	$push598=, _ZL5test5
	i32.const	$push597=, 14
	i32.const	$push803=, 208
	i32.add 	$push804=, $10, $pop803
	call    	sha256@FUNCTION, $pop598, $pop597, $pop804
	i32.const	$push1138=, _ZL5test5
	i32.const	$push1137=, 14
	i32.const	$push805=, 208
	i32.add 	$push806=, $10, $pop805
	call    	assert_sha256@FUNCTION, $pop1138, $pop1137, $pop806
	br      	60
.LBB172_231:
	end_block
	i64.const	$push284=, -4239006003814146662
	i64.eq  	$push285=, $2, $pop284
	br_if   	44, $pop285
	i64.const	$push286=, -4239006002882681946
	i64.ne  	$push287=, $2, $pop286
	br_if   	58, $pop287
	i32.const	$push431=, 20000000
	i32.call	$push432=, _Znaj@FUNCTION, $pop431
	i32.const	$push1145=, 20000000
	i32.const	$push931=, 208
	i32.add 	$push932=, $10, $pop931
	call    	ripemd160@FUNCTION, $pop432, $pop1145, $pop932
	br      	59
.LBB172_234:
	end_block
	i64.const	$push338=, -7078304395291034137
	i64.eq  	$push339=, $2, $pop338
	br_if   	44, $pop339
	i64.const	$push340=, -5823726059754506790
	i64.ne  	$push341=, $2, $pop340
	br_if   	57, $pop341
	i32.const	$push885=, 208
	i32.add 	$push886=, $10, $pop885
	i32.const	$push1147=, 169
	i32.call	$drop=, read_action_data@FUNCTION, $pop886, $pop1147
	i32.load8_u	$push472=, 208($10)
	i32.const	$push471=, 21
	i32.eq  	$push473=, $pop472, $pop471
	i32.const	$push474=, .L.str.248
	call    	eosio_assert@FUNCTION, $pop473, $pop474
	i32.const	$5=, 1
	i32.const	$push887=, 32
	i32.add 	$push888=, $10, $pop887
	i32.const	$push1146=, 1
	i32.or  	$push475=, $pop888, $pop1146
	i32.const	$push476=, 168
	i32.call	$drop=, get_active_producers@FUNCTION, $pop475, $pop476
.LBB172_237:
	loop    	
	i32.const	$push891=, 32
	i32.add 	$push892=, $10, $pop891
	i32.add 	$push479=, $pop892, $5
	i64.load	$push480=, 0($pop479):p2align=0
	i32.const	$push889=, 208
	i32.add 	$push890=, $10, $pop889
	i32.add 	$push477=, $pop890, $5
	i64.load	$push478=, 0($pop477):p2align=0
	i64.eq  	$push481=, $pop480, $pop478
	i32.const	$push1152=, .L.str.249
	call    	eosio_assert@FUNCTION, $pop481, $pop1152
	i32.const	$push1151=, 8
	i32.add 	$push1150=, $5, $pop1151
	tee_local	$push1149=, $5=, $pop1150
	i32.const	$push1148=, 169
	i32.ne  	$push482=, $pop1149, $pop1148
	br_if   	0, $pop482
	br      	59
.LBB172_238:
	end_loop
	end_block
	i64.const	$push230=, -696013501204331987
	i64.eq  	$push231=, $2, $pop230
	br_if   	44, $pop231
	i64.const	$push232=, -696013501174438164
	i64.ne  	$push233=, $2, $pop232
	br_if   	56, $pop233
	i32.const	$push939=, 208
	i32.add 	$push940=, $10, $pop939
	i32.const	$push536=, 4
	i32.call	$drop=, read_action_data@FUNCTION, $pop940, $pop536
	i32.load	$push537=, 208($10)
	i32.call	$push538=, tapos_block_prefix@FUNCTION
	i32.eq  	$push539=, $pop537, $pop538
	i32.const	$push540=, .L.str.251
	call    	eosio_assert@FUNCTION, $pop539, $pop540
	br      	57
.LBB172_241:
	end_block
	i64.const	$push404=, -8022470633028214610
	i64.eq  	$push405=, $2, $pop404
	br_if   	44, $pop405
	i64.const	$push406=, -8022470632789685404
	i64.ne  	$push407=, $2, $pop406
	br_if   	55, $pop407
	i32.const	$push465=, 1
	i32.const	$push464=, .L.str.161
	call    	eosio_assert@FUNCTION, $pop465, $pop464
	i32.const	$push1157=, 1
	i32.const	$push466=, .L.str.162
	call    	eosio_assert@FUNCTION, $pop1157, $pop466
	i32.const	$push1156=, 1
	i32.const	$push467=, .L.str.163
	call    	eosio_assert@FUNCTION, $pop1156, $pop467
	i32.const	$push1155=, 1
	i32.const	$push468=, .L.str.164
	call    	eosio_assert@FUNCTION, $pop1155, $pop468
	i32.const	$push1154=, 1
	i32.const	$push469=, .L.str.165
	call    	eosio_assert@FUNCTION, $pop1154, $pop469
	i32.const	$push1153=, 1
	i32.const	$push470=, .L.str.166
	call    	eosio_assert@FUNCTION, $pop1153, $pop470
	br      	56
.LBB172_244:
	end_block
	i64.const	$push298=, -4239006005939931648
	i64.eq  	$push299=, $2, $pop298
	br_if   	44, $pop299
	i64.const	$push300=, -4239006005769928793
	i64.ne  	$push301=, $2, $pop300
	br_if   	54, $pop301
	i32.const	$push433=, 20000000
	i32.call	$push434=, _Znaj@FUNCTION, $pop433
	i32.const	$push1158=, 20000000
	i32.const	$push923=, 208
	i32.add 	$push924=, $10, $pop923
	call    	assert_sha512@FUNCTION, $pop434, $pop1158, $pop924
	br      	55
.LBB172_247:
	end_block
	i64.const	$push352=, -7587351442891060092
	i64.eq  	$push353=, $2, $pop352
	br_if   	44, $pop353
	i64.const	$push354=, -7587351442863559481
	i64.ne  	$push355=, $2, $pop354
	br_if   	53, $pop355
	call    	_ZN11test_crypto9test_sha1Ev@FUNCTION
	br      	54
.LBB172_250:
	end_block
	i64.const	$push244=, -696013502015841438
	i64.eq  	$push245=, $2, $pop244
	br_if   	44, $pop245
	i64.const	$push246=, -696013501581368598
	i64.ne  	$push247=, $2, $pop246
	br_if   	52, $pop247
	i32.const	$push937=, 208
	i32.add 	$push938=, $10, $pop937
	i32.const	$push541=, 4
	i32.call	$drop=, read_action_data@FUNCTION, $pop938, $pop541
	i32.load	$push542=, 208($10)
	i32.call	$push543=, tapos_block_num@FUNCTION
	i32.eq  	$push544=, $pop542, $pop543
	i32.const	$push545=, .L.str.252
	call    	eosio_assert@FUNCTION, $pop544, $pop545
	br      	53
.LBB172_253:
	end_block
	i64.const	$push378=, -7587351443887725215
	i64.eq  	$push379=, $2, $pop378
	br_if   	44, $pop379
	i64.const	$push380=, -7587351443788808834
	i64.ne  	$push381=, $2, $pop380
	br_if   	51, $pop381
	i32.const	$push837=, 208
	i32.add 	$push838=, $10, $pop837
	i32.const	$push654=, 144
	i32.call	$drop=, read_action_data@FUNCTION, $pop838, $pop654
	i32.const	$push841=, 208
	i32.add 	$push842=, $10, $pop841
	i32.const	$push839=, 208
	i32.add 	$push840=, $10, $pop839
	i32.const	$push655=, 66
	i32.add 	$push656=, $pop840, $pop655
	i32.const	$push1160=, 66
	i32.const	$push843=, 32
	i32.add 	$push844=, $10, $pop843
	i32.const	$push1159=, 34
	i32.call	$drop=, recover_key@FUNCTION, $pop842, $pop656, $pop1160, $pop844, $pop1159
	i32.const	$push657=, 240
	i32.add 	$3=, $10, $pop657
	i32.const	$5=, 0
.LBB172_256:
	loop    	
	block   	
	i32.const	$push845=, 32
	i32.add 	$push846=, $10, $pop845
	i32.add 	$push660=, $pop846, $5
	i32.load8_u	$push661=, 0($pop660)
	i32.add 	$push658=, $3, $5
	i32.load8_u	$push659=, 0($pop658)
	i32.eq  	$push662=, $pop661, $pop659
	br_if   	0, $pop662
	i32.const	$push1162=, 0
	i32.const	$push1161=, .L.str.226
	call    	eosio_assert@FUNCTION, $pop1162, $pop1161
.LBB172_258:
	end_block
	i32.const	$push1166=, 1
	i32.add 	$push1165=, $5, $pop1166
	tee_local	$push1164=, $5=, $pop1165
	i32.const	$push1163=, 34
	i32.ne  	$push663=, $pop1164, $pop1163
	br_if   	0, $pop663
	br      	53
.LBB172_259:
	end_loop
	end_block
	i64.const	$push272=, -696013503128813881
	i64.eq  	$push273=, $2, $pop272
	br_if   	44, $pop273
	i64.const	$push274=, -696013502727104654
	i64.ne  	$push275=, $2, $pop274
	br_if   	50, $pop275
	call    	_ZN16test_transaction17send_action_emptyEv@FUNCTION
	br      	51
.LBB172_262:
	end_block
	i64.const	$push326=, -5767735919218491073
	i64.eq  	$push327=, $2, $pop326
	br_if   	44, $pop327
	i64.const	$push328=, -5767735918947814449
	i64.ne  	$push329=, $2, $pop328
	br_if   	49, $pop329
	i64.const	$push682=, 0
	i64.store	216($10), $pop682
	i64.const	$push683=, 1
	i64.store	208($10), $pop683
	i64.const	$push1172=, 0
	i64.store	40($10), $pop1172
	i64.const	$push1171=, 0
	i64.store	32($10), $pop1171
	i64.const	$push684=, -9223372036854775808
	i64.store	24($10), $pop684
	i64.const	$push1170=, 0
	i64.store	16($10), $pop1170
	i64.const	$push685=, -1
	i64.store	8($10), $pop685
	i64.const	$push686=, -87654323456
	i64.store	0($10), $pop686
	i32.const	$push899=, 208
	i32.add 	$push900=, $10, $pop899
	call    	printi128@FUNCTION, $pop900
	i32.const	$push687=, .L.str.50
	call    	prints@FUNCTION, $pop687
	i32.const	$push901=, 32
	i32.add 	$push902=, $10, $pop901
	call    	printi128@FUNCTION, $pop902
	i32.const	$push1169=, .L.str.50
	call    	prints@FUNCTION, $pop1169
	i32.const	$push903=, 16
	i32.add 	$push904=, $10, $pop903
	call    	printi128@FUNCTION, $pop904
	i32.const	$push1168=, .L.str.50
	call    	prints@FUNCTION, $pop1168
	call    	printi128@FUNCTION, $10
	i32.const	$push1167=, .L.str.50
	call    	prints@FUNCTION, $pop1167
	br      	50
.LBB172_265:
	end_block
	i64.const	$push218=, -696013500238724020
	i64.eq  	$push219=, $2, $pop218
	br_if   	44, $pop219
	i64.const	$push220=, -696013500020145514
	i64.ne  	$push221=, $2, $pop220
	br_if   	48, $pop221
	i32.const	$push943=, 208
	i32.add 	$push944=, $10, $pop943
	i32.const	$push515=, 0
	i32.const	$push514=, 128
	i32.call	$drop=, memset@FUNCTION, $pop944, $pop515, $pop514
	i32.const	$push1174=, 0
	i32.const	$push945=, 208
	i32.add 	$push946=, $10, $pop945
	i32.const	$push1173=, 128
	i32.call	$drop=, get_context_free_data@FUNCTION, $pop1174, $pop946, $pop1173
	br      	49
.LBB172_268:
	end_block
	i64.const	$push410=, -8022470633505015024
	i64.eq  	$push411=, $2, $pop410
	br_if   	44, $pop411
	i64.const	$push412=, -8022470633369446971
	i64.ne  	$push413=, $2, $pop412
	br_if   	47, $pop413
	call    	_ZN15test_fixedpoint13test_divisionEv@FUNCTION
	br      	48
.LBB172_271:
	end_block
	i64.const	$push304=, -4239006006334808643
	i64.eq  	$push305=, $2, $pop304
	br_if   	44, $pop305
	i64.const	$push306=, -4239006006118930912
	i64.ne  	$push307=, $2, $pop306
	br_if   	46, $pop307
	i32.const	$push437=, 20000000
	i32.call	$push438=, _Znaj@FUNCTION, $pop437
	i32.const	$push1175=, 20000000
	i32.const	$push919=, 208
	i32.add 	$push920=, $10, $pop919
	call    	assert_sha256@FUNCTION, $pop438, $pop1175, $pop920
	br      	47
.LBB172_274:
	end_block
	i64.const	$push358=, -7587351443299599510
	i64.eq  	$push359=, $2, $pop358
	br_if   	44, $pop359
	i64.const	$push360=, -7587351442991046735
	i64.ne  	$push361=, $2, $pop360
	br_if   	45, $pop361
	i32.const	$push585=, .L.str.301
	i32.const	$push584=, 3
	i32.const	$push857=, 208
	i32.add 	$push858=, $10, $pop857
	call    	sha1@FUNCTION, $pop585, $pop584, $pop858
	i32.load8_u	$push587=, 208($10)
	i32.const	$push586=, -1
	i32.xor 	$push588=, $pop587, $pop586
	i32.store8	208($10), $pop588
	i32.const	$push1177=, .L.str.301
	i32.const	$push1176=, 3
	i32.const	$push859=, 208
	i32.add 	$push860=, $10, $pop859
	call    	assert_sha1@FUNCTION, $pop1177, $pop1176, $pop860
	i32.const	$push590=, 0
	i32.const	$push589=, .L.str.247
	call    	eosio_assert@FUNCTION, $pop590, $pop589
	br      	46
.LBB172_277:
	end_block
	call    	_ZN16test_transaction16send_transactionEyyy@FUNCTION, $0, $7, $7
	br      	45
.LBB172_278:
	end_block
	call    	_ZN16test_transaction19send_cf_action_failEv@FUNCTION
	br      	44
.LBB172_279:
	end_block
	i32.const	$push807=, 208
	i32.add 	$push808=, $10, $pop807
	i32.const	$push640=, 144
	i32.call	$drop=, read_action_data@FUNCTION, $pop808, $pop640
	i32.const	$push811=, 208
	i32.add 	$push812=, $10, $pop811
	i32.const	$push809=, 208
	i32.add 	$push810=, $10, $pop809
	i32.const	$push643=, 66
	i32.add 	$push644=, $pop810, $pop643
	i32.const	$push1178=, 66
	i32.const	$push641=, 240
	i32.add 	$push642=, $10, $pop641
	i32.const	$push645=, 34
	call    	assert_recover_key@FUNCTION, $pop812, $pop644, $pop1178, $pop642, $pop645
	i32.const	$push647=, 0
	i32.const	$push646=, .L.str.225
	call    	eosio_assert@FUNCTION, $pop647, $pop646
	br      	43
.LBB172_280:
	end_block
	i32.const	$push600=, .L.str.301
	i32.const	$push599=, 3
	i32.const	$push813=, 208
	i32.add 	$push814=, $10, $pop813
	call    	sha256@FUNCTION, $pop600, $pop599, $pop814
	i32.load8_u	$push602=, 208($10)
	i32.const	$push601=, -1
	i32.xor 	$push603=, $pop602, $pop601
	i32.store8	208($10), $pop603
	i32.const	$push1180=, .L.str.301
	i32.const	$push1179=, 3
	i32.const	$push815=, 208
	i32.add 	$push816=, $10, $pop815
	call    	assert_sha256@FUNCTION, $pop1180, $pop1179, $pop816
	i32.const	$push605=, 0
	i32.const	$push604=, .L.str.247
	call    	eosio_assert@FUNCTION, $pop605, $pop604
	br      	42
.LBB172_281:
	end_block
	i64.const	$6=, 0
	i64.const	$9=, 1
	i64.const	$7=, 0
.LBB172_282:
	loop    	
	copy_local	$push1188=, $6
	tee_local	$push1187=, $8=, $pop1188
	i64.const	$push1186=, 4294967295
	i64.and 	$push445=, $pop1187, $pop1186
	i64.add 	$6=, $pop445, $7
	i64.const	$push1185=, 1
	i64.add 	$push0=, $7, $pop1185
	copy_local	$7=, $pop0
	i64.const	$push1184=, -1
	i64.add 	$push1183=, $9, $pop1184
	tee_local	$push1182=, $9=, $pop1183
	i64.const	$push1181=, 8446744073709551617
	i64.ne  	$push446=, $pop1182, $pop1181
	br_if   	0, $pop446
	end_loop
	i64.sub 	$push447=, $8, $9
	i64.const	$push448=, 32
	i64.shl 	$push449=, $pop447, $pop448
	i64.const	$push1189=, 32
	i64.shr_s	$push450=, $pop449, $pop1189
	call    	printi@FUNCTION, $pop450
	br      	41
.LBB172_284:
	end_block
	call    	_ZN16test_transaction14send_cf_actionEv@FUNCTION
	br      	40
.LBB172_285:
	end_block
	i64.const	$push688=, 0
	call    	printui@FUNCTION, $pop688
	i64.const	$push689=, 556644
	call    	printui@FUNCTION, $pop689
	i64.const	$push690=, -1
	call    	printui@FUNCTION, $pop690
	br      	39
.LBB172_286:
	end_block
	f32.const	$push674=, 0x1p-1
	call    	printsf@FUNCTION, $pop674
	i32.const	$push675=, .L.str.50
	call    	prints@FUNCTION, $pop675
	f32.const	$push676=, -0x1.ep1
	call    	printsf@FUNCTION, $pop676
	i32.const	$push1191=, .L.str.50
	call    	prints@FUNCTION, $pop1191
	f32.const	$push677=, 0x1.65e9f8p-21
	call    	printsf@FUNCTION, $pop677
	i32.const	$push1190=, .L.str.50
	call    	prints@FUNCTION, $pop1190
	br      	38
.LBB172_287:
	end_block
	i32.const	$push527=, .L.str.266
	call    	prints@FUNCTION, $pop527
	br      	37
.LBB172_288:
	end_block
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$5=, .L.str.273
	i64.const	$8=, 0
.LBB172_289:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push1192=, 9
	i64.gt_u	$push497=, $7, $pop1192
	br_if   	0, $pop497
	i32.load8_s	$push1197=, 0($5)
	tee_local	$push1196=, $3=, $pop1197
	i32.const	$push1195=, -97
	i32.add 	$push499=, $pop1196, $pop1195
	i32.const	$push1194=, 255
	i32.and 	$push500=, $pop499, $pop1194
	i32.const	$push1193=, 25
	i32.gt_u	$push501=, $pop500, $pop1193
	br_if   	1, $pop501
	i32.const	$push1198=, 165
	i32.add 	$3=, $3, $pop1198
	br      	2
.LBB172_292:
	end_block
	i64.const	$9=, 0
	i64.const	$push1199=, 11
	i64.le_u	$push498=, $7, $pop1199
	br_if   	2, $pop498
	br      	3
.LBB172_293:
	end_block
	i32.const	$push1204=, 208
	i32.add 	$push502=, $3, $pop1204
	i32.const	$push1203=, 0
	i32.const	$push1202=, -49
	i32.add 	$push503=, $3, $pop1202
	i32.const	$push1201=, 255
	i32.and 	$push504=, $pop503, $pop1201
	i32.const	$push1200=, 5
	i32.lt_u	$push505=, $pop504, $pop1200
	i32.select	$3=, $pop502, $pop1203, $pop505
.LBB172_294:
	end_block
	i64.extend_u/i32	$push506=, $3
	i64.const	$push1206=, 56
	i64.shl 	$push507=, $pop506, $pop1206
	i64.const	$push1205=, 56
	i64.shr_s	$9=, $pop507, $pop1205
.LBB172_295:
	end_block
	i64.const	$push1208=, 31
	i64.and 	$push509=, $9, $pop1208
	i64.const	$push1207=, 4294967295
	i64.and 	$push508=, $6, $pop1207
	i64.shl 	$9=, $pop509, $pop508
.LBB172_296:
	end_block
	i32.const	$push1214=, 1
	i32.add 	$5=, $5, $pop1214
	i64.const	$push1213=, 1
	i64.add 	$7=, $7, $pop1213
	i64.or  	$8=, $9, $8
	i64.const	$push1212=, -5
	i64.add 	$push1211=, $6, $pop1212
	tee_local	$push1210=, $6=, $pop1211
	i64.const	$push1209=, -6
	i64.ne  	$push510=, $pop1210, $pop1209
	br_if   	0, $pop510
	end_loop
	i32.call	$push511=, is_feature_active@FUNCTION, $8
	i32.eqz 	$push512=, $pop511
	i32.const	$push513=, .L.str.274
	call    	eosio_assert@FUNCTION, $pop512, $pop513
	br      	36
.LBB172_298:
	end_block
	i32.const	$3=, 0
	i32.const	$push616=, _ZL5test2
	i32.const	$push1215=, 0
	i32.const	$push761=, 208
	i32.add 	$push762=, $10, $pop761
	call    	sha512@FUNCTION, $pop616, $pop1215, $pop762
	i32.const	$5=, 0
.LBB172_299:
	block   	
	loop    	
	i32.const	$push1216=, _ZL12test2_ok_512
	i32.add 	$push617=, $5, $pop1216
	i32.load8_u	$push618=, 0($pop617)
	i32.const	$push763=, 208
	i32.add 	$push764=, $10, $pop763
	i32.add 	$push619=, $pop764, $5
	i32.load8_u	$push620=, 0($pop619)
	i32.ne  	$push621=, $pop618, $pop620
	br_if   	1, $pop621
	i32.const	$push1220=, 1
	i32.add 	$push1219=, $5, $pop1220
	tee_local	$push1218=, $5=, $pop1219
	i32.const	$push1217=, 63
	i32.le_u	$push622=, $pop1218, $pop1217
	br_if   	0, $pop622
	end_loop
	i32.const	$3=, 1
.LBB172_302:
	end_block
	i32.const	$push623=, .L.str.245
	call    	eosio_assert@FUNCTION, $3, $pop623
	br      	35
.LBB172_303:
	end_block
	i32.const	$push570=, .L.str.301
	i32.const	$push569=, 3
	i32.const	$push765=, 208
	i32.add 	$push766=, $10, $pop765
	call    	sha512@FUNCTION, $pop570, $pop569, $pop766
	i32.load8_u	$push572=, 208($10)
	i32.const	$push571=, -1
	i32.xor 	$push573=, $pop572, $pop571
	i32.store8	208($10), $pop573
	i32.const	$push1222=, .L.str.301
	i32.const	$push1221=, 3
	i32.const	$push767=, 208
	i32.add 	$push768=, $10, $pop767
	call    	assert_sha512@FUNCTION, $pop1222, $pop1221, $pop768
	i32.const	$push575=, 0
	i32.const	$push574=, .L.str.247
	call    	eosio_assert@FUNCTION, $pop575, $pop574
	br      	34
.LBB172_304:
	end_block
	i32.const	$push429=, 20000000
	i32.call	$push430=, _Znaj@FUNCTION, $pop429
	i32.const	$push1223=, 20000000
	i32.const	$push925=, 208
	i32.add 	$push926=, $10, $pop925
	call    	assert_ripemd160@FUNCTION, $pop430, $pop1223, $pop926
	br      	33
.LBB172_305:
	end_block
	i32.const	$push439=, 20000000
	i32.call	$push440=, _Znaj@FUNCTION, $pop439
	i32.const	$push1224=, 20000000
	i32.const	$push927=, 208
	i32.add 	$push928=, $10, $pop927
	call    	sha256@FUNCTION, $pop440, $pop1224, $pop928
	br      	32
.LBB172_306:
	end_block
	i32.const	$push577=, .L.str.301
	i32.const	$push576=, 3
	i32.const	$push865=, 208
	i32.add 	$push866=, $10, $pop865
	call    	sha1@FUNCTION, $pop577, $pop576, $pop866
	i32.const	$push1232=, .L.str.301
	i32.const	$push1231=, 3
	i32.const	$push867=, 208
	i32.add 	$push868=, $10, $pop867
	call    	assert_sha1@FUNCTION, $pop1232, $pop1231, $pop868
	i32.const	$push579=, _ZL5test3
	i32.const	$push578=, 56
	i32.const	$push869=, 208
	i32.add 	$push870=, $10, $pop869
	call    	sha1@FUNCTION, $pop579, $pop578, $pop870
	i32.const	$push1230=, _ZL5test3
	i32.const	$push1229=, 56
	i32.const	$push871=, 208
	i32.add 	$push872=, $10, $pop871
	call    	assert_sha1@FUNCTION, $pop1230, $pop1229, $pop872
	i32.const	$push581=, _ZL5test4
	i32.const	$push580=, 112
	i32.const	$push873=, 208
	i32.add 	$push874=, $10, $pop873
	call    	sha1@FUNCTION, $pop581, $pop580, $pop874
	i32.const	$push1228=, _ZL5test4
	i32.const	$push1227=, 112
	i32.const	$push875=, 208
	i32.add 	$push876=, $10, $pop875
	call    	assert_sha1@FUNCTION, $pop1228, $pop1227, $pop876
	i32.const	$push583=, _ZL5test5
	i32.const	$push582=, 14
	i32.const	$push877=, 208
	i32.add 	$push878=, $10, $pop877
	call    	sha1@FUNCTION, $pop583, $pop582, $pop878
	i32.const	$push1226=, _ZL5test5
	i32.const	$push1225=, 14
	i32.const	$push879=, 208
	i32.add 	$push880=, $10, $pop879
	call    	assert_sha1@FUNCTION, $pop1226, $pop1225, $pop880
	br      	31
.LBB172_307:
	end_block
	i32.const	$push881=, 208
	i32.add 	$push882=, $10, $pop881
	call    	_ZN5eosio18unpack_action_dataI29test_permission_last_used_msgEET_v@FUNCTION, $pop882
	i64.load	$push418=, 208($10)
	i64.call	$push419=, get_account_creation_time@FUNCTION, $pop418
	i64.load	$push420=, 224($10)
	i64.eq  	$push421=, $pop419, $pop420
	i32.const	$push422=, .L.str.276
	call    	eosio_assert@FUNCTION, $pop421, $pop422
	br      	30
.LBB172_308:
	end_block
	call    	_ZN16test_transaction21test_read_transactionEv@FUNCTION
	br      	29
.LBB172_309:
	end_block
	call    	_ZN16test_transaction11send_actionEv@FUNCTION
	br      	28
.LBB172_310:
	end_block
	call    	_ZN11test_crypto14test_ripemd160Ev@FUNCTION
	br      	27
.LBB172_311:
	end_block
	call    	_ZN11test_crypto11test_sha512Ev@FUNCTION
	br      	26
.LBB172_312:
	end_block
	call    	_ZN16test_transaction17send_action_largeEv@FUNCTION
	br      	25
.LBB172_313:
	end_block
	call    	_ZN16test_transaction22send_transaction_largeEyyy@FUNCTION, $0, $7, $7
	br      	24
.LBB172_314:
	end_block
	i32.const	$push694=, 25185
	i32.store16	208($10), $pop694
	i32.const	$push905=, 208
	i32.add 	$push906=, $10, $pop905
	i32.const	$push695=, 2
	call    	prints_l@FUNCTION, $pop906, $pop695
	i32.const	$push907=, 208
	i32.add 	$push908=, $10, $pop907
	i32.const	$push696=, 1
	call    	prints_l@FUNCTION, $pop908, $pop696
	i32.const	$push909=, 208
	i32.add 	$push910=, $10, $pop909
	i32.const	$push697=, 0
	call    	prints_l@FUNCTION, $pop910, $pop697
	i32.const	$push699=, .L.str.28
	i32.const	$push698=, 4
	call    	prints_l@FUNCTION, $pop699, $pop698
	br      	23
.LBB172_315:
	end_block
	i64.const	$push678=, -1
	i64.store	216($10), $pop678
	i64.const	$push1237=, -1
	i64.store	208($10), $pop1237
	i64.const	$push679=, 0
	i64.store	40($10), $pop679
	i64.const	$push1236=, 0
	i64.store	32($10), $pop1236
	i64.const	$push1235=, 0
	i64.store	24($10), $pop1235
	i64.const	$push680=, 87654323456
	i64.store	16($10), $pop680
	i32.const	$push911=, 208
	i32.add 	$push912=, $10, $pop911
	call    	printui128@FUNCTION, $pop912
	i32.const	$push681=, .L.str.50
	call    	prints@FUNCTION, $pop681
	i32.const	$push913=, 32
	i32.add 	$push914=, $10, $pop913
	call    	printui128@FUNCTION, $pop914
	i32.const	$push1234=, .L.str.50
	call    	prints@FUNCTION, $pop1234
	i32.const	$push915=, 16
	i32.add 	$push916=, $10, $pop915
	call    	printui128@FUNCTION, $pop916
	i32.const	$push1233=, .L.str.50
	call    	prints@FUNCTION, $pop1233
	br      	22
.LBB172_316:
	end_block
	call    	_ZN16test_transaction12stateful_apiEv@FUNCTION
	br      	21
.LBB172_317:
	end_block
	call    	_ZN16test_transaction38send_transaction_trigger_error_handlerEyyy@FUNCTION, $0, $7, $7
	br      	20
.LBB172_318:
	end_block
	i32.const	$push462=, 1
	i32.const	$push461=, .L.str.167
	call    	eosio_assert@FUNCTION, $pop462, $pop461
	i32.const	$push1238=, 1
	i32.const	$push463=, .L.str.168
	call    	eosio_assert@FUNCTION, $pop1238, $pop463
	br      	19
.LBB172_319:
	end_block
	call    	_ZN10test_print11test_printnEv@FUNCTION
	br      	18
.LBB172_320:
	end_block
	i32.const	$3=, 0
	i32.const	$push632=, _ZL5test2
	i32.const	$push1239=, 0
	i32.const	$push847=, 208
	i32.add 	$push848=, $10, $pop847
	call    	sha1@FUNCTION, $pop632, $pop1239, $pop848
	i32.const	$5=, 0
.LBB172_321:
	block   	
	loop    	
	i32.const	$push1240=, _ZL10test2_ok_1
	i32.add 	$push633=, $5, $pop1240
	i32.load8_u	$push634=, 0($pop633)
	i32.const	$push849=, 208
	i32.add 	$push850=, $10, $pop849
	i32.add 	$push635=, $pop850, $5
	i32.load8_u	$push636=, 0($pop635)
	i32.ne  	$push637=, $pop634, $pop636
	br_if   	1, $pop637
	i32.const	$push1244=, 1
	i32.add 	$push1243=, $5, $pop1244
	tee_local	$push1242=, $5=, $pop1243
	i32.const	$push1241=, 31
	i32.le_u	$push638=, $pop1242, $pop1241
	br_if   	0, $pop638
	end_loop
	i32.const	$3=, 1
.LBB172_324:
	end_block
	i32.const	$push639=, .L.str.243
	call    	eosio_assert@FUNCTION, $3, $pop639
	br      	17
.LBB172_325:
	end_block
	call    	_ZN16test_transaction25send_deferred_transactionEyyy@FUNCTION, $0, $7, $7
	br      	16
.LBB172_326:
	end_block
	i32.const	$push785=, 208
	i32.add 	$push786=, $10, $pop785
	i32.const	$push648=, 144
	i32.call	$drop=, read_action_data@FUNCTION, $pop786, $pop648
	i32.const	$push789=, 208
	i32.add 	$push790=, $10, $pop789
	i32.const	$push787=, 208
	i32.add 	$push788=, $10, $pop787
	i32.const	$push651=, 66
	i32.add 	$push652=, $pop788, $pop651
	i32.const	$push1245=, 66
	i32.const	$push649=, 240
	i32.add 	$push650=, $10, $pop649
	i32.const	$push653=, 34
	call    	assert_recover_key@FUNCTION, $pop790, $pop652, $pop1245, $pop650, $pop653
	br      	15
.LBB172_327:
	end_block
	i32.const	$push435=, 20000000
	i32.call	$push436=, _Znaj@FUNCTION, $pop435
	i32.const	$push1246=, 20000000
	i32.const	$push929=, 208
	i32.add 	$push930=, $10, $pop929
	call    	sha512@FUNCTION, $pop436, $pop1246, $pop930
	br      	14
.LBB172_328:
	end_block
	call    	_ZN15test_permission19check_authorizationEyyy@FUNCTION, $0, $7, $7
	br      	13
.LBB172_329:
	end_block
	call    	_ZN16test_transaction33send_deferred_transaction_replaceEyyy@FUNCTION, $0, $7, $7
	br      	12
.LBB172_330:
	end_block
	i32.const	$push453=, 0
	i32.const	$push452=, .L.str.431
	call    	eosio_assert@FUNCTION, $pop453, $pop452
	i32.const	$push1249=, 0
	i32.const	$push1248=, .L.str.431
	call    	eosio_assert@FUNCTION, $pop1249, $pop1248
	i32.const	$push1247=, 0
	i32.const	$push454=, .L.str.174
	call    	eosio_assert@FUNCTION, $pop1247, $pop454
	br      	11
.LBB172_331:
	end_block
	i32.const	$push441=, 20000000
	i32.call	$push442=, _Znaj@FUNCTION, $pop441
	i32.const	$push1250=, 20000000
	i32.const	$push921=, 208
	i32.add 	$push922=, $10, $pop921
	call    	assert_sha1@FUNCTION, $pop442, $pop1250, $pop922
	br      	10
.LBB172_332:
	end_block
	i32.const	$3=, 0
	i32.const	$push608=, _ZL5test2
	i32.const	$push1251=, 0
	i32.const	$push861=, 208
	i32.add 	$push862=, $10, $pop861
	call    	ripemd160@FUNCTION, $pop608, $pop1251, $pop862
	i32.const	$5=, 0
.LBB172_333:
	block   	
	loop    	
	i32.const	$push1252=, _ZL13test2_ok_ripe
	i32.add 	$push609=, $5, $pop1252
	i32.load8_u	$push610=, 0($pop609)
	i32.const	$push863=, 208
	i32.add 	$push864=, $10, $pop863
	i32.add 	$push611=, $pop864, $5
	i32.load8_u	$push612=, 0($pop611)
	i32.ne  	$push613=, $pop610, $pop612
	br_if   	1, $pop613
	i32.const	$push1256=, 1
	i32.add 	$push1255=, $5, $pop1256
	tee_local	$push1254=, $5=, $pop1255
	i32.const	$push1253=, 31
	i32.le_u	$push614=, $pop1254, $pop1253
	br_if   	0, $pop614
	end_loop
	i32.const	$3=, 1
.LBB172_336:
	end_block
	i32.const	$push615=, .L.str.246
	call    	eosio_assert@FUNCTION, $3, $pop615
	br      	9
.LBB172_337:
	end_block
	call    	_ZN16test_transaction19send_action_recurseEv@FUNCTION
	br      	8
.LBB172_338:
	end_block
	i32.const	$push547=, .L.str.301
	i32.const	$push546=, 3
	i32.const	$push821=, 208
	i32.add 	$push822=, $10, $pop821
	call    	ripemd160@FUNCTION, $pop547, $pop546, $pop822
	i32.const	$push1264=, .L.str.301
	i32.const	$push1263=, 3
	i32.const	$push823=, 208
	i32.add 	$push824=, $10, $pop823
	call    	assert_ripemd160@FUNCTION, $pop1264, $pop1263, $pop824
	i32.const	$push549=, _ZL5test3
	i32.const	$push548=, 56
	i32.const	$push825=, 208
	i32.add 	$push826=, $10, $pop825
	call    	ripemd160@FUNCTION, $pop549, $pop548, $pop826
	i32.const	$push1262=, _ZL5test3
	i32.const	$push1261=, 56
	i32.const	$push827=, 208
	i32.add 	$push828=, $10, $pop827
	call    	assert_ripemd160@FUNCTION, $pop1262, $pop1261, $pop828
	i32.const	$push551=, _ZL5test4
	i32.const	$push550=, 112
	i32.const	$push829=, 208
	i32.add 	$push830=, $10, $pop829
	call    	ripemd160@FUNCTION, $pop551, $pop550, $pop830
	i32.const	$push1260=, _ZL5test4
	i32.const	$push1259=, 112
	i32.const	$push831=, 208
	i32.add 	$push832=, $10, $pop831
	call    	assert_ripemd160@FUNCTION, $pop1260, $pop1259, $pop832
	i32.const	$push553=, _ZL5test5
	i32.const	$push552=, 14
	i32.const	$push833=, 208
	i32.add 	$push834=, $10, $pop833
	call    	ripemd160@FUNCTION, $pop553, $pop552, $pop834
	i32.const	$push1258=, _ZL5test5
	i32.const	$push1257=, 14
	i32.const	$push835=, 208
	i32.add 	$push836=, $10, $pop835
	call    	assert_ripemd160@FUNCTION, $pop1258, $pop1257, $pop836
	br      	7
.LBB172_339:
	end_block
	i64.const	$push516=, 0
	i64.store	216($10), $pop516
	i64.const	$push517=, -1
	i64.store	208($10), $pop517
	i32.const	$push935=, 208
	i32.add 	$push936=, $10, $pop935
	i32.call	$push518=, cancel_deferred@FUNCTION, $pop936
	i32.eqz 	$push519=, $pop518
	i32.const	$push520=, .L.str.268
	call    	eosio_assert@FUNCTION, $pop519, $pop520
	br      	6
.LBB172_340:
	end_block
	f64.const	$push670=, 0x1p-1
	call    	printdf@FUNCTION, $pop670
	i32.const	$push671=, .L.str.50
	call    	prints@FUNCTION, $pop671
	f64.const	$push672=, -0x1.ep1
	call    	printdf@FUNCTION, $pop672
	i32.const	$push1266=, .L.str.50
	call    	prints@FUNCTION, $pop1266
	f64.const	$push673=, 0x1.65e9f80f29211p-21
	call    	printdf@FUNCTION, $pop673
	i32.const	$push1265=, .L.str.50
	call    	prints@FUNCTION, $pop1265
	br      	5
.LBB172_341:
	end_block
	call    	_ZN16test_transaction18send_action_senderEyyy@FUNCTION, $0, $7, $7
	br      	4
.LBB172_342:
	end_block
	i32.const	$push459=, 1
	i32.const	$push458=, .L.str.169
	call    	eosio_assert@FUNCTION, $pop459, $pop458
	i32.const	$push1271=, 1
	i32.const	$push1270=, .L.str.169
	call    	eosio_assert@FUNCTION, $pop1271, $pop1270
	i32.const	$push1269=, 1
	i32.const	$push460=, .L.str.170
	call    	eosio_assert@FUNCTION, $pop1269, $pop460
	i32.const	$push1268=, 1
	i32.const	$push1267=, .L.str.170
	call    	eosio_assert@FUNCTION, $pop1268, $pop1267
	br      	3
.LBB172_343:
	end_block
	i32.const	$push443=, 20000000
	i32.call	$push444=, _Znaj@FUNCTION, $pop443
	i32.const	$push1272=, 20000000
	i32.const	$push917=, 208
	i32.add 	$push918=, $10, $pop917
	call    	sha1@FUNCTION, $pop444, $pop1272, $pop918
	br      	2
.LBB172_344:
	end_block
	i32.const	$push607=, 0
	i32.const	$push606=, 100
	i32.const	$push855=, 208
	i32.add 	$push856=, $10, $pop855
	call    	sha256@FUNCTION, $pop607, $pop606, $pop856
	br      	1
.LBB172_345:
	end_block
	i32.const	$push705=, 0
	i32.const	$push704=, .L.str.422
	call    	eosio_assert@FUNCTION, $pop705, $pop704
.LBB172_346:
	end_block
	i32.const	$push748=, 0
	i32.const	$push746=, 384
	i32.add 	$push747=, $10, $pop746
	i32.store	__stack_pointer($pop748), $pop747
	.endfunc
.Lfunc_end172:
	.size	apply, .Lfunc_end172-apply

	.section	.text._ZN5eosio18unpack_action_dataINS_7onerrorEEET_v,"axG",@progbits,_ZN5eosio18unpack_action_dataINS_7onerrorEEET_v,comdat
	.hidden	_ZN5eosio18unpack_action_dataINS_7onerrorEEET_v
	.weak	_ZN5eosio18unpack_action_dataINS_7onerrorEEET_v
	.type	_ZN5eosio18unpack_action_dataINS_7onerrorEEET_v,@function
_ZN5eosio18unpack_action_dataINS_7onerrorEEET_v:
	.param  	i32
	.local  	i32, i32, i32
	i32.const	$push18=, 0
	i32.load	$push19=, __stack_pointer($pop18)
	i32.const	$push20=, 16
	i32.sub 	$push29=, $pop19, $pop20
	tee_local	$push28=, $2=, $pop29
	copy_local	$3=, $pop28
	i32.const	$push21=, 0
	i32.store	__stack_pointer($pop21), $2
	block   	
	block   	
	i32.call	$push27=, action_data_size@FUNCTION
	tee_local	$push26=, $1=, $pop27
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $pop26, $pop0
	br_if   	0, $pop1
	i32.call	$2=, malloc@FUNCTION, $1
	br      	1
.LBB173_2:
	end_block
	i32.const	$push17=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push31=, $2, $pop5
	tee_local	$push30=, $2=, $pop31
	copy_local	$push25=, $pop30
	i32.store	__stack_pointer($pop17), $pop25
.LBB173_3:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $2, $1
	i32.const	$push6=, 24
	i32.add 	$push7=, $0, $pop6
	i32.const	$push8=, 0
	i32.store	0($pop7), $pop8
	i64.const	$push9=, 0
	i64.store	16($0):p2align=2, $pop9
	i32.add 	$push10=, $2, $1
	i32.store	8($3), $pop10
	i32.store	0($3), $2
	i32.const	$push11=, 15
	i32.gt_u	$push12=, $1, $pop11
	i32.const	$push13=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop12, $pop13
	i32.const	$push14=, 16
	i32.call	$drop=, memcpy@FUNCTION, $0, $2, $pop14
	i32.const	$push33=, 16
	i32.add 	$push15=, $2, $pop33
	i32.store	4($3), $pop15
	i32.const	$push32=, 16
	i32.add 	$push16=, $0, $pop32
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE@FUNCTION, $3, $pop16
	i32.const	$push24=, 0
	i32.const	$push22=, 16
	i32.add 	$push23=, $3, $pop22
	i32.store	__stack_pointer($pop24), $pop23
	.endfunc
.Lfunc_end173:
	.size	_ZN5eosio18unpack_action_dataINS_7onerrorEEET_v, .Lfunc_end173-_ZN5eosio18unpack_action_dataINS_7onerrorEEET_v

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_18transaction_headerE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_18transaction_headerE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_18transaction_headerE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_18transaction_headerE
	.type	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_18transaction_headerE,@function
_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_18transaction_headerE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 3
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push59=, 4
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop59
	i32.load	$push7=, 4($0)
	i32.const	$push58=, 4
	i32.add 	$push57=, $pop7, $pop58
	tee_local	$push56=, $2=, $pop57
	i32.store	4($0), $pop56
	i32.load	$push8=, 8($0)
	i32.sub 	$push9=, $pop8, $2
	i32.const	$push55=, 1
	i32.gt_u	$push10=, $pop9, $pop55
	i32.const	$push54=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop10, $pop54
	i32.const	$push53=, 4
	i32.add 	$push11=, $1, $pop53
	i32.load	$push12=, 4($0)
	i32.const	$push13=, 2
	i32.call	$drop=, memcpy@FUNCTION, $pop11, $pop12, $pop13
	i32.load	$push14=, 4($0)
	i32.const	$push52=, 2
	i32.add 	$push51=, $pop14, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.store	4($0), $pop50
	i32.load	$push15=, 8($0)
	i32.sub 	$push16=, $pop15, $2
	i32.const	$push49=, 3
	i32.gt_u	$push17=, $pop16, $pop49
	i32.const	$push48=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop17, $pop48
	i32.const	$push47=, 8
	i32.add 	$push18=, $1, $pop47
	i32.load	$push19=, 4($0)
	i32.const	$push46=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop18, $pop19, $pop46
	i32.load	$push20=, 4($0)
	i32.const	$push45=, 4
	i32.add 	$push44=, $pop20, $pop45
	tee_local	$push43=, $4=, $pop44
	i32.store	4($0), $pop43
	i32.const	$6=, 0
	i64.const	$5=, 0
.LBB174_1:
	loop    	
	i32.const	$push75=, 8
	i32.add 	$push21=, $0, $pop75
	i32.load	$push22=, 0($pop21)
	i32.lt_u	$push23=, $4, $pop22
	i32.const	$push74=, .L.str.424
	call    	eosio_assert@FUNCTION, $pop23, $pop74
	i32.const	$push73=, 4
	i32.add 	$push72=, $0, $pop73
	tee_local	$push71=, $7=, $pop72
	i32.load	$push70=, 0($pop71)
	tee_local	$push69=, $4=, $pop70
	i32.load8_u	$2=, 0($pop69)
	i32.const	$push68=, 1
	i32.add 	$push67=, $4, $pop68
	tee_local	$push66=, $4=, $pop67
	i32.store	0($7), $pop66
	i32.const	$push65=, 127
	i32.and 	$push24=, $2, $pop65
	i32.const	$push64=, 255
	i32.and 	$push63=, $6, $pop64
	tee_local	$push62=, $6=, $pop63
	i32.shl 	$push25=, $pop24, $pop62
	i64.extend_u/i32	$push26=, $pop25
	i64.or  	$5=, $pop26, $5
	i32.const	$push61=, 7
	i32.add 	$6=, $6, $pop61
	i32.const	$push60=, 7
	i32.shr_u	$push27=, $2, $pop60
	br_if   	0, $pop27
	end_loop
	i64.store32	12($1), $5
	i32.const	$push28=, 8
	i32.add 	$push83=, $0, $pop28
	tee_local	$push82=, $3=, $pop83
	i32.load	$push29=, 0($pop82)
	i32.ne  	$push30=, $pop29, $4
	i32.const	$push31=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop30, $pop31
	i32.const	$push32=, 16
	i32.add 	$push33=, $1, $pop32
	i32.const	$push34=, 4
	i32.add 	$push81=, $0, $pop34
	tee_local	$push80=, $4=, $pop81
	i32.load	$push35=, 0($pop80)
	i32.const	$push79=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop33, $pop35, $pop79
	i32.load	$push36=, 0($4)
	i32.const	$push78=, 1
	i32.add 	$push77=, $pop36, $pop78
	tee_local	$push76=, $6=, $pop77
	i32.store	0($4), $pop76
	i32.const	$7=, 0
	i64.const	$5=, 0
.LBB174_3:
	loop    	
	i32.load	$push37=, 0($3)
	i32.lt_u	$push38=, $6, $pop37
	i32.const	$push95=, .L.str.424
	call    	eosio_assert@FUNCTION, $pop38, $pop95
	i32.load	$push94=, 0($4)
	tee_local	$push93=, $6=, $pop94
	i32.load8_u	$2=, 0($pop93)
	i32.const	$push92=, 1
	i32.add 	$push91=, $6, $pop92
	tee_local	$push90=, $6=, $pop91
	i32.store	0($4), $pop90
	i32.const	$push89=, 127
	i32.and 	$push39=, $2, $pop89
	i32.const	$push88=, 255
	i32.and 	$push87=, $7, $pop88
	tee_local	$push86=, $7=, $pop87
	i32.shl 	$push40=, $pop39, $pop86
	i64.extend_u/i32	$push41=, $pop40
	i64.or  	$5=, $pop41, $5
	i32.const	$push85=, 7
	i32.add 	$7=, $7, $pop85
	i32.const	$push84=, 7
	i32.shr_u	$push42=, $2, $pop84
	br_if   	0, $pop42
	end_loop
	i64.store32	20($1), $5
	copy_local	$push96=, $0
	.endfunc
.Lfunc_end174:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_18transaction_headerE, .Lfunc_end174-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_18transaction_headerE

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE
	.type	_ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE,@function
_ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32
	i32.load	$7=, 4($0)
	i32.const	$6=, 0
	i64.const	$5=, 0
	i32.const	$push0=, 8
	i32.add 	$2=, $0, $pop0
	i32.const	$push3=, 4
	i32.add 	$3=, $0, $pop3
.LBB175_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $7, $pop1
	i32.const	$push56=, .L.str.424
	call    	eosio_assert@FUNCTION, $pop2, $pop56
	i32.load	$push55=, 0($3)
	tee_local	$push54=, $7=, $pop55
	i32.load8_u	$4=, 0($pop54)
	i32.const	$push53=, 1
	i32.add 	$push52=, $7, $pop53
	tee_local	$push51=, $7=, $pop52
	i32.store	0($3), $pop51
	i32.const	$push50=, 127
	i32.and 	$push4=, $4, $pop50
	i32.const	$push49=, 255
	i32.and 	$push48=, $6, $pop49
	tee_local	$push47=, $6=, $pop48
	i32.shl 	$push5=, $pop4, $pop47
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$5=, $pop6, $5
	i32.const	$push46=, 7
	i32.add 	$6=, $6, $pop46
	i32.const	$push45=, 7
	i32.shr_u	$push7=, $4, $pop45
	br_if   	0, $pop7
	end_loop
	block   	
	block   	
	i32.wrap/i64	$push64=, $5
	tee_local	$push63=, $4=, $pop64
	i32.load	$push62=, 4($1)
	tee_local	$push61=, $2=, $pop62
	i32.load	$push60=, 0($1)
	tee_local	$push59=, $6=, $pop60
	i32.sub 	$push8=, $pop61, $pop59
	i32.const	$push9=, 40
	i32.div_s	$push58=, $pop8, $pop9
	tee_local	$push57=, $7=, $pop58
	i32.le_u	$push10=, $pop63, $pop57
	br_if   	0, $pop10
	i32.sub 	$push23=, $4, $7
	call    	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE8__appendEj@FUNCTION, $1, $pop23
	i32.const	$push24=, 4
	i32.add 	$push25=, $1, $pop24
	i32.load	$2=, 0($pop25)
	br      	1
.LBB175_4:
	end_block
	i32.ge_u	$push11=, $4, $7
	br_if   	0, $pop11
	block   	
	i32.const	$push12=, 40
	i32.mul 	$push68=, $4, $pop12
	tee_local	$push67=, $4=, $pop68
	i32.add 	$push66=, $6, $pop67
	tee_local	$push65=, $3=, $pop66
	i32.eq  	$push13=, $2, $pop65
	br_if   	0, $pop13
	i32.const	$push14=, 0
	i32.sub 	$push15=, $pop14, $6
	i32.sub 	$6=, $pop15, $4
	i32.const	$push69=, -24
	i32.add 	$4=, $2, $pop69
.LBB175_7:
	loop    	
	block   	
	i32.const	$push72=, 12
	i32.add 	$push16=, $4, $pop72
	i32.load	$push71=, 0($pop16)
	tee_local	$push70=, $7=, $pop71
	i32.eqz 	$push102=, $pop70
	br_if   	0, $pop102
	i32.const	$push73=, 16
	i32.add 	$push17=, $4, $pop73
	i32.store	0($pop17), $7
	call    	_ZdlPv@FUNCTION, $7
.LBB175_9:
	end_block
	block   	
	i32.load	$push75=, 0($4)
	tee_local	$push74=, $7=, $pop75
	i32.eqz 	$push103=, $pop74
	br_if   	0, $pop103
	i32.const	$push76=, 4
	i32.add 	$push18=, $4, $pop76
	i32.store	0($pop18), $7
	call    	_ZdlPv@FUNCTION, $7
.LBB175_11:
	end_block
	i32.const	$push80=, -40
	i32.add 	$push79=, $4, $pop80
	tee_local	$push78=, $4=, $pop79
	i32.add 	$push19=, $pop78, $6
	i32.const	$push77=, -24
	i32.ne  	$push20=, $pop19, $pop77
	br_if   	0, $pop20
.LBB175_12:
	end_loop
	end_block
	i32.const	$push21=, 4
	i32.add 	$push22=, $1, $pop21
	i32.store	0($pop22), $3
	copy_local	$2=, $3
.LBB175_13:
	end_block
	block   	
	i32.load	$push82=, 0($1)
	tee_local	$push81=, $7=, $pop82
	i32.eq  	$push26=, $pop81, $2
	br_if   	0, $pop26
	i32.const	$push27=, 4
	i32.add 	$4=, $0, $pop27
.LBB175_15:
	loop    	
	i32.const	$push101=, 8
	i32.add 	$push100=, $0, $pop101
	tee_local	$push99=, $6=, $pop100
	i32.load	$push29=, 0($pop99)
	i32.load	$push28=, 0($4)
	i32.sub 	$push30=, $pop29, $pop28
	i32.const	$push98=, 7
	i32.gt_u	$push31=, $pop30, $pop98
	i32.const	$push97=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop31, $pop97
	i32.load	$push32=, 0($4)
	i32.const	$push96=, 8
	i32.call	$drop=, memcpy@FUNCTION, $7, $pop32, $pop96
	i32.load	$push33=, 0($4)
	i32.const	$push95=, 8
	i32.add 	$push94=, $pop33, $pop95
	tee_local	$push93=, $3=, $pop94
	i32.store	0($4), $pop93
	i32.load	$push34=, 0($6)
	i32.sub 	$push35=, $pop34, $3
	i32.const	$push92=, 7
	i32.gt_u	$push36=, $pop35, $pop92
	i32.const	$push91=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop36, $pop91
	i32.const	$push90=, 8
	i32.add 	$push37=, $7, $pop90
	i32.load	$push38=, 0($4)
	i32.const	$push89=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop37, $pop38, $pop89
	i32.load	$push39=, 0($4)
	i32.const	$push88=, 8
	i32.add 	$push40=, $pop39, $pop88
	i32.store	0($4), $pop40
	i32.const	$push87=, 16
	i32.add 	$push42=, $7, $pop87
	i32.call	$push43=, _ZN5eosiorsINS_10datastreamIPKcEENS_16permission_levelEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE@FUNCTION, $0, $pop42
	i32.const	$push86=, 28
	i32.add 	$push41=, $7, $pop86
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE@FUNCTION, $pop43, $pop41
	i32.const	$push85=, 40
	i32.add 	$push84=, $7, $pop85
	tee_local	$push83=, $7=, $pop84
	i32.ne  	$push44=, $pop83, $2
	br_if   	0, $pop44
.LBB175_16:
	end_loop
	end_block
	copy_local	$push104=, $0
	.endfunc
.Lfunc_end175:
	.size	_ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE, .Lfunc_end175-_ZN5eosiorsINS_10datastreamIPKcEENS_6actionEEERT_S7_RNSt3__16vectorIT0_NS8_9allocatorISA_EEEE

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEENSt3__15tupleIJtNS5_6vectorIcNS5_9allocatorIcEEEEEEEEERT_SD_RNS7_IT0_NS8_ISE_EEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEENSt3__15tupleIJtNS5_6vectorIcNS5_9allocatorIcEEEEEEEEERT_SD_RNS7_IT0_NS8_ISE_EEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEENSt3__15tupleIJtNS5_6vectorIcNS5_9allocatorIcEEEEEEEEERT_SD_RNS7_IT0_NS8_ISE_EEEE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEENSt3__15tupleIJtNS5_6vectorIcNS5_9allocatorIcEEEEEEEEERT_SD_RNS7_IT0_NS8_ISE_EEEE
	.type	_ZN5eosiorsINS_10datastreamIPKcEENSt3__15tupleIJtNS5_6vectorIcNS5_9allocatorIcEEEEEEEEERT_SD_RNS7_IT0_NS8_ISE_EEEE,@function
_ZN5eosiorsINS_10datastreamIPKcEENSt3__15tupleIJtNS5_6vectorIcNS5_9allocatorIcEEEEEEEEERT_SD_RNS7_IT0_NS8_ISE_EEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i64, i32
	i32.load	$5=, 4($0)
	i32.const	$7=, 0
	i64.const	$6=, 0
	i32.const	$push0=, 8
	i32.add 	$2=, $0, $pop0
	i32.const	$push3=, 4
	i32.add 	$3=, $0, $pop3
.LBB176_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $5, $pop1
	i32.const	$push42=, .L.str.424
	call    	eosio_assert@FUNCTION, $pop2, $pop42
	i32.load	$push41=, 0($3)
	tee_local	$push40=, $5=, $pop41
	i32.load8_u	$4=, 0($pop40)
	i32.const	$push39=, 1
	i32.add 	$push38=, $5, $pop39
	tee_local	$push37=, $5=, $pop38
	i32.store	0($3), $pop37
	i32.const	$push36=, 127
	i32.and 	$push4=, $4, $pop36
	i32.const	$push35=, 255
	i32.and 	$push34=, $7, $pop35
	tee_local	$push33=, $7=, $pop34
	i32.shl 	$push5=, $pop4, $pop33
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$6=, $pop6, $6
	i32.const	$push32=, 7
	i32.add 	$7=, $7, $pop32
	i32.const	$push31=, 7
	i32.shr_u	$push7=, $4, $pop31
	br_if   	0, $pop7
	end_loop
	block   	
	block   	
	i32.wrap/i64	$push51=, $6
	tee_local	$push50=, $4=, $pop51
	i32.load	$push49=, 4($1)
	tee_local	$push48=, $7=, $pop49
	i32.load	$push47=, 0($1)
	tee_local	$push46=, $3=, $pop47
	i32.sub 	$push8=, $pop48, $pop46
	i32.const	$push45=, 4
	i32.shr_s	$push44=, $pop8, $pop45
	tee_local	$push43=, $5=, $pop44
	i32.le_u	$push9=, $pop50, $pop43
	br_if   	0, $pop9
	i32.sub 	$push18=, $4, $5
	call    	_ZNSt3__16vectorINS_5tupleIJtNS0_IcNS_9allocatorIcEEEEEEENS2_IS5_EEE8__appendEj@FUNCTION, $1, $pop18
	i32.const	$push52=, 4
	i32.add 	$push19=, $1, $pop52
	i32.load	$7=, 0($pop19)
	br      	1
.LBB176_4:
	end_block
	i32.ge_u	$push10=, $4, $5
	br_if   	0, $pop10
	block   	
	i32.const	$push57=, 4
	i32.shl 	$push56=, $4, $pop57
	tee_local	$push55=, $4=, $pop56
	i32.add 	$push54=, $3, $pop55
	tee_local	$push53=, $2=, $pop54
	i32.eq  	$push11=, $7, $pop53
	br_if   	0, $pop11
	i32.const	$push12=, 0
	i32.sub 	$push13=, $pop12, $3
	i32.sub 	$3=, $pop13, $4
	i32.const	$push58=, -12
	i32.add 	$4=, $7, $pop58
.LBB176_7:
	loop    	
	block   	
	i32.load	$push60=, 0($4)
	tee_local	$push59=, $5=, $pop60
	i32.eqz 	$push80=, $pop59
	br_if   	0, $pop80
	i32.const	$push61=, 4
	i32.add 	$push14=, $4, $pop61
	i32.store	0($pop14), $5
	call    	_ZdlPv@FUNCTION, $5
.LBB176_9:
	end_block
	i32.const	$push65=, -16
	i32.add 	$push64=, $4, $pop65
	tee_local	$push63=, $4=, $pop64
	i32.add 	$push15=, $pop63, $3
	i32.const	$push62=, -12
	i32.ne  	$push16=, $pop15, $pop62
	br_if   	0, $pop16
.LBB176_10:
	end_loop
	end_block
	i32.const	$push66=, 4
	i32.add 	$push17=, $1, $pop66
	i32.store	0($pop17), $2
	copy_local	$7=, $2
.LBB176_11:
	end_block
	block   	
	i32.load	$push68=, 0($1)
	tee_local	$push67=, $4=, $pop68
	i32.eq  	$push20=, $pop67, $7
	br_if   	0, $pop20
	i32.const	$push22=, 8
	i32.add 	$3=, $0, $pop22
.LBB176_13:
	loop    	
	i32.load	$push23=, 0($3)
	i32.const	$push79=, 4
	i32.add 	$push78=, $0, $pop79
	tee_local	$push77=, $5=, $pop78
	i32.load	$push21=, 0($pop77)
	i32.sub 	$push24=, $pop23, $pop21
	i32.const	$push76=, 1
	i32.gt_u	$push25=, $pop24, $pop76
	i32.const	$push75=, .L.str.426
	call    	eosio_assert@FUNCTION, $pop25, $pop75
	i32.load	$push26=, 0($5)
	i32.const	$push74=, 2
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop26, $pop74
	i32.load	$push27=, 0($5)
	i32.const	$push73=, 2
	i32.add 	$push28=, $pop27, $pop73
	i32.store	0($5), $pop28
	i32.const	$push72=, 4
	i32.add 	$push29=, $4, $pop72
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE@FUNCTION, $0, $pop29
	i32.const	$push71=, 16
	i32.add 	$push70=, $4, $pop71
	tee_local	$push69=, $4=, $pop70
	i32.ne  	$push30=, $pop69, $7
	br_if   	0, $pop30
.LBB176_14:
	end_loop
	end_block
	copy_local	$push81=, $0
	.endfunc
.Lfunc_end176:
	.size	_ZN5eosiorsINS_10datastreamIPKcEENSt3__15tupleIJtNS5_6vectorIcNS5_9allocatorIcEEEEEEEEERT_SD_RNS7_IT0_NS8_ISE_EEEE, .Lfunc_end176-_ZN5eosiorsINS_10datastreamIPKcEENSt3__15tupleIJtNS5_6vectorIcNS5_9allocatorIcEEEEEEEEERT_SD_RNS7_IT0_NS8_ISE_EEEE

	.section	.text._ZNSt3__16vectorINS_5tupleIJtNS0_IcNS_9allocatorIcEEEEEEENS2_IS5_EEE8__appendEj,"axG",@progbits,_ZNSt3__16vectorINS_5tupleIJtNS0_IcNS_9allocatorIcEEEEEEENS2_IS5_EEE8__appendEj,comdat
	.hidden	_ZNSt3__16vectorINS_5tupleIJtNS0_IcNS_9allocatorIcEEEEEEENS2_IS5_EEE8__appendEj
	.weak	_ZNSt3__16vectorINS_5tupleIJtNS0_IcNS_9allocatorIcEEEEEEENS2_IS5_EEE8__appendEj
	.type	_ZNSt3__16vectorINS_5tupleIJtNS0_IcNS_9allocatorIcEEEEEEENS2_IS5_EEE8__appendEj,@function
_ZNSt3__16vectorINS_5tupleIJtNS0_IcNS_9allocatorIcEEEEEEENS2_IS5_EEE8__appendEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push50=, 8($0)
	tee_local	$push49=, $8=, $pop50
	i32.load	$push48=, 4($0)
	tee_local	$push47=, $7=, $pop48
	i32.sub 	$push0=, $pop49, $pop47
	i32.const	$push46=, 4
	i32.shr_s	$push1=, $pop0, $pop46
	i32.ge_u	$push2=, $pop1, $1
	br_if   	0, $pop2
	i32.load	$push57=, 0($0)
	tee_local	$push56=, $5=, $pop57
	i32.sub 	$push9=, $7, $pop56
	i32.const	$push55=, 4
	i32.shr_s	$push54=, $pop9, $pop55
	tee_local	$push53=, $4=, $pop54
	i32.add 	$push52=, $pop53, $1
	tee_local	$push51=, $7=, $pop52
	i32.const	$push10=, 268435456
	i32.ge_u	$push11=, $pop51, $pop10
	br_if   	2, $pop11
	i32.const	$6=, 268435455
	block   	
	i32.sub 	$push60=, $8, $5
	tee_local	$push59=, $8=, $pop60
	i32.const	$push58=, 4
	i32.shr_s	$push12=, $pop59, $pop58
	i32.const	$push13=, 134217726
	i32.gt_u	$push14=, $pop12, $pop13
	br_if   	0, $pop14
	i32.const	$push15=, 3
	i32.shr_s	$push64=, $8, $pop15
	tee_local	$push63=, $6=, $pop64
	i32.lt_u	$push16=, $6, $7
	i32.select	$push62=, $7, $pop63, $pop16
	tee_local	$push61=, $6=, $pop62
	i32.eqz 	$push130=, $pop61
	br_if   	2, $pop130
	i32.const	$push17=, 268435456
	i32.ge_u	$push18=, $6, $pop17
	br_if   	4, $pop18
.LBB177_5:
	end_block
	i32.const	$push65=, 4
	i32.shl 	$push19=, $6, $pop65
	i32.call	$8=, _Znwj@FUNCTION, $pop19
	br      	4
.LBB177_6:
	end_block
	copy_local	$6=, $7
	copy_local	$8=, $1
.LBB177_7:
	loop    	
	i32.const	$push119=, 0
	i32.store16	0($6), $pop119
	i32.const	$push118=, 4
	i32.add 	$push3=, $6, $pop118
	i64.const	$push117=, 0
	i64.store	0($pop3):p2align=2, $pop117
	i32.const	$push116=, 12
	i32.add 	$push4=, $6, $pop116
	i32.const	$push115=, 0
	i32.store	0($pop4), $pop115
	i32.const	$push114=, 16
	i32.add 	$6=, $6, $pop114
	i32.const	$push113=, -1
	i32.add 	$push112=, $8, $pop113
	tee_local	$push111=, $8=, $pop112
	br_if   	0, $pop111
	end_loop
	i32.const	$push5=, 4
	i32.add 	$push6=, $0, $pop5
	i32.const	$push120=, 4
	i32.shl 	$push7=, $1, $pop120
	i32.add 	$push8=, $7, $pop7
	i32.store	0($pop6), $pop8
	return
.LBB177_9:
	end_block
	i32.const	$6=, 0
	i32.const	$8=, 0
	br      	2
.LBB177_10:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB177_11:
	end_block
	call    	abort@FUNCTION
	unreachable
.LBB177_12:
	end_block
	i32.const	$push69=, 4
	i32.shl 	$push20=, $6, $pop69
	i32.add 	$2=, $8, $pop20
	i32.const	$push68=, 4
	i32.shl 	$push21=, $4, $pop68
	i32.add 	$push67=, $8, $pop21
	tee_local	$push66=, $8=, $pop67
	copy_local	$6=, $pop66
	copy_local	$7=, $1
.LBB177_13:
	loop    	
	i32.const	$push78=, 0
	i32.store16	0($6), $pop78
	i32.const	$push77=, 4
	i32.add 	$push22=, $6, $pop77
	i64.const	$push76=, 0
	i64.store	0($pop22):p2align=2, $pop76
	i32.const	$push75=, 12
	i32.add 	$push23=, $6, $pop75
	i32.const	$push74=, 0
	i32.store	0($pop23), $pop74
	i32.const	$push73=, 16
	i32.add 	$6=, $6, $pop73
	i32.const	$push72=, -1
	i32.add 	$push71=, $7, $pop72
	tee_local	$push70=, $7=, $pop71
	br_if   	0, $pop70
	end_loop
	i32.const	$push84=, 4
	i32.shl 	$push24=, $1, $pop84
	i32.add 	$3=, $8, $pop24
	block   	
	block   	
	i32.const	$push83=, 4
	i32.add 	$push25=, $0, $pop83
	i32.load	$push82=, 0($pop25)
	tee_local	$push81=, $7=, $pop82
	i32.load	$push80=, 0($0)
	tee_local	$push79=, $6=, $pop80
	i32.eq  	$push26=, $pop81, $pop79
	br_if   	0, $pop26
	i32.const	$push86=, 0
	i32.sub 	$4=, $pop86, $6
	i32.const	$push85=, -16
	i32.add 	$6=, $7, $pop85
.LBB177_16:
	loop    	
	i32.const	$push110=, -16
	i32.add 	$push27=, $8, $pop110
	i32.load16_u	$push28=, 0($6)
	i32.store16	0($pop27), $pop28
	i32.const	$push109=, -12
	i32.add 	$push108=, $8, $pop109
	tee_local	$push107=, $7=, $pop108
	i64.const	$push106=, 0
	i64.store	0($pop107):p2align=2, $pop106
	i32.const	$push105=, -4
	i32.add 	$push104=, $8, $pop105
	tee_local	$push103=, $1=, $pop104
	i32.const	$push102=, 0
	i32.store	0($pop103), $pop102
	i32.const	$push101=, 4
	i32.add 	$push100=, $6, $pop101
	tee_local	$push99=, $5=, $pop100
	i32.load	$push29=, 0($pop99)
	i32.store	0($7), $pop29
	i32.const	$push98=, -8
	i32.add 	$push30=, $8, $pop98
	i32.const	$push97=, 8
	i32.add 	$push31=, $6, $pop97
	i32.load	$push32=, 0($pop31)
	i32.store	0($pop30), $pop32
	i32.const	$push96=, 12
	i32.add 	$push95=, $6, $pop96
	tee_local	$push94=, $7=, $pop95
	i32.load	$push33=, 0($pop94)
	i32.store	0($1), $pop33
	i32.const	$push93=, 0
	i32.store	0($7), $pop93
	i64.const	$push92=, 0
	i64.store	0($5):p2align=2, $pop92
	i32.const	$push91=, -16
	i32.add 	$8=, $8, $pop91
	i32.const	$push90=, -16
	i32.add 	$push89=, $6, $pop90
	tee_local	$push88=, $6=, $pop89
	i32.add 	$push34=, $pop88, $4
	i32.const	$push87=, -16
	i32.ne  	$push35=, $pop34, $pop87
	br_if   	0, $pop35
	end_loop
	i32.const	$push36=, 4
	i32.add 	$push37=, $0, $pop36
	i32.load	$6=, 0($pop37)
	i32.load	$1=, 0($0)
	br      	1
.LBB177_18:
	end_block
	copy_local	$1=, $6
.LBB177_19:
	end_block
	i32.store	0($0), $8
	i32.const	$push121=, 4
	i32.add 	$push38=, $0, $pop121
	i32.store	0($pop38), $3
	i32.const	$push39=, 8
	i32.add 	$push40=, $0, $pop39
	i32.store	0($pop40), $2
	block   	
	i32.eq  	$push41=, $6, $1
	br_if   	0, $pop41
	i32.const	$push42=, 0
	i32.sub 	$7=, $pop42, $1
	i32.const	$push122=, -12
	i32.add 	$6=, $6, $pop122
.LBB177_21:
	loop    	
	block   	
	i32.load	$push124=, 0($6)
	tee_local	$push123=, $8=, $pop124
	i32.eqz 	$push131=, $pop123
	br_if   	0, $pop131
	i32.const	$push125=, 4
	i32.add 	$push43=, $6, $pop125
	i32.store	0($pop43), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB177_23:
	end_block
	i32.const	$push129=, -16
	i32.add 	$push128=, $6, $pop129
	tee_local	$push127=, $6=, $pop128
	i32.add 	$push44=, $pop127, $7
	i32.const	$push126=, -12
	i32.ne  	$push45=, $pop44, $pop126
	br_if   	0, $pop45
.LBB177_24:
	end_loop
	end_block
	block   	
	i32.eqz 	$push132=, $1
	br_if   	0, $pop132
	call    	_ZdlPv@FUNCTION, $1
.LBB177_26:
	end_block
	.endfunc
.Lfunc_end177:
	.size	_ZNSt3__16vectorINS_5tupleIJtNS0_IcNS_9allocatorIcEEEEEEENS2_IS5_EEE8__appendEj, .Lfunc_end177-_ZNSt3__16vectorINS_5tupleIJtNS0_IcNS_9allocatorIcEEEEEEENS2_IS5_EEE8__appendEj

	.section	.text._ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE8__appendEj,"axG",@progbits,_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE8__appendEj,comdat
	.hidden	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE8__appendEj
	.weak	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE8__appendEj
	.type	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE8__appendEj,@function
_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE8__appendEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push57=, 8($0)
	tee_local	$push56=, $8=, $pop57
	i32.load	$push55=, 4($0)
	tee_local	$push54=, $7=, $pop55
	i32.sub 	$push0=, $pop56, $pop54
	i32.const	$push53=, 40
	i32.div_s	$push1=, $pop0, $pop53
	i32.ge_u	$push2=, $pop1, $1
	br_if   	0, $pop2
	i32.load	$push64=, 0($0)
	tee_local	$push63=, $4=, $pop64
	i32.sub 	$push8=, $7, $pop63
	i32.const	$push62=, 40
	i32.div_s	$push61=, $pop8, $pop62
	tee_local	$push60=, $5=, $pop61
	i32.add 	$push59=, $pop60, $1
	tee_local	$push58=, $6=, $pop59
	i32.const	$push9=, 107374183
	i32.ge_u	$push10=, $pop58, $pop9
	br_if   	2, $pop10
	i32.const	$7=, 107374182
	block   	
	i32.sub 	$push11=, $8, $4
	i32.const	$push67=, 40
	i32.div_s	$push66=, $pop11, $pop67
	tee_local	$push65=, $8=, $pop66
	i32.const	$push12=, 53687090
	i32.gt_u	$push13=, $pop65, $pop12
	br_if   	0, $pop13
	i32.const	$push14=, 1
	i32.shl 	$push71=, $8, $pop14
	tee_local	$push70=, $7=, $pop71
	i32.lt_u	$push15=, $7, $6
	i32.select	$push69=, $6, $pop70, $pop15
	tee_local	$push68=, $7=, $pop69
	i32.eqz 	$push167=, $pop68
	br_if   	2, $pop167
.LBB178_4:
	end_block
	i32.const	$push72=, 40
	i32.mul 	$push16=, $7, $pop72
	i32.call	$8=, _Znwj@FUNCTION, $pop16
	br      	3
.LBB178_5:
	end_block
	i32.const	$push6=, 4
	i32.add 	$8=, $0, $pop6
.LBB178_6:
	loop    	
	i64.const	$push153=, 0
	i64.store	0($7), $pop153
	i64.const	$push152=, 0
	i64.store	16($7):p2align=2, $pop152
	i32.const	$push151=, 8
	i32.add 	$push3=, $7, $pop151
	i64.const	$push150=, 0
	i64.store	0($pop3), $pop150
	i32.const	$push149=, 24
	i32.add 	$push4=, $7, $pop149
	i64.const	$push148=, 0
	i64.store	0($pop4):p2align=2, $pop148
	i32.const	$push147=, 32
	i32.add 	$push5=, $7, $pop147
	i64.const	$push146=, 0
	i64.store	0($pop5):p2align=2, $pop146
	i32.load	$push7=, 0($8)
	i32.const	$push145=, 40
	i32.add 	$push144=, $pop7, $pop145
	tee_local	$push143=, $7=, $pop144
	i32.store	0($8), $pop143
	i32.const	$push142=, -1
	i32.add 	$push141=, $1, $pop142
	tee_local	$push140=, $1=, $pop141
	br_if   	0, $pop140
	br      	4
.LBB178_7:
	end_loop
	end_block
	i32.const	$7=, 0
	i32.const	$8=, 0
	br      	1
.LBB178_8:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB178_9:
	end_block
	i32.const	$push76=, 40
	i32.mul 	$push17=, $7, $pop76
	i32.add 	$2=, $8, $pop17
	i32.const	$push75=, 40
	i32.mul 	$push18=, $5, $pop75
	i32.add 	$push74=, $8, $pop18
	tee_local	$push73=, $8=, $pop74
	copy_local	$7=, $pop73
.LBB178_10:
	loop    	
	i64.const	$push88=, 0
	i64.store	0($7), $pop88
	i64.const	$push87=, 0
	i64.store	16($7):p2align=2, $pop87
	i32.const	$push86=, 8
	i32.add 	$push19=, $7, $pop86
	i64.const	$push85=, 0
	i64.store	0($pop19), $pop85
	i32.const	$push84=, 24
	i32.add 	$push20=, $7, $pop84
	i64.const	$push83=, 0
	i64.store	0($pop20):p2align=2, $pop83
	i32.const	$push82=, 32
	i32.add 	$push21=, $7, $pop82
	i64.const	$push81=, 0
	i64.store	0($pop21):p2align=2, $pop81
	i32.const	$push80=, 40
	i32.add 	$7=, $7, $pop80
	i32.const	$push79=, -1
	i32.add 	$push78=, $1, $pop79
	tee_local	$push77=, $1=, $pop78
	br_if   	0, $pop77
	end_loop
	block   	
	block   	
	i32.const	$push93=, 4
	i32.add 	$push22=, $0, $pop93
	i32.load	$push92=, 0($pop22)
	tee_local	$push91=, $1=, $pop92
	i32.load	$push90=, 0($0)
	tee_local	$push89=, $4=, $pop90
	i32.eq  	$push23=, $pop91, $pop89
	br_if   	0, $pop23
	i32.const	$push95=, 0
	i32.sub 	$3=, $pop95, $4
	i32.const	$push94=, -20
	i32.add 	$1=, $1, $pop94
.LBB178_13:
	loop    	
	i32.const	$push139=, -32
	i32.add 	$push24=, $8, $pop139
	i32.const	$push138=, -12
	i32.add 	$push25=, $1, $pop138
	i64.load	$push26=, 0($pop25)
	i64.store	0($pop24), $pop26
	i32.const	$push137=, -40
	i32.add 	$push27=, $8, $pop137
	i32.const	$push136=, -20
	i32.add 	$push28=, $1, $pop136
	i64.load	$push29=, 0($pop28)
	i64.store	0($pop27), $pop29
	i32.const	$push135=, -24
	i32.add 	$push134=, $8, $pop135
	tee_local	$push133=, $4=, $pop134
	i64.const	$push132=, 0
	i64.store	0($pop133):p2align=2, $pop132
	i32.const	$push131=, -16
	i32.add 	$push130=, $8, $pop131
	tee_local	$push129=, $5=, $pop130
	i32.const	$push128=, 0
	i32.store	0($pop129), $pop128
	i32.const	$push127=, -4
	i32.add 	$push126=, $1, $pop127
	tee_local	$push125=, $6=, $pop126
	i32.load	$push30=, 0($pop125)
	i32.store	0($4), $pop30
	i32.const	$push124=, -20
	i32.add 	$push31=, $8, $pop124
	i32.load	$push32=, 0($1)
	i32.store	0($pop31), $pop32
	i32.const	$push123=, 4
	i32.add 	$push122=, $1, $pop123
	tee_local	$push121=, $4=, $pop122
	i32.load	$push33=, 0($pop121)
	i32.store	0($5), $pop33
	i32.const	$push120=, 0
	i32.store	0($4), $pop120
	i32.const	$push119=, -12
	i32.add 	$push118=, $8, $pop119
	tee_local	$push117=, $4=, $pop118
	i64.const	$push116=, 0
	i64.store	0($pop117):p2align=2, $pop116
	i64.const	$push115=, 0
	i64.store	0($6):p2align=2, $pop115
	i32.const	$push114=, -4
	i32.add 	$push113=, $8, $pop114
	tee_local	$push112=, $5=, $pop113
	i32.const	$push111=, 0
	i32.store	0($pop112), $pop111
	i32.const	$push110=, 8
	i32.add 	$push109=, $1, $pop110
	tee_local	$push108=, $6=, $pop109
	i32.load	$push34=, 0($pop108)
	i32.store	0($4), $pop34
	i32.const	$push107=, -8
	i32.add 	$push35=, $8, $pop107
	i32.const	$push106=, 12
	i32.add 	$push36=, $1, $pop106
	i32.load	$push37=, 0($pop36)
	i32.store	0($pop35), $pop37
	i32.const	$push105=, 16
	i32.add 	$push104=, $1, $pop105
	tee_local	$push103=, $4=, $pop104
	i32.load	$push38=, 0($pop103)
	i32.store	0($5), $pop38
	i32.const	$push102=, 0
	i32.store	0($4), $pop102
	i64.const	$push101=, 0
	i64.store	0($6):p2align=2, $pop101
	i32.const	$push100=, -40
	i32.add 	$8=, $8, $pop100
	i32.const	$push99=, -40
	i32.add 	$push98=, $1, $pop99
	tee_local	$push97=, $1=, $pop98
	i32.add 	$push39=, $pop97, $3
	i32.const	$push96=, -20
	i32.ne  	$push40=, $pop39, $pop96
	br_if   	0, $pop40
	end_loop
	i32.const	$push41=, 4
	i32.add 	$push42=, $0, $pop41
	i32.load	$4=, 0($pop42)
	i32.load	$5=, 0($0)
	br      	1
.LBB178_15:
	end_block
	copy_local	$5=, $4
.LBB178_16:
	end_block
	i32.store	0($0), $8
	i32.const	$push154=, 4
	i32.add 	$push43=, $0, $pop154
	i32.store	0($pop43), $7
	i32.const	$push44=, 8
	i32.add 	$push45=, $0, $pop44
	i32.store	0($pop45), $2
	block   	
	i32.eq  	$push46=, $4, $5
	br_if   	0, $pop46
	i32.const	$push47=, 0
	i32.sub 	$1=, $pop47, $5
	i32.const	$push155=, -24
	i32.add 	$7=, $4, $pop155
.LBB178_18:
	loop    	
	block   	
	i32.const	$push158=, 12
	i32.add 	$push48=, $7, $pop158
	i32.load	$push157=, 0($pop48)
	tee_local	$push156=, $8=, $pop157
	i32.eqz 	$push168=, $pop156
	br_if   	0, $pop168
	i32.const	$push159=, 16
	i32.add 	$push49=, $7, $pop159
	i32.store	0($pop49), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB178_20:
	end_block
	block   	
	i32.load	$push161=, 0($7)
	tee_local	$push160=, $8=, $pop161
	i32.eqz 	$push169=, $pop160
	br_if   	0, $pop169
	i32.const	$push162=, 4
	i32.add 	$push50=, $7, $pop162
	i32.store	0($pop50), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB178_22:
	end_block
	i32.const	$push166=, -40
	i32.add 	$push165=, $7, $pop166
	tee_local	$push164=, $7=, $pop165
	i32.add 	$push51=, $pop164, $1
	i32.const	$push163=, -24
	i32.ne  	$push52=, $pop51, $pop163
	br_if   	0, $pop52
.LBB178_23:
	end_loop
	end_block
	i32.eqz 	$push170=, $5
	br_if   	0, $pop170
	call    	_ZdlPv@FUNCTION, $5
.LBB178_25:
	end_block
	.endfunc
.Lfunc_end178:
	.size	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE8__appendEj, .Lfunc_end178-_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE8__appendEj

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
.LBB179_1:
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
.LBB179_3:
	end_loop
	end_block
	copy_local	$push12=, $0
	.endfunc
.Lfunc_end179:
	.size	_Znwj, .Lfunc_end179-_Znwj

	.weak	_Znaj
	.type	_Znaj,@function
_Znaj:
	.param  	i32
	.result 	i32
	i32.call	$push0=, _Znwj@FUNCTION, $0
	.endfunc
.Lfunc_end180:
	.size	_Znaj, .Lfunc_end180-_Znaj

	.weak	_ZdlPv
	.type	_ZdlPv,@function
_ZdlPv:
	.param  	i32
	block   	
	i32.eqz 	$push0=, $0
	br_if   	0, $pop0
	call    	free@FUNCTION, $0
.LBB181_2:
	end_block
	.endfunc
.Lfunc_end181:
	.size	_ZdlPv, .Lfunc_end181-_ZdlPv

	.section	.text._ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,comdat
	.hidden	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
	.weak	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
	.type	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end182:
	.size	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv, .Lfunc_end182-_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32
	block   	
	i32.const	$push0=, -16
	i32.ge_u	$push1=, $1, $pop0
	br_if   	0, $pop1
	i32.const	$2=, 10
	block   	
	i32.load8_u	$push35=, 0($0)
	tee_local	$push34=, $5=, $pop35
	i32.const	$push33=, 1
	i32.and 	$push2=, $pop34, $pop33
	i32.eqz 	$push52=, $pop2
	br_if   	0, $pop52
	i32.load	$push37=, 0($0)
	tee_local	$push36=, $5=, $pop37
	i32.const	$push3=, -2
	i32.and 	$push4=, $pop36, $pop3
	i32.const	$push5=, -1
	i32.add 	$2=, $pop4, $pop5
.LBB183_3:
	end_block
	block   	
	block   	
	i32.const	$push38=, 1
	i32.and 	$push6=, $5, $pop38
	br_if   	0, $pop6
	i32.const	$push7=, 254
	i32.and 	$push8=, $5, $pop7
	i32.const	$push9=, 1
	i32.shr_u	$3=, $pop8, $pop9
	br      	1
.LBB183_5:
	end_block
	i32.load	$3=, 4($0)
.LBB183_6:
	end_block
	i32.const	$4=, 10
	block   	
	i32.gt_u	$push10=, $3, $1
	i32.select	$push40=, $3, $1, $pop10
	tee_local	$push39=, $1=, $pop40
	i32.const	$push11=, 11
	i32.lt_u	$push12=, $pop39, $pop11
	br_if   	0, $pop12
	i32.const	$push13=, 16
	i32.add 	$push14=, $1, $pop13
	i32.const	$push15=, -16
	i32.and 	$push16=, $pop14, $pop15
	i32.const	$push17=, -1
	i32.add 	$4=, $pop16, $pop17
.LBB183_8:
	end_block
	block   	
	i32.eq  	$push18=, $4, $2
	br_if   	0, $pop18
	block   	
	block   	
	i32.const	$push19=, 10
	i32.ne  	$push20=, $4, $pop19
	br_if   	0, $pop20
	i32.const	$6=, 1
	i32.const	$push41=, 1
	i32.add 	$1=, $0, $pop41
	i32.load	$2=, 8($0)
	i32.const	$7=, 0
	br      	1
.LBB183_11:
	end_block
	i32.const	$push42=, 1
	i32.add 	$push22=, $4, $pop42
	i32.call	$1=, _Znwj@FUNCTION, $pop22
	block   	
	i32.gt_u	$push21=, $4, $2
	br_if   	0, $pop21
	i32.eqz 	$push53=, $1
	br_if   	2, $pop53
.LBB183_13:
	end_block
	block   	
	i32.load8_u	$push45=, 0($0)
	tee_local	$push44=, $5=, $pop45
	i32.const	$push43=, 1
	i32.and 	$push23=, $pop44, $pop43
	br_if   	0, $pop23
	i32.const	$7=, 1
	i32.const	$push46=, 1
	i32.add 	$2=, $0, $pop46
	i32.const	$6=, 0
	br      	1
.LBB183_15:
	end_block
	i32.load	$2=, 8($0)
	i32.const	$6=, 1
	i32.const	$7=, 1
.LBB183_16:
	end_block
	block   	
	block   	
	i32.const	$push47=, 1
	i32.and 	$push24=, $5, $pop47
	br_if   	0, $pop24
	i32.const	$push25=, 254
	i32.and 	$push26=, $5, $pop25
	i32.const	$push48=, 1
	i32.shr_u	$5=, $pop26, $pop48
	br      	1
.LBB183_18:
	end_block
	i32.load	$5=, 4($0)
.LBB183_19:
	end_block
	block   	
	i32.const	$push27=, 1
	i32.add 	$push50=, $5, $pop27
	tee_local	$push49=, $5=, $pop50
	i32.eqz 	$push54=, $pop49
	br_if   	0, $pop54
	i32.call	$drop=, memcpy@FUNCTION, $1, $2, $5
.LBB183_21:
	end_block
	block   	
	i32.eqz 	$push55=, $6
	br_if   	0, $pop55
	call    	_ZdlPv@FUNCTION, $2
.LBB183_23:
	end_block
	block   	
	i32.eqz 	$push56=, $7
	br_if   	0, $pop56
	i32.store	4($0), $3
	i32.store	8($0), $1
	i32.const	$push30=, 1
	i32.add 	$push31=, $4, $pop30
	i32.const	$push51=, 1
	i32.or  	$push32=, $pop31, $pop51
	i32.store	0($0), $pop32
	return
.LBB183_25:
	end_block
	i32.const	$push28=, 1
	i32.shl 	$push29=, $3, $pop28
	i32.store8	0($0), $pop29
.LBB183_26:
	end_block
	return
.LBB183_27:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end183:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj, .Lfunc_end183-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj

	.section	.text._ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,comdat
	.hidden	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.weak	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.type	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end184:
	.size	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv, .Lfunc_end184-_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv

	.section	.text._ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv,"axG",@progbits,_ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv,comdat
	.hidden	_ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv
	.weak	_ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv
	.type	_ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv,@function
_ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end185:
	.size	_ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv, .Lfunc_end185-_ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC5ERKS5_,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32
	i64.const	$push0=, 0
	i64.store	0($0):p2align=2, $pop0
	i32.const	$push23=, 8
	i32.add 	$push22=, $0, $pop23
	tee_local	$push21=, $3=, $pop22
	i32.const	$push1=, 0
	i32.store	0($pop21), $pop1
	block   	
	i32.load8_u	$push2=, 0($1)
	i32.const	$push3=, 1
	i32.and 	$push4=, $pop2, $pop3
	br_if   	0, $pop4
	i64.load	$push18=, 0($1):p2align=2
	i64.store	0($0):p2align=2, $pop18
	i32.const	$push24=, 8
	i32.add 	$push19=, $1, $pop24
	i32.load	$push20=, 0($pop19)
	i32.store	0($3), $pop20
	return  	$0
.LBB186_2:
	end_block
	block   	
	i32.load	$push26=, 4($1)
	tee_local	$push25=, $3=, $pop26
	i32.const	$push5=, -16
	i32.ge_u	$push6=, $pop25, $pop5
	br_if   	0, $pop6
	i32.load	$2=, 8($1)
	block   	
	block   	
	block   	
	i32.const	$push7=, 11
	i32.ge_u	$push8=, $3, $pop7
	br_if   	0, $pop8
	i32.const	$push14=, 1
	i32.shl 	$push15=, $3, $pop14
	i32.store8	0($0), $pop15
	i32.const	$push27=, 1
	i32.add 	$1=, $0, $pop27
	br_if   	1, $3
	br      	2
.LBB186_5:
	end_block
	i32.const	$push9=, 16
	i32.add 	$push10=, $3, $pop9
	i32.const	$push11=, -16
	i32.and 	$push29=, $pop10, $pop11
	tee_local	$push28=, $4=, $pop29
	i32.call	$1=, _Znwj@FUNCTION, $pop28
	i32.const	$push12=, 1
	i32.or  	$push13=, $4, $pop12
	i32.store	0($0), $pop13
	i32.store	8($0), $1
	i32.store	4($0), $3
.LBB186_6:
	end_block
	i32.call	$drop=, memcpy@FUNCTION, $1, $2, $3
.LBB186_7:
	end_block
	i32.add 	$push16=, $1, $3
	i32.const	$push17=, 0
	i32.store8	0($pop16), $pop17
	return  	$0
.LBB186_8:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end186:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_, .Lfunc_end186-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_

	.text
	.hidden	fabs
	.globl	fabs
	.type	fabs,@function
fabs:
	.param  	f64
	.result 	f64
	i64.reinterpret/f64	$push0=, $0
	i64.const	$push1=, 9223372036854775807
	i64.and 	$push2=, $pop0, $pop1
	f64.reinterpret/i64	$push3=, $pop2
	.endfunc
.Lfunc_end187:
	.size	fabs, .Lfunc_end187-fabs

	.hidden	fabsf
	.globl	fabsf
	.type	fabsf,@function
fabsf:
	.param  	f32
	.result 	f32
	i32.reinterpret/f32	$push0=, $0
	i32.const	$push1=, 2147483647
	i32.and 	$push2=, $pop0, $pop1
	f32.reinterpret/i32	$push3=, $pop2
	.endfunc
.Lfunc_end188:
	.size	fabsf, .Lfunc_end188-fabsf

	.hidden	memccpy
	.globl	memccpy
	.type	memccpy,@function
memccpy:
	.param  	i32, i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32
	block   	
	block   	
	block   	
	i32.xor 	$push2=, $1, $0
	i32.const	$push25=, 3
	i32.and 	$push3=, $pop2, $pop25
	i32.eqz 	$push62=, $pop3
	br_if   	0, $pop62
	copy_local	$7=, $3
	br      	1
.LBB189_2:
	end_block
	i32.const	$push35=, 3
	i32.and 	$push34=, $1, $pop35
	tee_local	$push33=, $7=, $pop34
	i32.const	$push4=, 0
	i32.ne  	$6=, $pop33, $pop4
	block   	
	block   	
	block   	
	block   	
	i32.eqz 	$push63=, $3
	br_if   	0, $pop63
	i32.eqz 	$push64=, $7
	br_if   	1, $pop64
	i32.const	$push5=, 255
	i32.and 	$4=, $2, $pop5
.LBB189_5:
	loop    	
	i32.load8_u	$push37=, 0($1)
	tee_local	$push36=, $7=, $pop37
	i32.store8	0($0), $pop36
	i32.eq  	$push6=, $7, $4
	br_if   	6, $pop6
	i32.const	$push47=, 1
	i32.add 	$0=, $0, $pop47
	i32.const	$push46=, -1
	i32.add 	$7=, $3, $pop46
	i32.const	$push45=, 1
	i32.add 	$push44=, $1, $pop45
	tee_local	$push43=, $1=, $pop44
	i32.const	$push42=, 3
	i32.and 	$push41=, $pop43, $pop42
	tee_local	$push40=, $5=, $pop41
	i32.const	$push39=, 0
	i32.ne  	$6=, $pop40, $pop39
	i32.const	$push38=, 1
	i32.eq  	$push7=, $3, $pop38
	br_if   	3, $pop7
	copy_local	$3=, $7
	br_if   	0, $5
	br      	3
.LBB189_8:
	end_loop
	end_block
	copy_local	$7=, $3
	br_if   	4, $6
	br      	2
.LBB189_9:
	end_block
	copy_local	$7=, $3
.LBB189_10:
	end_block
	br_if   	2, $6
.LBB189_11:
	end_block
	i32.const	$push48=, 4
	i32.lt_u	$push9=, $7, $pop48
	br_if   	0, $pop9
	i32.const	$push1=, 255
	i32.and 	$push0=, $2, $pop1
	i32.const	$push8=, 16843009
	i32.mul 	$6=, $pop0, $pop8
.LBB189_13:
	loop    	
	i32.load	$push55=, 0($1)
	tee_local	$push54=, $5=, $pop55
	i32.xor 	$push53=, $pop54, $6
	tee_local	$push52=, $3=, $pop53
	i32.const	$push51=, -1
	i32.xor 	$push11=, $pop52, $pop51
	i32.const	$push50=, -16843009
	i32.add 	$push10=, $3, $pop50
	i32.and 	$push12=, $pop11, $pop10
	i32.const	$push49=, -2139062144
	i32.and 	$push13=, $pop12, $pop49
	br_if   	1, $pop13
	i32.store	0($0), $5
	i32.const	$push61=, 4
	i32.add 	$0=, $0, $pop61
	i32.const	$push60=, 4
	i32.add 	$1=, $1, $pop60
	i32.const	$push59=, -4
	i32.add 	$push58=, $7, $pop59
	tee_local	$push57=, $7=, $pop58
	i32.const	$push56=, 3
	i32.gt_u	$push14=, $pop57, $pop56
	br_if   	0, $pop14
.LBB189_15:
	end_loop
	end_block
	i32.eqz 	$push65=, $7
	br_if   	0, $pop65
	i32.const	$push15=, 255
	i32.and 	$5=, $2, $pop15
.LBB189_17:
	loop    	
	i32.load8_u	$push27=, 0($1)
	tee_local	$push26=, $3=, $pop27
	i32.store8	0($0), $pop26
	i32.eq  	$push16=, $3, $5
	br_if   	1, $pop16
	i32.const	$push32=, 1
	i32.add 	$0=, $0, $pop32
	i32.const	$push31=, 1
	i32.add 	$1=, $1, $pop31
	i32.const	$push30=, -1
	i32.add 	$push29=, $7, $pop30
	tee_local	$push28=, $7=, $pop29
	br_if   	0, $pop28
.LBB189_19:
	end_loop
	end_block
	i32.const	$push17=, 1
	i32.add 	$push18=, $0, $pop17
	i32.const	$push23=, 0
	i32.load8_u	$push21=, 0($1)
	i32.const	$push19=, 255
	i32.and 	$push20=, $2, $pop19
	i32.eq  	$push22=, $pop21, $pop20
	i32.select	$push24=, $pop18, $pop23, $pop22
	.endfunc
.Lfunc_end189:
	.size	memccpy, .Lfunc_end189-memccpy

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
.LBB190_2:
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
.LBB190_4:
	end_loop
	end_block
	i32.sub 	$5=, $3, $4
.LBB190_5:
	end_block
	copy_local	$push11=, $5
	.endfunc
.Lfunc_end190:
	.size	memcmp, .Lfunc_end190-memcmp

	.hidden	strlen
	.globl	strlen
	.type	strlen,@function
strlen:
	.param  	i32
	.result 	i32
	.local  	i32, i32
	copy_local	$2=, $0
	block   	
	block   	
	i32.const	$push12=, 3
	i32.and 	$push0=, $0, $pop12
	i32.eqz 	$push28=, $pop0
	br_if   	0, $pop28
	copy_local	$2=, $0
.LBB191_2:
	loop    	
	i32.load8_u	$push1=, 0($2)
	i32.eqz 	$push29=, $pop1
	br_if   	2, $pop29
	i32.const	$push16=, 1
	i32.add 	$push15=, $2, $pop16
	tee_local	$push14=, $2=, $pop15
	i32.const	$push13=, 3
	i32.and 	$push2=, $pop14, $pop13
	br_if   	0, $pop2
.LBB191_4:
	end_loop
	end_block
	i32.const	$push3=, -4
	i32.add 	$2=, $2, $pop3
.LBB191_5:
	loop    	
	i32.const	$push24=, 4
	i32.add 	$push23=, $2, $pop24
	tee_local	$push22=, $2=, $pop23
	i32.load	$push21=, 0($pop22)
	tee_local	$push20=, $1=, $pop21
	i32.const	$push19=, -1
	i32.xor 	$push5=, $pop20, $pop19
	i32.const	$push18=, -16843009
	i32.add 	$push4=, $1, $pop18
	i32.and 	$push6=, $pop5, $pop4
	i32.const	$push17=, -2139062144
	i32.and 	$push7=, $pop6, $pop17
	i32.eqz 	$push30=, $pop7
	br_if   	0, $pop30
	end_loop
	i32.const	$push8=, 255
	i32.and 	$push9=, $1, $pop8
	i32.eqz 	$push31=, $pop9
	br_if   	0, $pop31
.LBB191_8:
	loop    	
	i32.const	$push27=, 1
	i32.add 	$push26=, $2, $pop27
	tee_local	$push25=, $2=, $pop26
	i32.load8_u	$push10=, 0($pop25)
	br_if   	0, $pop10
.LBB191_9:
	end_loop
	end_block
	i32.sub 	$push11=, $2, $0
	.endfunc
.Lfunc_end191:
	.size	strlen, .Lfunc_end191-strlen

	.hidden	malloc
	.globl	malloc
	.type	malloc,@function
malloc:
	.param  	i32
	.result 	i32
	i32.const	$push0=, _ZN5eosio11memory_heapE
	i32.call	$push1=, _ZN5eosio14memory_manager6mallocEm@FUNCTION, $pop0, $0
	.endfunc
.Lfunc_end192:
	.size	malloc, .Lfunc_end192-malloc

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
.LBB193_3:
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
.LBB193_7:
	end_block
	i32.const	$push72=, 4
	i32.add 	$10=, $2, $pop72
.LBB193_8:
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
.LBB193_10:
	end_block
	i32.call	$push86=, _ZN5eosio14memory_manager16next_active_heapEv@FUNCTION, $0
	tee_local	$push85=, $1=, $pop86
	br_if   	0, $pop85
.LBB193_11:
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
.LBB193_12:
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
	i32.const	$push93=, .L.str.1.29
	call    	eosio_assert@FUNCTION, $pop31, $pop93
	i32.const	$push92=, 8196
	i32.add 	$push32=, $1, $pop92
	i32.load	$push91=, 0($pop32)
	tee_local	$push90=, $6=, $pop91
	i32.const	$push89=, 4
	i32.add 	$13=, $pop90, $pop89
.LBB193_13:
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
.LBB193_15:
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
.LBB193_18:
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
.LBB193_20:
	end_block
	i32.ge_u	$push49=, $1, $2
	br_if   	4, $pop49
.LBB193_21:
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
.LBB193_23:
	end_loop
	end_block
	return  	$1
.LBB193_24:
	end_block
	i32.load	$push50=, 0($8)
	i32.const	$push51=, -2147483648
	i32.or  	$push52=, $pop50, $pop51
	i32.store	0($8), $pop52
	return  	$13
.LBB193_25:
	end_block
	i32.const	$push61=, 0
	.endfunc
.Lfunc_end193:
	.size	_ZN5eosio14memory_manager6mallocEm, .Lfunc_end193-_ZN5eosio14memory_manager6mallocEm

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
.LBB194_2:
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
.LBB194_3:
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
.LBB194_6:
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
.LBB194_9:
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
.LBB194_13:
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
.LBB194_17:
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
.LBB194_18:
	end_block
	return  	$8
.LBB194_19:
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
.LBB194_21:
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
.LBB194_22:
	end_block
	i32.add 	$push71=, $8, $7
	i32.store	0($2), $pop71
	copy_local	$push158=, $2
	.endfunc
.Lfunc_end194:
	.size	_ZN5eosio14memory_manager16next_active_heapEv, .Lfunc_end194-_ZN5eosio14memory_manager16next_active_heapEv

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
.LBB195_3:
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
.LBB195_6:
	end_block
	i32.const	$push25=, 12
	i32.add 	$push24=, $3, $pop25
	tee_local	$push23=, $3=, $pop24
	i32.lt_u	$push14=, $pop23, $1
	br_if   	0, $pop14
.LBB195_7:
	end_loop
	end_block
	return
.LBB195_8:
	end_block
	i32.const	$push10=, -4
	i32.add 	$push27=, $0, $pop10
	tee_local	$push26=, $3=, $pop27
	i32.load	$push11=, 0($3)
	i32.const	$push12=, 2147483647
	i32.and 	$push13=, $pop11, $pop12
	i32.store	0($pop26), $pop13
	.endfunc
.Lfunc_end195:
	.size	free, .Lfunc_end195-free

	.hidden	global_receiver
	.type	global_receiver,@object
	.bss
	.globl	global_receiver
	.p2align	3
global_receiver:
	.int64	0
	.size	global_receiver, 8

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"action_size() == sizeof(dummy_action)"
	.size	.L.str, 38

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"read_action(30)"
	.size	.L.str.1, 16

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"read_action(100)"
	.size	.L.str.2, 17

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"read_action(5)"
	.size	.L.str.3, 15

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"read_action(sizeof(dummy_action))"
	.size	.L.str.4, 34

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"dummy13->a == DUMMY_ACTION_DEFAULT_A"
	.size	.L.str.5, 37

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"dummy13->b == DUMMY_ACTION_DEFAULT_B"
	.size	.L.str.6, 37

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"dummy13->c == DUMMY_ACTION_DEFAULT_C"
	.size	.L.str.7, 37

	.type	.L.str.8,@object
.L.str.8:
	.asciz	"get_action failed"
	.size	.L.str.8, 18

	.type	.L.str.9,@object
.L.str.9:
	.asciz	"testapi"
	.size	.L.str.9, 8

	.type	.L.str.10,@object
.L.str.10:
	.asciz	"incorrect permission actor"
	.size	.L.str.10, 27

	.type	.L.str.11,@object
.L.str.11:
	.asciz	"active"
	.size	.L.str.11, 7

	.type	.L.str.12,@object
.L.str.12:
	.asciz	"incorrect permission name"
	.size	.L.str.12, 26

	.type	.L.str.13,@object
.L.str.13:
	.asciz	"pack_size does not match get_action size"
	.size	.L.str.13, 41

	.type	.L.str.14,@object
.L.str.14:
	.asciz	"expected testapi account"
	.size	.L.str.14, 25

	.type	.L.str.15,@object
.L.str.15:
	.asciz	"get_context_free_data() not allowed in non-context free action"
	.size	.L.str.15, 63

	.type	.L.str.16,@object
.L.str.16:
	.asciz	"dum13.a == DUMMY_ACTION_DEFAULT_A"
	.size	.L.str.16, 34

	.type	.L.str.17,@object
.L.str.17:
	.asciz	"dum13.b == DUMMY_ACTION_DEFAULT_B"
	.size	.L.str.17, 34

	.type	.L.str.18,@object
.L.str.18:
	.asciz	"dum13.c == DUMMY_ACTION_DEFAULT_C"
	.size	.L.str.18, 34

	.type	.L.str.339,@object
.L.str.339:
	.asciz	"dummy_action"
	.size	.L.str.339, 13

	.type	.L.str.429,@object
.L.str.429:
	.asciz	"Invalid name"
	.size	.L.str.429, 13

	.type	.L.str.430,@object
.L.str.430:
	.asciz	"Invalid account"
	.size	.L.str.430, 16

	.type	.L.str.426,@object
.L.str.426:
	.asciz	"read"
	.size	.L.str.426, 5

	.type	.L.str.423,@object
.L.str.423:
	.asciz	"get_action size failed"
	.size	.L.str.423, 23

	.type	.L.str.424,@object
.L.str.424:
	.asciz	"get"
	.size	.L.str.424, 4

	.type	.L.str.19,@object
.L.str.19:
	.asciz	"size determination failed"
	.size	.L.str.19, 26

	.type	.L.str.20,@object
.L.str.20:
	.asciz	"get_context_free_data failed"
	.size	.L.str.20, 29

	.type	.L.str.21,@object
.L.str.21:
	.asciz	"invalid value"
	.size	.L.str.21, 14

	.type	.L.str.28,@object
	.section	.rodata,"a",@progbits
.L.str.28:
	.asciz	"test"
	.size	.L.str.28, 5

	.type	.L.str.22,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"test\n"
	.size	.L.str.22, 6

	.type	.L.str.23,@object
.L.str.23:
	.asciz	"transaction_size failed"
	.size	.L.str.23, 24

	.type	.L.str.24,@object
.L.str.24:
	.asciz	"Unable to add float."
	.size	.L.str.24, 21

	.type	.L.str.25,@object
.L.str.25:
	.asciz	"verify eosio_assert can be called"
	.size	.L.str.25, 34

	.type	.L.str.26,@object
.L.str.26:
	.asciz	"privileged_api should not be allowed"
	.size	.L.str.26, 37

	.type	.L.str.27,@object
.L.str.27:
	.asciz	"producer_api should not be allowed"
	.size	.L.str.27, 35

	.type	.L.str.29,@object
.L.str.29:
	.asciz	"db_api should not be allowed"
	.size	.L.str.29, 29

	.type	.L.str.30,@object
.L.str.30:
	.asciz	"action send should not be allowed"
	.size	.L.str.30, 34

	.type	.L.str.31,@object
.L.str.31:
	.asciz	"authorization_api should not be allowed"
	.size	.L.str.31, 40

	.type	.L.str.32,@object
.L.str.32:
	.asciz	"system_api should not be allowed"
	.size	.L.str.32, 33

	.type	.L.str.33,@object
.L.str.33:
	.asciz	"hello"
	.size	.L.str.33, 6

	.type	.L.str.34,@object
.L.str.34:
	.asciz	"transaction_api should not be allowed"
	.size	.L.str.34, 38

	.type	.L.str.427,@object
.L.str.427:
	.asciz	"write"
	.size	.L.str.427, 6

	.type	.L.str.306,@object
.L.str.306:
	.asciz	"cf_action"
	.size	.L.str.306, 10

	.type	.L.str.35,@object
.L.str.35:
	.asciz	"acc1"
	.size	.L.str.35, 5

	.type	.L.str.36,@object
.L.str.36:
	.asciz	"acc2"
	.size	.L.str.36, 5

	.type	.L.str.37,@object
.L.str.37:
	.asciz	"Should've failed"
	.size	.L.str.37, 17

	.type	.L.str.38,@object
.L.str.38:
	.asciz	"require_auth"
	.size	.L.str.38, 13

	.type	.L.str.39,@object
.L.str.39:
	.asciz	"acc3"
	.size	.L.str.39, 5

	.type	.L.str.40,@object
.L.str.40:
	.asciz	"acc4"
	.size	.L.str.40, 5

	.type	.L.str.41,@object
.L.str.41:
	.asciz	"test_action::assert_false"
	.size	.L.str.41, 26

	.type	.L.str.42,@object
.L.str.42:
	.asciz	"test_action::assert_true"
	.size	.L.str.42, 25

	.type	.L.str.43,@object
.L.str.43:
	.asciz	"total == sizeof(uint64_t)"
	.size	.L.str.43, 26

	.type	.L.str.44,@object
.L.str.44:
	.asciz	"pub_time == publication_time()"
	.size	.L.str.44, 31

	.type	.L.str.45,@object
.L.str.45:
	.asciz	"the current receiver does not match"
	.size	.L.str.45, 36

	.type	.L.str.46,@object
.L.str.46:
	.asciz	"tmp == current_time()"
	.size	.L.str.46, 22

	.type	.L.str.47,@object
.L.str.47:
	.asciz	"ab"
	.size	.L.str.47, 3

	.type	.L.str.48,@object
	.section	.rodata,"a",@progbits
.L.str.48:
	.asciz	"c\000test_prints"
	.size	.L.str.48, 14

	.type	.L.str.49,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"efg"
	.size	.L.str.49, 4

	.type	.L.str.50,@object
.L.str.50:
	.asciz	"\n"
	.size	.L.str.50, 2

	.type	.L.str.51,@object
.L.str.51:
	.asciz	"abcde"
	.size	.L.str.51, 6

	.type	.L.str.52,@object
.L.str.52:
	.asciz	"abBde"
	.size	.L.str.52, 6

	.type	.L.str.53,@object
.L.str.53:
	.asciz	"1q1q1qAA"
	.size	.L.str.53, 9

	.type	.L.str.55,@object
.L.str.55:
	.asciz	"AAAAAA"
	.size	.L.str.55, 7

	.type	.L.str.56,@object
.L.str.56:
	.asciz	"abcdefghijk"
	.size	.L.str.56, 12

	.type	.L.str.57,@object
.L.str.57:
	.asciz	"abcdefghijkl"
	.size	.L.str.57, 13

	.type	.L.str.58,@object
.L.str.58:
	.asciz	"abcdefghijkl1"
	.size	.L.str.58, 14

	.type	.L.str.59,@object
.L.str.59:
	.asciz	"abcdefghijkl12"
	.size	.L.str.59, 15

	.type	.L.str.60,@object
.L.str.60:
	.asciz	"abcdefghijkl123"
	.size	.L.str.60, 16

	.type	.L.str.61,@object
.L.str.61:
	.asciz	"cvalue"
	.size	.L.str.61, 7

	.type	.L.str.62,@object
.L.str.62:
	.asciz	"value"
	.size	.L.str.62, 6

	.type	.L.str.63,@object
.L.str.63:
	.asciz	"int64_t size != 8"
	.size	.L.str.63, 18

	.type	.L.str.64,@object
.L.str.64:
	.asciz	"uint64_t size != 8"
	.size	.L.str.64, 19

	.type	.L.str.65,@object
.L.str.65:
	.asciz	"uint32_t size != 4"
	.size	.L.str.65, 19

	.type	.L.str.66,@object
.L.str.66:
	.asciz	"int32_t size != 4"
	.size	.L.str.66, 18

	.type	.L.str.67,@object
.L.str.67:
	.asciz	"uint128_t size != 16"
	.size	.L.str.67, 21

	.type	.L.str.68,@object
.L.str.68:
	.asciz	"int128_t size != 16"
	.size	.L.str.68, 20

	.type	.L.str.69,@object
.L.str.69:
	.asciz	"uint8_t size != 1"
	.size	.L.str.69, 18

	.type	.L.str.70,@object
.L.str.70:
	.asciz	"account_name size !=  8"
	.size	.L.str.70, 24

	.type	.L.str.71,@object
.L.str.71:
	.asciz	"table_name size !=  8"
	.size	.L.str.71, 22

	.type	.L.str.72,@object
.L.str.72:
	.asciz	"time size !=  4"
	.size	.L.str.72, 16

	.type	.L.str.73,@object
.L.str.73:
	.asciz	"key256 size != 32"
	.size	.L.str.73, 18

	.type	.L.str.74,@object
.L.str.74:
	.asciz	"eosio::char_to_symbol('1') !=  1"
	.size	.L.str.74, 33

	.type	.L.str.75,@object
.L.str.75:
	.asciz	"eosio::char_to_symbol('2') !=  2"
	.size	.L.str.75, 33

	.type	.L.str.76,@object
.L.str.76:
	.asciz	"eosio::char_to_symbol('3') !=  3"
	.size	.L.str.76, 33

	.type	.L.str.77,@object
.L.str.77:
	.asciz	"eosio::char_to_symbol('4') !=  4"
	.size	.L.str.77, 33

	.type	.L.str.78,@object
.L.str.78:
	.asciz	"eosio::char_to_symbol('5') !=  5"
	.size	.L.str.78, 33

	.type	.L.str.79,@object
.L.str.79:
	.asciz	"eosio::char_to_symbol('a') !=  6"
	.size	.L.str.79, 33

	.type	.L.str.80,@object
.L.str.80:
	.asciz	"eosio::char_to_symbol('b') !=  7"
	.size	.L.str.80, 33

	.type	.L.str.81,@object
.L.str.81:
	.asciz	"eosio::char_to_symbol('c') !=  8"
	.size	.L.str.81, 33

	.type	.L.str.82,@object
.L.str.82:
	.asciz	"eosio::char_to_symbol('d') !=  9"
	.size	.L.str.82, 33

	.type	.L.str.83,@object
.L.str.83:
	.asciz	"eosio::char_to_symbol('e') != 10"
	.size	.L.str.83, 33

	.type	.L.str.84,@object
.L.str.84:
	.asciz	"eosio::char_to_symbol('f') != 11"
	.size	.L.str.84, 33

	.type	.L.str.85,@object
.L.str.85:
	.asciz	"eosio::char_to_symbol('g') != 12"
	.size	.L.str.85, 33

	.type	.L.str.86,@object
.L.str.86:
	.asciz	"eosio::char_to_symbol('h') != 13"
	.size	.L.str.86, 33

	.type	.L.str.87,@object
.L.str.87:
	.asciz	"eosio::char_to_symbol('i') != 14"
	.size	.L.str.87, 33

	.type	.L.str.88,@object
.L.str.88:
	.asciz	"eosio::char_to_symbol('j') != 15"
	.size	.L.str.88, 33

	.type	.L.str.89,@object
.L.str.89:
	.asciz	"eosio::char_to_symbol('k') != 16"
	.size	.L.str.89, 33

	.type	.L.str.90,@object
.L.str.90:
	.asciz	"eosio::char_to_symbol('l') != 17"
	.size	.L.str.90, 33

	.type	.L.str.91,@object
.L.str.91:
	.asciz	"eosio::char_to_symbol('m') != 18"
	.size	.L.str.91, 33

	.type	.L.str.92,@object
.L.str.92:
	.asciz	"eosio::char_to_symbol('n') != 19"
	.size	.L.str.92, 33

	.type	.L.str.93,@object
.L.str.93:
	.asciz	"eosio::char_to_symbol('o') != 20"
	.size	.L.str.93, 33

	.type	.L.str.94,@object
.L.str.94:
	.asciz	"eosio::char_to_symbol('p') != 21"
	.size	.L.str.94, 33

	.type	.L.str.95,@object
.L.str.95:
	.asciz	"eosio::char_to_symbol('q') != 22"
	.size	.L.str.95, 33

	.type	.L.str.96,@object
.L.str.96:
	.asciz	"eosio::char_to_symbol('r') != 23"
	.size	.L.str.96, 33

	.type	.L.str.97,@object
.L.str.97:
	.asciz	"eosio::char_to_symbol('s') != 24"
	.size	.L.str.97, 33

	.type	.L.str.98,@object
.L.str.98:
	.asciz	"eosio::char_to_symbol('t') != 25"
	.size	.L.str.98, 33

	.type	.L.str.99,@object
.L.str.99:
	.asciz	"eosio::char_to_symbol('u') != 26"
	.size	.L.str.99, 33

	.type	.L.str.100,@object
.L.str.100:
	.asciz	"eosio::char_to_symbol('v') != 27"
	.size	.L.str.100, 33

	.type	.L.str.101,@object
.L.str.101:
	.asciz	"eosio::char_to_symbol('w') != 28"
	.size	.L.str.101, 33

	.type	.L.str.102,@object
.L.str.102:
	.asciz	"eosio::char_to_symbol('x') != 29"
	.size	.L.str.102, 33

	.type	.L.str.103,@object
.L.str.103:
	.asciz	"eosio::char_to_symbol('y') != 30"
	.size	.L.str.103, 33

	.type	.L.str.104,@object
.L.str.104:
	.asciz	"eosio::char_to_symbol('z') != 31"
	.size	.L.str.104, 33

	.type	.L.str.106,@object
.L.str.106:
	.asciz	"a"
	.size	.L.str.106, 2

	.type	.L.str.107,@object
.L.str.107:
	.asciz	"eosio::string_to_name(a)"
	.size	.L.str.107, 25

	.type	.L.str.108,@object
.L.str.108:
	.asciz	"ba"
	.size	.L.str.108, 3

	.type	.L.str.109,@object
.L.str.109:
	.asciz	"eosio::string_to_name(ba)"
	.size	.L.str.109, 26

	.type	.L.str.110,@object
.L.str.110:
	.asciz	"cba"
	.size	.L.str.110, 4

	.type	.L.str.111,@object
.L.str.111:
	.asciz	"eosio::string_to_name(cba)"
	.size	.L.str.111, 27

	.type	.L.str.112,@object
.L.str.112:
	.asciz	"dcba"
	.size	.L.str.112, 5

	.type	.L.str.113,@object
.L.str.113:
	.asciz	"eosio::string_to_name(dcba)"
	.size	.L.str.113, 28

	.type	.L.str.114,@object
.L.str.114:
	.asciz	"edcba"
	.size	.L.str.114, 6

	.type	.L.str.115,@object
.L.str.115:
	.asciz	"eosio::string_to_name(edcba)"
	.size	.L.str.115, 29

	.type	.L.str.116,@object
.L.str.116:
	.asciz	"fedcba"
	.size	.L.str.116, 7

	.type	.L.str.117,@object
.L.str.117:
	.asciz	"eosio::string_to_name(fedcba)"
	.size	.L.str.117, 30

	.type	.L.str.118,@object
.L.str.118:
	.asciz	"gfedcba"
	.size	.L.str.118, 8

	.type	.L.str.119,@object
.L.str.119:
	.asciz	"eosio::string_to_name(gfedcba)"
	.size	.L.str.119, 31

	.type	.L.str.120,@object
.L.str.120:
	.asciz	"hgfedcba"
	.size	.L.str.120, 9

	.type	.L.str.121,@object
.L.str.121:
	.asciz	"eosio::string_to_name(hgfedcba)"
	.size	.L.str.121, 32

	.type	.L.str.122,@object
.L.str.122:
	.asciz	"ihgfedcba"
	.size	.L.str.122, 10

	.type	.L.str.123,@object
.L.str.123:
	.asciz	"eosio::string_to_name(ihgfedcba)"
	.size	.L.str.123, 33

	.type	.L.str.124,@object
.L.str.124:
	.asciz	"jihgfedcba"
	.size	.L.str.124, 11

	.type	.L.str.125,@object
.L.str.125:
	.asciz	"eosio::string_to_name(jihgfedcba)"
	.size	.L.str.125, 34

	.type	.L.str.126,@object
.L.str.126:
	.asciz	"kjihgfedcba"
	.size	.L.str.126, 12

	.type	.L.str.127,@object
.L.str.127:
	.asciz	"eosio::string_to_name(kjihgfedcba)"
	.size	.L.str.127, 35

	.type	.L.str.128,@object
.L.str.128:
	.asciz	"lkjihgfedcba"
	.size	.L.str.128, 13

	.type	.L.str.129,@object
.L.str.129:
	.asciz	"eosio::string_to_name(lkjihgfedcba)"
	.size	.L.str.129, 36

	.type	.L.str.130,@object
.L.str.130:
	.asciz	"mlkjihgfedcba"
	.size	.L.str.130, 14

	.type	.L.str.131,@object
.L.str.131:
	.asciz	"eosio::string_to_name(mlkjihgfedcba)"
	.size	.L.str.131, 37

	.type	.L.str.132,@object
.L.str.132:
	.asciz	"mlkjihgfedcba1"
	.size	.L.str.132, 15

	.type	.L.str.133,@object
.L.str.133:
	.asciz	"mlkjihgfedcba2"
	.size	.L.str.133, 15

	.type	.L.str.134,@object
.L.str.134:
	.asciz	"eosio::string_to_name(mlkjihgfedcba2)"
	.size	.L.str.134, 38

	.type	.L.str.135,@object
.L.str.135:
	.asciz	"mlkjihgfedcba55"
	.size	.L.str.135, 16

	.type	.L.str.136,@object
.L.str.136:
	.asciz	"mlkjihgfedcba14"
	.size	.L.str.136, 16

	.type	.L.str.137,@object
.L.str.137:
	.asciz	"eosio::string_to_name(mlkjihgfedcba14)"
	.size	.L.str.137, 39

	.type	.L.str.138,@object
.L.str.138:
	.asciz	"azAA34"
	.size	.L.str.138, 7

	.type	.L.str.139,@object
.L.str.139:
	.asciz	"azBB34"
	.size	.L.str.139, 7

	.type	.L.str.140,@object
.L.str.140:
	.asciz	"eosio::string_to_name N(azBB34)"
	.size	.L.str.140, 32

	.type	.L.str.141,@object
.L.str.141:
	.asciz	"AZaz12Bc34"
	.size	.L.str.141, 11

	.type	.L.str.142,@object
.L.str.142:
	.asciz	"eosio::string_to_name AZaz12Bc34"
	.size	.L.str.142, 33

	.type	.L.str.143,@object
.L.str.143:
	.asciz	"AAAAAAAAAAAAAAA"
	.size	.L.str.143, 16

	.type	.L.str.144,@object
.L.str.144:
	.asciz	"BBBBBBBBBBBBBDDDDDFFFGG"
	.size	.L.str.144, 24

	.type	.L.str.145,@object
.L.str.145:
	.asciz	"eosio::string_to_name BBBBBBBBBBBBBDDDDDFFFGG"
	.size	.L.str.145, 46

	.type	.L.str.146,@object
.L.str.146:
	.asciz	"eosio::name != N(azAA34)"
	.size	.L.str.146, 25

	.type	.L.str.148,@object
.L.str.148:
	.asciz	"eosio::name != N(0)"
	.size	.L.str.148, 20

	.type	.L.str.149,@object
.L.str.149:
	.asciz	"AA11"
	.size	.L.str.149, 5

	.type	.L.str.150,@object
.L.str.150:
	.asciz	"eosio::name != N(AA11)"
	.size	.L.str.150, 23

	.type	.L.str.152,@object
.L.str.152:
	.asciz	"11"
	.size	.L.str.152, 3

	.type	.L.str.153,@object
.L.str.153:
	.asciz	"eosio::name != N(11)"
	.size	.L.str.153, 21

	.type	.L.str.155,@object
.L.str.155:
	.asciz	"22"
	.size	.L.str.155, 3

	.type	.L.str.156,@object
.L.str.156:
	.asciz	"eosio::name != N(22)"
	.size	.L.str.156, 21

	.type	.L.str.157,@object
.L.str.157:
	.asciz	"AAAbbcccdd"
	.size	.L.str.157, 11

	.type	.L.str.158,@object
.L.str.158:
	.asciz	"eosio::name == eosio::name"
	.size	.L.str.158, 27

	.type	.L.str.159,@object
.L.str.159:
	.asciz	"11bbcccdd"
	.size	.L.str.159, 10

	.type	.L.str.160,@object
.L.str.160:
	.asciz	"N(11bbcccdd) == tmp"
	.size	.L.str.160, 20

	.type	.L.str.161,@object
.L.str.161:
	.asciz	"fixed_point128 instances comparison with same number of decimals"
	.size	.L.str.161, 65

	.type	.L.str.162,@object
.L.str.162:
	.asciz	"fixed_point128 instances with different number of decimals"
	.size	.L.str.162, 59

	.type	.L.str.163,@object
.L.str.163:
	.asciz	"fixed_point64 instances comparison with same number of decimals"
	.size	.L.str.163, 64

	.type	.L.str.164,@object
.L.str.164:
	.asciz	"fixed_point64 instances with different number of decimals"
	.size	.L.str.164, 58

	.type	.L.str.165,@object
.L.str.165:
	.asciz	"fixed_point32 instances comparison with same number of decimals"
	.size	.L.str.165, 64

	.type	.L.str.166,@object
.L.str.166:
	.asciz	"fixed_point32 instances with different number of decimals"
	.size	.L.str.166, 58

	.type	.L.str.167,@object
.L.str.167:
	.asciz	"fixed_point32 instances addition with zero decmimals"
	.size	.L.str.167, 53

	.type	.L.str.168,@object
.L.str.168:
	.asciz	"fixed_point64 instances addition with zero decmimals"
	.size	.L.str.168, 53

	.type	.L.str.169,@object
.L.str.169:
	.asciz	"fixed_point64 instances subtraction with zero decmimals"
	.size	.L.str.169, 56

	.type	.L.str.170,@object
.L.str.170:
	.asciz	"fixed_point32 instances subtraction with zero decmimals"
	.size	.L.str.170, 56

	.type	.L.str.171,@object
.L.str.171:
	.asciz	"fixed_point64 instances multiplication result in fixed_point128"
	.size	.L.str.171, 64

	.type	.L.str.172,@object
.L.str.172:
	.asciz	"fixed_point32 instances multiplication result in fixed_point64"
	.size	.L.str.172, 63

	.type	.L.str.431,@object
.L.str.431:
	.asciz	"divide by zero"
	.size	.L.str.431, 15

	.type	.L.str.432,@object
.L.str.432:
	.asciz	"."
	.size	.L.str.432, 2

	.type	.L.str.173,@object
.L.str.173:
	.asciz	"fixed_point64 instances division result from operator and function and compare in fixed_point128"
	.size	.L.str.173, 97

	.type	.L.str.174,@object
.L.str.174:
	.asciz	"should've thrown an error"
	.size	.L.str.174, 26

	.type	.L.str.175,@object
.L.str.175:
	.asciz	"__multi3 result should be -3000"
	.size	.L.str.175, 32

	.type	.L.str.176,@object
.L.str.176:
	.asciz	"__multi3 result should be 900"
	.size	.L.str.176, 30

	.type	.L.str.177,@object
.L.str.177:
	.asciz	"__multi3 result should be 10000"
	.size	.L.str.177, 32

	.type	.L.str.178,@object
.L.str.178:
	.asciz	"__multi3 result should be 100"
	.size	.L.str.178, 30

	.type	.L.str.179,@object
.L.str.179:
	.asciz	"__multi3 result should be -30"
	.size	.L.str.179, 30

	.type	.L.str.180,@object
.L.str.180:
	.asciz	"__divti3 result should be 0"
	.size	.L.str.180, 28

	.type	.L.str.181,@object
.L.str.181:
	.asciz	"__divti3 result should be -3"
	.size	.L.str.181, 29

	.type	.L.str.182,@object
.L.str.182:
	.asciz	"__divti3 result should be 1"
	.size	.L.str.182, 28

	.type	.L.str.183,@object
.L.str.183:
	.asciz	"__divti3 result should be 33"
	.size	.L.str.183, 29

	.type	.L.str.184,@object
.L.str.184:
	.asciz	"__divti3 result should be 100"
	.size	.L.str.184, 30

	.type	.L.str.185,@object
.L.str.185:
	.asciz	"__divti3 result should be -30"
	.size	.L.str.185, 30

	.type	.L.str.186,@object
.L.str.186:
	.asciz	"Should have eosio_asserted"
	.size	.L.str.186, 27

	.type	.L.str.188,@object
.L.str.188:
	.asciz	"__udivti3 result should be 0"
	.size	.L.str.188, 29

	.type	.L.str.189,@object
.L.str.189:
	.asciz	"__udivti3 result should be 1"
	.size	.L.str.189, 29

	.type	.L.str.190,@object
.L.str.190:
	.asciz	"__lshlti3 result should be 1"
	.size	.L.str.190, 29

	.type	.L.str.191,@object
.L.str.191:
	.asciz	"__lshlti3 result should be 2"
	.size	.L.str.191, 29

	.type	.L.str.193,@object
.L.str.193:
	.asciz	"__lshlti3 result should be 2^31"
	.size	.L.str.193, 32

	.type	.L.str.195,@object
.L.str.195:
	.asciz	"__lshlti3 result should be 2^63"
	.size	.L.str.195, 32

	.type	.L.str.196,@object
.L.str.196:
	.asciz	"__lshlti3 result should be 2^64"
	.size	.L.str.196, 32

	.type	.L.str.197,@object
.L.str.197:
	.asciz	"__lshlti3 result should be 2^127"
	.size	.L.str.197, 33

	.type	.L.str.198,@object
.L.str.198:
	.asciz	"__lshlti3 result should be 2^128"
	.size	.L.str.198, 33

	.type	.L.str.199,@object
.L.str.199:
	.asciz	"__ashlti3 result should be 1"
	.size	.L.str.199, 29

	.type	.L.str.200,@object
.L.str.200:
	.asciz	"__ashlti3 result should be 2"
	.size	.L.str.200, 29

	.type	.L.str.201,@object
.L.str.201:
	.asciz	"__ashlti3 result should be 2^31"
	.size	.L.str.201, 32

	.type	.L.str.202,@object
.L.str.202:
	.asciz	"__ashlti3 result should be 2^63"
	.size	.L.str.202, 32

	.type	.L.str.203,@object
.L.str.203:
	.asciz	"__ashlti3 result should be 2^64"
	.size	.L.str.203, 32

	.type	.L.str.204,@object
.L.str.204:
	.asciz	"__ashlti3 result should be 2^127"
	.size	.L.str.204, 33

	.type	.L.str.205,@object
.L.str.205:
	.asciz	"__ashlti3 result should be 2^128"
	.size	.L.str.205, 33

	.type	.L.str.206,@object
.L.str.206:
	.asciz	"__lshrti3 result should be 2^127"
	.size	.L.str.206, 33

	.type	.L.str.208,@object
.L.str.208:
	.asciz	"__lshrti3 result should be 2^126"
	.size	.L.str.208, 33

	.type	.L.str.210,@object
.L.str.210:
	.asciz	"__lshrti3 result should be 2^64"
	.size	.L.str.210, 32

	.type	.L.str.211,@object
.L.str.211:
	.asciz	"__lshrti3 result should be 2^63"
	.size	.L.str.211, 32

	.type	.L.str.212,@object
.L.str.212:
	.asciz	"__lshrti3 result should be 2^31"
	.size	.L.str.212, 32

	.type	.L.str.213,@object
.L.str.213:
	.asciz	"__lshrti3 result should be 2^0"
	.size	.L.str.213, 31

	.type	.L.str.215,@object
.L.str.215:
	.asciz	"__ashrti3 result should be -2^127"
	.size	.L.str.215, 34

	.type	.L.str.216,@object
.L.str.216:
	.asciz	"__ashrti3 result should be -2^126"
	.size	.L.str.216, 34

	.type	.L.str.217,@object
.L.str.217:
	.asciz	"__ashrti3 result should be -2^125"
	.size	.L.str.217, 34

	.type	.L.str.218,@object
.L.str.218:
	.asciz	"__ashrti3 result should be -2^63"
	.size	.L.str.218, 33

	.type	.L.str.219,@object
.L.str.219:
	.asciz	"__ashrti3 result should be -2^31"
	.size	.L.str.219, 33

	.type	.L.str.220,@object
.L.str.220:
	.asciz	"__ashrti3 result should be -2^0"
	.size	.L.str.220, 32

	.type	.L.str.221,@object
.L.str.221:
	.asciz	"__modti3 result should be -30"
	.size	.L.str.221, 30

	.type	.L.str.222,@object
.L.str.222:
	.asciz	"__modti3 result should be 30"
	.size	.L.str.222, 29

	.type	.L.str.223,@object
.L.str.223:
	.asciz	"__modti3 result should be 10"
	.size	.L.str.223, 29

	.type	.L.str.224,@object
.L.str.224:
	.asciz	"__modti3 result should be 0"
	.size	.L.str.224, 28

	.type	.L.str.225,@object
.L.str.225:
	.asciz	"should have thrown an error"
	.size	.L.str.225, 28

	.type	.L.str.226,@object
.L.str.226:
	.asciz	"public key does not match"
	.size	.L.str.226, 26

	.type	.L.str.301,@object
	.section	.rodata,"a",@progbits
.L.str.301:
	.asciz	"abc"
	.size	.L.str.301, 4

	.type	_ZL10test1_ok_1,@object
	.p2align	4
_ZL10test1_ok_1:
	.ascii	"\251\231>6G\006\201j\272>%qxP\302l\234\320\330\235"
	.size	_ZL10test1_ok_1, 20

	.type	.L.str.227,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.227:
	.asciz	"sha1 test1"
	.size	.L.str.227, 11

	.type	_ZL5test3,@object
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL5test3:
	.asciz	"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq"
	.size	_ZL5test3, 57

	.type	_ZL10test3_ok_1,@object
	.p2align	4
_ZL10test3_ok_1:
	.ascii	"\204\230>D\034;\322n\272\256J\241\371Q)\345\345Fp\361"
	.size	_ZL10test3_ok_1, 20

	.type	.L.str.228,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.228:
	.asciz	"sha1 test3"
	.size	.L.str.228, 11

	.type	_ZL5test4,@object
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL5test4:
	.asciz	"abcdefghbcdefghicdefghijdefghijkefghijklfghijklmghijklmnhijklmnoijklmnopjklmnopqklmnopqrlmnopqrsmnopqrstnopqrstu"
	.size	_ZL5test4, 113

	.type	_ZL10test4_ok_1,@object
	.p2align	4
_ZL10test4_ok_1:
	.ascii	"\244\233$F\240,d[\364\031\371\225\266p\221%:\004\242Y"
	.size	_ZL10test4_ok_1, 20

	.type	.L.str.229,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.229:
	.asciz	"sha1 test4"
	.size	.L.str.229, 11

	.type	_ZL5test5,@object
	.section	.rodata,"a",@progbits
_ZL5test5:
	.asciz	"message digest"
	.size	_ZL5test5, 15

	.type	_ZL10test5_ok_1,@object
	.p2align	4
_ZL10test5_ok_1:
	.ascii	"\301\"R\316\332\213\350\231M_\240)\nG#\034\035\026\252\343"
	.size	_ZL10test5_ok_1, 20

	.type	.L.str.230,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.230:
	.asciz	"sha1 test5"
	.size	.L.str.230, 11

	.type	_ZL12test1_ok_256,@object
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL12test1_ok_256:
	.ascii	"\272x\026\277\217\001\317\352AA@\336]\256\"#\260\003a\243\226\027z\234\264\020\377a\362\000\025\255"
	.size	_ZL12test1_ok_256, 32

	.type	.L.str.231,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.231:
	.asciz	"sha256 test1"
	.size	.L.str.231, 13

	.type	_ZL12test3_ok_256,@object
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL12test3_ok_256:
	.ascii	"$\215ja\322\0068\270\345\300&\223\f>`9\243<\344Yd\377!g\366\354\355\324\031\333\006\301"
	.size	_ZL12test3_ok_256, 32

	.type	.L.str.232,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.232:
	.asciz	"sha256 test3"
	.size	.L.str.232, 13

	.type	_ZL12test4_ok_256,@object
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL12test4_ok_256:
	.ascii	"\317[\026\247x\257\203\200\003l\345\236{\004\2227\013$\233\021\350\360zQ\257\254E\003z\376\351\321"
	.size	_ZL12test4_ok_256, 32

	.type	.L.str.233,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.233:
	.asciz	"sha256 test4"
	.size	.L.str.233, 13

	.type	_ZL12test5_ok_256,@object
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL12test5_ok_256:
	.ascii	"\367\204oU\317#\341N\353\352\265\264\341U\f\255[P\2363H\373\304\357\243\241A=9<\266P"
	.size	_ZL12test5_ok_256, 32

	.type	.L.str.234,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.234:
	.asciz	"sha256 test5"
	.size	.L.str.234, 13

	.type	_ZL12test1_ok_512,@object
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL12test1_ok_512:
	.ascii	"\335\2575\241\223az\272\314AsI\256 A1\022\346\372N\211\251~\242\n\236\356\346KU\323\232!\222\231*'O\301\2506\272<#\243\376\353\275EMD#d<\350\016*\232\311O\245L\244\237"
	.size	_ZL12test1_ok_512, 64

	.type	.L.str.235,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.235:
	.asciz	"sha512 test1"
	.size	.L.str.235, 13

	.type	_ZL12test3_ok_512,@object
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL12test3_ok_512:
	.ascii	" J\217\306\335\250/\n\f\355{\353\216\b\244\026W\301n\364h\262(\250'\233\3431\247\003\3035\226\375\025\301;\033\007\371\252\035;\352Wx\234\2401\255\205\307\247\035\327\003T\354c\0228\3124E"
	.size	_ZL12test3_ok_512, 64

	.type	.L.str.236,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.236:
	.asciz	"sha512 test3"
	.size	.L.str.236, 13

	.type	_ZL12test4_ok_512,@object
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL12test4_ok_512:
	.ascii	"\216\225\233u\332\343\023\332\214\364\367(\024\374\024?\217wy\306\353\237\177\241r\231\256\255\266\210\220\030P\035(\236I\000\367\3443\033\231\336\304\265C:\307\323)\356\266\335&T^\226\345[\207K\351\t"
	.size	_ZL12test4_ok_512, 64

	.type	.L.str.237,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.237:
	.asciz	"sha512 test4"
	.size	.L.str.237, 13

	.type	_ZL12test5_ok_512,@object
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL12test5_ok_512:
	.ascii	"\020}\2778\235\236\237q\243\251_l\005[\222Q\274Rh\302\276\026\326\3014\222\352E\260\031\2373\t\341dU\253\036\226\021\216\212\220]U\227\267 8\335\263r\250\230&\004m\346f\207\273B\016|"
	.size	_ZL12test5_ok_512, 64

	.type	.L.str.238,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.238:
	.asciz	"sha512 test5"
	.size	.L.str.238, 13

	.type	_ZL13test1_ok_ripe,@object
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL13test1_ok_ripe:
	.ascii	"\216\262\b\367\340]\230z\233\004J\216\230\306\260\207\361Z\013\374"
	.size	_ZL13test1_ok_ripe, 20

	.type	.L.str.239,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.239:
	.asciz	"ripemd160 test1"
	.size	.L.str.239, 16

	.type	_ZL13test3_ok_ripe,@object
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL13test3_ok_ripe:
	.ascii	"\022\240S8J\234\f\210\344\005\240l'\334\364\232\332b\353+"
	.size	_ZL13test3_ok_ripe, 20

	.type	.L.str.240,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.240:
	.asciz	"ripemd160 test3"
	.size	.L.str.240, 16

	.type	_ZL13test4_ok_ripe,@object
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL13test4_ok_ripe:
	.ascii	"o?\243\233kP<8O\221\232I\247\252\\,\b\275\373E"
	.size	_ZL13test4_ok_ripe, 20

	.type	.L.str.241,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.241:
	.asciz	"ripemd160 test4"
	.size	.L.str.241, 16

	.type	_ZL13test5_ok_ripe,@object
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL13test5_ok_ripe:
	.ascii	"]\006\211\357I\322\372\345r\270\201\261#\250_\372!Y_6"
	.size	_ZL13test5_ok_ripe, 20

	.type	.L.str.242,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.242:
	.asciz	"ripemd160 test5"
	.size	.L.str.242, 16

	.type	_ZL5test2,@object
	.section	.rodata,"a",@progbits
_ZL5test2:
	.skip	1
	.size	_ZL5test2, 1

	.type	_ZL10test2_ok_1,@object
	.p2align	4
_ZL10test2_ok_1:
	.ascii	"\3329\243\356^kK\r2U\277\357\225`\030\220\257\330\007\t"
	.size	_ZL10test2_ok_1, 20

	.type	.L.str.243,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.243:
	.asciz	"sha1 test2"
	.size	.L.str.243, 11

	.type	_ZL12test2_ok_256,@object
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL12test2_ok_256:
	.ascii	"\343\260\304B\230\374\034\024\232\373\364\310\231o\271$'\256A\344d\233\223L\244\225\231\033xR\270U"
	.size	_ZL12test2_ok_256, 32

	.type	.L.str.244,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.244:
	.asciz	"sha256 test2"
	.size	.L.str.244, 13

	.type	_ZL12test2_ok_512,@object
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL12test2_ok_512:
	.ascii	"\317\203\3415~\357\270\275\361T(P\326m\200\007\326 \344\005\013W\025\334\203\364\251!\323l\351\316G\320\321<]\205\362\260\377\203\030\322\207~\354/c\2711\275GAz\201\24582z\371'\332>"
	.size	_ZL12test2_ok_512, 64

	.type	.L.str.245,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.245:
	.asciz	"sha512 test2"
	.size	.L.str.245, 13

	.type	_ZL13test2_ok_ripe,@object
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL13test2_ok_ripe:
	.ascii	"\234\021\205\245\305\351\374Ta(\b\227~\350\365H\262%\2151"
	.size	_ZL13test2_ok_ripe, 20

	.type	.L.str.246,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.246:
	.asciz	"ripemd160 test2"
	.size	.L.str.246, 16

	.type	.L.str.247,@object
.L.str.247:
	.asciz	"should have failed"
	.size	.L.str.247, 19

	.type	.L.str.248,@object
.L.str.248:
	.asciz	"producers.len != 21"
	.size	.L.str.248, 20

	.type	.L.str.249,@object
.L.str.249:
	.asciz	"Active producer"
	.size	.L.str.249, 16

	.type	.L_ZZN16test_transaction11send_actionEvE11test_action,@object
	.section	.rodata,"a",@progbits
.L_ZZN16test_transaction11send_actionEvE11test_action:
	.int8	69
	.int64	-6119884940280240521
	.int32	1951510034
	.size	.L_ZZN16test_transaction11send_actionEvE11test_action, 13

	.type	_ZZN16test_transaction17send_action_largeEvE13large_message,@object
	.lcomm	_ZZN16test_transaction17send_action_largeEvE13large_message,8192,4
	.type	.L.str.250,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.250:
	.asciz	"send_message_large() should've thrown an error"
	.size	.L.str.250, 47

	.type	.L.str.251,@object
.L.str.251:
	.asciz	"tapos_block_prefix does not match"
	.size	.L.str.251, 34

	.type	.L.str.252,@object
.L.str.252:
	.asciz	"tapos_block_num does not match"
	.size	.L.str.252, 31

	.type	.L.str.253,@object
.L.str.253:
	.asciz	"read_transaction failed"
	.size	.L.str.253, 24

	.type	.L.str.254,@object
.L.str.254:
	.asciz	"size: "
	.size	.L.str.254, 7

	.type	.L.str.255,@object
.L.str.255:
	.asciz	"transaction size does not match"
	.size	.L.str.255, 32

	.type	.L_ZZN16test_transaction16send_transactionEyyyE7payload,@object
	.section	.rodata,"a",@progbits
.L_ZZN16test_transaction16send_transactionEyyyE7payload:
	.int8	69
	.int64	-6119884940280240521
	.int32	1951510034
	.size	.L_ZZN16test_transaction16send_transactionEyyyE7payload, 13

	.type	.L.str.256,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.256:
	.asciz	"send_transaction_empty() should've thrown an error"
	.size	.L.str.256, 51

	.type	.L.str.257,@object
.L.str.257:
	.asciz	"transaction should only have one action"
	.size	.L.str.257, 40

	.type	.L.str.258,@object
.L.str.258:
	.asciz	"transaction has wrong code"
	.size	.L.str.258, 27

	.type	.L.str.261,@object
.L.str.261:
	.asciz	"transaction has wrong name"
	.size	.L.str.261, 27

	.type	.L.str.262,@object
.L.str.262:
	.asciz	"action should only have one authorization"
	.size	.L.str.262, 42

	.type	.L.str.263,@object
.L.str.263:
	.asciz	"action's authorization has wrong actor"
	.size	.L.str.263, 39

	.type	.L.str.264,@object
.L.str.264:
	.asciz	"action's authorization has wrong permission"
	.size	.L.str.264, 44

	.type	.L.str.265,@object
.L.str.265:
	.asciz	"send_transaction_large() should've thrown an error"
	.size	.L.str.265, 51

	.type	.L.str.266,@object
.L.str.266:
	.asciz	"deferred executed\n"
	.size	.L.str.266, 19

	.type	.L.str.267,@object
.L.str.267:
	.asciz	"transaction was not found"
	.size	.L.str.267, 26

	.type	.L.str.268,@object
.L.str.268:
	.asciz	"transaction was canceled, whild should not be found"
	.size	.L.str.268, 52

	.type	.L.str.428,@object
.L.str.428:
	.asciz	"context free actions cannot have authorizations"
	.size	.L.str.428, 48

	.type	.L.str.269,@object
.L.str.269:
	.asciz	"dummy"
	.size	.L.str.269, 6

	.type	.L.str.270,@object
.L.str.270:
	.asciz	"send_cfa_action_fail() should've thrown an error"
	.size	.L.str.270, 49

	.type	.L.str.271,@object
.L.str.271:
	.asciz	"test_transaction"
	.size	.L.str.271, 17

	.type	.L.str.272,@object
.L.str.272:
	.asciz	"table"
	.size	.L.str.272, 6

	.type	.L.str.273,@object
.L.str.273:
	.asciz	"newfeature"
	.size	.L.str.273, 11

	.type	.L.str.274,@object
.L.str.274:
	.asciz	"we should not have new features unless hardfork"
	.size	.L.str.274, 48

	.type	.L.str.275,@object
.L.str.275:
	.asciz	"unexpected last used permission time"
	.size	.L.str.275, 37

	.type	.L.str.276,@object
.L.str.276:
	.asciz	"unexpected account creation time"
	.size	.L.str.276, 33

	.type	.L.str.277,@object
.L.str.277:
	.asciz	"bool"
	.size	.L.str.277, 5

	.type	.L.str.278,@object
.L.str.278:
	.asciz	"int8"
	.size	.L.str.278, 5

	.type	.L.str.279,@object
.L.str.279:
	.asciz	"uint8"
	.size	.L.str.279, 6

	.type	.L.str.280,@object
.L.str.280:
	.asciz	"int16"
	.size	.L.str.280, 6

	.type	.L.str.281,@object
.L.str.281:
	.asciz	"uint16"
	.size	.L.str.281, 7

	.type	.L.str.282,@object
.L.str.282:
	.asciz	"int32"
	.size	.L.str.282, 6

	.type	.L.str.283,@object
.L.str.283:
	.asciz	"uint32"
	.size	.L.str.283, 7

	.type	.L.str.284,@object
.L.str.284:
	.asciz	"int64"
	.size	.L.str.284, 6

	.type	.L.str.285,@object
.L.str.285:
	.asciz	"uint64"
	.size	.L.str.285, 7

	.type	.L.str.286,@object
.L.str.286:
	.asciz	"float"
	.size	.L.str.286, 6

	.type	.L.str.287,@object
.L.str.287:
	.asciz	"double"
	.size	.L.str.287, 7

	.type	.L.ref.tmp,@object
	.section	.rodata,"a",@progbits
	.p2align	3
.L.ref.tmp:
	.int32	1
	.skip	4
	.int64	4608238783128613432
	.size	.L.ref.tmp, 16

	.type	.L.str.288,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.288:
	.asciz	"struct"
	.size	.L.str.288, 7

	.type	.L.ref.tmp.289,@object
	.section	.rodata,"a",@progbits
	.p2align	2
.L.ref.tmp.289:
	.int32	10
	.int32	20
	.size	.L.ref.tmp.289, 8

	.type	.L.str.290,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.290:
	.asciz	"StaticArray"
	.size	.L.str.290, 12

	.type	.L.str.291,@object
.L.str.291:
	.asciz	"string"
	.size	.L.str.291, 7

	.type	.L.str.293,@object
.L.str.293:
	.asciz	"vector"
	.size	.L.str.293, 7

	.type	.L.str.294,@object
.L.str.294:
	.asciz	"empty vector"
	.size	.L.str.294, 13

	.type	.L.ref.tmp.295,@object
	.section	.rodata,"a",@progbits
	.p2align	2
.L.ref.tmp.295:
	.int32	10
	.int32	20
	.int32	30
	.size	.L.ref.tmp.295, 12

	.type	.L.str.296,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.296:
	.asciz	"std::array<T,N>"
	.size	.L.str.296, 16

	.type	.L.str.297,@object
.L.str.297:
	.asciz	"apple"
	.size	.L.str.297, 6

	.type	.L.str.298,@object
.L.str.298:
	.asciz	"cat"
	.size	.L.str.298, 4

	.type	.L.str.299,@object
.L.str.299:
	.asciz	"panda"
	.size	.L.str.299, 6

	.type	.L.str.300,@object
.L.str.300:
	.asciz	"map"
	.size	.L.str.300, 4

	.type	.L.str.302,@object
.L.str.302:
	.asciz	"tuple"
	.size	.L.str.302, 6

	.type	.L.str.303,@object
.L.str.303:
	.asciz	"eosio"
	.size	.L.str.303, 6

	.type	.L.str.304,@object
.L.str.304:
	.asciz	"onerror"
	.size	.L.str.304, 8

	.type	.L.str.305,@object
.L.str.305:
	.asciz	"onerror called\n"
	.size	.L.str.305, 16

	.type	.L.str.422,@object
.L.str.422:
	.asciz	"Unknown Test"
	.size	.L.str.422, 13

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

	.type	.L.str.1.29,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1.29:
	.asciz	"malloc_from_freed was designed to only be called after _heap was completely allocated"
	.size	.L.str.1.29, 86

	.type	_ZZ4sbrkjE11initialized,@object
	.lcomm	_ZZ4sbrkjE11initialized,1
	.type	_ZZ4sbrkjE10sbrk_bytes,@object
	.lcomm	_ZZ4sbrkjE10sbrk_bytes,4,2

	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_,@function
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_ = _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_@FUNCTION
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
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
	.functype	action_data_size, i32
	.functype	eosio_assert, void, i32, i32
	.functype	read_action_data, i32, i32, i32
	.functype	get_action, i32, i32, i32, i32, i32
	.functype	get_context_free_data, i32, i32, i32, i32
	.functype	memcpy, i32, i32, i32, i32
	.functype	abort, void
	.functype	sha256, void, i32, i32, i32
	.functype	assert_sha256, void, i32, i32, i32
	.functype	prints, void, i32
	.functype	transaction_size, i32
	.functype	__divti3, void, i32, i64, i64, i64, i64
	.functype	is_privileged, i32, i64
	.functype	get_active_producers, i32, i32, i32
	.functype	db_store_i64, i32, i64, i64, i64, i64, i32, i32
	.functype	db_idx64_store, i32, i64, i64, i64, i64, i32
	.functype	db_find_i64, i32, i64, i64, i64, i64
	.functype	send_inline, void, i32, i32
	.functype	require_auth, void, i64
	.functype	publication_time, i64
	.functype	send_deferred, void, i32, i64, i32, i32, i32
	.functype	require_recipient, void, i64
	.functype	eosio_assert_code, void, i32, i64
	.functype	prints_l, void, i32, i32
	.functype	printi, void, i64
	.functype	printui, void, i64
	.functype	printi128, void, i32
	.functype	printui128, void, i32
	.functype	printn, void, i64
	.functype	printsf, void, f32
	.functype	printdf, void, f64
	.functype	printqf, void, i32
	.functype	__multi3, void, i32, i64, i64, i64, i64
	.functype	__udivti3, void, i32, i64, i64, i64, i64
	.functype	__lshlti3, void, i32, i64, i64, i32
	.functype	__ashlti3, void, i32, i64, i64, i32
	.functype	__lshrti3, void, i32, i64, i64, i32
	.functype	__ashrti3, void, i32, i64, i64, i32
	.functype	__modti3, void, i32, i64, i64, i64, i64
	.functype	__umodti3, void, i32, i64, i64, i64, i64
	.functype	assert_recover_key, void, i32, i32, i32, i32, i32
	.functype	recover_key, i32, i32, i32, i32, i32, i32
	.functype	sha1, void, i32, i32, i32
	.functype	sha512, void, i32, i32, i32
	.functype	ripemd160, void, i32, i32, i32
	.functype	assert_sha1, void, i32, i32, i32
	.functype	assert_sha512, void, i32, i32, i32
	.functype	assert_ripemd160, void, i32, i32, i32
	.functype	tapos_block_prefix, i32
	.functype	tapos_block_num, i32
	.functype	read_transaction, i32, i32, i32
	.functype	printhex, void, i32, i32
	.functype	cancel_deferred, i32, i32
	.functype	send_context_free_inline, void, i32, i32
	.functype	is_feature_active, i32, i64
	.functype	activate_feature, void, i64
	.functype	check_permission_authorization, i32, i64, i64, i32, i32, i32, i32, i64
	.functype	db_lowerbound_i64, i32, i64, i64, i64, i64
	.functype	db_update_i64, void, i32, i64, i32, i32
	.functype	get_permission_last_used, i64, i64, i64
	.functype	get_account_creation_time, i64, i64
