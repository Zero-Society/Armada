	.text
	.file	"exchange.bc"
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

	.hidden	_ZN5eosio14exchange_state19convert_to_exchangeERNS0_9connectorENS_14extended_assetE
	.globl	_ZN5eosio14exchange_state19convert_to_exchangeERNS0_9connectorENS_14extended_assetE
	.type	_ZN5eosio14exchange_state19convert_to_exchangeERNS0_9connectorENS_14extended_assetE,@function
_ZN5eosio14exchange_state19convert_to_exchangeERNS0_9connectorENS_14extended_assetE:
	.param  	i32, i32, i32, i32
	.local  	i64, i64, i64
	i64.load	$push11=, 8($1)
	f64.convert_s/i64	$push14=, $pop11
	f64.const	$push9=, 0x1p0
	i64.load	$push46=, 0($3)
	tee_local	$push45=, $6=, $pop46
	f64.convert_s/i64	$push7=, $pop45
	i64.load	$push4=, 0($2)
	i64.add 	$push5=, $6, $pop4
	f64.convert_s/i64	$push6=, $pop5
	f64.div 	$push8=, $pop7, $pop6
	f64.const	$push44=, 0x1p0
	f64.add 	$push10=, $pop8, $pop44
	i32.load	$push0=, 24($2)
	f64.convert_u/i32	$push1=, $pop0
	f64.const	$push2=, 0x1.f4p9
	f64.div 	$push3=, $pop1, $pop2
	f64.call	$push12=, pow@FUNCTION, $pop10, $pop3
	f64.sub 	$push13=, $pop9, $pop12
	f64.mul 	$push15=, $pop14, $pop13
	f64.neg 	$push16=, $pop15
	i64.trunc_s/f64	$push43=, $pop16
	tee_local	$push42=, $5=, $pop43
	i64.load	$push17=, 8($1)
	i64.add 	$push18=, $pop42, $pop17
	i64.store	8($1), $pop18
	i64.load	$push19=, 0($2)
	i64.add 	$push20=, $6, $pop19
	i64.store	0($2), $pop20
	i32.const	$push41=, 24
	i32.add 	$push21=, $1, $pop41
	i64.load	$4=, 0($pop21)
	i32.const	$push22=, 16
	i32.add 	$push23=, $1, $pop22
	i64.load	$6=, 0($pop23)
	i64.store	0($0), $5
	i64.store	8($0), $6
	i64.const	$push24=, 4611686018427387903
	i64.add 	$push25=, $5, $pop24
	i64.const	$push26=, 9223372036854775807
	i64.lt_u	$push27=, $pop25, $pop26
	i32.const	$push28=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop27, $pop28
	i64.const	$push40=, 8
	i64.shr_u	$6=, $6, $pop40
	i32.const	$1=, 0
.LBB5_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push29=, $6
	i32.const	$push49=, 24
	i32.shl 	$push30=, $pop29, $pop49
	i32.const	$push48=, -1073741825
	i32.add 	$push31=, $pop30, $pop48
	i32.const	$push47=, 452984830
	i32.gt_u	$push32=, $pop31, $pop47
	br_if   	1, $pop32
	block   	
	i64.const	$push54=, 8
	i64.shr_u	$push53=, $6, $pop54
	tee_local	$push52=, $6=, $pop53
	i64.const	$push51=, 255
	i64.and 	$push33=, $pop52, $pop51
	i64.const	$push50=, 0
	i64.ne  	$push34=, $pop33, $pop50
	br_if   	0, $pop34
.LBB5_3:
	loop    	
	i64.const	$push59=, 8
	i64.shr_u	$push58=, $6, $pop59
	tee_local	$push57=, $6=, $pop58
	i64.const	$push56=, 255
	i64.and 	$push35=, $pop57, $pop56
	i64.const	$push55=, 0
	i64.ne  	$push36=, $pop35, $pop55
	br_if   	3, $pop36
	i32.const	$push63=, 1
	i32.add 	$push62=, $1, $pop63
	tee_local	$push61=, $1=, $pop62
	i32.const	$push60=, 7
	i32.lt_s	$push37=, $pop61, $pop60
	br_if   	0, $pop37
.LBB5_5:
	end_loop
	end_block
	i32.const	$2=, 1
	i32.const	$push67=, 1
	i32.add 	$push66=, $1, $pop67
	tee_local	$push65=, $1=, $pop66
	i32.const	$push64=, 7
	i32.lt_s	$push38=, $pop65, $pop64
	br_if   	0, $pop38
	br      	2
.LBB5_6:
	end_loop
	end_block
	i32.const	$2=, 0
.LBB5_7:
	end_block
	i32.const	$push39=, .L.str.66
	call    	eosio_assert@FUNCTION, $2, $pop39
	i64.store	16($0), $4
	.endfunc
.Lfunc_end5:
	.size	_ZN5eosio14exchange_state19convert_to_exchangeERNS0_9connectorENS_14extended_assetE, .Lfunc_end5-_ZN5eosio14exchange_state19convert_to_exchangeERNS0_9connectorENS_14extended_assetE

	.hidden	_ZN5eosio14exchange_state21convert_from_exchangeERNS0_9connectorENS_14extended_assetE
	.globl	_ZN5eosio14exchange_state21convert_from_exchangeERNS0_9connectorENS_14extended_assetE
	.type	_ZN5eosio14exchange_state21convert_from_exchangeERNS0_9connectorENS_14extended_assetE,@function
_ZN5eosio14exchange_state21convert_from_exchangeERNS0_9connectorENS_14extended_assetE:
	.param  	i32, i32, i32, i32
	.local  	i64, f64, i64, i64
	i64.load	$push2=, 16($3)
	i32.const	$push51=, 24
	i32.add 	$push0=, $1, $pop51
	i64.load	$push1=, 0($pop0)
	i64.eq  	$push3=, $pop2, $pop1
	i32.const	$push4=, .L.str
	call    	eosio_assert@FUNCTION, $pop3, $pop4
	i64.load	$push8=, 8($3)
	i32.const	$push5=, 16
	i32.add 	$push6=, $1, $pop5
	i64.load	$push7=, 0($pop6)
	i64.eq  	$push9=, $pop8, $pop7
	i32.const	$push10=, .L.str.1
	call    	eosio_assert@FUNCTION, $pop9, $pop10
	i64.load	$6=, 0($2)
	i64.load	$push50=, 0($3)
	tee_local	$push49=, $7=, $pop50
	f64.convert_s/i64	$push18=, $pop49
	i64.load	$push15=, 8($1)
	i64.sub 	$push16=, $pop15, $7
	f64.convert_s/i64	$push17=, $pop16
	f64.div 	$push19=, $pop18, $pop17
	f64.const	$push20=, 0x1p0
	f64.add 	$push21=, $pop19, $pop20
	f64.const	$push13=, 0x1.f4p9
	i32.load	$push11=, 24($2)
	f64.convert_u/i32	$push12=, $pop11
	f64.div 	$push14=, $pop13, $pop12
	f64.call	$5=, pow@FUNCTION, $pop21, $pop14
	i64.load	$push22=, 8($1)
	i64.sub 	$push23=, $pop22, $7
	i64.store	8($1), $pop23
	i64.load	$push28=, 0($2)
	f64.convert_s/i64	$push26=, $6
	f64.const	$push24=, -0x1p0
	f64.add 	$push25=, $5, $pop24
	f64.mul 	$push27=, $pop26, $pop25
	i64.trunc_s/f64	$push48=, $pop27
	tee_local	$push47=, $7=, $pop48
	i64.sub 	$push29=, $pop28, $pop47
	i64.store	0($2), $pop29
	i64.load	$4=, 16($2)
	i64.load	$6=, 8($2)
	i64.store	0($0), $7
	i64.store	8($0), $6
	i64.const	$push30=, 4611686018427387903
	i64.add 	$push31=, $7, $pop30
	i64.const	$push32=, 9223372036854775807
	i64.lt_u	$push33=, $pop31, $pop32
	i32.const	$push34=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop33, $pop34
	i64.const	$push46=, 8
	i64.shr_u	$7=, $6, $pop46
	i32.const	$2=, 0
.LBB6_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push35=, $7
	i32.const	$push54=, 24
	i32.shl 	$push36=, $pop35, $pop54
	i32.const	$push53=, -1073741825
	i32.add 	$push37=, $pop36, $pop53
	i32.const	$push52=, 452984830
	i32.gt_u	$push38=, $pop37, $pop52
	br_if   	1, $pop38
	block   	
	i64.const	$push59=, 8
	i64.shr_u	$push58=, $7, $pop59
	tee_local	$push57=, $7=, $pop58
	i64.const	$push56=, 255
	i64.and 	$push39=, $pop57, $pop56
	i64.const	$push55=, 0
	i64.ne  	$push40=, $pop39, $pop55
	br_if   	0, $pop40
.LBB6_3:
	loop    	
	i64.const	$push64=, 8
	i64.shr_u	$push63=, $7, $pop64
	tee_local	$push62=, $7=, $pop63
	i64.const	$push61=, 255
	i64.and 	$push41=, $pop62, $pop61
	i64.const	$push60=, 0
	i64.ne  	$push42=, $pop41, $pop60
	br_if   	3, $pop42
	i32.const	$push68=, 1
	i32.add 	$push67=, $2, $pop68
	tee_local	$push66=, $2=, $pop67
	i32.const	$push65=, 7
	i32.lt_s	$push43=, $pop66, $pop65
	br_if   	0, $pop43
.LBB6_5:
	end_loop
	end_block
	i32.const	$1=, 1
	i32.const	$push72=, 1
	i32.add 	$push71=, $2, $pop72
	tee_local	$push70=, $2=, $pop71
	i32.const	$push69=, 7
	i32.lt_s	$push44=, $pop70, $pop69
	br_if   	0, $pop44
	br      	2
.LBB6_6:
	end_loop
	end_block
	i32.const	$1=, 0
.LBB6_7:
	end_block
	i32.const	$push45=, .L.str.66
	call    	eosio_assert@FUNCTION, $1, $pop45
	i64.store	16($0), $4
	.endfunc
.Lfunc_end6:
	.size	_ZN5eosio14exchange_state21convert_from_exchangeERNS0_9connectorENS_14extended_assetE, .Lfunc_end6-_ZN5eosio14exchange_state21convert_from_exchangeERNS0_9connectorENS_14extended_assetE

	.hidden	_ZN5eosio14exchange_state7convertENS_14extended_assetENS_15extended_symbolE
	.globl	_ZN5eosio14exchange_state7convertENS_14extended_assetENS_15extended_symbolE
	.type	_ZN5eosio14exchange_state7convertENS_14extended_assetENS_15extended_symbolE,@function
_ZN5eosio14exchange_state7convertENS_14extended_assetENS_15extended_symbolE:
	.param  	i32, i32, i32, i32
	.local  	i64, i64, i64, i64, i64, f64, i32, i32, i64, i32, i32
	i32.const	$push178=, 0
	i32.const	$push175=, 0
	i32.load	$push176=, __stack_pointer($pop175)
	i32.const	$push177=, 208
	i32.sub 	$push233=, $pop176, $pop177
	tee_local	$push232=, $14=, $pop233
	i32.store	__stack_pointer($pop178), $pop232
	i32.const	$push11=, 152
	i32.add 	$push12=, $1, $pop11
	i64.load	$8=, 0($pop12)
	i32.const	$push13=, 144
	i32.add 	$push14=, $1, $pop13
	i64.load	$7=, 0($pop14)
	i32.const	$push15=, 56
	i32.add 	$push16=, $1, $pop15
	i64.load	$6=, 0($pop16)
	i32.const	$push17=, 48
	i32.add 	$push18=, $1, $pop17
	i64.load	$5=, 0($pop18)
	i64.load	$12=, 16($2)
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.load	$push231=, 8($2)
	tee_local	$push230=, $4=, $pop231
	i32.const	$push5=, 16
	i32.add 	$push6=, $1, $pop5
	i64.load	$push7=, 0($pop6)
	i64.ne  	$push8=, $pop230, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 24
	i32.add 	$push10=, $1, $pop9
	i64.load	$push2=, 0($pop10)
	i64.ne  	$push19=, $12, $pop2
	br_if   	0, $pop19
	i64.load	$push235=, 0($3)
	tee_local	$push234=, $12=, $pop235
	i64.ne  	$push20=, $pop234, $5
	br_if   	1, $pop20
	i64.load	$push21=, 8($3)
	i64.ne  	$push22=, $pop21, $6
	br_if   	1, $pop22
	i32.const	$push198=, 160
	i32.add 	$push199=, $14, $pop198
	i32.const	$push39=, 16
	i32.add 	$push40=, $pop199, $pop39
	i32.const	$push249=, 16
	i32.add 	$push248=, $2, $pop249
	tee_local	$push247=, $13=, $pop248
	i64.load	$push246=, 0($pop247)
	tee_local	$push245=, $5=, $pop246
	i64.store	0($pop40), $pop245
	i32.const	$push200=, 160
	i32.add 	$push201=, $14, $pop200
	i32.const	$push41=, 8
	i32.add 	$push42=, $pop201, $pop41
	i32.const	$push244=, 8
	i32.add 	$push243=, $2, $pop244
	tee_local	$push242=, $10=, $pop243
	i64.load	$push241=, 0($pop242)
	tee_local	$push240=, $4=, $pop241
	i64.store	0($pop42), $pop240
	i64.load	$12=, 0($2)
	i32.const	$push202=, 48
	i32.add 	$push203=, $14, $pop202
	i32.const	$push239=, 16
	i32.add 	$push43=, $pop203, $pop239
	i64.store	0($pop43), $5
	i32.const	$push204=, 48
	i32.add 	$push205=, $14, $pop204
	i32.const	$push238=, 8
	i32.add 	$push44=, $pop205, $pop238
	i64.store	0($pop44), $4
	i64.store	160($14), $12
	i64.store	48($14), $12
	i32.const	$push206=, 184
	i32.add 	$push207=, $14, $pop206
	i32.const	$push4=, 40
	i32.add 	$push0=, $1, $pop4
	i32.const	$push208=, 48
	i32.add 	$push209=, $14, $pop208
	call    	_ZN5eosio14exchange_state21convert_from_exchangeERNS0_9connectorENS_14extended_assetE@FUNCTION, $pop207, $1, $pop0, $pop209
	i32.const	$push210=, 184
	i32.add 	$push211=, $14, $pop210
	i32.const	$push237=, 16
	i32.add 	$push45=, $pop211, $pop237
	i64.load	$push46=, 0($pop45)
	i64.store	0($13), $pop46
	i32.const	$push212=, 184
	i32.add 	$push213=, $14, $pop212
	i32.const	$push236=, 8
	i32.add 	$push47=, $pop213, $pop236
	i64.load	$push48=, 0($pop47)
	i64.store	0($10), $pop48
	i64.load	$push49=, 184($14)
	i64.store	0($2), $pop49
	br      	8
.LBB7_5:
	end_block
	i64.ne  	$push50=, $4, $5
	br_if   	1, $pop50
	i64.ne  	$push51=, $12, $6
	br_if   	1, $pop51
	i64.load	$5=, 8($1)
	i64.load	$push258=, 0($2)
	tee_local	$push257=, $12=, $pop258
	f64.convert_s/i64	$push111=, $pop257
	i32.const	$push107=, 40
	i32.add 	$push256=, $1, $pop107
	tee_local	$push255=, $13=, $pop256
	i64.load	$push108=, 0($pop255)
	i64.add 	$push109=, $pop108, $12
	f64.convert_s/i64	$push110=, $pop109
	f64.div 	$push112=, $pop111, $pop110
	f64.const	$push113=, 0x1p0
	f64.add 	$push114=, $pop112, $pop113
	i32.const	$push101=, 64
	i32.add 	$push102=, $1, $pop101
	i32.load	$push103=, 0($pop102)
	f64.convert_u/i32	$push104=, $pop103
	f64.const	$push105=, 0x1.f4p9
	f64.div 	$push106=, $pop104, $pop105
	f64.call	$9=, pow@FUNCTION, $pop114, $pop106
	i64.load	$push115=, 0($13)
	i64.add 	$push116=, $12, $pop115
	i64.store	0($13), $pop116
	f64.convert_s/i64	$push118=, $5
	f64.const	$push254=, 0x1p0
	f64.sub 	$push117=, $pop254, $9
	f64.mul 	$push119=, $pop118, $pop117
	f64.neg 	$push120=, $pop119
	i64.trunc_s/f64	$push253=, $pop120
	tee_local	$push252=, $5=, $pop253
	i64.load	$push121=, 8($1)
	i64.add 	$push122=, $pop252, $pop121
	i64.store	8($1), $pop122
	i32.const	$push251=, 24
	i32.add 	$push127=, $1, $pop251
	i64.load	$6=, 0($pop127)
	i32.const	$push128=, 16
	i32.add 	$push129=, $1, $pop128
	i64.load	$4=, 0($pop129)
	i64.const	$push123=, 4611686018427387903
	i64.add 	$push124=, $5, $pop123
	i64.const	$push125=, 9223372036854775807
	i64.lt_u	$push126=, $pop124, $pop125
	i32.const	$push130=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop126, $pop130
	i64.const	$push250=, 8
	i64.shr_u	$12=, $4, $pop250
	i32.const	$13=, 0
.LBB7_8:
	loop    	
	i32.wrap/i64	$push131=, $12
	i32.const	$push261=, 24
	i32.shl 	$push132=, $pop131, $pop261
	i32.const	$push260=, -1073741825
	i32.add 	$push133=, $pop132, $pop260
	i32.const	$push259=, 452984830
	i32.gt_u	$push134=, $pop133, $pop259
	br_if   	3, $pop134
	block   	
	i64.const	$push266=, 8
	i64.shr_u	$push265=, $12, $pop266
	tee_local	$push264=, $12=, $pop265
	i64.const	$push263=, 255
	i64.and 	$push135=, $pop264, $pop263
	i64.const	$push262=, 0
	i64.ne  	$push136=, $pop135, $pop262
	br_if   	0, $pop136
.LBB7_10:
	loop    	
	i64.const	$push271=, 8
	i64.shr_u	$push270=, $12, $pop271
	tee_local	$push269=, $12=, $pop270
	i64.const	$push268=, 255
	i64.and 	$push137=, $pop269, $pop268
	i64.const	$push267=, 0
	i64.ne  	$push138=, $pop137, $pop267
	br_if   	5, $pop138
	i32.const	$push275=, 1
	i32.add 	$push274=, $13, $pop275
	tee_local	$push273=, $13=, $pop274
	i32.const	$push272=, 7
	i32.lt_s	$push139=, $pop273, $pop272
	br_if   	0, $pop139
.LBB7_12:
	end_loop
	end_block
	i32.const	$10=, 1
	i32.const	$push279=, 1
	i32.add 	$push278=, $13, $pop279
	tee_local	$push277=, $13=, $pop278
	i32.const	$push276=, 7
	i32.lt_s	$push140=, $pop277, $pop276
	br_if   	0, $pop140
	br      	4
.LBB7_13:
	end_loop
	end_block
	block   	
	i64.ne  	$push23=, $12, $7
	br_if   	0, $pop23
	i64.load	$push24=, 8($3)
	i64.ne  	$push25=, $pop24, $8
	br_if   	0, $pop25
	i32.const	$push214=, 136
	i32.add 	$push215=, $14, $pop214
	i32.const	$push28=, 16
	i32.add 	$push29=, $pop215, $pop28
	i32.const	$push293=, 16
	i32.add 	$push292=, $2, $pop293
	tee_local	$push291=, $13=, $pop292
	i64.load	$push290=, 0($pop291)
	tee_local	$push289=, $5=, $pop290
	i64.store	0($pop29), $pop289
	i32.const	$push216=, 136
	i32.add 	$push217=, $14, $pop216
	i32.const	$push30=, 8
	i32.add 	$push31=, $pop217, $pop30
	i32.const	$push288=, 8
	i32.add 	$push287=, $2, $pop288
	tee_local	$push286=, $10=, $pop287
	i64.load	$push285=, 0($pop286)
	tee_local	$push284=, $4=, $pop285
	i64.store	0($pop31), $pop284
	i64.load	$12=, 0($2)
	i32.const	$push218=, 72
	i32.add 	$push219=, $14, $pop218
	i32.const	$push283=, 16
	i32.add 	$push32=, $pop219, $pop283
	i64.store	0($pop32), $5
	i32.const	$push220=, 72
	i32.add 	$push221=, $14, $pop220
	i32.const	$push282=, 8
	i32.add 	$push33=, $pop221, $pop282
	i64.store	0($pop33), $4
	i64.store	136($14), $12
	i64.store	72($14), $12
	i32.const	$push222=, 184
	i32.add 	$push223=, $14, $pop222
	i32.const	$push3=, 136
	i32.add 	$push1=, $1, $pop3
	i32.const	$push224=, 72
	i32.add 	$push225=, $14, $pop224
	call    	_ZN5eosio14exchange_state21convert_from_exchangeERNS0_9connectorENS_14extended_assetE@FUNCTION, $pop223, $1, $pop1, $pop225
	i32.const	$push226=, 184
	i32.add 	$push227=, $14, $pop226
	i32.const	$push281=, 16
	i32.add 	$push34=, $pop227, $pop281
	i64.load	$push35=, 0($pop34)
	i64.store	0($13), $pop35
	i32.const	$push228=, 184
	i32.add 	$push229=, $14, $pop228
	i32.const	$push280=, 8
	i32.add 	$push36=, $pop229, $pop280
	i64.load	$push37=, 0($pop36)
	i64.store	0($10), $pop37
	i64.load	$push38=, 184($14)
	i64.store	0($2), $pop38
	br      	7
.LBB7_16:
	end_block
	i32.const	$push27=, 0
	i32.const	$push26=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop27, $pop26
	br      	6
.LBB7_17:
	end_block
	i64.ne  	$push52=, $4, $7
	br_if   	2, $pop52
	i64.ne  	$push53=, $12, $8
	br_if   	2, $pop53
	i64.load	$5=, 8($1)
	i64.load	$push302=, 0($2)
	tee_local	$push301=, $12=, $pop302
	f64.convert_s/i64	$push66=, $pop301
	i32.const	$push62=, 136
	i32.add 	$push300=, $1, $pop62
	tee_local	$push299=, $13=, $pop300
	i64.load	$push63=, 0($pop299)
	i64.add 	$push64=, $pop63, $12
	f64.convert_s/i64	$push65=, $pop64
	f64.div 	$push67=, $pop66, $pop65
	f64.const	$push68=, 0x1p0
	f64.add 	$push69=, $pop67, $pop68
	i32.const	$push56=, 160
	i32.add 	$push57=, $1, $pop56
	i32.load	$push58=, 0($pop57)
	f64.convert_u/i32	$push59=, $pop58
	f64.const	$push60=, 0x1.f4p9
	f64.div 	$push61=, $pop59, $pop60
	f64.call	$9=, pow@FUNCTION, $pop69, $pop61
	i64.load	$push70=, 0($13)
	i64.add 	$push71=, $12, $pop70
	i64.store	0($13), $pop71
	f64.convert_s/i64	$push73=, $5
	f64.const	$push298=, 0x1p0
	f64.sub 	$push72=, $pop298, $9
	f64.mul 	$push74=, $pop73, $pop72
	f64.neg 	$push75=, $pop74
	i64.trunc_s/f64	$push297=, $pop75
	tee_local	$push296=, $5=, $pop297
	i64.load	$push76=, 8($1)
	i64.add 	$push77=, $pop296, $pop76
	i64.store	8($1), $pop77
	i32.const	$push295=, 24
	i32.add 	$push82=, $1, $pop295
	i64.load	$6=, 0($pop82)
	i32.const	$push83=, 16
	i32.add 	$push84=, $1, $pop83
	i64.load	$4=, 0($pop84)
	i64.const	$push78=, 4611686018427387903
	i64.add 	$push79=, $5, $pop78
	i64.const	$push80=, 9223372036854775807
	i64.lt_u	$push81=, $pop79, $pop80
	i32.const	$push85=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop81, $pop85
	i64.const	$push294=, 8
	i64.shr_u	$12=, $4, $pop294
	i32.const	$13=, 0
.LBB7_20:
	loop    	
	i32.wrap/i64	$push86=, $12
	i32.const	$push305=, 24
	i32.shl 	$push87=, $pop86, $pop305
	i32.const	$push304=, -1073741825
	i32.add 	$push88=, $pop87, $pop304
	i32.const	$push303=, 452984830
	i32.gt_u	$push89=, $pop88, $pop303
	br_if   	4, $pop89
	block   	
	i64.const	$push310=, 8
	i64.shr_u	$push309=, $12, $pop310
	tee_local	$push308=, $12=, $pop309
	i64.const	$push307=, 255
	i64.and 	$push90=, $pop308, $pop307
	i64.const	$push306=, 0
	i64.ne  	$push91=, $pop90, $pop306
	br_if   	0, $pop91
.LBB7_22:
	loop    	
	i64.const	$push315=, 8
	i64.shr_u	$push314=, $12, $pop315
	tee_local	$push313=, $12=, $pop314
	i64.const	$push312=, 255
	i64.and 	$push92=, $pop313, $pop312
	i64.const	$push311=, 0
	i64.ne  	$push93=, $pop92, $pop311
	br_if   	6, $pop93
	i32.const	$push319=, 1
	i32.add 	$push318=, $13, $pop319
	tee_local	$push317=, $13=, $pop318
	i32.const	$push316=, 7
	i32.lt_s	$push94=, $pop317, $pop316
	br_if   	0, $pop94
.LBB7_24:
	end_loop
	end_block
	i32.const	$10=, 1
	i32.const	$push323=, 1
	i32.add 	$push322=, $13, $pop323
	tee_local	$push321=, $13=, $pop322
	i32.const	$push320=, 7
	i32.lt_s	$push95=, $pop321, $pop320
	br_if   	0, $pop95
	br      	5
.LBB7_25:
	end_loop
	end_block
	i32.const	$10=, 0
.LBB7_26:
	end_block
	i32.const	$push141=, .L.str.66
	call    	eosio_assert@FUNCTION, $10, $pop141
	i32.const	$push142=, 8
	i32.add 	$push143=, $2, $pop142
	i64.store	0($pop143), $4
	i64.store	0($2), $5
	i32.const	$push144=, 16
	i32.add 	$push145=, $2, $pop144
	i64.store	0($pop145), $6
	br      	3
.LBB7_27:
	end_block
	i32.const	$push55=, 0
	i32.const	$push54=, .L.str.2
	call    	eosio_assert@FUNCTION, $pop55, $pop54
	br      	2
.LBB7_28:
	end_block
	i32.const	$10=, 0
.LBB7_29:
	end_block
	i32.const	$push96=, .L.str.66
	call    	eosio_assert@FUNCTION, $10, $pop96
	i32.const	$push97=, 8
	i32.add 	$push98=, $2, $pop97
	i64.store	0($pop98), $4
	i64.store	0($2), $5
	i32.const	$push99=, 16
	i32.add 	$push100=, $2, $pop99
	i64.store	0($pop100), $6
.LBB7_30:
	end_block
	block   	
	block   	
	i64.load	$push147=, 0($3)
	i32.const	$push326=, 8
	i32.add 	$push325=, $2, $pop326
	tee_local	$push324=, $13=, $pop325
	i64.load	$push146=, 0($pop324)
	i64.ne  	$push148=, $pop147, $pop146
	br_if   	0, $pop148
	i64.load	$push150=, 8($3)
	i32.const	$push329=, 16
	i32.add 	$push328=, $2, $pop329
	tee_local	$push327=, $10=, $pop328
	i64.load	$push149=, 0($pop327)
	i64.ne  	$push151=, $pop150, $pop149
	br_if   	0, $pop151
	i64.load	$push168=, 0($2)
	i64.store	0($0), $pop168
	i32.const	$push331=, 16
	i32.add 	$push169=, $0, $pop331
	i64.load	$push170=, 0($10)
	i64.store	0($pop169), $pop170
	i32.const	$push171=, 8
	i32.add 	$push172=, $0, $pop171
	i32.const	$push330=, 8
	i32.add 	$push173=, $2, $pop330
	i64.load	$push174=, 0($pop173)
	i64.store	0($pop172), $pop174
	br      	1
.LBB7_33:
	end_block
	i32.const	$push182=, 112
	i32.add 	$push183=, $14, $pop182
	i32.const	$push152=, 16
	i32.add 	$push344=, $pop183, $pop152
	tee_local	$push343=, $10=, $pop344
	i32.const	$push342=, 16
	i32.add 	$push153=, $2, $pop342
	i64.load	$push154=, 0($pop153)
	i64.store	0($pop343), $pop154
	i32.const	$push184=, 112
	i32.add 	$push185=, $14, $pop184
	i32.const	$push341=, 8
	i32.add 	$push340=, $pop185, $pop341
	tee_local	$push339=, $11=, $pop340
	i64.load	$push155=, 0($13)
	i64.store	0($pop339), $pop155
	i64.load	$push156=, 0($2)
	i64.store	112($14), $pop156
	i32.const	$push186=, 96
	i32.add 	$push187=, $14, $pop186
	i32.const	$push338=, 8
	i32.add 	$push337=, $pop187, $pop338
	tee_local	$push336=, $13=, $pop337
	i32.const	$push335=, 8
	i32.add 	$push157=, $3, $pop335
	i64.load	$push158=, 0($pop157)
	i64.store	0($pop336), $pop158
	i64.load	$push159=, 0($3)
	i64.store	96($14), $pop159
	i32.const	$push188=, 24
	i32.add 	$push189=, $14, $pop188
	i32.const	$push334=, 16
	i32.add 	$push160=, $pop189, $pop334
	i64.load	$push161=, 0($10)
	i64.store	0($pop160), $pop161
	i32.const	$push190=, 24
	i32.add 	$push191=, $14, $pop190
	i32.const	$push333=, 8
	i32.add 	$push162=, $pop191, $pop333
	i64.load	$push163=, 0($11)
	i64.store	0($pop162), $pop163
	i64.load	$push164=, 112($14)
	i64.store	24($14), $pop164
	i32.const	$push192=, 8
	i32.add 	$push193=, $14, $pop192
	i32.const	$push332=, 8
	i32.add 	$push165=, $pop193, $pop332
	i64.load	$push166=, 0($13)
	i64.store	0($pop165), $pop166
	i64.load	$push167=, 96($14)
	i64.store	8($14), $pop167
	i32.const	$push194=, 24
	i32.add 	$push195=, $14, $pop194
	i32.const	$push196=, 8
	i32.add 	$push197=, $14, $pop196
	call    	_ZN5eosio14exchange_state7convertENS_14extended_assetENS_15extended_symbolE@FUNCTION, $0, $1, $pop195, $pop197
.LBB7_34:
	end_block
	i32.const	$push181=, 0
	i32.const	$push179=, 208
	i32.add 	$push180=, $14, $pop179
	i32.store	__stack_pointer($pop181), $pop180
	.endfunc
.Lfunc_end7:
	.size	_ZN5eosio14exchange_state7convertENS_14extended_assetENS_15extended_symbolE, .Lfunc_end7-_ZN5eosio14exchange_state7convertENS_14extended_assetENS_15extended_symbolE

	.hidden	_ZNK5eosio14exchange_state20requires_margin_callERKNS0_9connectorE
	.globl	_ZNK5eosio14exchange_state20requires_margin_callERKNS0_9connectorE
	.type	_ZNK5eosio14exchange_state20requires_margin_callERKNS0_9connectorE,@function
_ZNK5eosio14exchange_state20requires_margin_callERKNS0_9connectorE:
	.param  	i32, i32
	.result 	i32
	.local  	i64, f64, i64, i64, i32, i32
	i32.const	$push57=, 0
	i32.const	$push54=, 0
	i32.load	$push55=, __stack_pointer($pop54)
	i32.const	$push56=, 336
	i32.sub 	$push84=, $pop55, $pop56
	tee_local	$push83=, $7=, $pop84
	i32.store	__stack_pointer($pop57), $pop83
	block   	
	block   	
	i32.const	$push0=, 56
	i32.add 	$push1=, $1, $pop0
	i64.load	$push82=, 0($pop1)
	tee_local	$push81=, $5=, $pop82
	i64.const	$push2=, 1
	i64.lt_s	$push3=, $pop81, $pop2
	br_if   	0, $pop3
	i32.const	$push61=, 104
	i32.add 	$push62=, $7, $pop61
	i32.const	$push4=, 232
	i32.call	$drop=, memcpy@FUNCTION, $pop62, $0, $pop4
	i32.const	$push5=, 80
	i32.add 	$push6=, $1, $pop5
	f64.load	$3=, 0($pop6)
	i64.load	$push89=, 8($1)
	tee_local	$push88=, $4=, $pop89
	i64.store	64($7), $pop88
	f64.convert_s/i64	$push7=, $5
	f64.mul 	$push8=, $3, $pop7
	i64.trunc_s/f64	$push87=, $pop8
	tee_local	$push86=, $5=, $pop87
	i64.store	56($7), $pop86
	i64.load	$2=, 16($1)
	i64.const	$push9=, 4611686018427387903
	i64.add 	$push10=, $5, $pop9
	i64.const	$push11=, 9223372036854775807
	i64.lt_u	$push12=, $pop10, $pop11
	i32.const	$push13=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop12, $pop13
	i64.const	$push85=, 8
	i64.shr_u	$5=, $4, $pop85
	i32.const	$0=, 0
.LBB8_2:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push14=, $5
	i32.const	$push92=, 24
	i32.shl 	$push15=, $pop14, $pop92
	i32.const	$push91=, -1073741825
	i32.add 	$push16=, $pop15, $pop91
	i32.const	$push90=, 452984830
	i32.gt_u	$push17=, $pop16, $pop90
	br_if   	1, $pop17
	block   	
	i64.const	$push97=, 8
	i64.shr_u	$push96=, $5, $pop97
	tee_local	$push95=, $5=, $pop96
	i64.const	$push94=, 255
	i64.and 	$push18=, $pop95, $pop94
	i64.const	$push93=, 0
	i64.ne  	$push19=, $pop18, $pop93
	br_if   	0, $pop19
.LBB8_4:
	loop    	
	i64.const	$push102=, 8
	i64.shr_u	$push101=, $5, $pop102
	tee_local	$push100=, $5=, $pop101
	i64.const	$push99=, 255
	i64.and 	$push20=, $pop100, $pop99
	i64.const	$push98=, 0
	i64.ne  	$push21=, $pop20, $pop98
	br_if   	3, $pop21
	i32.const	$push106=, 1
	i32.add 	$push105=, $0, $pop106
	tee_local	$push104=, $0=, $pop105
	i32.const	$push103=, 7
	i32.lt_s	$push22=, $pop104, $pop103
	br_if   	0, $pop22
.LBB8_6:
	end_loop
	end_block
	i32.const	$6=, 1
	i32.const	$push110=, 1
	i32.add 	$push109=, $0, $pop110
	tee_local	$push108=, $0=, $pop109
	i32.const	$push107=, 7
	i32.lt_s	$push23=, $pop108, $pop107
	br_if   	0, $pop23
	br      	2
.LBB8_7:
	end_loop
	end_block
	i32.const	$6=, 0
.LBB8_8:
	end_block
	i32.const	$push24=, .L.str.66
	call    	eosio_assert@FUNCTION, $6, $pop24
	i64.store	72($7), $2
	i32.const	$push25=, 64
	i32.add 	$push26=, $1, $pop25
	i64.load	$5=, 0($pop26)
	i32.const	$push27=, 72
	i32.add 	$push28=, $1, $pop27
	i64.load	$4=, 0($pop28)
	i32.const	$push63=, 16
	i32.add 	$push64=, $7, $pop63
	i32.const	$push29=, 20
	i32.add 	$push30=, $pop64, $pop29
	i32.const	$push65=, 56
	i32.add 	$push66=, $7, $pop65
	i32.const	$push114=, 20
	i32.add 	$push31=, $pop66, $pop114
	i32.load	$push32=, 0($pop31)
	i32.store	0($pop30), $pop32
	i32.const	$push33=, 32
	i32.add 	$push34=, $7, $pop33
	i32.load	$push35=, 72($7)
	i32.store	0($pop34), $pop35
	i64.store	48($7), $4
	i32.const	$push67=, 16
	i32.add 	$push68=, $7, $pop67
	i32.const	$push36=, 12
	i32.add 	$push37=, $pop68, $pop36
	i32.const	$push69=, 56
	i32.add 	$push70=, $7, $pop69
	i32.const	$push113=, 12
	i32.add 	$push38=, $pop70, $pop113
	i32.load	$push39=, 0($pop38)
	i32.store	0($pop37), $pop39
	i32.const	$push71=, 16
	i32.add 	$push72=, $7, $pop71
	i32.const	$push40=, 8
	i32.add 	$push41=, $pop72, $pop40
	i32.const	$push73=, 56
	i32.add 	$push74=, $7, $pop73
	i32.const	$push112=, 8
	i32.add 	$push42=, $pop74, $pop112
	i32.load	$push43=, 0($pop42)
	i32.store	0($pop41), $pop43
	i64.store	40($7), $5
	i32.load	$push44=, 60($7)
	i32.store	20($7), $pop44
	i32.load	$push45=, 56($7)
	i32.store	16($7), $pop45
	i32.const	$push111=, 8
	i32.add 	$push46=, $7, $pop111
	i64.load	$push47=, 48($7)
	i64.store	0($pop46), $pop47
	i64.load	$push48=, 40($7)
	i64.store	0($7), $pop48
	i32.const	$push75=, 80
	i32.add 	$push76=, $7, $pop75
	i32.const	$push77=, 104
	i32.add 	$push78=, $7, $pop77
	i32.const	$push79=, 16
	i32.add 	$push80=, $7, $pop79
	call    	_ZN5eosio14exchange_state7convertENS_14extended_assetENS_15extended_symbolE@FUNCTION, $pop76, $pop78, $pop80, $7
	i32.const	$0=, 1
	i64.load	$push52=, 80($7)
	i32.const	$push49=, 56
	i32.add 	$push50=, $1, $pop49
	i64.load	$push51=, 0($pop50)
	i64.le_s	$push53=, $pop52, $pop51
	br_if   	1, $pop53
.LBB8_9:
	end_block
	i32.const	$0=, 0
.LBB8_10:
	end_block
	i32.const	$push60=, 0
	i32.const	$push58=, 336
	i32.add 	$push59=, $7, $pop58
	i32.store	__stack_pointer($pop60), $pop59
	copy_local	$push115=, $0
	.endfunc
.Lfunc_end8:
	.size	_ZNK5eosio14exchange_state20requires_margin_callERKNS0_9connectorE, .Lfunc_end8-_ZNK5eosio14exchange_state20requires_margin_callERKNS0_9connectorE

	.hidden	_ZNK5eosio14exchange_state20requires_margin_callEv
	.globl	_ZNK5eosio14exchange_state20requires_margin_callEv
	.type	_ZNK5eosio14exchange_state20requires_margin_callEv,@function
_ZNK5eosio14exchange_state20requires_margin_callEv:
	.param  	i32
	.result 	i32
	.local  	i32
	i32.const	$1=, 1
	block   	
	i32.const	$push0=, 40
	i32.add 	$push1=, $0, $pop0
	i32.call	$push2=, _ZNK5eosio14exchange_state20requires_margin_callERKNS0_9connectorE@FUNCTION, $0, $pop1
	br_if   	0, $pop2
	i32.const	$push3=, 136
	i32.add 	$push4=, $0, $pop3
	i32.call	$1=, _ZNK5eosio14exchange_state20requires_margin_callERKNS0_9connectorE@FUNCTION, $0, $pop4
.LBB9_2:
	end_block
	copy_local	$push5=, $1
	.endfunc
.Lfunc_end9:
	.size	_ZNK5eosio14exchange_state20requires_margin_callEv, .Lfunc_end9-_ZNK5eosio14exchange_state20requires_margin_callEv

	.hidden	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE
	.globl	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE
	.type	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE,@function
_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE:
	.param  	i32, i64, i32, i32
	.local  	i32, i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push85=, 0
	i32.const	$push82=, 0
	i32.load	$push83=, __stack_pointer($pop82)
	i32.const	$push84=, 96
	i32.sub 	$push115=, $pop83, $pop84
	tee_local	$push114=, $12=, $pop115
	i32.store	__stack_pointer($pop85), $pop114
	i64.store	16($12), $1
	i32.load	$push113=, 8($0)
	tee_local	$push112=, $11=, $pop113
	i32.const	$push2=, 12
	i32.add 	$push3=, $0, $pop2
	i32.load	$push4=, 0($pop3)
	i32.const	$push111=, 48
	i32.mul 	$push110=, $pop4, $pop111
	tee_local	$push109=, $10=, $pop110
	i32.add 	$4=, $pop112, $pop109
	block   	
	i32.eqz 	$push174=, $10
	br_if   	0, $pop174
	i32.const	$push116=, 48
	i32.div_s	$10=, $10, $pop116
	copy_local	$9=, $11
.LBB10_2:
	loop    	
	i32.const	$push130=, 1
	i32.shr_u	$push129=, $10, $pop130
	tee_local	$push128=, $5=, $pop129
	i32.const	$push127=, 48
	i32.mul 	$push7=, $pop128, $pop127
	i32.add 	$push126=, $9, $pop7
	tee_local	$push125=, $6=, $pop126
	i32.const	$push124=, 48
	i32.add 	$push123=, $pop125, $pop124
	tee_local	$push122=, $7=, $pop123
	i64.load	$push8=, 0($6)
	i64.lt_u	$push121=, $pop8, $1
	tee_local	$push120=, $6=, $pop121
	i32.select	$9=, $pop122, $9, $pop120
	i32.select	$11=, $7, $11, $6
	i32.const	$push119=, -1
	i32.add 	$push5=, $10, $pop119
	i32.sub 	$push6=, $pop5, $5
	i32.select	$push118=, $pop6, $5, $6
	tee_local	$push117=, $10=, $pop118
	br_if   	0, $pop117
.LBB10_3:
	end_loop
	end_block
	block   	
	i32.eq  	$push9=, $11, $4
	br_if   	0, $pop9
	i64.load	$push10=, 0($11)
	i64.gt_u	$push11=, $pop10, $1
	i32.select	$11=, $4, $11, $pop11
.LBB10_5:
	end_block
	block   	
	i32.ne  	$push12=, $11, $4
	br_if   	0, $pop12
	i64.load	$8=, 0($0)
	i32.const	$push13=, 64
	i32.add 	$push14=, $12, $pop13
	i64.store	0($pop14), $1
	i32.const	$push15=, 72
	i32.add 	$push16=, $12, $pop15
	i64.const	$push17=, -1
	i64.store	0($pop16), $pop17
	i32.const	$push18=, 80
	i32.add 	$push134=, $12, $pop18
	tee_local	$push133=, $10=, $pop134
	i64.const	$push19=, 0
	i64.store	0($pop133), $pop19
	i32.const	$push20=, 88
	i32.add 	$push21=, $12, $pop20
	i32.const	$push22=, 0
	i32.store	0($pop21), $pop22
	i64.store	56($12), $8
	i64.store	48($12), $1
	i32.const	$push89=, 40
	i32.add 	$push90=, $12, $pop89
	i32.const	$push1=, 8
	i32.add 	$push0=, $0, $pop1
	i32.const	$push91=, 48
	i32.add 	$push92=, $12, $pop91
	call    	_ZN5boost9container3dtl9flat_treeINS1_4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS1_9select1stIyEENSt3__14lessIyEENS0_13new_allocatorIS8_EEE13insert_uniqueEOS8_@FUNCTION, $pop90, $pop0, $pop92
	block   	
	i32.load	$push132=, 0($10)
	tee_local	$push131=, $5=, $pop132
	i32.eqz 	$push175=, $pop131
	br_if   	0, $pop175
	block   	
	block   	
	i32.const	$push23=, 84
	i32.add 	$push138=, $12, $pop23
	tee_local	$push137=, $6=, $pop138
	i32.load	$push136=, 0($pop137)
	tee_local	$push135=, $10=, $pop136
	i32.eq  	$push24=, $pop135, $5
	br_if   	0, $pop24
.LBB10_9:
	loop    	
	i32.const	$push142=, -24
	i32.add 	$push141=, $10, $pop142
	tee_local	$push140=, $10=, $pop141
	i32.load	$9=, 0($pop140)
	i32.const	$push139=, 0
	i32.store	0($10), $pop139
	block   	
	i32.eqz 	$push176=, $9
	br_if   	0, $pop176
	block   	
	i32.const	$push143=, 16
	i32.add 	$push25=, $9, $pop143
	i32.load	$push26=, 0($pop25)
	i32.eqz 	$push177=, $pop26
	br_if   	0, $pop177
	i32.load	$push27=, 8($9)
	call    	_ZdlPv@FUNCTION, $pop27
.LBB10_12:
	end_block
	call    	_ZdlPv@FUNCTION, $9
.LBB10_13:
	end_block
	i32.ne  	$push28=, $5, $10
	br_if   	0, $pop28
	end_loop
	i32.const	$push29=, 80
	i32.add 	$push30=, $12, $pop29
	i32.load	$10=, 0($pop30)
	br      	1
.LBB10_15:
	end_block
	copy_local	$10=, $5
.LBB10_16:
	end_block
	i32.store	0($6), $5
	call    	_ZdlPv@FUNCTION, $10
.LBB10_17:
	end_block
	i32.load	$11=, 40($12)
	i64.load	$1=, 16($12)
.LBB10_18:
	end_block
	block   	
	i32.const	$push33=, 36
	i32.add 	$push34=, $11, $pop33
	i32.load	$push147=, 0($pop34)
	tee_local	$push146=, $5=, $pop147
	i32.const	$push31=, 32
	i32.add 	$push32=, $11, $pop31
	i32.load	$push145=, 0($pop32)
	tee_local	$push144=, $7=, $pop145
	i32.eq  	$push35=, $pop146, $pop144
	br_if   	0, $pop35
	i32.const	$push148=, -24
	i32.add 	$10=, $5, $pop148
	i32.const	$push36=, 0
	i32.sub 	$6=, $pop36, $7
.LBB10_20:
	loop    	
	i32.load	$push37=, 0($10)
	i64.load	$push38=, 0($pop37)
	i64.eq  	$push39=, $pop38, $1
	br_if   	1, $pop39
	copy_local	$5=, $10
	i32.const	$push152=, -24
	i32.add 	$push151=, $10, $pop152
	tee_local	$push150=, $9=, $pop151
	copy_local	$10=, $pop150
	i32.add 	$push40=, $9, $6
	i32.const	$push149=, -24
	i32.ne  	$push41=, $pop40, $pop149
	br_if   	0, $pop41
.LBB10_22:
	end_loop
	end_block
	i32.const	$push153=, 8
	i32.add 	$10=, $11, $pop153
	block   	
	block   	
	block   	
	block   	
	i32.eq  	$push42=, $5, $7
	br_if   	0, $pop42
	i32.const	$push43=, -24
	i32.add 	$push44=, $5, $pop43
	i32.load	$push155=, 0($pop44)
	tee_local	$push154=, $9=, $pop155
	i32.load	$push45=, 20($pop154)
	i32.eq  	$push46=, $pop45, $10
	i32.const	$push47=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop46, $pop47
	br_if   	1, $9
	br      	2
.LBB10_24:
	end_block
	i32.const	$push51=, 8
	i32.add 	$push52=, $11, $pop51
	i64.load	$push53=, 0($pop52)
	i32.const	$push48=, 16
	i32.add 	$push49=, $11, $pop48
	i64.load	$push50=, 0($pop49)
	i64.const	$push54=, 6290548272952901632
	i32.call	$push157=, db_find_i64@FUNCTION, $pop53, $pop50, $pop54, $1
	tee_local	$push156=, $9=, $pop157
	i32.const	$push55=, 0
	i32.lt_s	$push56=, $pop156, $pop55
	br_if   	1, $pop56
	i32.call	$push159=, _ZNK5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE31load_object_by_primary_iteratorEl@FUNCTION, $10, $9
	tee_local	$push158=, $9=, $pop159
	i32.load	$push57=, 20($pop158)
	i32.eq  	$push58=, $pop57, $10
	i32.const	$push59=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop58, $pop59
.LBB10_26:
	end_block
	i32.store	48($12), $2
	i32.const	$push61=, 1
	i32.const	$push60=, .L.str.90
	call    	eosio_assert@FUNCTION, $pop61, $pop60
	i32.const	$push107=, 48
	i32.add 	$push108=, $12, $pop107
	call    	_ZN5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE6modifyIZNS_17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEE3$_1EEvRKS1_yOT_@FUNCTION, $10, $9, $pop108
	br      	1
.LBB10_27:
	end_block
	i64.load	$1=, 16($12)
	i32.store	12($12), $2
	i32.const	$push93=, 16
	i32.add 	$push94=, $12, $pop93
	i32.store	8($12), $pop94
	i64.store	40($12), $1
	i32.const	$push62=, 8
	i32.add 	$push63=, $11, $pop62
	i64.load	$push64=, 0($pop63)
	i64.call	$push65=, current_receiver@FUNCTION
	i64.eq  	$push66=, $pop64, $pop65
	i32.const	$push67=, .L.str.89
	call    	eosio_assert@FUNCTION, $pop66, $pop67
	i32.store	48($12), $10
	i32.const	$push95=, 8
	i32.add 	$push96=, $12, $pop95
	i32.store	52($12), $pop96
	i32.const	$push97=, 40
	i32.add 	$push98=, $12, $pop97
	i32.store	56($12), $pop98
	i32.const	$push171=, 32
	i32.call	$push170=, _Znwj@FUNCTION, $pop171
	tee_local	$push169=, $9=, $pop170
	i32.const	$push168=, 0
	i32.store	16($pop169), $pop168
	i64.const	$push68=, 0
	i64.store	8($9):p2align=2, $pop68
	i32.store	20($9), $10
	i32.const	$push99=, 48
	i32.add 	$push100=, $12, $pop99
	call    	_ZZN5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE7emplaceIZNS_17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEE3$_0EENS2_14const_iteratorEyOT_ENKUlRSH_E_clINS2_4itemEEEDaSJ_@FUNCTION, $pop100, $9
	i32.store	32($12), $9
	i64.load	$push167=, 0($9)
	tee_local	$push166=, $1=, $pop167
	i64.store	48($12), $pop166
	i32.load	$push165=, 24($9)
	tee_local	$push164=, $5=, $pop165
	i32.store	28($12), $pop164
	block   	
	block   	
	i32.const	$push72=, 36
	i32.add 	$push163=, $11, $pop72
	tee_local	$push162=, $6=, $pop163
	i32.load	$push161=, 0($pop162)
	tee_local	$push160=, $10=, $pop161
	i32.const	$push69=, 40
	i32.add 	$push70=, $11, $pop69
	i32.load	$push71=, 0($pop70)
	i32.ge_u	$push73=, $pop160, $pop71
	br_if   	0, $pop73
	i64.store	8($10), $1
	i32.store	16($10), $5
	i32.const	$push172=, 0
	i32.store	32($12), $pop172
	i32.store	0($10), $9
	i32.const	$push75=, 24
	i32.add 	$push76=, $10, $pop75
	i32.store	0($6), $pop76
	br      	1
.LBB10_29:
	end_block
	i32.const	$push173=, 32
	i32.add 	$push74=, $11, $pop173
	i32.const	$push101=, 32
	i32.add 	$push102=, $12, $pop101
	i32.const	$push103=, 48
	i32.add 	$push104=, $12, $pop103
	i32.const	$push105=, 28
	i32.add 	$push106=, $12, $pop105
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy6290548272952901632ENS1_9exaccountEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_@FUNCTION, $pop74, $pop102, $pop104, $pop106
.LBB10_30:
	end_block
	i32.load	$10=, 32($12)
	i32.const	$push77=, 0
	i32.store	32($12), $pop77
	i32.eqz 	$push178=, $10
	br_if   	0, $pop178
	block   	
	i32.const	$push78=, 16
	i32.add 	$push79=, $10, $pop78
	i32.load	$push80=, 0($pop79)
	i32.eqz 	$push179=, $pop80
	br_if   	0, $pop179
	i32.load	$push81=, 8($10)
	call    	_ZdlPv@FUNCTION, $pop81
.LBB10_33:
	end_block
	call    	_ZdlPv@FUNCTION, $10
.LBB10_34:
	end_block
	i32.const	$push88=, 0
	i32.const	$push86=, 96
	i32.add 	$push87=, $12, $pop86
	i32.store	__stack_pointer($pop88), $pop87
	.endfunc
.Lfunc_end10:
	.size	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE, .Lfunc_end10-_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE

	.section	.text._ZN5boost9container3dtl9flat_treeINS1_4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS1_9select1stIyEENSt3__14lessIyEENS0_13new_allocatorIS8_EEE13insert_uniqueEOS8_,"axG",@progbits,_ZN5boost9container3dtl9flat_treeINS1_4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS1_9select1stIyEENSt3__14lessIyEENS0_13new_allocatorIS8_EEE13insert_uniqueEOS8_,comdat
	.hidden	_ZN5boost9container3dtl9flat_treeINS1_4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS1_9select1stIyEENSt3__14lessIyEENS0_13new_allocatorIS8_EEE13insert_uniqueEOS8_
	.weak	_ZN5boost9container3dtl9flat_treeINS1_4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS1_9select1stIyEENSt3__14lessIyEENS0_13new_allocatorIS8_EEE13insert_uniqueEOS8_
	.type	_ZN5boost9container3dtl9flat_treeINS1_4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS1_9select1stIyEENSt3__14lessIyEENS0_13new_allocatorIS8_EEE13insert_uniqueEOS8_,@function
_ZN5boost9container3dtl9flat_treeINS1_4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS1_9select1stIyEENSt3__14lessIyEENS0_13new_allocatorIS8_EEE13insert_uniqueEOS8_:
	.param  	i32, i32, i32
	.local  	i32, i32, i64, i32, i32, i32, i64, i32
	i32.const	$push0=, 0
	i32.store8	4($0), $pop0
	i32.const	$push54=, 0
	i32.store	0($0), $pop54
	i64.load	$5=, 0($2)
	i32.load	$push53=, 0($1)
	tee_local	$push52=, $3=, $pop53
	copy_local	$6=, $pop52
	block   	
	i32.load	$push51=, 4($1)
	tee_local	$push50=, $4=, $pop51
	i32.const	$push49=, 48
	i32.mul 	$push1=, $pop50, $pop49
	i32.const	$push48=, 48
	i32.div_s	$push45=, $pop1, $pop48
	copy_local	$push47=, $pop45
	tee_local	$push46=, $7=, $pop47
	i32.eqz 	$push77=, $pop46
	br_if   	0, $pop77
.LBB11_1:
	loop    	
	block   	
	i32.const	$push64=, 1
	i32.shr_u	$push63=, $7, $pop64
	tee_local	$push62=, $10=, $pop63
	i32.const	$push61=, 48
	i32.mul 	$push2=, $pop62, $pop61
	i32.add 	$push60=, $6, $pop2
	tee_local	$push59=, $8=, $pop60
	i64.load	$push3=, 0($pop59)
	i64.ge_u	$push4=, $pop3, $5
	br_if   	0, $pop4
	i32.const	$push56=, 48
	i32.add 	$6=, $8, $pop56
	i32.const	$push55=, -1
	i32.add 	$push5=, $7, $pop55
	i32.sub 	$10=, $pop5, $10
.LBB11_3:
	end_block
	copy_local	$push58=, $10
	tee_local	$push57=, $7=, $pop58
	br_if   	0, $pop57
.LBB11_4:
	end_loop
	end_block
	block   	
	block   	
	block   	
	block   	
	i32.const	$push6=, 48
	i32.mul 	$push7=, $4, $pop6
	i32.add 	$push8=, $3, $pop7
	i32.eq  	$push9=, $6, $pop8
	br_if   	0, $pop9
	i32.const	$push10=, 4
	i32.add 	$push11=, $0, $pop10
	i64.load	$push66=, 0($6)
	tee_local	$push65=, $9=, $pop66
	i64.lt_u	$push12=, $5, $pop65
	i32.store8	0($pop11), $pop12
	i64.lt_u	$push13=, $5, $9
	br_if   	1, $pop13
	br      	2
.LBB11_6:
	end_block
	i32.const	$push14=, 4
	i32.add 	$push15=, $0, $pop14
	i32.const	$push16=, 1
	i32.store8	0($pop15), $pop16
.LBB11_7:
	end_block
	block   	
	block   	
	block   	
	block   	
	i32.load	$push17=, 8($1)
	i32.ne  	$push18=, $pop17, $4
	br_if   	0, $pop18
	i32.const	$push20=, 89478485
	i32.eq  	$push21=, $4, $pop20
	br_if   	5, $pop21
	i32.const	$push22=, 536870911
	i32.gt_u	$push23=, $4, $pop22
	br_if   	1, $pop23
	i32.const	$push29=, 3
	i32.shl 	$push30=, $4, $pop29
	i32.const	$push31=, 5
	i32.div_u	$7=, $pop30, $pop31
	br      	2
.LBB11_11:
	end_block
	i32.const	$push19=, 1
	call    	_ZN5boost9container6vectorINS0_3dtl4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS0_13new_allocatorIS8_EEvE40priv_forward_range_insert_expand_forwardINS2_17insert_move_proxyISA_PS8_EEEEvSE_jT_@FUNCTION, $1, $6, $pop19, $2
	br      	2
.LBB11_12:
	end_block
	i32.const	$push28=, -1
	i32.const	$push26=, 3
	i32.shl 	$push27=, $4, $pop26
	i32.const	$push24=, -1610612737
	i32.gt_u	$push25=, $4, $pop24
	i32.select	$7=, $pop28, $pop27, $pop25
.LBB11_13:
	end_block
	i32.const	$push74=, 1
	i32.add 	$push73=, $4, $pop74
	tee_local	$push72=, $10=, $pop73
	i32.const	$push32=, 89478485
	i32.const	$push71=, 89478485
	i32.lt_u	$push33=, $7, $pop71
	i32.select	$push70=, $7, $pop32, $pop33
	tee_local	$push69=, $7=, $pop70
	i32.gt_u	$push34=, $10, $7
	i32.select	$push68=, $pop72, $pop69, $pop34
	tee_local	$push67=, $7=, $pop68
	i32.const	$push35=, 89478486
	i32.ge_u	$push36=, $pop67, $pop35
	br_if   	2, $pop36
	i32.const	$push37=, 48
	i32.mul 	$push38=, $7, $pop37
	i32.call	$push39=, _Znwj@FUNCTION, $pop38
	i32.const	$push75=, 1
	call    	_ZN5boost9container6vectorINS0_3dtl4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS0_13new_allocatorIS8_EEvE40priv_forward_range_insert_new_allocationINS2_17insert_move_proxyISA_PS8_EEEEvSE_jSE_jT_@FUNCTION, $1, $pop39, $7, $6, $pop75, $2
.LBB11_15:
	end_block
	i32.load	$push44=, 0($1)
	i32.sub 	$push40=, $6, $3
	i32.const	$push41=, 48
	i32.div_s	$push42=, $pop40, $pop41
	i32.const	$push76=, 48
	i32.mul 	$push43=, $pop42, $pop76
	i32.add 	$6=, $pop44, $pop43
.LBB11_16:
	end_block
	i32.store	0($0), $6
	return
.LBB11_17:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end11:
	.size	_ZN5boost9container3dtl9flat_treeINS1_4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS1_9select1stIyEENSt3__14lessIyEENS0_13new_allocatorIS8_EEE13insert_uniqueEOS8_, .Lfunc_end11-_ZN5boost9container3dtl9flat_treeINS1_4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS1_9select1stIyEENSt3__14lessIyEENS0_13new_allocatorIS8_EEE13insert_uniqueEOS8_

	.section	.text._ZNK5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE31load_object_by_primary_iteratorEl,@function
_ZNK5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push51=, 0
	i32.load	$push52=, __stack_pointer($pop51)
	i32.const	$push53=, 48
	i32.sub 	$push72=, $pop52, $pop53
	tee_local	$push71=, $9=, $pop72
	copy_local	$8=, $pop71
	i32.const	$push54=, 0
	i32.store	__stack_pointer($pop54), $9
	block   	
	i32.const	$push2=, 28
	i32.add 	$push3=, $0, $pop2
	i32.load	$push70=, 0($pop3)
	tee_local	$push69=, $7=, $pop70
	i32.load	$push68=, 24($0)
	tee_local	$push67=, $2=, $pop68
	i32.eq  	$push4=, $pop69, $pop67
	br_if   	0, $pop4
	i32.const	$push5=, 0
	i32.sub 	$3=, $pop5, $2
	i32.const	$push73=, -24
	i32.add 	$6=, $7, $pop73
.LBB12_2:
	loop    	
	i32.const	$push74=, 16
	i32.add 	$push6=, $6, $pop74
	i32.load	$push7=, 0($pop6)
	i32.eq  	$push8=, $pop7, $1
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push78=, -24
	i32.add 	$push77=, $6, $pop78
	tee_local	$push76=, $4=, $pop77
	copy_local	$6=, $pop76
	i32.add 	$push9=, $4, $3
	i32.const	$push75=, -24
	i32.ne  	$push10=, $pop9, $pop75
	br_if   	0, $pop10
.LBB12_4:
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
.LBB12_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push81=, 0
	i32.call	$push80=, db_get_i64@FUNCTION, $1, $pop14, $pop81
	tee_local	$push79=, $6=, $pop80
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop79, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.82
	call    	eosio_assert@FUNCTION, $pop18, $pop19
	block   	
	block   	
	i32.const	$push20=, 513
	i32.lt_u	$push21=, $6, $pop20
	br_if   	0, $pop21
	i32.call	$4=, malloc@FUNCTION, $6
	br      	1
.LBB12_8:
	end_block
	i32.const	$push50=, 0
	i32.const	$push22=, 15
	i32.add 	$push23=, $6, $pop22
	i32.const	$push24=, -16
	i32.and 	$push25=, $pop23, $pop24
	i32.sub 	$push83=, $9, $pop25
	tee_local	$push82=, $4=, $pop83
	copy_local	$push66=, $pop82
	i32.store	__stack_pointer($pop50), $pop66
.LBB12_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $6
	i32.store	36($8), $4
	i32.store	32($8), $4
	i32.add 	$push85=, $4, $6
	tee_local	$push84=, $7=, $pop85
	i32.store	40($8), $pop84
	block   	
	i32.const	$push26=, 512
	i32.le_u	$push27=, $6, $pop26
	br_if   	0, $pop27
	call    	free@FUNCTION, $4
	i32.const	$push28=, 40
	i32.add 	$push29=, $8, $pop28
	i32.load	$7=, 0($pop29)
	i32.load	$4=, 36($8)
.LBB12_11:
	end_block
	i32.const	$push30=, 32
	i32.call	$push99=, _Znwj@FUNCTION, $pop30
	tee_local	$push98=, $6=, $pop99
	i32.const	$push97=, 0
	i32.store	16($pop98), $pop97
	i64.const	$push31=, 0
	i64.store	8($6):p2align=2, $pop31
	i32.store	20($6), $0
	i32.sub 	$push32=, $7, $4
	i32.const	$push33=, 7
	i32.gt_u	$push34=, $pop32, $pop33
	i32.const	$push35=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop34, $pop35
	i32.const	$push36=, 8
	i32.call	$drop=, memcpy@FUNCTION, $6, $4, $pop36
	i32.const	$push96=, 8
	i32.add 	$push37=, $4, $pop96
	i32.store	36($8), $pop37
	i32.const	$push58=, 32
	i32.add 	$push59=, $8, $pop58
	i32.const	$push95=, 8
	i32.add 	$push38=, $6, $pop95
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEENS_15extended_symbolExEERT_S7_RN5boost9container8flat_mapIT0_T1_NSt3__14lessISB_EENS9_13new_allocatorINSD_4pairISB_SC_EEEEEE@FUNCTION, $pop59, $pop38
	i32.store	24($6), $1
	i32.store	24($8), $6
	i64.load	$push94=, 0($6)
	tee_local	$push93=, $5=, $pop94
	i64.store	16($8), $pop93
	i32.load	$push92=, 24($6)
	tee_local	$push91=, $7=, $pop92
	i32.store	12($8), $pop91
	block   	
	block   	
	i32.const	$push41=, 28
	i32.add 	$push90=, $0, $pop41
	tee_local	$push89=, $1=, $pop90
	i32.load	$push88=, 0($pop89)
	tee_local	$push87=, $4=, $pop88
	i32.const	$push86=, 32
	i32.add 	$push39=, $0, $pop86
	i32.load	$push40=, 0($pop39)
	i32.ge_u	$push42=, $pop87, $pop40
	br_if   	0, $pop42
	i64.store	8($4), $5
	i32.store	16($4), $7
	i32.const	$push100=, 0
	i32.store	24($8), $pop100
	i32.store	0($4), $6
	i32.const	$push43=, 24
	i32.add 	$push44=, $4, $pop43
	i32.store	0($1), $pop44
	br      	1
.LBB12_13:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push60=, 24
	i32.add 	$push61=, $8, $pop60
	i32.const	$push62=, 16
	i32.add 	$push63=, $8, $pop62
	i32.const	$push64=, 12
	i32.add 	$push65=, $8, $pop64
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy6290548272952901632ENS1_9exaccountEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop61, $pop63, $pop65
.LBB12_14:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push45=, 0
	i32.store	24($8), $pop45
	i32.eqz 	$push101=, $4
	br_if   	0, $pop101
	block   	
	i32.const	$push46=, 16
	i32.add 	$push47=, $4, $pop46
	i32.load	$push48=, 0($pop47)
	i32.eqz 	$push102=, $pop48
	br_if   	0, $pop102
	i32.load	$push49=, 8($4)
	call    	_ZdlPv@FUNCTION, $pop49
.LBB12_17:
	end_block
	call    	_ZdlPv@FUNCTION, $4
.LBB12_18:
	end_block
	i32.const	$push57=, 0
	i32.const	$push55=, 48
	i32.add 	$push56=, $8, $pop55
	i32.store	__stack_pointer($pop57), $pop56
	copy_local	$push103=, $6
	.endfunc
.Lfunc_end12:
	.size	_ZNK5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE31load_object_by_primary_iteratorEl, .Lfunc_end12-_ZNK5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE31load_object_by_primary_iteratorEl

	.text
	.type	_ZZN5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE7emplaceIZNS_17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEE3$_0EENS2_14const_iteratorEyOT_ENKUlRSH_E_clINS2_4itemEEEDaSJ_,@function
_ZZN5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE7emplaceIZNS_17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEE3$_0EENS2_14const_iteratorEyOT_ENKUlRSH_E_clINS2_4itemEEEDaSJ_:
	.param  	i32, i32
	.local  	i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32
	i32.const	$push60=, 0
	i32.load	$push61=, __stack_pointer($pop60)
	i32.const	$push62=, 32
	i32.sub 	$push80=, $pop61, $pop62
	tee_local	$push79=, $15=, $pop80
	copy_local	$14=, $pop79
	i32.const	$push63=, 0
	i32.store	__stack_pointer($pop63), $15
	i32.load	$push78=, 4($0)
	tee_local	$push77=, $3=, $pop78
	i32.load	$push0=, 0($pop77)
	i64.load	$push1=, 0($pop0)
	i64.store	0($1), $pop1
	i32.load	$push76=, 8($1)
	tee_local	$push75=, $11=, $pop76
	i32.const	$push2=, 12
	i32.add 	$push3=, $1, $pop2
	i32.load	$push4=, 0($pop3)
	i32.const	$push74=, 24
	i32.mul 	$push73=, $pop4, $pop74
	tee_local	$push72=, $10=, $pop73
	i32.add 	$6=, $pop75, $pop72
	i32.load	$2=, 0($0)
	i32.load	$push71=, 4($3)
	tee_local	$push70=, $12=, $pop71
	i64.load	$5=, 16($pop70)
	i64.load	$13=, 8($12)
	i64.load	$4=, 0($12)
	block   	
	i32.eqz 	$push113=, $10
	br_if   	0, $pop113
	i32.const	$push81=, 24
	i32.div_s	$12=, $10, $pop81
	copy_local	$10=, $11
.LBB13_2:
	loop    	
	i32.const	$push95=, 1
	i32.shr_u	$push94=, $12, $pop95
	tee_local	$push93=, $7=, $pop94
	i32.const	$push92=, 24
	i32.mul 	$push7=, $pop93, $pop92
	i32.add 	$push91=, $10, $pop7
	tee_local	$push90=, $8=, $pop91
	i32.const	$push89=, 24
	i32.add 	$push88=, $pop90, $pop89
	tee_local	$push87=, $9=, $pop88
	i64.load	$push8=, 0($8)
	i64.lt_u	$push86=, $pop8, $13
	tee_local	$push85=, $8=, $pop86
	i32.select	$10=, $pop87, $10, $pop85
	i32.select	$11=, $9, $11, $8
	i32.const	$push84=, -1
	i32.add 	$push5=, $12, $pop84
	i32.sub 	$push6=, $pop5, $7
	i32.select	$push83=, $pop6, $7, $8
	tee_local	$push82=, $12=, $pop83
	br_if   	0, $pop82
.LBB13_3:
	end_loop
	end_block
	i32.const	$push96=, 8
	i32.add 	$7=, $1, $pop96
	block   	
	block   	
	i32.eq  	$push9=, $11, $6
	br_if   	0, $pop9
	i64.load	$push10=, 0($11)
	i64.ge_u	$push11=, $13, $pop10
	br_if   	1, $pop11
.LBB13_5:
	end_block
	i64.store	8($14), $5
	i64.store	0($14), $13
	i64.const	$push12=, 0
	i64.store	16($14), $pop12
	i32.const	$push67=, 24
	i32.add 	$push68=, $14, $pop67
	call    	_ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueENS0_12vec_iteratorIPS6_Lb1EEEOS6_@FUNCTION, $pop68, $7, $11, $14
	i32.load	$11=, 24($14)
.LBB13_6:
	end_block
	i64.store	16($11), $4
	i32.const	$push13=, 4
	i32.add 	$push14=, $3, $pop13
	i32.load	$push15=, 0($pop14)
	i64.load	$push16=, 0($pop15)
	i64.const	$push17=, 63
	i64.shr_u	$push18=, $pop16, $pop17
	i32.wrap/i64	$push19=, $pop18
	i32.const	$push99=, 1
	i32.xor 	$push20=, $pop19, $pop99
	i32.const	$push21=, .L.str.105
	call    	eosio_assert@FUNCTION, $pop20, $pop21
	i32.const	$push22=, 12
	i32.add 	$push23=, $1, $pop22
	i32.load	$push98=, 0($pop23)
	tee_local	$push97=, $10=, $pop98
	i64.extend_u/i32	$13=, $pop97
	i32.const	$12=, 8
.LBB13_7:
	loop    	
	i32.const	$push104=, 1
	i32.add 	$12=, $12, $pop104
	i64.const	$push103=, 7
	i64.shr_u	$push102=, $13, $pop103
	tee_local	$push101=, $13=, $pop102
	i64.const	$push100=, 0
	i64.ne  	$push24=, $pop101, $pop100
	br_if   	0, $pop24
	end_loop
	block   	
	i32.eqz 	$push114=, $10
	br_if   	0, $pop114
	i32.const	$push25=, 24
	i32.mul 	$push107=, $10, $pop25
	tee_local	$push106=, $10=, $pop107
	i32.const	$push26=, -24
	i32.add 	$push27=, $10, $pop26
	i32.const	$push105=, 24
	i32.rem_u	$push28=, $pop27, $pop105
	i32.sub 	$push29=, $pop106, $pop28
	i32.add 	$12=, $pop29, $12
.LBB13_10:
	end_block
	block   	
	block   	
	i32.const	$push30=, 513
	i32.lt_u	$push31=, $12, $pop30
	br_if   	0, $pop31
	i32.call	$10=, malloc@FUNCTION, $12
	br      	1
.LBB13_12:
	end_block
	i32.const	$push59=, 0
	i32.const	$push32=, 15
	i32.add 	$push33=, $12, $pop32
	i32.const	$push34=, -16
	i32.and 	$push35=, $pop33, $pop34
	i32.sub 	$push109=, $15, $pop35
	tee_local	$push108=, $10=, $pop109
	copy_local	$push69=, $pop108
	i32.store	__stack_pointer($pop59), $pop69
.LBB13_13:
	end_block
	i32.store	0($14), $10
	i32.add 	$push36=, $10, $12
	i32.store	8($14), $pop36
	i32.const	$push37=, 7
	i32.gt_s	$push38=, $12, $pop37
	i32.const	$push39=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop38, $pop39
	i32.const	$push40=, 8
	i32.call	$drop=, memcpy@FUNCTION, $10, $1, $pop40
	i32.const	$push112=, 8
	i32.add 	$push41=, $10, $pop112
	i32.store	4($14), $pop41
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEENS_15extended_symbolExEERT_S6_RKN5boost9container8flat_mapIT0_T1_NSt3__14lessISA_EENS8_13new_allocatorINSC_4pairISA_SB_EEEEEE@FUNCTION, $14, $7
	i64.load	$push42=, 8($2)
	i64.const	$push45=, 6290548272952901632
	i32.load	$push43=, 8($0)
	i64.load	$push44=, 0($pop43)
	i64.load	$push111=, 0($1)
	tee_local	$push110=, $13=, $pop111
	i32.call	$push46=, db_store_i64@FUNCTION, $pop42, $pop45, $pop44, $pop110, $10, $12
	i32.store	24($1), $pop46
	block   	
	i32.const	$push47=, 513
	i32.lt_u	$push48=, $12, $pop47
	br_if   	0, $pop48
	call    	free@FUNCTION, $10
.LBB13_15:
	end_block
	block   	
	i64.load	$push49=, 16($2)
	i64.lt_u	$push50=, $13, $pop49
	br_if   	0, $pop50
	i32.const	$push57=, 16
	i32.add 	$push58=, $2, $pop57
	i64.const	$push55=, -2
	i64.const	$push53=, 1
	i64.add 	$push54=, $13, $pop53
	i64.const	$push51=, -3
	i64.gt_u	$push52=, $13, $pop51
	i64.select	$push56=, $pop55, $pop54, $pop52
	i64.store	0($pop58), $pop56
.LBB13_17:
	end_block
	i32.const	$push66=, 0
	i32.const	$push64=, 32
	i32.add 	$push65=, $14, $pop64
	i32.store	__stack_pointer($pop66), $pop65
	.endfunc
.Lfunc_end13:
	.size	_ZZN5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE7emplaceIZNS_17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEE3$_0EENS2_14const_iteratorEyOT_ENKUlRSH_E_clINS2_4itemEEEDaSJ_, .Lfunc_end13-_ZZN5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE7emplaceIZNS_17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEE3$_0EENS2_14const_iteratorEyOT_ENKUlRSH_E_clINS2_4itemEEEDaSJ_

	.section	.text._ZNSt3__16vectorIN5eosio11multi_indexILy6290548272952901632ENS1_9exaccountEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio11multi_indexILy6290548272952901632ENS1_9exaccountEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio11multi_indexILy6290548272952901632ENS1_9exaccountEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio11multi_indexILy6290548272952901632ENS1_9exaccountEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio11multi_indexILy6290548272952901632ENS1_9exaccountEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio11multi_indexILy6290548272952901632ENS1_9exaccountEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push49=, 0($0)
	tee_local	$push48=, $6=, $pop49
	i32.sub 	$push1=, $pop0, $pop48
	i32.const	$push47=, 24
	i32.div_s	$push46=, $pop1, $pop47
	tee_local	$push45=, $4=, $pop46
	i32.const	$push2=, 1
	i32.add 	$push44=, $pop45, $pop2
	tee_local	$push43=, $5=, $pop44
	i32.const	$push3=, 178956971
	i32.ge_u	$push4=, $pop43, $pop3
	br_if   	0, $pop4
	i32.const	$7=, 178956970
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $6
	i32.const	$push52=, 24
	i32.div_s	$push51=, $pop6, $pop52
	tee_local	$push50=, $6=, $pop51
	i32.const	$push7=, 89478484
	i32.gt_u	$push8=, $pop50, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push56=, $6, $pop9
	tee_local	$push55=, $7=, $pop56
	i32.lt_u	$push10=, $7, $5
	i32.select	$push54=, $5, $pop55, $pop10
	tee_local	$push53=, $7=, $pop54
	i32.eqz 	$push83=, $pop53
	br_if   	1, $pop83
.LBB14_3:
	end_block
	i32.const	$push11=, 24
	i32.mul 	$push12=, $7, $pop11
	i32.call	$6=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB14_4:
	end_block
	i32.const	$7=, 0
	i32.const	$6=, 0
	br      	1
.LBB14_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB14_6:
	end_block
	i32.load	$5=, 0($1)
	i32.const	$push65=, 0
	i32.store	0($1), $pop65
	i32.const	$push13=, 24
	i32.mul 	$push14=, $4, $pop13
	i32.add 	$push64=, $6, $pop14
	tee_local	$push63=, $1=, $pop64
	i32.store	0($pop63), $5
	i64.load	$push15=, 0($2)
	i64.store	8($1), $pop15
	i32.load	$push16=, 0($3)
	i32.store	16($1), $pop16
	i32.const	$push62=, 24
	i32.mul 	$push17=, $7, $pop62
	i32.add 	$4=, $6, $pop17
	i32.const	$push61=, 24
	i32.add 	$5=, $1, $pop61
	block   	
	block   	
	i32.const	$push18=, 4
	i32.add 	$push19=, $0, $pop18
	i32.load	$push60=, 0($pop19)
	tee_local	$push59=, $6=, $pop60
	i32.load	$push58=, 0($0)
	tee_local	$push57=, $7=, $pop58
	i32.eq  	$push20=, $pop59, $pop57
	br_if   	0, $pop20
.LBB14_8:
	loop    	
	i32.const	$push77=, -24
	i32.add 	$push76=, $6, $pop77
	tee_local	$push75=, $2=, $pop76
	i32.load	$3=, 0($pop75)
	i32.const	$push74=, 0
	i32.store	0($2), $pop74
	i32.const	$push73=, -24
	i32.add 	$push21=, $1, $pop73
	i32.store	0($pop21), $3
	i32.const	$push72=, -8
	i32.add 	$push22=, $1, $pop72
	i32.const	$push71=, -8
	i32.add 	$push23=, $6, $pop71
	i32.load	$push24=, 0($pop23)
	i32.store	0($pop22), $pop24
	i32.const	$push70=, -12
	i32.add 	$push25=, $1, $pop70
	i32.const	$push69=, -12
	i32.add 	$push26=, $6, $pop69
	i32.load	$push27=, 0($pop26)
	i32.store	0($pop25), $pop27
	i32.const	$push68=, -16
	i32.add 	$push28=, $1, $pop68
	i32.const	$push67=, -16
	i32.add 	$push29=, $6, $pop67
	i32.load	$push30=, 0($pop29)
	i32.store	0($pop28), $pop30
	i32.const	$push66=, -24
	i32.add 	$1=, $1, $pop66
	copy_local	$6=, $2
	i32.ne  	$push31=, $7, $2
	br_if   	0, $pop31
	end_loop
	i32.const	$push32=, 4
	i32.add 	$push33=, $0, $pop32
	i32.load	$7=, 0($pop33)
	i32.load	$6=, 0($0)
	br      	1
.LBB14_10:
	end_block
	copy_local	$6=, $7
.LBB14_11:
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
.LBB14_13:
	loop    	
	i32.const	$push81=, -24
	i32.add 	$push80=, $7, $pop81
	tee_local	$push79=, $7=, $pop80
	i32.load	$1=, 0($pop79)
	i32.const	$push78=, 0
	i32.store	0($7), $pop78
	block   	
	i32.eqz 	$push84=, $1
	br_if   	0, $pop84
	block   	
	i32.const	$push82=, 16
	i32.add 	$push39=, $1, $pop82
	i32.load	$push40=, 0($pop39)
	i32.eqz 	$push85=, $pop40
	br_if   	0, $pop85
	i32.load	$push41=, 8($1)
	call    	_ZdlPv@FUNCTION, $pop41
.LBB14_16:
	end_block
	call    	_ZdlPv@FUNCTION, $1
.LBB14_17:
	end_block
	i32.ne  	$push42=, $6, $7
	br_if   	0, $pop42
.LBB14_18:
	end_loop
	end_block
	block   	
	i32.eqz 	$push86=, $6
	br_if   	0, $pop86
	call    	_ZdlPv@FUNCTION, $6
.LBB14_20:
	end_block
	.endfunc
.Lfunc_end14:
	.size	_ZNSt3__16vectorIN5eosio11multi_indexILy6290548272952901632ENS1_9exaccountEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_, .Lfunc_end14-_ZNSt3__16vectorIN5eosio11multi_indexILy6290548272952901632ENS1_9exaccountEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_

	.text
	.type	_ZN5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE6modifyIZNS_17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEE3$_1EEvRKS1_yOT_,@function
_ZN5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE6modifyIZNS_17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEE3$_1EEvRKS1_yOT_:
	.param  	i32, i32, i32
	.local  	i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32, i32
	i32.const	$push62=, 0
	i32.load	$push63=, __stack_pointer($pop62)
	i32.const	$push64=, 32
	i32.sub 	$push80=, $pop63, $pop64
	tee_local	$push79=, $14=, $pop80
	copy_local	$13=, $pop79
	i32.const	$push65=, 0
	i32.store	__stack_pointer($pop65), $14
	i32.load	$push0=, 20($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.84
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.85
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	i32.load	$push78=, 8($1)
	tee_local	$push77=, $11=, $pop78
	i32.const	$push7=, 12
	i32.add 	$push8=, $1, $pop7
	i32.load	$push9=, 0($pop8)
	i32.const	$push76=, 24
	i32.mul 	$push75=, $pop9, $pop76
	tee_local	$push74=, $10=, $pop75
	i32.add 	$6=, $pop77, $pop74
	i64.load	$3=, 0($1)
	i32.load	$push73=, 0($2)
	tee_local	$push72=, $2=, $pop73
	i64.load	$5=, 16($pop72)
	i64.load	$12=, 8($2)
	i64.load	$4=, 0($2)
	block   	
	i32.eqz 	$push113=, $10
	br_if   	0, $pop113
	i32.const	$push81=, 24
	i32.div_s	$2=, $10, $pop81
	copy_local	$10=, $11
.LBB15_2:
	loop    	
	i32.const	$push95=, 1
	i32.shr_u	$push94=, $2, $pop95
	tee_local	$push93=, $7=, $pop94
	i32.const	$push92=, 24
	i32.mul 	$push12=, $pop93, $pop92
	i32.add 	$push91=, $10, $pop12
	tee_local	$push90=, $8=, $pop91
	i32.const	$push89=, 24
	i32.add 	$push88=, $pop90, $pop89
	tee_local	$push87=, $9=, $pop88
	i64.load	$push13=, 0($8)
	i64.lt_u	$push86=, $pop13, $12
	tee_local	$push85=, $8=, $pop86
	i32.select	$10=, $pop87, $10, $pop85
	i32.select	$11=, $9, $11, $8
	i32.const	$push84=, -1
	i32.add 	$push10=, $2, $pop84
	i32.sub 	$push11=, $pop10, $7
	i32.select	$push83=, $pop11, $7, $8
	tee_local	$push82=, $2=, $pop83
	br_if   	0, $pop82
.LBB15_3:
	end_loop
	end_block
	i32.const	$push96=, 8
	i32.add 	$7=, $1, $pop96
	block   	
	block   	
	i32.eq  	$push14=, $11, $6
	br_if   	0, $pop14
	i64.load	$push15=, 0($11)
	i64.ge_u	$push16=, $12, $pop15
	br_if   	1, $pop16
.LBB15_5:
	end_block
	i64.store	8($13), $5
	i64.store	0($13), $12
	i64.const	$push17=, 0
	i64.store	16($13), $pop17
	i32.const	$push69=, 24
	i32.add 	$push70=, $13, $pop69
	call    	_ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueENS0_12vec_iteratorIPS6_Lb1EEEOS6_@FUNCTION, $pop70, $7, $11, $13
	i32.load	$11=, 24($13)
.LBB15_6:
	end_block
	i64.load	$push18=, 16($11)
	i64.add 	$push101=, $pop18, $4
	tee_local	$push100=, $12=, $pop101
	i64.store	16($11), $pop100
	i64.const	$push19=, 63
	i64.shr_u	$push20=, $12, $pop19
	i32.wrap/i64	$push21=, $pop20
	i32.const	$push99=, 1
	i32.xor 	$push22=, $pop21, $pop99
	i32.const	$push23=, .L.str.106
	call    	eosio_assert@FUNCTION, $pop22, $pop23
	i64.load	$push24=, 0($1)
	i64.eq  	$push25=, $3, $pop24
	i32.const	$push26=, .L.str.86
	call    	eosio_assert@FUNCTION, $pop25, $pop26
	i32.const	$push27=, 12
	i32.add 	$push28=, $1, $pop27
	i32.load	$push98=, 0($pop28)
	tee_local	$push97=, $10=, $pop98
	i64.extend_u/i32	$12=, $pop97
	i32.const	$2=, 8
.LBB15_7:
	loop    	
	i32.const	$push106=, 1
	i32.add 	$2=, $2, $pop106
	i64.const	$push105=, 7
	i64.shr_u	$push104=, $12, $pop105
	tee_local	$push103=, $12=, $pop104
	i64.const	$push102=, 0
	i64.ne  	$push29=, $pop103, $pop102
	br_if   	0, $pop29
	end_loop
	block   	
	i32.eqz 	$push114=, $10
	br_if   	0, $pop114
	i32.const	$push30=, 24
	i32.mul 	$push109=, $10, $pop30
	tee_local	$push108=, $10=, $pop109
	i32.const	$push31=, -24
	i32.add 	$push32=, $10, $pop31
	i32.const	$push107=, 24
	i32.rem_u	$push33=, $pop32, $pop107
	i32.sub 	$push34=, $pop108, $pop33
	i32.add 	$2=, $pop34, $2
.LBB15_10:
	end_block
	block   	
	block   	
	i32.const	$push35=, 513
	i32.lt_u	$push36=, $2, $pop35
	br_if   	0, $pop36
	i32.call	$10=, malloc@FUNCTION, $2
	br      	1
.LBB15_12:
	end_block
	i32.const	$push61=, 0
	i32.const	$push37=, 15
	i32.add 	$push38=, $2, $pop37
	i32.const	$push39=, -16
	i32.and 	$push40=, $pop38, $pop39
	i32.sub 	$push111=, $14, $pop40
	tee_local	$push110=, $10=, $pop111
	copy_local	$push71=, $pop110
	i32.store	__stack_pointer($pop61), $pop71
.LBB15_13:
	end_block
	i32.store	0($13), $10
	i32.add 	$push41=, $10, $2
	i32.store	8($13), $pop41
	i32.const	$push42=, 7
	i32.gt_s	$push43=, $2, $pop42
	i32.const	$push44=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop43, $pop44
	i32.const	$push45=, 8
	i32.call	$drop=, memcpy@FUNCTION, $10, $1, $pop45
	i32.const	$push112=, 8
	i32.add 	$push46=, $10, $pop112
	i32.store	4($13), $pop46
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEENS_15extended_symbolExEERT_S6_RKN5boost9container8flat_mapIT0_T1_NSt3__14lessISA_EENS8_13new_allocatorINSC_4pairISA_SB_EEEEEE@FUNCTION, $13, $7
	i32.load	$push47=, 24($1)
	i64.const	$push48=, 0
	call    	db_update_i64@FUNCTION, $pop47, $pop48, $10, $2
	block   	
	i32.const	$push49=, 513
	i32.lt_u	$push50=, $2, $pop49
	br_if   	0, $pop50
	call    	free@FUNCTION, $10
.LBB15_15:
	end_block
	block   	
	i64.load	$push51=, 16($0)
	i64.lt_u	$push52=, $3, $pop51
	br_if   	0, $pop52
	i32.const	$push59=, 16
	i32.add 	$push60=, $0, $pop59
	i64.const	$push57=, -2
	i64.const	$push55=, 1
	i64.add 	$push56=, $3, $pop55
	i64.const	$push53=, -3
	i64.gt_u	$push54=, $3, $pop53
	i64.select	$push58=, $pop57, $pop56, $pop54
	i64.store	0($pop60), $pop58
.LBB15_17:
	end_block
	i32.const	$push68=, 0
	i32.const	$push66=, 32
	i32.add 	$push67=, $13, $pop66
	i32.store	__stack_pointer($pop68), $pop67
	.endfunc
.Lfunc_end15:
	.size	_ZN5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE6modifyIZNS_17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEE3$_1EEvRKS1_yOT_, .Lfunc_end15-_ZN5eosio11multi_indexILy6290548272952901632ENS_9exaccountEJEE6modifyIZNS_17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEE3$_1EEvRKS1_yOT_

	.section	.text._ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueENS0_12vec_iteratorIPS6_Lb1EEEOS6_,"axG",@progbits,_ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueENS0_12vec_iteratorIPS6_Lb1EEEOS6_,comdat
	.hidden	_ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueENS0_12vec_iteratorIPS6_Lb1EEEOS6_
	.weak	_ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueENS0_12vec_iteratorIPS6_Lb1EEEOS6_
	.type	_ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueENS0_12vec_iteratorIPS6_Lb1EEEOS6_,@function
_ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueENS0_12vec_iteratorIPS6_Lb1EEEOS6_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i32, i64, i64, i32, i32, i32, i32, i32
	i32.const	$push82=, 0
	i32.const	$push79=, 0
	i32.load	$push80=, __stack_pointer($pop79)
	i32.const	$push81=, 16
	i32.sub 	$push95=, $pop80, $pop81
	tee_local	$push94=, $13=, $pop95
	i32.store	__stack_pointer($pop82), $pop94
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push93=, 0($1)
	tee_local	$push92=, $4=, $pop93
	i32.load	$push91=, 4($1)
	tee_local	$push90=, $5=, $pop91
	i32.const	$push0=, 24
	i32.mul 	$push1=, $pop90, $pop0
	i32.add 	$push89=, $pop92, $pop1
	tee_local	$push88=, $6=, $pop89
	i32.eq  	$push2=, $pop88, $2
	br_if   	0, $pop2
	i64.load	$push97=, 0($3)
	tee_local	$push96=, $7=, $pop97
	i64.load	$push3=, 0($2)
	i64.ge_u	$push4=, $pop96, $pop3
	br_if   	1, $pop4
.LBB16_2:
	end_block
	i32.eq  	$push13=, $4, $2
	br_if   	3, $pop13
	i32.const	$push14=, -24
	i32.add 	$push103=, $2, $pop14
	tee_local	$push102=, $12=, $pop103
	i64.load	$push101=, 0($pop102)
	tee_local	$push100=, $8=, $pop101
	i64.load	$push99=, 0($3)
	tee_local	$push98=, $7=, $pop99
	i64.lt_u	$push15=, $pop100, $pop98
	br_if   	3, $pop15
	i64.ge_u	$push16=, $7, $8
	br_if   	4, $pop16
	copy_local	$2=, $4
	i32.sub 	$push17=, $12, $4
	i32.const	$push106=, 24
	i32.div_s	$push77=, $pop17, $pop106
	copy_local	$push105=, $pop77
	tee_local	$push104=, $11=, $pop105
	br_if   	1, $pop104
	br      	2
.LBB16_6:
	end_block
	block   	
	i32.sub 	$push5=, $6, $2
	i32.const	$push109=, 24
	i32.div_s	$push78=, $pop5, $pop109
	copy_local	$push108=, $pop78
	tee_local	$push107=, $11=, $pop108
	i32.eqz 	$push154=, $pop107
	br_if   	0, $pop154
.LBB16_7:
	loop    	
	block   	
	i32.const	$push119=, 1
	i32.shr_u	$push118=, $11, $pop119
	tee_local	$push117=, $10=, $pop118
	i32.const	$push116=, 24
	i32.mul 	$push6=, $pop117, $pop116
	i32.add 	$push115=, $2, $pop6
	tee_local	$push114=, $9=, $pop115
	i64.load	$push7=, 0($pop114)
	i64.ge_u	$push8=, $pop7, $7
	br_if   	0, $pop8
	i32.const	$push111=, 24
	i32.add 	$2=, $9, $pop111
	i32.const	$push110=, -1
	i32.add 	$push9=, $11, $pop110
	i32.sub 	$10=, $pop9, $10
.LBB16_9:
	end_block
	copy_local	$push113=, $10
	tee_local	$push112=, $11=, $pop113
	br_if   	0, $pop112
.LBB16_10:
	end_loop
	end_block
	i32.eq  	$push10=, $2, $6
	br_if   	2, $pop10
	copy_local	$12=, $2
	i64.load	$push11=, 0($2)
	i64.lt_u	$push12=, $7, $pop11
	br_if   	2, $pop12
	br      	3
.LBB16_12:
	end_block
	loop    	
	block   	
	i32.const	$push129=, 1
	i32.shr_u	$push128=, $11, $pop129
	tee_local	$push127=, $10=, $pop128
	i32.const	$push126=, 24
	i32.mul 	$push18=, $pop127, $pop126
	i32.add 	$push125=, $2, $pop18
	tee_local	$push124=, $9=, $pop125
	i64.load	$push19=, 0($pop124)
	i64.ge_u	$push20=, $pop19, $7
	br_if   	0, $pop20
	i32.const	$push121=, 24
	i32.add 	$2=, $9, $pop121
	i32.const	$push120=, -1
	i32.add 	$push21=, $11, $pop120
	i32.sub 	$10=, $pop21, $10
.LBB16_14:
	end_block
	copy_local	$push123=, $10
	tee_local	$push122=, $11=, $pop123
	br_if   	0, $pop122
.LBB16_15:
	end_loop
	end_block
	i32.eq  	$push22=, $2, $12
	br_if   	0, $pop22
	copy_local	$12=, $2
	i64.load	$push23=, 0($2)
	i64.ge_u	$push24=, $7, $pop23
	br_if   	1, $pop24
.LBB16_17:
	end_block
	i32.store	8($13), $2
	block   	
	i32.load	$push30=, 8($1)
	i32.ne  	$push31=, $pop30, $5
	br_if   	0, $pop31
	i32.const	$push86=, 8
	i32.add 	$push87=, $13, $pop86
	i32.const	$push76=, 1
	call    	_ZN5boost9container6vectorINS0_3dtl4pairIN5eosio15extended_symbolExEENS0_13new_allocatorIS6_EEvE37priv_forward_range_insert_no_capacityINS2_17insert_move_proxyIS8_PS6_EEEENS0_12vec_iteratorISC_Lb0EEERKSC_jT_NS_11move_detail17integral_constantIjLj1EEE@FUNCTION, $0, $1, $pop87, $pop76, $3
	br      	4
.LBB16_19:
	end_block
	i32.sub 	$push32=, $2, $4
	i32.const	$push130=, 24
	i32.div_s	$9=, $pop32, $pop130
	i32.eq  	$push33=, $6, $2
	br_if   	1, $pop33
	i32.const	$push139=, 8
	i32.add 	$push34=, $6, $pop139
	i32.const	$push138=, -16
	i32.add 	$push35=, $6, $pop138
	i64.load	$push36=, 0($pop35)
	i64.store	0($pop34), $pop36
	i32.const	$push137=, -24
	i32.add 	$push136=, $6, $pop137
	tee_local	$push135=, $11=, $pop136
	i64.load	$push37=, 0($pop135)
	i64.store	0($6), $pop37
	i32.const	$push134=, 24
	i32.mul 	$push38=, $5, $pop134
	i32.add 	$push39=, $4, $pop38
	i32.const	$push133=, -8
	i32.add 	$push40=, $6, $pop133
	i64.load	$push41=, 0($pop40)
	i64.store	16($pop39), $pop41
	i32.const	$push42=, 4
	i32.add 	$push132=, $1, $pop42
	tee_local	$push131=, $10=, $pop132
	i32.load	$push43=, 0($10)
	i32.const	$push44=, 1
	i32.add 	$push45=, $pop43, $pop44
	i32.store	0($pop131), $pop45
	block   	
	i32.eq  	$push46=, $11, $2
	br_if   	0, $pop46
.LBB16_22:
	loop    	
	i32.const	$push146=, 8
	i32.add 	$push47=, $11, $pop146
	i32.const	$push145=, -16
	i32.add 	$push48=, $11, $pop145
	i64.load	$push49=, 0($pop48)
	i64.store	0($pop47), $pop49
	i32.const	$push144=, -24
	i32.add 	$push143=, $11, $pop144
	tee_local	$push142=, $10=, $pop143
	i64.load	$push50=, 0($pop142)
	i64.store	0($11), $pop50
	i32.const	$push141=, 16
	i32.add 	$push51=, $11, $pop141
	i32.const	$push140=, -8
	i32.add 	$push52=, $11, $pop140
	i64.load	$push53=, 0($pop52)
	i64.store	0($pop51), $pop53
	copy_local	$11=, $10
	i32.ne  	$push54=, $2, $10
	br_if   	0, $pop54
.LBB16_23:
	end_loop
	end_block
	i64.load	$push55=, 0($3)
	i64.store	0($2), $pop55
	i32.const	$push148=, 8
	i32.add 	$push56=, $2, $pop148
	i32.const	$push147=, 8
	i32.add 	$push57=, $3, $pop147
	i64.load	$push58=, 0($pop57)
	i64.store	0($pop56), $pop58
	i64.load	$push59=, 16($3)
	i64.store	16($2), $pop59
	br      	2
.LBB16_24:
	end_block
	i32.sub 	$push25=, $12, $4
	i32.const	$push26=, 24
	i32.div_s	$push27=, $pop25, $pop26
	i32.const	$push149=, 24
	i32.mul 	$push28=, $pop27, $pop149
	i32.add 	$push29=, $4, $pop28
	i32.store	0($0), $pop29
	br      	2
.LBB16_25:
	end_block
	i64.load	$push60=, 0($3)
	i64.store	0($2), $pop60
	i32.const	$push61=, 8
	i32.add 	$push62=, $2, $pop61
	i32.const	$push153=, 8
	i32.add 	$push63=, $3, $pop153
	i64.load	$push64=, 0($pop63)
	i64.store	0($pop62), $pop64
	i32.const	$push152=, 24
	i32.mul 	$push65=, $5, $pop152
	i32.add 	$push66=, $4, $pop65
	i64.load	$push67=, 16($3)
	i64.store	16($pop66), $pop67
	i32.const	$push68=, 4
	i32.add 	$push151=, $1, $pop68
	tee_local	$push150=, $11=, $pop151
	i32.load	$push69=, 0($11)
	i32.const	$push70=, 1
	i32.add 	$push71=, $pop69, $pop70
	i32.store	0($pop150), $pop71
.LBB16_26:
	end_block
	i32.load	$push74=, 0($1)
	i32.const	$push72=, 24
	i32.mul 	$push73=, $9, $pop72
	i32.add 	$push75=, $pop74, $pop73
	i32.store	0($0), $pop75
.LBB16_27:
	end_block
	i32.const	$push85=, 0
	i32.const	$push83=, 16
	i32.add 	$push84=, $13, $pop83
	i32.store	__stack_pointer($pop85), $pop84
	.endfunc
.Lfunc_end16:
	.size	_ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueENS0_12vec_iteratorIPS6_Lb1EEEOS6_, .Lfunc_end16-_ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueENS0_12vec_iteratorIPS6_Lb1EEEOS6_

	.section	.text._ZN5eosiolsINS_10datastreamIPcEENS_15extended_symbolExEERT_S6_RKN5boost9container8flat_mapIT0_T1_NSt3__14lessISA_EENS8_13new_allocatorINSC_4pairISA_SB_EEEEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEENS_15extended_symbolExEERT_S6_RKN5boost9container8flat_mapIT0_T1_NSt3__14lessISA_EENS8_13new_allocatorINSC_4pairISA_SB_EEEEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEENS_15extended_symbolExEERT_S6_RKN5boost9container8flat_mapIT0_T1_NSt3__14lessISA_EENS8_13new_allocatorINSC_4pairISA_SB_EEEEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEENS_15extended_symbolExEERT_S6_RKN5boost9container8flat_mapIT0_T1_NSt3__14lessISA_EENS8_13new_allocatorINSC_4pairISA_SB_EEEEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEENS_15extended_symbolExEERT_S6_RKN5boost9container8flat_mapIT0_T1_NSt3__14lessISA_EENS8_13new_allocatorINSC_4pairISA_SB_EEEEEE,@function
_ZN5eosiolsINS_10datastreamIPcEENS_15extended_symbolExEERT_S6_RKN5boost9container8flat_mapIT0_T1_NSt3__14lessISA_EENS8_13new_allocatorINSC_4pairISA_SB_EEEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32
	i32.const	$push33=, 0
	i32.const	$push30=, 0
	i32.load	$push31=, __stack_pointer($pop30)
	i32.const	$push32=, 16
	i32.sub 	$push40=, $pop31, $pop32
	tee_local	$push39=, $8=, $pop40
	i32.store	__stack_pointer($pop33), $pop39
	i32.load	$6=, 4($0)
	i64.load32_u	$5=, 4($1)
	i32.const	$push3=, 8
	i32.add 	$3=, $0, $pop3
	i32.const	$push7=, 4
	i32.add 	$4=, $0, $pop7
.LBB17_1:
	loop    	
	i32.wrap/i64	$7=, $5
	i64.const	$push54=, 7
	i64.shr_u	$push53=, $5, $pop54
	tee_local	$push52=, $5=, $pop53
	i64.const	$push51=, 0
	i64.ne  	$push50=, $pop52, $pop51
	tee_local	$push49=, $2=, $pop50
	i32.const	$push48=, 7
	i32.shl 	$push1=, $pop49, $pop48
	i32.const	$push47=, 127
	i32.and 	$push0=, $7, $pop47
	i32.or  	$push2=, $pop1, $pop0
	i32.store8	15($8), $pop2
	i32.load	$push4=, 0($3)
	i32.sub 	$push5=, $pop4, $6
	i32.const	$push46=, 0
	i32.gt_s	$push6=, $pop5, $pop46
	i32.const	$push45=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop6, $pop45
	i32.load	$push8=, 0($4)
	i32.const	$push37=, 15
	i32.add 	$push38=, $8, $pop37
	i32.const	$push44=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop8, $pop38, $pop44
	i32.load	$push9=, 0($4)
	i32.const	$push43=, 1
	i32.add 	$push42=, $pop9, $pop43
	tee_local	$push41=, $6=, $pop42
	i32.store	0($4), $pop41
	br_if   	0, $2
	end_loop
	block   	
	i32.const	$push57=, 4
	i32.add 	$push10=, $1, $pop57
	i32.load	$push56=, 0($pop10)
	tee_local	$push55=, $4=, $pop56
	i32.eqz 	$push88=, $pop55
	br_if   	0, $pop88
	i32.load	$push61=, 0($1)
	tee_local	$push60=, $7=, $pop61
	i32.const	$push59=, 24
	i32.mul 	$push11=, $4, $pop59
	i32.add 	$3=, $pop60, $pop11
	i32.const	$push58=, 4
	i32.add 	$4=, $0, $pop58
.LBB17_4:
	loop    	
	i32.const	$push87=, 8
	i32.add 	$push86=, $0, $pop87
	tee_local	$push85=, $2=, $pop86
	i32.load	$push12=, 0($pop85)
	i32.sub 	$push13=, $pop12, $6
	i32.const	$push84=, 7
	i32.gt_s	$push14=, $pop13, $pop84
	i32.const	$push83=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop14, $pop83
	i32.load	$push15=, 0($4)
	i32.const	$push82=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop15, $7, $pop82
	i32.load	$push16=, 0($4)
	i32.const	$push81=, 8
	i32.add 	$push80=, $pop16, $pop81
	tee_local	$push79=, $6=, $pop80
	i32.store	0($4), $pop79
	i32.load	$push17=, 0($2)
	i32.sub 	$push18=, $pop17, $6
	i32.const	$push78=, 7
	i32.gt_s	$push19=, $pop18, $pop78
	i32.const	$push77=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop19, $pop77
	i32.load	$push21=, 0($4)
	i32.const	$push76=, 8
	i32.add 	$push20=, $7, $pop76
	i32.const	$push75=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop21, $pop20, $pop75
	i32.load	$push22=, 0($4)
	i32.const	$push74=, 8
	i32.add 	$push73=, $pop22, $pop74
	tee_local	$push72=, $6=, $pop73
	i32.store	0($4), $pop72
	i32.load	$push23=, 0($2)
	i32.sub 	$push24=, $pop23, $6
	i32.const	$push71=, 7
	i32.gt_s	$push25=, $pop24, $pop71
	i32.const	$push70=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop25, $pop70
	i32.load	$push27=, 0($4)
	i32.const	$push69=, 16
	i32.add 	$push26=, $7, $pop69
	i32.const	$push68=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $pop26, $pop68
	i32.load	$push28=, 0($4)
	i32.const	$push67=, 8
	i32.add 	$push66=, $pop28, $pop67
	tee_local	$push65=, $6=, $pop66
	i32.store	0($4), $pop65
	i32.const	$push64=, 24
	i32.add 	$push63=, $7, $pop64
	tee_local	$push62=, $7=, $pop63
	i32.ne  	$push29=, $pop62, $3
	br_if   	0, $pop29
.LBB17_5:
	end_loop
	end_block
	i32.const	$push36=, 0
	i32.const	$push34=, 16
	i32.add 	$push35=, $8, $pop34
	i32.store	__stack_pointer($pop36), $pop35
	copy_local	$push89=, $0
	.endfunc
.Lfunc_end17:
	.size	_ZN5eosiolsINS_10datastreamIPcEENS_15extended_symbolExEERT_S6_RKN5boost9container8flat_mapIT0_T1_NSt3__14lessISA_EENS8_13new_allocatorINSC_4pairISA_SB_EEEEEE, .Lfunc_end17-_ZN5eosiolsINS_10datastreamIPcEENS_15extended_symbolExEERT_S6_RKN5boost9container8flat_mapIT0_T1_NSt3__14lessISA_EENS8_13new_allocatorINSC_4pairISA_SB_EEEEEE

	.section	.text._ZN5boost9container6vectorINS0_3dtl4pairIN5eosio15extended_symbolExEENS0_13new_allocatorIS6_EEvE37priv_forward_range_insert_no_capacityINS2_17insert_move_proxyIS8_PS6_EEEENS0_12vec_iteratorISC_Lb0EEERKSC_jT_NS_11move_detail17integral_constantIjLj1EEE,"axG",@progbits,_ZN5boost9container6vectorINS0_3dtl4pairIN5eosio15extended_symbolExEENS0_13new_allocatorIS6_EEvE37priv_forward_range_insert_no_capacityINS2_17insert_move_proxyIS8_PS6_EEEENS0_12vec_iteratorISC_Lb0EEERKSC_jT_NS_11move_detail17integral_constantIjLj1EEE,comdat
	.hidden	_ZN5boost9container6vectorINS0_3dtl4pairIN5eosio15extended_symbolExEENS0_13new_allocatorIS6_EEvE37priv_forward_range_insert_no_capacityINS2_17insert_move_proxyIS8_PS6_EEEENS0_12vec_iteratorISC_Lb0EEERKSC_jT_NS_11move_detail17integral_constantIjLj1EEE
	.weak	_ZN5boost9container6vectorINS0_3dtl4pairIN5eosio15extended_symbolExEENS0_13new_allocatorIS6_EEvE37priv_forward_range_insert_no_capacityINS2_17insert_move_proxyIS8_PS6_EEEENS0_12vec_iteratorISC_Lb0EEERKSC_jT_NS_11move_detail17integral_constantIjLj1EEE
	.type	_ZN5boost9container6vectorINS0_3dtl4pairIN5eosio15extended_symbolExEENS0_13new_allocatorIS6_EEvE37priv_forward_range_insert_no_capacityINS2_17insert_move_proxyIS8_PS6_EEEENS0_12vec_iteratorISC_Lb0EEERKSC_jT_NS_11move_detail17integral_constantIjLj1EEE,@function
_ZN5boost9container6vectorINS0_3dtl4pairIN5eosio15extended_symbolExEENS0_13new_allocatorIS6_EEvE37priv_forward_range_insert_no_capacityINS2_17insert_move_proxyIS8_PS6_EEEENS0_12vec_iteratorISC_Lb0EEERKSC_jT_NS_11move_detail17integral_constantIjLj1EEE:
	.param  	i32, i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i32, i32
	i32.load	$push67=, 0($2)
	tee_local	$push66=, $5=, $pop67
	i32.load	$push5=, 0($1)
	i32.sub 	$push6=, $pop66, $pop5
	i32.const	$push7=, 24
	i32.div_s	$6=, $pop6, $pop7
	block   	
	i32.const	$push0=, 178956970
	i32.load	$push65=, 8($1)
	tee_local	$push64=, $2=, $pop65
	i32.sub 	$push1=, $pop0, $pop64
	i32.sub 	$push2=, $3, $2
	i32.load	$push63=, 4($1)
	tee_local	$push62=, $10=, $pop63
	i32.add 	$push3=, $pop2, $pop62
	i32.lt_u	$push4=, $pop1, $pop3
	br_if   	0, $pop4
	block   	
	block   	
	i32.const	$push8=, 536870911
	i32.gt_u	$push9=, $2, $pop8
	br_if   	0, $pop9
	i32.const	$push15=, 3
	i32.shl 	$push16=, $2, $pop15
	i32.const	$push17=, 5
	i32.div_u	$2=, $pop16, $pop17
	br      	1
.LBB18_3:
	end_block
	i32.const	$push14=, -1
	i32.const	$push12=, 3
	i32.shl 	$push13=, $2, $pop12
	i32.const	$push10=, -1610612737
	i32.gt_u	$push11=, $2, $pop10
	i32.select	$2=, $pop14, $pop13, $pop11
.LBB18_4:
	end_block
	i32.add 	$push74=, $10, $3
	tee_local	$push73=, $10=, $pop74
	i32.const	$push18=, 178956970
	i32.const	$push72=, 178956970
	i32.lt_u	$push19=, $2, $pop72
	i32.select	$push71=, $2, $pop18, $pop19
	tee_local	$push70=, $2=, $pop71
	i32.gt_u	$push20=, $10, $2
	i32.select	$push69=, $pop73, $pop70, $pop20
	tee_local	$push68=, $7=, $pop69
	i32.const	$push21=, 178956971
	i32.ge_u	$push22=, $pop68, $pop21
	br_if   	0, $pop22
	i32.const	$push79=, 24
	i32.mul 	$push24=, $7, $pop79
	i32.call	$push78=, _Znwj@FUNCTION, $pop24
	tee_local	$push77=, $9=, $pop78
	copy_local	$2=, $pop77
	block   	
	i32.load	$push76=, 0($1)
	tee_local	$push75=, $8=, $pop76
	i32.eq  	$push25=, $pop75, $5
	br_if   	0, $pop25
	copy_local	$2=, $9
	i32.eqz 	$push23=, $8
	br_if   	0, $pop23
	copy_local	$10=, $8
	copy_local	$2=, $9
.LBB18_8:
	loop    	
	i64.load	$push26=, 0($10)
	i64.store	0($2), $pop26
	i32.const	$push87=, 8
	i32.add 	$push27=, $2, $pop87
	i32.const	$push86=, 8
	i32.add 	$push28=, $10, $pop86
	i64.load	$push29=, 0($pop28)
	i64.store	0($pop27), $pop29
	i32.const	$push85=, 16
	i32.add 	$push30=, $2, $pop85
	i32.const	$push84=, 16
	i32.add 	$push31=, $10, $pop84
	i64.load	$push32=, 0($pop31)
	i64.store	0($pop30), $pop32
	i32.const	$push83=, 24
	i32.add 	$2=, $2, $pop83
	i32.const	$push82=, 24
	i32.add 	$push81=, $10, $pop82
	tee_local	$push80=, $10=, $pop81
	i32.ne  	$push33=, $pop80, $5
	br_if   	0, $pop33
.LBB18_9:
	end_loop
	end_block
	i64.load	$push34=, 0($4)
	i64.store	0($2), $pop34
	i32.const	$push90=, 8
	i32.add 	$push35=, $2, $pop90
	i32.const	$push89=, 8
	i32.add 	$push36=, $4, $pop89
	i64.load	$push37=, 0($pop36)
	i64.store	0($pop35), $pop37
	i64.load	$push38=, 16($4)
	i64.store	16($2), $pop38
	i32.const	$push88=, 24
	i32.mul 	$push39=, $3, $pop88
	i32.add 	$2=, $2, $pop39
	block   	
	i32.eqz 	$push104=, $8
	br_if   	0, $pop104
	block   	
	i32.const	$push40=, 4
	i32.add 	$push41=, $1, $pop40
	i32.load	$push42=, 0($pop41)
	i32.const	$push93=, 24
	i32.mul 	$push43=, $pop42, $pop93
	i32.add 	$push92=, $8, $pop43
	tee_local	$push91=, $10=, $pop92
	i32.eq  	$push44=, $pop91, $5
	br_if   	0, $pop44
.LBB18_12:
	loop    	
	i64.load	$push45=, 0($5)
	i64.store	0($2), $pop45
	i32.const	$push101=, 8
	i32.add 	$push46=, $2, $pop101
	i32.const	$push100=, 8
	i32.add 	$push47=, $5, $pop100
	i64.load	$push48=, 0($pop47)
	i64.store	0($pop46), $pop48
	i32.const	$push99=, 16
	i32.add 	$push49=, $2, $pop99
	i32.const	$push98=, 16
	i32.add 	$push50=, $5, $pop98
	i64.load	$push51=, 0($pop50)
	i64.store	0($pop49), $pop51
	i32.const	$push97=, 24
	i32.add 	$2=, $2, $pop97
	i32.const	$push96=, 24
	i32.add 	$push95=, $5, $pop96
	tee_local	$push94=, $5=, $pop95
	i32.ne  	$push52=, $pop94, $10
	br_if   	0, $pop52
.LBB18_13:
	end_loop
	end_block
	i32.load	$push53=, 0($1)
	call    	_ZdlPv@FUNCTION, $pop53
.LBB18_14:
	end_block
	i32.store	0($1), $9
	i32.const	$push103=, 8
	i32.add 	$push54=, $1, $pop103
	i32.store	0($pop54), $7
	i32.const	$push55=, 4
	i32.add 	$push56=, $1, $pop55
	i32.sub 	$push57=, $2, $9
	i32.const	$push58=, 24
	i32.div_s	$push59=, $pop57, $pop58
	i32.store	0($pop56), $pop59
	i32.const	$push102=, 24
	i32.mul 	$push60=, $6, $pop102
	i32.add 	$push61=, $9, $pop60
	i32.store	0($0), $pop61
	return
.LBB18_15:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end18:
	.size	_ZN5boost9container6vectorINS0_3dtl4pairIN5eosio15extended_symbolExEENS0_13new_allocatorIS6_EEvE37priv_forward_range_insert_no_capacityINS2_17insert_move_proxyIS8_PS6_EEEENS0_12vec_iteratorISC_Lb0EEERKSC_jT_NS_11move_detail17integral_constantIjLj1EEE, .Lfunc_end18-_ZN5boost9container6vectorINS0_3dtl4pairIN5eosio15extended_symbolExEENS0_13new_allocatorIS6_EEvE37priv_forward_range_insert_no_capacityINS2_17insert_move_proxyIS8_PS6_EEEENS0_12vec_iteratorISC_Lb0EEERKSC_jT_NS_11move_detail17integral_constantIjLj1EEE

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEENS_15extended_symbolExEERT_S7_RN5boost9container8flat_mapIT0_T1_NSt3__14lessISB_EENS9_13new_allocatorINSD_4pairISB_SC_EEEEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEENS_15extended_symbolExEERT_S7_RN5boost9container8flat_mapIT0_T1_NSt3__14lessISB_EENS9_13new_allocatorINSD_4pairISB_SC_EEEEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEENS_15extended_symbolExEERT_S7_RN5boost9container8flat_mapIT0_T1_NSt3__14lessISB_EENS9_13new_allocatorINSD_4pairISB_SC_EEEEEE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEENS_15extended_symbolExEERT_S7_RN5boost9container8flat_mapIT0_T1_NSt3__14lessISB_EENS9_13new_allocatorINSD_4pairISB_SC_EEEEEE
	.type	_ZN5eosiorsINS_10datastreamIPKcEENS_15extended_symbolExEERT_S7_RN5boost9container8flat_mapIT0_T1_NSt3__14lessISB_EENS9_13new_allocatorINSD_4pairISB_SC_EEEEEE,@function
_ZN5eosiorsINS_10datastreamIPKcEENS_15extended_symbolExEERT_S7_RN5boost9container8flat_mapIT0_T1_NSt3__14lessISB_EENS9_13new_allocatorINSD_4pairISB_SC_EEEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push33=, 0
	i32.const	$push30=, 0
	i32.load	$push31=, __stack_pointer($pop30)
	i32.const	$push32=, 64
	i32.sub 	$push51=, $pop31, $pop32
	tee_local	$push50=, $9=, $pop51
	i32.store	__stack_pointer($pop33), $pop50
	i32.const	$6=, 0
	i32.const	$push49=, 0
	i32.store	4($1), $pop49
	i32.load	$8=, 4($0)
	i64.const	$5=, 0
	i32.const	$push0=, 8
	i32.add 	$7=, $0, $pop0
	i32.const	$push3=, 4
	i32.add 	$2=, $0, $pop3
.LBB19_1:
	loop    	
	i32.load	$push1=, 0($7)
	i32.lt_u	$push2=, $8, $pop1
	i32.const	$push63=, .L.str.103
	call    	eosio_assert@FUNCTION, $pop2, $pop63
	i32.load	$push62=, 0($2)
	tee_local	$push61=, $8=, $pop62
	i32.load8_u	$3=, 0($pop61)
	i32.const	$push60=, 1
	i32.add 	$push59=, $8, $pop60
	tee_local	$push58=, $8=, $pop59
	i32.store	0($2), $pop58
	i32.const	$push57=, 127
	i32.and 	$push4=, $3, $pop57
	i32.const	$push56=, 255
	i32.and 	$push55=, $6, $pop56
	tee_local	$push54=, $6=, $pop55
	i32.shl 	$push5=, $pop4, $pop54
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$5=, $pop6, $5
	i32.const	$push53=, 7
	i32.add 	$6=, $6, $pop53
	i32.const	$push52=, 7
	i32.shr_u	$push7=, $3, $pop52
	br_if   	0, $pop7
	end_loop
	block   	
	i32.wrap/i64	$push65=, $5
	tee_local	$push64=, $3=, $pop65
	i32.eqz 	$push91=, $pop64
	br_if   	0, $pop91
	i32.const	$push67=, -1
	i32.add 	$7=, $3, $pop67
	i32.const	$push37=, 16
	i32.add 	$push38=, $9, $pop37
	i32.const	$push66=, 8
	i32.add 	$6=, $pop38, $pop66
	i32.const	$push11=, 4
	i32.add 	$3=, $0, $pop11
	i32.const	$push28=, 56
	i32.add 	$4=, $9, $pop28
.LBB19_4:
	loop    	
	i64.const	$push90=, 0
	i64.store	0($6), $pop90
	i64.const	$push89=, 0
	i64.store	16($9), $pop89
	i32.const	$push88=, 8
	i32.add 	$push87=, $0, $pop88
	tee_local	$push86=, $2=, $pop87
	i32.load	$push8=, 0($pop86)
	i32.sub 	$push9=, $pop8, $8
	i32.const	$push85=, 7
	i32.gt_u	$push10=, $pop9, $pop85
	i32.const	$push84=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop10, $pop84
	i32.const	$push39=, 16
	i32.add 	$push40=, $9, $pop39
	i32.load	$push12=, 0($3)
	i32.const	$push83=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop40, $pop12, $pop83
	i32.load	$push13=, 0($3)
	i32.const	$push82=, 8
	i32.add 	$push81=, $pop13, $pop82
	tee_local	$push80=, $8=, $pop81
	i32.store	0($3), $pop80
	i32.load	$push14=, 0($2)
	i32.sub 	$push15=, $pop14, $8
	i32.const	$push79=, 7
	i32.gt_u	$push16=, $pop15, $pop79
	i32.const	$push78=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop16, $pop78
	i32.load	$push17=, 0($3)
	i32.const	$push77=, 8
	i32.call	$drop=, memcpy@FUNCTION, $6, $pop17, $pop77
	i32.load	$push18=, 0($3)
	i32.const	$push76=, 8
	i32.add 	$push75=, $pop18, $pop76
	tee_local	$push74=, $8=, $pop75
	i32.store	0($3), $pop74
	i32.load	$push19=, 0($2)
	i32.sub 	$push20=, $pop19, $8
	i32.const	$push73=, 7
	i32.gt_u	$push21=, $pop20, $pop73
	i32.const	$push72=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop21, $pop72
	i32.const	$push41=, 8
	i32.add 	$push42=, $9, $pop41
	i32.load	$push22=, 0($3)
	i32.const	$push71=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop42, $pop22, $pop71
	i32.load	$push23=, 0($3)
	i32.const	$push70=, 8
	i32.add 	$push24=, $pop23, $pop70
	i32.store	0($3), $pop24
	i32.const	$push43=, 40
	i32.add 	$push44=, $9, $pop43
	i32.const	$push69=, 8
	i32.add 	$push25=, $pop44, $pop69
	i64.load	$push26=, 0($6)
	i64.store	0($pop25), $pop26
	i64.load	$push27=, 16($9)
	i64.store	40($9), $pop27
	i64.load	$push29=, 8($9)
	i64.store	0($4), $pop29
	i32.const	$push45=, 32
	i32.add 	$push46=, $9, $pop45
	i32.const	$push47=, 40
	i32.add 	$push48=, $9, $pop47
	call    	_ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueEOS6_@FUNCTION, $pop46, $1, $pop48
	i32.eqz 	$push92=, $7
	br_if   	1, $pop92
	i32.const	$push68=, -1
	i32.add 	$7=, $7, $pop68
	i32.load	$8=, 0($3)
	br      	0
.LBB19_6:
	end_loop
	end_block
	i32.const	$push36=, 0
	i32.const	$push34=, 64
	i32.add 	$push35=, $9, $pop34
	i32.store	__stack_pointer($pop36), $pop35
	copy_local	$push93=, $0
	.endfunc
.Lfunc_end19:
	.size	_ZN5eosiorsINS_10datastreamIPKcEENS_15extended_symbolExEERT_S7_RN5boost9container8flat_mapIT0_T1_NSt3__14lessISB_EENS9_13new_allocatorINSD_4pairISB_SC_EEEEEE, .Lfunc_end19-_ZN5eosiorsINS_10datastreamIPKcEENS_15extended_symbolExEERT_S7_RN5boost9container8flat_mapIT0_T1_NSt3__14lessISB_EENS9_13new_allocatorINSD_4pairISB_SC_EEEEEE

	.section	.text._ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueEOS6_,"axG",@progbits,_ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueEOS6_,comdat
	.hidden	_ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueEOS6_
	.weak	_ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueEOS6_
	.type	_ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueEOS6_,@function
_ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueEOS6_:
	.param  	i32, i32, i32
	.local  	i32, i32, i64, i32, i32, i32, i64, i32, i32
	i32.const	$push64=, 0
	i32.const	$push61=, 0
	i32.load	$push62=, __stack_pointer($pop61)
	i32.const	$push63=, 16
	i32.sub 	$push80=, $pop62, $pop63
	tee_local	$push79=, $11=, $pop80
	i32.store	__stack_pointer($pop64), $pop79
	i32.const	$push0=, 0
	i32.store8	4($0), $pop0
	i32.const	$push78=, 0
	i32.store	0($0), $pop78
	i64.load	$5=, 0($2)
	i32.load	$push77=, 0($1)
	tee_local	$push76=, $3=, $pop77
	copy_local	$6=, $pop76
	block   	
	i32.load	$push75=, 4($1)
	tee_local	$push74=, $4=, $pop75
	i32.const	$push73=, 24
	i32.mul 	$push1=, $pop74, $pop73
	i32.const	$push72=, 24
	i32.div_s	$push60=, $pop1, $pop72
	copy_local	$push71=, $pop60
	tee_local	$push70=, $7=, $pop71
	i32.eqz 	$push120=, $pop70
	br_if   	0, $pop120
.LBB20_1:
	loop    	
	block   	
	i32.const	$push90=, 1
	i32.shr_u	$push89=, $7, $pop90
	tee_local	$push88=, $10=, $pop89
	i32.const	$push87=, 24
	i32.mul 	$push2=, $pop88, $pop87
	i32.add 	$push86=, $6, $pop2
	tee_local	$push85=, $8=, $pop86
	i64.load	$push3=, 0($pop85)
	i64.ge_u	$push4=, $pop3, $5
	br_if   	0, $pop4
	i32.const	$push82=, 24
	i32.add 	$6=, $8, $pop82
	i32.const	$push81=, -1
	i32.add 	$push5=, $7, $pop81
	i32.sub 	$10=, $pop5, $10
.LBB20_3:
	end_block
	copy_local	$push84=, $10
	tee_local	$push83=, $7=, $pop84
	br_if   	0, $pop83
.LBB20_4:
	end_loop
	end_block
	block   	
	block   	
	block   	
	block   	
	i32.const	$push6=, 24
	i32.mul 	$push7=, $4, $pop6
	i32.add 	$push94=, $3, $pop7
	tee_local	$push93=, $10=, $pop94
	i32.ne  	$push92=, $6, $pop93
	tee_local	$push91=, $7=, $pop92
	i32.eqz 	$push121=, $pop91
	br_if   	0, $pop121
	i32.const	$push8=, 4
	i32.add 	$push9=, $0, $pop8
	i64.load	$push96=, 0($6)
	tee_local	$push95=, $9=, $pop96
	i64.lt_u	$push10=, $5, $pop95
	i32.store8	0($pop9), $pop10
	i64.lt_u	$push11=, $5, $9
	br_if   	1, $pop11
	br      	2
.LBB20_6:
	end_block
	i32.const	$push12=, 4
	i32.add 	$push13=, $0, $pop12
	i32.const	$push14=, 1
	i32.store8	0($pop13), $pop14
.LBB20_7:
	end_block
	i32.store	8($11), $6
	block   	
	i32.load	$push15=, 8($1)
	i32.ne  	$push16=, $pop15, $4
	br_if   	0, $pop16
	i32.const	$push68=, 8
	i32.add 	$push69=, $11, $pop68
	i32.const	$push59=, 1
	call    	_ZN5boost9container6vectorINS0_3dtl4pairIN5eosio15extended_symbolExEENS0_13new_allocatorIS6_EEvE37priv_forward_range_insert_no_capacityINS2_17insert_move_proxyIS8_PS6_EEEENS0_12vec_iteratorISC_Lb0EEERKSC_jT_NS_11move_detail17integral_constantIjLj1EEE@FUNCTION, $11, $1, $pop69, $pop59, $2
	i32.load	$6=, 0($11)
	br      	2
.LBB20_9:
	end_block
	i32.sub 	$push17=, $6, $3
	i32.const	$push97=, 24
	i32.div_s	$8=, $pop17, $pop97
	block   	
	block   	
	i32.eqz 	$push122=, $7
	br_if   	0, $pop122
	i32.const	$push106=, 8
	i32.add 	$push18=, $10, $pop106
	i32.const	$push105=, -16
	i32.add 	$push19=, $10, $pop105
	i64.load	$push20=, 0($pop19)
	i64.store	0($pop18), $pop20
	i32.const	$push104=, -24
	i32.add 	$push103=, $10, $pop104
	tee_local	$push102=, $7=, $pop103
	i64.load	$push21=, 0($pop102)
	i64.store	0($10), $pop21
	i32.const	$push101=, 24
	i32.mul 	$push22=, $4, $pop101
	i32.add 	$push23=, $3, $pop22
	i32.const	$push100=, -8
	i32.add 	$push24=, $10, $pop100
	i64.load	$push25=, 0($pop24)
	i64.store	16($pop23), $pop25
	i32.const	$push26=, 4
	i32.add 	$push99=, $1, $pop26
	tee_local	$push98=, $10=, $pop99
	i32.load	$push27=, 0($10)
	i32.const	$push28=, 1
	i32.add 	$push29=, $pop27, $pop28
	i32.store	0($pop98), $pop29
	block   	
	i32.eq  	$push30=, $7, $6
	br_if   	0, $pop30
.LBB20_12:
	loop    	
	i32.const	$push113=, 8
	i32.add 	$push31=, $7, $pop113
	i32.const	$push112=, -16
	i32.add 	$push32=, $7, $pop112
	i64.load	$push33=, 0($pop32)
	i64.store	0($pop31), $pop33
	i32.const	$push111=, -24
	i32.add 	$push110=, $7, $pop111
	tee_local	$push109=, $10=, $pop110
	i64.load	$push34=, 0($pop109)
	i64.store	0($7), $pop34
	i32.const	$push108=, 16
	i32.add 	$push35=, $7, $pop108
	i32.const	$push107=, -8
	i32.add 	$push36=, $7, $pop107
	i64.load	$push37=, 0($pop36)
	i64.store	0($pop35), $pop37
	copy_local	$7=, $10
	i32.ne  	$push38=, $6, $10
	br_if   	0, $pop38
.LBB20_13:
	end_loop
	end_block
	i64.load	$push39=, 0($2)
	i64.store	0($6), $pop39
	i32.const	$push115=, 8
	i32.add 	$push40=, $6, $pop115
	i32.const	$push114=, 8
	i32.add 	$push41=, $2, $pop114
	i64.load	$push42=, 0($pop41)
	i64.store	0($pop40), $pop42
	i64.load	$push43=, 16($2)
	i64.store	16($6), $pop43
	br      	1
.LBB20_14:
	end_block
	i64.load	$push44=, 0($2)
	i64.store	0($6), $pop44
	i32.const	$push45=, 8
	i32.add 	$push46=, $6, $pop45
	i32.const	$push119=, 8
	i32.add 	$push47=, $2, $pop119
	i64.load	$push48=, 0($pop47)
	i64.store	0($pop46), $pop48
	i32.const	$push118=, 24
	i32.mul 	$push49=, $4, $pop118
	i32.add 	$push50=, $3, $pop49
	i64.load	$push51=, 16($2)
	i64.store	16($pop50), $pop51
	i32.const	$push52=, 4
	i32.add 	$push117=, $1, $pop52
	tee_local	$push116=, $7=, $pop117
	i32.load	$push53=, 0($7)
	i32.const	$push54=, 1
	i32.add 	$push55=, $pop53, $pop54
	i32.store	0($pop116), $pop55
.LBB20_15:
	end_block
	i32.load	$push58=, 0($1)
	i32.const	$push56=, 24
	i32.mul 	$push57=, $8, $pop56
	i32.add 	$6=, $pop58, $pop57
.LBB20_16:
	end_block
	i32.store	0($11), $6
.LBB20_17:
	end_block
	i32.store	0($0), $6
	i32.const	$push67=, 0
	i32.const	$push65=, 16
	i32.add 	$push66=, $11, $pop65
	i32.store	__stack_pointer($pop67), $pop66
	.endfunc
.Lfunc_end20:
	.size	_ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueEOS6_, .Lfunc_end20-_ZN5boost9container3dtl9flat_treeINS1_4pairIN5eosio15extended_symbolExEENS1_9select1stIS5_EENSt3__14lessIS5_EENS0_13new_allocatorIS6_EEE13insert_uniqueEOS6_

	.section	.text._ZN5boost9container6vectorINS0_3dtl4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS0_13new_allocatorIS8_EEvE40priv_forward_range_insert_new_allocationINS2_17insert_move_proxyISA_PS8_EEEEvSE_jSE_jT_,"axG",@progbits,_ZN5boost9container6vectorINS0_3dtl4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS0_13new_allocatorIS8_EEvE40priv_forward_range_insert_new_allocationINS2_17insert_move_proxyISA_PS8_EEEEvSE_jSE_jT_,comdat
	.hidden	_ZN5boost9container6vectorINS0_3dtl4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS0_13new_allocatorIS8_EEvE40priv_forward_range_insert_new_allocationINS2_17insert_move_proxyISA_PS8_EEEEvSE_jSE_jT_
	.weak	_ZN5boost9container6vectorINS0_3dtl4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS0_13new_allocatorIS8_EEvE40priv_forward_range_insert_new_allocationINS2_17insert_move_proxyISA_PS8_EEEEvSE_jSE_jT_
	.type	_ZN5boost9container6vectorINS0_3dtl4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS0_13new_allocatorIS8_EEvE40priv_forward_range_insert_new_allocationINS2_17insert_move_proxyISA_PS8_EEEEvSE_jSE_jT_,@function
_ZN5boost9container6vectorINS0_3dtl4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS0_13new_allocatorIS8_EEvE40priv_forward_range_insert_new_allocationINS2_17insert_move_proxyISA_PS8_EEEEvSE_jSE_jT_:
	.param  	i32, i32, i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i32, i32, i32
	copy_local	$11=, $1
	block   	
	i32.load	$push69=, 0($0)
	tee_local	$push68=, $10=, $pop69
	i32.eq  	$push1=, $pop68, $3
	br_if   	0, $pop1
	copy_local	$11=, $1
	i32.eqz 	$push0=, $10
	br_if   	0, $pop0
	copy_local	$6=, $10
	copy_local	$11=, $1
.LBB21_3:
	loop    	
	i64.load	$push2=, 0($6)
	i64.store	0($11), $pop2
	i32.const	$push100=, 24
	i32.add 	$push3=, $11, $pop100
	i32.const	$push99=, 24
	i32.add 	$push4=, $6, $pop99
	i64.load	$push5=, 0($pop4)
	i64.store	0($pop3), $pop5
	i32.const	$push98=, 16
	i32.add 	$push6=, $11, $pop98
	i32.const	$push97=, 16
	i32.add 	$push7=, $6, $pop97
	i64.load	$push8=, 0($pop7)
	i64.store	0($pop6), $pop8
	i32.const	$push96=, 8
	i32.add 	$push9=, $11, $pop96
	i32.const	$push95=, 8
	i32.add 	$push10=, $6, $pop95
	i64.load	$push11=, 0($pop10)
	i64.store	0($pop9), $pop11
	i32.const	$push94=, 32
	i32.add 	$push93=, $11, $pop94
	tee_local	$push92=, $12=, $pop93
	i32.const	$push91=, 0
	i32.store	0($pop92), $pop91
	i32.const	$push90=, 36
	i32.add 	$push89=, $11, $pop90
	tee_local	$push88=, $9=, $pop89
	i32.const	$push87=, 0
	i32.store	0($pop88), $pop87
	i32.const	$push86=, 40
	i32.add 	$push85=, $11, $pop86
	tee_local	$push84=, $7=, $pop85
	i32.const	$push83=, 0
	i32.store	0($pop84), $pop83
	i32.const	$push82=, 32
	i32.add 	$push81=, $6, $pop82
	tee_local	$push80=, $8=, $pop81
	i32.load	$push12=, 0($pop80)
	i32.store	0($12), $pop12
	i32.const	$push79=, 36
	i32.add 	$push13=, $6, $pop79
	i32.load	$push14=, 0($pop13)
	i32.store	0($9), $pop14
	i32.const	$push78=, 40
	i32.add 	$push77=, $6, $pop78
	tee_local	$push76=, $12=, $pop77
	i32.load	$push15=, 0($pop76)
	i32.store	0($7), $pop15
	i32.const	$push75=, 0
	i32.store	0($12), $pop75
	i64.const	$push74=, 0
	i64.store	0($8):p2align=2, $pop74
	i32.const	$push73=, 48
	i32.add 	$11=, $11, $pop73
	i32.const	$push72=, 48
	i32.add 	$push71=, $6, $pop72
	tee_local	$push70=, $6=, $pop71
	i32.ne  	$push16=, $pop70, $3
	br_if   	0, $pop16
.LBB21_4:
	end_loop
	end_block
	i64.load	$push17=, 0($5)
	i64.store	0($11), $pop17
	i32.const	$push18=, 24
	i32.add 	$push19=, $11, $pop18
	i32.const	$push119=, 24
	i32.add 	$push20=, $5, $pop119
	i64.load	$push21=, 0($pop20)
	i64.store	0($pop19), $pop21
	i32.const	$push22=, 16
	i32.add 	$push23=, $11, $pop22
	i32.const	$push118=, 16
	i32.add 	$push24=, $5, $pop118
	i64.load	$push25=, 0($pop24)
	i64.store	0($pop23), $pop25
	i64.load	$push26=, 8($5)
	i64.store	8($11), $pop26
	i32.const	$push27=, 32
	i32.add 	$push117=, $11, $pop27
	tee_local	$push116=, $6=, $pop117
	i32.const	$push28=, 0
	i32.store	0($pop116), $pop28
	i32.const	$push29=, 36
	i32.add 	$push115=, $11, $pop29
	tee_local	$push114=, $12=, $pop115
	i32.const	$push113=, 0
	i32.store	0($pop114), $pop113
	i32.const	$push30=, 40
	i32.add 	$push112=, $11, $pop30
	tee_local	$push111=, $9=, $pop112
	i32.const	$push110=, 0
	i32.store	0($pop111), $pop110
	i32.const	$push109=, 32
	i32.add 	$push108=, $5, $pop109
	tee_local	$push107=, $7=, $pop108
	i32.load	$push31=, 0($pop107)
	i32.store	0($6), $pop31
	i32.const	$push106=, 36
	i32.add 	$push32=, $5, $pop106
	i32.load	$push33=, 0($pop32)
	i32.store	0($12), $pop33
	i32.const	$push105=, 40
	i32.add 	$push104=, $5, $pop105
	tee_local	$push103=, $6=, $pop104
	i32.load	$push34=, 0($pop103)
	i32.store	0($9), $pop34
	i32.const	$push102=, 0
	i32.store	0($6), $pop102
	i64.const	$push35=, 0
	i64.store	0($7):p2align=2, $pop35
	i32.const	$push101=, 48
	i32.mul 	$push36=, $4, $pop101
	i32.add 	$12=, $11, $pop36
	block   	
	i32.eqz 	$push174=, $10
	br_if   	0, $pop174
	block   	
	i32.const	$push37=, 4
	i32.add 	$push38=, $0, $pop37
	i32.load	$push124=, 0($pop38)
	tee_local	$push123=, $9=, $pop124
	i32.const	$push122=, 48
	i32.mul 	$push39=, $pop123, $pop122
	i32.add 	$push121=, $10, $pop39
	tee_local	$push120=, $8=, $pop121
	i32.eq  	$push40=, $pop120, $3
	br_if   	0, $pop40
.LBB21_7:
	loop    	
	i64.load	$push41=, 0($3)
	i64.store	0($12), $pop41
	i32.const	$push155=, 24
	i32.add 	$push42=, $12, $pop155
	i32.const	$push154=, 24
	i32.add 	$push43=, $3, $pop154
	i64.load	$push44=, 0($pop43)
	i64.store	0($pop42), $pop44
	i32.const	$push153=, 16
	i32.add 	$push45=, $12, $pop153
	i32.const	$push152=, 16
	i32.add 	$push46=, $3, $pop152
	i64.load	$push47=, 0($pop46)
	i64.store	0($pop45), $pop47
	i32.const	$push151=, 8
	i32.add 	$push48=, $12, $pop151
	i32.const	$push150=, 8
	i32.add 	$push49=, $3, $pop150
	i64.load	$push50=, 0($pop49)
	i64.store	0($pop48), $pop50
	i32.const	$push149=, 32
	i32.add 	$push148=, $12, $pop149
	tee_local	$push147=, $11=, $pop148
	i32.const	$push146=, 0
	i32.store	0($pop147), $pop146
	i32.const	$push145=, 36
	i32.add 	$push144=, $12, $pop145
	tee_local	$push143=, $6=, $pop144
	i32.const	$push142=, 0
	i32.store	0($pop143), $pop142
	i32.const	$push141=, 40
	i32.add 	$push140=, $12, $pop141
	tee_local	$push139=, $9=, $pop140
	i32.const	$push138=, 0
	i32.store	0($pop139), $pop138
	i32.const	$push137=, 32
	i32.add 	$push136=, $3, $pop137
	tee_local	$push135=, $7=, $pop136
	i32.load	$push51=, 0($pop135)
	i32.store	0($11), $pop51
	i32.const	$push134=, 36
	i32.add 	$push52=, $3, $pop134
	i32.load	$push53=, 0($pop52)
	i32.store	0($6), $pop53
	i32.const	$push133=, 40
	i32.add 	$push132=, $3, $pop133
	tee_local	$push131=, $11=, $pop132
	i32.load	$push54=, 0($pop131)
	i32.store	0($9), $pop54
	i32.const	$push130=, 0
	i32.store	0($11), $pop130
	i64.const	$push129=, 0
	i64.store	0($7):p2align=2, $pop129
	i32.const	$push128=, 48
	i32.add 	$12=, $12, $pop128
	i32.const	$push127=, 48
	i32.add 	$push126=, $3, $pop127
	tee_local	$push125=, $3=, $pop126
	i32.ne  	$push55=, $pop125, $8
	br_if   	0, $pop55
	end_loop
	i32.const	$push56=, 4
	i32.add 	$push57=, $0, $pop56
	i32.load	$9=, 0($pop57)
.LBB21_9:
	end_block
	block   	
	i32.eqz 	$push175=, $9
	br_if   	0, $pop175
.LBB21_11:
	loop    	
	i32.const	$push161=, -1
	i32.add 	$9=, $9, $pop161
	block   	
	i32.const	$push160=, 32
	i32.add 	$push159=, $10, $pop160
	tee_local	$push158=, $7=, $pop159
	i32.load	$push157=, 0($pop158)
	tee_local	$push156=, $3=, $pop157
	i32.eqz 	$push176=, $pop156
	br_if   	0, $pop176
	block   	
	block   	
	i32.const	$push166=, 36
	i32.add 	$push165=, $10, $pop166
	tee_local	$push164=, $8=, $pop165
	i32.load	$push163=, 0($pop164)
	tee_local	$push162=, $11=, $pop163
	i32.eq  	$push58=, $pop162, $3
	br_if   	0, $pop58
.LBB21_13:
	loop    	
	i32.const	$push170=, -24
	i32.add 	$push169=, $11, $pop170
	tee_local	$push168=, $11=, $pop169
	i32.load	$6=, 0($pop168)
	i32.const	$push167=, 0
	i32.store	0($11), $pop167
	block   	
	i32.eqz 	$push177=, $6
	br_if   	0, $pop177
	block   	
	i32.const	$push171=, 16
	i32.add 	$push59=, $6, $pop171
	i32.load	$push60=, 0($pop59)
	i32.eqz 	$push178=, $pop60
	br_if   	0, $pop178
	i32.load	$push61=, 8($6)
	call    	_ZdlPv@FUNCTION, $pop61
.LBB21_16:
	end_block
	call    	_ZdlPv@FUNCTION, $6
.LBB21_17:
	end_block
	i32.ne  	$push62=, $3, $11
	br_if   	0, $pop62
	end_loop
	i32.load	$11=, 0($7)
	br      	1
.LBB21_19:
	end_block
	copy_local	$11=, $3
.LBB21_20:
	end_block
	i32.store	0($8), $3
	call    	_ZdlPv@FUNCTION, $11
.LBB21_21:
	end_block
	i32.const	$push172=, 48
	i32.add 	$10=, $10, $pop172
	br_if   	0, $9
.LBB21_22:
	end_loop
	end_block
	i32.load	$push63=, 0($0)
	call    	_ZdlPv@FUNCTION, $pop63
.LBB21_23:
	end_block
	i32.store	0($0), $1
	i32.store	8($0), $2
	i32.const	$push64=, 4
	i32.add 	$push65=, $0, $pop64
	i32.sub 	$push66=, $12, $1
	i32.const	$push173=, 48
	i32.div_s	$push67=, $pop66, $pop173
	i32.store	0($pop65), $pop67
	.endfunc
.Lfunc_end21:
	.size	_ZN5boost9container6vectorINS0_3dtl4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS0_13new_allocatorIS8_EEvE40priv_forward_range_insert_new_allocationINS2_17insert_move_proxyISA_PS8_EEEEvSE_jSE_jT_, .Lfunc_end21-_ZN5boost9container6vectorINS0_3dtl4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS0_13new_allocatorIS8_EEvE40priv_forward_range_insert_new_allocationINS2_17insert_move_proxyISA_PS8_EEEEvSE_jSE_jT_

	.section	.text._ZN5boost9container6vectorINS0_3dtl4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS0_13new_allocatorIS8_EEvE40priv_forward_range_insert_expand_forwardINS2_17insert_move_proxyISA_PS8_EEEEvSE_jT_,"axG",@progbits,_ZN5boost9container6vectorINS0_3dtl4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS0_13new_allocatorIS8_EEvE40priv_forward_range_insert_expand_forwardINS2_17insert_move_proxyISA_PS8_EEEEvSE_jT_,comdat
	.hidden	_ZN5boost9container6vectorINS0_3dtl4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS0_13new_allocatorIS8_EEvE40priv_forward_range_insert_expand_forwardINS2_17insert_move_proxyISA_PS8_EEEEvSE_jT_
	.weak	_ZN5boost9container6vectorINS0_3dtl4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS0_13new_allocatorIS8_EEvE40priv_forward_range_insert_expand_forwardINS2_17insert_move_proxyISA_PS8_EEEEvSE_jT_
	.type	_ZN5boost9container6vectorINS0_3dtl4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS0_13new_allocatorIS8_EEvE40priv_forward_range_insert_expand_forwardINS2_17insert_move_proxyISA_PS8_EEEEvSE_jT_,@function
_ZN5boost9container6vectorINS0_3dtl4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS0_13new_allocatorIS8_EEvE40priv_forward_range_insert_expand_forwardINS2_17insert_move_proxyISA_PS8_EEEEvSE_jT_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	block   	
	i32.eqz 	$push408=, $2
	br_if   	0, $pop408
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
	i32.load	$push192=, 0($0)
	tee_local	$push191=, $4=, $pop192
	i32.load	$push190=, 4($0)
	tee_local	$push189=, $6=, $pop190
	i32.const	$push188=, 48
	i32.mul 	$push0=, $pop189, $pop188
	i32.add 	$push187=, $pop191, $pop0
	tee_local	$push186=, $11=, $pop187
	i32.sub 	$push185=, $pop186, $1
	tee_local	$push184=, $13=, $pop185
	i32.eqz 	$push409=, $pop184
	br_if   	0, $pop409
	i32.const	$push193=, 48
	i32.div_s	$push1=, $13, $pop193
	i32.ge_u	$push2=, $pop1, $2
	br_if   	1, $pop2
	block   	
	i32.eq  	$push83=, $11, $1
	br_if   	0, $pop83
	i32.const	$push197=, 0
	i32.sub 	$push85=, $pop197, $4
	i32.const	$push196=, 48
	i32.mul 	$push84=, $6, $pop196
	i32.sub 	$9=, $pop85, $pop84
	i32.const	$push195=, 48
	i32.mul 	$10=, $2, $pop195
	i32.const	$push194=, 40
	i32.add 	$13=, $1, $pop194
.LBB22_5:
	loop    	
	i32.add 	$push231=, $13, $10
	tee_local	$push230=, $8=, $pop231
	i32.const	$push229=, -40
	i32.add 	$push86=, $pop230, $pop229
	i32.const	$push228=, -40
	i32.add 	$push87=, $13, $pop228
	i64.load	$push88=, 0($pop87)
	i64.store	0($pop86), $pop88
	i32.const	$push227=, -28
	i32.add 	$push89=, $8, $pop227
	i32.const	$push226=, -28
	i32.add 	$push90=, $13, $pop226
	i32.load	$push91=, 0($pop90)
	i32.store	0($pop89), $pop91
	i32.const	$push225=, -32
	i32.add 	$push92=, $8, $pop225
	i32.const	$push224=, -32
	i32.add 	$push93=, $13, $pop224
	i32.load	$push94=, 0($pop93)
	i32.store	0($pop92), $pop94
	i32.const	$push223=, -16
	i32.add 	$push95=, $8, $pop223
	i32.const	$push222=, -16
	i32.add 	$push96=, $13, $pop222
	i64.load	$push97=, 0($pop96)
	i64.store	0($pop95), $pop97
	i32.const	$push221=, -24
	i32.add 	$push98=, $8, $pop221
	i32.const	$push220=, -24
	i32.add 	$push99=, $13, $pop220
	i64.load	$push100=, 0($pop99)
	i64.store	0($pop98), $pop100
	i32.const	$push219=, -8
	i32.add 	$push218=, $8, $pop219
	tee_local	$push217=, $7=, $pop218
	i32.const	$push216=, 0
	i32.store	0($pop217), $pop216
	i32.const	$push215=, -4
	i32.add 	$push214=, $8, $pop215
	tee_local	$push213=, $12=, $pop214
	i32.const	$push212=, 0
	i32.store	0($pop213), $pop212
	i32.const	$push211=, 0
	i32.store	0($8), $pop211
	i32.const	$push210=, -8
	i32.add 	$push209=, $13, $pop210
	tee_local	$push208=, $14=, $pop209
	i32.load	$push101=, 0($pop208)
	i32.store	0($7), $pop101
	i32.const	$push207=, -4
	i32.add 	$push206=, $13, $pop207
	tee_local	$push205=, $7=, $pop206
	i32.load	$push102=, 0($pop205)
	i32.store	0($12), $pop102
	i32.load	$push103=, 0($13)
	i32.store	0($8), $pop103
	i32.const	$push204=, 0
	i32.store	0($14), $pop204
	i32.const	$push203=, 0
	i32.store	0($7), $pop203
	i32.const	$push202=, 0
	i32.store	0($13), $pop202
	i32.const	$push201=, 48
	i32.add 	$push200=, $13, $pop201
	tee_local	$push199=, $13=, $pop200
	i32.add 	$push104=, $pop199, $9
	i32.const	$push198=, 40
	i32.ne  	$push105=, $pop104, $pop198
	br_if   	0, $pop105
.LBB22_6:
	end_loop
	end_block
	i64.load	$push106=, 0($3)
	i64.store	0($1), $pop106
	i32.const	$push107=, 24
	i32.add 	$push108=, $1, $pop107
	i32.const	$push235=, 24
	i32.add 	$push109=, $3, $pop235
	i64.load	$push110=, 0($pop109)
	i64.store	0($pop108), $pop110
	i32.const	$push111=, 16
	i32.add 	$push112=, $1, $pop111
	i32.const	$push234=, 16
	i32.add 	$push113=, $3, $pop234
	i64.load	$push114=, 0($pop113)
	i64.store	0($pop112), $pop114
	i64.load	$push115=, 8($3)
	i64.store	8($1), $pop115
	i32.const	$push116=, 8
	i32.add 	$12=, $3, $pop116
	i32.const	$push117=, 32
	i32.add 	$push118=, $1, $pop117
	i32.load	$push233=, 0($pop118)
	tee_local	$push232=, $7=, $pop233
	i32.eqz 	$push410=, $pop232
	br_if   	2, $pop410
	i32.const	$push240=, 36
	i32.add 	$push239=, $1, $pop240
	tee_local	$push238=, $9=, $pop239
	i32.load	$push237=, 0($pop238)
	tee_local	$push236=, $13=, $pop237
	i32.eq  	$push119=, $pop236, $7
	br_if   	4, $pop119
.LBB22_9:
	loop    	
	i32.const	$push244=, -24
	i32.add 	$push243=, $13, $pop244
	tee_local	$push242=, $13=, $pop243
	i32.load	$8=, 0($pop242)
	i32.const	$push241=, 0
	i32.store	0($13), $pop241
	block   	
	i32.eqz 	$push411=, $8
	br_if   	0, $pop411
	block   	
	i32.const	$push245=, 16
	i32.add 	$push120=, $8, $pop245
	i32.load	$push121=, 0($pop120)
	i32.eqz 	$push412=, $pop121
	br_if   	0, $pop412
	i32.load	$push122=, 8($8)
	call    	_ZdlPv@FUNCTION, $pop122
.LBB22_12:
	end_block
	call    	_ZdlPv@FUNCTION, $8
.LBB22_13:
	end_block
	i32.ne  	$push123=, $7, $13
	br_if   	0, $pop123
	end_loop
	i32.const	$push124=, 32
	i32.add 	$push125=, $1, $pop124
	i32.load	$13=, 0($pop125)
	br      	5
.LBB22_15:
	end_block
	i64.load	$push162=, 0($3)
	i64.store	0($11), $pop162
	i32.const	$push163=, 24
	i32.add 	$push164=, $11, $pop163
	i32.const	$push265=, 24
	i32.add 	$push165=, $3, $pop265
	i64.load	$push166=, 0($pop165)
	i64.store	0($pop164), $pop166
	i32.const	$push167=, 16
	i32.add 	$push168=, $11, $pop167
	i32.const	$push264=, 16
	i32.add 	$push169=, $3, $pop264
	i64.load	$push170=, 0($pop169)
	i64.store	0($pop168), $pop170
	i64.load	$push171=, 8($3)
	i64.store	8($11), $pop171
	i32.const	$push172=, 32
	i32.add 	$push263=, $11, $pop172
	tee_local	$push262=, $13=, $pop263
	i32.const	$push173=, 0
	i32.store	0($pop262), $pop173
	i32.const	$push174=, 36
	i32.add 	$push261=, $11, $pop174
	tee_local	$push260=, $8=, $pop261
	i32.const	$push259=, 0
	i32.store	0($pop260), $pop259
	i32.const	$push175=, 40
	i32.add 	$push258=, $11, $pop175
	tee_local	$push257=, $7=, $pop258
	i32.const	$push256=, 0
	i32.store	0($pop257), $pop256
	i32.const	$push255=, 32
	i32.add 	$push254=, $3, $pop255
	tee_local	$push253=, $11=, $pop254
	i32.load	$push176=, 0($pop253)
	i32.store	0($13), $pop176
	i32.const	$push252=, 36
	i32.add 	$push177=, $3, $pop252
	i32.load	$push178=, 0($pop177)
	i32.store	0($8), $pop178
	i32.const	$push251=, 40
	i32.add 	$push250=, $3, $pop251
	tee_local	$push249=, $13=, $pop250
	i32.load	$push179=, 0($pop249)
	i32.store	0($7), $pop179
	i32.const	$push248=, 0
	i32.store	0($13), $pop248
	i64.const	$push180=, 0
	i64.store	0($11):p2align=2, $pop180
	i32.const	$push181=, 4
	i32.add 	$push247=, $0, $pop181
	tee_local	$push246=, $13=, $pop247
	i32.load	$push182=, 0($13)
	i32.add 	$push183=, $pop182, $2
	i32.store	0($pop246), $pop183
	return
.LBB22_16:
	end_block
	i32.const	$push273=, 0
	i32.sub 	$push3=, $pop273, $2
	i32.const	$push272=, 48
	i32.mul 	$push271=, $pop3, $pop272
	tee_local	$push270=, $13=, $pop271
	i32.add 	$push4=, $4, $pop270
	i32.const	$push269=, 48
	i32.mul 	$push268=, $6, $pop269
	tee_local	$push267=, $8=, $pop268
	i32.add 	$6=, $pop4, $pop267
	i32.const	$push266=, 48
	i32.mul 	$5=, $2, $pop266
	i32.add 	$4=, $4, $8
	i32.add 	$12=, $11, $13
	i32.const	$7=, 0
.LBB22_17:
	loop    	
	i32.add 	$push312=, $4, $7
	tee_local	$push311=, $13=, $pop312
	i32.add 	$push310=, $6, $7
	tee_local	$push309=, $8=, $pop310
	i64.load	$push5=, 0($pop309)
	i64.store	0($pop311), $pop5
	i32.const	$push308=, 12
	i32.add 	$push6=, $13, $pop308
	i32.const	$push307=, 12
	i32.add 	$push7=, $8, $pop307
	i32.load	$push8=, 0($pop7)
	i32.store	0($pop6), $pop8
	i32.const	$push306=, 8
	i32.add 	$push9=, $13, $pop306
	i32.const	$push305=, 8
	i32.add 	$push10=, $8, $pop305
	i32.load	$push11=, 0($pop10)
	i32.store	0($pop9), $pop11
	i32.const	$push304=, 24
	i32.add 	$push12=, $13, $pop304
	i32.const	$push303=, 24
	i32.add 	$push13=, $8, $pop303
	i64.load	$push14=, 0($pop13)
	i64.store	0($pop12), $pop14
	i32.const	$push302=, 16
	i32.add 	$push15=, $13, $pop302
	i32.const	$push301=, 16
	i32.add 	$push16=, $8, $pop301
	i64.load	$push17=, 0($pop16)
	i64.store	0($pop15), $pop17
	i32.const	$push300=, 32
	i32.add 	$push299=, $13, $pop300
	tee_local	$push298=, $14=, $pop299
	i32.const	$push297=, 0
	i32.store	0($pop298), $pop297
	i32.const	$push296=, 36
	i32.add 	$push295=, $13, $pop296
	tee_local	$push294=, $9=, $pop295
	i32.const	$push293=, 0
	i32.store	0($pop294), $pop293
	i32.const	$push292=, 40
	i32.add 	$push291=, $13, $pop292
	tee_local	$push290=, $13=, $pop291
	i32.const	$push289=, 0
	i32.store	0($pop290), $pop289
	i32.const	$push288=, 32
	i32.add 	$push287=, $8, $pop288
	tee_local	$push286=, $10=, $pop287
	i32.load	$push18=, 0($pop286)
	i32.store	0($14), $pop18
	i32.const	$push285=, 36
	i32.add 	$push284=, $8, $pop285
	tee_local	$push283=, $14=, $pop284
	i32.load	$push19=, 0($pop283)
	i32.store	0($9), $pop19
	i32.const	$push282=, 40
	i32.add 	$push281=, $8, $pop282
	tee_local	$push280=, $8=, $pop281
	i32.load	$push20=, 0($pop280)
	i32.store	0($13), $pop20
	i32.const	$push279=, 0
	i32.store	0($8), $pop279
	i32.const	$push278=, 0
	i32.store	0($10), $pop278
	i32.const	$push277=, 0
	i32.store	0($14), $pop277
	i32.const	$push276=, 48
	i32.add 	$push275=, $7, $pop276
	tee_local	$push274=, $7=, $pop275
	i32.ne  	$push21=, $5, $pop274
	br_if   	0, $pop21
	end_loop
	i32.const	$push22=, 4
	i32.add 	$push314=, $0, $pop22
	tee_local	$push313=, $13=, $pop314
	i32.load	$push23=, 0($13)
	i32.add 	$push24=, $pop23, $2
	i32.store	0($pop313), $pop24
	block   	
	i32.eq  	$push25=, $12, $1
	br_if   	0, $pop25
.LBB22_20:
	loop    	
	i32.const	$push332=, -48
	i32.add 	$push331=, $11, $pop332
	tee_local	$push330=, $5=, $pop331
	i32.const	$push329=, -48
	i32.add 	$push328=, $12, $pop329
	tee_local	$push327=, $10=, $pop328
	i64.load	$push26=, 0($pop327)
	i64.store	0($pop330), $pop26
	i32.const	$push326=, -24
	i32.add 	$push27=, $11, $pop326
	i32.const	$push325=, -24
	i32.add 	$push28=, $12, $pop325
	i64.load	$push29=, 0($pop28)
	i64.store	0($pop27), $pop29
	i32.const	$push324=, -32
	i32.add 	$push30=, $11, $pop324
	i32.const	$push323=, -32
	i32.add 	$push31=, $12, $pop323
	i64.load	$push32=, 0($pop31)
	i64.store	0($pop30), $pop32
	i32.const	$push322=, -40
	i32.add 	$push33=, $11, $pop322
	i32.const	$push321=, -40
	i32.add 	$push34=, $12, $pop321
	i64.load	$push35=, 0($pop34)
	i64.store	0($pop33), $pop35
	i32.const	$push320=, -16
	i32.add 	$6=, $12, $pop320
	block   	
	block   	
	block   	
	block   	
	i32.const	$push319=, -16
	i32.add 	$push318=, $11, $pop319
	tee_local	$push317=, $9=, $pop318
	i32.load	$push316=, 0($pop317)
	tee_local	$push315=, $7=, $pop316
	i32.eqz 	$push413=, $pop315
	br_if   	0, $pop413
	i32.const	$push337=, -12
	i32.add 	$push336=, $11, $pop337
	tee_local	$push335=, $14=, $pop336
	i32.load	$push334=, 0($pop335)
	tee_local	$push333=, $13=, $pop334
	i32.eq  	$push36=, $pop333, $7
	br_if   	1, $pop36
.LBB22_22:
	loop    	
	i32.const	$push341=, -24
	i32.add 	$push340=, $13, $pop341
	tee_local	$push339=, $13=, $pop340
	i32.load	$8=, 0($pop339)
	i32.const	$push338=, 0
	i32.store	0($13), $pop338
	block   	
	i32.eqz 	$push414=, $8
	br_if   	0, $pop414
	block   	
	i32.const	$push342=, 16
	i32.add 	$push37=, $8, $pop342
	i32.load	$push38=, 0($pop37)
	i32.eqz 	$push415=, $pop38
	br_if   	0, $pop415
	i32.load	$push39=, 8($8)
	call    	_ZdlPv@FUNCTION, $pop39
.LBB22_25:
	end_block
	call    	_ZdlPv@FUNCTION, $8
.LBB22_26:
	end_block
	i32.ne  	$push40=, $7, $13
	br_if   	0, $pop40
	end_loop
	i32.load	$13=, 0($9)
	br      	2
.LBB22_28:
	end_block
	i32.const	$push344=, -8
	i32.add 	$8=, $11, $pop344
	i32.const	$push343=, -12
	i32.add 	$14=, $11, $pop343
	br      	2
.LBB22_29:
	end_block
	copy_local	$13=, $7
.LBB22_30:
	end_block
	i32.store	0($14), $7
	call    	_ZdlPv@FUNCTION, $13
	i32.const	$push350=, 0
	i32.store	0($14), $pop350
	i32.const	$push349=, -8
	i32.add 	$push348=, $11, $pop349
	tee_local	$push347=, $8=, $pop348
	i32.const	$push346=, 0
	i32.store	0($pop347), $pop346
	i32.const	$push345=, 0
	i32.store	0($9), $pop345
.LBB22_31:
	end_block
	i32.load	$push41=, 0($6)
	i32.store	0($9), $pop41
	i32.const	$push356=, -12
	i32.add 	$push355=, $12, $pop356
	tee_local	$push354=, $13=, $pop355
	i32.load	$push42=, 0($pop354)
	i32.store	0($14), $pop42
	i32.const	$push353=, -8
	i32.add 	$push43=, $12, $pop353
	i32.load	$push44=, 0($pop43)
	i32.store	0($8), $pop44
	i32.const	$push352=, 0
	i32.store	0($6), $pop352
	i64.const	$push351=, 0
	i64.store	0($13):p2align=2, $pop351
	copy_local	$11=, $5
	copy_local	$12=, $10
	i32.ne  	$push45=, $10, $1
	br_if   	0, $pop45
.LBB22_32:
	end_loop
	end_block
	i64.load	$push46=, 0($3)
	i64.store	0($1), $pop46
	i32.const	$push47=, 24
	i32.add 	$push48=, $1, $pop47
	i32.const	$push360=, 24
	i32.add 	$push49=, $3, $pop360
	i64.load	$push50=, 0($pop49)
	i64.store	0($pop48), $pop50
	i32.const	$push51=, 16
	i32.add 	$push52=, $1, $pop51
	i32.const	$push359=, 16
	i32.add 	$push53=, $3, $pop359
	i64.load	$push54=, 0($pop53)
	i64.store	0($pop52), $pop54
	i64.load	$push55=, 8($3)
	i64.store	8($1), $pop55
	i32.const	$push56=, 32
	i32.add 	$push57=, $1, $pop56
	i32.load	$push358=, 0($pop57)
	tee_local	$push357=, $7=, $pop358
	i32.eqz 	$push416=, $pop357
	br_if   	1, $pop416
	i32.const	$push365=, 36
	i32.add 	$push364=, $1, $pop365
	tee_local	$push363=, $11=, $pop364
	i32.load	$push362=, 0($pop363)
	tee_local	$push361=, $13=, $pop362
	i32.eq  	$push58=, $pop361, $7
	br_if   	5, $pop58
.LBB22_35:
	loop    	
	i32.const	$push369=, -24
	i32.add 	$push368=, $13, $pop369
	tee_local	$push367=, $13=, $pop368
	i32.load	$8=, 0($pop367)
	i32.const	$push366=, 0
	i32.store	0($13), $pop366
	block   	
	i32.eqz 	$push417=, $8
	br_if   	0, $pop417
	block   	
	i32.const	$push370=, 16
	i32.add 	$push59=, $8, $pop370
	i32.load	$push60=, 0($pop59)
	i32.eqz 	$push418=, $pop60
	br_if   	0, $pop418
	i32.load	$push61=, 8($8)
	call    	_ZdlPv@FUNCTION, $pop61
.LBB22_38:
	end_block
	call    	_ZdlPv@FUNCTION, $8
.LBB22_39:
	end_block
	i32.ne  	$push62=, $7, $13
	br_if   	0, $pop62
	end_loop
	i32.const	$push63=, 32
	i32.add 	$push64=, $1, $pop63
	i32.load	$13=, 0($pop64)
	br      	6
.LBB22_41:
	end_block
	i32.const	$push132=, 40
	i32.add 	$13=, $1, $pop132
	i32.const	$push133=, 36
	i32.add 	$9=, $1, $pop133
	br      	3
.LBB22_42:
	end_block
	i32.const	$push71=, 40
	i32.add 	$7=, $1, $pop71
	i32.const	$push72=, 36
	i32.add 	$11=, $1, $pop72
	br      	5
.LBB22_43:
	end_block
	copy_local	$13=, $7
.LBB22_44:
	end_block
	i32.const	$push373=, 36
	i32.add 	$push126=, $1, $pop373
	i32.store	0($pop126), $7
	call    	_ZdlPv@FUNCTION, $13
	i32.const	$push127=, 40
	i32.add 	$push372=, $1, $pop127
	tee_local	$push371=, $13=, $pop372
	i32.const	$push128=, 0
	i32.store	0($pop371), $pop128
	i32.const	$push129=, 32
	i32.add 	$push130=, $1, $pop129
	i64.const	$push131=, 0
	i64.store	0($pop130):p2align=2, $pop131
.LBB22_45:
	end_block
	i32.const	$push134=, 32
	i32.add 	$push135=, $1, $pop134
	i32.const	$push399=, 32
	i32.add 	$push398=, $3, $pop399
	tee_local	$push397=, $8=, $pop398
	i32.load	$push136=, 0($pop397)
	i32.store	0($pop135), $pop136
	i32.const	$push137=, 36
	i32.add 	$push396=, $3, $pop137
	tee_local	$push395=, $14=, $pop396
	i32.load	$push138=, 0($pop395)
	i32.store	0($9), $pop138
	i32.const	$push139=, 40
	i32.add 	$push394=, $3, $pop139
	tee_local	$push393=, $7=, $pop394
	i32.load	$push140=, 0($pop393)
	i32.store	0($13), $pop140
	i32.const	$push141=, 0
	i32.store	0($7), $pop141
	i64.const	$push142=, 0
	i64.store	0($8):p2align=2, $pop142
	i64.load	$push143=, 0($3)
	i64.store	0($11), $pop143
	i32.const	$push144=, 48
	i32.mul 	$push145=, $6, $pop144
	i32.add 	$push392=, $4, $pop145
	tee_local	$push391=, $13=, $pop392
	i32.const	$push146=, 24
	i32.add 	$push147=, $pop391, $pop146
	i32.const	$push148=, 16
	i32.add 	$push149=, $12, $pop148
	i64.load	$push150=, 0($pop149)
	i64.store	0($pop147), $pop150
	i32.const	$push390=, 16
	i32.add 	$push151=, $13, $pop390
	i32.const	$push152=, 8
	i32.add 	$push153=, $12, $pop152
	i64.load	$push154=, 0($pop153)
	i64.store	0($pop151), $pop154
	i64.load	$push155=, 0($12)
	i64.store	8($13), $pop155
	i32.const	$push389=, 32
	i32.add 	$push388=, $13, $pop389
	tee_local	$push387=, $11=, $pop388
	i32.const	$push386=, 0
	i32.store	0($pop387), $pop386
	i32.const	$push385=, 36
	i32.add 	$push384=, $13, $pop385
	tee_local	$push383=, $12=, $pop384
	i32.const	$push382=, 0
	i32.store	0($pop383), $pop382
	i32.const	$push381=, 40
	i32.add 	$push380=, $13, $pop381
	tee_local	$push379=, $13=, $pop380
	i32.const	$push378=, 0
	i32.store	0($pop379), $pop378
	i32.load	$push156=, 0($8)
	i32.store	0($11), $pop156
	i32.load	$push157=, 0($14)
	i32.store	0($12), $pop157
	i32.load	$push158=, 0($7)
	i32.store	0($13), $pop158
	i32.const	$push377=, 0
	i32.store	0($7), $pop377
	i64.const	$push376=, 0
	i64.store	0($8):p2align=2, $pop376
	i32.const	$push159=, 4
	i32.add 	$push375=, $0, $pop159
	tee_local	$push374=, $13=, $pop375
	i32.load	$push160=, 0($13)
	i32.add 	$push161=, $pop160, $2
	i32.store	0($pop374), $pop161
	return
.LBB22_46:
	end_block
	copy_local	$13=, $7
.LBB22_47:
	end_block
	i32.const	$push402=, 36
	i32.add 	$push65=, $1, $pop402
	i32.store	0($pop65), $7
	call    	_ZdlPv@FUNCTION, $13
	i32.const	$push66=, 40
	i32.add 	$push401=, $1, $pop66
	tee_local	$push400=, $7=, $pop401
	i32.const	$push67=, 0
	i32.store	0($pop400), $pop67
	i32.const	$push68=, 32
	i32.add 	$push69=, $1, $pop68
	i64.const	$push70=, 0
	i64.store	0($pop69):p2align=2, $pop70
.LBB22_48:
	end_block
	i32.const	$push73=, 32
	i32.add 	$push74=, $1, $pop73
	i32.const	$push407=, 32
	i32.add 	$push406=, $3, $pop407
	tee_local	$push405=, $13=, $pop406
	i32.load	$push75=, 0($pop405)
	i32.store	0($pop74), $pop75
	i32.const	$push76=, 36
	i32.add 	$push77=, $3, $pop76
	i32.load	$push78=, 0($pop77)
	i32.store	0($11), $pop78
	i32.const	$push79=, 40
	i32.add 	$push404=, $3, $pop79
	tee_local	$push403=, $8=, $pop404
	i32.load	$push80=, 0($pop403)
	i32.store	0($7), $pop80
	i32.const	$push81=, 0
	i32.store	0($8), $pop81
	i64.const	$push82=, 0
	i64.store	0($13):p2align=2, $pop82
.LBB22_49:
	end_block
	.endfunc
.Lfunc_end22:
	.size	_ZN5boost9container6vectorINS0_3dtl4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS0_13new_allocatorIS8_EEvE40priv_forward_range_insert_expand_forwardINS2_17insert_move_proxyISA_PS8_EEEEvSE_jT_, .Lfunc_end22-_ZN5boost9container6vectorINS0_3dtl4pairIyN5eosio11multi_indexILy6290548272952901632ENS4_9exaccountEJEEEEENS0_13new_allocatorIS8_EEvE40priv_forward_range_insert_expand_forwardINS2_17insert_move_proxyISA_PS8_EEEEvSE_jT_

	.text
	.hidden	_ZN5eosio12market_stateC2EyNS_11symbol_typeERNS_17exchange_accountsE
	.globl	_ZN5eosio12market_stateC2EyNS_11symbol_typeERNS_17exchange_accountsE
	.type	_ZN5eosio12market_stateC2EyNS_11symbol_typeERNS_17exchange_accountsE,@function
_ZN5eosio12market_stateC2EyNS_11symbol_typeERNS_17exchange_accountsE:
	.param  	i32, i64, i64, i32
	.result 	i32
	.local  	i32, i64, i64
	i64.const	$push0=, 8
	i64.shr_u	$push1=, $2, $pop0
	i64.store	0($0), $pop1
	i32.const	$push2=, 8
	i32.add 	$push3=, $0, $pop2
	i32.call	$4=, _ZN5eosio14exchange_stateC2Ev@FUNCTION, $pop3
	i64.store	240($0), $1
	i32.const	$push4=, 256
	i32.add 	$push5=, $0, $pop4
	i64.const	$push6=, -1
	i64.store	0($pop5), $pop6
	i32.const	$push7=, 264
	i32.add 	$push8=, $0, $pop7
	i64.const	$push9=, 0
	i64.store	0($pop8):p2align=2, $pop9
	i32.const	$push10=, 272
	i32.add 	$push11=, $0, $pop10
	i32.const	$push12=, 0
	i32.store	0($pop11), $pop12
	i32.const	$push13=, 248
	i32.add 	$push14=, $0, $pop13
	i64.load	$push100=, 0($0)
	tee_local	$push99=, $2=, $pop100
	i64.store	0($pop14), $pop99
	i64.store	280($0), $1
	i32.const	$push15=, 288
	i32.add 	$push16=, $0, $pop15
	i64.const	$push17=, 4
	i64.shl 	$push98=, $2, $pop17
	tee_local	$push97=, $5=, $pop98
	i64.const	$push18=, 1
	i64.or  	$push96=, $pop97, $pop18
	tee_local	$push95=, $6=, $pop96
	i64.store	0($pop16), $pop95
	i32.const	$push19=, 296
	i32.add 	$push20=, $0, $pop19
	i64.const	$push94=, -1
	i64.store	0($pop20), $pop94
	i32.const	$push21=, 304
	i32.add 	$push22=, $0, $pop21
	i32.const	$push93=, 0
	i32.store	0($pop22), $pop93
	i32.const	$push23=, 308
	i32.add 	$push24=, $0, $pop23
	i32.const	$push92=, 0
	i32.store	0($pop24), $pop92
	i32.const	$push25=, 312
	i32.add 	$push26=, $0, $pop25
	i32.const	$push91=, 0
	i32.store	0($pop26), $pop91
	i32.const	$push27=, 316
	i32.add 	$push28=, $0, $pop27
	i32.const	$push90=, 0
	i32.store8	0($pop28), $pop90
	i64.store	320($0), $1
	i32.const	$push29=, 328
	i32.add 	$push30=, $0, $pop29
	i64.const	$push31=, 2
	i64.or  	$push89=, $5, $pop31
	tee_local	$push88=, $5=, $pop89
	i64.store	0($pop30), $pop88
	i32.const	$push32=, 336
	i32.add 	$push33=, $0, $pop32
	i64.const	$push87=, -1
	i64.store	0($pop33), $pop87
	i32.const	$push34=, 344
	i32.add 	$push35=, $0, $pop34
	i32.const	$push86=, 0
	i32.store	0($pop35), $pop86
	i32.const	$push36=, 348
	i32.add 	$push37=, $0, $pop36
	i32.const	$push85=, 0
	i32.store	0($pop37), $pop85
	i32.const	$push38=, 352
	i32.add 	$push39=, $0, $pop38
	i32.const	$push84=, 0
	i32.store	0($pop39), $pop84
	i32.const	$push40=, 356
	i32.add 	$push41=, $0, $pop40
	i32.const	$push83=, 0
	i32.store8	0($pop41), $pop83
	i64.store	360($0), $1
	i32.const	$push42=, 368
	i32.add 	$push43=, $0, $pop42
	i64.store	0($pop43), $6
	i32.const	$push44=, 376
	i32.add 	$push45=, $0, $pop44
	i64.const	$push82=, -1
	i64.store	0($pop45), $pop82
	i32.const	$push46=, 384
	i32.add 	$push47=, $0, $pop46
	i32.const	$push81=, 0
	i32.store	0($pop47), $pop81
	i32.const	$push48=, 388
	i32.add 	$push49=, $0, $pop48
	i32.const	$push80=, 0
	i32.store	0($pop49), $pop80
	i32.const	$push50=, 392
	i32.add 	$push51=, $0, $pop50
	i32.const	$push79=, 0
	i32.store	0($pop51), $pop79
	i64.store	400($0), $1
	i32.const	$push52=, 408
	i32.add 	$push53=, $0, $pop52
	i64.store	0($pop53), $5
	i32.const	$push54=, 416
	i32.add 	$push55=, $0, $pop54
	i64.const	$push78=, -1
	i64.store	0($pop55), $pop78
	i32.const	$push56=, 424
	i32.add 	$push57=, $0, $pop56
	i32.const	$push77=, 0
	i32.store	0($pop57), $pop77
	i32.const	$push58=, 428
	i32.add 	$push59=, $0, $pop58
	i32.const	$push76=, 0
	i32.store	0($pop59), $pop76
	i32.const	$push60=, 432
	i32.add 	$push61=, $0, $pop60
	i32.const	$push75=, 0
	i32.store	0($pop61), $pop75
	i32.store	440($0), $3
	i32.const	$push64=, 444
	i32.add 	$push65=, $0, $pop64
	i32.const	$push62=, 240
	i32.add 	$push63=, $0, $pop62
	call    	_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE4findEy@FUNCTION, $pop65, $pop63, $2
	i32.const	$push66=, 448
	i32.add 	$push74=, $0, $pop66
	tee_local	$push73=, $3=, $pop74
	i32.load	$push67=, 0($pop73)
	i32.const	$push72=, 0
	i32.ne  	$push68=, $pop67, $pop72
	i32.const	$push69=, .L.str.4
	call    	eosio_assert@FUNCTION, $pop68, $pop69
	i32.load	$push70=, 0($3)
	i32.const	$push71=, 232
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop70, $pop71
	copy_local	$push101=, $0
	.endfunc
.Lfunc_end23:
	.size	_ZN5eosio12market_stateC2EyNS_11symbol_typeERNS_17exchange_accountsE, .Lfunc_end23-_ZN5eosio12market_stateC2EyNS_11symbol_typeERNS_17exchange_accountsE

	.section	.text._ZN5eosio14exchange_stateC2Ev,"axG",@progbits,_ZN5eosio14exchange_stateC2Ev,comdat
	.hidden	_ZN5eosio14exchange_stateC2Ev
	.weak	_ZN5eosio14exchange_stateC2Ev
	.type	_ZN5eosio14exchange_stateC2Ev,@function
_ZN5eosio14exchange_stateC2Ev:
	.param  	i32
	.result 	i32
	.local  	i64, i32, i32
	i64.const	$push60=, 0
	i64.store	8($0), $pop60
	i32.const	$push0=, 16
	i32.add 	$push59=, $0, $pop0
	tee_local	$push58=, $2=, $pop59
	i64.const	$push1=, 1398362884
	i64.store	0($pop58), $pop1
	i32.const	$push57=, 1
	i32.const	$push2=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop57, $pop2
	i64.load	$push3=, 0($2)
	i64.const	$push56=, 8
	i64.shr_u	$1=, $pop3, $pop56
	i32.const	$2=, 0
.LBB24_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push4=, $1
	i32.const	$push63=, 24
	i32.shl 	$push5=, $pop4, $pop63
	i32.const	$push62=, -1073741825
	i32.add 	$push6=, $pop5, $pop62
	i32.const	$push61=, 452984830
	i32.gt_u	$push7=, $pop6, $pop61
	br_if   	1, $pop7
	block   	
	i64.const	$push68=, 8
	i64.shr_u	$push67=, $1, $pop68
	tee_local	$push66=, $1=, $pop67
	i64.const	$push65=, 255
	i64.and 	$push8=, $pop66, $pop65
	i64.const	$push64=, 0
	i64.ne  	$push9=, $pop8, $pop64
	br_if   	0, $pop9
.LBB24_3:
	loop    	
	i64.const	$push73=, 8
	i64.shr_u	$push72=, $1, $pop73
	tee_local	$push71=, $1=, $pop72
	i64.const	$push70=, 255
	i64.and 	$push10=, $pop71, $pop70
	i64.const	$push69=, 0
	i64.ne  	$push11=, $pop10, $pop69
	br_if   	3, $pop11
	i32.const	$push77=, 1
	i32.add 	$push76=, $2, $pop77
	tee_local	$push75=, $2=, $pop76
	i32.const	$push74=, 7
	i32.lt_s	$push12=, $pop75, $pop74
	br_if   	0, $pop12
.LBB24_5:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push81=, 1
	i32.add 	$push80=, $2, $pop81
	tee_local	$push79=, $2=, $pop80
	i32.const	$push78=, 7
	i32.lt_s	$push13=, $pop79, $pop78
	br_if   	0, $pop13
	br      	2
.LBB24_6:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB24_7:
	end_block
	i32.const	$push15=, .L.str.66
	call    	eosio_assert@FUNCTION, $3, $pop15
	i64.const	$push86=, 0
	i64.store	40($0), $pop86
	i32.const	$push14=, 0
	i32.store	32($0), $pop14
	i32.const	$push16=, 48
	i32.add 	$push85=, $0, $pop16
	tee_local	$push84=, $2=, $pop85
	i64.const	$push17=, 1398362884
	i64.store	0($pop84), $pop17
	i32.const	$push83=, 1
	i32.const	$push18=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop83, $pop18
	i64.load	$push19=, 0($2)
	i64.const	$push82=, 8
	i64.shr_u	$1=, $pop19, $pop82
	i32.const	$2=, 0
.LBB24_8:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push20=, $1
	i32.const	$push89=, 24
	i32.shl 	$push21=, $pop20, $pop89
	i32.const	$push88=, -1073741825
	i32.add 	$push22=, $pop21, $pop88
	i32.const	$push87=, 452984830
	i32.gt_u	$push23=, $pop22, $pop87
	br_if   	1, $pop23
	block   	
	i64.const	$push94=, 8
	i64.shr_u	$push93=, $1, $pop94
	tee_local	$push92=, $1=, $pop93
	i64.const	$push91=, 255
	i64.and 	$push24=, $pop92, $pop91
	i64.const	$push90=, 0
	i64.ne  	$push25=, $pop24, $pop90
	br_if   	0, $pop25
.LBB24_10:
	loop    	
	i64.const	$push99=, 8
	i64.shr_u	$push98=, $1, $pop99
	tee_local	$push97=, $1=, $pop98
	i64.const	$push96=, 255
	i64.and 	$push26=, $pop97, $pop96
	i64.const	$push95=, 0
	i64.ne  	$push27=, $pop26, $pop95
	br_if   	3, $pop27
	i32.const	$push103=, 1
	i32.add 	$push102=, $2, $pop103
	tee_local	$push101=, $2=, $pop102
	i32.const	$push100=, 7
	i32.lt_s	$push28=, $pop101, $pop100
	br_if   	0, $pop28
.LBB24_12:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push107=, 1
	i32.add 	$push106=, $2, $pop107
	tee_local	$push105=, $2=, $pop106
	i32.const	$push104=, 7
	i32.lt_s	$push29=, $pop105, $pop104
	br_if   	0, $pop29
	br      	2
.LBB24_13:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB24_14:
	end_block
	i32.const	$push30=, .L.str.66
	call    	eosio_assert@FUNCTION, $3, $pop30
	i32.const	$push31=, 64
	i32.add 	$push32=, $0, $pop31
	i32.const	$push33=, 500
	i32.store	0($pop32), $pop33
	i32.const	$push34=, 72
	i32.add 	$push35=, $0, $pop34
	i32.call	$drop=, _ZN5eosio12margin_stateC2Ev@FUNCTION, $pop35
	i32.const	$push36=, 144
	i32.add 	$push112=, $0, $pop36
	tee_local	$push111=, $2=, $pop112
	i64.const	$push37=, 1398362884
	i64.store	0($pop111), $pop37
	i64.const	$push110=, 0
	i64.store	136($0), $pop110
	i32.const	$push109=, 1
	i32.const	$push38=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop109, $pop38
	i64.load	$push39=, 0($2)
	i64.const	$push108=, 8
	i64.shr_u	$1=, $pop39, $pop108
	i32.const	$2=, 0
.LBB24_15:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push40=, $1
	i32.const	$push115=, 24
	i32.shl 	$push41=, $pop40, $pop115
	i32.const	$push114=, -1073741825
	i32.add 	$push42=, $pop41, $pop114
	i32.const	$push113=, 452984830
	i32.gt_u	$push43=, $pop42, $pop113
	br_if   	1, $pop43
	block   	
	i64.const	$push120=, 8
	i64.shr_u	$push119=, $1, $pop120
	tee_local	$push118=, $1=, $pop119
	i64.const	$push117=, 255
	i64.and 	$push44=, $pop118, $pop117
	i64.const	$push116=, 0
	i64.ne  	$push45=, $pop44, $pop116
	br_if   	0, $pop45
.LBB24_17:
	loop    	
	i64.const	$push125=, 8
	i64.shr_u	$push124=, $1, $pop125
	tee_local	$push123=, $1=, $pop124
	i64.const	$push122=, 255
	i64.and 	$push46=, $pop123, $pop122
	i64.const	$push121=, 0
	i64.ne  	$push47=, $pop46, $pop121
	br_if   	3, $pop47
	i32.const	$push129=, 1
	i32.add 	$push128=, $2, $pop129
	tee_local	$push127=, $2=, $pop128
	i32.const	$push126=, 7
	i32.lt_s	$push48=, $pop127, $pop126
	br_if   	0, $pop48
.LBB24_19:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push133=, 1
	i32.add 	$push132=, $2, $pop133
	tee_local	$push131=, $2=, $pop132
	i32.const	$push130=, 7
	i32.lt_s	$push49=, $pop131, $pop130
	br_if   	0, $pop49
	br      	2
.LBB24_20:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB24_21:
	end_block
	i32.const	$push50=, .L.str.66
	call    	eosio_assert@FUNCTION, $3, $pop50
	i32.const	$push51=, 160
	i32.add 	$push52=, $0, $pop51
	i32.const	$push53=, 500
	i32.store	0($pop52), $pop53
	i32.const	$push54=, 168
	i32.add 	$push55=, $0, $pop54
	i32.call	$drop=, _ZN5eosio12margin_stateC2Ev@FUNCTION, $pop55
	copy_local	$push134=, $0
	.endfunc
.Lfunc_end24:
	.size	_ZN5eosio14exchange_stateC2Ev, .Lfunc_end24-_ZN5eosio14exchange_stateC2Ev

	.section	.text._ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE4findEy,"axG",@progbits,_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE4findEy,comdat
	.hidden	_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE4findEy
	.weak	_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE4findEy
	.type	_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE4findEy,@function
_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE4findEy:
	.param  	i32, i32, i64
	.local  	i32, i32, i32, i32, i32
	block   	
	i32.const	$push0=, 28
	i32.add 	$push1=, $1, $pop0
	i32.load	$push29=, 0($pop1)
	tee_local	$push28=, $7=, $pop29
	i32.load	$push27=, 24($1)
	tee_local	$push26=, $3=, $pop27
	i32.eq  	$push2=, $pop28, $pop26
	br_if   	0, $pop2
	i32.const	$push3=, 0
	i32.sub 	$4=, $pop3, $3
	i32.const	$push30=, -24
	i32.add 	$6=, $7, $pop30
.LBB25_2:
	loop    	
	i32.load	$push4=, 0($6)
	i32.const	$push32=, 16
	i32.add 	$push5=, $pop4, $pop32
	i64.load	$push6=, 0($pop5)
	i64.const	$push31=, 8
	i64.shr_u	$push7=, $pop6, $pop31
	i64.eq  	$push8=, $pop7, $2
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push36=, -24
	i32.add 	$push35=, $6, $pop36
	tee_local	$push34=, $5=, $pop35
	copy_local	$6=, $pop34
	i32.add 	$push9=, $5, $4
	i32.const	$push33=, -24
	i32.ne  	$push10=, $pop9, $pop33
	br_if   	0, $pop10
.LBB25_4:
	end_loop
	end_block
	block   	
	i32.eq  	$push11=, $7, $3
	br_if   	0, $pop11
	i32.const	$push12=, -24
	i32.add 	$push13=, $7, $pop12
	i32.load	$push38=, 0($pop13)
	tee_local	$push37=, $6=, $pop38
	i32.load	$push14=, 232($pop37)
	i32.eq  	$push15=, $pop14, $1
	i32.const	$push16=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	i32.store	4($0), $6
	i32.store	0($0), $1
	return
.LBB25_6:
	end_block
	block   	
	i64.load	$push18=, 0($1)
	i64.load	$push17=, 8($1)
	i64.const	$push19=, -7949128877345865728
	i32.call	$push40=, db_find_i64@FUNCTION, $pop18, $pop17, $pop19, $2
	tee_local	$push39=, $6=, $pop40
	i32.const	$push20=, -1
	i32.le_s	$push21=, $pop39, $pop20
	br_if   	0, $pop21
	i32.call	$push42=, _ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE31load_object_by_primary_iteratorEl@FUNCTION, $1, $6
	tee_local	$push41=, $6=, $pop42
	i32.load	$push22=, 232($pop41)
	i32.eq  	$push23=, $pop22, $1
	i32.const	$push24=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop23, $pop24
	i32.store	4($0), $6
	i32.store	0($0), $1
	return
.LBB25_8:
	end_block
	i32.const	$push25=, 0
	i32.store	4($0), $pop25
	i32.store	0($0), $1
	.endfunc
.Lfunc_end25:
	.size	_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE4findEy, .Lfunc_end25-_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE4findEy

	.section	.text._ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE31load_object_by_primary_iteratorEl,@function
_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push42=, 0
	i32.load	$push43=, __stack_pointer($pop42)
	i32.const	$push44=, 48
	i32.sub 	$push63=, $pop43, $pop44
	tee_local	$push62=, $9=, $pop63
	copy_local	$8=, $pop62
	i32.const	$push45=, 0
	i32.store	__stack_pointer($pop45), $9
	block   	
	i32.const	$push2=, 28
	i32.add 	$push3=, $0, $pop2
	i32.load	$push61=, 0($pop3)
	tee_local	$push60=, $7=, $pop61
	i32.load	$push59=, 24($0)
	tee_local	$push58=, $2=, $pop59
	i32.eq  	$push4=, $pop60, $pop58
	br_if   	0, $pop4
	i32.const	$push5=, 0
	i32.sub 	$3=, $pop5, $2
	i32.const	$push64=, -24
	i32.add 	$6=, $7, $pop64
.LBB26_2:
	loop    	
	i32.const	$push65=, 16
	i32.add 	$push6=, $6, $pop65
	i32.load	$push7=, 0($pop6)
	i32.eq  	$push8=, $pop7, $1
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push69=, -24
	i32.add 	$push68=, $6, $pop69
	tee_local	$push67=, $4=, $pop68
	copy_local	$6=, $pop67
	i32.add 	$push9=, $4, $3
	i32.const	$push66=, -24
	i32.ne  	$push10=, $pop9, $pop66
	br_if   	0, $pop10
.LBB26_4:
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
.LBB26_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push72=, 0
	i32.call	$push71=, db_get_i64@FUNCTION, $1, $pop14, $pop72
	tee_local	$push70=, $6=, $pop71
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop70, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.82
	call    	eosio_assert@FUNCTION, $pop18, $pop19
	block   	
	block   	
	i32.const	$push20=, 513
	i32.lt_u	$push21=, $6, $pop20
	br_if   	0, $pop21
	i32.call	$4=, malloc@FUNCTION, $6
	br      	1
.LBB26_8:
	end_block
	i32.const	$push41=, 0
	i32.const	$push22=, 15
	i32.add 	$push23=, $6, $pop22
	i32.const	$push24=, -16
	i32.and 	$push25=, $pop23, $pop24
	i32.sub 	$push74=, $9, $pop25
	tee_local	$push73=, $4=, $pop74
	copy_local	$push57=, $pop73
	i32.store	__stack_pointer($pop41), $pop57
.LBB26_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $6
	i32.store	36($8), $4
	i32.store	32($8), $4
	i32.add 	$push26=, $4, $6
	i32.store	40($8), $pop26
	block   	
	i32.const	$push27=, 513
	i32.lt_u	$push28=, $6, $pop27
	br_if   	0, $pop28
	call    	free@FUNCTION, $4
.LBB26_11:
	end_block
	i32.const	$push29=, 248
	i32.call	$push84=, _Znwj@FUNCTION, $pop29
	tee_local	$push83=, $6=, $pop84
	i32.call	$4=, _ZN5eosio14exchange_stateC2Ev@FUNCTION, $pop83
	i32.store	232($6), $0
	i32.const	$push49=, 32
	i32.add 	$push50=, $8, $pop49
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_stateE@FUNCTION, $pop50, $4
	i32.store	236($6), $1
	i32.store	24($8), $6
	i64.load	$push30=, 16($6)
	i64.const	$push31=, 8
	i64.shr_u	$push82=, $pop30, $pop31
	tee_local	$push81=, $5=, $pop82
	i64.store	16($8), $pop81
	i32.load	$push80=, 236($6)
	tee_local	$push79=, $7=, $pop80
	i32.store	12($8), $pop79
	block   	
	block   	
	i32.const	$push35=, 28
	i32.add 	$push78=, $0, $pop35
	tee_local	$push77=, $1=, $pop78
	i32.load	$push76=, 0($pop77)
	tee_local	$push75=, $4=, $pop76
	i32.const	$push32=, 32
	i32.add 	$push33=, $0, $pop32
	i32.load	$push34=, 0($pop33)
	i32.ge_u	$push36=, $pop75, $pop34
	br_if   	0, $pop36
	i64.store	8($4), $5
	i32.store	16($4), $7
	i32.const	$push37=, 0
	i32.store	24($8), $pop37
	i32.store	0($4), $6
	i32.const	$push38=, 24
	i32.add 	$push39=, $4, $pop38
	i32.store	0($1), $pop39
	br      	1
.LBB26_13:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push51=, 24
	i32.add 	$push52=, $8, $pop51
	i32.const	$push53=, 16
	i32.add 	$push54=, $8, $pop53
	i32.const	$push55=, 12
	i32.add 	$push56=, $8, $pop55
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy10497615196363685888ENS1_14exchange_stateEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop52, $pop54, $pop56
.LBB26_14:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push40=, 0
	i32.store	24($8), $pop40
	i32.eqz 	$push85=, $4
	br_if   	0, $pop85
	call    	_ZdlPv@FUNCTION, $4
.LBB26_16:
	end_block
	i32.const	$push48=, 0
	i32.const	$push46=, 48
	i32.add 	$push47=, $8, $pop46
	i32.store	__stack_pointer($pop48), $pop47
	copy_local	$push86=, $6
	.endfunc
.Lfunc_end26:
	.size	_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE31load_object_by_primary_iteratorEl, .Lfunc_end26-_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_stateE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_stateE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_stateE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_stateE
	.type	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_stateE,@function
_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_stateE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push68=, 8
	i32.add 	$push67=, $pop8, $pop68
	tee_local	$push66=, $2=, $pop67
	i32.store	4($0), $pop66
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push65=, 7
	i32.gt_u	$push11=, $pop10, $pop65
	i32.const	$push64=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop11, $pop64
	i32.const	$push63=, 8
	i32.add 	$push12=, $1, $pop63
	i32.load	$push13=, 4($0)
	i32.const	$push62=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop13, $pop62
	i32.load	$push14=, 4($0)
	i32.const	$push61=, 8
	i32.add 	$push60=, $pop14, $pop61
	tee_local	$push59=, $2=, $pop60
	i32.store	4($0), $pop59
	i32.load	$push15=, 8($0)
	i32.sub 	$push16=, $pop15, $2
	i32.const	$push58=, 7
	i32.gt_u	$push17=, $pop16, $pop58
	i32.const	$push57=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop17, $pop57
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.load	$push20=, 4($0)
	i32.const	$push56=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop19, $pop20, $pop56
	i32.load	$push21=, 4($0)
	i32.const	$push55=, 8
	i32.add 	$push54=, $pop21, $pop55
	tee_local	$push53=, $2=, $pop54
	i32.store	4($0), $pop53
	i32.load	$push22=, 8($0)
	i32.sub 	$push23=, $pop22, $2
	i32.const	$push52=, 7
	i32.gt_u	$push24=, $pop23, $pop52
	i32.const	$push51=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop24, $pop51
	i32.const	$push25=, 24
	i32.add 	$push26=, $1, $pop25
	i32.load	$push27=, 4($0)
	i32.const	$push50=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop26, $pop27, $pop50
	i32.load	$push28=, 4($0)
	i32.const	$push49=, 8
	i32.add 	$push48=, $pop28, $pop49
	tee_local	$push47=, $2=, $pop48
	i32.store	4($0), $pop47
	i32.load	$push29=, 8($0)
	i32.sub 	$push30=, $pop29, $2
	i32.const	$push31=, 3
	i32.gt_u	$push32=, $pop30, $pop31
	i32.const	$push46=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop32, $pop46
	i32.const	$push33=, 32
	i32.add 	$push34=, $1, $pop33
	i32.load	$push35=, 4($0)
	i32.const	$push36=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop34, $pop35, $pop36
	i32.load	$push37=, 4($0)
	i32.const	$push45=, 4
	i32.add 	$push38=, $pop37, $pop45
	i32.store	4($0), $pop38
	i32.const	$push41=, 40
	i32.add 	$push42=, $1, $pop41
	i32.call	$push43=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_state9connectorE@FUNCTION, $0, $pop42
	i32.const	$push39=, 136
	i32.add 	$push40=, $1, $pop39
	i32.call	$push44=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_state9connectorE@FUNCTION, $pop43, $pop40
	.endfunc
.Lfunc_end27:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_stateE, .Lfunc_end27-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_stateE

	.section	.text._ZNSt3__16vectorIN5eosio11multi_indexILy10497615196363685888ENS1_14exchange_stateEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio11multi_indexILy10497615196363685888ENS1_14exchange_stateEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio11multi_indexILy10497615196363685888ENS1_14exchange_stateEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio11multi_indexILy10497615196363685888ENS1_14exchange_stateEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio11multi_indexILy10497615196363685888ENS1_14exchange_stateEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio11multi_indexILy10497615196363685888ENS1_14exchange_stateEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_:
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
.LBB28_3:
	end_block
	i32.const	$push11=, 24
	i32.mul 	$push12=, $7, $pop11
	i32.call	$6=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB28_4:
	end_block
	i32.const	$7=, 0
	i32.const	$6=, 0
	br      	1
.LBB28_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB28_6:
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
.LBB28_8:
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
.LBB28_10:
	end_block
	copy_local	$6=, $7
.LBB28_11:
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
.LBB28_13:
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
.LBB28_15:
	end_block
	i32.ne  	$push39=, $6, $7
	br_if   	0, $pop39
.LBB28_16:
	end_loop
	end_block
	block   	
	i32.eqz 	$push81=, $6
	br_if   	0, $pop81
	call    	_ZdlPv@FUNCTION, $6
.LBB28_18:
	end_block
	.endfunc
.Lfunc_end28:
	.size	_ZNSt3__16vectorIN5eosio11multi_indexILy10497615196363685888ENS1_14exchange_stateEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_, .Lfunc_end28-_ZNSt3__16vectorIN5eosio11multi_indexILy10497615196363685888ENS1_14exchange_stateEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_state9connectorE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_state9connectorE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_state9connectorE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_state9connectorE
	.type	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_state9connectorE,@function
_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_state9connectorE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push153=, 8
	i32.add 	$push152=, $pop8, $pop153
	tee_local	$push151=, $2=, $pop152
	i32.store	4($0), $pop151
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push150=, 7
	i32.gt_u	$push11=, $pop10, $pop150
	i32.const	$push149=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop11, $pop149
	i32.const	$push148=, 8
	i32.add 	$push12=, $1, $pop148
	i32.load	$push13=, 4($0)
	i32.const	$push147=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop13, $pop147
	i32.load	$push14=, 4($0)
	i32.const	$push146=, 8
	i32.add 	$push145=, $pop14, $pop146
	tee_local	$push144=, $2=, $pop145
	i32.store	4($0), $pop144
	i32.load	$push15=, 8($0)
	i32.sub 	$push16=, $pop15, $2
	i32.const	$push143=, 7
	i32.gt_u	$push17=, $pop16, $pop143
	i32.const	$push142=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop17, $pop142
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.load	$push20=, 4($0)
	i32.const	$push141=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop19, $pop20, $pop141
	i32.load	$push21=, 4($0)
	i32.const	$push140=, 8
	i32.add 	$push139=, $pop21, $pop140
	tee_local	$push138=, $2=, $pop139
	i32.store	4($0), $pop138
	i32.load	$push22=, 8($0)
	i32.sub 	$push23=, $pop22, $2
	i32.const	$push24=, 3
	i32.gt_u	$push25=, $pop23, $pop24
	i32.const	$push137=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop25, $pop137
	i32.const	$push26=, 24
	i32.add 	$push27=, $1, $pop26
	i32.load	$push28=, 4($0)
	i32.const	$push29=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $pop28, $pop29
	i32.load	$push30=, 4($0)
	i32.const	$push136=, 4
	i32.add 	$push135=, $pop30, $pop136
	tee_local	$push134=, $2=, $pop135
	i32.store	4($0), $pop134
	i32.load	$push31=, 8($0)
	i32.sub 	$push32=, $pop31, $2
	i32.const	$push133=, 7
	i32.gt_u	$push33=, $pop32, $pop133
	i32.const	$push132=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop33, $pop132
	i32.const	$push34=, 32
	i32.add 	$push35=, $1, $pop34
	i32.load	$push36=, 4($0)
	i32.const	$push131=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop35, $pop36, $pop131
	i32.load	$push37=, 4($0)
	i32.const	$push130=, 8
	i32.add 	$push129=, $pop37, $pop130
	tee_local	$push128=, $2=, $pop129
	i32.store	4($0), $pop128
	i32.load	$push38=, 8($0)
	i32.sub 	$push39=, $pop38, $2
	i32.const	$push127=, 7
	i32.gt_u	$push40=, $pop39, $pop127
	i32.const	$push126=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop40, $pop126
	i32.const	$push41=, 40
	i32.add 	$push42=, $1, $pop41
	i32.load	$push43=, 4($0)
	i32.const	$push125=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop42, $pop43, $pop125
	i32.load	$push44=, 4($0)
	i32.const	$push124=, 8
	i32.add 	$push123=, $pop44, $pop124
	tee_local	$push122=, $2=, $pop123
	i32.store	4($0), $pop122
	i32.load	$push45=, 8($0)
	i32.sub 	$push46=, $pop45, $2
	i32.const	$push121=, 7
	i32.gt_u	$push47=, $pop46, $pop121
	i32.const	$push120=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop47, $pop120
	i32.const	$push48=, 48
	i32.add 	$push49=, $1, $pop48
	i32.load	$push50=, 4($0)
	i32.const	$push119=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop49, $pop50, $pop119
	i32.load	$push51=, 4($0)
	i32.const	$push118=, 8
	i32.add 	$push117=, $pop51, $pop118
	tee_local	$push116=, $2=, $pop117
	i32.store	4($0), $pop116
	i32.load	$push52=, 8($0)
	i32.sub 	$push53=, $pop52, $2
	i32.const	$push115=, 7
	i32.gt_u	$push54=, $pop53, $pop115
	i32.const	$push114=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop54, $pop114
	i32.const	$push55=, 56
	i32.add 	$push56=, $1, $pop55
	i32.load	$push57=, 4($0)
	i32.const	$push113=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop56, $pop57, $pop113
	i32.load	$push58=, 4($0)
	i32.const	$push112=, 8
	i32.add 	$push111=, $pop58, $pop112
	tee_local	$push110=, $2=, $pop111
	i32.store	4($0), $pop110
	i32.load	$push59=, 8($0)
	i32.sub 	$push60=, $pop59, $2
	i32.const	$push109=, 7
	i32.gt_u	$push61=, $pop60, $pop109
	i32.const	$push108=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop61, $pop108
	i32.const	$push62=, 64
	i32.add 	$push63=, $1, $pop62
	i32.load	$push64=, 4($0)
	i32.const	$push107=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop63, $pop64, $pop107
	i32.load	$push65=, 4($0)
	i32.const	$push106=, 8
	i32.add 	$push105=, $pop65, $pop106
	tee_local	$push104=, $2=, $pop105
	i32.store	4($0), $pop104
	i32.load	$push66=, 8($0)
	i32.sub 	$push67=, $pop66, $2
	i32.const	$push103=, 7
	i32.gt_u	$push68=, $pop67, $pop103
	i32.const	$push102=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop68, $pop102
	i32.const	$push69=, 72
	i32.add 	$push70=, $1, $pop69
	i32.load	$push71=, 4($0)
	i32.const	$push101=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop70, $pop71, $pop101
	i32.load	$push72=, 4($0)
	i32.const	$push100=, 8
	i32.add 	$push99=, $pop72, $pop100
	tee_local	$push98=, $2=, $pop99
	i32.store	4($0), $pop98
	i32.load	$push73=, 8($0)
	i32.sub 	$push74=, $pop73, $2
	i32.const	$push97=, 7
	i32.gt_u	$push75=, $pop74, $pop97
	i32.const	$push96=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop75, $pop96
	i32.const	$push76=, 80
	i32.add 	$push77=, $1, $pop76
	i32.load	$push78=, 4($0)
	i32.const	$push95=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop77, $pop78, $pop95
	i32.load	$push79=, 4($0)
	i32.const	$push94=, 8
	i32.add 	$push93=, $pop79, $pop94
	tee_local	$push92=, $2=, $pop93
	i32.store	4($0), $pop92
	i32.load	$push80=, 8($0)
	i32.sub 	$push81=, $pop80, $2
	i32.const	$push91=, 7
	i32.gt_u	$push82=, $pop81, $pop91
	i32.const	$push90=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop82, $pop90
	i32.const	$push83=, 88
	i32.add 	$push84=, $1, $pop83
	i32.load	$push85=, 4($0)
	i32.const	$push89=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop84, $pop85, $pop89
	i32.load	$push86=, 4($0)
	i32.const	$push88=, 8
	i32.add 	$push87=, $pop86, $pop88
	i32.store	4($0), $pop87
	copy_local	$push154=, $0
	.endfunc
.Lfunc_end29:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_state9connectorE, .Lfunc_end29-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_14exchange_state9connectorE

	.section	.text._ZN5eosio12margin_stateC2Ev,"axG",@progbits,_ZN5eosio12margin_stateC2Ev,comdat
	.hidden	_ZN5eosio12margin_stateC2Ev
	.weak	_ZN5eosio12margin_stateC2Ev
	.type	_ZN5eosio12margin_stateC2Ev,@function
_ZN5eosio12margin_stateC2Ev:
	.param  	i32
	.result 	i32
	.local  	i64, i32, i32
	i64.const	$push0=, 1398362884
	i64.store	8($0), $pop0
	i64.const	$push33=, 0
	i64.store	0($0), $pop33
	i32.const	$push32=, 1
	i32.const	$push1=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop32, $pop1
	i64.load	$push2=, 8($0)
	i64.const	$push31=, 8
	i64.shr_u	$1=, $pop2, $pop31
	i32.const	$2=, 0
.LBB30_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push3=, $1
	i32.const	$push36=, 24
	i32.shl 	$push4=, $pop3, $pop36
	i32.const	$push35=, -1073741825
	i32.add 	$push5=, $pop4, $pop35
	i32.const	$push34=, 452984830
	i32.gt_u	$push6=, $pop5, $pop34
	br_if   	1, $pop6
	block   	
	i64.const	$push41=, 8
	i64.shr_u	$push40=, $1, $pop41
	tee_local	$push39=, $1=, $pop40
	i64.const	$push38=, 255
	i64.and 	$push7=, $pop39, $pop38
	i64.const	$push37=, 0
	i64.ne  	$push8=, $pop7, $pop37
	br_if   	0, $pop8
.LBB30_3:
	loop    	
	i64.const	$push46=, 8
	i64.shr_u	$push45=, $1, $pop46
	tee_local	$push44=, $1=, $pop45
	i64.const	$push43=, 255
	i64.and 	$push9=, $pop44, $pop43
	i64.const	$push42=, 0
	i64.ne  	$push10=, $pop9, $pop42
	br_if   	3, $pop10
	i32.const	$push50=, 1
	i32.add 	$push49=, $2, $pop50
	tee_local	$push48=, $2=, $pop49
	i32.const	$push47=, 7
	i32.lt_s	$push11=, $pop48, $pop47
	br_if   	0, $pop11
.LBB30_5:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push54=, 1
	i32.add 	$push53=, $2, $pop54
	tee_local	$push52=, $2=, $pop53
	i32.const	$push51=, 7
	i32.lt_s	$push12=, $pop52, $pop51
	br_if   	0, $pop12
	br      	2
.LBB30_6:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB30_7:
	end_block
	i32.const	$push13=, .L.str.66
	call    	eosio_assert@FUNCTION, $3, $pop13
	i32.const	$push14=, 32
	i32.add 	$push59=, $0, $pop14
	tee_local	$push58=, $2=, $pop59
	i64.const	$push15=, 1398362884
	i64.store	0($pop58), $pop15
	i64.const	$push57=, 0
	i64.store	24($0), $pop57
	i32.const	$push56=, 1
	i32.const	$push16=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop56, $pop16
	i64.load	$push17=, 0($2)
	i64.const	$push55=, 8
	i64.shr_u	$1=, $pop17, $pop55
	i32.const	$2=, 0
.LBB30_8:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push18=, $1
	i32.const	$push62=, 24
	i32.shl 	$push19=, $pop18, $pop62
	i32.const	$push61=, -1073741825
	i32.add 	$push20=, $pop19, $pop61
	i32.const	$push60=, 452984830
	i32.gt_u	$push21=, $pop20, $pop60
	br_if   	1, $pop21
	block   	
	i64.const	$push67=, 8
	i64.shr_u	$push66=, $1, $pop67
	tee_local	$push65=, $1=, $pop66
	i64.const	$push64=, 255
	i64.and 	$push22=, $pop65, $pop64
	i64.const	$push63=, 0
	i64.ne  	$push23=, $pop22, $pop63
	br_if   	0, $pop23
.LBB30_10:
	loop    	
	i64.const	$push72=, 8
	i64.shr_u	$push71=, $1, $pop72
	tee_local	$push70=, $1=, $pop71
	i64.const	$push69=, 255
	i64.and 	$push24=, $pop70, $pop69
	i64.const	$push68=, 0
	i64.ne  	$push25=, $pop24, $pop68
	br_if   	3, $pop25
	i32.const	$push76=, 1
	i32.add 	$push75=, $2, $pop76
	tee_local	$push74=, $2=, $pop75
	i32.const	$push73=, 7
	i32.lt_s	$push26=, $pop74, $pop73
	br_if   	0, $pop26
.LBB30_12:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push80=, 1
	i32.add 	$push79=, $2, $pop80
	tee_local	$push78=, $2=, $pop79
	i32.const	$push77=, 7
	i32.lt_s	$push27=, $pop78, $pop77
	br_if   	0, $pop27
	br      	2
.LBB30_13:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB30_14:
	end_block
	i32.const	$push28=, .L.str.66
	call    	eosio_assert@FUNCTION, $3, $pop28
	i64.const	$push29=, 0
	i64.store	56($0), $pop29
	i64.const	$push30=, 9218868437227405311
	i64.store	48($0), $pop30
	copy_local	$push81=, $0
	.endfunc
.Lfunc_end30:
	.size	_ZN5eosio12margin_stateC2Ev, .Lfunc_end30-_ZN5eosio12margin_stateC2Ev

	.text
	.hidden	_ZN5eosio12market_state11margin_callENS_15extended_symbolE
	.globl	_ZN5eosio12market_state11margin_callENS_15extended_symbolE
	.type	_ZN5eosio12market_state11margin_callENS_15extended_symbolE,@function
_ZN5eosio12market_state11margin_callENS_15extended_symbolE:
	.param  	i32, i32
	block   	
	i64.load	$push5=, 0($1)
	i32.const	$push2=, 56
	i32.add 	$push3=, $0, $pop2
	i64.load	$push4=, 0($pop3)
	i64.ne  	$push6=, $pop5, $pop4
	br_if   	0, $pop6
	i64.load	$push10=, 8($1)
	i32.const	$push7=, 64
	i32.add 	$push8=, $0, $pop7
	i64.load	$push9=, 0($pop8)
	i64.ne  	$push11=, $pop10, $pop9
	br_if   	0, $pop11
	i32.const	$push1=, 48
	i32.add 	$push0=, $0, $pop1
	i32.const	$push16=, 280
	i32.add 	$push17=, $0, $pop16
	call    	_ZN5eosio12market_state11margin_callERNS_14exchange_state9connectorERNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS5_yXadL_ZNKS5_8get_callEvEEEEEEEEE@FUNCTION, $0, $pop0, $pop17
	return
.LBB31_3:
	end_block
	i32.const	$push14=, 144
	i32.add 	$push15=, $0, $pop14
	i32.const	$push12=, 320
	i32.add 	$push13=, $0, $pop12
	call    	_ZN5eosio12market_state11margin_callERNS_14exchange_state9connectorERNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS5_yXadL_ZNKS5_8get_callEvEEEEEEEEE@FUNCTION, $0, $pop15, $pop13
	.endfunc
.Lfunc_end31:
	.size	_ZN5eosio12market_state11margin_callENS_15extended_symbolE, .Lfunc_end31-_ZN5eosio12market_state11margin_callENS_15extended_symbolE

	.hidden	_ZN5eosio12market_state11margin_callERNS_14exchange_state9connectorERNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS5_yXadL_ZNKS5_8get_callEvEEEEEEEEE
	.globl	_ZN5eosio12market_state11margin_callERNS_14exchange_state9connectorERNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS5_yXadL_ZNKS5_8get_callEvEEEEEEEEE
	.type	_ZN5eosio12market_state11margin_callERNS_14exchange_state9connectorERNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS5_yXadL_ZNKS5_8get_callEvEEEEEEEEE,@function
_ZN5eosio12market_state11margin_callERNS_14exchange_state9connectorERNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS5_yXadL_ZNKS5_8get_callEvEEEEEEEEE:
	.param  	i32, i32, i32
	.local  	i32, i32, i64, i64, i64, f64, i32
	i32.const	$push85=, 0
	i32.const	$push82=, 0
	i32.load	$push83=, __stack_pointer($pop82)
	i32.const	$push84=, 288
	i32.sub 	$push147=, $pop83, $pop84
	tee_local	$push146=, $9=, $pop147
	i32.store	__stack_pointer($pop85), $pop146
	i32.store	272($9), $2
	i64.const	$push145=, 0
	i64.store	240($9), $pop145
	i32.const	$push89=, 264
	i32.add 	$push90=, $9, $pop89
	i32.const	$push91=, 272
	i32.add 	$push92=, $9, $pop91
	i32.const	$push93=, 240
	i32.add 	$push94=, $9, $pop93
	call    	_ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE11lower_boundERKy@FUNCTION, $pop90, $pop92, $pop94
	block   	
	i32.load	$push144=, 268($9)
	tee_local	$push143=, $2=, $pop144
	i32.eqz 	$push201=, $pop143
	br_if   	0, $pop201
	i32.const	$push95=, 216
	i32.add 	$push96=, $9, $pop95
	i32.const	$push3=, 16
	i32.add 	$push200=, $pop96, $pop3
	tee_local	$push199=, $3=, $pop200
	i32.const	$push0=, 48
	i32.add 	$push1=, $2, $pop0
	i64.load	$push2=, 0($pop1)
	i64.store	0($pop199), $pop2
	i32.const	$push97=, 216
	i32.add 	$push98=, $9, $pop97
	i32.const	$push7=, 8
	i32.add 	$push198=, $pop98, $pop7
	tee_local	$push197=, $4=, $pop198
	i32.const	$push4=, 40
	i32.add 	$push5=, $2, $pop4
	i64.load	$push6=, 0($pop5)
	i64.store	0($pop197), $pop6
	i64.load	$push8=, 32($2)
	i64.store	216($9), $pop8
	i32.const	$push9=, 24
	i32.add 	$push10=, $2, $pop9
	i64.load	$7=, 0($pop10)
	i32.const	$push196=, 16
	i32.add 	$push11=, $2, $pop196
	i64.load	$push12=, 0($pop11)
	i64.store	200($9), $pop12
	i64.store	208($9), $7
	i32.const	$push99=, 80
	i32.add 	$push100=, $9, $pop99
	i32.const	$push195=, 16
	i32.add 	$push13=, $pop100, $pop195
	i64.load	$push14=, 0($3)
	i64.store	0($pop13), $pop14
	i32.const	$push101=, 80
	i32.add 	$push102=, $9, $pop101
	i32.const	$push194=, 8
	i32.add 	$push15=, $pop102, $pop194
	i64.load	$push16=, 0($4)
	i64.store	0($pop15), $pop16
	i64.load	$push17=, 216($9)
	i64.store	80($9), $pop17
	i32.const	$push103=, 64
	i32.add 	$push104=, $9, $pop103
	i32.const	$push193=, 8
	i32.add 	$push18=, $pop104, $pop193
	i64.load	$push19=, 208($9)
	i64.store	0($pop18), $pop19
	i64.load	$push20=, 200($9)
	i64.store	64($9), $pop20
	i32.const	$push105=, 240
	i32.add 	$push106=, $9, $pop105
	i32.const	$push192=, 8
	i32.add 	$push191=, $0, $pop192
	tee_local	$push190=, $3=, $pop191
	i32.const	$push107=, 80
	i32.add 	$push108=, $9, $pop107
	i32.const	$push109=, 64
	i32.add 	$push110=, $9, $pop109
	call    	_ZN5eosio14exchange_state7convertENS_14extended_assetENS_15extended_symbolE@FUNCTION, $pop106, $pop190, $pop108, $pop110
	i64.load	$push189=, 240($9)
	tee_local	$push188=, $7=, $pop189
	i32.load	$push21=, 268($9)
	i64.load	$push22=, 8($pop21)
	i64.ge_s	$push23=, $pop188, $pop22
	i32.const	$push24=, .L.str.5
	call    	eosio_assert@FUNCTION, $pop23, $pop24
	i64.load	$push187=, 256($9)
	tee_local	$push186=, $5=, $pop187
	i32.load	$push185=, 268($9)
	tee_local	$push184=, $2=, $pop185
	i32.const	$push183=, 24
	i32.add 	$push25=, $pop184, $pop183
	i64.load	$push26=, 0($pop25)
	i64.eq  	$push27=, $pop186, $pop26
	i32.const	$push28=, .L.str.68
	call    	eosio_assert@FUNCTION, $pop27, $pop28
	i32.const	$push182=, 16
	i32.add 	$push29=, $2, $pop182
	i64.load	$push30=, 0($pop29)
	i64.load	$push181=, 248($9)
	tee_local	$push180=, $6=, $pop181
	i64.eq  	$push31=, $pop30, $pop180
	i32.const	$push32=, .L.str.69
	call    	eosio_assert@FUNCTION, $pop31, $pop32
	i64.load	$push33=, 8($2)
	i64.sub 	$push179=, $7, $pop33
	tee_local	$push178=, $7=, $pop179
	i64.const	$push34=, -4611686018427387904
	i64.gt_s	$push35=, $pop178, $pop34
	i32.const	$push36=, .L.str.70
	call    	eosio_assert@FUNCTION, $pop35, $pop36
	i64.const	$push37=, 4611686018427387904
	i64.lt_s	$push38=, $7, $pop37
	i32.const	$push39=, .L.str.71
	call    	eosio_assert@FUNCTION, $pop38, $pop39
	i64.store	160($9), $6
	i64.store	152($9), $7
	i64.store	168($9), $5
	i32.load	$push177=, 268($9)
	tee_local	$push176=, $2=, $pop177
	i32.const	$push175=, 40
	i32.add 	$push40=, $pop176, $pop175
	i64.load	$push41=, 0($pop40)
	i64.store	136($9), $pop41
	i32.const	$push174=, 48
	i32.add 	$push42=, $2, $pop174
	i64.load	$push43=, 0($pop42)
	i64.store	144($9), $pop43
	i32.const	$push111=, 40
	i32.add 	$push112=, $9, $pop111
	i32.const	$push44=, 20
	i32.add 	$push45=, $pop112, $pop44
	i32.const	$push113=, 152
	i32.add 	$push114=, $9, $pop113
	i32.const	$push173=, 20
	i32.add 	$push46=, $pop114, $pop173
	i32.load	$push47=, 0($pop46)
	i32.store	0($pop45), $pop47
	i32.const	$push115=, 40
	i32.add 	$push116=, $9, $pop115
	i32.const	$push172=, 16
	i32.add 	$push48=, $pop116, $pop172
	i32.load	$push49=, 168($9)
	i32.store	0($pop48), $pop49
	i32.const	$push117=, 40
	i32.add 	$push118=, $9, $pop117
	i32.const	$push171=, 8
	i32.add 	$push50=, $pop118, $pop171
	i64.load	$push51=, 160($9)
	i64.store	0($pop50), $pop51
	i64.load	$push52=, 152($9)
	i64.store	40($9), $pop52
	i32.const	$push119=, 24
	i32.add 	$push120=, $9, $pop119
	i32.const	$push170=, 8
	i32.add 	$push53=, $pop120, $pop170
	i64.load	$push54=, 144($9)
	i64.store	0($pop53), $pop54
	i64.load	$push55=, 136($9)
	i64.store	24($9), $pop55
	i32.const	$push121=, 176
	i32.add 	$push122=, $9, $pop121
	i32.const	$push123=, 40
	i32.add 	$push124=, $9, $pop123
	i32.const	$push125=, 24
	i32.add 	$push126=, $9, $pop125
	call    	_ZN5eosio14exchange_state7convertENS_14extended_assetENS_15extended_symbolE@FUNCTION, $pop122, $3, $pop124, $pop126
	i32.load	$push56=, 268($9)
	i64.load	$7=, 0($pop56)
	i32.const	$push127=, 112
	i32.add 	$push128=, $9, $pop127
	i32.const	$push169=, 16
	i32.add 	$push168=, $pop128, $pop169
	tee_local	$push167=, $2=, $pop168
	i32.const	$push129=, 176
	i32.add 	$push130=, $9, $pop129
	i32.const	$push166=, 16
	i32.add 	$push57=, $pop130, $pop166
	i64.load	$push58=, 0($pop57)
	i64.store	0($pop167), $pop58
	i32.const	$push131=, 112
	i32.add 	$push132=, $9, $pop131
	i32.const	$push165=, 8
	i32.add 	$push164=, $pop132, $pop165
	tee_local	$push163=, $3=, $pop164
	i32.const	$push133=, 176
	i32.add 	$push134=, $9, $pop133
	i32.const	$push162=, 8
	i32.add 	$push59=, $pop134, $pop162
	i64.load	$push60=, 0($pop59)
	i64.store	0($pop163), $pop60
	i32.load	$push61=, 176($9)
	i32.store	112($9), $pop61
	i32.load	$push62=, 180($9)
	i32.store	116($9), $pop62
	i32.load	$0=, 440($0)
	i32.const	$push161=, 16
	i32.add 	$push63=, $9, $pop161
	i64.load	$push64=, 0($2)
	i64.store	0($pop63), $pop64
	i32.const	$push160=, 8
	i32.add 	$push65=, $9, $pop160
	i64.load	$push66=, 0($3)
	i64.store	0($pop65), $pop66
	i64.load	$push67=, 112($9)
	i64.store	0($9), $pop67
	call    	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE@FUNCTION, $0, $7, $9, $9
	i32.const	$push68=, 56
	i32.add 	$push159=, $1, $pop68
	tee_local	$push158=, $2=, $pop159
	i64.load	$push69=, 0($2)
	i32.load	$push70=, 268($9)
	i64.load	$push71=, 8($pop70)
	i64.sub 	$push72=, $pop69, $pop71
	i64.store	0($pop158), $pop72
	i64.load	$push157=, 264($9)
	tee_local	$push156=, $7=, $pop157
	i64.store	280($9), $pop156
	i64.const	$push73=, 32
	i64.shr_u	$push74=, $7, $pop73
	i32.wrap/i64	$push155=, $pop74
	tee_local	$push154=, $2=, $pop155
	i32.const	$push75=, 0
	i32.ne  	$push76=, $pop154, $pop75
	i32.const	$push77=, .L.str.107
	call    	eosio_assert@FUNCTION, $pop76, $pop77
	i32.const	$push135=, 280
	i32.add 	$push136=, $9, $pop135
	i32.call	$drop=, _ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE14const_iteratorppEv@FUNCTION, $pop136
	i32.load	$push78=, 272($9)
	call    	_ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5eraseERKS1_@FUNCTION, $pop78, $2
	i64.const	$push153=, 0
	i64.store	280($9), $pop153
	i32.const	$push137=, 104
	i32.add 	$push138=, $9, $pop137
	i32.const	$push139=, 272
	i32.add 	$push140=, $9, $pop139
	i32.const	$push141=, 280
	i32.add 	$push142=, $9, $pop141
	call    	_ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE11lower_boundERKy@FUNCTION, $pop138, $pop140, $pop142
	i64.load	$push152=, 104($9)
	tee_local	$push151=, $7=, $pop152
	i64.store	264($9), $pop151
	block   	
	block   	
	i64.const	$push150=, 32
	i64.shr_u	$push79=, $7, $pop150
	i32.wrap/i64	$push149=, $pop79
	tee_local	$push148=, $2=, $pop149
	i32.eqz 	$push202=, $pop148
	br_if   	0, $pop202
	f64.load	$8=, 56($2)
	br      	1
.LBB32_3:
	end_block
	f64.const	$8=, 0x1p64
.LBB32_4:
	end_block
	i32.const	$push80=, 80
	i32.add 	$push81=, $1, $pop80
	f64.store	0($pop81), $8
.LBB32_5:
	end_block
	i32.const	$push88=, 0
	i32.const	$push86=, 288
	i32.add 	$push87=, $9, $pop86
	i32.store	__stack_pointer($pop88), $pop87
	.endfunc
.Lfunc_end32:
	.size	_ZN5eosio12market_state11margin_callERNS_14exchange_state9connectorERNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS5_yXadL_ZNKS5_8get_callEvEEEEEEEEE, .Lfunc_end32-_ZN5eosio12market_state11margin_callERNS_14exchange_state9connectorERNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS5_yXadL_ZNKS5_8get_callEvEEEEEEEEE

	.section	.text._ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE11lower_boundERKy,"axG",@progbits,_ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE11lower_boundERKy,comdat
	.hidden	_ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE11lower_boundERKy
	.weak	_ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE11lower_boundERKy
	.type	_ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE11lower_boundERKy,@function
_ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE11lower_boundERKy:
	.param  	i32, i32, i32
	.local  	i32, i32, i64, i32, i32, i32, i32, i32
	i32.const	$push33=, 0
	i32.const	$push30=, 0
	i32.load	$push31=, __stack_pointer($pop30)
	i32.const	$push32=, 16
	i32.sub 	$push45=, $pop31, $pop32
	tee_local	$push44=, $10=, $pop45
	i32.store	__stack_pointer($pop33), $pop44
	i64.const	$push0=, 0
	i64.store	8($10), $pop0
	i64.load	$push1=, 0($2)
	i64.store	0($10), $pop1
	i32.const	$2=, 0
	block   	
	i32.load	$push43=, 0($1)
	tee_local	$push42=, $8=, $pop43
	i64.load	$push3=, 0($pop42)
	i64.load	$push2=, 8($8)
	i64.const	$push4=, -7949197150146002944
	i32.const	$push37=, 8
	i32.add 	$push38=, $10, $pop37
	i32.call	$push41=, db_idx64_lowerbound@FUNCTION, $pop3, $pop2, $pop4, $10, $pop38
	tee_local	$push40=, $3=, $pop41
	i32.const	$push39=, 0
	i32.lt_s	$push5=, $pop40, $pop39
	br_if   	0, $pop5
	i64.load	$5=, 8($10)
	block   	
	i32.load	$push51=, 0($1)
	tee_local	$push50=, $4=, $pop51
	i32.const	$push6=, 28
	i32.add 	$push7=, $pop50, $pop6
	i32.load	$push49=, 0($pop7)
	tee_local	$push48=, $9=, $pop49
	i32.load	$push47=, 24($4)
	tee_local	$push46=, $6=, $pop47
	i32.eq  	$push8=, $pop48, $pop46
	br_if   	0, $pop8
	i32.const	$push52=, -24
	i32.add 	$2=, $9, $pop52
	i32.const	$push9=, 0
	i32.sub 	$7=, $pop9, $6
.LBB33_3:
	loop    	
	i32.load	$push10=, 0($2)
	i64.load	$push11=, 0($pop10)
	i64.eq  	$push12=, $pop11, $5
	br_if   	1, $pop12
	copy_local	$9=, $2
	i32.const	$push56=, -24
	i32.add 	$push55=, $2, $pop56
	tee_local	$push54=, $8=, $pop55
	copy_local	$2=, $pop54
	i32.add 	$push13=, $8, $7
	i32.const	$push53=, -24
	i32.ne  	$push14=, $pop13, $pop53
	br_if   	0, $pop14
.LBB33_5:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push15=, $9, $6
	br_if   	0, $pop15
	i32.const	$push16=, -24
	i32.add 	$push17=, $9, $pop16
	i32.load	$push58=, 0($pop17)
	tee_local	$push57=, $2=, $pop58
	i32.load	$push18=, 64($pop57)
	i32.eq  	$push19=, $pop18, $4
	i32.const	$push20=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop19, $pop20
	br      	1
.LBB33_7:
	end_block
	i64.load	$push22=, 0($4)
	i64.load	$push21=, 8($4)
	i64.const	$push23=, -7949197150146002944
	i32.call	$push24=, db_find_i64@FUNCTION, $pop22, $pop21, $pop23, $5
	i32.call	$push60=, _ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorEl@FUNCTION, $4, $pop24
	tee_local	$push59=, $2=, $pop60
	i32.load	$push25=, 64($pop59)
	i32.eq  	$push26=, $pop25, $4
	i32.const	$push27=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop26, $pop27
.LBB33_8:
	end_block
	i32.const	$push28=, 72
	i32.add 	$push29=, $2, $pop28
	i32.store	0($pop29), $3
.LBB33_9:
	end_block
	i32.store	4($0), $2
	i32.store	0($0), $1
	i32.const	$push36=, 0
	i32.const	$push34=, 16
	i32.add 	$push35=, $10, $pop34
	i32.store	__stack_pointer($pop36), $pop35
	.endfunc
.Lfunc_end33:
	.size	_ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE11lower_boundERKy, .Lfunc_end33-_ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE11lower_boundERKy

	.section	.text._ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE14const_iteratorppEv,"axG",@progbits,_ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE14const_iteratorppEv,comdat
	.hidden	_ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE14const_iteratorppEv
	.weak	_ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE14const_iteratorppEv
	.type	_ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE14const_iteratorppEv,@function
_ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE14const_iteratorppEv:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i64, i32, i32, i32, i32, i32, i32
	i32.const	$push48=, 0
	i32.const	$push45=, 0
	i32.load	$push46=, __stack_pointer($pop45)
	i32.const	$push47=, 16
	i32.sub 	$push62=, $pop46, $pop47
	tee_local	$push61=, $9=, $pop62
	i32.store	__stack_pointer($pop48), $pop61
	i32.load	$push0=, 4($0)
	i32.const	$push1=, 0
	i32.ne  	$push2=, $pop0, $pop1
	i32.const	$push3=, .L.str.108
	call    	eosio_assert@FUNCTION, $pop2, $pop3
	block   	
	i32.load	$push60=, 4($0)
	tee_local	$push59=, $6=, $pop60
	i32.load	$push58=, 72($pop59)
	tee_local	$push57=, $7=, $pop58
	i32.const	$push56=, -1
	i32.ne  	$push4=, $pop57, $pop56
	br_if   	0, $pop4
	i32.load	$push6=, 0($0)
	i32.load	$push64=, 0($pop6)
	tee_local	$push63=, $7=, $pop64
	i64.load	$push8=, 0($pop63)
	i64.load	$push7=, 8($7)
	i64.const	$push9=, -7949197150146002944
	i32.const	$push52=, 8
	i32.add 	$push53=, $9, $pop52
	i64.load	$push5=, 0($6)
	i32.call	$7=, db_idx64_find_primary@FUNCTION, $pop8, $pop7, $pop9, $pop53, $pop5
	i32.const	$push10=, 4
	i32.add 	$push11=, $0, $pop10
	i32.load	$push12=, 0($pop11)
	i32.store	72($pop12), $7
.LBB34_2:
	end_block
	i64.const	$push13=, 0
	i64.store	8($9), $pop13
	block   	
	block   	
	block   	
	block   	
	i32.const	$push54=, 8
	i32.add 	$push55=, $9, $pop54
	i32.call	$push67=, db_idx64_next@FUNCTION, $7, $pop55
	tee_local	$push66=, $1=, $pop67
	i32.const	$push65=, -1
	i32.le_s	$push14=, $pop66, $pop65
	br_if   	0, $pop14
	i64.load	$3=, 8($9)
	block   	
	i32.load	$push15=, 0($0)
	i32.load	$push73=, 0($pop15)
	tee_local	$push72=, $2=, $pop73
	i32.const	$push16=, 28
	i32.add 	$push17=, $pop72, $pop16
	i32.load	$push71=, 0($pop17)
	tee_local	$push70=, $8=, $pop71
	i32.load	$push69=, 24($2)
	tee_local	$push68=, $4=, $pop69
	i32.eq  	$push18=, $pop70, $pop68
	br_if   	0, $pop18
	i32.const	$push74=, -24
	i32.add 	$7=, $8, $pop74
	i32.const	$push19=, 0
	i32.sub 	$5=, $pop19, $4
.LBB34_5:
	loop    	
	i32.load	$push20=, 0($7)
	i64.load	$push21=, 0($pop20)
	i64.eq  	$push22=, $pop21, $3
	br_if   	1, $pop22
	copy_local	$8=, $7
	i32.const	$push78=, -24
	i32.add 	$push77=, $7, $pop78
	tee_local	$push76=, $6=, $pop77
	copy_local	$7=, $pop76
	i32.add 	$push23=, $6, $5
	i32.const	$push75=, -24
	i32.ne  	$push24=, $pop23, $pop75
	br_if   	0, $pop24
.LBB34_7:
	end_loop
	end_block
	i32.eq  	$push25=, $8, $4
	br_if   	1, $pop25
	i32.const	$push26=, -24
	i32.add 	$push27=, $8, $pop26
	i32.load	$push80=, 0($pop27)
	tee_local	$push79=, $7=, $pop80
	i32.load	$push28=, 64($pop79)
	i32.eq  	$push29=, $pop28, $2
	i32.const	$push30=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop29, $pop30
	br      	2
.LBB34_9:
	end_block
	i32.const	$push42=, 4
	i32.add 	$push43=, $0, $pop42
	i32.const	$push44=, 0
	i32.store	0($pop43), $pop44
	br      	2
.LBB34_10:
	end_block
	i64.load	$push32=, 0($2)
	i64.load	$push31=, 8($2)
	i64.const	$push33=, -7949197150146002944
	i32.call	$push34=, db_find_i64@FUNCTION, $pop32, $pop31, $pop33, $3
	i32.call	$push82=, _ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorEl@FUNCTION, $2, $pop34
	tee_local	$push81=, $7=, $pop82
	i32.load	$push35=, 64($pop81)
	i32.eq  	$push36=, $pop35, $2
	i32.const	$push37=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop36, $pop37
.LBB34_11:
	end_block
	i32.const	$push38=, 4
	i32.add 	$push39=, $0, $pop38
	i32.store	0($pop39), $7
	i32.const	$push40=, 72
	i32.add 	$push41=, $7, $pop40
	i32.store	0($pop41), $1
.LBB34_12:
	end_block
	i32.const	$push51=, 0
	i32.const	$push49=, 16
	i32.add 	$push50=, $9, $pop49
	i32.store	__stack_pointer($pop51), $pop50
	copy_local	$push83=, $0
	.endfunc
.Lfunc_end34:
	.size	_ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE14const_iteratorppEv, .Lfunc_end34-_ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5indexILy4729653573519933440ES6_Ly0ELb0EE14const_iteratorppEv

	.section	.text._ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5eraseERKS1_,"axG",@progbits,_ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5eraseERKS1_,comdat
	.hidden	_ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5eraseERKS1_
	.weak	_ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5eraseERKS1_
	.type	_ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5eraseERKS1_,@function
_ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5eraseERKS1_:
	.param  	i32, i32
	.local  	i64, i32, i32, i32, i32, i32, i32, i32
	i32.const	$push46=, 0
	i32.const	$push43=, 0
	i32.load	$push44=, __stack_pointer($pop43)
	i32.const	$push45=, 16
	i32.sub 	$push59=, $pop44, $pop45
	tee_local	$push58=, $9=, $pop59
	i32.store	__stack_pointer($pop46), $pop58
	i32.load	$push0=, 64($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.109
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.110
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	block   	
	i32.const	$push7=, 28
	i32.add 	$push57=, $0, $pop7
	tee_local	$push56=, $5=, $pop57
	i32.load	$push55=, 0($pop56)
	tee_local	$push54=, $7=, $pop55
	i32.load	$push53=, 24($0)
	tee_local	$push52=, $3=, $pop53
	i32.eq  	$push8=, $pop54, $pop52
	br_if   	0, $pop8
	i64.load	$2=, 0($1)
	i32.const	$push9=, 0
	i32.sub 	$6=, $pop9, $3
	i32.const	$push60=, -24
	i32.add 	$8=, $7, $pop60
.LBB35_2:
	loop    	
	i32.load	$push10=, 0($8)
	i64.load	$push11=, 0($pop10)
	i64.eq  	$push12=, $pop11, $2
	br_if   	1, $pop12
	copy_local	$7=, $8
	i32.const	$push64=, -24
	i32.add 	$push63=, $8, $pop64
	tee_local	$push62=, $4=, $pop63
	copy_local	$8=, $pop62
	i32.add 	$push13=, $4, $6
	i32.const	$push61=, -24
	i32.ne  	$push14=, $pop13, $pop61
	br_if   	0, $pop14
.LBB35_4:
	end_loop
	end_block
	i32.ne  	$push15=, $7, $3
	i32.const	$push16=, .L.str.111
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	i32.const	$push67=, -24
	i32.add 	$8=, $7, $pop67
	block   	
	block   	
	i32.load	$push66=, 0($5)
	tee_local	$push65=, $4=, $pop66
	i32.eq  	$push17=, $7, $pop65
	br_if   	0, $pop17
	i32.const	$push68=, 0
	i32.sub 	$3=, $pop68, $4
	copy_local	$7=, $8
.LBB35_6:
	loop    	
	i32.const	$push72=, 24
	i32.add 	$push71=, $7, $pop72
	tee_local	$push70=, $8=, $pop71
	i32.load	$6=, 0($pop70)
	i32.const	$push69=, 0
	i32.store	0($8), $pop69
	i32.load	$4=, 0($7)
	i32.store	0($7), $6
	block   	
	i32.eqz 	$push88=, $4
	br_if   	0, $pop88
	call    	_ZdlPv@FUNCTION, $4
.LBB35_8:
	end_block
	i32.const	$push77=, 16
	i32.add 	$push18=, $7, $pop77
	i32.const	$push76=, 40
	i32.add 	$push19=, $7, $pop76
	i32.load	$push20=, 0($pop19)
	i32.store	0($pop18), $pop20
	i32.const	$push75=, 8
	i32.add 	$push21=, $7, $pop75
	i32.const	$push74=, 32
	i32.add 	$push22=, $7, $pop74
	i64.load	$push23=, 0($pop22)
	i64.store	0($pop21), $pop23
	copy_local	$7=, $8
	i32.add 	$push24=, $8, $3
	i32.const	$push73=, -24
	i32.ne  	$push25=, $pop24, $pop73
	br_if   	0, $pop25
	end_loop
	i32.const	$push26=, 28
	i32.add 	$push27=, $0, $pop26
	i32.load	$push79=, 0($pop27)
	tee_local	$push78=, $7=, $pop79
	i32.eq  	$push28=, $pop78, $8
	br_if   	1, $pop28
.LBB35_10:
	end_block
.LBB35_11:
	loop    	
	i32.const	$push83=, -24
	i32.add 	$push82=, $7, $pop83
	tee_local	$push81=, $7=, $pop82
	i32.load	$4=, 0($pop81)
	i32.const	$push80=, 0
	i32.store	0($7), $pop80
	block   	
	i32.eqz 	$push89=, $4
	br_if   	0, $pop89
	call    	_ZdlPv@FUNCTION, $4
.LBB35_13:
	end_block
	i32.ne  	$push29=, $8, $7
	br_if   	0, $pop29
.LBB35_14:
	end_loop
	end_block
	i32.const	$push30=, 28
	i32.add 	$push31=, $0, $pop30
	i32.store	0($pop31), $8
	i32.load	$push32=, 68($1)
	call    	db_remove_i64@FUNCTION, $pop32
	block   	
	block   	
	i32.const	$push33=, 72
	i32.add 	$push34=, $1, $pop33
	i32.load	$push85=, 0($pop34)
	tee_local	$push84=, $7=, $pop85
	i32.const	$push35=, -1
	i32.gt_s	$push36=, $pop84, $pop35
	br_if   	0, $pop36
	i64.load	$push39=, 0($0)
	i64.load	$push38=, 8($0)
	i64.const	$push40=, -7949197150146002944
	i32.const	$push50=, 8
	i32.add 	$push51=, $9, $pop50
	i64.load	$push37=, 0($1)
	i32.call	$push87=, db_idx64_find_primary@FUNCTION, $pop39, $pop38, $pop40, $pop51, $pop37
	tee_local	$push86=, $7=, $pop87
	i32.const	$push41=, 0
	i32.lt_s	$push42=, $pop86, $pop41
	br_if   	1, $pop42
.LBB35_16:
	end_block
	call    	db_idx64_remove@FUNCTION, $7
.LBB35_17:
	end_block
	i32.const	$push49=, 0
	i32.const	$push47=, 16
	i32.add 	$push48=, $9, $pop47
	i32.store	__stack_pointer($pop49), $pop48
	.endfunc
.Lfunc_end35:
	.size	_ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5eraseERKS1_, .Lfunc_end35-_ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5eraseERKS1_

	.section	.text._ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorEl
	.type	_ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorEl,@function
_ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push43=, 0
	i32.const	$push40=, 0
	i32.load	$push41=, __stack_pointer($pop40)
	i32.const	$push42=, 48
	i32.sub 	$push67=, $pop41, $pop42
	tee_local	$push66=, $9=, $pop67
	i32.store	__stack_pointer($pop43), $pop66
	copy_local	$push65=, $9
	tee_local	$push64=, $8=, $pop65
	i32.store	44($pop64), $1
	block   	
	i32.const	$push2=, 28
	i32.add 	$push3=, $0, $pop2
	i32.load	$push63=, 0($pop3)
	tee_local	$push62=, $7=, $pop63
	i32.load	$push61=, 24($0)
	tee_local	$push60=, $2=, $pop61
	i32.eq  	$push4=, $pop62, $pop60
	br_if   	0, $pop4
	i32.const	$push5=, 0
	i32.sub 	$3=, $pop5, $2
	i32.const	$push68=, -24
	i32.add 	$6=, $7, $pop68
.LBB36_2:
	loop    	
	i32.const	$push69=, 16
	i32.add 	$push6=, $6, $pop69
	i32.load	$push7=, 0($pop6)
	i32.eq  	$push8=, $pop7, $1
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push73=, -24
	i32.add 	$push72=, $6, $pop73
	tee_local	$push71=, $4=, $pop72
	copy_local	$6=, $pop71
	i32.add 	$push9=, $4, $3
	i32.const	$push70=, -24
	i32.ne  	$push10=, $pop9, $pop70
	br_if   	0, $pop10
.LBB36_4:
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
.LBB36_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push76=, 0
	i32.call	$push75=, db_get_i64@FUNCTION, $1, $pop14, $pop76
	tee_local	$push74=, $6=, $pop75
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop74, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.82
	call    	eosio_assert@FUNCTION, $pop18, $pop19
	block   	
	block   	
	i32.const	$push20=, 513
	i32.lt_u	$push21=, $6, $pop20
	br_if   	0, $pop21
	i32.call	$4=, malloc@FUNCTION, $6
	br      	1
.LBB36_8:
	end_block
	i32.const	$push39=, 0
	i32.const	$push22=, 15
	i32.add 	$push23=, $6, $pop22
	i32.const	$push24=, -16
	i32.and 	$push25=, $pop23, $pop24
	i32.sub 	$push78=, $9, $pop25
	tee_local	$push77=, $4=, $pop78
	copy_local	$push59=, $pop77
	i32.store	__stack_pointer($pop39), $pop59
.LBB36_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $6
	i32.store	36($8), $4
	i32.store	32($8), $4
	i32.add 	$push26=, $4, $6
	i32.store	40($8), $pop26
	block   	
	i32.const	$push27=, 513
	i32.lt_u	$push28=, $6, $pop27
	br_if   	0, $pop28
	call    	free@FUNCTION, $4
.LBB36_11:
	end_block
	i32.store	8($8), $0
	i32.const	$push47=, 32
	i32.add 	$push48=, $8, $pop47
	i32.store	12($8), $pop48
	i32.const	$push49=, 44
	i32.add 	$push50=, $8, $pop49
	i32.store	16($8), $pop50
	i32.const	$push29=, 80
	i32.call	$push88=, _Znwj@FUNCTION, $pop29
	tee_local	$push87=, $6=, $pop88
	i32.call	$drop=, _ZN5eosio15margin_positionC2Ev@FUNCTION, $pop87
	i32.store	64($6), $0
	i32.const	$push51=, 8
	i32.add 	$push52=, $8, $pop51
	call    	_ZZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorElENKUlRT_E_clINS8_4itemEEEDaSA_@FUNCTION, $pop52, $6
	i32.store	24($8), $6
	i64.load	$push86=, 0($6)
	tee_local	$push85=, $5=, $pop86
	i64.store	8($8), $pop85
	i32.load	$push84=, 68($6)
	tee_local	$push83=, $7=, $pop84
	i32.store	4($8), $pop83
	block   	
	block   	
	i32.const	$push33=, 28
	i32.add 	$push82=, $0, $pop33
	tee_local	$push81=, $1=, $pop82
	i32.load	$push80=, 0($pop81)
	tee_local	$push79=, $4=, $pop80
	i32.const	$push30=, 32
	i32.add 	$push31=, $0, $pop30
	i32.load	$push32=, 0($pop31)
	i32.ge_u	$push34=, $pop79, $pop32
	br_if   	0, $pop34
	i64.store	8($4), $5
	i32.store	16($4), $7
	i32.const	$push35=, 0
	i32.store	24($8), $pop35
	i32.store	0($4), $6
	i32.const	$push36=, 24
	i32.add 	$push37=, $4, $pop36
	i32.store	0($1), $pop37
	br      	1
.LBB36_13:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push53=, 24
	i32.add 	$push54=, $8, $pop53
	i32.const	$push55=, 8
	i32.add 	$push56=, $8, $pop55
	i32.const	$push57=, 4
	i32.add 	$push58=, $8, $pop57
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy10497546923563548672ENS1_15margin_positionEJNS1_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8get_callEvEEEEEEEE8item_ptrENS_9allocatorISB_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSA_4itemENS_14default_deleteISH_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop54, $pop56, $pop58
.LBB36_14:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push38=, 0
	i32.store	24($8), $pop38
	i32.eqz 	$push89=, $4
	br_if   	0, $pop89
	call    	_ZdlPv@FUNCTION, $4
.LBB36_16:
	end_block
	i32.const	$push46=, 0
	i32.const	$push44=, 48
	i32.add 	$push45=, $8, $pop44
	i32.store	__stack_pointer($pop46), $pop45
	copy_local	$push90=, $6
	.endfunc
.Lfunc_end36:
	.size	_ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorEl, .Lfunc_end36-_ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorEl

	.section	.text._ZN5eosio15margin_positionC2Ev,"axG",@progbits,_ZN5eosio15margin_positionC2Ev,comdat
	.hidden	_ZN5eosio15margin_positionC2Ev
	.weak	_ZN5eosio15margin_positionC2Ev
	.type	_ZN5eosio15margin_positionC2Ev,@function
_ZN5eosio15margin_positionC2Ev:
	.param  	i32
	.result 	i32
	.local  	i64, i32, i32
	i64.const	$push35=, 0
	i64.store	8($0), $pop35
	i32.const	$push0=, 16
	i32.add 	$push34=, $0, $pop0
	tee_local	$push33=, $2=, $pop34
	i64.const	$push1=, 1398362884
	i64.store	0($pop33), $pop1
	i32.const	$push32=, 1
	i32.const	$push2=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop32, $pop2
	i64.load	$push3=, 0($2)
	i64.const	$push31=, 8
	i64.shr_u	$1=, $pop3, $pop31
	i32.const	$2=, 0
.LBB37_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push4=, $1
	i32.const	$push38=, 24
	i32.shl 	$push5=, $pop4, $pop38
	i32.const	$push37=, -1073741825
	i32.add 	$push6=, $pop5, $pop37
	i32.const	$push36=, 452984830
	i32.gt_u	$push7=, $pop6, $pop36
	br_if   	1, $pop7
	block   	
	i64.const	$push43=, 8
	i64.shr_u	$push42=, $1, $pop43
	tee_local	$push41=, $1=, $pop42
	i64.const	$push40=, 255
	i64.and 	$push8=, $pop41, $pop40
	i64.const	$push39=, 0
	i64.ne  	$push9=, $pop8, $pop39
	br_if   	0, $pop9
.LBB37_3:
	loop    	
	i64.const	$push48=, 8
	i64.shr_u	$push47=, $1, $pop48
	tee_local	$push46=, $1=, $pop47
	i64.const	$push45=, 255
	i64.and 	$push10=, $pop46, $pop45
	i64.const	$push44=, 0
	i64.ne  	$push11=, $pop10, $pop44
	br_if   	3, $pop11
	i32.const	$push52=, 1
	i32.add 	$push51=, $2, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.const	$push49=, 7
	i32.lt_s	$push12=, $pop50, $pop49
	br_if   	0, $pop12
.LBB37_5:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push56=, 1
	i32.add 	$push55=, $2, $pop56
	tee_local	$push54=, $2=, $pop55
	i32.const	$push53=, 7
	i32.lt_s	$push13=, $pop54, $pop53
	br_if   	0, $pop13
	br      	2
.LBB37_6:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB37_7:
	end_block
	i32.const	$push14=, .L.str.66
	call    	eosio_assert@FUNCTION, $3, $pop14
	i32.const	$push15=, 40
	i32.add 	$push61=, $0, $pop15
	tee_local	$push60=, $2=, $pop61
	i64.const	$push16=, 1398362884
	i64.store	0($pop60), $pop16
	i64.const	$push59=, 0
	i64.store	32($0), $pop59
	i32.const	$push58=, 1
	i32.const	$push17=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop58, $pop17
	i64.load	$push18=, 0($2)
	i64.const	$push57=, 8
	i64.shr_u	$1=, $pop18, $pop57
	i32.const	$2=, 0
.LBB37_8:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push19=, $1
	i32.const	$push64=, 24
	i32.shl 	$push20=, $pop19, $pop64
	i32.const	$push63=, -1073741825
	i32.add 	$push21=, $pop20, $pop63
	i32.const	$push62=, 452984830
	i32.gt_u	$push22=, $pop21, $pop62
	br_if   	1, $pop22
	block   	
	i64.const	$push69=, 8
	i64.shr_u	$push68=, $1, $pop69
	tee_local	$push67=, $1=, $pop68
	i64.const	$push66=, 255
	i64.and 	$push23=, $pop67, $pop66
	i64.const	$push65=, 0
	i64.ne  	$push24=, $pop23, $pop65
	br_if   	0, $pop24
.LBB37_10:
	loop    	
	i64.const	$push74=, 8
	i64.shr_u	$push73=, $1, $pop74
	tee_local	$push72=, $1=, $pop73
	i64.const	$push71=, 255
	i64.and 	$push25=, $pop72, $pop71
	i64.const	$push70=, 0
	i64.ne  	$push26=, $pop25, $pop70
	br_if   	3, $pop26
	i32.const	$push78=, 1
	i32.add 	$push77=, $2, $pop78
	tee_local	$push76=, $2=, $pop77
	i32.const	$push75=, 7
	i32.lt_s	$push27=, $pop76, $pop75
	br_if   	0, $pop27
.LBB37_12:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push82=, 1
	i32.add 	$push81=, $2, $pop82
	tee_local	$push80=, $2=, $pop81
	i32.const	$push79=, 7
	i32.lt_s	$push28=, $pop80, $pop79
	br_if   	0, $pop28
	br      	2
.LBB37_13:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB37_14:
	end_block
	i32.const	$push29=, .L.str.66
	call    	eosio_assert@FUNCTION, $3, $pop29
	i64.const	$push30=, 0
	i64.store	56($0), $pop30
	copy_local	$push83=, $0
	.endfunc
.Lfunc_end37:
	.size	_ZN5eosio15margin_positionC2Ev, .Lfunc_end37-_ZN5eosio15margin_positionC2Ev

	.section	.text._ZZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorElENKUlRT_E_clINS8_4itemEEEDaSA_,"axG",@progbits,_ZZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorElENKUlRT_E_clINS8_4itemEEEDaSA_,comdat
	.hidden	_ZZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorElENKUlRT_E_clINS8_4itemEEEDaSA_
	.weak	_ZZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorElENKUlRT_E_clINS8_4itemEEEDaSA_
	.type	_ZZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorElENKUlRT_E_clINS8_4itemEEEDaSA_,@function
_ZZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorElENKUlRT_E_clINS8_4itemEEEDaSA_:
	.param  	i32, i32
	.local  	i32, i32
	i32.load	$push105=, 4($0)
	tee_local	$push104=, $2=, $pop105
	i32.load	$push1=, 8($pop104)
	i32.load	$push0=, 4($2)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($2)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop7
	i32.load	$push8=, 4($2)
	i32.const	$push103=, 8
	i32.add 	$push102=, $pop8, $pop103
	tee_local	$push101=, $3=, $pop102
	i32.store	4($2), $pop101
	i32.load	$push9=, 8($2)
	i32.sub 	$push10=, $pop9, $3
	i32.const	$push100=, 7
	i32.gt_u	$push11=, $pop10, $pop100
	i32.const	$push99=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop11, $pop99
	i32.const	$push98=, 8
	i32.add 	$push12=, $1, $pop98
	i32.load	$push13=, 4($2)
	i32.const	$push97=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop13, $pop97
	i32.load	$push14=, 4($2)
	i32.const	$push96=, 8
	i32.add 	$push95=, $pop14, $pop96
	tee_local	$push94=, $3=, $pop95
	i32.store	4($2), $pop94
	i32.load	$push15=, 8($2)
	i32.sub 	$push16=, $pop15, $3
	i32.const	$push93=, 7
	i32.gt_u	$push17=, $pop16, $pop93
	i32.const	$push92=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop17, $pop92
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.load	$push20=, 4($2)
	i32.const	$push91=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop19, $pop20, $pop91
	i32.load	$push21=, 4($2)
	i32.const	$push90=, 8
	i32.add 	$push89=, $pop21, $pop90
	tee_local	$push88=, $3=, $pop89
	i32.store	4($2), $pop88
	i32.load	$push22=, 8($2)
	i32.sub 	$push23=, $pop22, $3
	i32.const	$push87=, 7
	i32.gt_u	$push24=, $pop23, $pop87
	i32.const	$push86=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop24, $pop86
	i32.const	$push25=, 24
	i32.add 	$push26=, $1, $pop25
	i32.load	$push27=, 4($2)
	i32.const	$push85=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop26, $pop27, $pop85
	i32.load	$push28=, 4($2)
	i32.const	$push84=, 8
	i32.add 	$push83=, $pop28, $pop84
	tee_local	$push82=, $3=, $pop83
	i32.store	4($2), $pop82
	i32.load	$push29=, 8($2)
	i32.sub 	$push30=, $pop29, $3
	i32.const	$push81=, 7
	i32.gt_u	$push31=, $pop30, $pop81
	i32.const	$push80=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop31, $pop80
	i32.const	$push32=, 32
	i32.add 	$push33=, $1, $pop32
	i32.load	$push34=, 4($2)
	i32.const	$push79=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop33, $pop34, $pop79
	i32.load	$push35=, 4($2)
	i32.const	$push78=, 8
	i32.add 	$push77=, $pop35, $pop78
	tee_local	$push76=, $3=, $pop77
	i32.store	4($2), $pop76
	i32.load	$push36=, 8($2)
	i32.sub 	$push37=, $pop36, $3
	i32.const	$push75=, 7
	i32.gt_u	$push38=, $pop37, $pop75
	i32.const	$push74=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop38, $pop74
	i32.const	$push39=, 40
	i32.add 	$push40=, $1, $pop39
	i32.load	$push41=, 4($2)
	i32.const	$push73=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop40, $pop41, $pop73
	i32.load	$push42=, 4($2)
	i32.const	$push72=, 8
	i32.add 	$push71=, $pop42, $pop72
	tee_local	$push70=, $3=, $pop71
	i32.store	4($2), $pop70
	i32.load	$push43=, 8($2)
	i32.sub 	$push44=, $pop43, $3
	i32.const	$push69=, 7
	i32.gt_u	$push45=, $pop44, $pop69
	i32.const	$push68=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop45, $pop68
	i32.const	$push46=, 48
	i32.add 	$push47=, $1, $pop46
	i32.load	$push48=, 4($2)
	i32.const	$push67=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop47, $pop48, $pop67
	i32.load	$push49=, 4($2)
	i32.const	$push66=, 8
	i32.add 	$push65=, $pop49, $pop66
	tee_local	$push64=, $3=, $pop65
	i32.store	4($2), $pop64
	i32.load	$push50=, 8($2)
	i32.sub 	$push51=, $pop50, $3
	i32.const	$push63=, 7
	i32.gt_u	$push52=, $pop51, $pop63
	i32.const	$push62=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop52, $pop62
	i32.const	$push53=, 56
	i32.add 	$push54=, $1, $pop53
	i32.load	$push55=, 4($2)
	i32.const	$push61=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop54, $pop55, $pop61
	i32.load	$push56=, 4($2)
	i32.const	$push60=, 8
	i32.add 	$push57=, $pop56, $pop60
	i32.store	4($2), $pop57
	i32.load	$push58=, 8($0)
	i32.load	$2=, 0($pop58)
	i32.const	$push59=, -1
	i32.store	72($1), $pop59
	i32.store	68($1), $2
	.endfunc
.Lfunc_end38:
	.size	_ZZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorElENKUlRT_E_clINS8_4itemEEEDaSA_, .Lfunc_end38-_ZZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorElENKUlRT_E_clINS8_4itemEEEDaSA_

	.section	.text._ZNSt3__16vectorIN5eosio11multi_indexILy10497546923563548672ENS1_15margin_positionEJNS1_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8get_callEvEEEEEEEE8item_ptrENS_9allocatorISB_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSA_4itemENS_14default_deleteISH_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio11multi_indexILy10497546923563548672ENS1_15margin_positionEJNS1_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8get_callEvEEEEEEEE8item_ptrENS_9allocatorISB_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSA_4itemENS_14default_deleteISH_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio11multi_indexILy10497546923563548672ENS1_15margin_positionEJNS1_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8get_callEvEEEEEEEE8item_ptrENS_9allocatorISB_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSA_4itemENS_14default_deleteISH_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio11multi_indexILy10497546923563548672ENS1_15margin_positionEJNS1_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8get_callEvEEEEEEEE8item_ptrENS_9allocatorISB_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSA_4itemENS_14default_deleteISH_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio11multi_indexILy10497546923563548672ENS1_15margin_positionEJNS1_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8get_callEvEEEEEEEE8item_ptrENS_9allocatorISB_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSA_4itemENS_14default_deleteISH_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio11multi_indexILy10497546923563548672ENS1_15margin_positionEJNS1_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8get_callEvEEEEEEEE8item_ptrENS_9allocatorISB_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSA_4itemENS_14default_deleteISH_EEEERyRlEEEvDpOT_:
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
.LBB39_3:
	end_block
	i32.const	$push11=, 24
	i32.mul 	$push12=, $7, $pop11
	i32.call	$6=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB39_4:
	end_block
	i32.const	$7=, 0
	i32.const	$6=, 0
	br      	1
.LBB39_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB39_6:
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
.LBB39_8:
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
.LBB39_10:
	end_block
	copy_local	$6=, $7
.LBB39_11:
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
.LBB39_13:
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
.LBB39_15:
	end_block
	i32.ne  	$push39=, $6, $7
	br_if   	0, $pop39
.LBB39_16:
	end_loop
	end_block
	block   	
	i32.eqz 	$push81=, $6
	br_if   	0, $pop81
	call    	_ZdlPv@FUNCTION, $6
.LBB39_18:
	end_block
	.endfunc
.Lfunc_end39:
	.size	_ZNSt3__16vectorIN5eosio11multi_indexILy10497546923563548672ENS1_15margin_positionEJNS1_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8get_callEvEEEEEEEE8item_ptrENS_9allocatorISB_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSA_4itemENS_14default_deleteISH_EEEERyRlEEEvDpOT_, .Lfunc_end39-_ZNSt3__16vectorIN5eosio11multi_indexILy10497546923563548672ENS1_15margin_positionEJNS1_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8get_callEvEEEEEEEE8item_ptrENS_9allocatorISB_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSA_4itemENS_14default_deleteISH_EEEERyRlEEEvDpOT_

	.text
	.hidden	_ZNK5eosio12market_state13initial_stateEv
	.globl	_ZNK5eosio12market_state13initial_stateEv
	.type	_ZNK5eosio12market_state13initial_stateEv,@function
_ZNK5eosio12market_state13initial_stateEv:
	.param  	i32
	.result 	i32
	i32.const	$push0=, 448
	i32.add 	$push1=, $0, $pop0
	i32.load	$push2=, 0($pop1)
	.endfunc
.Lfunc_end40:
	.size	_ZNK5eosio12market_state13initial_stateEv, .Lfunc_end40-_ZNK5eosio12market_state13initial_stateEv

	.hidden	_ZN5eosio12market_state4lendEyRKNS_14extended_assetE
	.globl	_ZN5eosio12market_state4lendEyRKNS_14extended_assetE
	.type	_ZN5eosio12market_state4lendEyRKNS_14extended_assetE,@function
_ZN5eosio12market_state4lendEyRKNS_14extended_assetE:
	.param  	i32, i64, i32
	.local  	i64, i64, i32, i64, f64, f64, i32
	i32.const	$push64=, 0
	i32.const	$push61=, 0
	i32.load	$push62=, __stack_pointer($pop61)
	i32.const	$push63=, 48
	i32.sub 	$push73=, $pop62, $pop63
	tee_local	$push72=, $9=, $pop73
	i32.store	__stack_pointer($pop64), $pop72
	i64.load	$push71=, 8($2)
	tee_local	$push70=, $3=, $pop71
	i64.store	32($9), $pop70
	i32.load	$5=, 440($0)
	i64.load	$4=, 16($2)
	i64.load	$6=, 0($2)
	i32.const	$push1=, 8
	i32.add 	$push2=, $9, $pop1
	i64.store	0($pop2), $3
	i64.const	$push3=, 0
	i64.sub 	$push69=, $pop3, $6
	tee_local	$push68=, $6=, $pop69
	i64.store	24($9), $pop68
	i64.store	40($9), $4
	i32.const	$push4=, 16
	i32.add 	$push5=, $9, $pop4
	i64.store	0($pop5), $4
	i64.store	0($9), $6
	call    	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE@FUNCTION, $5, $1, $9, $9
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push6=, 56
	i32.add 	$push7=, $0, $pop6
	i64.load	$push8=, 0($pop7)
	i64.ne  	$push9=, $3, $pop8
	br_if   	0, $pop9
	i32.const	$push10=, 64
	i32.add 	$push11=, $0, $pop10
	i64.load	$push0=, 0($pop11)
	i64.ne  	$push12=, $4, $pop0
	br_if   	0, $pop12
	i64.load	$4=, 0($2)
	i32.const	$push42=, 80
	i32.add 	$push43=, $0, $pop42
	i64.load	$push75=, 0($pop43)
	tee_local	$push74=, $3=, $pop75
	i64.const	$push44=, 1
	i64.lt_s	$push45=, $pop74, $pop44
	br_if   	1, $pop45
	i32.const	$push49=, 136
	i32.add 	$push50=, $0, $pop49
	f64.load	$push79=, 0($pop50)
	tee_local	$push78=, $8=, $pop79
	f64.convert_s/i64	$push77=, $4
	tee_local	$push76=, $7=, $pop77
	f64.mul 	$push51=, $8, $pop76
	f64.convert_s/i64	$push52=, $3
	f64.div 	$push53=, $pop51, $pop52
	f64.add 	$8=, $pop78, $pop53
	br      	2
.LBB41_4:
	end_block
	block   	
	i32.const	$push14=, 152
	i32.add 	$push15=, $0, $pop14
	i64.load	$push16=, 0($pop15)
	i64.ne  	$push17=, $3, $pop16
	br_if   	0, $pop17
	i32.const	$push18=, 160
	i32.add 	$push19=, $0, $pop18
	i64.load	$push13=, 0($pop19)
	i64.ne  	$push20=, $4, $pop13
	br_if   	0, $pop20
	i64.load	$4=, 0($2)
	i32.const	$push23=, 176
	i32.add 	$push24=, $0, $pop23
	i64.load	$push81=, 0($pop24)
	tee_local	$push80=, $3=, $pop81
	i64.const	$push25=, 1
	i64.lt_s	$push26=, $pop80, $pop25
	br_if   	3, $pop26
	i32.const	$push30=, 232
	i32.add 	$push31=, $0, $pop30
	f64.load	$push85=, 0($pop31)
	tee_local	$push84=, $8=, $pop85
	f64.convert_s/i64	$push83=, $4
	tee_local	$push82=, $7=, $pop83
	f64.mul 	$push32=, $8, $pop82
	f64.convert_s/i64	$push33=, $3
	f64.div 	$push34=, $pop32, $pop33
	f64.add 	$8=, $pop84, $pop34
	br      	4
.LBB41_8:
	end_block
	i32.const	$push22=, 0
	i32.const	$push21=, .L.str.6
	call    	eosio_assert@FUNCTION, $pop22, $pop21
	br      	4
.LBB41_9:
	end_block
	f64.convert_s/i64	$push87=, $4
	tee_local	$push86=, $7=, $pop87
	i32.const	$push46=, 136
	i32.add 	$push47=, $0, $pop46
	f64.load	$push48=, 0($pop47)
	f64.add 	$8=, $pop86, $pop48
.LBB41_10:
	end_block
	i32.const	$push55=, 80
	i32.add 	$push56=, $0, $pop55
	i64.add 	$push54=, $3, $4
	i64.store	0($pop56), $pop54
	i32.const	$push57=, 136
	i32.add 	$push58=, $0, $pop57
	f64.store	0($pop58), $8
	i32.const	$push59=, 360
	i32.add 	$push60=, $0, $pop59
	call    	_ZN5eosio12market_state18adjust_lend_sharesEyRNS_11multi_indexILy10163845904742744064ENS_13loan_positionEJEEEd@FUNCTION, $9, $1, $pop60, $7
	br      	2
.LBB41_11:
	end_block
	f64.convert_s/i64	$push89=, $4
	tee_local	$push88=, $7=, $pop89
	i32.const	$push27=, 232
	i32.add 	$push28=, $0, $pop27
	f64.load	$push29=, 0($pop28)
	f64.add 	$8=, $pop88, $pop29
.LBB41_12:
	end_block
	i32.const	$push36=, 176
	i32.add 	$push37=, $0, $pop36
	i64.add 	$push35=, $3, $4
	i64.store	0($pop37), $pop35
	i32.const	$push38=, 232
	i32.add 	$push39=, $0, $pop38
	f64.store	0($pop39), $8
	i32.const	$push40=, 400
	i32.add 	$push41=, $0, $pop40
	call    	_ZN5eosio12market_state18adjust_lend_sharesEyRNS_11multi_indexILy10163845904742744064ENS_13loan_positionEJEEEd@FUNCTION, $9, $1, $pop41, $7
.LBB41_13:
	end_block
	i32.const	$push67=, 0
	i32.const	$push65=, 48
	i32.add 	$push66=, $9, $pop65
	i32.store	__stack_pointer($pop67), $pop66
	.endfunc
.Lfunc_end41:
	.size	_ZN5eosio12market_state4lendEyRKNS_14extended_assetE, .Lfunc_end41-_ZN5eosio12market_state4lendEyRKNS_14extended_assetE

	.hidden	_ZN5eosio12market_state18adjust_lend_sharesEyRNS_11multi_indexILy10163845904742744064ENS_13loan_positionEJEEEd
	.globl	_ZN5eosio12market_state18adjust_lend_sharesEyRNS_11multi_indexILy10163845904742744064ENS_13loan_positionEJEEEd
	.type	_ZN5eosio12market_state18adjust_lend_sharesEyRNS_11multi_indexILy10163845904742744064ENS_13loan_positionEJEEEd,@function
_ZN5eosio12market_state18adjust_lend_sharesEyRNS_11multi_indexILy10163845904742744064ENS_13loan_positionEJEEEd:
	.param  	i32, i64, i32, f64
	.local  	i32, i32, i32, i64, i32, i32, i32
	i32.const	$push90=, 0
	i32.const	$push87=, 0
	i32.load	$push88=, __stack_pointer($pop87)
	i32.const	$push89=, 32
	i32.sub 	$push117=, $pop88, $pop89
	tee_local	$push116=, $10=, $pop117
	i32.store	__stack_pointer($pop90), $pop116
	block   	
	i32.const	$push0=, 28
	i32.add 	$push1=, $2, $pop0
	i32.load	$push115=, 0($pop1)
	tee_local	$push114=, $9=, $pop115
	i32.load	$push113=, 24($2)
	tee_local	$push112=, $4=, $pop113
	i32.eq  	$push2=, $pop114, $pop112
	br_if   	0, $pop2
	i32.const	$push118=, -24
	i32.add 	$8=, $9, $pop118
	i32.const	$push3=, 0
	i32.sub 	$5=, $pop3, $4
.LBB42_2:
	loop    	
	i32.load	$push4=, 0($8)
	i64.load	$push5=, 0($pop4)
	i64.eq  	$push6=, $pop5, $1
	br_if   	1, $pop6
	copy_local	$9=, $8
	i32.const	$push122=, -24
	i32.add 	$push121=, $8, $pop122
	tee_local	$push120=, $6=, $pop121
	copy_local	$8=, $pop120
	i32.add 	$push7=, $6, $5
	i32.const	$push119=, -24
	i32.ne  	$push8=, $pop7, $pop119
	br_if   	0, $pop8
.LBB42_4:
	end_loop
	end_block
	block   	
	block   	
	block   	
	block   	
	i32.eq  	$push9=, $9, $4
	br_if   	0, $pop9
	i32.const	$push10=, -24
	i32.add 	$push11=, $9, $pop10
	i32.load	$push124=, 0($pop11)
	tee_local	$push123=, $8=, $pop124
	i32.load	$push12=, 16($pop123)
	i32.eq  	$push13=, $pop12, $2
	i32.const	$push14=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop13, $pop14
	br_if   	1, $8
	br      	2
.LBB42_6:
	end_block
	i64.load	$push16=, 0($2)
	i64.load	$push15=, 8($2)
	i64.const	$push17=, -8282898168966807552
	i32.call	$push126=, db_find_i64@FUNCTION, $pop16, $pop15, $pop17, $1
	tee_local	$push125=, $8=, $pop126
	i32.const	$push18=, 0
	i32.lt_s	$push19=, $pop125, $pop18
	br_if   	1, $pop19
	i32.call	$push128=, _ZNK5eosio11multi_indexILy10163845904742744064ENS_13loan_positionEJEE31load_object_by_primary_iteratorEl@FUNCTION, $2, $8
	tee_local	$push127=, $8=, $pop128
	i32.load	$push20=, 16($pop127)
	i32.eq  	$push21=, $pop20, $2
	i32.const	$push22=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop21, $pop22
.LBB42_8:
	end_block
	i32.const	$push24=, 1
	i32.const	$push23=, .L.str.90
	call    	eosio_assert@FUNCTION, $pop24, $pop23
	i32.load	$push25=, 16($8)
	i32.eq  	$push26=, $pop25, $2
	i32.const	$push27=, .L.str.84
	call    	eosio_assert@FUNCTION, $pop26, $pop27
	i64.load	$push28=, 0($2)
	i64.call	$push29=, current_receiver@FUNCTION
	i64.eq  	$push30=, $pop28, $pop29
	i32.const	$push31=, .L.str.85
	call    	eosio_assert@FUNCTION, $pop30, $pop31
	f64.load	$push32=, 8($8)
	f64.add 	$push137=, $pop32, $3
	tee_local	$push136=, $3=, $pop137
	f64.store	8($8), $pop136
	i64.load	$1=, 0($8)
	f64.const	$push33=, 0x0p0
	f64.ge  	$push34=, $3, $pop33
	i32.const	$push35=, .L.str.74
	call    	eosio_assert@FUNCTION, $pop34, $pop35
	i64.load	$push36=, 0($8)
	i64.eq  	$push37=, $1, $pop36
	i32.const	$push38=, .L.str.86
	call    	eosio_assert@FUNCTION, $pop37, $pop38
	i32.const	$push135=, 1
	i32.const	$push39=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop135, $pop39
	i32.const	$push106=, 16
	i32.add 	$push107=, $10, $pop106
	i32.const	$push40=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop107, $8, $pop40
	i32.const	$push134=, 1
	i32.const	$push133=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop134, $pop133
	i32.const	$push108=, 16
	i32.add 	$push109=, $10, $pop108
	i32.const	$push132=, 8
	i32.or  	$push42=, $pop109, $pop132
	i32.const	$push131=, 8
	i32.add 	$push41=, $8, $pop131
	i32.const	$push130=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop42, $pop41, $pop130
	i32.load	$push43=, 20($8)
	i64.const	$push44=, 0
	i32.const	$push110=, 16
	i32.add 	$push111=, $10, $pop110
	i32.const	$push129=, 16
	call    	db_update_i64@FUNCTION, $pop43, $pop44, $pop111, $pop129
	i64.load	$push45=, 16($2)
	i64.lt_u	$push46=, $1, $pop45
	br_if   	1, $pop46
	i32.const	$push138=, 16
	i32.add 	$push53=, $2, $pop138
	i64.const	$push51=, -2
	i64.const	$push49=, 1
	i64.add 	$push50=, $1, $pop49
	i64.const	$push47=, -3
	i64.gt_u	$push48=, $1, $pop47
	i64.select	$push52=, $pop51, $pop50, $pop48
	i64.store	0($pop53), $pop52
	br      	1
.LBB42_10:
	end_block
	i64.load	$push54=, 0($2)
	i64.call	$push55=, current_receiver@FUNCTION
	i64.eq  	$push56=, $pop54, $pop55
	i32.const	$push57=, .L.str.89
	call    	eosio_assert@FUNCTION, $pop56, $pop57
	i32.const	$push151=, 32
	i32.call	$push150=, _Znwj@FUNCTION, $pop151
	tee_local	$push149=, $8=, $pop150
	i32.store	16($pop149), $2
	f64.store	8($8), $3
	i64.store	0($8), $1
	f64.const	$push58=, 0x0p0
	f64.ge  	$push59=, $3, $pop58
	i32.const	$push60=, .L.str.74
	call    	eosio_assert@FUNCTION, $pop59, $pop60
	i32.const	$push62=, 1
	i32.const	$push61=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop62, $pop61
	i32.const	$push94=, 16
	i32.add 	$push95=, $10, $pop94
	i32.const	$push63=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop95, $8, $pop63
	i32.const	$push148=, 1
	i32.const	$push147=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop148, $pop147
	i32.const	$push96=, 16
	i32.add 	$push97=, $10, $pop96
	i32.const	$push146=, 8
	i32.or  	$push65=, $pop97, $pop146
	i32.const	$push145=, 8
	i32.add 	$push64=, $8, $pop145
	i32.const	$push144=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop65, $pop64, $pop144
	i64.load	$push66=, 8($2)
	i64.const	$push67=, -8282898168966807552
	i64.load	$push143=, 0($8)
	tee_local	$push142=, $7=, $pop143
	i32.const	$push98=, 16
	i32.add 	$push99=, $10, $pop98
	i32.const	$push141=, 16
	i32.call	$push140=, db_store_i64@FUNCTION, $pop66, $pop67, $1, $pop142, $pop99, $pop141
	tee_local	$push139=, $9=, $pop140
	i32.store	20($8), $pop139
	block   	
	i64.load	$push68=, 16($2)
	i64.lt_u	$push69=, $7, $pop68
	br_if   	0, $pop69
	i32.const	$push152=, 16
	i32.add 	$push76=, $2, $pop152
	i64.const	$push74=, -2
	i64.const	$push72=, 1
	i64.add 	$push73=, $7, $pop72
	i64.const	$push70=, -3
	i64.gt_u	$push71=, $7, $pop70
	i64.select	$push75=, $pop74, $pop73, $pop71
	i64.store	0($pop76), $pop75
.LBB42_12:
	end_block
	i32.store	8($10), $8
	i64.load	$push159=, 0($8)
	tee_local	$push158=, $1=, $pop159
	i64.store	16($10), $pop158
	i32.store	4($10), $9
	block   	
	block   	
	i32.const	$push79=, 28
	i32.add 	$push157=, $2, $pop79
	tee_local	$push156=, $5=, $pop157
	i32.load	$push155=, 0($pop156)
	tee_local	$push154=, $6=, $pop155
	i32.const	$push153=, 32
	i32.add 	$push77=, $2, $pop153
	i32.load	$push78=, 0($pop77)
	i32.ge_u	$push80=, $pop154, $pop78
	br_if   	0, $pop80
	i64.store	8($6), $1
	i32.store	16($6), $9
	i32.const	$push83=, 0
	i32.store	8($10), $pop83
	i32.store	0($6), $8
	i32.const	$push84=, 24
	i32.add 	$push85=, $6, $pop84
	i32.store	0($5), $pop85
	br      	1
.LBB42_14:
	end_block
	i32.const	$push81=, 24
	i32.add 	$push82=, $2, $pop81
	i32.const	$push100=, 8
	i32.add 	$push101=, $10, $pop100
	i32.const	$push102=, 16
	i32.add 	$push103=, $10, $pop102
	i32.const	$push104=, 4
	i32.add 	$push105=, $10, $pop104
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy10163845904742744064ENS1_13loan_positionEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_@FUNCTION, $pop82, $pop101, $pop103, $pop105
.LBB42_15:
	end_block
	i32.load	$8=, 8($10)
	i32.const	$push86=, 0
	i32.store	8($10), $pop86
	i32.eqz 	$push160=, $8
	br_if   	0, $pop160
	call    	_ZdlPv@FUNCTION, $8
.LBB42_17:
	end_block
	i32.const	$push93=, 0
	i32.const	$push91=, 32
	i32.add 	$push92=, $10, $pop91
	i32.store	__stack_pointer($pop93), $pop92
	.endfunc
.Lfunc_end42:
	.size	_ZN5eosio12market_state18adjust_lend_sharesEyRNS_11multi_indexILy10163845904742744064ENS_13loan_positionEJEEEd, .Lfunc_end42-_ZN5eosio12market_state18adjust_lend_sharesEyRNS_11multi_indexILy10163845904742744064ENS_13loan_positionEJEEEd

	.section	.text._ZNK5eosio11multi_indexILy10163845904742744064ENS_13loan_positionEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5eosio11multi_indexILy10163845904742744064ENS_13loan_positionEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5eosio11multi_indexILy10163845904742744064ENS_13loan_positionEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5eosio11multi_indexILy10163845904742744064ENS_13loan_positionEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK5eosio11multi_indexILy10163845904742744064ENS_13loan_positionEJEE31load_object_by_primary_iteratorEl,@function
_ZNK5eosio11multi_indexILy10163845904742744064ENS_13loan_positionEJEE31load_object_by_primary_iteratorEl:
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
.LBB43_2:
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
.LBB43_4:
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
.LBB43_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push73=, 0
	i32.call	$push72=, db_get_i64@FUNCTION, $1, $pop14, $pop73
	tee_local	$push71=, $4=, $pop72
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop71, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.82
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
.LBB43_8:
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
.LBB43_9:
	end_block
	i32.const	$push26=, 32
	i32.call	$push93=, _Znwj@FUNCTION, $pop26
	tee_local	$push92=, $6=, $pop93
	i32.store	16($pop92), $0
	i32.const	$push27=, 7
	i32.gt_u	$push28=, $4, $pop27
	i32.const	$push29=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop28, $pop29
	i32.const	$push30=, 8
	i32.call	$drop=, memcpy@FUNCTION, $6, $7, $pop30
	i32.const	$push31=, -8
	i32.and 	$push32=, $4, $pop31
	i32.const	$push91=, 8
	i32.ne  	$push33=, $pop32, $pop91
	i32.const	$push90=, .L.str.83
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
.LBB43_11:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push52=, 24
	i32.add 	$push53=, $8, $pop52
	i32.const	$push54=, 16
	i32.add 	$push55=, $8, $pop54
	i32.const	$push56=, 12
	i32.add 	$push57=, $8, $pop56
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy10163845904742744064ENS1_13loan_positionEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop53, $pop55, $pop57
.LBB43_12:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push43=, 0
	i32.store	24($8), $pop43
	i32.eqz 	$push94=, $4
	br_if   	0, $pop94
	call    	_ZdlPv@FUNCTION, $4
.LBB43_14:
	end_block
	i32.const	$push51=, 0
	i32.const	$push49=, 32
	i32.add 	$push50=, $8, $pop49
	i32.store	__stack_pointer($pop51), $pop50
	copy_local	$push95=, $6
	.endfunc
.Lfunc_end43:
	.size	_ZNK5eosio11multi_indexILy10163845904742744064ENS_13loan_positionEJEE31load_object_by_primary_iteratorEl, .Lfunc_end43-_ZNK5eosio11multi_indexILy10163845904742744064ENS_13loan_positionEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZNSt3__16vectorIN5eosio11multi_indexILy10163845904742744064ENS1_13loan_positionEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio11multi_indexILy10163845904742744064ENS1_13loan_positionEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio11multi_indexILy10163845904742744064ENS1_13loan_positionEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio11multi_indexILy10163845904742744064ENS1_13loan_positionEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio11multi_indexILy10163845904742744064ENS1_13loan_positionEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio11multi_indexILy10163845904742744064ENS1_13loan_positionEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_:
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
.LBB44_3:
	end_block
	i32.const	$push11=, 24
	i32.mul 	$push12=, $7, $pop11
	i32.call	$6=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB44_4:
	end_block
	i32.const	$7=, 0
	i32.const	$6=, 0
	br      	1
.LBB44_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB44_6:
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
.LBB44_8:
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
.LBB44_10:
	end_block
	copy_local	$6=, $7
.LBB44_11:
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
.LBB44_13:
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
.LBB44_15:
	end_block
	i32.ne  	$push39=, $6, $7
	br_if   	0, $pop39
.LBB44_16:
	end_loop
	end_block
	block   	
	i32.eqz 	$push81=, $6
	br_if   	0, $pop81
	call    	_ZdlPv@FUNCTION, $6
.LBB44_18:
	end_block
	.endfunc
.Lfunc_end44:
	.size	_ZNSt3__16vectorIN5eosio11multi_indexILy10163845904742744064ENS1_13loan_positionEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_, .Lfunc_end44-_ZNSt3__16vectorIN5eosio11multi_indexILy10163845904742744064ENS1_13loan_positionEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_

	.text
	.hidden	_ZN5eosio12market_state6unlendEydRKNS_15extended_symbolE
	.globl	_ZN5eosio12market_state6unlendEydRKNS_15extended_symbolE
	.type	_ZN5eosio12market_state6unlendEydRKNS_15extended_symbolE,@function
_ZN5eosio12market_state6unlendEydRKNS_15extended_symbolE:
	.param  	i32, i64, f64, i32
	.local  	i64, i64, i32, f64, f64, i32
	i32.const	$push113=, 0
	i32.const	$push110=, 0
	i32.load	$push111=, __stack_pointer($pop110)
	i32.const	$push112=, 112
	i32.sub 	$push142=, $pop111, $pop112
	tee_local	$push141=, $9=, $pop142
	i32.store	__stack_pointer($pop113), $pop141
	f64.const	$push1=, 0x0p0
	f64.gt  	$push2=, $2, $pop1
	i32.const	$push3=, .L.str.7
	call    	eosio_assert@FUNCTION, $pop2, $pop3
	i32.const	$push4=, 360
	i32.add 	$push5=, $0, $pop4
	f64.neg 	$push6=, $2
	call    	_ZN5eosio12market_state18adjust_lend_sharesEyRNS_11multi_indexILy10163845904742744064ENS_13loan_positionEJEEEd@FUNCTION, $9, $1, $pop5, $pop6
	i32.const	$push7=, .L.str.8
	call    	prints@FUNCTION, $pop7
	i32.const	$push8=, 1
	call    	_ZNK5eosio11symbol_type5printEb@FUNCTION, $3, $pop8
	i32.const	$push9=, .L.str.112
	call    	prints@FUNCTION, $pop9
	i64.load	$push10=, 8($3)
	call    	printn@FUNCTION, $pop10
	i64.load	$5=, 8($3)
	block   	
	block   	
	i64.load	$push140=, 0($3)
	tee_local	$push139=, $4=, $pop140
	i32.const	$push11=, 56
	i32.add 	$push12=, $0, $pop11
	i64.load	$push13=, 0($pop12)
	i64.ne  	$push14=, $pop139, $pop13
	br_if   	0, $pop14
	i32.const	$push15=, 64
	i32.add 	$push16=, $0, $pop15
	i64.load	$push0=, 0($pop16)
	i64.ne  	$push17=, $5, $pop0
	br_if   	0, $pop17
	i32.const	$push117=, 96
	i32.add 	$push118=, $9, $pop117
	i32.const	$push72=, 8
	i32.add 	$push162=, $pop118, $pop72
	tee_local	$push161=, $6=, $pop162
	i32.const	$push69=, 120
	i32.add 	$push70=, $0, $pop69
	i64.load	$push71=, 0($pop70)
	i64.store	0($pop161), $pop71
	i32.const	$push73=, 112
	i32.add 	$push74=, $0, $pop73
	i64.load	$push75=, 0($pop74)
	i64.store	96($9), $pop75
	i32.const	$push76=, .L.str.72
	call    	prints@FUNCTION, $pop76
	call    	printdf@FUNCTION, $2
	i32.const	$push77=, .L.str.73
	call    	prints@FUNCTION, $pop77
	i32.const	$push78=, 136
	i32.add 	$push160=, $0, $pop78
	tee_local	$push159=, $3=, $pop160
	f64.load	$push79=, 0($pop159)
	call    	printdf@FUNCTION, $pop79
	i32.const	$push80=, .L.str.29
	call    	prints@FUNCTION, $pop80
	f64.load	$push158=, 0($3)
	tee_local	$push157=, $7=, $pop158
	f64.sub 	$push156=, $pop157, $2
	tee_local	$push155=, $8=, $pop156
	f64.store	0($3), $pop155
	i32.const	$push81=, 80
	i32.add 	$push154=, $0, $pop81
	tee_local	$push153=, $3=, $pop154
	i64.load	$push152=, 0($3)
	tee_local	$push151=, $5=, $pop152
	f64.convert_s/i64	$push82=, $5
	f64.mul 	$push83=, $pop82, $2
	f64.div 	$push84=, $pop83, $7
	i64.trunc_s/f64	$push150=, $pop84
	tee_local	$push149=, $5=, $pop150
	i64.sub 	$push85=, $pop151, $pop149
	i64.store	0($pop153), $pop85
	f64.const	$push86=, 0x0p0
	f64.ge  	$push87=, $8, $pop86
	i32.const	$push88=, .L.str.74
	call    	eosio_assert@FUNCTION, $pop87, $pop88
	i64.load	$push89=, 0($3)
	i64.const	$push90=, 63
	i64.shr_u	$push91=, $pop89, $pop90
	i32.wrap/i64	$push92=, $pop91
	i32.const	$push93=, 1
	i32.xor 	$push94=, $pop92, $pop93
	i32.const	$push148=, .L.str.74
	call    	eosio_assert@FUNCTION, $pop94, $pop148
	i32.const	$push95=, 92
	i32.add 	$push96=, $9, $pop95
	i32.const	$push119=, 96
	i32.add 	$push120=, $9, $pop119
	i32.const	$push97=, 12
	i32.add 	$push98=, $pop120, $pop97
	i32.load	$push99=, 0($pop98)
	i32.store	0($pop96), $pop99
	i32.const	$push121=, 72
	i32.add 	$push122=, $9, $pop121
	i32.const	$push100=, 16
	i32.add 	$push147=, $pop122, $pop100
	tee_local	$push146=, $3=, $pop147
	i32.load	$push101=, 0($6)
	i32.store	0($pop146), $pop101
	i32.const	$push123=, 72
	i32.add 	$push124=, $9, $pop123
	i32.const	$push145=, 12
	i32.add 	$push102=, $pop124, $pop145
	i32.load	$push103=, 100($9)
	i32.store	0($pop102), $pop103
	i64.store	72($9), $5
	i32.load	$push104=, 96($9)
	i32.store	80($9), $pop104
	i32.load	$0=, 440($0)
	i32.const	$push144=, 8
	i32.add 	$push105=, $9, $pop144
	i64.load	$push106=, 80($9)
	i64.store	0($pop105), $pop106
	i32.const	$push143=, 16
	i32.add 	$push107=, $9, $pop143
	i64.load	$push108=, 0($3)
	i64.store	0($pop107), $pop108
	i64.load	$push109=, 72($9)
	i64.store	0($9), $pop109
	call    	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE@FUNCTION, $0, $1, $9, $9
	br      	1
.LBB45_3:
	end_block
	block   	
	i32.const	$push19=, 152
	i32.add 	$push20=, $0, $pop19
	i64.load	$push21=, 0($pop20)
	i64.ne  	$push22=, $4, $pop21
	br_if   	0, $pop22
	i32.const	$push23=, 160
	i32.add 	$push24=, $0, $pop23
	i64.load	$push18=, 0($pop24)
	i64.ne  	$push25=, $5, $pop18
	br_if   	0, $pop25
	i32.const	$push125=, 96
	i32.add 	$push126=, $9, $pop125
	i32.const	$push31=, 8
	i32.add 	$push182=, $pop126, $pop31
	tee_local	$push181=, $6=, $pop182
	i32.const	$push28=, 216
	i32.add 	$push29=, $0, $pop28
	i64.load	$push30=, 0($pop29)
	i64.store	0($pop181), $pop30
	i32.const	$push32=, 208
	i32.add 	$push33=, $0, $pop32
	i64.load	$push34=, 0($pop33)
	i64.store	96($9), $pop34
	i32.const	$push35=, .L.str.72
	call    	prints@FUNCTION, $pop35
	call    	printdf@FUNCTION, $2
	i32.const	$push36=, .L.str.73
	call    	prints@FUNCTION, $pop36
	i32.const	$push37=, 232
	i32.add 	$push180=, $0, $pop37
	tee_local	$push179=, $3=, $pop180
	f64.load	$push38=, 0($pop179)
	call    	printdf@FUNCTION, $pop38
	i32.const	$push39=, .L.str.29
	call    	prints@FUNCTION, $pop39
	f64.load	$push178=, 0($3)
	tee_local	$push177=, $7=, $pop178
	f64.sub 	$push176=, $pop177, $2
	tee_local	$push175=, $8=, $pop176
	f64.store	0($3), $pop175
	i32.const	$push40=, 176
	i32.add 	$push174=, $0, $pop40
	tee_local	$push173=, $3=, $pop174
	i64.load	$push172=, 0($3)
	tee_local	$push171=, $5=, $pop172
	f64.convert_s/i64	$push41=, $5
	f64.mul 	$push42=, $pop41, $2
	f64.div 	$push43=, $pop42, $7
	i64.trunc_s/f64	$push170=, $pop43
	tee_local	$push169=, $5=, $pop170
	i64.sub 	$push44=, $pop171, $pop169
	i64.store	0($pop173), $pop44
	f64.const	$push45=, 0x0p0
	f64.ge  	$push46=, $8, $pop45
	i32.const	$push47=, .L.str.74
	call    	eosio_assert@FUNCTION, $pop46, $pop47
	i64.load	$push48=, 0($3)
	i64.const	$push49=, 63
	i64.shr_u	$push50=, $pop48, $pop49
	i32.wrap/i64	$push51=, $pop50
	i32.const	$push52=, 1
	i32.xor 	$push53=, $pop51, $pop52
	i32.const	$push168=, .L.str.74
	call    	eosio_assert@FUNCTION, $pop53, $pop168
	i32.const	$push54=, 68
	i32.add 	$push55=, $9, $pop54
	i32.const	$push127=, 96
	i32.add 	$push128=, $9, $pop127
	i32.const	$push56=, 12
	i32.add 	$push57=, $pop128, $pop56
	i32.load	$push58=, 0($pop57)
	i32.store	0($pop55), $pop58
	i32.const	$push129=, 48
	i32.add 	$push130=, $9, $pop129
	i32.const	$push59=, 16
	i32.add 	$push167=, $pop130, $pop59
	tee_local	$push166=, $3=, $pop167
	i32.load	$push60=, 0($6)
	i32.store	0($pop166), $pop60
	i32.const	$push131=, 48
	i32.add 	$push132=, $9, $pop131
	i32.const	$push165=, 12
	i32.add 	$push61=, $pop132, $pop165
	i32.load	$push62=, 100($9)
	i32.store	0($pop61), $pop62
	i64.store	48($9), $5
	i32.load	$push63=, 96($9)
	i32.store	56($9), $pop63
	i32.load	$0=, 440($0)
	i32.const	$push133=, 24
	i32.add 	$push134=, $9, $pop133
	i32.const	$push164=, 8
	i32.add 	$push64=, $pop134, $pop164
	i64.load	$push65=, 56($9)
	i64.store	0($pop64), $pop65
	i32.const	$push135=, 24
	i32.add 	$push136=, $9, $pop135
	i32.const	$push163=, 16
	i32.add 	$push66=, $pop136, $pop163
	i64.load	$push67=, 0($3)
	i64.store	0($pop66), $pop67
	i64.load	$push68=, 48($9)
	i64.store	24($9), $pop68
	i32.const	$push137=, 24
	i32.add 	$push138=, $9, $pop137
	call    	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE@FUNCTION, $0, $1, $pop138, $9
	br      	1
.LBB45_6:
	end_block
	i32.const	$push27=, 0
	i32.const	$push26=, .L.str.6
	call    	eosio_assert@FUNCTION, $pop27, $pop26
.LBB45_7:
	end_block
	i32.const	$push116=, 0
	i32.const	$push114=, 112
	i32.add 	$push115=, $9, $pop114
	i32.store	__stack_pointer($pop116), $pop115
	.endfunc
.Lfunc_end45:
	.size	_ZN5eosio12market_state6unlendEydRKNS_15extended_symbolE, .Lfunc_end45-_ZN5eosio12market_state6unlendEydRKNS_15extended_symbolE

	.section	.text._ZNK5eosio11symbol_type5printEb,"axG",@progbits,_ZNK5eosio11symbol_type5printEb,comdat
	.hidden	_ZNK5eosio11symbol_type5printEb
	.weak	_ZNK5eosio11symbol_type5printEb
	.type	_ZNK5eosio11symbol_type5printEb,@function
_ZNK5eosio11symbol_type5printEb:
	.param  	i32, i32
	.local  	i64, i32
	i32.const	$push26=, 0
	i32.const	$push23=, 0
	i32.load	$push24=, __stack_pointer($pop23)
	i32.const	$push25=, 16
	i32.sub 	$push45=, $pop24, $pop25
	tee_local	$push44=, $3=, $pop45
	i32.store	__stack_pointer($pop26), $pop44
	block   	
	i32.eqz 	$push74=, $1
	br_if   	0, $pop74
	i64.load8_u	$push0=, 0($0)
	call    	printui@FUNCTION, $pop0
	i32.const	$push1=, .L.str.113
	call    	prints@FUNCTION, $pop1
.LBB46_2:
	end_block
	i64.load	$push50=, 0($0)
	tee_local	$push49=, $2=, $pop50
	i64.const	$push2=, 8
	i64.shr_u	$push3=, $pop49, $pop2
	i32.wrap/i64	$push48=, $pop3
	tee_local	$push47=, $0=, $pop48
	i32.store8	15($3), $pop47
	block   	
	i32.const	$push46=, 255
	i32.and 	$push4=, $0, $pop46
	i32.eqz 	$push75=, $pop4
	br_if   	0, $pop75
	i32.const	$push30=, 15
	i32.add 	$push31=, $3, $pop30
	i32.const	$push54=, 1
	call    	prints_l@FUNCTION, $pop31, $pop54
	i64.const	$push5=, 16
	i64.shr_u	$push6=, $2, $pop5
	i32.wrap/i64	$push53=, $pop6
	tee_local	$push52=, $0=, $pop53
	i32.store8	15($3), $pop52
	i32.const	$push51=, 255
	i32.and 	$push7=, $0, $pop51
	i32.eqz 	$push76=, $pop7
	br_if   	0, $pop76
	i32.const	$push32=, 15
	i32.add 	$push33=, $3, $pop32
	i32.const	$push58=, 1
	call    	prints_l@FUNCTION, $pop33, $pop58
	i64.const	$push8=, 24
	i64.shr_u	$push9=, $2, $pop8
	i32.wrap/i64	$push57=, $pop9
	tee_local	$push56=, $0=, $pop57
	i32.store8	15($3), $pop56
	i32.const	$push55=, 255
	i32.and 	$push10=, $0, $pop55
	i32.eqz 	$push77=, $pop10
	br_if   	0, $pop77
	i32.const	$push34=, 15
	i32.add 	$push35=, $3, $pop34
	i32.const	$push62=, 1
	call    	prints_l@FUNCTION, $pop35, $pop62
	i64.const	$push11=, 32
	i64.shr_u	$push12=, $2, $pop11
	i32.wrap/i64	$push61=, $pop12
	tee_local	$push60=, $0=, $pop61
	i32.store8	15($3), $pop60
	i32.const	$push59=, 255
	i32.and 	$push13=, $0, $pop59
	i32.eqz 	$push78=, $pop13
	br_if   	0, $pop78
	i32.const	$push36=, 15
	i32.add 	$push37=, $3, $pop36
	i32.const	$push66=, 1
	call    	prints_l@FUNCTION, $pop37, $pop66
	i64.const	$push14=, 40
	i64.shr_u	$push15=, $2, $pop14
	i32.wrap/i64	$push65=, $pop15
	tee_local	$push64=, $0=, $pop65
	i32.store8	15($3), $pop64
	i32.const	$push63=, 255
	i32.and 	$push16=, $0, $pop63
	i32.eqz 	$push79=, $pop16
	br_if   	0, $pop79
	i32.const	$push38=, 15
	i32.add 	$push39=, $3, $pop38
	i32.const	$push70=, 1
	call    	prints_l@FUNCTION, $pop39, $pop70
	i64.const	$push17=, 48
	i64.shr_u	$push18=, $2, $pop17
	i32.wrap/i64	$push69=, $pop18
	tee_local	$push68=, $0=, $pop69
	i32.store8	15($3), $pop68
	i32.const	$push67=, 255
	i32.and 	$push19=, $0, $pop67
	i32.eqz 	$push80=, $pop19
	br_if   	0, $pop80
	i32.const	$push40=, 15
	i32.add 	$push41=, $3, $pop40
	i32.const	$push73=, 1
	call    	prints_l@FUNCTION, $pop41, $pop73
	i64.const	$push20=, 56
	i64.shr_u	$push21=, $2, $pop20
	i32.wrap/i64	$push72=, $pop21
	tee_local	$push71=, $0=, $pop72
	i32.store8	15($3), $pop71
	i32.eqz 	$push81=, $0
	br_if   	0, $pop81
	i32.const	$push42=, 15
	i32.add 	$push43=, $3, $pop42
	i32.const	$push22=, 1
	call    	prints_l@FUNCTION, $pop43, $pop22
.LBB46_10:
	end_block
	i32.const	$push29=, 0
	i32.const	$push27=, 16
	i32.add 	$push28=, $3, $pop27
	i32.store	__stack_pointer($pop29), $pop28
	.endfunc
.Lfunc_end46:
	.size	_ZNK5eosio11symbol_type5printEb, .Lfunc_end46-_ZNK5eosio11symbol_type5printEb

	.text
	.hidden	_ZN5eosio12market_state12cover_marginEyRKNS_14extended_assetE
	.globl	_ZN5eosio12market_state12cover_marginEyRKNS_14extended_assetE
	.type	_ZN5eosio12market_state12cover_marginEyRKNS_14extended_assetE,@function
_ZN5eosio12market_state12cover_marginEyRKNS_14extended_assetE:
	.param  	i32, i64, i32
	.local  	i64, i64
	i64.load	$4=, 16($2)
	block   	
	i64.load	$push27=, 8($2)
	tee_local	$push26=, $3=, $pop27
	i32.const	$push1=, 56
	i32.add 	$push2=, $0, $pop1
	i64.load	$push3=, 0($pop2)
	i64.ne  	$push4=, $pop26, $pop3
	br_if   	0, $pop4
	i32.const	$push5=, 64
	i32.add 	$push6=, $0, $pop5
	i64.load	$push0=, 0($pop6)
	i64.ne  	$push7=, $4, $pop0
	br_if   	0, $pop7
	i32.const	$push24=, 280
	i32.add 	$push25=, $0, $pop24
	i32.const	$push22=, 48
	i32.add 	$push23=, $0, $pop22
	call    	_ZN5eosio12market_state12cover_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetE@FUNCTION, $0, $1, $pop25, $pop23, $2
	return
.LBB47_3:
	end_block
	block   	
	i32.const	$push9=, 152
	i32.add 	$push10=, $0, $pop9
	i64.load	$push11=, 0($pop10)
	i64.ne  	$push12=, $3, $pop11
	br_if   	0, $pop12
	i32.const	$push13=, 160
	i32.add 	$push14=, $0, $pop13
	i64.load	$push8=, 0($pop14)
	i64.ne  	$push15=, $4, $pop8
	br_if   	0, $pop15
	i32.const	$push20=, 320
	i32.add 	$push21=, $0, $pop20
	i32.const	$push18=, 144
	i32.add 	$push19=, $0, $pop18
	call    	_ZN5eosio12market_state12cover_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetE@FUNCTION, $0, $1, $pop21, $pop19, $2
	return
.LBB47_6:
	end_block
	i32.const	$push17=, 0
	i32.const	$push16=, .L.str.9
	call    	eosio_assert@FUNCTION, $pop17, $pop16
	.endfunc
.Lfunc_end47:
	.size	_ZN5eosio12market_state12cover_marginEyRKNS_14extended_assetE, .Lfunc_end47-_ZN5eosio12market_state12cover_marginEyRKNS_14extended_assetE

	.hidden	_ZN5eosio12market_state12cover_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetE
	.globl	_ZN5eosio12market_state12cover_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetE
	.type	_ZN5eosio12market_state12cover_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetE,@function
_ZN5eosio12market_state12cover_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetE:
	.param  	i32, i64, i32, i32, i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, f64, i32, i32, f64, i32
	i32.const	$push167=, 0
	i32.const	$push164=, 0
	i32.load	$push165=, __stack_pointer($pop164)
	i32.const	$push166=, 704
	i32.sub 	$push252=, $pop165, $pop166
	tee_local	$push251=, $19=, $pop252
	i32.store	__stack_pointer($pop167), $pop251
	block   	
	i32.const	$push0=, 28
	i32.add 	$push1=, $2, $pop0
	i32.load	$push250=, 0($pop1)
	tee_local	$push249=, $17=, $pop250
	i32.load	$push248=, 24($2)
	tee_local	$push247=, $10=, $pop248
	i32.eq  	$push2=, $pop249, $pop247
	br_if   	0, $pop2
	i32.const	$push253=, -24
	i32.add 	$16=, $17, $pop253
	i32.const	$push3=, 0
	i32.sub 	$5=, $pop3, $10
.LBB48_2:
	loop    	
	i32.load	$push4=, 0($16)
	i64.load	$push5=, 0($pop4)
	i64.eq  	$push6=, $pop5, $1
	br_if   	1, $pop6
	copy_local	$17=, $16
	i32.const	$push257=, -24
	i32.add 	$push256=, $16, $pop257
	tee_local	$push255=, $6=, $pop256
	copy_local	$16=, $pop255
	i32.add 	$push7=, $6, $5
	i32.const	$push254=, -24
	i32.ne  	$push8=, $pop7, $pop254
	br_if   	0, $pop8
.LBB48_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push9=, $17, $10
	br_if   	0, $pop9
	i32.const	$push10=, -24
	i32.add 	$push11=, $17, $pop10
	i32.load	$push259=, 0($pop11)
	tee_local	$push258=, $16=, $pop259
	i32.load	$push12=, 64($pop258)
	i32.eq  	$push13=, $pop12, $2
	i32.const	$push14=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop13, $pop14
	br      	1
.LBB48_6:
	end_block
	i32.const	$16=, 0
	i64.load	$push16=, 0($2)
	i64.load	$push15=, 8($2)
	i64.const	$push17=, -7949197150146002944
	i32.call	$push262=, db_find_i64@FUNCTION, $pop16, $pop15, $pop17, $1
	tee_local	$push261=, $6=, $pop262
	i32.const	$push260=, 0
	i32.lt_s	$push18=, $pop261, $pop260
	br_if   	0, $pop18
	i32.call	$push264=, _ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorEl@FUNCTION, $2, $6
	tee_local	$push263=, $16=, $pop264
	i32.load	$push19=, 64($pop263)
	i32.eq  	$push20=, $pop19, $2
	i32.const	$push21=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop20, $pop21
.LBB48_8:
	end_block
	i32.const	$push318=, 0
	i32.ne  	$push317=, $16, $pop318
	tee_local	$push316=, $7=, $pop317
	i32.const	$push22=, .L.str.10
	call    	eosio_assert@FUNCTION, $pop316, $pop22
	i64.load	$push24=, 8($16)
	i64.load	$push23=, 0($4)
	i64.ge_s	$push25=, $pop24, $pop23
	i32.const	$push26=, .L.str.11
	call    	eosio_assert@FUNCTION, $pop25, $pop26
	i32.const	$push171=, 360
	i32.add 	$push172=, $19, $pop171
	i32.const	$push27=, 8
	i32.add 	$push315=, $0, $pop27
	tee_local	$push314=, $6=, $pop315
	i32.const	$push28=, 232
	i32.call	$drop=, memcpy@FUNCTION, $pop172, $pop314, $pop28
	i32.const	$push173=, 312
	i32.add 	$push174=, $19, $pop173
	i32.const	$push29=, 16
	i32.add 	$push313=, $pop174, $pop29
	tee_local	$push312=, $8=, $pop313
	i32.const	$push311=, 16
	i32.add 	$push310=, $4, $pop311
	tee_local	$push309=, $17=, $pop310
	i64.load	$push30=, 0($pop309)
	i64.store	0($pop312), $pop30
	i32.const	$push175=, 312
	i32.add 	$push176=, $19, $pop175
	i32.const	$push308=, 8
	i32.add 	$push307=, $pop176, $pop308
	tee_local	$push306=, $9=, $pop307
	i32.const	$push305=, 8
	i32.add 	$push304=, $4, $pop305
	tee_local	$push303=, $5=, $pop304
	i64.load	$push31=, 0($pop303)
	i64.store	0($pop306), $pop31
	i64.load	$push32=, 0($4)
	i64.store	312($19), $pop32
	i32.const	$push33=, 48
	i32.add 	$push302=, $16, $pop33
	tee_local	$push301=, $10=, $pop302
	i64.load	$14=, 0($pop301)
	i32.const	$push34=, 40
	i32.add 	$push300=, $16, $pop34
	tee_local	$push299=, $11=, $pop300
	i64.load	$push35=, 0($pop299)
	i64.store	296($19), $pop35
	i64.store	304($19), $14
	i32.const	$push177=, 120
	i32.add 	$push178=, $19, $pop177
	i32.const	$push298=, 16
	i32.add 	$push36=, $pop178, $pop298
	i64.load	$push37=, 0($8)
	i64.store	0($pop36), $pop37
	i32.const	$push179=, 120
	i32.add 	$push180=, $19, $pop179
	i32.const	$push297=, 8
	i32.add 	$push38=, $pop180, $pop297
	i64.load	$push39=, 0($9)
	i64.store	0($pop38), $pop39
	i64.load	$push40=, 312($19)
	i64.store	120($19), $pop40
	i32.const	$push181=, 104
	i32.add 	$push182=, $19, $pop181
	i32.const	$push296=, 8
	i32.add 	$push41=, $pop182, $pop296
	i64.load	$push42=, 304($19)
	i64.store	0($pop41), $pop42
	i64.load	$push43=, 296($19)
	i64.store	104($19), $pop43
	i32.const	$push183=, 336
	i32.add 	$push184=, $19, $pop183
	i32.const	$push185=, 360
	i32.add 	$push186=, $19, $pop185
	i32.const	$push187=, 120
	i32.add 	$push188=, $19, $pop187
	i32.const	$push189=, 104
	i32.add 	$push190=, $19, $pop189
	call    	_ZN5eosio14exchange_state7convertENS_14extended_assetENS_15extended_symbolE@FUNCTION, $pop184, $pop186, $pop188, $pop190
	i32.const	$push191=, 248
	i32.add 	$push192=, $19, $pop191
	i32.const	$push295=, 16
	i32.add 	$push294=, $pop192, $pop295
	tee_local	$push293=, $8=, $pop294
	i32.const	$push193=, 336
	i32.add 	$push194=, $19, $pop193
	i32.const	$push292=, 16
	i32.add 	$push44=, $pop194, $pop292
	i64.load	$push45=, 0($pop44)
	i64.store	0($pop293), $pop45
	i32.const	$push195=, 248
	i32.add 	$push196=, $19, $pop195
	i32.const	$push291=, 8
	i32.add 	$push290=, $pop196, $pop291
	tee_local	$push289=, $9=, $pop290
	i32.const	$push197=, 336
	i32.add 	$push198=, $19, $pop197
	i32.const	$push288=, 8
	i32.add 	$push46=, $pop198, $pop288
	i64.load	$push47=, 0($pop46)
	i64.store	0($pop289), $pop47
	i64.load	$push48=, 336($19)
	i64.store	248($19), $pop48
	i64.load	$14=, 0($17)
	i64.load	$push49=, 0($5)
	i64.store	232($19), $pop49
	i64.store	240($19), $14
	i32.const	$push199=, 80
	i32.add 	$push200=, $19, $pop199
	i32.const	$push287=, 16
	i32.add 	$push50=, $pop200, $pop287
	i64.load	$push51=, 0($8)
	i64.store	0($pop50), $pop51
	i32.const	$push201=, 80
	i32.add 	$push202=, $19, $pop201
	i32.const	$push286=, 8
	i32.add 	$push52=, $pop202, $pop286
	i64.load	$push53=, 0($9)
	i64.store	0($pop52), $pop53
	i64.load	$push54=, 248($19)
	i64.store	80($19), $pop54
	i32.const	$push203=, 64
	i32.add 	$push204=, $19, $pop203
	i32.const	$push285=, 8
	i32.add 	$push55=, $pop204, $pop285
	i64.load	$push56=, 240($19)
	i64.store	0($pop55), $pop56
	i64.load	$push57=, 232($19)
	i64.store	64($19), $pop57
	i32.const	$push205=, 272
	i32.add 	$push206=, $19, $pop205
	i32.const	$push207=, 80
	i32.add 	$push208=, $19, $pop207
	i32.const	$push209=, 64
	i32.add 	$push210=, $19, $pop209
	call    	_ZN5eosio14exchange_state7convertENS_14extended_assetENS_15extended_symbolE@FUNCTION, $pop206, $6, $pop208, $pop210
	i64.load	$push284=, 272($19)
	tee_local	$push283=, $14=, $pop284
	i64.load	$push58=, 0($4)
	i64.ge_s	$push59=, $pop283, $pop58
	i32.const	$push60=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop59, $pop60
	i64.load	$push282=, 288($19)
	tee_local	$push281=, $12=, $pop282
	i64.load	$push61=, 0($17)
	i64.eq  	$push62=, $pop281, $pop61
	i32.const	$push280=, .L.str.68
	call    	eosio_assert@FUNCTION, $pop62, $pop280
	i64.load	$push63=, 0($5)
	i64.load	$push279=, 280($19)
	tee_local	$push278=, $13=, $pop279
	i64.eq  	$push64=, $pop63, $pop278
	i32.const	$push277=, .L.str.69
	call    	eosio_assert@FUNCTION, $pop64, $pop277
	i64.load	$push65=, 0($4)
	i64.sub 	$push276=, $14, $pop65
	tee_local	$push275=, $14=, $pop276
	i64.const	$push274=, -4611686018427387904
	i64.gt_s	$push66=, $pop275, $pop274
	i32.const	$push273=, .L.str.70
	call    	eosio_assert@FUNCTION, $pop66, $pop273
	i64.const	$push272=, 4611686018427387904
	i64.lt_s	$push67=, $14, $pop272
	i32.const	$push271=, .L.str.71
	call    	eosio_assert@FUNCTION, $pop67, $pop271
	i64.store	192($19), $13
	i64.store	184($19), $14
	i64.store	200($19), $12
	i64.load	$push68=, 0($10)
	i64.store	176($19), $pop68
	i64.load	$push69=, 0($11)
	i64.store	168($19), $pop69
	i32.const	$push211=, 40
	i32.add 	$push212=, $19, $pop211
	i32.const	$push270=, 8
	i32.add 	$push70=, $pop212, $pop270
	i64.load	$push71=, 192($19)
	i64.store	0($pop70), $pop71
	i32.const	$push213=, 40
	i32.add 	$push214=, $19, $pop213
	i32.const	$push72=, 20
	i32.add 	$push73=, $pop214, $pop72
	i32.const	$push215=, 184
	i32.add 	$push216=, $19, $pop215
	i32.const	$push269=, 20
	i32.add 	$push74=, $pop216, $pop269
	i32.load	$push75=, 0($pop74)
	i32.store	0($pop73), $pop75
	i32.const	$push217=, 40
	i32.add 	$push218=, $19, $pop217
	i32.const	$push268=, 16
	i32.add 	$push76=, $pop218, $pop268
	i32.load	$push77=, 200($19)
	i32.store	0($pop76), $pop77
	i64.load	$push78=, 184($19)
	i64.store	40($19), $pop78
	i32.const	$push219=, 24
	i32.add 	$push220=, $19, $pop219
	i32.const	$push267=, 8
	i32.add 	$push79=, $pop220, $pop267
	i64.load	$push80=, 176($19)
	i64.store	0($pop79), $pop80
	i64.load	$push81=, 168($19)
	i64.store	24($19), $pop81
	i32.const	$push221=, 208
	i32.add 	$push222=, $19, $pop221
	i32.const	$push223=, 40
	i32.add 	$push224=, $19, $pop223
	i32.const	$push225=, 24
	i32.add 	$push226=, $19, $pop225
	call    	_ZN5eosio14exchange_state7convertENS_14extended_assetENS_15extended_symbolE@FUNCTION, $pop222, $6, $pop224, $pop226
	i64.load	$push83=, 336($19)
	i64.load	$push82=, 208($19)
	i64.sub 	$push266=, $pop83, $pop82
	tee_local	$push265=, $14=, $pop266
	i64.store	336($19), $pop265
	block   	
	block   	
	i64.load	$push85=, 8($16)
	i64.load	$push84=, 0($4)
	i64.ne  	$push86=, $pop85, $pop84
	br_if   	0, $pop86
	i64.load	$push133=, 0($10)
	i64.load	$push134=, 352($19)
	i64.eq  	$push135=, $pop133, $pop134
	i32.const	$push331=, .L.str.68
	call    	eosio_assert@FUNCTION, $pop135, $pop331
	i64.load	$13=, 32($16)
	i64.load	$push136=, 344($19)
	i64.load	$push330=, 0($11)
	tee_local	$push329=, $12=, $pop330
	i64.eq  	$push137=, $pop136, $pop329
	i32.const	$push328=, .L.str.69
	call    	eosio_assert@FUNCTION, $pop137, $pop328
	i64.sub 	$push327=, $13, $14
	tee_local	$push326=, $14=, $pop327
	i64.const	$push325=, -4611686018427387904
	i64.gt_s	$push138=, $pop326, $pop325
	i32.const	$push324=, .L.str.70
	call    	eosio_assert@FUNCTION, $pop138, $pop324
	i64.const	$push323=, 4611686018427387904
	i64.lt_s	$push139=, $14, $pop323
	i32.const	$push322=, .L.str.71
	call    	eosio_assert@FUNCTION, $pop139, $pop322
	i64.load	$13=, 0($10)
	i32.const	$push140=, .L.str.107
	call    	eosio_assert@FUNCTION, $7, $pop140
	i32.const	$push141=, .L.str.108
	call    	eosio_assert@FUNCTION, $7, $pop141
	block   	
	i32.load	$push142=, 68($16)
	i32.const	$push227=, 592
	i32.add 	$push228=, $19, $pop227
	i32.call	$push321=, db_next_i64@FUNCTION, $pop142, $pop228
	tee_local	$push320=, $6=, $pop321
	i32.const	$push319=, 0
	i32.lt_s	$push143=, $pop320, $pop319
	br_if   	0, $pop143
	i32.call	$drop=, _ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorEl@FUNCTION, $2, $6
.LBB48_11:
	end_block
	call    	_ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5eraseERKS1_@FUNCTION, $2, $16
	i32.const	$16=, 0
	block   	
	i64.load	$push145=, 0($2)
	i64.load	$push144=, 8($2)
	i64.const	$push147=, -7949197150146002944
	i64.const	$push146=, 0
	i32.call	$push334=, db_lowerbound_i64@FUNCTION, $pop145, $pop144, $pop147, $pop146
	tee_local	$push333=, $6=, $pop334
	i32.const	$push332=, 0
	i32.lt_s	$push148=, $pop333, $pop332
	br_if   	0, $pop148
	i32.call	$16=, _ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorEl@FUNCTION, $2, $6
.LBB48_13:
	end_block
	i64.store	152($19), $12
	i32.load	$6=, 440($0)
	i32.const	$push149=, 8
	i32.add 	$push150=, $19, $pop149
	i64.store	0($pop150), $12
	i64.store	160($19), $13
	i32.const	$push151=, 16
	i32.add 	$push152=, $19, $pop151
	i64.store	0($pop152), $13
	i64.store	144($19), $14
	i64.store	0($19), $14
	call    	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE@FUNCTION, $6, $1, $19, $19
	br      	1
.LBB48_14:
	end_block
	i32.const	$push87=, .L.str.90
	call    	eosio_assert@FUNCTION, $7, $pop87
	i32.load	$push88=, 64($16)
	i32.eq  	$push89=, $pop88, $2
	i32.const	$push90=, .L.str.84
	call    	eosio_assert@FUNCTION, $pop89, $pop90
	i64.load	$push91=, 0($2)
	i64.call	$push92=, current_receiver@FUNCTION
	i64.eq  	$push93=, $pop91, $pop92
	i32.const	$push94=, .L.str.85
	call    	eosio_assert@FUNCTION, $pop93, $pop94
	i64.load	$push95=, 32($16)
	i64.sub 	$push342=, $pop95, $14
	tee_local	$push341=, $14=, $pop342
	i64.store	32($16), $pop341
	i32.const	$push96=, 56
	i32.add 	$push340=, $16, $pop96
	tee_local	$push339=, $6=, $pop340
	f64.load	$push97=, 0($pop339)
	f64.const	$push338=, 0x1.e848p19
	f64.mul 	$push98=, $pop97, $pop338
	i64.trunc_u/f64	$push99=, $pop98
	i64.store	680($19), $pop99
	i64.load	$1=, 0($16)
	i64.load	$push100=, 8($16)
	i64.load	$push101=, 0($4)
	i64.sub 	$push337=, $pop100, $pop101
	tee_local	$push336=, $12=, $pop337
	i64.store	8($16), $pop336
	f64.convert_s/i64	$push103=, $12
	f64.convert_s/i64	$push102=, $14
	f64.div 	$push104=, $pop103, $pop102
	f64.store	0($6), $pop104
	i32.const	$push106=, 1
	i32.const	$push105=, .L.str.86
	call    	eosio_assert@FUNCTION, $pop106, $pop105
	i32.const	$push229=, 592
	i32.add 	$push230=, $19, $pop229
	i32.const	$push107=, 64
	i32.add 	$push108=, $pop230, $pop107
	i32.store	672($19), $pop108
	i32.const	$push231=, 592
	i32.add 	$push232=, $19, $pop231
	i32.store	668($19), $pop232
	i32.const	$push233=, 592
	i32.add 	$push234=, $19, $pop233
	i32.store	664($19), $pop234
	i32.const	$push235=, 664
	i32.add 	$push236=, $19, $pop235
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_15margin_positionE@FUNCTION, $pop236, $16
	i32.load	$push109=, 68($16)
	i64.const	$push110=, 0
	i32.const	$push237=, 592
	i32.add 	$push238=, $19, $pop237
	i32.const	$push335=, 64
	call    	db_update_i64@FUNCTION, $pop109, $pop110, $pop238, $pop335
	block   	
	i64.load	$push111=, 16($2)
	i64.lt_u	$push112=, $1, $pop111
	br_if   	0, $pop112
	i32.const	$push119=, 16
	i32.add 	$push120=, $2, $pop119
	i64.const	$push117=, -2
	i64.const	$push115=, 1
	i64.add 	$push116=, $1, $pop115
	i64.const	$push113=, -3
	i64.gt_u	$push114=, $1, $pop113
	i64.select	$push118=, $pop117, $pop116, $pop114
	i64.store	0($pop120), $pop118
.LBB48_16:
	end_block
	f64.load	$push121=, 0($6)
	f64.const	$push343=, 0x1.e848p19
	f64.mul 	$push122=, $pop121, $pop343
	i64.trunc_u/f64	$push123=, $pop122
	i64.store	696($19), $pop123
	i32.const	$push239=, 680
	i32.add 	$push240=, $19, $pop239
	i32.const	$push241=, 696
	i32.add 	$push242=, $19, $pop241
	i32.const	$push124=, 8
	i32.call	$push125=, memcmp@FUNCTION, $pop240, $pop242, $pop124
	i32.eqz 	$push358=, $pop125
	br_if   	0, $pop358
	block   	
	i32.const	$push126=, 72
	i32.add 	$push347=, $16, $pop126
	tee_local	$push346=, $17=, $pop347
	i32.load	$push345=, 0($pop346)
	tee_local	$push344=, $6=, $pop345
	i32.const	$push127=, -1
	i32.gt_s	$push128=, $pop344, $pop127
	br_if   	0, $pop128
	i64.load	$push130=, 0($2)
	i64.load	$push129=, 8($2)
	i64.const	$push131=, -7949197150146002944
	i32.const	$push243=, 688
	i32.add 	$push244=, $19, $pop243
	i32.call	$push349=, db_idx64_find_primary@FUNCTION, $pop130, $pop129, $pop131, $pop244, $1
	tee_local	$push348=, $6=, $pop349
	i32.store	0($17), $pop348
.LBB48_19:
	end_block
	i64.const	$push132=, 0
	i32.const	$push245=, 696
	i32.add 	$push246=, $19, $pop245
	call    	db_idx64_update@FUNCTION, $6, $pop132, $pop246
.LBB48_20:
	end_block
	i32.const	$push153=, 56
	i32.add 	$push351=, $3, $pop153
	tee_local	$push350=, $6=, $pop351
	i64.load	$push154=, 0($6)
	i64.load	$push155=, 0($4)
	i64.sub 	$push156=, $pop154, $pop155
	i64.store	0($pop350), $pop156
	block   	
	block   	
	block   	
	i32.eqz 	$push359=, $16
	br_if   	0, $pop359
	f64.load	$push357=, 56($16)
	tee_local	$push356=, $18=, $pop357
	i32.const	$push157=, 80
	i32.add 	$push355=, $3, $pop157
	tee_local	$push354=, $16=, $pop355
	f64.load	$push353=, 0($pop354)
	tee_local	$push352=, $15=, $pop353
	f64.ge  	$push158=, $pop356, $pop352
	f64.ne  	$push160=, $18, $18
	f64.ne  	$push159=, $15, $15
	i32.or  	$push161=, $pop160, $pop159
	i32.or  	$push162=, $pop158, $pop161
	i32.eqz 	$push360=, $pop162
	br_if   	1, $pop360
	br      	2
.LBB48_22:
	end_block
	i32.const	$push163=, 80
	i32.add 	$16=, $3, $pop163
	f64.const	$18=, 0x1.fffffffffffffp1023
.LBB48_23:
	end_block
	f64.store	0($16), $18
.LBB48_24:
	end_block
	i32.const	$push170=, 0
	i32.const	$push168=, 704
	i32.add 	$push169=, $19, $pop168
	i32.store	__stack_pointer($pop170), $pop169
	.endfunc
.Lfunc_end48:
	.size	_ZN5eosio12market_state12cover_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetE, .Lfunc_end48-_ZN5eosio12market_state12cover_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_15margin_positionE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_15margin_positionE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_15margin_positionE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_15margin_positionE
	.type	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_15margin_positionE,@function
_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_15margin_positionE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $1, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push101=, 8
	i32.add 	$push100=, $pop8, $pop101
	tee_local	$push99=, $2=, $pop100
	i32.store	4($0), $pop99
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push98=, 7
	i32.gt_s	$push11=, $pop10, $pop98
	i32.const	$push97=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop11, $pop97
	i32.load	$push13=, 4($0)
	i32.const	$push96=, 8
	i32.add 	$push12=, $1, $pop96
	i32.const	$push95=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop12, $pop95
	i32.load	$push14=, 4($0)
	i32.const	$push94=, 8
	i32.add 	$push93=, $pop14, $pop94
	tee_local	$push92=, $2=, $pop93
	i32.store	4($0), $pop92
	i32.load	$push15=, 8($0)
	i32.sub 	$push16=, $pop15, $2
	i32.const	$push91=, 7
	i32.gt_s	$push17=, $pop16, $pop91
	i32.const	$push90=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop17, $pop90
	i32.load	$push20=, 4($0)
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.const	$push89=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop20, $pop19, $pop89
	i32.load	$push21=, 4($0)
	i32.const	$push88=, 8
	i32.add 	$push87=, $pop21, $pop88
	tee_local	$push86=, $2=, $pop87
	i32.store	4($0), $pop86
	i32.load	$push22=, 8($0)
	i32.sub 	$push23=, $pop22, $2
	i32.const	$push85=, 7
	i32.gt_s	$push24=, $pop23, $pop85
	i32.const	$push84=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop24, $pop84
	i32.load	$push27=, 4($0)
	i32.const	$push25=, 24
	i32.add 	$push26=, $1, $pop25
	i32.const	$push83=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $pop26, $pop83
	i32.load	$push28=, 4($0)
	i32.const	$push82=, 8
	i32.add 	$push81=, $pop28, $pop82
	tee_local	$push80=, $2=, $pop81
	i32.store	4($0), $pop80
	i32.load	$push29=, 8($0)
	i32.sub 	$push30=, $pop29, $2
	i32.const	$push79=, 7
	i32.gt_s	$push31=, $pop30, $pop79
	i32.const	$push78=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop31, $pop78
	i32.load	$push34=, 4($0)
	i32.const	$push32=, 32
	i32.add 	$push33=, $1, $pop32
	i32.const	$push77=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop34, $pop33, $pop77
	i32.load	$push35=, 4($0)
	i32.const	$push76=, 8
	i32.add 	$push75=, $pop35, $pop76
	tee_local	$push74=, $2=, $pop75
	i32.store	4($0), $pop74
	i32.load	$push36=, 8($0)
	i32.sub 	$push37=, $pop36, $2
	i32.const	$push73=, 7
	i32.gt_s	$push38=, $pop37, $pop73
	i32.const	$push72=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop38, $pop72
	i32.load	$push41=, 4($0)
	i32.const	$push39=, 40
	i32.add 	$push40=, $1, $pop39
	i32.const	$push71=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop41, $pop40, $pop71
	i32.load	$push42=, 4($0)
	i32.const	$push70=, 8
	i32.add 	$push69=, $pop42, $pop70
	tee_local	$push68=, $2=, $pop69
	i32.store	4($0), $pop68
	i32.load	$push43=, 8($0)
	i32.sub 	$push44=, $pop43, $2
	i32.const	$push67=, 7
	i32.gt_s	$push45=, $pop44, $pop67
	i32.const	$push66=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop45, $pop66
	i32.load	$push48=, 4($0)
	i32.const	$push46=, 48
	i32.add 	$push47=, $1, $pop46
	i32.const	$push65=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop48, $pop47, $pop65
	i32.load	$push49=, 4($0)
	i32.const	$push64=, 8
	i32.add 	$push63=, $pop49, $pop64
	tee_local	$push62=, $2=, $pop63
	i32.store	4($0), $pop62
	i32.load	$push50=, 8($0)
	i32.sub 	$push51=, $pop50, $2
	i32.const	$push61=, 7
	i32.gt_s	$push52=, $pop51, $pop61
	i32.const	$push60=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop52, $pop60
	i32.load	$push55=, 4($0)
	i32.const	$push53=, 56
	i32.add 	$push54=, $1, $pop53
	i32.const	$push59=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop55, $pop54, $pop59
	i32.load	$push56=, 4($0)
	i32.const	$push58=, 8
	i32.add 	$push57=, $pop56, $pop58
	i32.store	4($0), $pop57
	copy_local	$push102=, $0
	.endfunc
.Lfunc_end49:
	.size	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_15margin_positionE, .Lfunc_end49-_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_15margin_positionE

	.text
	.hidden	_ZN5eosio12market_state13update_marginEyRKNS_14extended_assetES3_
	.globl	_ZN5eosio12market_state13update_marginEyRKNS_14extended_assetES3_
	.type	_ZN5eosio12market_state13update_marginEyRKNS_14extended_assetES3_,@function
_ZN5eosio12market_state13update_marginEyRKNS_14extended_assetES3_:
	.param  	i32, i64, i32, i32
	.local  	i64, i64
	i64.load	$5=, 16($2)
	block   	
	i64.load	$push27=, 8($2)
	tee_local	$push26=, $4=, $pop27
	i32.const	$push1=, 56
	i32.add 	$push2=, $0, $pop1
	i64.load	$push3=, 0($pop2)
	i64.ne  	$push4=, $pop26, $pop3
	br_if   	0, $pop4
	i32.const	$push5=, 64
	i32.add 	$push6=, $0, $pop5
	i64.load	$push0=, 0($pop6)
	i64.ne  	$push7=, $5, $pop0
	br_if   	0, $pop7
	i32.const	$push24=, 280
	i32.add 	$push25=, $0, $pop24
	i32.const	$push22=, 48
	i32.add 	$push23=, $0, $pop22
	call    	_ZN5eosio12market_state13adjust_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetESG_@FUNCTION, $0, $1, $pop25, $pop23, $2, $3
	return
.LBB50_3:
	end_block
	block   	
	i32.const	$push9=, 152
	i32.add 	$push10=, $0, $pop9
	i64.load	$push11=, 0($pop10)
	i64.ne  	$push12=, $4, $pop11
	br_if   	0, $pop12
	i32.const	$push13=, 160
	i32.add 	$push14=, $0, $pop13
	i64.load	$push8=, 0($pop14)
	i64.ne  	$push15=, $5, $pop8
	br_if   	0, $pop15
	i32.const	$push20=, 320
	i32.add 	$push21=, $0, $pop20
	i32.const	$push18=, 144
	i32.add 	$push19=, $0, $pop18
	call    	_ZN5eosio12market_state13adjust_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetESG_@FUNCTION, $0, $1, $pop21, $pop19, $2, $3
	return
.LBB50_6:
	end_block
	i32.const	$push17=, 0
	i32.const	$push16=, .L.str.9
	call    	eosio_assert@FUNCTION, $pop17, $pop16
	.endfunc
.Lfunc_end50:
	.size	_ZN5eosio12market_state13update_marginEyRKNS_14extended_assetES3_, .Lfunc_end50-_ZN5eosio12market_state13update_marginEyRKNS_14extended_assetES3_

	.hidden	_ZN5eosio12market_state13adjust_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetESG_
	.globl	_ZN5eosio12market_state13adjust_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetESG_
	.type	_ZN5eosio12market_state13adjust_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetESG_,@function
_ZN5eosio12market_state13adjust_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetESG_:
	.param  	i32, i64, i32, i32, i32, i32
	.local  	i32, i32, i32, i64, f64, i64, f64, i32, i32, i32
	i32.const	$push231=, 0
	i32.const	$push228=, 0
	i32.load	$push229=, __stack_pointer($pop228)
	i32.const	$push230=, 112
	i32.sub 	$push258=, $pop229, $pop230
	tee_local	$push257=, $15=, $pop258
	i32.store	__stack_pointer($pop231), $pop257
	block   	
	i32.const	$push0=, 28
	i32.add 	$push1=, $2, $pop0
	i32.load	$push256=, 0($pop1)
	tee_local	$push255=, $14=, $pop256
	i32.load	$push254=, 24($2)
	tee_local	$push253=, $6=, $pop254
	i32.eq  	$push2=, $pop255, $pop253
	br_if   	0, $pop2
	i32.const	$push259=, -24
	i32.add 	$13=, $14, $pop259
	i32.const	$push3=, 0
	i32.sub 	$7=, $pop3, $6
.LBB51_2:
	loop    	
	i32.load	$push4=, 0($13)
	i64.load	$push5=, 0($pop4)
	i64.eq  	$push6=, $pop5, $1
	br_if   	1, $pop6
	copy_local	$14=, $13
	i32.const	$push263=, -24
	i32.add 	$push262=, $13, $pop263
	tee_local	$push261=, $8=, $pop262
	copy_local	$13=, $pop261
	i32.add 	$push7=, $8, $7
	i32.const	$push260=, -24
	i32.ne  	$push8=, $pop7, $pop260
	br_if   	0, $pop8
.LBB51_4:
	end_loop
	end_block
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.eq  	$push9=, $14, $6
	br_if   	0, $pop9
	i32.const	$push10=, -24
	i32.add 	$push11=, $14, $pop10
	i32.load	$push265=, 0($pop11)
	tee_local	$push264=, $8=, $pop265
	i32.load	$push12=, 64($pop264)
	i32.eq  	$push13=, $pop12, $2
	i32.const	$push14=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop13, $pop14
	br_if   	1, $8
	br      	2
.LBB51_6:
	end_block
	i64.load	$push16=, 0($2)
	i64.load	$push15=, 8($2)
	i64.const	$push17=, -7949197150146002944
	i32.call	$push267=, db_find_i64@FUNCTION, $pop16, $pop15, $pop17, $1
	tee_local	$push266=, $13=, $pop267
	i32.const	$push18=, 0
	i32.lt_s	$push19=, $pop266, $pop18
	br_if   	1, $pop19
	i32.call	$push269=, _ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorEl@FUNCTION, $2, $13
	tee_local	$push268=, $8=, $pop269
	i32.load	$push20=, 64($pop268)
	i32.eq  	$push21=, $pop20, $2
	i32.const	$push22=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop21, $pop22
.LBB51_8:
	end_block
	i64.load	$push25=, 8($8)
	i64.const	$push270=, 0
	i64.load	$push23=, 0($4)
	i64.sub 	$push24=, $pop270, $pop23
	i64.ne  	$push26=, $pop25, $pop24
	br_if   	1, $pop26
	i64.load	$push98=, 32($8)
	i64.const	$push275=, 0
	i64.load	$push96=, 0($5)
	i64.sub 	$push97=, $pop275, $pop96
	i64.eq  	$push99=, $pop98, $pop97
	i32.const	$push100=, .L.str.15
	call    	eosio_assert@FUNCTION, $pop99, $pop100
	i32.const	$push102=, 1
	i32.const	$push101=, .L.str.107
	call    	eosio_assert@FUNCTION, $pop102, $pop101
	i32.const	$push274=, 1
	i32.const	$push103=, .L.str.108
	call    	eosio_assert@FUNCTION, $pop274, $pop103
	i32.const	$13=, 0
	block   	
	i32.load	$push104=, 68($8)
	i32.call	$push273=, db_next_i64@FUNCTION, $pop104, $15
	tee_local	$push272=, $14=, $pop273
	i32.const	$push271=, 0
	i32.lt_s	$push105=, $pop272, $pop271
	br_if   	0, $pop105
	i32.call	$drop=, _ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorEl@FUNCTION, $2, $14
.LBB51_11:
	end_block
	call    	_ZN5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE5eraseERKS1_@FUNCTION, $2, $8
	i64.load	$push107=, 0($2)
	i64.load	$push106=, 8($2)
	i64.const	$push109=, -7949197150146002944
	i64.const	$push108=, 0
	i32.call	$push278=, db_lowerbound_i64@FUNCTION, $pop107, $pop106, $pop109, $pop108
	tee_local	$push277=, $8=, $pop278
	i32.const	$push276=, 0
	i32.lt_s	$push110=, $pop277, $pop276
	br_if   	4, $pop110
	i32.call	$13=, _ZNK5eosio11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS1_yXadL_ZNKS1_8get_callEvEEEEEEEE31load_object_by_primary_iteratorEl@FUNCTION, $2, $8
	br      	4
.LBB51_13:
	end_block
	i64.load	$push111=, 0($4)
	i64.const	$push112=, 0
	i64.gt_s	$push113=, $pop111, $pop112
	i32.const	$push114=, .L.str.13
	call    	eosio_assert@FUNCTION, $pop113, $pop114
	i64.load	$push115=, 0($5)
	i64.const	$push293=, 0
	i64.gt_s	$push116=, $pop115, $pop293
	i32.const	$push117=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop116, $pop117
	i64.load	$push118=, 0($2)
	i64.call	$push119=, current_receiver@FUNCTION
	i64.eq  	$push120=, $pop118, $pop119
	i32.const	$push121=, .L.str.89
	call    	eosio_assert@FUNCTION, $pop120, $pop121
	i32.const	$push122=, 80
	i32.call	$push292=, _Znwj@FUNCTION, $pop122
	tee_local	$push291=, $13=, $pop292
	i32.call	$8=, _ZN5eosio15margin_positionC2Ev@FUNCTION, $pop291
	i32.store	64($13), $2
	i64.store	0($13), $1
	i32.const	$push290=, 28
	i32.add 	$push123=, $13, $pop290
	i32.const	$push124=, 20
	i32.add 	$push125=, $4, $pop124
	i32.load	$push126=, 0($pop125)
	i32.store	0($pop123), $pop126
	i32.const	$push127=, 24
	i32.add 	$push128=, $13, $pop127
	i32.const	$push289=, 16
	i32.add 	$push129=, $4, $pop289
	i32.load	$push130=, 0($pop129)
	i32.store	0($pop128), $pop130
	i32.const	$push288=, 20
	i32.add 	$push131=, $13, $pop288
	i32.const	$push132=, 12
	i32.add 	$push133=, $4, $pop132
	i32.load	$push134=, 0($pop133)
	i32.store	0($pop131), $pop134
	i32.const	$push287=, 16
	i32.add 	$push135=, $13, $pop287
	i32.const	$push286=, 8
	i32.add 	$push136=, $4, $pop286
	i32.load	$push137=, 0($pop136)
	i32.store	0($pop135), $pop137
	i32.const	$push285=, 12
	i32.add 	$push138=, $13, $pop285
	i32.const	$push139=, 4
	i32.add 	$push140=, $4, $pop139
	i32.load	$push141=, 0($pop140)
	i32.store	0($pop138), $pop141
	i32.load	$push142=, 0($4)
	i32.store	8($13), $pop142
	i32.const	$push143=, 48
	i32.add 	$push144=, $13, $pop143
	i32.const	$push284=, 16
	i32.add 	$push145=, $5, $pop284
	i64.load	$push146=, 0($pop145)
	i64.store	0($pop144), $pop146
	i32.const	$push147=, 40
	i32.add 	$push148=, $13, $pop147
	i32.const	$push283=, 8
	i32.add 	$push149=, $5, $pop283
	i64.load	$push150=, 0($pop149)
	i64.store	0($pop148), $pop150
	i64.load	$push151=, 0($5)
	i64.store	32($13), $pop151
	i64.load	$push154=, 8($13)
	f64.convert_s/i64	$push155=, $pop154
	i64.load	$push152=, 32($13)
	f64.convert_s/i64	$push153=, $pop152
	f64.div 	$push156=, $pop155, $pop153
	f64.store	56($13), $pop156
	i32.const	$push157=, 64
	i32.add 	$push158=, $15, $pop157
	i32.store	80($15), $pop158
	i32.store	76($15), $15
	i32.store	72($15), $15
	i32.const	$push235=, 72
	i32.add 	$push236=, $15, $pop235
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_15margin_positionE@FUNCTION, $pop236, $8
	i64.load	$push159=, 8($2)
	i64.const	$push282=, -7949197150146002944
	i64.load	$push281=, 0($13)
	tee_local	$push280=, $9=, $pop281
	i32.const	$push279=, 64
	i32.call	$push160=, db_store_i64@FUNCTION, $pop159, $pop282, $1, $pop280, $15, $pop279
	i32.store	68($13), $pop160
	block   	
	i64.load	$push161=, 16($2)
	i64.lt_u	$push162=, $9, $pop161
	br_if   	0, $pop162
	i32.const	$push294=, 16
	i32.add 	$push169=, $2, $pop294
	i64.const	$push167=, -2
	i64.const	$push165=, 1
	i64.add 	$push166=, $9, $pop165
	i64.const	$push163=, -3
	i64.gt_u	$push164=, $9, $pop163
	i64.select	$push168=, $pop167, $pop166, $pop164
	i64.store	0($pop169), $pop168
.LBB51_15:
	end_block
	i32.const	$push303=, 8
	i32.add 	$push170=, $2, $pop303
	i64.load	$9=, 0($pop170)
	i64.load	$11=, 0($13)
	i32.const	$push171=, 56
	i32.add 	$push172=, $13, $pop171
	f64.load	$push173=, 0($pop172)
	f64.const	$push174=, 0x1.e848p19
	f64.mul 	$push175=, $pop173, $pop174
	i64.trunc_u/f64	$push176=, $pop175
	i64.store	104($15), $pop176
	i64.const	$push302=, -7949197150146002944
	i32.const	$push237=, 104
	i32.add 	$push238=, $15, $pop237
	i32.call	$push177=, db_idx64_store@FUNCTION, $9, $pop302, $1, $11, $pop238
	i32.store	72($13), $pop177
	i32.store	72($15), $13
	i64.load	$push301=, 0($13)
	tee_local	$push300=, $1=, $pop301
	i64.store	0($15), $pop300
	i32.const	$push178=, 68
	i32.add 	$push179=, $13, $pop178
	i32.load	$push299=, 0($pop179)
	tee_local	$push298=, $14=, $pop299
	i32.store	104($15), $pop298
	i32.const	$push297=, 28
	i32.add 	$push183=, $2, $pop297
	i32.load	$push296=, 0($pop183)
	tee_local	$push295=, $8=, $pop296
	i32.const	$push180=, 32
	i32.add 	$push181=, $2, $pop180
	i32.load	$push182=, 0($pop181)
	i32.ge_u	$push184=, $pop295, $pop182
	br_if   	1, $pop184
	i64.store	8($8), $1
	i32.store	16($8), $14
	i32.const	$push187=, 0
	i32.store	72($15), $pop187
	i32.store	0($8), $13
	i32.const	$push190=, 28
	i32.add 	$push191=, $2, $pop190
	i32.const	$push188=, 24
	i32.add 	$push189=, $8, $pop188
	i32.store	0($pop191), $pop189
	br      	2
.LBB51_17:
	end_block
	i32.const	$push28=, 1
	i32.const	$push27=, .L.str.90
	call    	eosio_assert@FUNCTION, $pop28, $pop27
	i32.load	$push29=, 64($8)
	i32.eq  	$push30=, $pop29, $2
	i32.const	$push31=, .L.str.84
	call    	eosio_assert@FUNCTION, $pop30, $pop31
	i64.load	$push32=, 0($2)
	i64.call	$push33=, current_receiver@FUNCTION
	i64.eq  	$push34=, $pop32, $pop33
	i32.const	$push35=, .L.str.85
	call    	eosio_assert@FUNCTION, $pop34, $pop35
	i32.const	$push36=, 56
	i32.add 	$push318=, $8, $pop36
	tee_local	$push317=, $13=, $pop318
	f64.load	$push37=, 0($pop317)
	f64.const	$push316=, 0x1.e848p19
	f64.mul 	$push38=, $pop37, $pop316
	i64.trunc_u/f64	$push39=, $pop38
	i64.store	88($15), $pop39
	i64.load	$1=, 0($8)
	i64.load	$push42=, 8($4)
	i32.const	$push315=, 16
	i32.add 	$push40=, $8, $pop315
	i64.load	$push41=, 0($pop40)
	i64.eq  	$push43=, $pop42, $pop41
	i32.const	$push44=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop43, $pop44
	i64.load	$push46=, 8($8)
	i64.load	$push45=, 0($4)
	i64.add 	$push314=, $pop46, $pop45
	tee_local	$push313=, $9=, $pop314
	i64.store	8($8), $pop313
	i64.const	$push47=, -4611686018427387904
	i64.gt_s	$push48=, $9, $pop47
	i32.const	$push49=, .L.str.76
	call    	eosio_assert@FUNCTION, $pop48, $pop49
	i64.load	$push50=, 8($8)
	i64.const	$push51=, 4611686018427387904
	i64.lt_s	$push52=, $pop50, $pop51
	i32.const	$push53=, .L.str.77
	call    	eosio_assert@FUNCTION, $pop52, $pop53
	i64.load	$push57=, 8($5)
	i32.const	$push54=, 40
	i32.add 	$push55=, $8, $pop54
	i64.load	$push56=, 0($pop55)
	i64.eq  	$push58=, $pop57, $pop56
	i32.const	$push312=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop58, $pop312
	i64.load	$push60=, 32($8)
	i64.load	$push59=, 0($5)
	i64.add 	$push311=, $pop60, $pop59
	tee_local	$push310=, $9=, $pop311
	i64.store	32($8), $pop310
	i64.const	$push309=, -4611686018427387904
	i64.gt_s	$push61=, $9, $pop309
	i32.const	$push308=, .L.str.76
	call    	eosio_assert@FUNCTION, $pop61, $pop308
	i64.load	$push62=, 32($8)
	i64.const	$push307=, 4611686018427387904
	i64.lt_s	$push63=, $pop62, $pop307
	i32.const	$push306=, .L.str.77
	call    	eosio_assert@FUNCTION, $pop63, $pop306
	i64.load	$push66=, 8($8)
	f64.convert_s/i64	$push67=, $pop66
	i64.load	$push64=, 32($8)
	f64.convert_s/i64	$push65=, $pop64
	f64.div 	$push68=, $pop67, $pop65
	f64.store	0($13), $pop68
	i64.load	$push69=, 0($8)
	i64.eq  	$push70=, $1, $pop69
	i32.const	$push71=, .L.str.86
	call    	eosio_assert@FUNCTION, $pop70, $pop71
	i32.const	$push72=, 64
	i32.add 	$push73=, $15, $pop72
	i32.store	80($15), $pop73
	i32.store	76($15), $15
	i32.store	72($15), $15
	i32.const	$push243=, 72
	i32.add 	$push244=, $15, $pop243
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_15margin_positionE@FUNCTION, $pop244, $8
	i32.load	$push74=, 68($8)
	i64.const	$push305=, 0
	i32.const	$push304=, 64
	call    	db_update_i64@FUNCTION, $pop74, $pop305, $15, $pop304
	block   	
	i64.load	$push75=, 16($2)
	i64.lt_u	$push76=, $1, $pop75
	br_if   	0, $pop76
	i32.const	$push319=, 16
	i32.add 	$push83=, $2, $pop319
	i64.const	$push81=, -2
	i64.const	$push79=, 1
	i64.add 	$push80=, $1, $pop79
	i64.const	$push77=, -3
	i64.gt_u	$push78=, $1, $pop77
	i64.select	$push82=, $pop81, $pop80, $pop78
	i64.store	0($pop83), $pop82
.LBB51_19:
	end_block
	f64.load	$push84=, 0($13)
	f64.const	$push320=, 0x1.e848p19
	f64.mul 	$push85=, $pop84, $pop320
	i64.trunc_u/f64	$push86=, $pop85
	i64.store	104($15), $pop86
	block   	
	i32.const	$push245=, 88
	i32.add 	$push246=, $15, $pop245
	i32.const	$push247=, 104
	i32.add 	$push248=, $15, $pop247
	i32.const	$push87=, 8
	i32.call	$push88=, memcmp@FUNCTION, $pop246, $pop248, $pop87
	i32.eqz 	$push337=, $pop88
	br_if   	0, $pop337
	block   	
	i32.const	$push89=, 72
	i32.add 	$push324=, $8, $pop89
	tee_local	$push323=, $14=, $pop324
	i32.load	$push322=, 0($pop323)
	tee_local	$push321=, $13=, $pop322
	i32.const	$push90=, -1
	i32.gt_s	$push91=, $pop321, $pop90
	br_if   	0, $pop91
	i64.load	$push93=, 0($2)
	i64.load	$push92=, 8($2)
	i64.const	$push94=, -7949197150146002944
	i32.const	$push249=, 96
	i32.add 	$push250=, $15, $pop249
	i32.call	$push326=, db_idx64_find_primary@FUNCTION, $pop93, $pop92, $pop94, $pop250, $1
	tee_local	$push325=, $13=, $pop326
	i32.store	0($14), $pop325
.LBB51_22:
	end_block
	i64.const	$push95=, 0
	i32.const	$push251=, 104
	i32.add 	$push252=, $15, $pop251
	call    	db_idx64_update@FUNCTION, $13, $pop95, $pop252
.LBB51_23:
	end_block
	copy_local	$13=, $8
	br      	2
.LBB51_24:
	end_block
	i32.const	$push185=, 24
	i32.add 	$push186=, $2, $pop185
	i32.const	$push239=, 72
	i32.add 	$push240=, $15, $pop239
	i32.const	$push241=, 104
	i32.add 	$push242=, $15, $pop241
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy10497546923563548672ENS1_15margin_positionEJNS1_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS3_yXadL_ZNKS3_8get_callEvEEEEEEEE8item_ptrENS_9allocatorISB_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSA_4itemENS_14default_deleteISH_EEEERyRlEEEvDpOT_@FUNCTION, $pop186, $pop240, $15, $pop242
.LBB51_25:
	end_block
	i32.load	$8=, 72($15)
	i32.const	$push192=, 0
	i32.store	72($15), $pop192
	i32.eqz 	$push338=, $8
	br_if   	0, $pop338
	call    	_ZdlPv@FUNCTION, $8
.LBB51_27:
	end_block
	i64.load	$push196=, 8($4)
	i32.const	$push193=, 64
	i32.add 	$push194=, $3, $pop193
	i64.load	$push195=, 0($pop194)
	i64.eq  	$push197=, $pop196, $pop195
	i32.const	$push198=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop197, $pop198
	i32.const	$push199=, 56
	i32.add 	$push330=, $3, $pop199
	tee_local	$push329=, $8=, $pop330
	i64.load	$push200=, 0($8)
	i64.load	$push201=, 0($4)
	i64.add 	$push328=, $pop200, $pop201
	tee_local	$push327=, $1=, $pop328
	i64.store	0($pop329), $pop327
	i64.const	$push202=, -4611686018427387904
	i64.gt_s	$push203=, $1, $pop202
	i32.const	$push204=, .L.str.76
	call    	eosio_assert@FUNCTION, $pop203, $pop204
	i64.load	$push205=, 0($8)
	i64.const	$push206=, 4611686018427387904
	i64.lt_s	$push207=, $pop205, $pop206
	i32.const	$push208=, .L.str.77
	call    	eosio_assert@FUNCTION, $pop207, $pop208
	i64.load	$push209=, 0($8)
	i64.load	$push210=, 32($3)
	i64.le_s	$push211=, $pop209, $pop210
	i32.const	$push212=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop211, $pop212
	block   	
	block   	
	i32.eqz 	$push339=, $13
	br_if   	0, $pop339
	block   	
	f64.load	$push336=, 56($13)
	tee_local	$push335=, $10=, $pop336
	i32.const	$push213=, 80
	i32.add 	$push334=, $3, $pop213
	tee_local	$push333=, $13=, $pop334
	f64.load	$push332=, 0($pop333)
	tee_local	$push331=, $12=, $pop332
	f64.ge  	$push214=, $pop335, $pop331
	f64.ne  	$push216=, $10, $10
	f64.ne  	$push215=, $12, $12
	i32.or  	$push217=, $pop216, $pop215
	i32.or  	$push218=, $pop214, $pop217
	br_if   	0, $pop218
	f64.store	0($13), $10
.LBB51_30:
	end_block
	i32.const	$push219=, 8
	i32.add 	$push220=, $0, $pop219
	i32.call	$push221=, _ZNK5eosio14exchange_state20requires_margin_callERKNS0_9connectorE@FUNCTION, $pop220, $3
	i32.const	$push222=, 1
	i32.xor 	$push223=, $pop221, $pop222
	i32.const	$push224=, .L.str.17
	call    	eosio_assert@FUNCTION, $pop223, $pop224
	br      	1
.LBB51_31:
	end_block
	i32.const	$push225=, 80
	i32.add 	$push226=, $3, $pop225
	i64.const	$push227=, 9218868437227405311
	i64.store	0($pop226), $pop227
.LBB51_32:
	end_block
	i32.const	$push234=, 0
	i32.const	$push232=, 112
	i32.add 	$push233=, $15, $pop232
	i32.store	__stack_pointer($pop234), $pop233
	.endfunc
.Lfunc_end51:
	.size	_ZN5eosio12market_state13adjust_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetESG_, .Lfunc_end51-_ZN5eosio12market_state13adjust_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetESG_

	.hidden	_ZN5eosio12market_state4saveEv
	.globl	_ZN5eosio12market_state4saveEv
	.type	_ZN5eosio12market_state4saveEv,@function
_ZN5eosio12market_state4saveEv:
	.param  	i32
	.local  	i64, i32, i32, i32
	i32.const	$push35=, 0
	i32.const	$push32=, 0
	i32.load	$push33=, __stack_pointer($pop32)
	i32.const	$push34=, 240
	i32.sub 	$push52=, $pop33, $pop34
	tee_local	$push51=, $4=, $pop52
	i32.store	__stack_pointer($pop35), $pop51
	i32.const	$push0=, 448
	i32.add 	$push1=, $0, $pop0
	i32.load	$push50=, 0($pop1)
	tee_local	$push49=, $2=, $pop50
	i32.const	$push2=, 0
	i32.ne  	$push3=, $pop49, $pop2
	i32.const	$push4=, .L.str.90
	call    	eosio_assert@FUNCTION, $pop3, $pop4
	i32.load	$push7=, 232($2)
	i32.const	$push5=, 240
	i32.add 	$push6=, $0, $pop5
	i32.eq  	$push8=, $pop7, $pop6
	i32.const	$push9=, .L.str.84
	call    	eosio_assert@FUNCTION, $pop8, $pop9
	i64.load	$push10=, 240($0)
	i64.call	$push11=, current_receiver@FUNCTION
	i64.eq  	$push12=, $pop10, $pop11
	i32.const	$push13=, .L.str.85
	call    	eosio_assert@FUNCTION, $pop12, $pop13
	i32.const	$push14=, 16
	i32.add 	$push48=, $2, $pop14
	tee_local	$push47=, $3=, $pop48
	i64.load	$1=, 0($pop47)
	i32.const	$push15=, 8
	i32.add 	$push16=, $0, $pop15
	i32.const	$push17=, 232
	i32.call	$drop=, memcpy@FUNCTION, $2, $pop16, $pop17
	i64.const	$push18=, 8
	i64.shr_u	$push46=, $1, $pop18
	tee_local	$push45=, $1=, $pop46
	i64.load	$push19=, 0($3)
	i64.const	$push44=, 8
	i64.shr_u	$push20=, $pop19, $pop44
	i64.eq  	$push21=, $pop45, $pop20
	i32.const	$push22=, .L.str.86
	call    	eosio_assert@FUNCTION, $pop21, $pop22
	i32.const	$push23=, 220
	i32.add 	$push24=, $4, $pop23
	i32.store	232($4), $pop24
	i32.store	228($4), $4
	i32.store	224($4), $4
	i32.const	$push39=, 224
	i32.add 	$push40=, $4, $pop39
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_stateE@FUNCTION, $pop40, $2
	i32.load	$push25=, 236($2)
	i64.const	$push26=, 0
	i32.const	$push43=, 220
	call    	db_update_i64@FUNCTION, $pop25, $pop26, $4, $pop43
	block   	
	i32.const	$push27=, 256
	i32.add 	$push42=, $0, $pop27
	tee_local	$push41=, $0=, $pop42
	i64.load	$push28=, 0($pop41)
	i64.lt_u	$push29=, $1, $pop28
	br_if   	0, $pop29
	i64.const	$push30=, 1
	i64.add 	$push31=, $1, $pop30
	i64.store	0($0), $pop31
.LBB52_2:
	end_block
	i32.const	$push38=, 0
	i32.const	$push36=, 240
	i32.add 	$push37=, $4, $pop36
	i32.store	__stack_pointer($pop38), $pop37
	.endfunc
.Lfunc_end52:
	.size	_ZN5eosio12market_state4saveEv, .Lfunc_end52-_ZN5eosio12market_state4saveEv

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_stateE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_stateE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_stateE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_stateE
	.type	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_stateE,@function
_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_stateE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $1, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push68=, 8
	i32.add 	$push67=, $pop8, $pop68
	tee_local	$push66=, $2=, $pop67
	i32.store	4($0), $pop66
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push65=, 7
	i32.gt_s	$push11=, $pop10, $pop65
	i32.const	$push64=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop11, $pop64
	i32.load	$push13=, 4($0)
	i32.const	$push63=, 8
	i32.add 	$push12=, $1, $pop63
	i32.const	$push62=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop12, $pop62
	i32.load	$push14=, 4($0)
	i32.const	$push61=, 8
	i32.add 	$push60=, $pop14, $pop61
	tee_local	$push59=, $2=, $pop60
	i32.store	4($0), $pop59
	i32.load	$push15=, 8($0)
	i32.sub 	$push16=, $pop15, $2
	i32.const	$push58=, 7
	i32.gt_s	$push17=, $pop16, $pop58
	i32.const	$push57=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop17, $pop57
	i32.load	$push20=, 4($0)
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.const	$push56=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop20, $pop19, $pop56
	i32.load	$push21=, 4($0)
	i32.const	$push55=, 8
	i32.add 	$push54=, $pop21, $pop55
	tee_local	$push53=, $2=, $pop54
	i32.store	4($0), $pop53
	i32.load	$push22=, 8($0)
	i32.sub 	$push23=, $pop22, $2
	i32.const	$push52=, 7
	i32.gt_s	$push24=, $pop23, $pop52
	i32.const	$push51=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop24, $pop51
	i32.load	$push27=, 4($0)
	i32.const	$push25=, 24
	i32.add 	$push26=, $1, $pop25
	i32.const	$push50=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $pop26, $pop50
	i32.load	$push28=, 4($0)
	i32.const	$push49=, 8
	i32.add 	$push48=, $pop28, $pop49
	tee_local	$push47=, $2=, $pop48
	i32.store	4($0), $pop47
	i32.load	$push29=, 8($0)
	i32.sub 	$push30=, $pop29, $2
	i32.const	$push31=, 3
	i32.gt_s	$push32=, $pop30, $pop31
	i32.const	$push46=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop32, $pop46
	i32.load	$push35=, 4($0)
	i32.const	$push33=, 32
	i32.add 	$push34=, $1, $pop33
	i32.const	$push36=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop35, $pop34, $pop36
	i32.load	$push37=, 4($0)
	i32.const	$push45=, 4
	i32.add 	$push38=, $pop37, $pop45
	i32.store	4($0), $pop38
	i32.const	$push41=, 40
	i32.add 	$push42=, $1, $pop41
	i32.call	$push43=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_state9connectorE@FUNCTION, $0, $pop42
	i32.const	$push39=, 136
	i32.add 	$push40=, $1, $pop39
	i32.call	$push44=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_state9connectorE@FUNCTION, $pop43, $pop40
	.endfunc
.Lfunc_end53:
	.size	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_stateE, .Lfunc_end53-_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_stateE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_state9connectorE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_state9connectorE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_state9connectorE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_state9connectorE
	.type	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_state9connectorE,@function
_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_state9connectorE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $1, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push153=, 8
	i32.add 	$push152=, $pop8, $pop153
	tee_local	$push151=, $2=, $pop152
	i32.store	4($0), $pop151
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push150=, 7
	i32.gt_s	$push11=, $pop10, $pop150
	i32.const	$push149=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop11, $pop149
	i32.load	$push13=, 4($0)
	i32.const	$push148=, 8
	i32.add 	$push12=, $1, $pop148
	i32.const	$push147=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop12, $pop147
	i32.load	$push14=, 4($0)
	i32.const	$push146=, 8
	i32.add 	$push145=, $pop14, $pop146
	tee_local	$push144=, $2=, $pop145
	i32.store	4($0), $pop144
	i32.load	$push15=, 8($0)
	i32.sub 	$push16=, $pop15, $2
	i32.const	$push143=, 7
	i32.gt_s	$push17=, $pop16, $pop143
	i32.const	$push142=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop17, $pop142
	i32.load	$push20=, 4($0)
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.const	$push141=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop20, $pop19, $pop141
	i32.load	$push21=, 4($0)
	i32.const	$push140=, 8
	i32.add 	$push139=, $pop21, $pop140
	tee_local	$push138=, $2=, $pop139
	i32.store	4($0), $pop138
	i32.load	$push22=, 8($0)
	i32.sub 	$push23=, $pop22, $2
	i32.const	$push24=, 3
	i32.gt_s	$push25=, $pop23, $pop24
	i32.const	$push137=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop25, $pop137
	i32.load	$push28=, 4($0)
	i32.const	$push26=, 24
	i32.add 	$push27=, $1, $pop26
	i32.const	$push29=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop28, $pop27, $pop29
	i32.load	$push30=, 4($0)
	i32.const	$push136=, 4
	i32.add 	$push135=, $pop30, $pop136
	tee_local	$push134=, $2=, $pop135
	i32.store	4($0), $pop134
	i32.load	$push31=, 8($0)
	i32.sub 	$push32=, $pop31, $2
	i32.const	$push133=, 7
	i32.gt_s	$push33=, $pop32, $pop133
	i32.const	$push132=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop33, $pop132
	i32.load	$push36=, 4($0)
	i32.const	$push34=, 32
	i32.add 	$push35=, $1, $pop34
	i32.const	$push131=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop36, $pop35, $pop131
	i32.load	$push37=, 4($0)
	i32.const	$push130=, 8
	i32.add 	$push129=, $pop37, $pop130
	tee_local	$push128=, $2=, $pop129
	i32.store	4($0), $pop128
	i32.load	$push38=, 8($0)
	i32.sub 	$push39=, $pop38, $2
	i32.const	$push127=, 7
	i32.gt_s	$push40=, $pop39, $pop127
	i32.const	$push126=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop40, $pop126
	i32.load	$push43=, 4($0)
	i32.const	$push41=, 40
	i32.add 	$push42=, $1, $pop41
	i32.const	$push125=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop43, $pop42, $pop125
	i32.load	$push44=, 4($0)
	i32.const	$push124=, 8
	i32.add 	$push123=, $pop44, $pop124
	tee_local	$push122=, $2=, $pop123
	i32.store	4($0), $pop122
	i32.load	$push45=, 8($0)
	i32.sub 	$push46=, $pop45, $2
	i32.const	$push121=, 7
	i32.gt_s	$push47=, $pop46, $pop121
	i32.const	$push120=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop47, $pop120
	i32.load	$push50=, 4($0)
	i32.const	$push48=, 48
	i32.add 	$push49=, $1, $pop48
	i32.const	$push119=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop50, $pop49, $pop119
	i32.load	$push51=, 4($0)
	i32.const	$push118=, 8
	i32.add 	$push117=, $pop51, $pop118
	tee_local	$push116=, $2=, $pop117
	i32.store	4($0), $pop116
	i32.load	$push52=, 8($0)
	i32.sub 	$push53=, $pop52, $2
	i32.const	$push115=, 7
	i32.gt_s	$push54=, $pop53, $pop115
	i32.const	$push114=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop54, $pop114
	i32.load	$push57=, 4($0)
	i32.const	$push55=, 56
	i32.add 	$push56=, $1, $pop55
	i32.const	$push113=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop57, $pop56, $pop113
	i32.load	$push58=, 4($0)
	i32.const	$push112=, 8
	i32.add 	$push111=, $pop58, $pop112
	tee_local	$push110=, $2=, $pop111
	i32.store	4($0), $pop110
	i32.load	$push59=, 8($0)
	i32.sub 	$push60=, $pop59, $2
	i32.const	$push109=, 7
	i32.gt_s	$push61=, $pop60, $pop109
	i32.const	$push108=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop61, $pop108
	i32.load	$push64=, 4($0)
	i32.const	$push62=, 64
	i32.add 	$push63=, $1, $pop62
	i32.const	$push107=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop64, $pop63, $pop107
	i32.load	$push65=, 4($0)
	i32.const	$push106=, 8
	i32.add 	$push105=, $pop65, $pop106
	tee_local	$push104=, $2=, $pop105
	i32.store	4($0), $pop104
	i32.load	$push66=, 8($0)
	i32.sub 	$push67=, $pop66, $2
	i32.const	$push103=, 7
	i32.gt_s	$push68=, $pop67, $pop103
	i32.const	$push102=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop68, $pop102
	i32.load	$push71=, 4($0)
	i32.const	$push69=, 72
	i32.add 	$push70=, $1, $pop69
	i32.const	$push101=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop71, $pop70, $pop101
	i32.load	$push72=, 4($0)
	i32.const	$push100=, 8
	i32.add 	$push99=, $pop72, $pop100
	tee_local	$push98=, $2=, $pop99
	i32.store	4($0), $pop98
	i32.load	$push73=, 8($0)
	i32.sub 	$push74=, $pop73, $2
	i32.const	$push97=, 7
	i32.gt_s	$push75=, $pop74, $pop97
	i32.const	$push96=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop75, $pop96
	i32.load	$push78=, 4($0)
	i32.const	$push76=, 80
	i32.add 	$push77=, $1, $pop76
	i32.const	$push95=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop78, $pop77, $pop95
	i32.load	$push79=, 4($0)
	i32.const	$push94=, 8
	i32.add 	$push93=, $pop79, $pop94
	tee_local	$push92=, $2=, $pop93
	i32.store	4($0), $pop92
	i32.load	$push80=, 8($0)
	i32.sub 	$push81=, $pop80, $2
	i32.const	$push91=, 7
	i32.gt_s	$push82=, $pop81, $pop91
	i32.const	$push90=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop82, $pop90
	i32.load	$push85=, 4($0)
	i32.const	$push83=, 88
	i32.add 	$push84=, $1, $pop83
	i32.const	$push89=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop85, $pop84, $pop89
	i32.load	$push86=, 4($0)
	i32.const	$push88=, 8
	i32.add 	$push87=, $pop86, $pop88
	i32.store	4($0), $pop87
	copy_local	$push154=, $0
	.endfunc
.Lfunc_end54:
	.size	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_state9connectorE, .Lfunc_end54-_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_state9connectorE

	.text
	.hidden	_ZN5eosio8exchange7depositEyNS_14extended_assetE
	.globl	_ZN5eosio8exchange7depositEyNS_14extended_assetE
	.type	_ZN5eosio8exchange7depositEyNS_14extended_assetE,@function
_ZN5eosio8exchange7depositEyNS_14extended_assetE:
	.param  	i32, i64, i32
	.local  	i64, i32, i32, i32, i64, i64, i64, i64, i32
	i32.const	$push119=, 0
	i32.const	$push116=, 0
	i32.load	$push117=, __stack_pointer($pop116)
	i32.const	$push118=, 128
	i32.sub 	$push164=, $pop117, $pop118
	tee_local	$push163=, $11=, $pop164
	i32.store	__stack_pointer($pop119), $pop163
	i32.const	$4=, 0
	block   	
	i64.load	$push0=, 0($2)
	i64.const	$push1=, 4611686018427387903
	i64.add 	$push2=, $pop0, $pop1
	i64.const	$push3=, 9223372036854775806
	i64.gt_u	$push4=, $pop2, $pop3
	br_if   	0, $pop4
	i64.load	$push5=, 8($2)
	i64.const	$push165=, 8
	i64.shr_u	$8=, $pop5, $pop165
	i32.const	$6=, 0
.LBB55_2:
	block   	
	loop    	
	i32.wrap/i64	$push6=, $8
	i32.const	$push168=, 24
	i32.shl 	$push7=, $pop6, $pop168
	i32.const	$push167=, -1073741825
	i32.add 	$push8=, $pop7, $pop167
	i32.const	$push166=, 452984830
	i32.gt_u	$push9=, $pop8, $pop166
	br_if   	1, $pop9
	block   	
	i64.const	$push173=, 8
	i64.shr_u	$push172=, $8, $pop173
	tee_local	$push171=, $8=, $pop172
	i64.const	$push170=, 255
	i64.and 	$push10=, $pop171, $pop170
	i64.const	$push169=, 0
	i64.ne  	$push11=, $pop10, $pop169
	br_if   	0, $pop11
.LBB55_4:
	loop    	
	i64.const	$push178=, 8
	i64.shr_u	$push177=, $8, $pop178
	tee_local	$push176=, $8=, $pop177
	i64.const	$push175=, 255
	i64.and 	$push12=, $pop176, $pop175
	i64.const	$push174=, 0
	i64.ne  	$push13=, $pop12, $pop174
	br_if   	3, $pop13
	i32.const	$push182=, 1
	i32.add 	$push181=, $6, $pop182
	tee_local	$push180=, $6=, $pop181
	i32.const	$push179=, 7
	i32.lt_s	$push14=, $pop180, $pop179
	br_if   	0, $pop14
.LBB55_6:
	end_loop
	end_block
	i32.const	$4=, 1
	i32.const	$push186=, 1
	i32.add 	$push185=, $6, $pop186
	tee_local	$push184=, $6=, $pop185
	i32.const	$push183=, 7
	i32.lt_s	$push15=, $pop184, $pop183
	br_if   	0, $pop15
	br      	2
.LBB55_7:
	end_loop
	end_block
	i32.const	$4=, 0
.LBB55_8:
	end_block
	i32.const	$push16=, .L.str.18
	call    	eosio_assert@FUNCTION, $4, $pop16
	i32.const	$push123=, 104
	i32.add 	$push124=, $11, $pop123
	i32.const	$push17=, 20
	i32.add 	$push20=, $pop124, $pop17
	i32.const	$push194=, 20
	i32.add 	$push18=, $2, $pop194
	i32.load	$push19=, 0($pop18)
	i32.store	0($pop20), $pop19
	i32.const	$push125=, 104
	i32.add 	$push126=, $11, $pop125
	i32.const	$push21=, 16
	i32.add 	$push24=, $pop126, $pop21
	i32.const	$push193=, 16
	i32.add 	$push22=, $2, $pop193
	i32.load	$push23=, 0($pop22)
	i32.store	0($pop24), $pop23
	i32.const	$push127=, 104
	i32.add 	$push128=, $11, $pop127
	i32.const	$push25=, 12
	i32.add 	$push28=, $pop128, $pop25
	i32.const	$push192=, 12
	i32.add 	$push26=, $2, $pop192
	i32.load	$push27=, 0($pop26)
	i32.store	0($pop28), $pop27
	i32.const	$push129=, 104
	i32.add 	$push130=, $11, $pop129
	i32.const	$push29=, 8
	i32.add 	$push32=, $pop130, $pop29
	i32.const	$push191=, 8
	i32.add 	$push30=, $2, $pop191
	i32.load	$push31=, 0($pop30)
	i32.store	0($pop32), $pop31
	i32.const	$push33=, 4
	i32.add 	$push34=, $2, $pop33
	i32.load	$push35=, 0($pop34)
	i32.store	108($11), $pop35
	i32.load	$push36=, 0($2)
	i32.store	104($11), $pop36
	i64.load	$3=, 0($0)
	i32.const	$push131=, 88
	i32.add 	$push132=, $11, $pop131
	i32.const	$push190=, 8
	i32.add 	$push37=, $pop132, $pop190
	i32.const	$push189=, 0
	i32.store	0($pop37), $pop189
	i64.const	$push38=, 0
	i64.store	88($11), $pop38
	block   	
	block   	
	i32.const	$push39=, .L.str.19
	i32.call	$push188=, strlen@FUNCTION, $pop39
	tee_local	$push187=, $6=, $pop188
	i32.const	$push40=, -16
	i32.ge_u	$push41=, $pop187, $pop40
	br_if   	0, $pop41
	block   	
	block   	
	block   	
	i32.const	$push42=, 11
	i32.ge_u	$push43=, $6, $pop42
	br_if   	0, $pop43
	i32.const	$push49=, 1
	i32.shl 	$push50=, $6, $pop49
	i32.store8	88($11), $pop50
	i32.const	$push135=, 88
	i32.add 	$push136=, $11, $pop135
	i32.const	$push195=, 1
	i32.or  	$4=, $pop136, $pop195
	br_if   	1, $6
	br      	2
.LBB55_11:
	end_block
	i32.const	$push44=, 16
	i32.add 	$push45=, $6, $pop44
	i32.const	$push46=, -16
	i32.and 	$push197=, $pop45, $pop46
	tee_local	$push196=, $5=, $pop197
	i32.call	$4=, _Znwj@FUNCTION, $pop196
	i32.const	$push47=, 1
	i32.or  	$push48=, $5, $pop47
	i32.store	88($11), $pop48
	i32.store	96($11), $4
	i32.store	92($11), $6
.LBB55_12:
	end_block
	i32.const	$push51=, .L.str.19
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop51, $6
.LBB55_13:
	end_block
	i32.add 	$push52=, $4, $6
	i32.const	$push198=, 0
	i32.store8	0($pop52), $pop198
	i64.const	$8=, 0
	i64.const	$7=, 59
	i32.const	$6=, .L.str.20
	i64.const	$9=, 0
.LBB55_14:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push199=, 5
	i64.gt_u	$push53=, $8, $pop199
	br_if   	0, $pop53
	i32.load8_s	$push204=, 0($6)
	tee_local	$push203=, $4=, $pop204
	i32.const	$push202=, -97
	i32.add 	$push55=, $pop203, $pop202
	i32.const	$push201=, 255
	i32.and 	$push56=, $pop55, $pop201
	i32.const	$push200=, 25
	i32.gt_u	$push57=, $pop56, $pop200
	br_if   	1, $pop57
	i32.const	$push205=, 165
	i32.add 	$4=, $4, $pop205
	br      	2
.LBB55_17:
	end_block
	i64.const	$10=, 0
	i64.const	$push206=, 11
	i64.le_u	$push54=, $8, $pop206
	br_if   	2, $pop54
	br      	3
.LBB55_18:
	end_block
	i32.const	$push211=, 208
	i32.add 	$push58=, $4, $pop211
	i32.const	$push210=, 0
	i32.const	$push209=, -49
	i32.add 	$push59=, $4, $pop209
	i32.const	$push208=, 255
	i32.and 	$push60=, $pop59, $pop208
	i32.const	$push207=, 5
	i32.lt_u	$push61=, $pop60, $pop207
	i32.select	$4=, $pop58, $pop210, $pop61
.LBB55_19:
	end_block
	i64.extend_u/i32	$push62=, $4
	i64.const	$push213=, 56
	i64.shl 	$push63=, $pop62, $pop213
	i64.const	$push212=, 56
	i64.shr_s	$10=, $pop63, $pop212
.LBB55_20:
	end_block
	i64.const	$push215=, 31
	i64.and 	$push65=, $10, $pop215
	i64.const	$push214=, 4294967295
	i64.and 	$push64=, $7, $pop214
	i64.shl 	$10=, $pop65, $pop64
.LBB55_21:
	end_block
	i32.const	$push221=, 1
	i32.add 	$6=, $6, $pop221
	i64.const	$push220=, 1
	i64.add 	$8=, $8, $pop220
	i64.or  	$9=, $10, $9
	i64.const	$push219=, -5
	i64.add 	$push218=, $7, $pop219
	tee_local	$push217=, $7=, $pop218
	i64.const	$push216=, -6
	i64.ne  	$push66=, $pop217, $pop216
	br_if   	0, $pop66
	end_loop
	i32.const	$push137=, 24
	i32.add 	$push138=, $11, $pop137
	i32.const	$push225=, 16
	i32.add 	$push67=, $pop138, $pop225
	i32.const	$push139=, 104
	i32.add 	$push140=, $11, $pop139
	i32.const	$push224=, 16
	i32.add 	$push68=, $pop140, $pop224
	i64.load	$push69=, 0($pop68)
	i64.store	0($pop67), $pop69
	i32.const	$push141=, 24
	i32.add 	$push142=, $11, $pop141
	i32.const	$push223=, 8
	i32.add 	$push70=, $pop142, $pop223
	i32.const	$push143=, 104
	i32.add 	$push144=, $11, $pop143
	i32.const	$push222=, 8
	i32.add 	$push71=, $pop144, $pop222
	i64.load	$push72=, 0($pop71)
	i64.store	0($pop70), $pop72
	i64.load	$push73=, 104($11)
	i64.store	24($11), $pop73
	i32.const	$push145=, 24
	i32.add 	$push146=, $11, $pop145
	i32.const	$push147=, 88
	i32.add 	$push148=, $11, $pop147
	call    	_ZN5eosio8currency15inline_transferEyyNS_14extended_assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy@FUNCTION, $1, $3, $pop146, $pop148, $9
	block   	
	i32.load8_u	$push75=, 88($11)
	i32.const	$push74=, 1
	i32.and 	$push76=, $pop75, $pop74
	i32.eqz 	$push239=, $pop76
	br_if   	0, $pop239
	i32.load	$push77=, 96($11)
	call    	_ZdlPv@FUNCTION, $pop77
.LBB55_24:
	end_block
	i32.const	$push149=, 64
	i32.add 	$push150=, $11, $pop149
	i32.const	$push232=, 16
	i32.add 	$push80=, $pop150, $pop232
	i32.const	$push231=, 16
	i32.add 	$push78=, $2, $pop231
	i64.load	$push79=, 0($pop78)
	i64.store	0($pop80), $pop79
	i32.const	$push151=, 64
	i32.add 	$push152=, $11, $pop151
	i32.const	$push230=, 8
	i32.add 	$push83=, $pop152, $pop230
	i32.const	$push229=, 8
	i32.add 	$push81=, $2, $pop229
	i64.load	$push82=, 0($pop81)
	i64.store	0($pop83), $pop82
	i64.load	$push84=, 0($2)
	i64.store	64($11), $pop84
	i32.const	$push153=, 48
	i32.add 	$push154=, $11, $pop153
	i32.const	$push228=, 8
	i32.add 	$push85=, $pop154, $pop228
	i32.const	$push86=, 0
	i32.store	0($pop85), $pop86
	i64.const	$push87=, 0
	i64.store	48($11), $pop87
	i32.const	$push88=, .L.str.19
	i32.call	$push227=, strlen@FUNCTION, $pop88
	tee_local	$push226=, $6=, $pop227
	i32.const	$push89=, -16
	i32.ge_u	$push90=, $pop226, $pop89
	br_if   	1, $pop90
	i32.const	$push233=, 16
	i32.add 	$2=, $0, $pop233
	block   	
	block   	
	block   	
	i32.const	$push91=, 11
	i32.ge_u	$push92=, $6, $pop91
	br_if   	0, $pop92
	i32.const	$push98=, 1
	i32.shl 	$push99=, $6, $pop98
	i32.store8	48($11), $pop99
	i32.const	$push157=, 48
	i32.add 	$push158=, $11, $pop157
	i32.const	$push234=, 1
	i32.or  	$4=, $pop158, $pop234
	br_if   	1, $6
	br      	2
.LBB55_27:
	end_block
	i32.const	$push93=, 16
	i32.add 	$push94=, $6, $pop93
	i32.const	$push95=, -16
	i32.and 	$push236=, $pop94, $pop95
	tee_local	$push235=, $0=, $pop236
	i32.call	$4=, _Znwj@FUNCTION, $pop235
	i32.const	$push96=, 1
	i32.or  	$push97=, $0, $pop96
	i32.store	48($11), $pop97
	i32.store	56($11), $4
	i32.store	52($11), $6
.LBB55_28:
	end_block
	i32.const	$push100=, .L.str.19
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop100, $6
.LBB55_29:
	end_block
	i32.add 	$push101=, $4, $6
	i32.const	$push102=, 0
	i32.store8	0($pop101), $pop102
	i32.const	$push103=, 16
	i32.add 	$push104=, $11, $pop103
	i32.const	$push159=, 64
	i32.add 	$push160=, $11, $pop159
	i32.const	$push238=, 16
	i32.add 	$push105=, $pop160, $pop238
	i64.load	$push106=, 0($pop105)
	i64.store	0($pop104), $pop106
	i32.const	$push107=, 8
	i32.add 	$push108=, $11, $pop107
	i32.const	$push161=, 64
	i32.add 	$push162=, $11, $pop161
	i32.const	$push237=, 8
	i32.add 	$push109=, $pop162, $pop237
	i64.load	$push110=, 0($pop109)
	i64.store	0($pop108), $pop110
	i64.load	$push111=, 64($11)
	i64.store	0($11), $pop111
	call    	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE@FUNCTION, $2, $1, $11, $6
	block   	
	i32.load8_u	$push113=, 48($11)
	i32.const	$push112=, 1
	i32.and 	$push114=, $pop113, $pop112
	i32.eqz 	$push240=, $pop114
	br_if   	0, $pop240
	i32.load	$push115=, 56($11)
	call    	_ZdlPv@FUNCTION, $pop115
.LBB55_31:
	end_block
	i32.const	$push122=, 0
	i32.const	$push120=, 128
	i32.add 	$push121=, $11, $pop120
	i32.store	__stack_pointer($pop122), $pop121
	return
.LBB55_32:
	end_block
	i32.const	$push133=, 88
	i32.add 	$push134=, $11, $pop133
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop134
	unreachable
.LBB55_33:
	end_block
	i32.const	$push155=, 48
	i32.add 	$push156=, $11, $pop155
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop156
	unreachable
	.endfunc
.Lfunc_end55:
	.size	_ZN5eosio8exchange7depositEyNS_14extended_assetE, .Lfunc_end55-_ZN5eosio8exchange7depositEyNS_14extended_assetE

	.section	.text._ZN5eosio8currency15inline_transferEyyNS_14extended_assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy,"axG",@progbits,_ZN5eosio8currency15inline_transferEyyNS_14extended_assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy,comdat
	.hidden	_ZN5eosio8currency15inline_transferEyyNS_14extended_assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy
	.weak	_ZN5eosio8currency15inline_transferEyyNS_14extended_assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy
	.type	_ZN5eosio8currency15inline_transferEyyNS_14extended_assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy,@function
_ZN5eosio8currency15inline_transferEyyNS_14extended_assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy:
	.param  	i64, i64, i32, i32, i64
	.local  	i64, i32, i32, i64, i64, i64, i64, i32
	i32.const	$push65=, 0
	i32.const	$push62=, 0
	i32.load	$push63=, __stack_pointer($pop62)
	i32.const	$push64=, 112
	i32.sub 	$push98=, $pop63, $pop64
	tee_local	$push97=, $12=, $pop98
	i32.store	__stack_pointer($pop65), $pop97
	i64.load	$5=, 16($2)
	i64.const	$9=, 0
	i64.const	$8=, 59
	i32.const	$7=, .L.str.64
	i64.const	$10=, 0
.LBB56_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push99=, 7
	i64.gt_u	$push0=, $9, $pop99
	br_if   	0, $pop0
	i32.load8_s	$push104=, 0($7)
	tee_local	$push103=, $6=, $pop104
	i32.const	$push102=, -97
	i32.add 	$push2=, $pop103, $pop102
	i32.const	$push101=, 255
	i32.and 	$push3=, $pop2, $pop101
	i32.const	$push100=, 25
	i32.gt_u	$push4=, $pop3, $pop100
	br_if   	1, $pop4
	i32.const	$push105=, 165
	i32.add 	$6=, $6, $pop105
	br      	2
.LBB56_4:
	end_block
	i64.const	$11=, 0
	i64.const	$push106=, 11
	i64.le_u	$push1=, $9, $pop106
	br_if   	2, $pop1
	br      	3
.LBB56_5:
	end_block
	i32.const	$push111=, 208
	i32.add 	$push5=, $6, $pop111
	i32.const	$push110=, 0
	i32.const	$push109=, -49
	i32.add 	$push6=, $6, $pop109
	i32.const	$push108=, 255
	i32.and 	$push7=, $pop6, $pop108
	i32.const	$push107=, 5
	i32.lt_u	$push8=, $pop7, $pop107
	i32.select	$6=, $pop5, $pop110, $pop8
.LBB56_6:
	end_block
	i64.extend_u/i32	$push9=, $6
	i64.const	$push113=, 56
	i64.shl 	$push10=, $pop9, $pop113
	i64.const	$push112=, 56
	i64.shr_s	$11=, $pop10, $pop112
.LBB56_7:
	end_block
	i64.const	$push115=, 31
	i64.and 	$push12=, $11, $pop115
	i64.const	$push114=, 4294967295
	i64.and 	$push11=, $8, $pop114
	i64.shl 	$11=, $pop12, $pop11
.LBB56_8:
	end_block
	i32.const	$push121=, 1
	i32.add 	$7=, $7, $pop121
	i64.const	$push120=, 1
	i64.add 	$9=, $9, $pop120
	i64.or  	$10=, $11, $10
	i64.const	$push119=, -5
	i64.add 	$push118=, $8, $pop119
	tee_local	$push117=, $8=, $pop118
	i64.const	$push116=, -6
	i64.ne  	$push13=, $pop117, $pop116
	br_if   	0, $pop13
	end_loop
	i32.const	$push69=, 8
	i32.add 	$push70=, $12, $pop69
	i32.const	$push17=, 28
	i32.add 	$push18=, $pop70, $pop17
	i32.const	$push14=, 12
	i32.add 	$push15=, $2, $pop14
	i32.load	$push16=, 0($pop15)
	i32.store	0($pop18), $pop16
	i32.const	$push71=, 8
	i32.add 	$push72=, $12, $pop71
	i32.const	$push22=, 24
	i32.add 	$push23=, $pop72, $pop22
	i32.const	$push19=, 8
	i32.add 	$push20=, $2, $pop19
	i32.load	$push21=, 0($pop20)
	i32.store	0($pop23), $pop21
	i32.const	$push73=, 8
	i32.add 	$push74=, $12, $pop73
	i32.const	$push27=, 20
	i32.add 	$push28=, $pop74, $pop27
	i32.const	$push24=, 4
	i32.add 	$push25=, $2, $pop24
	i32.load	$push26=, 0($pop25)
	i32.store	0($pop28), $pop26
	i64.store	16($12), $1
	i64.store	8($12), $0
	i32.load	$push29=, 0($2)
	i32.store	24($12), $pop29
	i32.const	$push75=, 8
	i32.add 	$push76=, $12, $pop75
	i32.const	$push30=, 32
	i32.add 	$push31=, $pop76, $pop30
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop31, $3
	i64.store	64($12), $10
	i64.store	56($12), $5
	i32.const	$push32=, 16
	i32.call	$push140=, _Znwj@FUNCTION, $pop32
	tee_local	$push139=, $7=, $pop140
	i64.store	0($pop139), $0
	i64.store	8($7), $4
	i32.const	$push77=, 56
	i32.add 	$push78=, $12, $pop77
	i32.const	$push138=, 32
	i32.add 	$push33=, $pop78, $pop138
	i32.const	$push34=, 0
	i32.store	0($pop33), $pop34
	i32.const	$push79=, 56
	i32.add 	$push80=, $12, $pop79
	i32.const	$push137=, 24
	i32.add 	$push35=, $pop80, $pop137
	i32.const	$push136=, 16
	i32.add 	$push135=, $7, $pop136
	tee_local	$push134=, $6=, $pop135
	i32.store	0($pop35), $pop134
	i32.const	$push81=, 56
	i32.add 	$push82=, $12, $pop81
	i32.const	$push133=, 20
	i32.add 	$push36=, $pop82, $pop133
	i32.store	0($pop36), $6
	i32.store	72($12), $7
	i32.const	$push132=, 0
	i32.store	84($12), $pop132
	i32.const	$push83=, 56
	i32.add 	$push84=, $12, $pop83
	i32.const	$push37=, 36
	i32.add 	$push38=, $pop84, $pop37
	i32.const	$push131=, 0
	i32.store	0($pop38), $pop131
	i32.const	$push85=, 8
	i32.add 	$push86=, $12, $pop85
	i32.const	$push130=, 36
	i32.add 	$push41=, $pop86, $pop130
	i32.load	$push42=, 0($pop41)
	i32.load8_u	$push129=, 40($12)
	tee_local	$push128=, $7=, $pop129
	i32.const	$push127=, 1
	i32.shr_u	$push40=, $pop128, $pop127
	i32.const	$push126=, 1
	i32.and 	$push39=, $7, $pop126
	i32.select	$push125=, $pop42, $pop40, $pop39
	tee_local	$push124=, $6=, $pop125
	i32.const	$push123=, 32
	i32.add 	$7=, $pop124, $pop123
	i64.extend_u/i32	$9=, $6
	i32.const	$push87=, 56
	i32.add 	$push88=, $12, $pop87
	i32.const	$push122=, 28
	i32.add 	$6=, $pop88, $pop122
.LBB56_10:
	loop    	
	i32.const	$push145=, 1
	i32.add 	$7=, $7, $pop145
	i64.const	$push144=, 7
	i64.shr_u	$push143=, $9, $pop144
	tee_local	$push142=, $9=, $pop143
	i64.const	$push141=, 0
	i64.ne  	$push43=, $pop142, $pop141
	br_if   	0, $pop43
	end_loop
	block   	
	block   	
	i32.eqz 	$push154=, $7
	br_if   	0, $pop154
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $6, $7
	i32.const	$push44=, 88
	i32.add 	$push45=, $12, $pop44
	i32.load	$6=, 0($pop45)
	i32.const	$push46=, 84
	i32.add 	$push47=, $12, $pop46
	i32.load	$7=, 0($pop47)
	br      	1
.LBB56_13:
	end_block
	i32.const	$6=, 0
	i32.const	$7=, 0
.LBB56_14:
	end_block
	i32.store	100($12), $7
	i32.store	96($12), $7
	i32.store	104($12), $6
	i32.const	$push89=, 96
	i32.add 	$push90=, $12, $pop89
	i32.const	$push91=, 8
	i32.add 	$push92=, $12, $pop91
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency8transferE@FUNCTION, $pop90, $pop92
	block   	
	i32.const	$push48=, 40
	i32.add 	$push49=, $12, $pop48
	i32.load8_u	$push50=, 0($pop49)
	i32.const	$push51=, 1
	i32.and 	$push52=, $pop50, $pop51
	i32.eqz 	$push155=, $pop52
	br_if   	0, $pop155
	i32.const	$push53=, 48
	i32.add 	$push54=, $12, $pop53
	i32.load	$push55=, 0($pop54)
	call    	_ZdlPv@FUNCTION, $pop55
.LBB56_16:
	end_block
	i32.const	$push93=, 8
	i32.add 	$push94=, $12, $pop93
	i32.const	$push95=, 56
	i32.add 	$push96=, $12, $pop95
	call    	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop94, $pop96
	i32.load	$push149=, 8($12)
	tee_local	$push148=, $7=, $pop149
	i32.load	$push56=, 12($12)
	i32.sub 	$push57=, $pop56, $7
	call    	send_inline@FUNCTION, $pop148, $pop57
	block   	
	i32.load	$push147=, 8($12)
	tee_local	$push146=, $7=, $pop147
	i32.eqz 	$push156=, $pop146
	br_if   	0, $pop156
	i32.store	12($12), $7
	call    	_ZdlPv@FUNCTION, $7
.LBB56_18:
	end_block
	block   	
	i32.load	$push151=, 84($12)
	tee_local	$push150=, $7=, $pop151
	i32.eqz 	$push157=, $pop150
	br_if   	0, $pop157
	i32.const	$push58=, 88
	i32.add 	$push59=, $12, $pop58
	i32.store	0($pop59), $7
	call    	_ZdlPv@FUNCTION, $7
.LBB56_20:
	end_block
	block   	
	i32.load	$push153=, 72($12)
	tee_local	$push152=, $7=, $pop153
	i32.eqz 	$push158=, $pop152
	br_if   	0, $pop158
	i32.const	$push60=, 76
	i32.add 	$push61=, $12, $pop60
	i32.store	0($pop61), $7
	call    	_ZdlPv@FUNCTION, $7
.LBB56_22:
	end_block
	i32.const	$push68=, 0
	i32.const	$push66=, 112
	i32.add 	$push67=, $12, $pop66
	i32.store	__stack_pointer($pop68), $pop67
	.endfunc
.Lfunc_end56:
	.size	_ZN5eosio8currency15inline_transferEyyNS_14extended_assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy, .Lfunc_end56-_ZN5eosio8currency15inline_transferEyyNS_14extended_assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy

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
.LBB57_4:
	end_block
	i32.call	$2=, _Znwj@FUNCTION, $6
	br      	3
.LBB57_5:
	end_block
	i32.const	$push2=, 4
	i32.add 	$0=, $0, $pop2
.LBB57_6:
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
.LBB57_7:
	end_loop
	end_block
	i32.const	$6=, 0
	i32.const	$2=, 0
	br      	1
.LBB57_8:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB57_9:
	end_block
	i32.add 	$4=, $2, $6
	i32.add 	$push33=, $2, $3
	tee_local	$push32=, $5=, $pop33
	copy_local	$6=, $pop32
.LBB57_10:
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
.LBB57_13:
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
.LBB57_15:
	end_block
	.endfunc
.Lfunc_end57:
	.size	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj, .Lfunc_end57-_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency8transferE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency8transferE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency8transferE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency8transferE
	.type	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency8transferE,@function
_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency8transferE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $1, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push52=, 8
	i32.add 	$push51=, $pop8, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.store	4($0), $pop50
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push49=, 7
	i32.gt_s	$push11=, $pop10, $pop49
	i32.const	$push48=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop11, $pop48
	i32.load	$push13=, 4($0)
	i32.const	$push47=, 8
	i32.add 	$push12=, $1, $pop47
	i32.const	$push46=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop12, $pop46
	i32.load	$push14=, 4($0)
	i32.const	$push45=, 8
	i32.add 	$push44=, $pop14, $pop45
	tee_local	$push43=, $2=, $pop44
	i32.store	4($0), $pop43
	i32.load	$push15=, 8($0)
	i32.sub 	$push16=, $pop15, $2
	i32.const	$push42=, 7
	i32.gt_s	$push17=, $pop16, $pop42
	i32.const	$push41=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop17, $pop41
	i32.load	$push20=, 4($0)
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.const	$push40=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop20, $pop19, $pop40
	i32.load	$push21=, 4($0)
	i32.const	$push39=, 8
	i32.add 	$push38=, $pop21, $pop39
	tee_local	$push37=, $2=, $pop38
	i32.store	4($0), $pop37
	i32.load	$push22=, 8($0)
	i32.sub 	$push23=, $pop22, $2
	i32.const	$push36=, 7
	i32.gt_s	$push24=, $pop23, $pop36
	i32.const	$push35=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop24, $pop35
	i32.load	$push27=, 4($0)
	i32.const	$push25=, 24
	i32.add 	$push26=, $1, $pop25
	i32.const	$push34=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $pop26, $pop34
	i32.load	$push28=, 4($0)
	i32.const	$push33=, 8
	i32.add 	$push29=, $pop28, $pop33
	i32.store	4($0), $pop29
	i32.const	$push30=, 32
	i32.add 	$push31=, $1, $pop30
	i32.call	$push32=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $0, $pop31
	.endfunc
.Lfunc_end58:
	.size	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency8transferE, .Lfunc_end58-_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency8transferE

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
.LBB59_1:
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
.LBB59_4:
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
.LBB59_5:
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
.LBB59_8:
	end_block
	i32.const	$5=, 0
.LBB59_9:
	end_block
	i32.store	0($8), $5
	i32.store	8($8), $7
	i32.sub 	$push18=, $7, $5
	i32.const	$push19=, 7
	i32.gt_s	$push20=, $pop18, $pop19
	i32.const	$push21=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop20, $pop21
	i32.const	$push22=, 8
	i32.call	$drop=, memcpy@FUNCTION, $5, $1, $pop22
	i32.const	$push67=, 8
	i32.add 	$push66=, $5, $pop67
	tee_local	$push65=, $0=, $pop66
	i32.sub 	$push23=, $7, $pop65
	i32.const	$push64=, 7
	i32.gt_s	$push24=, $pop23, $pop64
	i32.const	$push63=, .L.str.79
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
.Lfunc_end59:
	.size	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_, .Lfunc_end59-_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_

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
.LBB60_1:
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
	i32.const	$push46=, .L.str.79
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
.LBB60_4:
	loop    	
	i32.const	$push80=, 8
	i32.add 	$push79=, $0, $pop80
	tee_local	$push78=, $2=, $pop79
	i32.load	$push15=, 0($pop78)
	i32.sub 	$push16=, $pop15, $5
	i32.const	$push77=, 7
	i32.gt_s	$push17=, $pop16, $pop77
	i32.const	$push76=, .L.str.79
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
	i32.const	$push70=, .L.str.79
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
.LBB60_5:
	end_loop
	end_block
	i32.const	$push33=, 0
	i32.const	$push31=, 16
	i32.add 	$push32=, $7, $pop31
	i32.store	__stack_pointer($pop33), $pop32
	copy_local	$push81=, $0
	.endfunc
.Lfunc_end60:
	.size	_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE, .Lfunc_end60-_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE

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
.LBB61_1:
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
	i32.const	$push40=, .L.str.79
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
	i32.const	$push21=, .L.str.79
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
.Lfunc_end61:
	.size	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE, .Lfunc_end61-_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE

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
.LBB62_1:
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
	i32.const	$push47=, .L.str.79
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
	i32.const	$push22=, .L.str.79
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
.LBB62_4:
	end_block
	i32.const	$push34=, 0
	i32.const	$push32=, 16
	i32.add 	$push33=, $8, $pop32
	i32.store	__stack_pointer($pop34), $pop33
	copy_local	$push71=, $0
	.endfunc
.Lfunc_end62:
	.size	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE, .Lfunc_end62-_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE

	.text
	.hidden	_ZN5eosio8exchange8withdrawEyNS_14extended_assetE
	.globl	_ZN5eosio8exchange8withdrawEyNS_14extended_assetE
	.type	_ZN5eosio8exchange8withdrawEyNS_14extended_assetE,@function
_ZN5eosio8exchange8withdrawEyNS_14extended_assetE:
	.param  	i32, i64, i32
	.local  	i64, i32, i32, i64, i64, i64, i64, i32
	i32.const	$push89=, 0
	i32.const	$push86=, 0
	i32.load	$push87=, __stack_pointer($pop86)
	i32.const	$push88=, 112
	i32.sub 	$push122=, $pop87, $pop88
	tee_local	$push121=, $10=, $pop122
	i32.store	__stack_pointer($pop89), $pop121
	call    	require_auth@FUNCTION, $1
	i64.load	$9=, 8($2)
	i32.const	$4=, 0
	block   	
	i64.load	$push120=, 0($2)
	tee_local	$push119=, $6=, $pop120
	i64.const	$push0=, 4611686018427387903
	i64.add 	$push1=, $pop119, $pop0
	i64.const	$push2=, 9223372036854775806
	i64.gt_u	$push3=, $pop1, $pop2
	br_if   	0, $pop3
	i64.const	$push123=, 8
	i64.shr_u	$7=, $9, $pop123
	i32.const	$5=, 0
.LBB63_2:
	block   	
	loop    	
	i32.wrap/i64	$push4=, $7
	i32.const	$push126=, 24
	i32.shl 	$push5=, $pop4, $pop126
	i32.const	$push125=, -1073741825
	i32.add 	$push6=, $pop5, $pop125
	i32.const	$push124=, 452984830
	i32.gt_u	$push7=, $pop6, $pop124
	br_if   	1, $pop7
	block   	
	i64.const	$push131=, 8
	i64.shr_u	$push130=, $7, $pop131
	tee_local	$push129=, $7=, $pop130
	i64.const	$push128=, 255
	i64.and 	$push8=, $pop129, $pop128
	i64.const	$push127=, 0
	i64.ne  	$push9=, $pop8, $pop127
	br_if   	0, $pop9
.LBB63_4:
	loop    	
	i64.const	$push136=, 8
	i64.shr_u	$push135=, $7, $pop136
	tee_local	$push134=, $7=, $pop135
	i64.const	$push133=, 255
	i64.and 	$push10=, $pop134, $pop133
	i64.const	$push132=, 0
	i64.ne  	$push11=, $pop10, $pop132
	br_if   	3, $pop11
	i32.const	$push140=, 1
	i32.add 	$push139=, $5, $pop140
	tee_local	$push138=, $5=, $pop139
	i32.const	$push137=, 7
	i32.lt_s	$push12=, $pop138, $pop137
	br_if   	0, $pop12
.LBB63_6:
	end_loop
	end_block
	i32.const	$4=, 1
	i32.const	$push144=, 1
	i32.add 	$push143=, $5, $pop144
	tee_local	$push142=, $5=, $pop143
	i32.const	$push141=, 7
	i32.lt_s	$push13=, $pop142, $pop141
	br_if   	0, $pop13
	br      	2
.LBB63_7:
	end_loop
	end_block
	i32.const	$4=, 0
.LBB63_8:
	end_block
	i32.const	$push14=, .L.str.18
	call    	eosio_assert@FUNCTION, $4, $pop14
	i64.const	$push15=, 63
	i64.shr_u	$push16=, $6, $pop15
	i32.wrap/i64	$push17=, $pop16
	i32.const	$push18=, 1
	i32.xor 	$push19=, $pop17, $pop18
	i32.const	$push20=, .L.str.21
	call    	eosio_assert@FUNCTION, $pop19, $pop20
	i64.store	96($10), $9
	i64.load	$7=, 16($2)
	i32.const	$push93=, 24
	i32.add 	$push94=, $10, $pop93
	i32.const	$push21=, 8
	i32.add 	$push22=, $pop94, $pop21
	i64.store	0($pop22), $9
	i64.store	104($10), $7
	i32.const	$push95=, 24
	i32.add 	$push96=, $10, $pop95
	i32.const	$push23=, 16
	i32.add 	$push24=, $pop96, $pop23
	i64.store	0($pop24), $7
	i64.const	$push25=, 0
	i64.sub 	$push157=, $pop25, $6
	tee_local	$push156=, $7=, $pop157
	i64.store	88($10), $pop156
	i64.store	24($10), $7
	i32.const	$push155=, 16
	i32.add 	$push26=, $0, $pop155
	i32.const	$push97=, 24
	i32.add 	$push98=, $10, $pop97
	call    	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE@FUNCTION, $pop26, $1, $pop98, $5
	i32.const	$push99=, 64
	i32.add 	$push100=, $10, $pop99
	i32.const	$push27=, 20
	i32.add 	$push30=, $pop100, $pop27
	i32.const	$push154=, 20
	i32.add 	$push28=, $2, $pop154
	i32.load	$push29=, 0($pop28)
	i32.store	0($pop30), $pop29
	i32.const	$push101=, 64
	i32.add 	$push102=, $10, $pop101
	i32.const	$push153=, 16
	i32.add 	$push31=, $pop102, $pop153
	i32.load	$push32=, 16($2)
	i32.store	0($pop31), $pop32
	i32.const	$push103=, 64
	i32.add 	$push104=, $10, $pop103
	i32.const	$push33=, 12
	i32.add 	$push36=, $pop104, $pop33
	i32.const	$push152=, 12
	i32.add 	$push34=, $2, $pop152
	i32.load	$push35=, 0($pop34)
	i32.store	0($pop36), $pop35
	i32.const	$push105=, 64
	i32.add 	$push106=, $10, $pop105
	i32.const	$push151=, 8
	i32.add 	$push39=, $pop106, $pop151
	i32.const	$push150=, 8
	i32.add 	$push37=, $2, $pop150
	i32.load	$push38=, 0($pop37)
	i32.store	0($pop39), $pop38
	i32.const	$push40=, 4
	i32.add 	$push41=, $2, $pop40
	i32.load	$push42=, 0($pop41)
	i32.store	68($10), $pop42
	i32.load	$push43=, 0($2)
	i32.store	64($10), $pop43
	i64.load	$3=, 0($0)
	i32.const	$push107=, 48
	i32.add 	$push108=, $10, $pop107
	i32.const	$push149=, 8
	i32.add 	$push44=, $pop108, $pop149
	i32.const	$push148=, 0
	i32.store	0($pop44), $pop148
	i64.const	$push147=, 0
	i64.store	48($10), $pop147
	block   	
	i32.const	$push45=, .L.str.22
	i32.call	$push146=, strlen@FUNCTION, $pop45
	tee_local	$push145=, $5=, $pop146
	i32.const	$push46=, -16
	i32.ge_u	$push47=, $pop145, $pop46
	br_if   	0, $pop47
	block   	
	block   	
	block   	
	i32.const	$push48=, 11
	i32.ge_u	$push49=, $5, $pop48
	br_if   	0, $pop49
	i32.const	$push55=, 1
	i32.shl 	$push56=, $5, $pop55
	i32.store8	48($10), $pop56
	i32.const	$push111=, 48
	i32.add 	$push112=, $10, $pop111
	i32.const	$push158=, 1
	i32.or  	$2=, $pop112, $pop158
	br_if   	1, $5
	br      	2
.LBB63_11:
	end_block
	i32.const	$push50=, 16
	i32.add 	$push51=, $5, $pop50
	i32.const	$push52=, -16
	i32.and 	$push160=, $pop51, $pop52
	tee_local	$push159=, $4=, $pop160
	i32.call	$2=, _Znwj@FUNCTION, $pop159
	i32.const	$push53=, 1
	i32.or  	$push54=, $4, $pop53
	i32.store	48($10), $pop54
	i32.store	56($10), $2
	i32.store	52($10), $5
.LBB63_12:
	end_block
	i32.const	$push57=, .L.str.22
	i32.call	$drop=, memcpy@FUNCTION, $2, $pop57, $5
.LBB63_13:
	end_block
	i32.add 	$push58=, $2, $5
	i32.const	$push161=, 0
	i32.store8	0($pop58), $pop161
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$5=, .L.str.20
	i64.const	$8=, 0
.LBB63_14:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push162=, 5
	i64.gt_u	$push59=, $7, $pop162
	br_if   	0, $pop59
	i32.load8_s	$push167=, 0($5)
	tee_local	$push166=, $2=, $pop167
	i32.const	$push165=, -97
	i32.add 	$push61=, $pop166, $pop165
	i32.const	$push164=, 255
	i32.and 	$push62=, $pop61, $pop164
	i32.const	$push163=, 25
	i32.gt_u	$push63=, $pop62, $pop163
	br_if   	1, $pop63
	i32.const	$push168=, 165
	i32.add 	$2=, $2, $pop168
	br      	2
.LBB63_17:
	end_block
	i64.const	$9=, 0
	i64.const	$push169=, 11
	i64.le_u	$push60=, $7, $pop169
	br_if   	2, $pop60
	br      	3
.LBB63_18:
	end_block
	i32.const	$push174=, 208
	i32.add 	$push64=, $2, $pop174
	i32.const	$push173=, 0
	i32.const	$push172=, -49
	i32.add 	$push65=, $2, $pop172
	i32.const	$push171=, 255
	i32.and 	$push66=, $pop65, $pop171
	i32.const	$push170=, 5
	i32.lt_u	$push67=, $pop66, $pop170
	i32.select	$2=, $pop64, $pop173, $pop67
.LBB63_19:
	end_block
	i64.extend_u/i32	$push68=, $2
	i64.const	$push176=, 56
	i64.shl 	$push69=, $pop68, $pop176
	i64.const	$push175=, 56
	i64.shr_s	$9=, $pop69, $pop175
.LBB63_20:
	end_block
	i64.const	$push178=, 31
	i64.and 	$push71=, $9, $pop178
	i64.const	$push177=, 4294967295
	i64.and 	$push70=, $6, $pop177
	i64.shl 	$9=, $pop71, $pop70
.LBB63_21:
	end_block
	i32.const	$push184=, 1
	i32.add 	$5=, $5, $pop184
	i64.const	$push183=, 1
	i64.add 	$7=, $7, $pop183
	i64.or  	$8=, $9, $8
	i64.const	$push182=, -5
	i64.add 	$push181=, $6, $pop182
	tee_local	$push180=, $6=, $pop181
	i64.const	$push179=, -6
	i64.ne  	$push72=, $pop180, $pop179
	br_if   	0, $pop72
	end_loop
	i32.const	$push73=, 16
	i32.add 	$push74=, $10, $pop73
	i32.const	$push113=, 64
	i32.add 	$push114=, $10, $pop113
	i32.const	$push186=, 16
	i32.add 	$push75=, $pop114, $pop186
	i64.load	$push76=, 0($pop75)
	i64.store	0($pop74), $pop76
	i32.const	$push77=, 8
	i32.add 	$push78=, $10, $pop77
	i32.const	$push115=, 64
	i32.add 	$push116=, $10, $pop115
	i32.const	$push185=, 8
	i32.add 	$push79=, $pop116, $pop185
	i64.load	$push80=, 0($pop79)
	i64.store	0($pop78), $pop80
	i64.load	$push81=, 64($10)
	i64.store	0($10), $pop81
	i32.const	$push117=, 48
	i32.add 	$push118=, $10, $pop117
	call    	_ZN5eosio8currency15inline_transferEyyNS_14extended_assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy@FUNCTION, $3, $1, $10, $pop118, $8
	block   	
	i32.load8_u	$push83=, 48($10)
	i32.const	$push82=, 1
	i32.and 	$push84=, $pop83, $pop82
	i32.eqz 	$push187=, $pop84
	br_if   	0, $pop187
	i32.load	$push85=, 56($10)
	call    	_ZdlPv@FUNCTION, $pop85
.LBB63_24:
	end_block
	i32.const	$push92=, 0
	i32.const	$push90=, 112
	i32.add 	$push91=, $10, $pop90
	i32.store	__stack_pointer($pop92), $pop91
	return
.LBB63_25:
	end_block
	i32.const	$push109=, 48
	i32.add 	$push110=, $10, $pop109
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop110
	unreachable
	.endfunc
.Lfunc_end63:
	.size	_ZN5eosio8exchange8withdrawEyNS_14extended_assetE, .Lfunc_end63-_ZN5eosio8exchange8withdrawEyNS_14extended_assetE

	.hidden	_ZN5eosio8exchange2onERKNS0_5tradeE
	.globl	_ZN5eosio8exchange2onERKNS0_5tradeE
	.type	_ZN5eosio8exchange2onERKNS0_5tradeE,@function
_ZN5eosio8exchange2onERKNS0_5tradeE:
	.param  	i32, i32
	.local  	i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32
	i32.const	$push337=, 0
	i32.const	$push334=, 0
	i32.load	$push335=, __stack_pointer($pop334)
	i32.const	$push336=, 1008
	i32.sub 	$push472=, $pop335, $pop336
	tee_local	$push471=, $23=, $pop472
	i32.store	__stack_pointer($pop337), $pop471
	i64.load	$push0=, 0($1)
	call    	require_auth@FUNCTION, $pop0
	i32.const	$push1=, 16
	i32.add 	$3=, $1, $pop1
	i32.const	$21=, 0
	i32.const	$22=, 0
	block   	
	i64.load	$push2=, 16($1)
	i64.const	$push470=, 4611686018427387903
	i64.add 	$push3=, $pop2, $pop470
	i64.const	$push469=, 9223372036854775806
	i64.gt_u	$push4=, $pop3, $pop469
	br_if   	0, $pop4
	i32.const	$push474=, 24
	i32.add 	$push5=, $1, $pop474
	i64.load	$push6=, 0($pop5)
	i64.const	$push473=, 8
	i64.shr_u	$4=, $pop6, $pop473
	i32.const	$20=, 0
.LBB64_2:
	block   	
	loop    	
	i32.wrap/i64	$push7=, $4
	i32.const	$push477=, 24
	i32.shl 	$push8=, $pop7, $pop477
	i32.const	$push476=, -1073741825
	i32.add 	$push9=, $pop8, $pop476
	i32.const	$push475=, 452984830
	i32.gt_u	$push10=, $pop9, $pop475
	br_if   	1, $pop10
	block   	
	i64.const	$push482=, 8
	i64.shr_u	$push481=, $4, $pop482
	tee_local	$push480=, $4=, $pop481
	i64.const	$push479=, 255
	i64.and 	$push11=, $pop480, $pop479
	i64.const	$push478=, 0
	i64.ne  	$push12=, $pop11, $pop478
	br_if   	0, $pop12
.LBB64_4:
	loop    	
	i64.const	$push487=, 8
	i64.shr_u	$push486=, $4, $pop487
	tee_local	$push485=, $4=, $pop486
	i64.const	$push484=, 255
	i64.and 	$push13=, $pop485, $pop484
	i64.const	$push483=, 0
	i64.ne  	$push14=, $pop13, $pop483
	br_if   	3, $pop14
	i32.const	$push491=, 1
	i32.add 	$push490=, $20, $pop491
	tee_local	$push489=, $20=, $pop490
	i32.const	$push488=, 7
	i32.lt_s	$push15=, $pop489, $pop488
	br_if   	0, $pop15
.LBB64_6:
	end_loop
	end_block
	i32.const	$22=, 1
	i32.const	$push495=, 1
	i32.add 	$push494=, $20, $pop495
	tee_local	$push493=, $20=, $pop494
	i32.const	$push492=, 7
	i32.lt_s	$push16=, $pop493, $pop492
	br_if   	0, $pop16
	br      	2
.LBB64_7:
	end_loop
	end_block
	i32.const	$22=, 0
.LBB64_8:
	end_block
	i32.const	$push17=, .L.str.23
	call    	eosio_assert@FUNCTION, $22, $pop17
	i64.load	$push18=, 0($3)
	i64.const	$push498=, 0
	i64.gt_s	$push19=, $pop18, $pop498
	i32.const	$push20=, .L.str.24
	call    	eosio_assert@FUNCTION, $pop19, $pop20
	block   	
	i64.load	$push21=, 40($1)
	i64.const	$push497=, 4611686018427387903
	i64.add 	$push22=, $pop21, $pop497
	i64.const	$push496=, 9223372036854775806
	i64.gt_u	$push23=, $pop22, $pop496
	br_if   	0, $pop23
	i32.const	$push24=, 48
	i32.add 	$push25=, $1, $pop24
	i64.load	$push26=, 0($pop25)
	i64.const	$push499=, 8
	i64.shr_u	$4=, $pop26, $pop499
	i32.const	$20=, 0
.LBB64_10:
	block   	
	loop    	
	i32.wrap/i64	$push27=, $4
	i32.const	$push502=, 24
	i32.shl 	$push28=, $pop27, $pop502
	i32.const	$push501=, -1073741825
	i32.add 	$push29=, $pop28, $pop501
	i32.const	$push500=, 452984830
	i32.gt_u	$push30=, $pop29, $pop500
	br_if   	1, $pop30
	block   	
	i64.const	$push507=, 8
	i64.shr_u	$push506=, $4, $pop507
	tee_local	$push505=, $4=, $pop506
	i64.const	$push504=, 255
	i64.and 	$push31=, $pop505, $pop504
	i64.const	$push503=, 0
	i64.ne  	$push32=, $pop31, $pop503
	br_if   	0, $pop32
.LBB64_12:
	loop    	
	i64.const	$push512=, 8
	i64.shr_u	$push511=, $4, $pop512
	tee_local	$push510=, $4=, $pop511
	i64.const	$push509=, 255
	i64.and 	$push33=, $pop510, $pop509
	i64.const	$push508=, 0
	i64.ne  	$push34=, $pop33, $pop508
	br_if   	3, $pop34
	i32.const	$push516=, 1
	i32.add 	$push515=, $20, $pop516
	tee_local	$push514=, $20=, $pop515
	i32.const	$push513=, 7
	i32.lt_s	$push35=, $pop514, $pop513
	br_if   	0, $pop35
.LBB64_14:
	end_loop
	end_block
	i32.const	$21=, 1
	i32.const	$push520=, 1
	i32.add 	$push519=, $20, $pop520
	tee_local	$push518=, $20=, $pop519
	i32.const	$push517=, 7
	i32.lt_s	$push36=, $pop518, $pop517
	br_if   	0, $pop36
	br      	2
.LBB64_15:
	end_loop
	end_block
	i32.const	$21=, 0
.LBB64_16:
	end_block
	i32.const	$push37=, .L.str.25
	call    	eosio_assert@FUNCTION, $21, $pop37
	i32.const	$push38=, 40
	i32.add 	$push39=, $1, $pop38
	i64.load	$push40=, 0($pop39)
	i64.const	$push41=, 63
	i64.shr_u	$push42=, $pop40, $pop41
	i32.wrap/i64	$push43=, $pop42
	i32.const	$push44=, 1
	i32.xor 	$push45=, $pop43, $pop44
	i32.const	$push46=, .L.str.26
	call    	eosio_assert@FUNCTION, $pop45, $pop46
	i32.const	$push54=, 24
	i32.add 	$push55=, $1, $pop54
	i64.load	$push56=, 0($pop55)
	i32.const	$push52=, 48
	i32.add 	$push53=, $1, $pop52
	i64.load	$push580=, 0($pop53)
	tee_local	$push579=, $4=, $pop580
	i64.ne  	$push57=, $pop56, $pop579
	i32.const	$push48=, 32
	i32.add 	$push49=, $1, $pop48
	i64.load	$push50=, 0($pop49)
	i32.const	$push578=, 56
	i32.add 	$push47=, $1, $pop578
	i64.load	$push577=, 0($pop47)
	tee_local	$push576=, $5=, $pop577
	i64.ne  	$push51=, $pop50, $pop576
	i32.or  	$push58=, $pop57, $pop51
	i32.const	$push59=, .L.str.3
	call    	eosio_assert@FUNCTION, $pop58, $pop59
	i64.load	$push60=, 8($1)
	i64.const	$push61=, 8
	i64.shr_u	$push62=, $pop60, $pop61
	i64.store	552($23), $pop62
	i64.load	$13=, 0($0)
	i32.const	$push341=, 552
	i32.add 	$push342=, $23, $pop341
	i32.const	$push575=, 8
	i32.add 	$push63=, $pop342, $pop575
	i32.call	$20=, _ZN5eosio14exchange_stateC2Ev@FUNCTION, $pop63
	i32.const	$push64=, 808
	i32.add 	$push65=, $23, $pop64
	i64.const	$push66=, -1
	i64.store	0($pop65), $pop66
	i32.const	$push67=, 816
	i32.add 	$push68=, $23, $pop67
	i64.const	$push574=, 0
	i64.store	0($pop68), $pop574
	i32.const	$push69=, 824
	i32.add 	$push70=, $23, $pop69
	i32.const	$push71=, 0
	i32.store	0($pop70), $pop71
	i32.const	$push72=, 800
	i32.add 	$push73=, $23, $pop72
	i64.load	$push573=, 552($23)
	tee_local	$push572=, $14=, $pop573
	i64.store	0($pop73), $pop572
	i64.store	792($23), $13
	i64.store	832($23), $13
	i32.const	$push76=, 840
	i32.add 	$push77=, $23, $pop76
	i64.const	$push74=, 4
	i64.shl 	$push571=, $14, $pop74
	tee_local	$push570=, $15=, $pop571
	i64.const	$push75=, 1
	i64.or  	$push569=, $pop570, $pop75
	tee_local	$push568=, $16=, $pop569
	i64.store	0($pop77), $pop568
	i32.const	$push78=, 848
	i32.add 	$push79=, $23, $pop78
	i64.const	$push567=, -1
	i64.store	0($pop79), $pop567
	i32.const	$push80=, 856
	i32.add 	$push81=, $23, $pop80
	i32.const	$push566=, 0
	i32.store	0($pop81), $pop566
	i32.const	$push82=, 860
	i32.add 	$push83=, $23, $pop82
	i32.const	$push565=, 0
	i32.store	0($pop83), $pop565
	i32.const	$push84=, 864
	i32.add 	$push85=, $23, $pop84
	i32.const	$push564=, 0
	i32.store	0($pop85), $pop564
	i32.const	$push86=, 868
	i32.add 	$push87=, $23, $pop86
	i32.const	$push563=, 0
	i32.store8	0($pop87), $pop563
	i64.store	872($23), $13
	i32.const	$push89=, 880
	i32.add 	$push90=, $23, $pop89
	i64.const	$push88=, 2
	i64.or  	$push562=, $15, $pop88
	tee_local	$push561=, $15=, $pop562
	i64.store	0($pop90), $pop561
	i32.const	$push91=, 888
	i32.add 	$push92=, $23, $pop91
	i64.const	$push560=, -1
	i64.store	0($pop92), $pop560
	i32.const	$push93=, 896
	i32.add 	$push94=, $23, $pop93
	i32.const	$push559=, 0
	i32.store	0($pop94), $pop559
	i32.const	$push95=, 900
	i32.add 	$push96=, $23, $pop95
	i32.const	$push558=, 0
	i32.store	0($pop96), $pop558
	i32.const	$push97=, 904
	i32.add 	$push98=, $23, $pop97
	i32.const	$push557=, 0
	i32.store	0($pop98), $pop557
	i32.const	$push99=, 908
	i32.add 	$push100=, $23, $pop99
	i32.const	$push556=, 0
	i32.store8	0($pop100), $pop556
	i64.store	912($23), $13
	i32.const	$push101=, 920
	i32.add 	$push102=, $23, $pop101
	i64.store	0($pop102), $16
	i32.const	$push103=, 928
	i32.add 	$push104=, $23, $pop103
	i64.const	$push555=, -1
	i64.store	0($pop104), $pop555
	i32.const	$push105=, 936
	i32.add 	$push106=, $23, $pop105
	i32.const	$push554=, 0
	i32.store	0($pop106), $pop554
	i32.const	$push107=, 940
	i32.add 	$push108=, $23, $pop107
	i32.const	$push553=, 0
	i32.store	0($pop108), $pop553
	i32.const	$push109=, 944
	i32.add 	$push110=, $23, $pop109
	i32.const	$push552=, 0
	i32.store	0($pop110), $pop552
	i64.store	952($23), $13
	i32.const	$push111=, 960
	i32.add 	$push112=, $23, $pop111
	i64.store	0($pop112), $15
	i32.const	$push113=, 968
	i32.add 	$push114=, $23, $pop113
	i64.const	$push551=, -1
	i64.store	0($pop114), $pop551
	i32.const	$push115=, 976
	i32.add 	$push116=, $23, $pop115
	i32.const	$push550=, 0
	i32.store	0($pop116), $pop550
	i32.const	$push117=, 980
	i32.add 	$push118=, $23, $pop117
	i32.const	$push549=, 0
	i32.store	0($pop118), $pop549
	i32.const	$push119=, 984
	i32.add 	$push120=, $23, $pop119
	i32.const	$push548=, 0
	i32.store	0($pop120), $pop548
	i32.const	$push547=, 16
	i32.add 	$push546=, $0, $pop547
	tee_local	$push545=, $6=, $pop546
	i32.store	992($23), $pop545
	i32.const	$push123=, 996
	i32.add 	$push124=, $23, $pop123
	i32.const	$push121=, 792
	i32.add 	$push122=, $23, $pop121
	call    	_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE4findEy@FUNCTION, $pop124, $pop122, $14
	i32.const	$push125=, 1000
	i32.add 	$push544=, $23, $pop125
	tee_local	$push543=, $21=, $pop544
	i32.load	$push126=, 0($pop543)
	i32.const	$push542=, 0
	i32.ne  	$push127=, $pop126, $pop542
	i32.const	$push128=, .L.str.4
	call    	eosio_assert@FUNCTION, $pop127, $pop128
	i32.const	$push343=, 320
	i32.add 	$push344=, $23, $pop343
	i32.load	$push129=, 0($21)
	i32.const	$push541=, 232
	i32.call	$push540=, memcpy@FUNCTION, $20, $pop129, $pop541
	tee_local	$push539=, $2=, $pop540
	i32.const	$push538=, 232
	i32.call	$drop=, memcpy@FUNCTION, $pop344, $pop539, $pop538
	i32.const	$push345=, 272
	i32.add 	$push346=, $23, $pop345
	i32.const	$push537=, 16
	i32.add 	$push536=, $pop346, $pop537
	tee_local	$push535=, $20=, $pop536
	i32.const	$push534=, 16
	i32.add 	$push533=, $3, $pop534
	tee_local	$push532=, $17=, $pop533
	i64.load	$push130=, 0($pop532)
	i64.store	0($pop535), $pop130
	i32.const	$push347=, 272
	i32.add 	$push348=, $23, $pop347
	i32.const	$push531=, 8
	i32.add 	$push530=, $pop348, $pop531
	tee_local	$push529=, $21=, $pop530
	i32.const	$push528=, 8
	i32.add 	$push527=, $3, $pop528
	tee_local	$push526=, $18=, $pop527
	i64.load	$push131=, 0($pop526)
	i64.store	0($pop529), $pop131
	i64.load	$push132=, 0($3)
	i64.store	272($23), $pop132
	i64.store	256($23), $4
	i64.store	264($23), $5
	i32.const	$push349=, 104
	i32.add 	$push350=, $23, $pop349
	i32.const	$push525=, 8
	i32.add 	$push133=, $pop350, $pop525
	i64.load	$push134=, 0($21)
	i64.store	0($pop133), $pop134
	i32.const	$push351=, 104
	i32.add 	$push352=, $23, $pop351
	i32.const	$push524=, 16
	i32.add 	$push135=, $pop352, $pop524
	i64.load	$push136=, 0($20)
	i64.store	0($pop135), $pop136
	i32.const	$push353=, 88
	i32.add 	$push354=, $23, $pop353
	i32.const	$push523=, 8
	i32.add 	$push137=, $pop354, $pop523
	i64.load	$push138=, 264($23)
	i64.store	0($pop137), $pop138
	i64.load	$push139=, 272($23)
	i64.store	104($23), $pop139
	i64.load	$push140=, 256($23)
	i64.store	88($23), $pop140
	i32.const	$push355=, 296
	i32.add 	$push356=, $23, $pop355
	i32.const	$push357=, 320
	i32.add 	$push358=, $23, $pop357
	i32.const	$push359=, 104
	i32.add 	$push360=, $23, $pop359
	i32.const	$push361=, 88
	i32.add 	$push362=, $23, $pop361
	call    	_ZN5eosio14exchange_state7convertENS_14extended_assetENS_15extended_symbolE@FUNCTION, $pop356, $pop358, $pop360, $pop362
	i32.const	$push141=, 456
	i32.add 	$12=, $23, $pop141
	i32.const	$push142=, 872
	i32.add 	$11=, $23, $pop142
	i32.const	$push143=, 696
	i32.add 	$10=, $23, $pop143
	i32.const	$push144=, 832
	i32.add 	$9=, $23, $pop144
	i32.const	$push363=, 552
	i32.add 	$push364=, $23, $pop363
	i32.const	$push522=, 48
	i32.add 	$8=, $pop364, $pop522
	i32.const	$push365=, 320
	i32.add 	$push366=, $23, $pop365
	i32.const	$push521=, 40
	i32.add 	$7=, $pop366, $pop521
	i32.const	$push314=, 616
	i32.add 	$19=, $23, $pop314
.LBB64_17:
	block   	
	loop    	
	block   	
	i32.const	$push367=, 320
	i32.add 	$push368=, $23, $pop367
	i32.call	$push145=, _ZNK5eosio14exchange_state20requires_margin_callERKNS0_9connectorE@FUNCTION, $pop368, $7
	br_if   	0, $pop145
	i32.const	$push401=, 320
	i32.add 	$push402=, $23, $pop401
	i32.call	$push146=, _ZNK5eosio14exchange_state20requires_margin_callERKNS0_9connectorE@FUNCTION, $pop402, $12
	i32.eqz 	$push649=, $pop146
	br_if   	2, $pop649
.LBB64_19:
	end_block
	block   	
	block   	
	i32.const	$push369=, 552
	i32.add 	$push370=, $23, $pop369
	i32.const	$push598=, 56
	i32.add 	$push311=, $pop370, $pop598
	i64.load	$push312=, 0($pop311)
	i64.ne  	$push313=, $4, $pop312
	br_if   	0, $pop313
	i64.load	$push310=, 0($19)
	i64.ne  	$push315=, $5, $pop310
	br_if   	0, $pop315
	i32.const	$push371=, 552
	i32.add 	$push372=, $23, $pop371
	call    	_ZN5eosio12market_state11margin_callERNS_14exchange_state9connectorERNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS5_yXadL_ZNKS5_8get_callEvEEEEEEEEE@FUNCTION, $pop372, $8, $9
	br      	1
.LBB64_22:
	end_block
	i32.const	$push399=, 552
	i32.add 	$push400=, $23, $pop399
	call    	_ZN5eosio12market_state11margin_callERNS_14exchange_state9connectorERNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS5_yXadL_ZNKS5_8get_callEvEEEEEEEEE@FUNCTION, $pop400, $10, $11
.LBB64_23:
	end_block
	i32.const	$push373=, 320
	i32.add 	$push374=, $23, $pop373
	i32.const	$push597=, 232
	i32.call	$drop=, memcpy@FUNCTION, $pop374, $2, $pop597
	i32.const	$push375=, 232
	i32.add 	$push376=, $23, $pop375
	i32.const	$push596=, 16
	i32.add 	$push595=, $pop376, $pop596
	tee_local	$push594=, $20=, $pop595
	i64.load	$push316=, 0($17)
	i64.store	0($pop594), $pop316
	i32.const	$push377=, 232
	i32.add 	$push378=, $23, $pop377
	i32.const	$push593=, 8
	i32.add 	$push592=, $pop378, $pop593
	tee_local	$push591=, $21=, $pop592
	i64.load	$push317=, 0($18)
	i64.store	0($pop591), $pop317
	i64.load	$push318=, 0($3)
	i64.store	232($23), $pop318
	i64.store	216($23), $4
	i32.const	$push379=, 216
	i32.add 	$push380=, $23, $pop379
	i32.const	$push590=, 8
	i32.add 	$push589=, $pop380, $pop590
	tee_local	$push588=, $22=, $pop589
	i64.store	0($pop588), $5
	i32.const	$push381=, 16
	i32.add 	$push382=, $23, $pop381
	i32.const	$push587=, 8
	i32.add 	$push319=, $pop382, $pop587
	i64.load	$push320=, 0($21)
	i64.store	0($pop319), $pop320
	i32.const	$push383=, 16
	i32.add 	$push384=, $23, $pop383
	i32.const	$push586=, 16
	i32.add 	$push321=, $pop384, $pop586
	i64.load	$push322=, 0($20)
	i64.store	0($pop321), $pop322
	i32.const	$push585=, 8
	i32.add 	$push323=, $23, $pop585
	i64.load	$push324=, 0($22)
	i64.store	0($pop323), $pop324
	i64.load	$push325=, 232($23)
	i64.store	16($23), $pop325
	i64.load	$push326=, 216($23)
	i64.store	0($23), $pop326
	i32.const	$push385=, 128
	i32.add 	$push386=, $23, $pop385
	i32.const	$push387=, 320
	i32.add 	$push388=, $23, $pop387
	i32.const	$push389=, 16
	i32.add 	$push390=, $23, $pop389
	call    	_ZN5eosio14exchange_state7convertENS_14extended_assetENS_15extended_symbolE@FUNCTION, $pop386, $pop388, $pop390, $23
	i32.const	$push391=, 296
	i32.add 	$push392=, $23, $pop391
	i32.const	$push584=, 16
	i32.add 	$push327=, $pop392, $pop584
	i32.const	$push393=, 128
	i32.add 	$push394=, $23, $pop393
	i32.const	$push583=, 16
	i32.add 	$push328=, $pop394, $pop583
	i64.load	$push329=, 0($pop328)
	i64.store	0($pop327), $pop329
	i32.const	$push395=, 296
	i32.add 	$push396=, $23, $pop395
	i32.const	$push582=, 8
	i32.add 	$push330=, $pop396, $pop582
	i32.const	$push397=, 128
	i32.add 	$push398=, $23, $pop397
	i32.const	$push581=, 8
	i32.add 	$push331=, $pop398, $pop581
	i64.load	$push332=, 0($pop331)
	i64.store	0($pop330), $pop332
	i64.load	$push333=, 128($23)
	i64.store	296($23), $pop333
	br      	0
.LBB64_24:
	end_loop
	end_block
	i32.const	$push403=, 320
	i32.add 	$push404=, $23, $pop403
	i32.const	$push147=, 232
	i32.call	$drop=, memcpy@FUNCTION, $2, $pop404, $pop147
	i64.load	$push148=, 0($1)
	call    	printn@FUNCTION, $pop148
	i32.const	$push149=, .L.str.27
	call    	prints@FUNCTION, $pop149
	call    	_ZNK5eosio5asset5printEv@FUNCTION, $3
	i32.const	$push150=, .L.str.112
	call    	prints@FUNCTION, $pop150
	i32.const	$push151=, 32
	i32.add 	$push603=, $1, $pop151
	tee_local	$push602=, $20=, $pop603
	i64.load	$push152=, 0($pop602)
	call    	printn@FUNCTION, $pop152
	i32.const	$push153=, .L.str.28
	call    	prints@FUNCTION, $pop153
	i32.const	$push405=, 296
	i32.add 	$push406=, $23, $pop405
	call    	_ZNK5eosio5asset5printEv@FUNCTION, $pop406
	i32.const	$push601=, .L.str.112
	call    	prints@FUNCTION, $pop601
	i64.load	$push154=, 312($23)
	call    	printn@FUNCTION, $pop154
	i32.const	$push155=, .L.str.29
	call    	prints@FUNCTION, $pop155
	block   	
	i32.const	$push156=, 40
	i32.add 	$push157=, $1, $pop156
	i64.load	$push600=, 0($pop157)
	tee_local	$push599=, $4=, $pop600
	i64.eqz 	$push158=, $pop599
	br_if   	0, $pop158
	i64.load	$push159=, 296($23)
	i64.le_s	$push160=, $4, $pop159
	i32.const	$push161=, .L.str.30
	call    	eosio_assert@FUNCTION, $pop160, $pop161
.LBB64_26:
	end_block
	i32.const	$push162=, 24
	i32.add 	$push163=, $1, $pop162
	i64.load	$push164=, 0($pop163)
	i64.store	200($23), $pop164
	i64.const	$push168=, 0
	i32.const	$push165=, 16
	i32.add 	$push166=, $1, $pop165
	i64.load	$push167=, 0($pop166)
	i64.sub 	$push169=, $pop168, $pop167
	i64.store	192($23), $pop169
	i64.load	$4=, 0($1)
	i64.load	$push170=, 0($20)
	i64.store	208($23), $pop170
	i32.const	$push171=, 136
	i32.add 	$push172=, $23, $pop171
	i32.const	$push173=, 0
	i32.store	0($pop172), $pop173
	i64.const	$push606=, 0
	i64.store	128($23), $pop606
	block   	
	block   	
	block   	
	i32.const	$push174=, .L.str.31
	i32.call	$push605=, strlen@FUNCTION, $pop174
	tee_local	$push604=, $20=, $pop605
	i32.const	$push175=, -16
	i32.ge_u	$push176=, $pop604, $pop175
	br_if   	0, $pop176
	block   	
	block   	
	block   	
	i32.const	$push177=, 11
	i32.ge_u	$push178=, $20, $pop177
	br_if   	0, $pop178
	i32.const	$push184=, 1
	i32.shl 	$push185=, $20, $pop184
	i32.store8	128($23), $pop185
	i32.const	$push409=, 128
	i32.add 	$push410=, $23, $pop409
	i32.const	$push607=, 1
	i32.or  	$21=, $pop410, $pop607
	br_if   	1, $20
	br      	2
.LBB64_29:
	end_block
	i32.const	$push179=, 16
	i32.add 	$push180=, $20, $pop179
	i32.const	$push181=, -16
	i32.and 	$push609=, $pop180, $pop181
	tee_local	$push608=, $22=, $pop609
	i32.call	$21=, _Znwj@FUNCTION, $pop608
	i32.const	$push182=, 1
	i32.or  	$push183=, $22, $pop182
	i32.store	128($23), $pop183
	i32.store	136($23), $21
	i32.store	132($23), $20
.LBB64_30:
	end_block
	i32.const	$push186=, .L.str.31
	i32.call	$drop=, memcpy@FUNCTION, $21, $pop186, $20
.LBB64_31:
	end_block
	i32.add 	$push187=, $21, $20
	i32.const	$push614=, 0
	i32.store8	0($pop187), $pop614
	i32.const	$push411=, 64
	i32.add 	$push412=, $23, $pop411
	i32.const	$push613=, 16
	i32.add 	$push188=, $pop412, $pop613
	i32.const	$push413=, 192
	i32.add 	$push414=, $23, $pop413
	i32.const	$push612=, 16
	i32.add 	$push189=, $pop414, $pop612
	i64.load	$push190=, 0($pop189)
	i64.store	0($pop188), $pop190
	i32.const	$push415=, 64
	i32.add 	$push416=, $23, $pop415
	i32.const	$push611=, 8
	i32.add 	$push191=, $pop416, $pop611
	i32.const	$push417=, 192
	i32.add 	$push418=, $23, $pop417
	i32.const	$push610=, 8
	i32.add 	$push192=, $pop418, $pop610
	i64.load	$push193=, 0($pop192)
	i64.store	0($pop191), $pop193
	i64.load	$push194=, 192($23)
	i64.store	64($23), $pop194
	i32.const	$push419=, 64
	i32.add 	$push420=, $23, $pop419
	call    	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE@FUNCTION, $6, $4, $pop420, $23
	block   	
	i32.load8_u	$push196=, 128($23)
	i32.const	$push195=, 1
	i32.and 	$push197=, $pop196, $pop195
	i32.eqz 	$push650=, $pop197
	br_if   	0, $pop650
	i32.load	$push198=, 136($23)
	call    	_ZdlPv@FUNCTION, $pop198
.LBB64_33:
	end_block
	i32.const	$push421=, 168
	i32.add 	$push422=, $23, $pop421
	i32.const	$push199=, 20
	i32.add 	$push200=, $pop422, $pop199
	i32.const	$push423=, 296
	i32.add 	$push424=, $23, $pop423
	i32.const	$push624=, 20
	i32.add 	$push201=, $pop424, $pop624
	i32.load	$push202=, 0($pop201)
	i32.store	0($pop200), $pop202
	i32.const	$push425=, 168
	i32.add 	$push426=, $23, $pop425
	i32.const	$push623=, 16
	i32.add 	$push203=, $pop426, $pop623
	i32.const	$push427=, 296
	i32.add 	$push428=, $23, $pop427
	i32.const	$push622=, 16
	i32.add 	$push204=, $pop428, $pop622
	i32.load	$push205=, 0($pop204)
	i32.store	0($pop203), $pop205
	i32.const	$push429=, 168
	i32.add 	$push430=, $23, $pop429
	i32.const	$push206=, 12
	i32.add 	$push207=, $pop430, $pop206
	i32.const	$push431=, 296
	i32.add 	$push432=, $23, $pop431
	i32.const	$push621=, 12
	i32.add 	$push208=, $pop432, $pop621
	i32.load	$push209=, 0($pop208)
	i32.store	0($pop207), $pop209
	i32.const	$push433=, 168
	i32.add 	$push434=, $23, $pop433
	i32.const	$push620=, 8
	i32.add 	$push210=, $pop434, $pop620
	i32.const	$push435=, 296
	i32.add 	$push436=, $23, $pop435
	i32.const	$push619=, 8
	i32.add 	$push211=, $pop436, $pop619
	i32.load	$push212=, 0($pop211)
	i32.store	0($pop210), $pop212
	i32.load	$push213=, 300($23)
	i32.store	172($23), $pop213
	i32.load	$push214=, 296($23)
	i32.store	168($23), $pop214
	i64.load	$4=, 0($1)
	i32.const	$push437=, 128
	i32.add 	$push438=, $23, $pop437
	i32.const	$push618=, 8
	i32.add 	$push215=, $pop438, $pop618
	i32.const	$push617=, 0
	i32.store	0($pop215), $pop617
	i64.const	$push216=, 0
	i64.store	128($23), $pop216
	i32.const	$push217=, .L.str.32
	i32.call	$push616=, strlen@FUNCTION, $pop217
	tee_local	$push615=, $20=, $pop616
	i32.const	$push218=, -16
	i32.ge_u	$push219=, $pop615, $pop218
	br_if   	1, $pop219
	block   	
	block   	
	block   	
	i32.const	$push220=, 11
	i32.ge_u	$push221=, $20, $pop220
	br_if   	0, $pop221
	i32.const	$push227=, 1
	i32.shl 	$push228=, $20, $pop227
	i32.store8	128($23), $pop228
	i32.const	$push441=, 128
	i32.add 	$push442=, $23, $pop441
	i32.const	$push625=, 1
	i32.or  	$21=, $pop442, $pop625
	br_if   	1, $20
	br      	2
.LBB64_36:
	end_block
	i32.const	$push222=, 16
	i32.add 	$push223=, $20, $pop222
	i32.const	$push224=, -16
	i32.and 	$push627=, $pop223, $pop224
	tee_local	$push626=, $22=, $pop627
	i32.call	$21=, _Znwj@FUNCTION, $pop626
	i32.const	$push225=, 1
	i32.or  	$push226=, $22, $pop225
	i32.store	128($23), $pop226
	i32.store	136($23), $21
	i32.store	132($23), $20
.LBB64_37:
	end_block
	i32.const	$push229=, .L.str.32
	i32.call	$drop=, memcpy@FUNCTION, $21, $pop229, $20
.LBB64_38:
	end_block
	i32.add 	$push230=, $21, $20
	i32.const	$push231=, 0
	i32.store8	0($pop230), $pop231
	i32.const	$push443=, 40
	i32.add 	$push444=, $23, $pop443
	i32.const	$push630=, 16
	i32.add 	$push232=, $pop444, $pop630
	i32.const	$push445=, 168
	i32.add 	$push446=, $23, $pop445
	i32.const	$push629=, 16
	i32.add 	$push233=, $pop446, $pop629
	i64.load	$push234=, 0($pop233)
	i64.store	0($pop232), $pop234
	i32.const	$push447=, 40
	i32.add 	$push448=, $23, $pop447
	i32.const	$push235=, 8
	i32.add 	$push236=, $pop448, $pop235
	i32.const	$push449=, 168
	i32.add 	$push450=, $23, $pop449
	i32.const	$push628=, 8
	i32.add 	$push237=, $pop450, $pop628
	i64.load	$push238=, 0($pop237)
	i64.store	0($pop236), $pop238
	i64.load	$push239=, 168($23)
	i64.store	40($23), $pop239
	i32.const	$push451=, 40
	i32.add 	$push452=, $23, $pop451
	call    	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE@FUNCTION, $6, $4, $pop452, $23
	block   	
	i32.load8_u	$push241=, 128($23)
	i32.const	$push240=, 1
	i32.and 	$push242=, $pop241, $pop240
	i32.eqz 	$push651=, $pop242
	br_if   	0, $pop651
	i32.load	$push243=, 136($23)
	call    	_ZdlPv@FUNCTION, $pop243
.LBB64_40:
	end_block
	block   	
	i32.const	$push453=, 552
	i32.add 	$push454=, $23, $pop453
	i32.const	$push633=, 16
	i32.add 	$push244=, $pop454, $pop633
	i64.load	$push245=, 0($pop244)
	i32.const	$push246=, 1000
	i32.add 	$push247=, $23, $pop246
	i32.load	$push632=, 0($pop247)
	tee_local	$push631=, $20=, $pop632
	i64.load	$push248=, 8($pop631)
	i64.eq  	$push249=, $pop245, $pop248
	br_if   	0, $pop249
	i32.const	$push253=, 584
	i32.add 	$push254=, $23, $pop253
	i64.load	$push255=, 0($pop254)
	i32.const	$push250=, 24
	i32.add 	$push251=, $20, $pop250
	i64.load	$push252=, 0($pop251)
	i64.eq  	$push256=, $pop255, $pop252
	i32.const	$push257=, .L.str.68
	call    	eosio_assert@FUNCTION, $pop256, $pop257
	i32.const	$push461=, 552
	i32.add 	$push462=, $23, $pop461
	i32.const	$push258=, 16
	i32.add 	$push263=, $pop462, $pop258
	i64.load	$4=, 0($pop263)
	i32.const	$push644=, 16
	i32.add 	$push259=, $20, $pop644
	i64.load	$push260=, 0($pop259)
	i32.const	$push459=, 552
	i32.add 	$push460=, $23, $pop459
	i32.const	$push643=, 24
	i32.add 	$push261=, $pop460, $pop643
	i64.load	$push642=, 0($pop261)
	tee_local	$push641=, $5=, $pop642
	i64.eq  	$push262=, $pop260, $pop641
	i32.const	$push264=, .L.str.69
	call    	eosio_assert@FUNCTION, $pop262, $pop264
	i32.const	$push640=, 8
	i32.add 	$push265=, $20, $pop640
	i64.load	$push266=, 0($pop265)
	i64.sub 	$push639=, $4, $pop266
	tee_local	$push638=, $4=, $pop639
	i64.const	$push267=, -4611686018427387904
	i64.gt_s	$push268=, $pop638, $pop267
	i32.const	$push269=, .L.str.70
	call    	eosio_assert@FUNCTION, $pop268, $pop269
	i64.const	$push270=, 4611686018427387904
	i64.lt_s	$push271=, $4, $pop270
	i32.const	$push272=, .L.str.71
	call    	eosio_assert@FUNCTION, $pop271, $pop272
	i32.const	$push463=, 128
	i32.add 	$push464=, $23, $pop463
	i32.const	$push637=, 16
	i32.add 	$push273=, $pop464, $pop637
	i64.store	0($pop273), $5
	i32.const	$push274=, 156
	i32.add 	$push275=, $23, $pop274
	i64.const	$push276=, 0
	i64.store	0($pop275):p2align=2, $pop276
	i64.store	136($23), $4
	i32.const	$push277=, 0
	i32.store	152($23), $pop277
	i64.load	$push278=, 0($0)
	i64.store	128($23), $pop278
	i32.const	$push465=, 128
	i32.add 	$push466=, $23, $pop465
	i32.const	$push636=, 24
	i32.add 	$21=, $pop466, $pop636
	i32.const	$push279=, .L.str.33
	i32.call	$push635=, strlen@FUNCTION, $pop279
	tee_local	$push634=, $20=, $pop635
	i32.const	$push280=, -16
	i32.ge_u	$push281=, $pop634, $pop280
	br_if   	3, $pop281
	i32.const	$push645=, 8
	i32.add 	$22=, $0, $pop645
	block   	
	block   	
	block   	
	i32.const	$push282=, 11
	i32.ge_u	$push283=, $20, $pop282
	br_if   	0, $pop283
	i32.const	$push297=, 152
	i32.add 	$push298=, $23, $pop297
	i32.const	$push295=, 1
	i32.shl 	$push296=, $20, $pop295
	i32.store8	0($pop298), $pop296
	i32.const	$push646=, 1
	i32.add 	$21=, $21, $pop646
	br_if   	1, $20
	br      	2
.LBB64_44:
	end_block
	i32.const	$push284=, 16
	i32.add 	$push285=, $20, $pop284
	i32.const	$push286=, -16
	i32.and 	$push648=, $pop285, $pop286
	tee_local	$push647=, $3=, $pop648
	i32.call	$21=, _Znwj@FUNCTION, $pop647
	i32.const	$push289=, 152
	i32.add 	$push290=, $23, $pop289
	i32.const	$push287=, 1
	i32.or  	$push288=, $3, $pop287
	i32.store	0($pop290), $pop288
	i32.const	$push291=, 160
	i32.add 	$push292=, $23, $pop291
	i32.store	0($pop292), $21
	i32.const	$push293=, 156
	i32.add 	$push294=, $23, $pop293
	i32.store	0($pop294), $20
.LBB64_45:
	end_block
	i32.const	$push299=, .L.str.33
	i32.call	$drop=, memcpy@FUNCTION, $21, $pop299, $20
.LBB64_46:
	end_block
	i32.add 	$push300=, $21, $20
	i32.const	$push301=, 0
	i32.store8	0($pop300), $pop301
	i32.const	$push467=, 128
	i32.add 	$push468=, $23, $pop467
	call    	_ZN5eosio8currency14issue_currencyERKNS0_5issueE@FUNCTION, $22, $pop468
	i32.const	$push302=, 152
	i32.add 	$push303=, $23, $pop302
	i32.load8_u	$push304=, 0($pop303)
	i32.const	$push305=, 1
	i32.and 	$push306=, $pop304, $pop305
	i32.eqz 	$push652=, $pop306
	br_if   	0, $pop652
	i32.const	$push307=, 160
	i32.add 	$push308=, $23, $pop307
	i32.load	$push309=, 0($pop308)
	call    	_ZdlPv@FUNCTION, $pop309
.LBB64_48:
	end_block
	i32.const	$push455=, 552
	i32.add 	$push456=, $23, $pop455
	call    	_ZN5eosio12market_state4saveEv@FUNCTION, $pop456
	i32.const	$push457=, 552
	i32.add 	$push458=, $23, $pop457
	i32.call	$drop=, _ZN5eosio12market_stateD2Ev@FUNCTION, $pop458
	i32.const	$push340=, 0
	i32.const	$push338=, 1008
	i32.add 	$push339=, $23, $pop338
	i32.store	__stack_pointer($pop340), $pop339
	return
.LBB64_49:
	end_block
	i32.const	$push407=, 128
	i32.add 	$push408=, $23, $pop407
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop408
	unreachable
.LBB64_50:
	end_block
	i32.const	$push439=, 128
	i32.add 	$push440=, $23, $pop439
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop440
	unreachable
.LBB64_51:
	end_block
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $21
	unreachable
	.endfunc
.Lfunc_end64:
	.size	_ZN5eosio8exchange2onERKNS0_5tradeE, .Lfunc_end64-_ZN5eosio8exchange2onERKNS0_5tradeE

	.section	.text._ZNK5eosio5asset5printEv,"axG",@progbits,_ZNK5eosio5asset5printEv,comdat
	.hidden	_ZNK5eosio5asset5printEv
	.weak	_ZNK5eosio5asset5printEv
	.type	_ZNK5eosio5asset5printEv,@function
_ZNK5eosio5asset5printEv:
	.param  	i32
	.local  	i32, i32, i32, i64, i32, i32, i64, i64, i64, i32
	i32.const	$push14=, 0
	i32.load	$push22=, __stack_pointer($pop14)
	tee_local	$push21=, $2=, $pop22
	copy_local	$10=, $pop21
	i64.const	$7=, 1
	block   	
	i64.load8_u	$push20=, 8($0)
	tee_local	$push19=, $8=, $pop20
	i64.eqz 	$push18=, $pop19
	tee_local	$push17=, $5=, $pop18
	br_if   	0, $pop17
	i64.const	$push23=, 1
	i64.add 	$9=, $8, $pop23
	i64.const	$7=, 1
.LBB65_2:
	loop    	
	i64.const	$push28=, 10
	i64.mul 	$7=, $7, $pop28
	i64.const	$push27=, -1
	i64.add 	$push26=, $9, $pop27
	tee_local	$push25=, $9=, $pop26
	i64.const	$push24=, 1
	i64.gt_s	$push0=, $pop25, $pop24
	br_if   	0, $pop0
.LBB65_3:
	end_loop
	end_block
	i32.const	$push37=, 8
	i32.add 	$1=, $0, $pop37
	i32.const	$push13=, 0
	i64.const	$push36=, 1
	i64.add 	$push1=, $8, $pop36
	i32.wrap/i64	$push2=, $pop1
	i32.const	$push3=, 15
	i32.add 	$push4=, $pop2, $pop3
	i32.const	$push5=, 1008
	i32.and 	$push6=, $pop4, $pop5
	i32.sub 	$push35=, $2, $pop6
	tee_local	$push34=, $2=, $pop35
	copy_local	$push16=, $pop34
	i32.store	__stack_pointer($pop13), $pop16
	i32.wrap/i64	$push33=, $8
	tee_local	$push32=, $3=, $pop33
	i32.add 	$push31=, $2, $pop32
	tee_local	$push30=, $6=, $pop31
	i32.const	$push29=, 0
	i32.store8	0($pop30), $pop29
	i64.load	$4=, 0($0)
	block   	
	br_if   	0, $5
	i64.const	$push39=, 1
	i64.add 	$8=, $8, $pop39
	i64.rem_s	$9=, $4, $7
	i32.const	$push38=, -1
	i32.add 	$0=, $6, $pop38
.LBB65_5:
	loop    	
	i64.const	$push47=, 10
	i64.rem_s	$push7=, $9, $pop47
	i64.const	$push46=, 48
	i64.add 	$push8=, $pop7, $pop46
	i64.store8	0($0), $pop8
	i32.const	$push45=, -1
	i32.add 	$0=, $0, $pop45
	i64.const	$push44=, 10
	i64.div_s	$9=, $9, $pop44
	i64.const	$push43=, -1
	i64.add 	$push42=, $8, $pop43
	tee_local	$push41=, $8=, $pop42
	i64.const	$push40=, 1
	i64.gt_s	$push9=, $pop41, $pop40
	br_if   	0, $pop9
.LBB65_6:
	end_loop
	end_block
	i64.div_s	$push10=, $4, $7
	call    	printi@FUNCTION, $pop10
	i32.const	$push11=, .L.str.114
	call    	prints@FUNCTION, $pop11
	call    	prints_l@FUNCTION, $2, $3
	i32.const	$push12=, .L.str.115
	call    	prints@FUNCTION, $pop12
	i32.const	$push48=, 0
	call    	_ZNK5eosio11symbol_type5printEb@FUNCTION, $1, $pop48
	i32.const	$push15=, 0
	i32.store	__stack_pointer($pop15), $10
	.endfunc
.Lfunc_end65:
	.size	_ZNK5eosio5asset5printEv, .Lfunc_end65-_ZNK5eosio5asset5printEv

	.section	.text._ZN5eosio8currency14issue_currencyERKNS0_5issueE,"axG",@progbits,_ZN5eosio8currency14issue_currencyERKNS0_5issueE,comdat
	.hidden	_ZN5eosio8currency14issue_currencyERKNS0_5issueE
	.weak	_ZN5eosio8currency14issue_currencyERKNS0_5issueE
	.type	_ZN5eosio8currency14issue_currencyERKNS0_5issueE,@function
_ZN5eosio8currency14issue_currencyERKNS0_5issueE:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i64, i32
	i32.const	$push32=, 0
	i32.const	$push29=, 0
	i32.load	$push30=, __stack_pointer($pop29)
	i32.const	$push31=, 80
	i32.sub 	$push61=, $pop30, $pop31
	tee_local	$push60=, $7=, $pop61
	i32.store	__stack_pointer($pop32), $pop60
	i32.const	$push0=, 16
	i32.add 	$push59=, $1, $pop0
	tee_local	$push58=, $3=, $pop59
	i64.load	$6=, 0($pop58)
	i32.const	$push1=, 72
	i32.add 	$push2=, $7, $pop1
	i32.const	$push3=, 0
	i32.store	0($pop2), $pop3
	i64.const	$push4=, -1
	i64.store	56($7), $pop4
	i64.const	$push5=, 0
	i64.store	64($7), $pop5
	i64.load	$push6=, 0($0)
	i64.store	40($7), $pop6
	i64.const	$push7=, 8
	i64.shr_u	$push57=, $6, $pop7
	tee_local	$push56=, $6=, $pop57
	i64.store	48($7), $pop56
	i32.const	$push36=, 40
	i32.add 	$push37=, $7, $pop36
	i32.const	$push8=, .L.str.80
	i32.call	$2=, _ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE3getEyPKc@FUNCTION, $pop37, $6, $pop8
	i32.store	32($7), $1
	i32.const	$push38=, 40
	i32.add 	$push39=, $7, $pop38
	i64.const	$push55=, 0
	i32.const	$push40=, 32
	i32.add 	$push41=, $7, $pop40
	call    	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE6modifyIZNS1_14issue_currencyERKNS1_5issueEEUlRT_E_EEvRKS2_yOS8_@FUNCTION, $pop39, $2, $pop55, $pop41
	i32.const	$push42=, 16
	i32.add 	$push43=, $7, $pop42
	i32.const	$push12=, 12
	i32.add 	$push54=, $pop43, $pop12
	tee_local	$push53=, $4=, $pop54
	i32.const	$push9=, 20
	i32.add 	$push10=, $1, $pop9
	i32.load	$push11=, 0($pop10)
	i32.store	0($pop53), $pop11
	i32.const	$push44=, 16
	i32.add 	$push45=, $7, $pop44
	i32.const	$push14=, 8
	i32.add 	$push52=, $pop45, $pop14
	tee_local	$push51=, $5=, $pop52
	i32.load	$push13=, 0($3)
	i32.store	0($pop51), $pop13
	i32.const	$push50=, 12
	i32.add 	$push15=, $1, $pop50
	i32.load	$push16=, 0($pop15)
	i32.store	20($7), $pop16
	i32.load	$push17=, 8($1)
	i32.store	16($7), $pop17
	i64.load	$6=, 32($2)
	i32.const	$push49=, 12
	i32.add 	$push18=, $7, $pop49
	i32.load	$push19=, 0($4)
	i32.store	0($pop18), $pop19
	i32.const	$push48=, 8
	i32.add 	$push20=, $7, $pop48
	i32.load	$push21=, 0($5)
	i32.store	0($pop20), $pop21
	i32.load	$push22=, 20($7)
	i32.store	4($7), $pop22
	i32.load	$push23=, 16($7)
	i32.store	0($7), $pop23
	call    	_ZN5eosio8currency11add_balanceEyNS_5assetERKNS0_14currency_statsEy@FUNCTION, $0, $6, $7, $2, $6
	block   	
	i32.load	$push47=, 64($7)
	tee_local	$push46=, $0=, $pop47
	i32.eqz 	$push70=, $pop46
	br_if   	0, $pop70
	block   	
	block   	
	i32.const	$push24=, 68
	i32.add 	$push65=, $7, $pop24
	tee_local	$push64=, $3=, $pop65
	i32.load	$push63=, 0($pop64)
	tee_local	$push62=, $1=, $pop63
	i32.eq  	$push25=, $pop62, $0
	br_if   	0, $pop25
.LBB66_3:
	loop    	
	i32.const	$push69=, -24
	i32.add 	$push68=, $1, $pop69
	tee_local	$push67=, $1=, $pop68
	i32.load	$2=, 0($pop67)
	i32.const	$push66=, 0
	i32.store	0($1), $pop66
	block   	
	i32.eqz 	$push71=, $2
	br_if   	0, $pop71
	call    	_ZdlPv@FUNCTION, $2
.LBB66_5:
	end_block
	i32.ne  	$push26=, $0, $1
	br_if   	0, $pop26
	end_loop
	i32.const	$push27=, 64
	i32.add 	$push28=, $7, $pop27
	i32.load	$1=, 0($pop28)
	br      	1
.LBB66_7:
	end_block
	copy_local	$1=, $0
.LBB66_8:
	end_block
	i32.store	0($3), $0
	call    	_ZdlPv@FUNCTION, $1
.LBB66_9:
	end_block
	i32.const	$push35=, 0
	i32.const	$push33=, 80
	i32.add 	$push34=, $7, $pop33
	i32.store	__stack_pointer($pop35), $pop34
	.endfunc
.Lfunc_end66:
	.size	_ZN5eosio8currency14issue_currencyERKNS0_5issueE, .Lfunc_end66-_ZN5eosio8currency14issue_currencyERKNS0_5issueE

	.section	.text._ZN5eosio12market_stateD2Ev,"axG",@progbits,_ZN5eosio12market_stateD2Ev,comdat
	.hidden	_ZN5eosio12market_stateD2Ev
	.weak	_ZN5eosio12market_stateD2Ev
	.type	_ZN5eosio12market_stateD2Ev,@function
_ZN5eosio12market_stateD2Ev:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32
	block   	
	i32.const	$push0=, 424
	i32.add 	$push1=, $0, $pop0
	i32.load	$push36=, 0($pop1)
	tee_local	$push35=, $1=, $pop36
	i32.eqz 	$push85=, $pop35
	br_if   	0, $pop85
	block   	
	block   	
	i32.const	$push2=, 428
	i32.add 	$push40=, $0, $pop2
	tee_local	$push39=, $3=, $pop40
	i32.load	$push38=, 0($pop39)
	tee_local	$push37=, $4=, $pop38
	i32.eq  	$push3=, $pop37, $1
	br_if   	0, $pop3
.LBB67_3:
	loop    	
	i32.const	$push44=, -24
	i32.add 	$push43=, $4, $pop44
	tee_local	$push42=, $4=, $pop43
	i32.load	$2=, 0($pop42)
	i32.const	$push41=, 0
	i32.store	0($4), $pop41
	block   	
	i32.eqz 	$push86=, $2
	br_if   	0, $pop86
	call    	_ZdlPv@FUNCTION, $2
.LBB67_5:
	end_block
	i32.ne  	$push4=, $1, $4
	br_if   	0, $pop4
	end_loop
	i32.const	$push5=, 424
	i32.add 	$push6=, $0, $pop5
	i32.load	$4=, 0($pop6)
	br      	1
.LBB67_7:
	end_block
	copy_local	$4=, $1
.LBB67_8:
	end_block
	i32.store	0($3), $1
	call    	_ZdlPv@FUNCTION, $4
.LBB67_9:
	end_block
	block   	
	i32.const	$push7=, 384
	i32.add 	$push8=, $0, $pop7
	i32.load	$push46=, 0($pop8)
	tee_local	$push45=, $1=, $pop46
	i32.eqz 	$push87=, $pop45
	br_if   	0, $pop87
	block   	
	block   	
	i32.const	$push9=, 388
	i32.add 	$push50=, $0, $pop9
	tee_local	$push49=, $3=, $pop50
	i32.load	$push48=, 0($pop49)
	tee_local	$push47=, $4=, $pop48
	i32.eq  	$push10=, $pop47, $1
	br_if   	0, $pop10
.LBB67_12:
	loop    	
	i32.const	$push54=, -24
	i32.add 	$push53=, $4, $pop54
	tee_local	$push52=, $4=, $pop53
	i32.load	$2=, 0($pop52)
	i32.const	$push51=, 0
	i32.store	0($4), $pop51
	block   	
	i32.eqz 	$push88=, $2
	br_if   	0, $pop88
	call    	_ZdlPv@FUNCTION, $2
.LBB67_14:
	end_block
	i32.ne  	$push11=, $1, $4
	br_if   	0, $pop11
	end_loop
	i32.const	$push12=, 384
	i32.add 	$push13=, $0, $pop12
	i32.load	$4=, 0($pop13)
	br      	1
.LBB67_16:
	end_block
	copy_local	$4=, $1
.LBB67_17:
	end_block
	i32.store	0($3), $1
	call    	_ZdlPv@FUNCTION, $4
.LBB67_18:
	end_block
	block   	
	i32.const	$push14=, 344
	i32.add 	$push15=, $0, $pop14
	i32.load	$push56=, 0($pop15)
	tee_local	$push55=, $1=, $pop56
	i32.eqz 	$push89=, $pop55
	br_if   	0, $pop89
	block   	
	block   	
	i32.const	$push16=, 348
	i32.add 	$push60=, $0, $pop16
	tee_local	$push59=, $3=, $pop60
	i32.load	$push58=, 0($pop59)
	tee_local	$push57=, $4=, $pop58
	i32.eq  	$push17=, $pop57, $1
	br_if   	0, $pop17
.LBB67_21:
	loop    	
	i32.const	$push64=, -24
	i32.add 	$push63=, $4, $pop64
	tee_local	$push62=, $4=, $pop63
	i32.load	$2=, 0($pop62)
	i32.const	$push61=, 0
	i32.store	0($4), $pop61
	block   	
	i32.eqz 	$push90=, $2
	br_if   	0, $pop90
	call    	_ZdlPv@FUNCTION, $2
.LBB67_23:
	end_block
	i32.ne  	$push18=, $1, $4
	br_if   	0, $pop18
	end_loop
	i32.const	$push19=, 344
	i32.add 	$push20=, $0, $pop19
	i32.load	$4=, 0($pop20)
	br      	1
.LBB67_25:
	end_block
	copy_local	$4=, $1
.LBB67_26:
	end_block
	i32.store	0($3), $1
	call    	_ZdlPv@FUNCTION, $4
.LBB67_27:
	end_block
	block   	
	i32.const	$push21=, 304
	i32.add 	$push22=, $0, $pop21
	i32.load	$push66=, 0($pop22)
	tee_local	$push65=, $1=, $pop66
	i32.eqz 	$push91=, $pop65
	br_if   	0, $pop91
	block   	
	block   	
	i32.const	$push23=, 308
	i32.add 	$push70=, $0, $pop23
	tee_local	$push69=, $3=, $pop70
	i32.load	$push68=, 0($pop69)
	tee_local	$push67=, $4=, $pop68
	i32.eq  	$push24=, $pop67, $1
	br_if   	0, $pop24
.LBB67_30:
	loop    	
	i32.const	$push74=, -24
	i32.add 	$push73=, $4, $pop74
	tee_local	$push72=, $4=, $pop73
	i32.load	$2=, 0($pop72)
	i32.const	$push71=, 0
	i32.store	0($4), $pop71
	block   	
	i32.eqz 	$push92=, $2
	br_if   	0, $pop92
	call    	_ZdlPv@FUNCTION, $2
.LBB67_32:
	end_block
	i32.ne  	$push25=, $1, $4
	br_if   	0, $pop25
	end_loop
	i32.const	$push26=, 304
	i32.add 	$push27=, $0, $pop26
	i32.load	$4=, 0($pop27)
	br      	1
.LBB67_34:
	end_block
	copy_local	$4=, $1
.LBB67_35:
	end_block
	i32.store	0($3), $1
	call    	_ZdlPv@FUNCTION, $4
.LBB67_36:
	end_block
	block   	
	i32.const	$push28=, 264
	i32.add 	$push29=, $0, $pop28
	i32.load	$push76=, 0($pop29)
	tee_local	$push75=, $1=, $pop76
	i32.eqz 	$push93=, $pop75
	br_if   	0, $pop93
	block   	
	block   	
	i32.const	$push30=, 268
	i32.add 	$push80=, $0, $pop30
	tee_local	$push79=, $3=, $pop80
	i32.load	$push78=, 0($pop79)
	tee_local	$push77=, $4=, $pop78
	i32.eq  	$push31=, $pop77, $1
	br_if   	0, $pop31
.LBB67_39:
	loop    	
	i32.const	$push84=, -24
	i32.add 	$push83=, $4, $pop84
	tee_local	$push82=, $4=, $pop83
	i32.load	$2=, 0($pop82)
	i32.const	$push81=, 0
	i32.store	0($4), $pop81
	block   	
	i32.eqz 	$push94=, $2
	br_if   	0, $pop94
	call    	_ZdlPv@FUNCTION, $2
.LBB67_41:
	end_block
	i32.ne  	$push32=, $1, $4
	br_if   	0, $pop32
	end_loop
	i32.const	$push33=, 264
	i32.add 	$push34=, $0, $pop33
	i32.load	$4=, 0($pop34)
	br      	1
.LBB67_43:
	end_block
	copy_local	$4=, $1
.LBB67_44:
	end_block
	i32.store	0($3), $1
	call    	_ZdlPv@FUNCTION, $4
.LBB67_45:
	end_block
	copy_local	$push95=, $0
	.endfunc
.Lfunc_end67:
	.size	_ZN5eosio12market_stateD2Ev, .Lfunc_end67-_ZN5eosio12market_stateD2Ev

	.section	.text._ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE3getEyPKc,"axG",@progbits,_ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE3getEyPKc,comdat
	.hidden	_ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE3getEyPKc
	.weak	_ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE3getEyPKc
	.type	_ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE3getEyPKc,@function
_ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE3getEyPKc:
	.param  	i32, i64, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	block   	
	i32.const	$push0=, 28
	i32.add 	$push1=, $0, $pop0
	i32.load	$push28=, 0($pop1)
	tee_local	$push27=, $7=, $pop28
	i32.load	$push26=, 24($0)
	tee_local	$push25=, $3=, $pop26
	i32.eq  	$push2=, $pop27, $pop25
	br_if   	0, $pop2
	i32.const	$push29=, -24
	i32.add 	$6=, $7, $pop29
	i32.const	$push3=, 0
	i32.sub 	$4=, $pop3, $3
.LBB68_2:
	loop    	
	i32.load	$push4=, 0($6)
	i64.load	$push5=, 8($pop4)
	i64.const	$push30=, 8
	i64.shr_u	$push6=, $pop5, $pop30
	i64.eq  	$push7=, $pop6, $1
	br_if   	1, $pop7
	copy_local	$7=, $6
	i32.const	$push34=, -24
	i32.add 	$push33=, $6, $pop34
	tee_local	$push32=, $5=, $pop33
	copy_local	$6=, $pop32
	i32.add 	$push8=, $5, $4
	i32.const	$push31=, -24
	i32.ne  	$push9=, $pop8, $pop31
	br_if   	0, $pop9
.LBB68_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push10=, $7, $3
	br_if   	0, $pop10
	i32.const	$push11=, -24
	i32.add 	$push12=, $7, $pop11
	i32.load	$push36=, 0($pop12)
	tee_local	$push35=, $6=, $pop36
	i32.load	$push13=, 48($pop35)
	i32.eq  	$push14=, $pop13, $0
	i32.const	$push15=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop14, $pop15
	br      	1
.LBB68_6:
	end_block
	i32.const	$6=, 0
	i64.load	$push17=, 0($0)
	i64.load	$push16=, 8($0)
	i64.const	$push18=, -4157508551318700032
	i32.call	$push39=, db_find_i64@FUNCTION, $pop17, $pop16, $pop18, $1
	tee_local	$push38=, $5=, $pop39
	i32.const	$push37=, 0
	i32.lt_s	$push19=, $pop38, $pop37
	br_if   	0, $pop19
	i32.call	$push41=, _ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE31load_object_by_primary_iteratorEl@FUNCTION, $0, $5
	tee_local	$push40=, $6=, $pop41
	i32.load	$push20=, 48($pop40)
	i32.eq  	$push21=, $pop20, $0
	i32.const	$push22=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop21, $pop22
.LBB68_8:
	end_block
	i32.const	$push23=, 0
	i32.ne  	$push24=, $6, $pop23
	call    	eosio_assert@FUNCTION, $pop24, $2
	copy_local	$push42=, $6
	.endfunc
.Lfunc_end68:
	.size	_ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE3getEyPKc, .Lfunc_end68-_ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE3getEyPKc

	.section	.text._ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE6modifyIZNS1_14issue_currencyERKNS1_5issueEEUlRT_E_EEvRKS2_yOS8_,"axG",@progbits,_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE6modifyIZNS1_14issue_currencyERKNS1_5issueEEUlRT_E_EEvRKS2_yOS8_,comdat
	.hidden	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE6modifyIZNS1_14issue_currencyERKNS1_5issueEEUlRT_E_EEvRKS2_yOS8_
	.weak	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE6modifyIZNS1_14issue_currencyERKNS1_5issueEEUlRT_E_EEvRKS2_yOS8_
	.type	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE6modifyIZNS1_14issue_currencyERKNS1_5issueEEUlRT_E_EEvRKS2_yOS8_,@function
_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE6modifyIZNS1_14issue_currencyERKNS1_5issueEEUlRT_E_EEvRKS2_yOS8_:
	.param  	i32, i32, i64, i32
	.local  	i64, i64, i32
	i32.const	$push33=, 0
	i32.const	$push30=, 0
	i32.load	$push31=, __stack_pointer($pop30)
	i32.const	$push32=, 64
	i32.sub 	$push46=, $pop31, $pop32
	tee_local	$push45=, $6=, $pop46
	i32.store	__stack_pointer($pop33), $pop45
	i32.load	$push0=, 48($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.84
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.85
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	i64.load	$push7=, 0($1)
	i32.load	$push8=, 0($3)
	i64.load	$push9=, 8($pop8)
	i64.add 	$push44=, $pop7, $pop9
	tee_local	$push43=, $4=, $pop44
	i64.store	0($1), $pop43
	i64.load	$5=, 8($1)
	i64.const	$push10=, 63
	i64.shr_u	$push11=, $4, $pop10
	i32.wrap/i64	$push12=, $pop11
	i32.const	$push13=, 1
	i32.xor 	$push14=, $pop12, $pop13
	i32.const	$push15=, .L.str.74
	call    	eosio_assert@FUNCTION, $pop14, $pop15
	i64.const	$push16=, 8
	i64.shr_u	$push42=, $5, $pop16
	tee_local	$push41=, $4=, $pop42
	i64.load	$push17=, 8($1)
	i64.const	$push40=, 8
	i64.shr_u	$push18=, $pop17, $pop40
	i64.eq  	$push19=, $pop41, $pop18
	i32.const	$push20=, .L.str.86
	call    	eosio_assert@FUNCTION, $pop19, $pop20
	i32.const	$push21=, 45
	i32.add 	$push22=, $6, $pop21
	i32.store	56($6), $pop22
	i32.store	52($6), $6
	i32.store	48($6), $6
	i32.const	$push37=, 48
	i32.add 	$push38=, $6, $pop37
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency14currency_statsE@FUNCTION, $pop38, $1
	i32.load	$push23=, 52($1)
	i32.const	$push39=, 45
	call    	db_update_i64@FUNCTION, $pop23, $2, $6, $pop39
	block   	
	i64.load	$push24=, 16($0)
	i64.lt_u	$push25=, $4, $pop24
	br_if   	0, $pop25
	i32.const	$push28=, 16
	i32.add 	$push29=, $0, $pop28
	i64.const	$push26=, 1
	i64.add 	$push27=, $4, $pop26
	i64.store	0($pop29), $pop27
.LBB69_2:
	end_block
	i32.const	$push36=, 0
	i32.const	$push34=, 64
	i32.add 	$push35=, $6, $pop34
	i32.store	__stack_pointer($pop36), $pop35
	.endfunc
.Lfunc_end69:
	.size	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE6modifyIZNS1_14issue_currencyERKNS1_5issueEEUlRT_E_EEvRKS2_yOS8_, .Lfunc_end69-_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE6modifyIZNS1_14issue_currencyERKNS1_5issueEEUlRT_E_EEvRKS2_yOS8_

	.section	.text._ZN5eosio8currency11add_balanceEyNS_5assetERKNS0_14currency_statsEy,"axG",@progbits,_ZN5eosio8currency11add_balanceEyNS_5assetERKNS0_14currency_statsEy,comdat
	.hidden	_ZN5eosio8currency11add_balanceEyNS_5assetERKNS0_14currency_statsEy
	.weak	_ZN5eosio8currency11add_balanceEyNS_5assetERKNS0_14currency_statsEy
	.type	_ZN5eosio8currency11add_balanceEyNS_5assetERKNS0_14currency_statsEy,@function
_ZN5eosio8currency11add_balanceEyNS_5assetERKNS0_14currency_statsEy:
	.param  	i32, i64, i32, i32, i64
	.local  	i64, i32, i32
	i32.const	$push31=, 0
	i32.const	$push28=, 0
	i32.load	$push29=, __stack_pointer($pop28)
	i32.const	$push30=, 64
	i32.sub 	$push55=, $pop29, $pop30
	tee_local	$push54=, $7=, $pop55
	i32.store	__stack_pointer($pop31), $pop54
	i32.const	$push0=, 56
	i32.add 	$push1=, $7, $pop0
	i32.const	$push2=, 0
	i32.store	0($pop1), $pop2
	i64.const	$push3=, -1
	i64.store	40($7), $pop3
	i64.const	$push53=, 0
	i64.store	48($7), $pop53
	i64.load	$push52=, 0($0)
	tee_local	$push51=, $5=, $pop52
	i64.store	24($7), $pop51
	i64.store	32($7), $1
	block   	
	block   	
	block   	
	i64.const	$push7=, 3607749779137757184
	i64.load	$push4=, 8($2)
	i64.const	$push5=, 8
	i64.shr_u	$push6=, $pop4, $pop5
	i32.call	$push50=, db_find_i64@FUNCTION, $5, $1, $pop7, $pop6
	tee_local	$push49=, $0=, $pop50
	i32.const	$push8=, -1
	i32.le_s	$push9=, $pop49, $pop8
	br_if   	0, $pop9
	i32.const	$push41=, 24
	i32.add 	$push42=, $7, $pop41
	i32.call	$push61=, _ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop42, $0
	tee_local	$push60=, $0=, $pop61
	i32.load	$push10=, 20($pop60)
	i32.const	$push43=, 24
	i32.add 	$push44=, $7, $pop43
	i32.eq  	$push11=, $pop10, $pop44
	i32.const	$push12=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop11, $pop12
	i32.load8_u	$push14=, 17($0)
	i32.const	$push15=, 1
	i32.load8_u	$push13=, 44($3)
	i32.select	$push16=, $pop14, $pop15, $pop13
	i32.const	$push17=, .L.str.88
	call    	eosio_assert@FUNCTION, $pop16, $pop17
	i32.store	8($7), $2
	i32.const	$push59=, 1
	i32.const	$push18=, .L.str.90
	call    	eosio_assert@FUNCTION, $pop59, $pop18
	i32.const	$push45=, 24
	i32.add 	$push46=, $7, $pop45
	i64.const	$push58=, 0
	i32.const	$push47=, 8
	i32.add 	$push48=, $7, $pop47
	call    	_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE6modifyIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E0_EEvRKS2_yOS9_@FUNCTION, $pop46, $0, $pop58, $pop48
	i32.load	$push57=, 48($7)
	tee_local	$push56=, $3=, $pop57
	br_if   	1, $pop56
	br      	2
.LBB70_2:
	end_block
	i32.load8_u	$push19=, 44($3)
	i32.const	$push20=, 1
	i32.xor 	$push21=, $pop19, $pop20
	i32.const	$push22=, .L.str.87
	call    	eosio_assert@FUNCTION, $pop21, $pop22
	i32.store	16($7), $2
	i32.const	$push35=, 8
	i32.add 	$push36=, $7, $pop35
	i32.const	$push37=, 24
	i32.add 	$push38=, $7, $pop37
	i32.const	$push39=, 16
	i32.add 	$push40=, $7, $pop39
	call    	_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE7emplaceIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E_EENS3_14const_iteratorEyOS9_@FUNCTION, $pop36, $pop38, $4, $pop40
	i32.load	$push63=, 48($7)
	tee_local	$push62=, $3=, $pop63
	i32.eqz 	$push72=, $pop62
	br_if   	1, $pop72
.LBB70_3:
	end_block
	block   	
	block   	
	i32.const	$push23=, 52
	i32.add 	$push67=, $7, $pop23
	tee_local	$push66=, $6=, $pop67
	i32.load	$push65=, 0($pop66)
	tee_local	$push64=, $2=, $pop65
	i32.eq  	$push24=, $pop64, $3
	br_if   	0, $pop24
.LBB70_5:
	loop    	
	i32.const	$push71=, -24
	i32.add 	$push70=, $2, $pop71
	tee_local	$push69=, $2=, $pop70
	i32.load	$0=, 0($pop69)
	i32.const	$push68=, 0
	i32.store	0($2), $pop68
	block   	
	i32.eqz 	$push73=, $0
	br_if   	0, $pop73
	call    	_ZdlPv@FUNCTION, $0
.LBB70_7:
	end_block
	i32.ne  	$push25=, $3, $2
	br_if   	0, $pop25
	end_loop
	i32.const	$push26=, 48
	i32.add 	$push27=, $7, $pop26
	i32.load	$2=, 0($pop27)
	br      	1
.LBB70_9:
	end_block
	copy_local	$2=, $3
.LBB70_10:
	end_block
	i32.store	0($6), $3
	call    	_ZdlPv@FUNCTION, $2
.LBB70_11:
	end_block
	i32.const	$push34=, 0
	i32.const	$push32=, 64
	i32.add 	$push33=, $7, $pop32
	i32.store	__stack_pointer($pop34), $pop33
	.endfunc
.Lfunc_end70:
	.size	_ZN5eosio8currency11add_balanceEyNS_5assetERKNS0_14currency_statsEy, .Lfunc_end70-_ZN5eosio8currency11add_balanceEyNS_5assetERKNS0_14currency_statsEy

	.section	.text._ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE7emplaceIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E_EENS3_14const_iteratorEyOS9_,"axG",@progbits,_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE7emplaceIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E_EENS3_14const_iteratorEyOS9_,comdat
	.hidden	_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE7emplaceIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E_EENS3_14const_iteratorEyOS9_
	.weak	_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE7emplaceIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E_EENS3_14const_iteratorEyOS9_
	.type	_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE7emplaceIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E_EENS3_14const_iteratorEyOS9_,@function
_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE7emplaceIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E_EENS3_14const_iteratorEyOS9_:
	.param  	i32, i32, i64, i32
	.local  	i32, i32, i32, i32
	i32.const	$push37=, 0
	i32.const	$push34=, 0
	i32.load	$push35=, __stack_pointer($pop34)
	i32.const	$push36=, 48
	i32.sub 	$push56=, $pop35, $pop36
	tee_local	$push55=, $7=, $pop56
	i32.store	__stack_pointer($pop37), $pop55
	i64.store	40($7), $2
	i64.load	$push0=, 0($1)
	i64.call	$push1=, current_receiver@FUNCTION
	i64.eq  	$push2=, $pop0, $pop1
	i32.const	$push3=, .L.str.89
	call    	eosio_assert@FUNCTION, $pop2, $pop3
	i32.store	20($7), $3
	i32.store	16($7), $1
	i32.const	$push41=, 40
	i32.add 	$push42=, $7, $pop41
	i32.store	24($7), $pop42
	i32.const	$push4=, 32
	i32.call	$push54=, _Znwj@FUNCTION, $pop4
	tee_local	$push53=, $4=, $pop54
	i64.const	$push5=, 1398362884
	i64.store	8($pop53), $pop5
	i64.const	$push52=, 0
	i64.store	0($4), $pop52
	i32.const	$push51=, 1
	i32.const	$push6=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop51, $pop6
	i64.const	$2=, 5462355
	i32.const	$3=, 0
.LBB71_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push7=, $2
	i32.const	$push59=, 24
	i32.shl 	$push8=, $pop7, $pop59
	i32.const	$push58=, -1073741825
	i32.add 	$push9=, $pop8, $pop58
	i32.const	$push57=, 452984830
	i32.gt_u	$push10=, $pop9, $pop57
	br_if   	1, $pop10
	block   	
	i64.const	$push64=, 8
	i64.shr_u	$push63=, $2, $pop64
	tee_local	$push62=, $2=, $pop63
	i64.const	$push61=, 255
	i64.and 	$push11=, $pop62, $pop61
	i64.const	$push60=, 0
	i64.ne  	$push12=, $pop11, $pop60
	br_if   	0, $pop12
.LBB71_3:
	loop    	
	i64.const	$push69=, 8
	i64.shr_u	$push68=, $2, $pop69
	tee_local	$push67=, $2=, $pop68
	i64.const	$push66=, 255
	i64.and 	$push13=, $pop67, $pop66
	i64.const	$push65=, 0
	i64.ne  	$push14=, $pop13, $pop65
	br_if   	3, $pop14
	i32.const	$push73=, 1
	i32.add 	$push72=, $3, $pop73
	tee_local	$push71=, $3=, $pop72
	i32.const	$push70=, 7
	i32.lt_s	$push15=, $pop71, $pop70
	br_if   	0, $pop15
.LBB71_5:
	end_loop
	end_block
	i32.const	$6=, 1
	i32.const	$push77=, 1
	i32.add 	$push76=, $3, $pop77
	tee_local	$push75=, $3=, $pop76
	i32.const	$push74=, 7
	i32.lt_s	$push16=, $pop75, $pop74
	br_if   	0, $pop16
	br      	2
.LBB71_6:
	end_loop
	end_block
	i32.const	$6=, 0
.LBB71_7:
	end_block
	i32.const	$push17=, .L.str.66
	call    	eosio_assert@FUNCTION, $6, $pop17
	i32.store	20($4), $1
	i32.const	$push18=, 256
	i32.store16	16($4), $pop18
	i32.const	$push43=, 16
	i32.add 	$push44=, $7, $pop43
	call    	_ZZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE7emplaceIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E_EENS3_14const_iteratorEyOS9_ENKUlSA_E_clINS3_4itemEEEDaSA_@FUNCTION, $pop44, $4
	i32.store	32($7), $4
	i32.const	$push19=, 8
	i32.add 	$push20=, $4, $pop19
	i64.load	$push21=, 0($pop20)
	i64.const	$push22=, 8
	i64.shr_u	$push85=, $pop21, $pop22
	tee_local	$push84=, $2=, $pop85
	i64.store	16($7), $pop84
	i32.load	$push83=, 24($4)
	tee_local	$push82=, $6=, $pop83
	i32.store	12($7), $pop82
	block   	
	block   	
	i32.const	$push26=, 28
	i32.add 	$push81=, $1, $pop26
	tee_local	$push80=, $5=, $pop81
	i32.load	$push79=, 0($pop80)
	tee_local	$push78=, $3=, $pop79
	i32.const	$push23=, 32
	i32.add 	$push24=, $1, $pop23
	i32.load	$push25=, 0($pop24)
	i32.ge_u	$push27=, $pop78, $pop25
	br_if   	0, $pop27
	i64.store	8($3), $2
	i32.store	16($3), $6
	i32.const	$push30=, 0
	i32.store	32($7), $pop30
	i32.store	0($3), $4
	i32.const	$push31=, 24
	i32.add 	$push32=, $3, $pop31
	i32.store	0($5), $pop32
	br      	1
.LBB71_9:
	end_block
	i32.const	$push28=, 24
	i32.add 	$push29=, $1, $pop28
	i32.const	$push45=, 32
	i32.add 	$push46=, $7, $pop45
	i32.const	$push47=, 16
	i32.add 	$push48=, $7, $pop47
	i32.const	$push49=, 12
	i32.add 	$push50=, $7, $pop49
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_8currency7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop29, $pop46, $pop48, $pop50
.LBB71_10:
	end_block
	i32.store	4($0), $4
	i32.store	0($0), $1
	i32.load	$3=, 32($7)
	i32.const	$push33=, 0
	i32.store	32($7), $pop33
	block   	
	i32.eqz 	$push86=, $3
	br_if   	0, $pop86
	call    	_ZdlPv@FUNCTION, $3
.LBB71_12:
	end_block
	i32.const	$push40=, 0
	i32.const	$push38=, 48
	i32.add 	$push39=, $7, $pop38
	i32.store	__stack_pointer($pop40), $pop39
	.endfunc
.Lfunc_end71:
	.size	_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE7emplaceIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E_EENS3_14const_iteratorEyOS9_, .Lfunc_end71-_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE7emplaceIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E_EENS3_14const_iteratorEyOS9_

	.section	.text._ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE31load_object_by_primary_iteratorEl,@function
_ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i64, i32, i32
	i32.const	$push56=, 0
	i32.load	$push57=, __stack_pointer($pop56)
	i32.const	$push58=, 48
	i32.sub 	$push77=, $pop57, $pop58
	tee_local	$push76=, $9=, $pop77
	copy_local	$8=, $pop76
	i32.const	$push59=, 0
	i32.store	__stack_pointer($pop59), $9
	block   	
	i32.const	$push0=, 28
	i32.add 	$push1=, $0, $pop0
	i32.load	$push75=, 0($pop1)
	tee_local	$push74=, $6=, $pop75
	i32.load	$push73=, 24($0)
	tee_local	$push72=, $2=, $pop73
	i32.eq  	$push2=, $pop74, $pop72
	br_if   	0, $pop2
	i32.const	$push3=, 0
	i32.sub 	$3=, $pop3, $2
	i32.const	$push78=, -24
	i32.add 	$5=, $6, $pop78
.LBB72_2:
	loop    	
	i32.const	$push79=, 16
	i32.add 	$push4=, $5, $pop79
	i32.load	$push5=, 0($pop4)
	i32.eq  	$push6=, $pop5, $1
	br_if   	1, $pop6
	copy_local	$6=, $5
	i32.const	$push83=, -24
	i32.add 	$push82=, $5, $pop83
	tee_local	$push81=, $4=, $pop82
	copy_local	$5=, $pop81
	i32.add 	$push7=, $4, $3
	i32.const	$push80=, -24
	i32.ne  	$push8=, $pop7, $pop80
	br_if   	0, $pop8
.LBB72_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push9=, $6, $2
	br_if   	0, $pop9
	i32.const	$push10=, -24
	i32.add 	$push11=, $6, $pop10
	i32.load	$4=, 0($pop11)
	br      	1
.LBB72_6:
	end_block
	i32.const	$push12=, 0
	i32.const	$push86=, 0
	i32.call	$push85=, db_get_i64@FUNCTION, $1, $pop12, $pop86
	tee_local	$push84=, $5=, $pop85
	i32.const	$push13=, 31
	i32.shr_u	$push14=, $pop84, $pop13
	i32.const	$push15=, 1
	i32.xor 	$push16=, $pop14, $pop15
	i32.const	$push17=, .L.str.82
	call    	eosio_assert@FUNCTION, $pop16, $pop17
	block   	
	block   	
	i32.const	$push18=, 513
	i32.lt_u	$push19=, $5, $pop18
	br_if   	0, $pop19
	i32.call	$4=, malloc@FUNCTION, $5
	br      	1
.LBB72_8:
	end_block
	i32.const	$push55=, 0
	i32.const	$push20=, 15
	i32.add 	$push21=, $5, $pop20
	i32.const	$push22=, -16
	i32.and 	$push23=, $pop21, $pop22
	i32.sub 	$push88=, $9, $pop23
	tee_local	$push87=, $4=, $pop88
	copy_local	$push71=, $pop87
	i32.store	__stack_pointer($pop55), $pop71
.LBB72_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $5
	i32.store	36($8), $4
	i32.store	32($8), $4
	i32.add 	$push24=, $4, $5
	i32.store	40($8), $pop24
	block   	
	i32.const	$push25=, 513
	i32.lt_u	$push26=, $5, $pop25
	br_if   	0, $pop26
	call    	free@FUNCTION, $4
.LBB72_11:
	end_block
	i32.const	$push93=, 24
	i32.add 	$3=, $0, $pop93
	i32.const	$push27=, 32
	i32.call	$push92=, _Znwj@FUNCTION, $pop27
	tee_local	$push91=, $4=, $pop92
	i64.const	$push28=, 1398362884
	i64.store	8($pop91), $pop28
	i64.const	$push90=, 0
	i64.store	0($4), $pop90
	i32.const	$push89=, 1
	i32.const	$push29=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop89, $pop29
	i64.const	$7=, 5462355
	i32.const	$5=, 0
.LBB72_12:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push30=, $7
	i32.const	$push96=, 24
	i32.shl 	$push31=, $pop30, $pop96
	i32.const	$push95=, -1073741825
	i32.add 	$push32=, $pop31, $pop95
	i32.const	$push94=, 452984830
	i32.gt_u	$push33=, $pop32, $pop94
	br_if   	1, $pop33
	block   	
	i64.const	$push101=, 8
	i64.shr_u	$push100=, $7, $pop101
	tee_local	$push99=, $7=, $pop100
	i64.const	$push98=, 255
	i64.and 	$push34=, $pop99, $pop98
	i64.const	$push97=, 0
	i64.ne  	$push35=, $pop34, $pop97
	br_if   	0, $pop35
.LBB72_14:
	loop    	
	i64.const	$push106=, 8
	i64.shr_u	$push105=, $7, $pop106
	tee_local	$push104=, $7=, $pop105
	i64.const	$push103=, 255
	i64.and 	$push36=, $pop104, $pop103
	i64.const	$push102=, 0
	i64.ne  	$push37=, $pop36, $pop102
	br_if   	3, $pop37
	i32.const	$push110=, 1
	i32.add 	$push109=, $5, $pop110
	tee_local	$push108=, $5=, $pop109
	i32.const	$push107=, 7
	i32.lt_s	$push38=, $pop108, $pop107
	br_if   	0, $pop38
.LBB72_16:
	end_loop
	end_block
	i32.const	$6=, 1
	i32.const	$push114=, 1
	i32.add 	$push113=, $5, $pop114
	tee_local	$push112=, $5=, $pop113
	i32.const	$push111=, 7
	i32.lt_s	$push39=, $pop112, $pop111
	br_if   	0, $pop39
	br      	2
.LBB72_17:
	end_loop
	end_block
	i32.const	$6=, 0
.LBB72_18:
	end_block
	i32.const	$push40=, .L.str.66
	call    	eosio_assert@FUNCTION, $6, $pop40
	i32.store	20($4), $0
	i32.const	$push41=, 256
	i32.store16	16($4), $pop41
	i32.const	$push63=, 32
	i32.add 	$push64=, $8, $pop63
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency7accountE@FUNCTION, $pop64, $4
	i32.store	24($4), $1
	i32.store	24($8), $4
	i32.const	$push42=, 8
	i32.add 	$push43=, $4, $pop42
	i64.load	$push44=, 0($pop43)
	i64.const	$push45=, 8
	i64.shr_u	$push122=, $pop44, $pop45
	tee_local	$push121=, $7=, $pop122
	i64.store	16($8), $pop121
	i32.load	$push120=, 24($4)
	tee_local	$push119=, $6=, $pop120
	i32.store	12($8), $pop119
	block   	
	block   	
	i32.const	$push49=, 28
	i32.add 	$push118=, $0, $pop49
	tee_local	$push117=, $1=, $pop118
	i32.load	$push116=, 0($pop117)
	tee_local	$push115=, $5=, $pop116
	i32.const	$push46=, 32
	i32.add 	$push47=, $0, $pop46
	i32.load	$push48=, 0($pop47)
	i32.ge_u	$push50=, $pop115, $pop48
	br_if   	0, $pop50
	i64.store	8($5), $7
	i32.store	16($5), $6
	i32.const	$push51=, 0
	i32.store	24($8), $pop51
	i32.store	0($5), $4
	i32.const	$push52=, 24
	i32.add 	$push53=, $5, $pop52
	i32.store	0($1), $pop53
	br      	1
.LBB72_20:
	end_block
	i32.const	$push65=, 24
	i32.add 	$push66=, $8, $pop65
	i32.const	$push67=, 16
	i32.add 	$push68=, $8, $pop67
	i32.const	$push69=, 12
	i32.add 	$push70=, $8, $pop69
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_8currency7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $3, $pop66, $pop68, $pop70
.LBB72_21:
	end_block
	i32.load	$5=, 24($8)
	i32.const	$push54=, 0
	i32.store	24($8), $pop54
	i32.eqz 	$push123=, $5
	br_if   	0, $pop123
	call    	_ZdlPv@FUNCTION, $5
.LBB72_23:
	end_block
	i32.const	$push62=, 0
	i32.const	$push60=, 48
	i32.add 	$push61=, $8, $pop60
	i32.store	__stack_pointer($pop62), $pop61
	copy_local	$push124=, $4
	.endfunc
.Lfunc_end72:
	.size	_ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE31load_object_by_primary_iteratorEl, .Lfunc_end72-_ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE6modifyIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E0_EEvRKS2_yOS9_,"axG",@progbits,_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE6modifyIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E0_EEvRKS2_yOS9_,comdat
	.hidden	_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE6modifyIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E0_EEvRKS2_yOS9_
	.weak	_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE6modifyIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E0_EEvRKS2_yOS9_
	.type	_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE6modifyIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E0_EEvRKS2_yOS9_,@function
_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE6modifyIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E0_EEvRKS2_yOS9_:
	.param  	i32, i32, i64, i32
	.local  	i64, i32
	i32.const	$push35=, 0
	i32.const	$push32=, 0
	i32.load	$push33=, __stack_pointer($pop32)
	i32.const	$push34=, 32
	i32.sub 	$push59=, $pop33, $pop34
	tee_local	$push58=, $5=, $pop59
	i32.store	__stack_pointer($pop35), $pop58
	i32.const	$push0=, 20
	i32.add 	$push1=, $1, $pop0
	i32.load	$push2=, 0($pop1)
	i32.eq  	$push3=, $pop2, $0
	i32.const	$push4=, .L.str.84
	call    	eosio_assert@FUNCTION, $pop3, $pop4
	i64.load	$push5=, 0($0)
	i64.call	$push6=, current_receiver@FUNCTION
	i64.eq  	$push7=, $pop5, $pop6
	i32.const	$push8=, .L.str.85
	call    	eosio_assert@FUNCTION, $pop7, $pop8
	i64.load	$push9=, 0($1)
	i32.load	$push10=, 0($3)
	i64.load	$push11=, 0($pop10)
	i64.add 	$push12=, $pop9, $pop11
	i64.store	0($1), $pop12
	i64.load	$4=, 8($1)
	i32.const	$push14=, 1
	i32.const	$push13=, .L.str.86
	call    	eosio_assert@FUNCTION, $pop14, $pop13
	i32.const	$push57=, 1
	i32.const	$push15=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop57, $pop15
	i32.const	$push16=, 8
	i32.call	$drop=, memcpy@FUNCTION, $5, $1, $pop16
	i32.const	$push56=, 1
	i32.const	$push55=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop56, $pop55
	i32.const	$push54=, 8
	i32.or  	$push18=, $5, $pop54
	i32.const	$push53=, 8
	i32.add 	$push17=, $1, $pop53
	i32.const	$push52=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop18, $pop17, $pop52
	i32.load8_u	$push19=, 16($1)
	i32.store8	31($5), $pop19
	i32.const	$push51=, 1
	i32.const	$push50=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop51, $pop50
	i32.const	$push49=, 16
	i32.add 	$push20=, $5, $pop49
	i32.const	$push39=, 31
	i32.add 	$push40=, $5, $pop39
	i32.const	$push48=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop20, $pop40, $pop48
	i32.load8_u	$push21=, 17($1)
	i32.store8	31($5), $pop21
	i32.const	$push47=, 1
	i32.const	$push46=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop47, $pop46
	i32.const	$push22=, 17
	i32.add 	$push23=, $5, $pop22
	i32.const	$push41=, 31
	i32.add 	$push42=, $5, $pop41
	i32.const	$push45=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop23, $pop42, $pop45
	i32.load	$push24=, 24($1)
	i32.const	$push25=, 18
	call    	db_update_i64@FUNCTION, $pop24, $2, $5, $pop25
	block   	
	i64.const	$push26=, 8
	i64.shr_u	$push44=, $4, $pop26
	tee_local	$push43=, $2=, $pop44
	i64.load	$push27=, 16($0)
	i64.lt_u	$push28=, $pop43, $pop27
	br_if   	0, $pop28
	i32.const	$push60=, 16
	i32.add 	$push31=, $0, $pop60
	i64.const	$push29=, 1
	i64.add 	$push30=, $2, $pop29
	i64.store	0($pop31), $pop30
.LBB73_2:
	end_block
	i32.const	$push38=, 0
	i32.const	$push36=, 32
	i32.add 	$push37=, $5, $pop36
	i32.store	__stack_pointer($pop38), $pop37
	.endfunc
.Lfunc_end73:
	.size	_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE6modifyIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E0_EEvRKS2_yOS9_, .Lfunc_end73-_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE6modifyIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E0_EEvRKS2_yOS9_

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency7accountE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency7accountE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency7accountE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency7accountE
	.type	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency7accountE,@function
_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency7accountE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32
	i32.const	$push33=, 0
	i32.const	$push30=, 0
	i32.load	$push31=, __stack_pointer($pop30)
	i32.const	$push32=, 16
	i32.sub 	$push60=, $pop31, $pop32
	tee_local	$push59=, $3=, $pop60
	i32.store	__stack_pointer($pop33), $pop59
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push58=, 8
	i32.add 	$push57=, $pop8, $pop58
	tee_local	$push56=, $2=, $pop57
	i32.store	4($0), $pop56
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push55=, 7
	i32.gt_u	$push11=, $pop10, $pop55
	i32.const	$push54=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop11, $pop54
	i32.const	$push53=, 8
	i32.add 	$push12=, $1, $pop53
	i32.load	$push13=, 4($0)
	i32.const	$push52=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop13, $pop52
	i32.load	$push14=, 4($0)
	i32.const	$push51=, 8
	i32.add 	$push50=, $pop14, $pop51
	tee_local	$push49=, $2=, $pop50
	i32.store	4($0), $pop49
	i32.load	$push15=, 8($0)
	i32.ne  	$push16=, $pop15, $2
	i32.const	$push48=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop16, $pop48
	i32.const	$push37=, 14
	i32.add 	$push38=, $3, $pop37
	i32.load	$push17=, 4($0)
	i32.const	$push18=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop38, $pop17, $pop18
	i32.load	$push19=, 4($0)
	i32.const	$push47=, 1
	i32.add 	$push46=, $pop19, $pop47
	tee_local	$push45=, $2=, $pop46
	i32.store	4($0), $pop45
	i32.load8_u	$push21=, 14($3)
	i32.const	$push20=, 0
	i32.ne  	$push22=, $pop21, $pop20
	i32.store8	16($1), $pop22
	i32.load	$push23=, 8($0)
	i32.ne  	$push24=, $pop23, $2
	i32.const	$push44=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop24, $pop44
	i32.const	$push39=, 15
	i32.add 	$push40=, $3, $pop39
	i32.load	$push25=, 4($0)
	i32.const	$push43=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop40, $pop25, $pop43
	i32.load	$push26=, 4($0)
	i32.const	$push42=, 1
	i32.add 	$push27=, $pop26, $pop42
	i32.store	4($0), $pop27
	i32.load8_u	$push28=, 15($3)
	i32.const	$push41=, 0
	i32.ne  	$push29=, $pop28, $pop41
	i32.store8	17($1), $pop29
	i32.const	$push36=, 0
	i32.const	$push34=, 16
	i32.add 	$push35=, $3, $pop34
	i32.store	__stack_pointer($pop36), $pop35
	copy_local	$push61=, $0
	.endfunc
.Lfunc_end74:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency7accountE, .Lfunc_end74-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency7accountE

	.section	.text._ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_8currency7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_8currency7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_8currency7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_8currency7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_8currency7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_8currency7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_:
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
.LBB75_3:
	end_block
	i32.const	$push11=, 24
	i32.mul 	$push12=, $7, $pop11
	i32.call	$6=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB75_4:
	end_block
	i32.const	$7=, 0
	i32.const	$6=, 0
	br      	1
.LBB75_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB75_6:
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
.LBB75_8:
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
.LBB75_10:
	end_block
	copy_local	$6=, $7
.LBB75_11:
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
.LBB75_13:
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
.LBB75_15:
	end_block
	i32.ne  	$push39=, $6, $7
	br_if   	0, $pop39
.LBB75_16:
	end_loop
	end_block
	block   	
	i32.eqz 	$push81=, $6
	br_if   	0, $pop81
	call    	_ZdlPv@FUNCTION, $6
.LBB75_18:
	end_block
	.endfunc
.Lfunc_end75:
	.size	_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_8currency7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_, .Lfunc_end75-_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_8currency7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_

	.section	.text._ZZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE7emplaceIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E_EENS3_14const_iteratorEyOS9_ENKUlSA_E_clINS3_4itemEEEDaSA_,"axG",@progbits,_ZZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE7emplaceIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E_EENS3_14const_iteratorEyOS9_ENKUlSA_E_clINS3_4itemEEEDaSA_,comdat
	.hidden	_ZZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE7emplaceIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E_EENS3_14const_iteratorEyOS9_ENKUlSA_E_clINS3_4itemEEEDaSA_
	.weak	_ZZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE7emplaceIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E_EENS3_14const_iteratorEyOS9_ENKUlSA_E_clINS3_4itemEEEDaSA_
	.type	_ZZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE7emplaceIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E_EENS3_14const_iteratorEyOS9_ENKUlSA_E_clINS3_4itemEEEDaSA_,@function
_ZZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE7emplaceIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E_EENS3_14const_iteratorEyOS9_ENKUlSA_E_clINS3_4itemEEEDaSA_:
	.param  	i32, i32
	.local  	i32, i64, i32, i32, i32
	i32.const	$push29=, 0
	i32.const	$push26=, 0
	i32.load	$push27=, __stack_pointer($pop26)
	i32.const	$push28=, 32
	i32.sub 	$push57=, $pop27, $pop28
	tee_local	$push56=, $6=, $pop57
	i32.store	__stack_pointer($pop29), $pop56
	i32.load	$2=, 0($0)
	i32.load	$push0=, 4($0)
	i32.load	$push55=, 0($pop0)
	tee_local	$push54=, $4=, $pop55
	i64.load	$push1=, 0($pop54)
	i64.store	0($1), $pop1
	i32.const	$push2=, 8
	i32.add 	$push53=, $1, $pop2
	tee_local	$push52=, $5=, $pop53
	i32.const	$push51=, 8
	i32.add 	$push3=, $4, $pop51
	i64.load	$push4=, 0($pop3)
	i64.store	0($pop52), $pop4
	i32.const	$push6=, 1
	i32.const	$push5=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop6, $pop5
	i32.const	$push50=, 8
	i32.call	$drop=, memcpy@FUNCTION, $6, $1, $pop50
	i32.const	$push49=, 1
	i32.const	$push48=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop49, $pop48
	i32.const	$push47=, 8
	i32.or  	$push7=, $6, $pop47
	i32.const	$push46=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop7, $5, $pop46
	i32.load8_u	$push8=, 16($1)
	i32.store8	31($6), $pop8
	i32.const	$push45=, 1
	i32.const	$push44=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop45, $pop44
	i32.const	$push43=, 16
	i32.add 	$push9=, $6, $pop43
	i32.const	$push33=, 31
	i32.add 	$push34=, $6, $pop33
	i32.const	$push42=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop9, $pop34, $pop42
	i32.load8_u	$push10=, 17($1)
	i32.store8	31($6), $pop10
	i32.const	$push41=, 1
	i32.const	$push40=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop41, $pop40
	i32.const	$push11=, 17
	i32.add 	$push12=, $6, $pop11
	i32.const	$push35=, 31
	i32.add 	$push36=, $6, $pop35
	i32.const	$push39=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop36, $pop39
	i64.load	$push15=, 8($2)
	i64.const	$push19=, 3607749779137757184
	i32.load	$push16=, 8($0)
	i64.load	$push17=, 0($pop16)
	i64.load	$push13=, 0($5)
	i64.const	$push14=, 8
	i64.shr_u	$push38=, $pop13, $pop14
	tee_local	$push37=, $3=, $pop38
	i32.const	$push18=, 18
	i32.call	$push20=, db_store_i64@FUNCTION, $pop15, $pop19, $pop17, $pop37, $6, $pop18
	i32.store	24($1), $pop20
	block   	
	i64.load	$push21=, 16($2)
	i64.lt_u	$push22=, $3, $pop21
	br_if   	0, $pop22
	i32.const	$push58=, 16
	i32.add 	$push25=, $2, $pop58
	i64.const	$push23=, 1
	i64.add 	$push24=, $3, $pop23
	i64.store	0($pop25), $pop24
.LBB76_2:
	end_block
	i32.const	$push32=, 0
	i32.const	$push30=, 32
	i32.add 	$push31=, $6, $pop30
	i32.store	__stack_pointer($pop32), $pop31
	.endfunc
.Lfunc_end76:
	.size	_ZZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE7emplaceIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E_EENS3_14const_iteratorEyOS9_ENKUlSA_E_clINS3_4itemEEEDaSA_, .Lfunc_end76-_ZZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE7emplaceIZNS1_11add_balanceEyNS_5assetERKNS1_14currency_statsEyEUlRT_E_EENS3_14const_iteratorEyOS9_ENKUlSA_E_clINS3_4itemEEEDaSA_

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency14currency_statsE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency14currency_statsE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency14currency_statsE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency14currency_statsE
	.type	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency14currency_statsE,@function
_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency14currency_statsE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32
	i32.const	$push72=, 0
	i32.const	$push69=, 0
	i32.load	$push70=, __stack_pointer($pop69)
	i32.const	$push71=, 16
	i32.sub 	$push141=, $pop70, $pop71
	tee_local	$push140=, $3=, $pop141
	i32.store	__stack_pointer($pop72), $pop140
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $1, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push139=, 8
	i32.add 	$push138=, $pop8, $pop139
	tee_local	$push137=, $2=, $pop138
	i32.store	4($0), $pop137
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push136=, 7
	i32.gt_s	$push11=, $pop10, $pop136
	i32.const	$push135=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop11, $pop135
	i32.load	$push13=, 4($0)
	i32.const	$push134=, 8
	i32.add 	$push12=, $1, $pop134
	i32.const	$push133=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop12, $pop133
	i32.load	$push14=, 4($0)
	i32.const	$push132=, 8
	i32.add 	$push131=, $pop14, $pop132
	tee_local	$push130=, $2=, $pop131
	i32.store	4($0), $pop130
	i32.load	$push15=, 8($0)
	i32.sub 	$push16=, $pop15, $2
	i32.const	$push129=, 7
	i32.gt_s	$push17=, $pop16, $pop129
	i32.const	$push128=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop17, $pop128
	i32.load	$push20=, 4($0)
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.const	$push127=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop20, $pop19, $pop127
	i32.load	$push21=, 4($0)
	i32.const	$push126=, 8
	i32.add 	$push125=, $pop21, $pop126
	tee_local	$push124=, $2=, $pop125
	i32.store	4($0), $pop124
	i32.load	$push22=, 8($0)
	i32.sub 	$push23=, $pop22, $2
	i32.const	$push123=, 7
	i32.gt_s	$push24=, $pop23, $pop123
	i32.const	$push122=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop24, $pop122
	i32.load	$push27=, 4($0)
	i32.const	$push25=, 24
	i32.add 	$push26=, $1, $pop25
	i32.const	$push121=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $pop26, $pop121
	i32.load	$push28=, 4($0)
	i32.const	$push120=, 8
	i32.add 	$push119=, $pop28, $pop120
	tee_local	$push118=, $2=, $pop119
	i32.store	4($0), $pop118
	i32.load	$push29=, 8($0)
	i32.sub 	$push30=, $pop29, $2
	i32.const	$push117=, 7
	i32.gt_s	$push31=, $pop30, $pop117
	i32.const	$push116=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop31, $pop116
	i32.load	$push34=, 4($0)
	i32.const	$push32=, 32
	i32.add 	$push33=, $1, $pop32
	i32.const	$push115=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop34, $pop33, $pop115
	i32.load	$push35=, 4($0)
	i32.const	$push114=, 8
	i32.add 	$push113=, $pop35, $pop114
	tee_local	$push112=, $2=, $pop113
	i32.store	4($0), $pop112
	i32.load8_u	$push36=, 40($1)
	i32.store8	11($3), $pop36
	i32.load	$push37=, 8($0)
	i32.sub 	$push38=, $pop37, $2
	i32.const	$push39=, 0
	i32.gt_s	$push40=, $pop38, $pop39
	i32.const	$push111=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop40, $pop111
	i32.load	$push41=, 4($0)
	i32.const	$push76=, 11
	i32.add 	$push77=, $3, $pop76
	i32.const	$push42=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop41, $pop77, $pop42
	i32.load	$push43=, 4($0)
	i32.const	$push110=, 1
	i32.add 	$push109=, $pop43, $pop110
	tee_local	$push108=, $2=, $pop109
	i32.store	4($0), $pop108
	i32.load8_u	$push44=, 41($1)
	i32.store8	12($3), $pop44
	i32.load	$push45=, 8($0)
	i32.sub 	$push46=, $pop45, $2
	i32.const	$push107=, 0
	i32.gt_s	$push47=, $pop46, $pop107
	i32.const	$push106=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop47, $pop106
	i32.load	$push48=, 4($0)
	i32.const	$push78=, 12
	i32.add 	$push79=, $3, $pop78
	i32.const	$push105=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop48, $pop79, $pop105
	i32.load	$push49=, 4($0)
	i32.const	$push104=, 1
	i32.add 	$push103=, $pop49, $pop104
	tee_local	$push102=, $2=, $pop103
	i32.store	4($0), $pop102
	i32.load8_u	$push50=, 42($1)
	i32.store8	13($3), $pop50
	i32.load	$push51=, 8($0)
	i32.sub 	$push52=, $pop51, $2
	i32.const	$push101=, 0
	i32.gt_s	$push53=, $pop52, $pop101
	i32.const	$push100=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop53, $pop100
	i32.load	$push54=, 4($0)
	i32.const	$push80=, 13
	i32.add 	$push81=, $3, $pop80
	i32.const	$push99=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop54, $pop81, $pop99
	i32.load	$push55=, 4($0)
	i32.const	$push98=, 1
	i32.add 	$push97=, $pop55, $pop98
	tee_local	$push96=, $2=, $pop97
	i32.store	4($0), $pop96
	i32.load8_u	$push56=, 43($1)
	i32.store8	14($3), $pop56
	i32.load	$push57=, 8($0)
	i32.sub 	$push58=, $pop57, $2
	i32.const	$push95=, 0
	i32.gt_s	$push59=, $pop58, $pop95
	i32.const	$push94=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop59, $pop94
	i32.load	$push60=, 4($0)
	i32.const	$push82=, 14
	i32.add 	$push83=, $3, $pop82
	i32.const	$push93=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop60, $pop83, $pop93
	i32.load	$push61=, 4($0)
	i32.const	$push92=, 1
	i32.add 	$push91=, $pop61, $pop92
	tee_local	$push90=, $2=, $pop91
	i32.store	4($0), $pop90
	i32.load8_u	$push62=, 44($1)
	i32.store8	15($3), $pop62
	i32.load	$push63=, 8($0)
	i32.sub 	$push64=, $pop63, $2
	i32.const	$push89=, 0
	i32.gt_s	$push65=, $pop64, $pop89
	i32.const	$push88=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop65, $pop88
	i32.load	$push66=, 4($0)
	i32.const	$push84=, 15
	i32.add 	$push85=, $3, $pop84
	i32.const	$push87=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop66, $pop85, $pop87
	i32.load	$push67=, 4($0)
	i32.const	$push86=, 1
	i32.add 	$push68=, $pop67, $pop86
	i32.store	4($0), $pop68
	i32.const	$push75=, 0
	i32.const	$push73=, 16
	i32.add 	$push74=, $3, $pop73
	i32.store	__stack_pointer($pop75), $pop74
	copy_local	$push142=, $0
	.endfunc
.Lfunc_end77:
	.size	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency14currency_statsE, .Lfunc_end77-_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency14currency_statsE

	.section	.text._ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE31load_object_by_primary_iteratorEl,@function
_ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push42=, 0
	i32.load	$push43=, __stack_pointer($pop42)
	i32.const	$push44=, 48
	i32.sub 	$push63=, $pop43, $pop44
	tee_local	$push62=, $9=, $pop63
	copy_local	$8=, $pop62
	i32.const	$push45=, 0
	i32.store	__stack_pointer($pop45), $9
	block   	
	i32.const	$push2=, 28
	i32.add 	$push3=, $0, $pop2
	i32.load	$push61=, 0($pop3)
	tee_local	$push60=, $7=, $pop61
	i32.load	$push59=, 24($0)
	tee_local	$push58=, $2=, $pop59
	i32.eq  	$push4=, $pop60, $pop58
	br_if   	0, $pop4
	i32.const	$push5=, 0
	i32.sub 	$3=, $pop5, $2
	i32.const	$push64=, -24
	i32.add 	$6=, $7, $pop64
.LBB78_2:
	loop    	
	i32.const	$push65=, 16
	i32.add 	$push6=, $6, $pop65
	i32.load	$push7=, 0($pop6)
	i32.eq  	$push8=, $pop7, $1
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push69=, -24
	i32.add 	$push68=, $6, $pop69
	tee_local	$push67=, $4=, $pop68
	copy_local	$6=, $pop67
	i32.add 	$push9=, $4, $3
	i32.const	$push66=, -24
	i32.ne  	$push10=, $pop9, $pop66
	br_if   	0, $pop10
.LBB78_4:
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
.LBB78_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push72=, 0
	i32.call	$push71=, db_get_i64@FUNCTION, $1, $pop14, $pop72
	tee_local	$push70=, $6=, $pop71
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop70, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.82
	call    	eosio_assert@FUNCTION, $pop18, $pop19
	block   	
	block   	
	i32.const	$push20=, 513
	i32.lt_u	$push21=, $6, $pop20
	br_if   	0, $pop21
	i32.call	$4=, malloc@FUNCTION, $6
	br      	1
.LBB78_8:
	end_block
	i32.const	$push41=, 0
	i32.const	$push22=, 15
	i32.add 	$push23=, $6, $pop22
	i32.const	$push24=, -16
	i32.and 	$push25=, $pop23, $pop24
	i32.sub 	$push74=, $9, $pop25
	tee_local	$push73=, $4=, $pop74
	copy_local	$push57=, $pop73
	i32.store	__stack_pointer($pop41), $pop57
.LBB78_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $6
	i32.store	36($8), $4
	i32.store	32($8), $4
	i32.add 	$push26=, $4, $6
	i32.store	40($8), $pop26
	block   	
	i32.const	$push27=, 513
	i32.lt_u	$push28=, $6, $pop27
	br_if   	0, $pop28
	call    	free@FUNCTION, $4
.LBB78_11:
	end_block
	i32.const	$push29=, 64
	i32.call	$push84=, _Znwj@FUNCTION, $pop29
	tee_local	$push83=, $6=, $pop84
	i32.call	$4=, _ZN5eosio8currency14currency_statsC2Ev@FUNCTION, $pop83
	i32.store	48($6), $0
	i32.const	$push49=, 32
	i32.add 	$push50=, $8, $pop49
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency14currency_statsE@FUNCTION, $pop50, $4
	i32.store	52($6), $1
	i32.store	24($8), $6
	i64.load	$push30=, 8($6)
	i64.const	$push31=, 8
	i64.shr_u	$push82=, $pop30, $pop31
	tee_local	$push81=, $5=, $pop82
	i64.store	16($8), $pop81
	i32.load	$push80=, 52($6)
	tee_local	$push79=, $7=, $pop80
	i32.store	12($8), $pop79
	block   	
	block   	
	i32.const	$push35=, 28
	i32.add 	$push78=, $0, $pop35
	tee_local	$push77=, $1=, $pop78
	i32.load	$push76=, 0($pop77)
	tee_local	$push75=, $4=, $pop76
	i32.const	$push32=, 32
	i32.add 	$push33=, $0, $pop32
	i32.load	$push34=, 0($pop33)
	i32.ge_u	$push36=, $pop75, $pop34
	br_if   	0, $pop36
	i64.store	8($4), $5
	i32.store	16($4), $7
	i32.const	$push37=, 0
	i32.store	24($8), $pop37
	i32.store	0($4), $6
	i32.const	$push38=, 24
	i32.add 	$push39=, $4, $pop38
	i32.store	0($1), $pop39
	br      	1
.LBB78_13:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push51=, 24
	i32.add 	$push52=, $8, $pop51
	i32.const	$push53=, 16
	i32.add 	$push54=, $8, $pop53
	i32.const	$push55=, 12
	i32.add 	$push56=, $8, $pop55
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_8currency14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop52, $pop54, $pop56
.LBB78_14:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push40=, 0
	i32.store	24($8), $pop40
	i32.eqz 	$push85=, $4
	br_if   	0, $pop85
	call    	_ZdlPv@FUNCTION, $4
.LBB78_16:
	end_block
	i32.const	$push48=, 0
	i32.const	$push46=, 48
	i32.add 	$push47=, $8, $pop46
	i32.store	__stack_pointer($pop48), $pop47
	copy_local	$push86=, $6
	.endfunc
.Lfunc_end78:
	.size	_ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE31load_object_by_primary_iteratorEl, .Lfunc_end78-_ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZN5eosio8currency14currency_statsC2Ev,"axG",@progbits,_ZN5eosio8currency14currency_statsC2Ev,comdat
	.hidden	_ZN5eosio8currency14currency_statsC2Ev
	.weak	_ZN5eosio8currency14currency_statsC2Ev
	.type	_ZN5eosio8currency14currency_statsC2Ev,@function
_ZN5eosio8currency14currency_statsC2Ev:
	.param  	i32
	.result 	i32
	.local  	i64, i32, i32
	i64.const	$push0=, 1398362884
	i64.store	8($0), $pop0
	i64.const	$push32=, 0
	i64.store	0($0), $pop32
	i32.const	$push31=, 1
	i32.const	$push1=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop31, $pop1
	i64.load	$push2=, 8($0)
	i64.const	$push30=, 8
	i64.shr_u	$1=, $pop2, $pop30
	i32.const	$2=, 0
.LBB79_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push3=, $1
	i32.const	$push35=, 24
	i32.shl 	$push4=, $pop3, $pop35
	i32.const	$push34=, -1073741825
	i32.add 	$push5=, $pop4, $pop34
	i32.const	$push33=, 452984830
	i32.gt_u	$push6=, $pop5, $pop33
	br_if   	1, $pop6
	block   	
	i64.const	$push40=, 8
	i64.shr_u	$push39=, $1, $pop40
	tee_local	$push38=, $1=, $pop39
	i64.const	$push37=, 255
	i64.and 	$push7=, $pop38, $pop37
	i64.const	$push36=, 0
	i64.ne  	$push8=, $pop7, $pop36
	br_if   	0, $pop8
.LBB79_3:
	loop    	
	i64.const	$push45=, 8
	i64.shr_u	$push44=, $1, $pop45
	tee_local	$push43=, $1=, $pop44
	i64.const	$push42=, 255
	i64.and 	$push9=, $pop43, $pop42
	i64.const	$push41=, 0
	i64.ne  	$push10=, $pop9, $pop41
	br_if   	3, $pop10
	i32.const	$push49=, 1
	i32.add 	$push48=, $2, $pop49
	tee_local	$push47=, $2=, $pop48
	i32.const	$push46=, 7
	i32.lt_s	$push11=, $pop47, $pop46
	br_if   	0, $pop11
.LBB79_5:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push53=, 1
	i32.add 	$push52=, $2, $pop53
	tee_local	$push51=, $2=, $pop52
	i32.const	$push50=, 7
	i32.lt_s	$push12=, $pop51, $pop50
	br_if   	0, $pop12
	br      	2
.LBB79_6:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB79_7:
	end_block
	i32.const	$push13=, .L.str.66
	call    	eosio_assert@FUNCTION, $3, $pop13
	i32.const	$push59=, 24
	i32.add 	$push58=, $0, $pop59
	tee_local	$push57=, $2=, $pop58
	i64.const	$push14=, 1398362884
	i64.store	0($pop57), $pop14
	i64.const	$push56=, 0
	i64.store	16($0), $pop56
	i32.const	$push55=, 1
	i32.const	$push15=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop55, $pop15
	i64.load	$push16=, 0($2)
	i64.const	$push54=, 8
	i64.shr_u	$1=, $pop16, $pop54
	i32.const	$2=, 0
.LBB79_8:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push17=, $1
	i32.const	$push62=, 24
	i32.shl 	$push18=, $pop17, $pop62
	i32.const	$push61=, -1073741825
	i32.add 	$push19=, $pop18, $pop61
	i32.const	$push60=, 452984830
	i32.gt_u	$push20=, $pop19, $pop60
	br_if   	1, $pop20
	block   	
	i64.const	$push67=, 8
	i64.shr_u	$push66=, $1, $pop67
	tee_local	$push65=, $1=, $pop66
	i64.const	$push64=, 255
	i64.and 	$push21=, $pop65, $pop64
	i64.const	$push63=, 0
	i64.ne  	$push22=, $pop21, $pop63
	br_if   	0, $pop22
.LBB79_10:
	loop    	
	i64.const	$push72=, 8
	i64.shr_u	$push71=, $1, $pop72
	tee_local	$push70=, $1=, $pop71
	i64.const	$push69=, 255
	i64.and 	$push23=, $pop70, $pop69
	i64.const	$push68=, 0
	i64.ne  	$push24=, $pop23, $pop68
	br_if   	3, $pop24
	i32.const	$push76=, 1
	i32.add 	$push75=, $2, $pop76
	tee_local	$push74=, $2=, $pop75
	i32.const	$push73=, 7
	i32.lt_s	$push25=, $pop74, $pop73
	br_if   	0, $pop25
.LBB79_12:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push80=, 1
	i32.add 	$push79=, $2, $pop80
	tee_local	$push78=, $2=, $pop79
	i32.const	$push77=, 7
	i32.lt_s	$push26=, $pop78, $pop77
	br_if   	0, $pop26
	br      	2
.LBB79_13:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB79_14:
	end_block
	i32.const	$push27=, .L.str.66
	call    	eosio_assert@FUNCTION, $3, $pop27
	i32.const	$push28=, 0
	i32.store8	44($0), $pop28
	i32.const	$push29=, 65793
	i32.store	40($0), $pop29
	copy_local	$push81=, $0
	.endfunc
.Lfunc_end79:
	.size	_ZN5eosio8currency14currency_statsC2Ev, .Lfunc_end79-_ZN5eosio8currency14currency_statsC2Ev

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency14currency_statsE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency14currency_statsE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency14currency_statsE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency14currency_statsE
	.type	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency14currency_statsE,@function
_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency14currency_statsE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32
	i32.const	$push72=, 0
	i32.const	$push69=, 0
	i32.load	$push70=, __stack_pointer($pop69)
	i32.const	$push71=, 16
	i32.sub 	$push141=, $pop70, $pop71
	tee_local	$push140=, $3=, $pop141
	i32.store	__stack_pointer($pop72), $pop140
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push139=, 8
	i32.add 	$push138=, $pop8, $pop139
	tee_local	$push137=, $2=, $pop138
	i32.store	4($0), $pop137
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push136=, 7
	i32.gt_u	$push11=, $pop10, $pop136
	i32.const	$push135=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop11, $pop135
	i32.const	$push134=, 8
	i32.add 	$push12=, $1, $pop134
	i32.load	$push13=, 4($0)
	i32.const	$push133=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop13, $pop133
	i32.load	$push14=, 4($0)
	i32.const	$push132=, 8
	i32.add 	$push131=, $pop14, $pop132
	tee_local	$push130=, $2=, $pop131
	i32.store	4($0), $pop130
	i32.load	$push15=, 8($0)
	i32.sub 	$push16=, $pop15, $2
	i32.const	$push129=, 7
	i32.gt_u	$push17=, $pop16, $pop129
	i32.const	$push128=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop17, $pop128
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.load	$push20=, 4($0)
	i32.const	$push127=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop19, $pop20, $pop127
	i32.load	$push21=, 4($0)
	i32.const	$push126=, 8
	i32.add 	$push125=, $pop21, $pop126
	tee_local	$push124=, $2=, $pop125
	i32.store	4($0), $pop124
	i32.load	$push22=, 8($0)
	i32.sub 	$push23=, $pop22, $2
	i32.const	$push123=, 7
	i32.gt_u	$push24=, $pop23, $pop123
	i32.const	$push122=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop24, $pop122
	i32.const	$push25=, 24
	i32.add 	$push26=, $1, $pop25
	i32.load	$push27=, 4($0)
	i32.const	$push121=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop26, $pop27, $pop121
	i32.load	$push28=, 4($0)
	i32.const	$push120=, 8
	i32.add 	$push119=, $pop28, $pop120
	tee_local	$push118=, $2=, $pop119
	i32.store	4($0), $pop118
	i32.load	$push29=, 8($0)
	i32.sub 	$push30=, $pop29, $2
	i32.const	$push117=, 7
	i32.gt_u	$push31=, $pop30, $pop117
	i32.const	$push116=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop31, $pop116
	i32.const	$push32=, 32
	i32.add 	$push33=, $1, $pop32
	i32.load	$push34=, 4($0)
	i32.const	$push115=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop33, $pop34, $pop115
	i32.load	$push35=, 4($0)
	i32.const	$push114=, 8
	i32.add 	$push113=, $pop35, $pop114
	tee_local	$push112=, $2=, $pop113
	i32.store	4($0), $pop112
	i32.load	$push36=, 8($0)
	i32.ne  	$push37=, $pop36, $2
	i32.const	$push111=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop37, $pop111
	i32.const	$push76=, 11
	i32.add 	$push77=, $3, $pop76
	i32.load	$push38=, 4($0)
	i32.const	$push39=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop77, $pop38, $pop39
	i32.load	$push40=, 4($0)
	i32.const	$push110=, 1
	i32.add 	$push109=, $pop40, $pop110
	tee_local	$push108=, $2=, $pop109
	i32.store	4($0), $pop108
	i32.load8_u	$push42=, 11($3)
	i32.const	$push41=, 0
	i32.ne  	$push43=, $pop42, $pop41
	i32.store8	40($1), $pop43
	i32.load	$push44=, 8($0)
	i32.ne  	$push45=, $pop44, $2
	i32.const	$push107=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop45, $pop107
	i32.const	$push78=, 12
	i32.add 	$push79=, $3, $pop78
	i32.load	$push46=, 4($0)
	i32.const	$push106=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop79, $pop46, $pop106
	i32.load	$push47=, 4($0)
	i32.const	$push105=, 1
	i32.add 	$push104=, $pop47, $pop105
	tee_local	$push103=, $2=, $pop104
	i32.store	4($0), $pop103
	i32.load8_u	$push48=, 12($3)
	i32.const	$push102=, 0
	i32.ne  	$push49=, $pop48, $pop102
	i32.store8	41($1), $pop49
	i32.load	$push50=, 8($0)
	i32.ne  	$push51=, $pop50, $2
	i32.const	$push101=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop51, $pop101
	i32.const	$push80=, 13
	i32.add 	$push81=, $3, $pop80
	i32.load	$push52=, 4($0)
	i32.const	$push100=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop81, $pop52, $pop100
	i32.load	$push53=, 4($0)
	i32.const	$push99=, 1
	i32.add 	$push98=, $pop53, $pop99
	tee_local	$push97=, $2=, $pop98
	i32.store	4($0), $pop97
	i32.load8_u	$push54=, 13($3)
	i32.const	$push96=, 0
	i32.ne  	$push55=, $pop54, $pop96
	i32.store8	42($1), $pop55
	i32.load	$push56=, 8($0)
	i32.ne  	$push57=, $pop56, $2
	i32.const	$push95=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop57, $pop95
	i32.const	$push82=, 14
	i32.add 	$push83=, $3, $pop82
	i32.load	$push58=, 4($0)
	i32.const	$push94=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop83, $pop58, $pop94
	i32.load	$push59=, 4($0)
	i32.const	$push93=, 1
	i32.add 	$push92=, $pop59, $pop93
	tee_local	$push91=, $2=, $pop92
	i32.store	4($0), $pop91
	i32.load8_u	$push60=, 14($3)
	i32.const	$push90=, 0
	i32.ne  	$push61=, $pop60, $pop90
	i32.store8	43($1), $pop61
	i32.load	$push62=, 8($0)
	i32.ne  	$push63=, $pop62, $2
	i32.const	$push89=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop63, $pop89
	i32.const	$push84=, 15
	i32.add 	$push85=, $3, $pop84
	i32.load	$push64=, 4($0)
	i32.const	$push88=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop85, $pop64, $pop88
	i32.load	$push65=, 4($0)
	i32.const	$push87=, 1
	i32.add 	$push66=, $pop65, $pop87
	i32.store	4($0), $pop66
	i32.load8_u	$push67=, 15($3)
	i32.const	$push86=, 0
	i32.ne  	$push68=, $pop67, $pop86
	i32.store8	44($1), $pop68
	i32.const	$push75=, 0
	i32.const	$push73=, 16
	i32.add 	$push74=, $3, $pop73
	i32.store	__stack_pointer($pop75), $pop74
	copy_local	$push142=, $0
	.endfunc
.Lfunc_end80:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency14currency_statsE, .Lfunc_end80-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency14currency_statsE

	.section	.text._ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_8currency14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_8currency14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_8currency14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_8currency14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_8currency14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_8currency14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_:
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
.LBB81_3:
	end_block
	i32.const	$push11=, 24
	i32.mul 	$push12=, $7, $pop11
	i32.call	$6=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB81_4:
	end_block
	i32.const	$7=, 0
	i32.const	$6=, 0
	br      	1
.LBB81_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB81_6:
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
.LBB81_8:
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
.LBB81_10:
	end_block
	copy_local	$6=, $7
.LBB81_11:
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
.LBB81_13:
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
.LBB81_15:
	end_block
	i32.ne  	$push39=, $6, $7
	br_if   	0, $pop39
.LBB81_16:
	end_loop
	end_block
	block   	
	i32.eqz 	$push81=, $6
	br_if   	0, $pop81
	call    	_ZdlPv@FUNCTION, $6
.LBB81_18:
	end_block
	.endfunc
.Lfunc_end81:
	.size	_ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_8currency14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_, .Lfunc_end81-_ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_8currency14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_

	.text
	.hidden	_ZN5eosio8exchange2onERKNS0_8upmarginE
	.globl	_ZN5eosio8exchange2onERKNS0_8upmarginE
	.type	_ZN5eosio8exchange2onERKNS0_8upmarginE,@function
_ZN5eosio8exchange2onERKNS0_8upmarginE:
	.param  	i32, i32
	.local  	i32, i64, i64, i64, i64, i32, i32, i32, i32
	i32.const	$push293=, 0
	i32.const	$push290=, 0
	i32.load	$push291=, __stack_pointer($pop290)
	i32.const	$push292=, 576
	i32.sub 	$push352=, $pop291, $pop292
	tee_local	$push351=, $10=, $pop352
	i32.store	__stack_pointer($pop293), $pop351
	i64.load	$push0=, 0($1)
	call    	require_auth@FUNCTION, $pop0
	i32.const	$9=, 0
	i32.const	$8=, 0
	block   	
	i64.load	$push1=, 16($1)
	i64.const	$push350=, 4611686018427387903
	i64.add 	$push2=, $pop1, $pop350
	i64.const	$push349=, 9223372036854775806
	i64.gt_u	$push3=, $pop2, $pop349
	br_if   	0, $pop3
	i32.const	$push354=, 24
	i32.add 	$push4=, $1, $pop354
	i64.load	$push5=, 0($pop4)
	i64.const	$push353=, 8
	i64.shr_u	$6=, $pop5, $pop353
	i32.const	$7=, 0
.LBB82_2:
	block   	
	loop    	
	i32.wrap/i64	$push6=, $6
	i32.const	$push357=, 24
	i32.shl 	$push7=, $pop6, $pop357
	i32.const	$push356=, -1073741825
	i32.add 	$push8=, $pop7, $pop356
	i32.const	$push355=, 452984830
	i32.gt_u	$push9=, $pop8, $pop355
	br_if   	1, $pop9
	block   	
	i64.const	$push362=, 8
	i64.shr_u	$push361=, $6, $pop362
	tee_local	$push360=, $6=, $pop361
	i64.const	$push359=, 255
	i64.and 	$push10=, $pop360, $pop359
	i64.const	$push358=, 0
	i64.ne  	$push11=, $pop10, $pop358
	br_if   	0, $pop11
.LBB82_4:
	loop    	
	i64.const	$push367=, 8
	i64.shr_u	$push366=, $6, $pop367
	tee_local	$push365=, $6=, $pop366
	i64.const	$push364=, 255
	i64.and 	$push12=, $pop365, $pop364
	i64.const	$push363=, 0
	i64.ne  	$push13=, $pop12, $pop363
	br_if   	3, $pop13
	i32.const	$push371=, 1
	i32.add 	$push370=, $7, $pop371
	tee_local	$push369=, $7=, $pop370
	i32.const	$push368=, 7
	i32.lt_s	$push14=, $pop369, $pop368
	br_if   	0, $pop14
.LBB82_6:
	end_loop
	end_block
	i32.const	$8=, 1
	i32.const	$push375=, 1
	i32.add 	$push374=, $7, $pop375
	tee_local	$push373=, $7=, $pop374
	i32.const	$push372=, 7
	i32.lt_s	$push15=, $pop373, $pop372
	br_if   	0, $pop15
	br      	2
.LBB82_7:
	end_loop
	end_block
	i32.const	$8=, 0
.LBB82_8:
	end_block
	i32.const	$push16=, .L.str.34
	call    	eosio_assert@FUNCTION, $8, $pop16
	i32.const	$push17=, 40
	i32.add 	$2=, $1, $pop17
	block   	
	i64.load	$push18=, 40($1)
	i64.const	$push377=, 4611686018427387903
	i64.add 	$push19=, $pop18, $pop377
	i64.const	$push376=, 9223372036854775806
	i64.gt_u	$push20=, $pop19, $pop376
	br_if   	0, $pop20
	i32.const	$push21=, 48
	i32.add 	$push22=, $1, $pop21
	i64.load	$push23=, 0($pop22)
	i64.const	$push378=, 8
	i64.shr_u	$6=, $pop23, $pop378
	i32.const	$7=, 0
.LBB82_10:
	block   	
	loop    	
	i32.wrap/i64	$push24=, $6
	i32.const	$push381=, 24
	i32.shl 	$push25=, $pop24, $pop381
	i32.const	$push380=, -1073741825
	i32.add 	$push26=, $pop25, $pop380
	i32.const	$push379=, 452984830
	i32.gt_u	$push27=, $pop26, $pop379
	br_if   	1, $pop27
	block   	
	i64.const	$push386=, 8
	i64.shr_u	$push385=, $6, $pop386
	tee_local	$push384=, $6=, $pop385
	i64.const	$push383=, 255
	i64.and 	$push28=, $pop384, $pop383
	i64.const	$push382=, 0
	i64.ne  	$push29=, $pop28, $pop382
	br_if   	0, $pop29
.LBB82_12:
	loop    	
	i64.const	$push391=, 8
	i64.shr_u	$push390=, $6, $pop391
	tee_local	$push389=, $6=, $pop390
	i64.const	$push388=, 255
	i64.and 	$push30=, $pop389, $pop388
	i64.const	$push387=, 0
	i64.ne  	$push31=, $pop30, $pop387
	br_if   	3, $pop31
	i32.const	$push395=, 1
	i32.add 	$push394=, $7, $pop395
	tee_local	$push393=, $7=, $pop394
	i32.const	$push392=, 7
	i32.lt_s	$push32=, $pop393, $pop392
	br_if   	0, $pop32
.LBB82_14:
	end_loop
	end_block
	i32.const	$9=, 1
	i32.const	$push399=, 1
	i32.add 	$push398=, $7, $pop399
	tee_local	$push397=, $7=, $pop398
	i32.const	$push396=, 7
	i32.lt_s	$push33=, $pop397, $pop396
	br_if   	0, $pop33
	br      	2
.LBB82_15:
	end_loop
	end_block
	i32.const	$9=, 0
.LBB82_16:
	end_block
	i32.const	$push35=, .L.str.35
	call    	eosio_assert@FUNCTION, $9, $pop35
	i64.load	$push36=, 8($1)
	i64.const	$push37=, 8
	i64.shr_u	$push38=, $pop36, $pop37
	i64.store	120($10), $pop38
	i64.load	$6=, 0($0)
	i32.const	$push39=, 128
	i32.add 	$push40=, $10, $pop39
	i32.call	$7=, _ZN5eosio14exchange_stateC2Ev@FUNCTION, $pop40
	i32.const	$push41=, 376
	i32.add 	$push42=, $10, $pop41
	i64.const	$push43=, -1
	i64.store	0($pop42), $pop43
	i32.const	$push44=, 384
	i32.add 	$push45=, $10, $pop44
	i64.const	$push46=, 0
	i64.store	0($pop45), $pop46
	i32.const	$push47=, 392
	i32.add 	$push48=, $10, $pop47
	i32.const	$push49=, 0
	i32.store	0($pop48), $pop49
	i32.const	$push50=, 368
	i32.add 	$push51=, $10, $pop50
	i64.load	$push439=, 120($10)
	tee_local	$push438=, $3=, $pop439
	i64.store	0($pop51), $pop438
	i64.store	360($10), $6
	i64.store	400($10), $6
	i32.const	$push54=, 408
	i32.add 	$push55=, $10, $pop54
	i64.const	$push52=, 4
	i64.shl 	$push437=, $3, $pop52
	tee_local	$push436=, $4=, $pop437
	i64.const	$push53=, 1
	i64.or  	$push435=, $pop436, $pop53
	tee_local	$push434=, $5=, $pop435
	i64.store	0($pop55), $pop434
	i32.const	$push56=, 416
	i32.add 	$push57=, $10, $pop56
	i64.const	$push433=, -1
	i64.store	0($pop57), $pop433
	i32.const	$push58=, 424
	i32.add 	$push59=, $10, $pop58
	i32.const	$push432=, 0
	i32.store	0($pop59), $pop432
	i32.const	$push60=, 428
	i32.add 	$push61=, $10, $pop60
	i32.const	$push431=, 0
	i32.store	0($pop61), $pop431
	i32.const	$push62=, 432
	i32.add 	$push63=, $10, $pop62
	i32.const	$push430=, 0
	i32.store	0($pop63), $pop430
	i32.const	$push64=, 436
	i32.add 	$push65=, $10, $pop64
	i32.const	$push429=, 0
	i32.store8	0($pop65), $pop429
	i64.store	440($10), $6
	i32.const	$push67=, 448
	i32.add 	$push68=, $10, $pop67
	i64.const	$push66=, 2
	i64.or  	$push428=, $4, $pop66
	tee_local	$push427=, $4=, $pop428
	i64.store	0($pop68), $pop427
	i32.const	$push69=, 456
	i32.add 	$push70=, $10, $pop69
	i64.const	$push426=, -1
	i64.store	0($pop70), $pop426
	i32.const	$push71=, 464
	i32.add 	$push72=, $10, $pop71
	i32.const	$push425=, 0
	i32.store	0($pop72), $pop425
	i32.const	$push73=, 468
	i32.add 	$push74=, $10, $pop73
	i32.const	$push424=, 0
	i32.store	0($pop74), $pop424
	i32.const	$push75=, 472
	i32.add 	$push76=, $10, $pop75
	i32.const	$push423=, 0
	i32.store	0($pop76), $pop423
	i32.const	$push77=, 476
	i32.add 	$push78=, $10, $pop77
	i32.const	$push422=, 0
	i32.store8	0($pop78), $pop422
	i64.store	480($10), $6
	i32.const	$push79=, 488
	i32.add 	$push80=, $10, $pop79
	i64.store	0($pop80), $5
	i32.const	$push81=, 496
	i32.add 	$push82=, $10, $pop81
	i64.const	$push421=, -1
	i64.store	0($pop82), $pop421
	i32.const	$push83=, 504
	i32.add 	$push84=, $10, $pop83
	i32.const	$push420=, 0
	i32.store	0($pop84), $pop420
	i32.const	$push85=, 508
	i32.add 	$push86=, $10, $pop85
	i32.const	$push419=, 0
	i32.store	0($pop86), $pop419
	i32.const	$push87=, 512
	i32.add 	$push88=, $10, $pop87
	i32.const	$push418=, 0
	i32.store	0($pop88), $pop418
	i64.store	520($10), $6
	i32.const	$push89=, 528
	i32.add 	$push90=, $10, $pop89
	i64.store	0($pop90), $4
	i32.const	$push91=, 536
	i32.add 	$push92=, $10, $pop91
	i64.const	$push417=, -1
	i64.store	0($pop92), $pop417
	i32.const	$push93=, 544
	i32.add 	$push94=, $10, $pop93
	i32.const	$push416=, 0
	i32.store	0($pop94), $pop416
	i32.const	$push95=, 548
	i32.add 	$push96=, $10, $pop95
	i32.const	$push415=, 0
	i32.store	0($pop96), $pop415
	i32.const	$push97=, 552
	i32.add 	$push98=, $10, $pop97
	i32.const	$push414=, 0
	i32.store	0($pop98), $pop414
	i32.const	$push99=, 16
	i32.add 	$push413=, $0, $pop99
	tee_local	$push412=, $8=, $pop413
	i32.store	560($10), $pop412
	i32.const	$push102=, 564
	i32.add 	$push103=, $10, $pop102
	i32.const	$push100=, 360
	i32.add 	$push101=, $10, $pop100
	call    	_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE4findEy@FUNCTION, $pop103, $pop101, $3
	i32.const	$push104=, 568
	i32.add 	$push411=, $10, $pop104
	tee_local	$push410=, $9=, $pop411
	i32.load	$push105=, 0($pop410)
	i32.const	$push409=, 0
	i32.ne  	$push106=, $pop105, $pop409
	i32.const	$push107=, .L.str.4
	call    	eosio_assert@FUNCTION, $pop106, $pop107
	i32.load	$push108=, 0($9)
	i32.const	$push109=, 232
	i32.call	$drop=, memcpy@FUNCTION, $7, $pop108, $pop109
	i64.load	$push112=, 0($2)
	i32.const	$push408=, 16
	i32.add 	$push110=, $1, $pop408
	i64.load	$push111=, 0($pop110)
	i64.or  	$push113=, $pop112, $pop111
	i64.const	$push407=, 0
	i64.ne  	$push114=, $pop113, $pop407
	i32.const	$push115=, .L.str.36
	call    	eosio_assert@FUNCTION, $pop114, $pop115
	i32.const	$push125=, 24
	i32.add 	$push406=, $1, $pop125
	tee_local	$push405=, $7=, $pop406
	i64.load	$push126=, 0($pop405)
	i32.const	$push122=, 48
	i32.add 	$push123=, $1, $pop122
	i64.load	$push124=, 0($pop123)
	i64.ne  	$push127=, $pop126, $pop124
	i32.const	$push119=, 32
	i32.add 	$push404=, $1, $pop119
	tee_local	$push403=, $9=, $pop404
	i64.load	$push120=, 0($pop403)
	i32.const	$push116=, 56
	i32.add 	$push117=, $1, $pop116
	i64.load	$push118=, 0($pop117)
	i64.ne  	$push121=, $pop120, $pop118
	i32.or  	$push128=, $pop127, $pop121
	i32.const	$push129=, .L.str.37
	call    	eosio_assert@FUNCTION, $pop128, $pop129
	i64.load	$6=, 0($9)
	block   	
	block   	
	i32.const	$push297=, 120
	i32.add 	$push298=, $10, $pop297
	i32.const	$push402=, 56
	i32.add 	$push130=, $pop298, $pop402
	i64.load	$push131=, 0($pop130)
	i64.load	$push401=, 0($7)
	tee_local	$push400=, $3=, $pop401
	i64.ne  	$push132=, $pop131, $pop400
	br_if   	0, $pop132
	i32.const	$push133=, 184
	i32.add 	$push134=, $10, $pop133
	i64.load	$push34=, 0($pop134)
	i64.ne  	$push135=, $pop34, $6
	br_if   	0, $pop135
	i32.const	$push147=, 1
	i32.const	$push146=, .L.str.38
	call    	eosio_assert@FUNCTION, $pop147, $pop146
	br      	1
.LBB82_19:
	end_block
	i32.const	$push140=, 272
	i32.add 	$push141=, $10, $pop140
	i64.load	$push142=, 0($pop141)
	i64.eq  	$push143=, $pop142, $3
	i32.const	$push136=, 280
	i32.add 	$push137=, $10, $pop136
	i64.load	$push138=, 0($pop137)
	i64.eq  	$push139=, $pop138, $6
	i32.and 	$push144=, $pop143, $pop139
	i32.const	$push145=, .L.str.38
	call    	eosio_assert@FUNCTION, $pop144, $pop145
.LBB82_20:
	end_block
	i32.const	$push151=, 56
	i32.add 	$push155=, $1, $pop151
	i64.load	$6=, 0($pop155)
	block   	
	block   	
	i32.const	$push299=, 120
	i32.add 	$push300=, $10, $pop299
	i32.const	$push442=, 56
	i32.add 	$push152=, $pop300, $pop442
	i64.load	$push153=, 0($pop152)
	i32.const	$push149=, 48
	i32.add 	$push150=, $1, $pop149
	i64.load	$push441=, 0($pop150)
	tee_local	$push440=, $3=, $pop441
	i64.ne  	$push154=, $pop153, $pop440
	br_if   	0, $pop154
	i32.const	$push156=, 184
	i32.add 	$push157=, $10, $pop156
	i64.load	$push148=, 0($pop157)
	i64.ne  	$push158=, $pop148, $6
	br_if   	0, $pop158
	i32.const	$push170=, 1
	i32.const	$push169=, .L.str.38
	call    	eosio_assert@FUNCTION, $pop170, $pop169
	br      	1
.LBB82_23:
	end_block
	i32.const	$push163=, 272
	i32.add 	$push164=, $10, $pop163
	i64.load	$push165=, 0($pop164)
	i64.eq  	$push166=, $pop165, $3
	i32.const	$push159=, 280
	i32.add 	$push160=, $10, $pop159
	i64.load	$push161=, 0($pop160)
	i64.eq  	$push162=, $pop161, $6
	i32.and 	$push167=, $pop166, $pop162
	i32.const	$push168=, .L.str.38
	call    	eosio_assert@FUNCTION, $pop167, $pop168
.LBB82_24:
	end_block
	i32.const	$push445=, 16
	i32.add 	$7=, $1, $pop445
	i32.const	$push178=, 32
	i32.add 	$push179=, $1, $pop178
	i64.load	$6=, 0($pop179)
	i64.load	$3=, 0($1)
	block   	
	block   	
	i32.const	$push172=, 24
	i32.add 	$push173=, $1, $pop172
	i64.load	$push444=, 0($pop173)
	tee_local	$push443=, $4=, $pop444
	i32.const	$push174=, 176
	i32.add 	$push175=, $10, $pop174
	i64.load	$push176=, 0($pop175)
	i64.ne  	$push177=, $pop443, $pop176
	br_if   	0, $pop177
	i32.const	$push180=, 184
	i32.add 	$push181=, $10, $pop180
	i64.load	$push171=, 0($pop181)
	i64.ne  	$push182=, $6, $pop171
	br_if   	0, $pop182
	i32.const	$push301=, 120
	i32.add 	$push302=, $10, $pop301
	i32.const	$push199=, 400
	i32.add 	$push200=, $10, $pop199
	i32.const	$push197=, 168
	i32.add 	$push198=, $10, $pop197
	call    	_ZN5eosio12market_state13adjust_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetESG_@FUNCTION, $pop302, $3, $pop200, $pop198, $7, $2
	br      	1
.LBB82_27:
	end_block
	block   	
	i32.const	$push184=, 272
	i32.add 	$push185=, $10, $pop184
	i64.load	$push186=, 0($pop185)
	i64.ne  	$push187=, $4, $pop186
	br_if   	0, $pop187
	i32.const	$push188=, 280
	i32.add 	$push189=, $10, $pop188
	i64.load	$push183=, 0($pop189)
	i64.ne  	$push190=, $6, $pop183
	br_if   	0, $pop190
	i32.const	$push347=, 120
	i32.add 	$push348=, $10, $pop347
	i32.const	$push195=, 440
	i32.add 	$push196=, $10, $pop195
	i32.const	$push193=, 264
	i32.add 	$push194=, $10, $pop193
	call    	_ZN5eosio12market_state13adjust_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetESG_@FUNCTION, $pop348, $3, $pop196, $pop194, $7, $2
	br      	1
.LBB82_30:
	end_block
	i32.const	$push192=, 0
	i32.const	$push191=, .L.str.9
	call    	eosio_assert@FUNCTION, $pop192, $pop191
.LBB82_31:
	end_block
	i32.const	$push303=, 96
	i32.add 	$push304=, $10, $pop303
	i32.const	$push201=, 20
	i32.add 	$push204=, $pop304, $pop201
	i32.const	$push452=, 20
	i32.add 	$push202=, $7, $pop452
	i32.load	$push203=, 0($pop202)
	i32.store	0($pop204), $pop203
	i32.const	$push305=, 96
	i32.add 	$push306=, $10, $pop305
	i32.const	$push205=, 16
	i32.add 	$push208=, $pop306, $pop205
	i32.const	$push451=, 16
	i32.add 	$push206=, $7, $pop451
	i32.load	$push207=, 0($pop206)
	i32.store	0($pop208), $pop207
	i32.const	$push307=, 96
	i32.add 	$push308=, $10, $pop307
	i32.const	$push209=, 12
	i32.add 	$push212=, $pop308, $pop209
	i32.const	$push450=, 12
	i32.add 	$push210=, $7, $pop450
	i32.load	$push211=, 0($pop210)
	i32.store	0($pop212), $pop211
	i32.const	$push309=, 96
	i32.add 	$push310=, $10, $pop309
	i32.const	$push213=, 8
	i32.add 	$push216=, $pop310, $pop213
	i32.const	$push449=, 8
	i32.add 	$push214=, $7, $pop449
	i32.load	$push215=, 0($pop214)
	i32.store	0($pop216), $pop215
	i32.load	$push217=, 0($7)
	i32.store	96($10), $pop217
	i32.const	$push218=, 4
	i32.add 	$push219=, $7, $pop218
	i32.load	$push220=, 0($pop219)
	i32.store	100($10), $pop220
	i64.load	$6=, 0($1)
	i32.const	$push311=, 80
	i32.add 	$push312=, $10, $pop311
	i32.const	$push448=, 8
	i32.add 	$push221=, $pop312, $pop448
	i32.const	$push222=, 0
	i32.store	0($pop221), $pop222
	i64.const	$push223=, 0
	i64.store	80($10), $pop223
	block   	
	block   	
	i32.const	$push224=, .L.str.39
	i32.call	$push447=, strlen@FUNCTION, $pop224
	tee_local	$push446=, $7=, $pop447
	i32.const	$push225=, -16
	i32.ge_u	$push226=, $pop446, $pop225
	br_if   	0, $pop226
	block   	
	block   	
	block   	
	i32.const	$push227=, 11
	i32.ge_u	$push228=, $7, $pop227
	br_if   	0, $pop228
	i32.const	$push234=, 1
	i32.shl 	$push235=, $7, $pop234
	i32.store8	80($10), $pop235
	i32.const	$push315=, 80
	i32.add 	$push316=, $10, $pop315
	i32.const	$push453=, 1
	i32.or  	$9=, $pop316, $pop453
	br_if   	1, $7
	br      	2
.LBB82_34:
	end_block
	i32.const	$push229=, 16
	i32.add 	$push230=, $7, $pop229
	i32.const	$push231=, -16
	i32.and 	$push455=, $pop230, $pop231
	tee_local	$push454=, $0=, $pop455
	i32.call	$9=, _Znwj@FUNCTION, $pop454
	i32.const	$push232=, 1
	i32.or  	$push233=, $0, $pop232
	i32.store	80($10), $pop233
	i32.store	88($10), $9
	i32.store	84($10), $7
.LBB82_35:
	end_block
	i32.const	$push236=, .L.str.39
	i32.call	$drop=, memcpy@FUNCTION, $9, $pop236, $7
.LBB82_36:
	end_block
	i32.add 	$push237=, $9, $7
	i32.const	$push459=, 0
	i32.store8	0($pop237), $pop459
	i32.const	$push317=, 32
	i32.add 	$push318=, $10, $pop317
	i32.const	$push238=, 16
	i32.add 	$push239=, $pop318, $pop238
	i32.const	$push319=, 96
	i32.add 	$push320=, $10, $pop319
	i32.const	$push458=, 16
	i32.add 	$push240=, $pop320, $pop458
	i64.load	$push241=, 0($pop240)
	i64.store	0($pop239), $pop241
	i32.const	$push321=, 32
	i32.add 	$push322=, $10, $pop321
	i32.const	$push457=, 8
	i32.add 	$push242=, $pop322, $pop457
	i32.const	$push323=, 96
	i32.add 	$push324=, $10, $pop323
	i32.const	$push456=, 8
	i32.add 	$push243=, $pop324, $pop456
	i64.load	$push244=, 0($pop243)
	i64.store	0($pop242), $pop244
	i64.load	$push245=, 96($10)
	i64.store	32($10), $pop245
	i32.const	$push325=, 32
	i32.add 	$push326=, $10, $pop325
	call    	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE@FUNCTION, $8, $6, $pop326, $10
	block   	
	i32.load8_u	$push247=, 80($10)
	i32.const	$push246=, 1
	i32.and 	$push248=, $pop247, $pop246
	i32.eqz 	$push470=, $pop248
	br_if   	0, $pop470
	i32.load	$push249=, 88($10)
	call    	_ZdlPv@FUNCTION, $pop249
.LBB82_38:
	end_block
	i32.const	$push250=, 48
	i32.add 	$push251=, $1, $pop250
	i64.load	$push252=, 0($pop251)
	i64.store	64($10), $pop252
	i64.const	$push256=, 0
	i32.const	$push253=, 40
	i32.add 	$push254=, $1, $pop253
	i64.load	$push255=, 0($pop254)
	i64.sub 	$push257=, $pop256, $pop255
	i64.store	56($10), $pop257
	i64.load	$6=, 0($1)
	i32.const	$push258=, 56
	i32.add 	$push259=, $1, $pop258
	i64.load	$push260=, 0($pop259)
	i64.store	72($10), $pop260
	i32.const	$push327=, 80
	i32.add 	$push328=, $10, $pop327
	i32.const	$push464=, 8
	i32.add 	$push261=, $pop328, $pop464
	i32.const	$push463=, 0
	i32.store	0($pop261), $pop463
	i64.const	$push462=, 0
	i64.store	80($10), $pop462
	i32.const	$push262=, .L.str.40
	i32.call	$push461=, strlen@FUNCTION, $pop262
	tee_local	$push460=, $7=, $pop461
	i32.const	$push263=, -16
	i32.ge_u	$push264=, $pop460, $pop263
	br_if   	1, $pop264
	block   	
	block   	
	block   	
	i32.const	$push265=, 11
	i32.ge_u	$push266=, $7, $pop265
	br_if   	0, $pop266
	i32.const	$push272=, 1
	i32.shl 	$push273=, $7, $pop272
	i32.store8	80($10), $pop273
	i32.const	$push331=, 80
	i32.add 	$push332=, $10, $pop331
	i32.const	$push465=, 1
	i32.or  	$1=, $pop332, $pop465
	br_if   	1, $7
	br      	2
.LBB82_41:
	end_block
	i32.const	$push267=, 16
	i32.add 	$push268=, $7, $pop267
	i32.const	$push269=, -16
	i32.and 	$push467=, $pop268, $pop269
	tee_local	$push466=, $9=, $pop467
	i32.call	$1=, _Znwj@FUNCTION, $pop466
	i32.const	$push270=, 1
	i32.or  	$push271=, $9, $pop270
	i32.store	80($10), $pop271
	i32.store	88($10), $1
	i32.store	84($10), $7
.LBB82_42:
	end_block
	i32.const	$push274=, .L.str.40
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop274, $7
.LBB82_43:
	end_block
	i32.add 	$push275=, $1, $7
	i32.const	$push276=, 0
	i32.store8	0($pop275), $pop276
	i32.const	$push333=, 8
	i32.add 	$push334=, $10, $pop333
	i32.const	$push277=, 16
	i32.add 	$push278=, $pop334, $pop277
	i32.const	$push335=, 56
	i32.add 	$push336=, $10, $pop335
	i32.const	$push469=, 16
	i32.add 	$push279=, $pop336, $pop469
	i64.load	$push280=, 0($pop279)
	i64.store	0($pop278), $pop280
	i32.const	$push337=, 8
	i32.add 	$push338=, $10, $pop337
	i32.const	$push281=, 8
	i32.add 	$push282=, $pop338, $pop281
	i32.const	$push339=, 56
	i32.add 	$push340=, $10, $pop339
	i32.const	$push468=, 8
	i32.add 	$push283=, $pop340, $pop468
	i64.load	$push284=, 0($pop283)
	i64.store	0($pop282), $pop284
	i64.load	$push285=, 56($10)
	i64.store	8($10), $pop285
	i32.const	$push341=, 8
	i32.add 	$push342=, $10, $pop341
	call    	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE@FUNCTION, $8, $6, $pop342, $10
	block   	
	i32.load8_u	$push287=, 80($10)
	i32.const	$push286=, 1
	i32.and 	$push288=, $pop287, $pop286
	i32.eqz 	$push471=, $pop288
	br_if   	0, $pop471
	i32.load	$push289=, 88($10)
	call    	_ZdlPv@FUNCTION, $pop289
.LBB82_45:
	end_block
	i32.const	$push343=, 120
	i32.add 	$push344=, $10, $pop343
	call    	_ZN5eosio12market_state4saveEv@FUNCTION, $pop344
	i32.const	$push345=, 120
	i32.add 	$push346=, $10, $pop345
	i32.call	$drop=, _ZN5eosio12market_stateD2Ev@FUNCTION, $pop346
	i32.const	$push296=, 0
	i32.const	$push294=, 576
	i32.add 	$push295=, $10, $pop294
	i32.store	__stack_pointer($pop296), $pop295
	return
.LBB82_46:
	end_block
	i32.const	$push313=, 80
	i32.add 	$push314=, $10, $pop313
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop314
	unreachable
.LBB82_47:
	end_block
	i32.const	$push329=, 80
	i32.add 	$push330=, $10, $pop329
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop330
	unreachable
	.endfunc
.Lfunc_end82:
	.size	_ZN5eosio8exchange2onERKNS0_8upmarginE, .Lfunc_end82-_ZN5eosio8exchange2onERKNS0_8upmarginE

	.hidden	_ZN5eosio8exchange2onERKNS0_11covermarginE
	.globl	_ZN5eosio8exchange2onERKNS0_11covermarginE
	.type	_ZN5eosio8exchange2onERKNS0_11covermarginE,@function
_ZN5eosio8exchange2onERKNS0_11covermarginE:
	.param  	i32, i32
	.local  	i32, i64, i64, i64, i64, i32, i32, i32
	i32.const	$push128=, 0
	i32.const	$push125=, 0
	i32.load	$push126=, __stack_pointer($pop125)
	i32.const	$push127=, 464
	i32.sub 	$push142=, $pop126, $pop127
	tee_local	$push141=, $9=, $pop142
	i32.store	__stack_pointer($pop128), $pop141
	i64.load	$push0=, 0($1)
	call    	require_auth@FUNCTION, $pop0
	i32.const	$push140=, 16
	i32.add 	$2=, $1, $pop140
	i32.const	$8=, 0
	block   	
	i64.load	$push1=, 16($1)
	i64.const	$push2=, 4611686018427387903
	i64.add 	$push3=, $pop1, $pop2
	i64.const	$push4=, 9223372036854775806
	i64.gt_u	$push5=, $pop3, $pop4
	br_if   	0, $pop5
	i32.const	$push144=, 24
	i32.add 	$push6=, $1, $pop144
	i64.load	$push7=, 0($pop6)
	i64.const	$push143=, 8
	i64.shr_u	$6=, $pop7, $pop143
	i32.const	$7=, 0
.LBB83_2:
	block   	
	loop    	
	i32.wrap/i64	$push8=, $6
	i32.const	$push147=, 24
	i32.shl 	$push9=, $pop8, $pop147
	i32.const	$push146=, -1073741825
	i32.add 	$push10=, $pop9, $pop146
	i32.const	$push145=, 452984830
	i32.gt_u	$push11=, $pop10, $pop145
	br_if   	1, $pop11
	block   	
	i64.const	$push152=, 8
	i64.shr_u	$push151=, $6, $pop152
	tee_local	$push150=, $6=, $pop151
	i64.const	$push149=, 255
	i64.and 	$push12=, $pop150, $pop149
	i64.const	$push148=, 0
	i64.ne  	$push13=, $pop12, $pop148
	br_if   	0, $pop13
.LBB83_4:
	loop    	
	i64.const	$push157=, 8
	i64.shr_u	$push156=, $6, $pop157
	tee_local	$push155=, $6=, $pop156
	i64.const	$push154=, 255
	i64.and 	$push14=, $pop155, $pop154
	i64.const	$push153=, 0
	i64.ne  	$push15=, $pop14, $pop153
	br_if   	3, $pop15
	i32.const	$push161=, 1
	i32.add 	$push160=, $7, $pop161
	tee_local	$push159=, $7=, $pop160
	i32.const	$push158=, 7
	i32.lt_s	$push16=, $pop159, $pop158
	br_if   	0, $pop16
.LBB83_6:
	end_loop
	end_block
	i32.const	$8=, 1
	i32.const	$push165=, 1
	i32.add 	$push164=, $7, $pop165
	tee_local	$push163=, $7=, $pop164
	i32.const	$push162=, 7
	i32.lt_s	$push17=, $pop163, $pop162
	br_if   	0, $pop17
	br      	2
.LBB83_7:
	end_loop
	end_block
	i32.const	$8=, 0
.LBB83_8:
	end_block
	i32.const	$push19=, .L.str.41
	call    	eosio_assert@FUNCTION, $8, $pop19
	i64.load	$push20=, 0($2)
	i64.const	$push21=, 0
	i64.gt_s	$push22=, $pop20, $pop21
	i32.const	$push23=, .L.str.42
	call    	eosio_assert@FUNCTION, $pop22, $pop23
	i64.load	$push24=, 8($1)
	i64.const	$push25=, 8
	i64.shr_u	$push26=, $pop24, $pop25
	i64.store	8($9), $pop26
	i64.load	$6=, 0($0)
	i32.const	$push27=, 16
	i32.add 	$push28=, $9, $pop27
	i32.call	$7=, _ZN5eosio14exchange_stateC2Ev@FUNCTION, $pop28
	i32.const	$push29=, 264
	i32.add 	$push30=, $9, $pop29
	i64.const	$push31=, -1
	i64.store	0($pop30), $pop31
	i32.const	$push32=, 272
	i32.add 	$push33=, $9, $pop32
	i64.const	$push199=, 0
	i64.store	0($pop33), $pop199
	i32.const	$push34=, 280
	i32.add 	$push35=, $9, $pop34
	i32.const	$push198=, 0
	i32.store	0($pop35), $pop198
	i32.const	$push36=, 256
	i32.add 	$push37=, $9, $pop36
	i64.load	$push197=, 8($9)
	tee_local	$push196=, $3=, $pop197
	i64.store	0($pop37), $pop196
	i64.store	248($9), $6
	i64.store	288($9), $6
	i32.const	$push40=, 296
	i32.add 	$push41=, $9, $pop40
	i64.const	$push38=, 4
	i64.shl 	$push195=, $3, $pop38
	tee_local	$push194=, $4=, $pop195
	i64.const	$push39=, 1
	i64.or  	$push193=, $pop194, $pop39
	tee_local	$push192=, $5=, $pop193
	i64.store	0($pop41), $pop192
	i32.const	$push42=, 304
	i32.add 	$push43=, $9, $pop42
	i64.const	$push191=, -1
	i64.store	0($pop43), $pop191
	i32.const	$push44=, 312
	i32.add 	$push45=, $9, $pop44
	i32.const	$push190=, 0
	i32.store	0($pop45), $pop190
	i32.const	$push46=, 316
	i32.add 	$push47=, $9, $pop46
	i32.const	$push189=, 0
	i32.store	0($pop47), $pop189
	i32.const	$push48=, 320
	i32.add 	$push49=, $9, $pop48
	i32.const	$push188=, 0
	i32.store	0($pop49), $pop188
	i32.const	$push50=, 324
	i32.add 	$push51=, $9, $pop50
	i32.const	$push187=, 0
	i32.store8	0($pop51), $pop187
	i64.store	328($9), $6
	i32.const	$push53=, 336
	i32.add 	$push54=, $9, $pop53
	i64.const	$push52=, 2
	i64.or  	$push186=, $4, $pop52
	tee_local	$push185=, $4=, $pop186
	i64.store	0($pop54), $pop185
	i32.const	$push55=, 344
	i32.add 	$push56=, $9, $pop55
	i64.const	$push184=, -1
	i64.store	0($pop56), $pop184
	i32.const	$push57=, 352
	i32.add 	$push58=, $9, $pop57
	i32.const	$push183=, 0
	i32.store	0($pop58), $pop183
	i32.const	$push59=, 356
	i32.add 	$push60=, $9, $pop59
	i32.const	$push182=, 0
	i32.store	0($pop60), $pop182
	i32.const	$push61=, 360
	i32.add 	$push62=, $9, $pop61
	i32.const	$push181=, 0
	i32.store	0($pop62), $pop181
	i32.const	$push63=, 364
	i32.add 	$push64=, $9, $pop63
	i32.const	$push180=, 0
	i32.store8	0($pop64), $pop180
	i64.store	368($9), $6
	i32.const	$push65=, 376
	i32.add 	$push66=, $9, $pop65
	i64.store	0($pop66), $5
	i32.const	$push67=, 384
	i32.add 	$push68=, $9, $pop67
	i64.const	$push179=, -1
	i64.store	0($pop68), $pop179
	i32.const	$push69=, 392
	i32.add 	$push70=, $9, $pop69
	i32.const	$push178=, 0
	i32.store	0($pop70), $pop178
	i32.const	$push71=, 396
	i32.add 	$push72=, $9, $pop71
	i32.const	$push177=, 0
	i32.store	0($pop72), $pop177
	i32.const	$push73=, 400
	i32.add 	$push74=, $9, $pop73
	i32.const	$push176=, 0
	i32.store	0($pop74), $pop176
	i64.store	408($9), $6
	i32.const	$push75=, 416
	i32.add 	$push76=, $9, $pop75
	i64.store	0($pop76), $4
	i32.const	$push77=, 424
	i32.add 	$push78=, $9, $pop77
	i64.const	$push175=, -1
	i64.store	0($pop78), $pop175
	i32.const	$push79=, 432
	i32.add 	$push80=, $9, $pop79
	i32.const	$push174=, 0
	i32.store	0($pop80), $pop174
	i32.const	$push81=, 436
	i32.add 	$push82=, $9, $pop81
	i32.const	$push173=, 0
	i32.store	0($pop82), $pop173
	i32.const	$push83=, 440
	i32.add 	$push84=, $9, $pop83
	i32.const	$push172=, 0
	i32.store	0($pop84), $pop172
	i32.const	$push171=, 16
	i32.add 	$push85=, $0, $pop171
	i32.store	448($9), $pop85
	i32.const	$push88=, 452
	i32.add 	$push89=, $9, $pop88
	i32.const	$push86=, 248
	i32.add 	$push87=, $9, $pop86
	call    	_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE4findEy@FUNCTION, $pop89, $pop87, $3
	i32.const	$push90=, 456
	i32.add 	$push170=, $9, $pop90
	tee_local	$push169=, $8=, $pop170
	i32.load	$push91=, 0($pop169)
	i32.const	$push168=, 0
	i32.ne  	$push92=, $pop91, $pop168
	i32.const	$push93=, .L.str.4
	call    	eosio_assert@FUNCTION, $pop92, $pop93
	i32.load	$push94=, 0($8)
	i32.const	$push95=, 232
	i32.call	$drop=, memcpy@FUNCTION, $7, $pop94, $pop95
	i32.const	$push102=, 32
	i32.add 	$push103=, $1, $pop102
	i64.load	$6=, 0($pop103)
	i64.load	$3=, 0($1)
	block   	
	block   	
	i32.const	$push96=, 24
	i32.add 	$push97=, $1, $pop96
	i64.load	$push167=, 0($pop97)
	tee_local	$push166=, $4=, $pop167
	i32.const	$push98=, 64
	i32.add 	$push99=, $9, $pop98
	i64.load	$push100=, 0($pop99)
	i64.ne  	$push101=, $pop166, $pop100
	br_if   	0, $pop101
	i32.const	$push104=, 72
	i32.add 	$push105=, $9, $pop104
	i64.load	$push18=, 0($pop105)
	i64.ne  	$push106=, $6, $pop18
	br_if   	0, $pop106
	i32.const	$push132=, 8
	i32.add 	$push133=, $9, $pop132
	i32.const	$push123=, 288
	i32.add 	$push124=, $9, $pop123
	i32.const	$push121=, 56
	i32.add 	$push122=, $9, $pop121
	call    	_ZN5eosio12market_state12cover_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetE@FUNCTION, $pop133, $3, $pop124, $pop122, $2
	br      	1
.LBB83_11:
	end_block
	block   	
	i32.const	$push108=, 160
	i32.add 	$push109=, $9, $pop108
	i64.load	$push110=, 0($pop109)
	i64.ne  	$push111=, $4, $pop110
	br_if   	0, $pop111
	i32.const	$push112=, 168
	i32.add 	$push113=, $9, $pop112
	i64.load	$push107=, 0($pop113)
	i64.ne  	$push114=, $6, $pop107
	br_if   	0, $pop114
	i32.const	$push138=, 8
	i32.add 	$push139=, $9, $pop138
	i32.const	$push119=, 328
	i32.add 	$push120=, $9, $pop119
	i32.const	$push117=, 152
	i32.add 	$push118=, $9, $pop117
	call    	_ZN5eosio12market_state12cover_marginEyRNS_11multi_indexILy10497546923563548672ENS_15margin_positionEJNS_10indexed_byILy4729653573519933440EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_callEvEEEEEEEEERNS_14exchange_state9connectorERKNS_14extended_assetE@FUNCTION, $pop139, $3, $pop120, $pop118, $2
	br      	1
.LBB83_14:
	end_block
	i32.const	$push116=, 0
	i32.const	$push115=, .L.str.9
	call    	eosio_assert@FUNCTION, $pop116, $pop115
.LBB83_15:
	end_block
	i32.const	$push134=, 8
	i32.add 	$push135=, $9, $pop134
	call    	_ZN5eosio12market_state4saveEv@FUNCTION, $pop135
	i32.const	$push136=, 8
	i32.add 	$push137=, $9, $pop136
	i32.call	$drop=, _ZN5eosio12market_stateD2Ev@FUNCTION, $pop137
	i32.const	$push131=, 0
	i32.const	$push129=, 464
	i32.add 	$push130=, $9, $pop129
	i32.store	__stack_pointer($pop131), $pop130
	.endfunc
.Lfunc_end83:
	.size	_ZN5eosio8exchange2onERKNS0_11covermarginE, .Lfunc_end83-_ZN5eosio8exchange2onERKNS0_11covermarginE

	.hidden	_ZN5eosio8exchange7createxEyNS_5assetEmNS_14extended_assetES2_
	.globl	_ZN5eosio8exchange7createxEyNS_5assetEmNS_14extended_assetES2_
	.type	_ZN5eosio8exchange7createxEyNS_5assetEmNS_14extended_assetES2_,@function
_ZN5eosio8exchange7createxEyNS_5assetEmNS_14extended_assetES2_:
	.param  	i32, i64, i32, i32, i32, i32
	.local  	i64, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32
	i32.const	$push298=, 0
	i32.const	$push295=, 0
	i32.load	$push296=, __stack_pointer($pop295)
	i32.const	$push297=, 464
	i32.sub 	$push401=, $pop296, $pop297
	tee_local	$push400=, $17=, $pop401
	i32.store	__stack_pointer($pop298), $pop400
	call    	require_auth@FUNCTION, $1
	i32.const	$16=, 0
	i32.const	$13=, 0
	block   	
	i64.load	$push399=, 0($2)
	tee_local	$push398=, $6=, $pop399
	i64.const	$push397=, 4611686018427387903
	i64.add 	$push0=, $pop398, $pop397
	i64.const	$push396=, 9223372036854775806
	i64.gt_u	$push1=, $pop0, $pop396
	br_if   	0, $pop1
	i64.load	$push2=, 8($2)
	i64.const	$push402=, 8
	i64.shr_u	$14=, $pop2, $pop402
	i32.const	$15=, 0
.LBB84_2:
	block   	
	loop    	
	i32.wrap/i64	$push3=, $14
	i32.const	$push405=, 24
	i32.shl 	$push4=, $pop3, $pop405
	i32.const	$push404=, -1073741825
	i32.add 	$push5=, $pop4, $pop404
	i32.const	$push403=, 452984830
	i32.gt_u	$push6=, $pop5, $pop403
	br_if   	1, $pop6
	block   	
	i64.const	$push410=, 8
	i64.shr_u	$push409=, $14, $pop410
	tee_local	$push408=, $14=, $pop409
	i64.const	$push407=, 255
	i64.and 	$push7=, $pop408, $pop407
	i64.const	$push406=, 0
	i64.ne  	$push8=, $pop7, $pop406
	br_if   	0, $pop8
.LBB84_4:
	loop    	
	i64.const	$push415=, 8
	i64.shr_u	$push414=, $14, $pop415
	tee_local	$push413=, $14=, $pop414
	i64.const	$push412=, 255
	i64.and 	$push9=, $pop413, $pop412
	i64.const	$push411=, 0
	i64.ne  	$push10=, $pop9, $pop411
	br_if   	3, $pop10
	i32.const	$push419=, 1
	i32.add 	$push418=, $15, $pop419
	tee_local	$push417=, $15=, $pop418
	i32.const	$push416=, 7
	i32.lt_s	$push11=, $pop417, $pop416
	br_if   	0, $pop11
.LBB84_6:
	end_loop
	end_block
	i32.const	$13=, 1
	i32.const	$push423=, 1
	i32.add 	$push422=, $15, $pop423
	tee_local	$push421=, $15=, $pop422
	i32.const	$push420=, 7
	i32.lt_s	$push12=, $pop421, $pop420
	br_if   	0, $pop12
	br      	2
.LBB84_7:
	end_loop
	end_block
	i32.const	$13=, 0
.LBB84_8:
	end_block
	i32.const	$push13=, .L.str.43
	call    	eosio_assert@FUNCTION, $13, $pop13
	i64.const	$push428=, 0
	i64.gt_s	$push14=, $6, $pop428
	i32.const	$push15=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop14, $pop15
	block   	
	i64.load	$push427=, 0($4)
	tee_local	$push426=, $6=, $pop427
	i64.const	$push425=, 4611686018427387903
	i64.add 	$push16=, $pop426, $pop425
	i64.const	$push424=, 9223372036854775806
	i64.gt_u	$push17=, $pop16, $pop424
	br_if   	0, $pop17
	i64.load	$push18=, 8($4)
	i64.const	$push429=, 8
	i64.shr_u	$14=, $pop18, $pop429
	i32.const	$15=, 0
.LBB84_10:
	block   	
	loop    	
	i32.wrap/i64	$push19=, $14
	i32.const	$push432=, 24
	i32.shl 	$push20=, $pop19, $pop432
	i32.const	$push431=, -1073741825
	i32.add 	$push21=, $pop20, $pop431
	i32.const	$push430=, 452984830
	i32.gt_u	$push22=, $pop21, $pop430
	br_if   	1, $pop22
	block   	
	i64.const	$push437=, 8
	i64.shr_u	$push436=, $14, $pop437
	tee_local	$push435=, $14=, $pop436
	i64.const	$push434=, 255
	i64.and 	$push23=, $pop435, $pop434
	i64.const	$push433=, 0
	i64.ne  	$push24=, $pop23, $pop433
	br_if   	0, $pop24
.LBB84_12:
	loop    	
	i64.const	$push442=, 8
	i64.shr_u	$push441=, $14, $pop442
	tee_local	$push440=, $14=, $pop441
	i64.const	$push439=, 255
	i64.and 	$push25=, $pop440, $pop439
	i64.const	$push438=, 0
	i64.ne  	$push26=, $pop25, $pop438
	br_if   	3, $pop26
	i32.const	$push446=, 1
	i32.add 	$push445=, $15, $pop446
	tee_local	$push444=, $15=, $pop445
	i32.const	$push443=, 7
	i32.lt_s	$push27=, $pop444, $pop443
	br_if   	0, $pop27
.LBB84_14:
	end_loop
	end_block
	i32.const	$16=, 1
	i32.const	$push450=, 1
	i32.add 	$push449=, $15, $pop450
	tee_local	$push448=, $15=, $pop449
	i32.const	$push447=, 7
	i32.lt_s	$push28=, $pop448, $pop447
	br_if   	0, $pop28
	br      	2
.LBB84_15:
	end_loop
	end_block
	i32.const	$16=, 0
.LBB84_16:
	end_block
	i32.const	$push29=, .L.str.45
	call    	eosio_assert@FUNCTION, $16, $pop29
	i64.const	$push453=, 0
	i64.gt_s	$push30=, $6, $pop453
	i32.const	$push31=, .L.str.46
	call    	eosio_assert@FUNCTION, $pop30, $pop31
	i64.load	$6=, 8($5)
	i32.const	$13=, 0
	i32.const	$16=, 0
	block   	
	i64.load	$push452=, 0($5)
	tee_local	$push451=, $7=, $pop452
	i64.const	$push32=, 4611686018427387903
	i64.add 	$push33=, $pop451, $pop32
	i64.const	$push34=, 9223372036854775806
	i64.gt_u	$push35=, $pop33, $pop34
	br_if   	0, $pop35
	i64.const	$push454=, 8
	i64.shr_u	$14=, $6, $pop454
	i32.const	$15=, 0
.LBB84_18:
	block   	
	loop    	
	i32.wrap/i64	$push36=, $14
	i32.const	$push457=, 24
	i32.shl 	$push37=, $pop36, $pop457
	i32.const	$push456=, -1073741825
	i32.add 	$push38=, $pop37, $pop456
	i32.const	$push455=, 452984830
	i32.gt_u	$push39=, $pop38, $pop455
	br_if   	1, $pop39
	block   	
	i64.const	$push462=, 8
	i64.shr_u	$push461=, $14, $pop462
	tee_local	$push460=, $14=, $pop461
	i64.const	$push459=, 255
	i64.and 	$push40=, $pop460, $pop459
	i64.const	$push458=, 0
	i64.ne  	$push41=, $pop40, $pop458
	br_if   	0, $pop41
.LBB84_20:
	loop    	
	i64.const	$push467=, 8
	i64.shr_u	$push466=, $14, $pop467
	tee_local	$push465=, $14=, $pop466
	i64.const	$push464=, 255
	i64.and 	$push42=, $pop465, $pop464
	i64.const	$push463=, 0
	i64.ne  	$push43=, $pop42, $pop463
	br_if   	3, $pop43
	i32.const	$push471=, 1
	i32.add 	$push470=, $15, $pop471
	tee_local	$push469=, $15=, $pop470
	i32.const	$push468=, 7
	i32.lt_s	$push44=, $pop469, $pop468
	br_if   	0, $pop44
.LBB84_22:
	end_loop
	end_block
	i32.const	$16=, 1
	i32.const	$push475=, 1
	i32.add 	$push474=, $15, $pop475
	tee_local	$push473=, $15=, $pop474
	i32.const	$push472=, 7
	i32.lt_s	$push45=, $pop473, $pop472
	br_if   	0, $pop45
	br      	2
.LBB84_23:
	end_loop
	end_block
	i32.const	$16=, 0
.LBB84_24:
	end_block
	i32.const	$push46=, .L.str.47
	call    	eosio_assert@FUNCTION, $16, $pop46
	i64.const	$push47=, 0
	i64.gt_s	$push48=, $7, $pop47
	i32.const	$push49=, .L.str.48
	call    	eosio_assert@FUNCTION, $pop48, $pop49
	i64.load	$push494=, 8($4)
	tee_local	$push493=, $14=, $pop494
	i64.ne  	$push51=, $pop493, $6
	i64.load	$push492=, 16($4)
	tee_local	$push491=, $7=, $pop492
	i64.load	$push490=, 16($5)
	tee_local	$push489=, $8=, $pop490
	i64.ne  	$push50=, $pop491, $pop489
	i32.or  	$push52=, $pop51, $pop50
	i32.const	$push53=, .L.str.49
	call    	eosio_assert@FUNCTION, $pop52, $pop53
	i64.store	216($17), $7
	i64.store	208($17), $14
	i32.const	$push54=, .L.str.50
	call    	prints@FUNCTION, $pop54
	i32.const	$push302=, 208
	i32.add 	$push303=, $17, $pop302
	i32.const	$push55=, 1
	call    	_ZNK5eosio11symbol_type5printEb@FUNCTION, $pop303, $pop55
	i32.const	$push56=, .L.str.112
	call    	prints@FUNCTION, $pop56
	i64.load	$push57=, 216($17)
	call    	printn@FUNCTION, $pop57
	i64.store	216($17), $8
	i64.store	208($17), $6
	i32.const	$push58=, .L.str.51
	call    	prints@FUNCTION, $pop58
	i32.const	$push304=, 208
	i32.add 	$push305=, $17, $pop304
	i32.const	$push488=, 1
	call    	_ZNK5eosio11symbol_type5printEb@FUNCTION, $pop305, $pop488
	i32.const	$push487=, .L.str.112
	call    	prints@FUNCTION, $pop487
	i64.load	$push59=, 216($17)
	call    	printn@FUNCTION, $pop59
	i64.load	$9=, 8($2)
	i32.const	$push60=, .L.str.52
	call    	prints@FUNCTION, $pop60
	i64.const	$push486=, 8
	i64.shr_u	$push485=, $9, $pop486
	tee_local	$push484=, $10=, $pop485
	call    	printui@FUNCTION, $pop484
	i32.const	$push61=, .L.str.53
	call    	prints@FUNCTION, $pop61
	i32.const	$push62=, 200
	i32.add 	$push63=, $17, $pop62
	i32.const	$push483=, 0
	i32.store	0($pop63), $pop483
	i64.store	176($17), $10
	i64.const	$push64=, -1
	i64.store	184($17), $pop64
	i64.const	$push482=, 0
	i64.store	192($17), $pop482
	i64.load	$push481=, 0($0)
	tee_local	$push480=, $11=, $pop481
	i64.store	168($17), $pop480
	block   	
	i64.const	$push479=, -7949128877345865728
	i32.call	$push478=, db_find_i64@FUNCTION, $11, $10, $pop479, $10
	tee_local	$push477=, $15=, $pop478
	i32.const	$push476=, 0
	i32.lt_s	$push65=, $pop477, $pop476
	br_if   	0, $pop65
	i32.const	$push392=, 168
	i32.add 	$push393=, $17, $pop392
	i32.call	$push496=, _ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop393, $15
	tee_local	$push495=, $13=, $pop496
	i32.load	$push66=, 232($pop495)
	i32.const	$push394=, 168
	i32.add 	$push395=, $17, $pop394
	i32.eq  	$push67=, $pop66, $pop395
	i32.const	$push68=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop67, $pop68
.LBB84_26:
	end_block
	i32.eqz 	$push69=, $13
	i32.const	$push70=, .L.str.54
	call    	eosio_assert@FUNCTION, $pop69, $pop70
	i64.load	$push71=, 168($17)
	i64.call	$push72=, current_receiver@FUNCTION
	i64.eq  	$push73=, $pop71, $pop72
	i32.const	$push74=, .L.str.89
	call    	eosio_assert@FUNCTION, $pop73, $pop74
	i32.const	$push75=, 248
	i32.call	$push524=, _Znwj@FUNCTION, $pop75
	tee_local	$push523=, $15=, $pop524
	i32.call	$16=, _ZN5eosio14exchange_stateC2Ev@FUNCTION, $pop523
	i32.const	$push306=, 168
	i32.add 	$push307=, $17, $pop306
	i32.store	232($15), $pop307
	i64.store	0($15), $1
	i32.const	$push308=, 432
	i32.add 	$push309=, $17, $pop308
	i32.const	$push76=, 8
	i32.add 	$push522=, $pop309, $pop76
	tee_local	$push521=, $13=, $pop522
	i32.const	$push520=, 8
	i32.add 	$push77=, $2, $pop520
	i64.load	$push78=, 0($pop77)
	i64.store	0($pop521), $pop78
	i64.load	$push79=, 0($2)
	i64.store	432($17), $pop79
	i64.load	$10=, 0($0)
	i32.const	$push310=, 208
	i32.add 	$push311=, $17, $pop310
	i32.const	$push519=, 8
	i32.add 	$push80=, $pop311, $pop519
	i64.load	$push518=, 0($13)
	tee_local	$push517=, $11=, $pop518
	i64.store	0($pop80), $pop517
	i32.const	$push312=, 448
	i32.add 	$push313=, $17, $pop312
	i32.const	$push516=, 8
	i32.add 	$push515=, $pop313, $pop516
	tee_local	$push514=, $13=, $pop515
	i64.store	0($pop514), $11
	i64.load	$push513=, 432($17)
	tee_local	$push512=, $11=, $pop513
	i64.store	208($17), $pop512
	i64.store	448($17), $11
	i64.store	24($15), $10
	i64.load	$push81=, 0($13)
	i64.store	16($15), $pop81
	i64.load	$push82=, 448($17)
	i64.store	8($15), $pop82
	i32.const	$push83=, 56
	i32.add 	$push84=, $15, $pop83
	i32.const	$push511=, 16
	i32.add 	$push85=, $4, $pop511
	i64.load	$push86=, 0($pop85)
	i64.store	0($pop84), $pop86
	i32.const	$push87=, 48
	i32.add 	$push88=, $15, $pop87
	i32.const	$push510=, 8
	i32.add 	$push89=, $4, $pop510
	i64.load	$push90=, 0($pop89)
	i64.store	0($pop88), $pop90
	i64.load	$push91=, 0($4)
	i64.store	40($15), $pop91
	i32.const	$push92=, 152
	i32.add 	$push93=, $15, $pop92
	i32.const	$push509=, 16
	i32.add 	$push94=, $5, $pop509
	i64.load	$push95=, 0($pop94)
	i64.store	0($pop93), $pop95
	i32.const	$push96=, 144
	i32.add 	$push97=, $15, $pop96
	i32.const	$push508=, 8
	i32.add 	$push98=, $5, $pop508
	i64.load	$push99=, 0($pop98)
	i64.store	0($pop97), $pop99
	i64.load	$push100=, 0($5)
	i64.store	136($15), $pop100
	i64.store	104($15), $14
	i64.store	112($15), $7
	i64.store	80($15), $14
	i64.store	88($15), $7
	i64.store	200($15), $6
	i64.store	208($15), $8
	i64.store	176($15), $6
	i64.store	184($15), $8
	i32.const	$push314=, 208
	i32.add 	$push315=, $17, $pop314
	i32.const	$push101=, 220
	i32.add 	$push102=, $pop315, $pop101
	i32.store	456($17), $pop102
	i32.const	$push316=, 208
	i32.add 	$push317=, $17, $pop316
	i32.store	452($17), $pop317
	i32.const	$push318=, 208
	i32.add 	$push319=, $17, $pop318
	i32.store	448($17), $pop319
	i32.const	$push320=, 448
	i32.add 	$push321=, $17, $pop320
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_14exchange_stateE@FUNCTION, $pop321, $16
	i32.const	$push322=, 168
	i32.add 	$push323=, $17, $pop322
	i32.const	$push507=, 8
	i32.add 	$push104=, $pop323, $pop507
	i64.load	$push105=, 0($pop104)
	i64.const	$push506=, -7949128877345865728
	i64.load	$push103=, 16($15)
	i64.const	$push505=, 8
	i64.shr_u	$push504=, $pop103, $pop505
	tee_local	$push503=, $14=, $pop504
	i32.const	$push324=, 208
	i32.add 	$push325=, $17, $pop324
	i32.const	$push502=, 220
	i32.call	$push501=, db_store_i64@FUNCTION, $pop105, $pop506, $1, $pop503, $pop325, $pop502
	tee_local	$push500=, $13=, $pop501
	i32.store	236($15), $pop500
	block   	
	i32.const	$push326=, 168
	i32.add 	$push327=, $17, $pop326
	i32.const	$push499=, 16
	i32.add 	$push498=, $pop327, $pop499
	tee_local	$push497=, $16=, $pop498
	i64.load	$push106=, 0($pop497)
	i64.lt_u	$push107=, $14, $pop106
	br_if   	0, $pop107
	i64.const	$push108=, 1
	i64.add 	$push109=, $14, $pop108
	i64.store	0($16), $pop109
.LBB84_28:
	end_block
	i32.store	448($17), $15
	i32.const	$push531=, 16
	i32.add 	$push110=, $15, $pop531
	i64.load	$push111=, 0($pop110)
	i64.const	$push112=, 8
	i64.shr_u	$push530=, $pop111, $pop112
	tee_local	$push529=, $14=, $pop530
	i64.store	208($17), $pop529
	i32.store	432($17), $13
	block   	
	block   	
	i32.const	$push116=, 196
	i32.add 	$push528=, $17, $pop116
	tee_local	$push527=, $12=, $pop528
	i32.load	$push526=, 0($pop527)
	tee_local	$push525=, $16=, $pop526
	i32.const	$push113=, 200
	i32.add 	$push114=, $17, $pop113
	i32.load	$push115=, 0($pop114)
	i32.ge_u	$push117=, $pop525, $pop115
	br_if   	0, $pop117
	i64.store	8($16), $14
	i32.store	16($16), $13
	i32.const	$push120=, 0
	i32.store	448($17), $pop120
	i32.store	0($16), $15
	i32.const	$push121=, 24
	i32.add 	$push122=, $16, $pop121
	i32.store	0($12), $pop122
	br      	1
.LBB84_30:
	end_block
	i32.const	$push118=, 192
	i32.add 	$push119=, $17, $pop118
	i32.const	$push386=, 448
	i32.add 	$push387=, $17, $pop386
	i32.const	$push388=, 208
	i32.add 	$push389=, $17, $pop388
	i32.const	$push390=, 432
	i32.add 	$push391=, $17, $pop390
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy10497615196363685888ENS1_14exchange_stateEJEE8item_ptrENS_9allocatorIS5_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS4_4itemENS_14default_deleteISB_EEEERyRlEEEvDpOT_@FUNCTION, $pop119, $pop387, $pop389, $pop391
.LBB84_31:
	end_block
	i32.load	$16=, 448($17)
	i32.const	$15=, 0
	i32.const	$push532=, 0
	i32.store	448($17), $pop532
	block   	
	i32.eqz 	$push628=, $16
	br_if   	0, $pop628
	call    	_ZdlPv@FUNCTION, $16
.LBB84_33:
	end_block
	i32.const	$push123=, 224
	i32.add 	$push537=, $17, $pop123
	tee_local	$push536=, $16=, $pop537
	i64.store	0($pop536), $9
	i64.const	$push535=, 0
	i64.store	216($17), $pop535
	i64.load	$push124=, 0($0)
	i64.store	208($17), $pop124
	i32.const	$push534=, 1
	i32.const	$push125=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop534, $pop125
	i32.const	$push126=, 8
	i32.add 	$13=, $0, $pop126
	i64.load	$push127=, 0($16)
	i64.const	$push533=, 8
	i64.shr_u	$14=, $pop127, $pop533
.LBB84_34:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push128=, $14
	i32.const	$push540=, 24
	i32.shl 	$push129=, $pop128, $pop540
	i32.const	$push539=, -1073741825
	i32.add 	$push130=, $pop129, $pop539
	i32.const	$push538=, 452984830
	i32.gt_u	$push131=, $pop130, $pop538
	br_if   	1, $pop131
	block   	
	i64.const	$push545=, 8
	i64.shr_u	$push544=, $14, $pop545
	tee_local	$push543=, $14=, $pop544
	i64.const	$push542=, 255
	i64.and 	$push132=, $pop543, $pop542
	i64.const	$push541=, 0
	i64.ne  	$push133=, $pop132, $pop541
	br_if   	0, $pop133
.LBB84_36:
	loop    	
	i64.const	$push550=, 8
	i64.shr_u	$push549=, $14, $pop550
	tee_local	$push548=, $14=, $pop549
	i64.const	$push547=, 255
	i64.and 	$push134=, $pop548, $pop547
	i64.const	$push546=, 0
	i64.ne  	$push135=, $pop134, $pop546
	br_if   	3, $pop135
	i32.const	$push554=, 1
	i32.add 	$push553=, $15, $pop554
	tee_local	$push552=, $15=, $pop553
	i32.const	$push551=, 7
	i32.lt_s	$push136=, $pop552, $pop551
	br_if   	0, $pop136
.LBB84_38:
	end_loop
	end_block
	i32.const	$16=, 1
	i32.const	$push558=, 1
	i32.add 	$push557=, $15, $pop558
	tee_local	$push556=, $15=, $pop557
	i32.const	$push555=, 7
	i32.lt_s	$push137=, $pop556, $pop555
	br_if   	0, $pop137
	br      	2
.LBB84_39:
	end_loop
	end_block
	i32.const	$16=, 0
.LBB84_40:
	end_block
	i32.const	$push138=, .L.str.66
	call    	eosio_assert@FUNCTION, $16, $pop138
	i32.const	$push564=, 0
	i32.store8	234($17), $pop564
	i32.const	$push563=, 0
	i32.store16	232($17), $pop563
	i32.const	$push328=, 208
	i32.add 	$push329=, $17, $pop328
	call    	_ZN5eosio8currency15create_currencyERKNS0_6createE@FUNCTION, $13, $pop329
	i32.const	$push142=, 228
	i32.add 	$push143=, $17, $pop142
	i32.const	$push139=, 12
	i32.add 	$push140=, $2, $pop139
	i32.load	$push141=, 0($pop140)
	i32.store	0($pop143), $pop141
	i32.const	$push147=, 224
	i32.add 	$push148=, $17, $pop147
	i32.const	$push144=, 8
	i32.add 	$push145=, $2, $pop144
	i32.load	$push146=, 0($pop145)
	i32.store	0($pop148), $pop146
	i32.const	$push330=, 208
	i32.add 	$push331=, $17, $pop330
	i32.const	$push562=, 12
	i32.add 	$push152=, $pop331, $pop562
	i32.const	$push149=, 4
	i32.add 	$push150=, $2, $pop149
	i32.load	$push151=, 0($pop150)
	i32.store	0($pop152), $pop151
	i64.load	$push153=, 0($0)
	i64.store	208($17), $pop153
	i32.load	$push154=, 0($2)
	i32.store	216($17), $pop154
	i32.const	$push155=, 240
	i32.add 	$push156=, $17, $pop155
	i32.const	$push561=, 0
	i32.store	0($pop156), $pop561
	i64.const	$push157=, 0
	i64.store	232($17), $pop157
	i32.const	$push161=, 232
	i32.add 	$16=, $17, $pop161
	block   	
	block   	
	block   	
	block   	
	i32.const	$push158=, .L.str.55
	i32.call	$push560=, strlen@FUNCTION, $pop158
	tee_local	$push559=, $15=, $pop560
	i32.const	$push159=, -16
	i32.ge_u	$push160=, $pop559, $pop159
	br_if   	0, $pop160
	block   	
	block   	
	block   	
	i32.const	$push162=, 11
	i32.ge_u	$push163=, $15, $pop162
	br_if   	0, $pop163
	i32.const	$push177=, 232
	i32.add 	$push178=, $17, $pop177
	i32.const	$push175=, 1
	i32.shl 	$push176=, $15, $pop175
	i32.store8	0($pop178), $pop176
	i32.const	$push565=, 1
	i32.add 	$16=, $16, $pop565
	br_if   	1, $15
	br      	2
.LBB84_43:
	end_block
	i32.const	$push164=, 16
	i32.add 	$push165=, $15, $pop164
	i32.const	$push166=, -16
	i32.and 	$push567=, $pop165, $pop166
	tee_local	$push566=, $12=, $pop567
	i32.call	$16=, _Znwj@FUNCTION, $pop566
	i32.const	$push169=, 232
	i32.add 	$push170=, $17, $pop169
	i32.const	$push167=, 1
	i32.or  	$push168=, $12, $pop167
	i32.store	0($pop170), $pop168
	i32.const	$push171=, 240
	i32.add 	$push172=, $17, $pop171
	i32.store	0($pop172), $16
	i32.const	$push173=, 236
	i32.add 	$push174=, $17, $pop173
	i32.store	0($pop174), $15
.LBB84_44:
	end_block
	i32.const	$push179=, .L.str.55
	i32.call	$drop=, memcpy@FUNCTION, $16, $pop179, $15
.LBB84_45:
	end_block
	i32.add 	$push180=, $16, $15
	i32.const	$push568=, 0
	i32.store8	0($pop180), $pop568
	i32.const	$push332=, 208
	i32.add 	$push333=, $17, $pop332
	call    	_ZN5eosio8currency14issue_currencyERKNS0_5issueE@FUNCTION, $13, $pop333
	block   	
	i32.const	$push181=, 232
	i32.add 	$push182=, $17, $pop181
	i32.load8_u	$push183=, 0($pop182)
	i32.const	$push184=, 1
	i32.and 	$push185=, $pop183, $pop184
	i32.eqz 	$push629=, $pop185
	br_if   	0, $pop629
	i32.const	$push186=, 240
	i32.add 	$push187=, $17, $pop186
	i32.load	$push188=, 0($pop187)
	call    	_ZdlPv@FUNCTION, $pop188
.LBB84_47:
	end_block
	i32.const	$push334=, 128
	i32.add 	$push335=, $17, $pop334
	i32.const	$push189=, 8
	i32.add 	$push582=, $pop335, $pop189
	tee_local	$push581=, $15=, $pop582
	i32.const	$push580=, 8
	i32.add 	$push190=, $2, $pop580
	i64.load	$push191=, 0($pop190)
	i64.store	0($pop581), $pop191
	i64.load	$push192=, 0($2)
	i64.store	128($17), $pop192
	i64.load	$14=, 0($0)
	i32.const	$push336=, 208
	i32.add 	$push337=, $17, $pop336
	i32.const	$push579=, 8
	i32.add 	$push578=, $pop337, $pop579
	tee_local	$push577=, $2=, $pop578
	i64.load	$push576=, 0($15)
	tee_local	$push575=, $6=, $pop576
	i64.store	0($pop577), $pop575
	i32.const	$push338=, 144
	i32.add 	$push339=, $17, $pop338
	i32.const	$push574=, 8
	i32.add 	$push193=, $pop339, $pop574
	i64.store	0($pop193), $6
	i64.load	$push573=, 128($17)
	tee_local	$push572=, $6=, $pop573
	i64.store	208($17), $pop572
	i64.store	144($17), $6
	i64.store	160($17), $14
	i32.const	$push571=, 0
	i32.store	0($2), $pop571
	i64.const	$push194=, 0
	i64.store	208($17), $pop194
	i32.const	$push196=, .L.str.56
	i32.call	$push570=, strlen@FUNCTION, $pop196
	tee_local	$push569=, $15=, $pop570
	i32.const	$push197=, -16
	i32.ge_u	$push198=, $pop569, $pop197
	br_if   	1, $pop198
	i32.const	$push195=, 16
	i32.add 	$2=, $0, $pop195
	block   	
	block   	
	block   	
	i32.const	$push199=, 11
	i32.ge_u	$push200=, $15, $pop199
	br_if   	0, $pop200
	i32.const	$push206=, 1
	i32.shl 	$push207=, $15, $pop206
	i32.store8	208($17), $pop207
	i32.const	$push342=, 208
	i32.add 	$push343=, $17, $pop342
	i32.const	$push583=, 1
	i32.or  	$0=, $pop343, $pop583
	br_if   	1, $15
	br      	2
.LBB84_50:
	end_block
	i32.const	$push201=, 16
	i32.add 	$push202=, $15, $pop201
	i32.const	$push203=, -16
	i32.and 	$push585=, $pop202, $pop203
	tee_local	$push584=, $16=, $pop585
	i32.call	$0=, _Znwj@FUNCTION, $pop584
	i32.const	$push204=, 1
	i32.or  	$push205=, $16, $pop204
	i32.store	208($17), $pop205
	i32.store	216($17), $0
	i32.store	212($17), $15
.LBB84_51:
	end_block
	i32.const	$push208=, .L.str.56
	i32.call	$drop=, memcpy@FUNCTION, $0, $pop208, $15
.LBB84_52:
	end_block
	i32.add 	$push209=, $0, $15
	i32.const	$push590=, 0
	i32.store8	0($pop209), $pop590
	i32.const	$push344=, 56
	i32.add 	$push345=, $17, $pop344
	i32.const	$push589=, 16
	i32.add 	$push210=, $pop345, $pop589
	i32.const	$push346=, 144
	i32.add 	$push347=, $17, $pop346
	i32.const	$push588=, 16
	i32.add 	$push211=, $pop347, $pop588
	i64.load	$push212=, 0($pop211)
	i64.store	0($pop210), $pop212
	i32.const	$push348=, 56
	i32.add 	$push349=, $17, $pop348
	i32.const	$push587=, 8
	i32.add 	$push213=, $pop349, $pop587
	i32.const	$push350=, 144
	i32.add 	$push351=, $17, $pop350
	i32.const	$push586=, 8
	i32.add 	$push214=, $pop351, $pop586
	i64.load	$push215=, 0($pop214)
	i64.store	0($pop213), $pop215
	i64.load	$push216=, 144($17)
	i64.store	56($17), $pop216
	i32.const	$push352=, 56
	i32.add 	$push353=, $17, $pop352
	call    	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE@FUNCTION, $2, $1, $pop353, $17
	block   	
	i32.load8_u	$push218=, 208($17)
	i32.const	$push217=, 1
	i32.and 	$push219=, $pop218, $pop217
	i32.eqz 	$push630=, $pop219
	br_if   	0, $pop630
	i32.load	$push220=, 216($17)
	call    	_ZdlPv@FUNCTION, $pop220
.LBB84_54:
	end_block
	i64.const	$push222=, 0
	i64.load	$push221=, 0($4)
	i64.sub 	$push223=, $pop222, $pop221
	i64.store	104($17), $pop223
	i32.const	$push597=, 8
	i32.add 	$push224=, $4, $pop597
	i64.load	$push225=, 0($pop224)
	i64.store	112($17), $pop225
	i32.const	$push596=, 16
	i32.add 	$push226=, $4, $pop596
	i64.load	$push227=, 0($pop226)
	i64.store	120($17), $pop227
	i32.const	$push354=, 208
	i32.add 	$push355=, $17, $pop354
	i32.const	$push595=, 8
	i32.add 	$push228=, $pop355, $pop595
	i32.const	$push594=, 0
	i32.store	0($pop228), $pop594
	i64.const	$push593=, 0
	i64.store	208($17), $pop593
	i32.const	$push229=, .L.str.57
	i32.call	$push592=, strlen@FUNCTION, $pop229
	tee_local	$push591=, $15=, $pop592
	i32.const	$push230=, -16
	i32.ge_u	$push231=, $pop591, $pop230
	br_if   	2, $pop231
	block   	
	block   	
	block   	
	i32.const	$push232=, 11
	i32.ge_u	$push233=, $15, $pop232
	br_if   	0, $pop233
	i32.const	$push239=, 1
	i32.shl 	$push240=, $15, $pop239
	i32.store8	208($17), $pop240
	i32.const	$push358=, 208
	i32.add 	$push359=, $17, $pop358
	i32.const	$push598=, 1
	i32.or  	$4=, $pop359, $pop598
	br_if   	1, $15
	br      	2
.LBB84_57:
	end_block
	i32.const	$push234=, 16
	i32.add 	$push235=, $15, $pop234
	i32.const	$push236=, -16
	i32.and 	$push600=, $pop235, $pop236
	tee_local	$push599=, $0=, $pop600
	i32.call	$4=, _Znwj@FUNCTION, $pop599
	i32.const	$push237=, 1
	i32.or  	$push238=, $0, $pop237
	i32.store	208($17), $pop238
	i32.store	216($17), $4
	i32.store	212($17), $15
.LBB84_58:
	end_block
	i32.const	$push241=, .L.str.57
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop241, $15
.LBB84_59:
	end_block
	i32.add 	$push242=, $4, $15
	i32.const	$push605=, 0
	i32.store8	0($pop242), $pop605
	i32.const	$push360=, 32
	i32.add 	$push361=, $17, $pop360
	i32.const	$push604=, 16
	i32.add 	$push243=, $pop361, $pop604
	i32.const	$push362=, 104
	i32.add 	$push363=, $17, $pop362
	i32.const	$push603=, 16
	i32.add 	$push244=, $pop363, $pop603
	i64.load	$push245=, 0($pop244)
	i64.store	0($pop243), $pop245
	i32.const	$push364=, 32
	i32.add 	$push365=, $17, $pop364
	i32.const	$push602=, 8
	i32.add 	$push246=, $pop365, $pop602
	i32.const	$push366=, 104
	i32.add 	$push367=, $17, $pop366
	i32.const	$push601=, 8
	i32.add 	$push247=, $pop367, $pop601
	i64.load	$push248=, 0($pop247)
	i64.store	0($pop246), $pop248
	i64.load	$push249=, 104($17)
	i64.store	32($17), $pop249
	i32.const	$push368=, 32
	i32.add 	$push369=, $17, $pop368
	call    	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE@FUNCTION, $2, $1, $pop369, $17
	block   	
	i32.load8_u	$push251=, 208($17)
	i32.const	$push250=, 1
	i32.and 	$push252=, $pop251, $pop250
	i32.eqz 	$push631=, $pop252
	br_if   	0, $pop631
	i32.load	$push253=, 216($17)
	call    	_ZdlPv@FUNCTION, $pop253
.LBB84_61:
	end_block
	i64.const	$push255=, 0
	i64.load	$push254=, 0($5)
	i64.sub 	$push256=, $pop255, $pop254
	i64.store	80($17), $pop256
	i32.const	$push612=, 8
	i32.add 	$push257=, $5, $pop612
	i64.load	$push258=, 0($pop257)
	i64.store	88($17), $pop258
	i32.const	$push611=, 16
	i32.add 	$push259=, $5, $pop611
	i64.load	$push260=, 0($pop259)
	i64.store	96($17), $pop260
	i32.const	$push370=, 208
	i32.add 	$push371=, $17, $pop370
	i32.const	$push610=, 8
	i32.add 	$push261=, $pop371, $pop610
	i32.const	$push609=, 0
	i32.store	0($pop261), $pop609
	i64.const	$push608=, 0
	i64.store	208($17), $pop608
	i32.const	$push262=, .L.str.57
	i32.call	$push607=, strlen@FUNCTION, $pop262
	tee_local	$push606=, $15=, $pop607
	i32.const	$push263=, -16
	i32.ge_u	$push264=, $pop606, $pop263
	br_if   	3, $pop264
	block   	
	block   	
	block   	
	i32.const	$push265=, 11
	i32.ge_u	$push266=, $15, $pop265
	br_if   	0, $pop266
	i32.const	$push272=, 1
	i32.shl 	$push273=, $15, $pop272
	i32.store8	208($17), $pop273
	i32.const	$push374=, 208
	i32.add 	$push375=, $17, $pop374
	i32.const	$push613=, 1
	i32.or  	$4=, $pop375, $pop613
	br_if   	1, $15
	br      	2
.LBB84_64:
	end_block
	i32.const	$push267=, 16
	i32.add 	$push268=, $15, $pop267
	i32.const	$push269=, -16
	i32.and 	$push615=, $pop268, $pop269
	tee_local	$push614=, $5=, $pop615
	i32.call	$4=, _Znwj@FUNCTION, $pop614
	i32.const	$push270=, 1
	i32.or  	$push271=, $5, $pop270
	i32.store	208($17), $pop271
	i32.store	216($17), $4
	i32.store	212($17), $15
.LBB84_65:
	end_block
	i32.const	$push274=, .L.str.57
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop274, $15
.LBB84_66:
	end_block
	i32.add 	$push275=, $4, $15
	i32.const	$push276=, 0
	i32.store8	0($pop275), $pop276
	i32.const	$push376=, 8
	i32.add 	$push377=, $17, $pop376
	i32.const	$push277=, 16
	i32.add 	$push278=, $pop377, $pop277
	i32.const	$push378=, 80
	i32.add 	$push379=, $17, $pop378
	i32.const	$push617=, 16
	i32.add 	$push279=, $pop379, $pop617
	i64.load	$push280=, 0($pop279)
	i64.store	0($pop278), $pop280
	i32.const	$push380=, 8
	i32.add 	$push381=, $17, $pop380
	i32.const	$push281=, 8
	i32.add 	$push282=, $pop381, $pop281
	i32.const	$push382=, 80
	i32.add 	$push383=, $17, $pop382
	i32.const	$push616=, 8
	i32.add 	$push283=, $pop383, $pop616
	i64.load	$push284=, 0($pop283)
	i64.store	0($pop282), $pop284
	i64.load	$push285=, 80($17)
	i64.store	8($17), $pop285
	i32.const	$push384=, 8
	i32.add 	$push385=, $17, $pop384
	call    	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE@FUNCTION, $2, $1, $pop385, $17
	block   	
	i32.load8_u	$push287=, 208($17)
	i32.const	$push286=, 1
	i32.and 	$push288=, $pop287, $pop286
	i32.eqz 	$push632=, $pop288
	br_if   	0, $pop632
	i32.load	$push289=, 216($17)
	call    	_ZdlPv@FUNCTION, $pop289
.LBB84_68:
	end_block
	block   	
	i32.load	$push619=, 192($17)
	tee_local	$push618=, $4=, $pop619
	i32.eqz 	$push633=, $pop618
	br_if   	0, $pop633
	block   	
	block   	
	i32.const	$push290=, 196
	i32.add 	$push623=, $17, $pop290
	tee_local	$push622=, $5=, $pop623
	i32.load	$push621=, 0($pop622)
	tee_local	$push620=, $15=, $pop621
	i32.eq  	$push291=, $pop620, $4
	br_if   	0, $pop291
.LBB84_71:
	loop    	
	i32.const	$push627=, -24
	i32.add 	$push626=, $15, $pop627
	tee_local	$push625=, $15=, $pop626
	i32.load	$2=, 0($pop625)
	i32.const	$push624=, 0
	i32.store	0($15), $pop624
	block   	
	i32.eqz 	$push634=, $2
	br_if   	0, $pop634
	call    	_ZdlPv@FUNCTION, $2
.LBB84_73:
	end_block
	i32.ne  	$push292=, $4, $15
	br_if   	0, $pop292
	end_loop
	i32.const	$push293=, 192
	i32.add 	$push294=, $17, $pop293
	i32.load	$15=, 0($pop294)
	br      	1
.LBB84_75:
	end_block
	copy_local	$15=, $4
.LBB84_76:
	end_block
	i32.store	0($5), $4
	call    	_ZdlPv@FUNCTION, $15
.LBB84_77:
	end_block
	i32.const	$push301=, 0
	i32.const	$push299=, 464
	i32.add 	$push300=, $17, $pop299
	i32.store	__stack_pointer($pop301), $pop300
	return
.LBB84_78:
	end_block
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $16
	unreachable
.LBB84_79:
	end_block
	i32.const	$push340=, 208
	i32.add 	$push341=, $17, $pop340
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop341
	unreachable
.LBB84_80:
	end_block
	i32.const	$push356=, 208
	i32.add 	$push357=, $17, $pop356
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop357
	unreachable
.LBB84_81:
	end_block
	i32.const	$push372=, 208
	i32.add 	$push373=, $17, $pop372
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop373
	unreachable
	.endfunc
.Lfunc_end84:
	.size	_ZN5eosio8exchange7createxEyNS_5assetEmNS_14extended_assetES2_, .Lfunc_end84-_ZN5eosio8exchange7createxEyNS_5assetEmNS_14extended_assetES2_

	.section	.text._ZN5eosio8currency15create_currencyERKNS0_6createE,"axG",@progbits,_ZN5eosio8currency15create_currencyERKNS0_6createE,comdat
	.hidden	_ZN5eosio8currency15create_currencyERKNS0_6createE
	.weak	_ZN5eosio8currency15create_currencyERKNS0_6createE
	.type	_ZN5eosio8currency15create_currencyERKNS0_6createE,@function
_ZN5eosio8currency15create_currencyERKNS0_6createE:
	.param  	i32, i32
	.local  	i64, i32, i64, i32, i32
	i32.const	$push33=, 0
	i32.const	$push30=, 0
	i32.load	$push31=, __stack_pointer($pop30)
	i32.const	$push32=, 64
	i32.sub 	$push51=, $pop31, $pop32
	tee_local	$push50=, $6=, $pop51
	i32.store	__stack_pointer($pop33), $pop50
	i32.const	$5=, 0
	i32.const	$push0=, 16
	i32.add 	$push1=, $1, $pop0
	i64.load	$push2=, 0($pop1)
	i64.const	$push49=, 8
	i64.shr_u	$push48=, $pop2, $pop49
	tee_local	$push47=, $2=, $pop48
	copy_local	$4=, $pop47
.LBB85_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push3=, $4
	i32.const	$push54=, 24
	i32.shl 	$push4=, $pop3, $pop54
	i32.const	$push53=, -1073741825
	i32.add 	$push5=, $pop4, $pop53
	i32.const	$push52=, 452984830
	i32.gt_u	$push6=, $pop5, $pop52
	br_if   	1, $pop6
	block   	
	i64.const	$push59=, 8
	i64.shr_u	$push58=, $4, $pop59
	tee_local	$push57=, $4=, $pop58
	i64.const	$push56=, 255
	i64.and 	$push7=, $pop57, $pop56
	i64.const	$push55=, 0
	i64.ne  	$push8=, $pop7, $pop55
	br_if   	0, $pop8
.LBB85_3:
	loop    	
	i64.const	$push64=, 8
	i64.shr_u	$push63=, $4, $pop64
	tee_local	$push62=, $4=, $pop63
	i64.const	$push61=, 255
	i64.and 	$push9=, $pop62, $pop61
	i64.const	$push60=, 0
	i64.ne  	$push10=, $pop9, $pop60
	br_if   	3, $pop10
	i32.const	$push68=, 1
	i32.add 	$push67=, $5, $pop68
	tee_local	$push66=, $5=, $pop67
	i32.const	$push65=, 7
	i32.lt_s	$push11=, $pop66, $pop65
	br_if   	0, $pop11
.LBB85_5:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push72=, 1
	i32.add 	$push71=, $5, $pop72
	tee_local	$push70=, $5=, $pop71
	i32.const	$push69=, 7
	i32.lt_s	$push12=, $pop70, $pop69
	br_if   	0, $pop12
	br      	2
.LBB85_6:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB85_7:
	end_block
	i32.const	$push13=, .L.str.66
	call    	eosio_assert@FUNCTION, $3, $pop13
	i32.const	$5=, 0
	i32.const	$push14=, 56
	i32.add 	$push15=, $6, $pop14
	i32.const	$push78=, 0
	i32.store	0($pop15), $pop78
	i64.const	$push16=, -1
	i64.store	40($6), $pop16
	i64.const	$push17=, 0
	i64.store	48($6), $pop17
	i64.load	$push77=, 0($0)
	tee_local	$push76=, $4=, $pop77
	i64.store	24($6), $pop76
	i64.store	32($6), $2
	block   	
	block   	
	i64.const	$push18=, -4157508551318700032
	i32.call	$push75=, db_find_i64@FUNCTION, $4, $2, $pop18, $2
	tee_local	$push74=, $3=, $pop75
	i32.const	$push73=, 0
	i32.lt_s	$push19=, $pop74, $pop73
	br_if   	0, $pop19
	i32.const	$push43=, 24
	i32.add 	$push44=, $6, $pop43
	i32.call	$push20=, _ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop44, $3
	i32.load	$push21=, 48($pop20)
	i32.const	$push45=, 24
	i32.add 	$push46=, $6, $pop45
	i32.eq  	$push22=, $pop21, $pop46
	i32.const	$push23=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop22, $pop23
	br      	1
.LBB85_9:
	end_block
	i32.const	$5=, 1
.LBB85_10:
	end_block
	i32.const	$push24=, .L.str.91
	call    	eosio_assert@FUNCTION, $5, $pop24
	i64.load	$4=, 0($1)
	i32.store	16($6), $1
	i32.const	$push37=, 8
	i32.add 	$push38=, $6, $pop37
	i32.const	$push39=, 24
	i32.add 	$push40=, $6, $pop39
	i32.const	$push41=, 16
	i32.add 	$push42=, $6, $pop41
	call    	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE7emplaceIZNS1_15create_currencyERKNS1_6createEEUlRT_E_EENS3_14const_iteratorEyOS8_@FUNCTION, $pop38, $pop40, $4, $pop42
	block   	
	i32.load	$push80=, 48($6)
	tee_local	$push79=, $1=, $pop80
	i32.eqz 	$push89=, $pop79
	br_if   	0, $pop89
	block   	
	block   	
	i32.const	$push25=, 52
	i32.add 	$push84=, $6, $pop25
	tee_local	$push83=, $0=, $pop84
	i32.load	$push82=, 0($pop83)
	tee_local	$push81=, $5=, $pop82
	i32.eq  	$push26=, $pop81, $1
	br_if   	0, $pop26
.LBB85_13:
	loop    	
	i32.const	$push88=, -24
	i32.add 	$push87=, $5, $pop88
	tee_local	$push86=, $5=, $pop87
	i32.load	$3=, 0($pop86)
	i32.const	$push85=, 0
	i32.store	0($5), $pop85
	block   	
	i32.eqz 	$push90=, $3
	br_if   	0, $pop90
	call    	_ZdlPv@FUNCTION, $3
.LBB85_15:
	end_block
	i32.ne  	$push27=, $1, $5
	br_if   	0, $pop27
	end_loop
	i32.const	$push28=, 48
	i32.add 	$push29=, $6, $pop28
	i32.load	$5=, 0($pop29)
	br      	1
.LBB85_17:
	end_block
	copy_local	$5=, $1
.LBB85_18:
	end_block
	i32.store	0($0), $1
	call    	_ZdlPv@FUNCTION, $5
.LBB85_19:
	end_block
	i32.const	$push36=, 0
	i32.const	$push34=, 64
	i32.add 	$push35=, $6, $pop34
	i32.store	__stack_pointer($pop36), $pop35
	.endfunc
.Lfunc_end85:
	.size	_ZN5eosio8currency15create_currencyERKNS0_6createE, .Lfunc_end85-_ZN5eosio8currency15create_currencyERKNS0_6createE

	.section	.text._ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE7emplaceIZNS1_15create_currencyERKNS1_6createEEUlRT_E_EENS3_14const_iteratorEyOS8_,"axG",@progbits,_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE7emplaceIZNS1_15create_currencyERKNS1_6createEEUlRT_E_EENS3_14const_iteratorEyOS8_,comdat
	.hidden	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE7emplaceIZNS1_15create_currencyERKNS1_6createEEUlRT_E_EENS3_14const_iteratorEyOS8_
	.weak	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE7emplaceIZNS1_15create_currencyERKNS1_6createEEUlRT_E_EENS3_14const_iteratorEyOS8_
	.type	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE7emplaceIZNS1_15create_currencyERKNS1_6createEEUlRT_E_EENS3_14const_iteratorEyOS8_,@function
_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE7emplaceIZNS1_15create_currencyERKNS1_6createEEUlRT_E_EENS3_14const_iteratorEyOS8_:
	.param  	i32, i32, i64, i32
	.local  	i32, i32, i32, i32
	i32.const	$push21=, 0
	i32.const	$push18=, 0
	i32.load	$push19=, __stack_pointer($pop18)
	i32.const	$push20=, 48
	i32.sub 	$push46=, $pop19, $pop20
	tee_local	$push45=, $7=, $pop46
	i32.store	__stack_pointer($pop21), $pop45
	i64.store	40($7), $2
	i64.load	$push0=, 0($1)
	i64.call	$push1=, current_receiver@FUNCTION
	i64.eq  	$push2=, $pop0, $pop1
	i32.const	$push3=, .L.str.89
	call    	eosio_assert@FUNCTION, $pop2, $pop3
	i32.store	20($7), $3
	i32.store	16($7), $1
	i32.const	$push25=, 40
	i32.add 	$push26=, $7, $pop25
	i32.store	24($7), $pop26
	i32.const	$push4=, 64
	i32.call	$push44=, _Znwj@FUNCTION, $pop4
	tee_local	$push43=, $3=, $pop44
	i32.const	$push27=, 16
	i32.add 	$push28=, $7, $pop27
	i32.call	$drop=, _ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE4itemC2IZNS3_7emplaceIZNS1_15create_currencyERKNS1_6createEEUlRT_E_EENS3_14const_iteratorEyOSA_EUlSB_E_EEPKS3_SE_@FUNCTION, $pop43, $1, $pop28
	i32.store	32($7), $3
	i64.load	$push5=, 8($3)
	i64.const	$push6=, 8
	i64.shr_u	$push42=, $pop5, $pop6
	tee_local	$push41=, $2=, $pop42
	i64.store	16($7), $pop41
	i32.load	$push40=, 52($3)
	tee_local	$push39=, $4=, $pop40
	i32.store	12($7), $pop39
	block   	
	block   	
	i32.const	$push10=, 28
	i32.add 	$push38=, $1, $pop10
	tee_local	$push37=, $6=, $pop38
	i32.load	$push36=, 0($pop37)
	tee_local	$push35=, $5=, $pop36
	i32.const	$push7=, 32
	i32.add 	$push8=, $1, $pop7
	i32.load	$push9=, 0($pop8)
	i32.ge_u	$push11=, $pop35, $pop9
	br_if   	0, $pop11
	i64.store	8($5), $2
	i32.store	16($5), $4
	i32.const	$push14=, 0
	i32.store	32($7), $pop14
	i32.store	0($5), $3
	i32.const	$push15=, 24
	i32.add 	$push16=, $5, $pop15
	i32.store	0($6), $pop16
	br      	1
.LBB86_2:
	end_block
	i32.const	$push12=, 24
	i32.add 	$push13=, $1, $pop12
	i32.const	$push29=, 32
	i32.add 	$push30=, $7, $pop29
	i32.const	$push31=, 16
	i32.add 	$push32=, $7, $pop31
	i32.const	$push33=, 12
	i32.add 	$push34=, $7, $pop33
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_8currency14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop13, $pop30, $pop32, $pop34
.LBB86_3:
	end_block
	i32.store	4($0), $3
	i32.store	0($0), $1
	i32.load	$1=, 32($7)
	i32.const	$push17=, 0
	i32.store	32($7), $pop17
	block   	
	i32.eqz 	$push47=, $1
	br_if   	0, $pop47
	call    	_ZdlPv@FUNCTION, $1
.LBB86_5:
	end_block
	i32.const	$push24=, 0
	i32.const	$push22=, 48
	i32.add 	$push23=, $7, $pop22
	i32.store	__stack_pointer($pop24), $pop23
	.endfunc
.Lfunc_end86:
	.size	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE7emplaceIZNS1_15create_currencyERKNS1_6createEEUlRT_E_EENS3_14const_iteratorEyOS8_, .Lfunc_end86-_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE7emplaceIZNS1_15create_currencyERKNS1_6createEEUlRT_E_EENS3_14const_iteratorEyOS8_

	.section	.text._ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE4itemC2IZNS3_7emplaceIZNS1_15create_currencyERKNS1_6createEEUlRT_E_EENS3_14const_iteratorEyOSA_EUlSB_E_EEPKS3_SE_,"axG",@progbits,_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE4itemC2IZNS3_7emplaceIZNS1_15create_currencyERKNS1_6createEEUlRT_E_EENS3_14const_iteratorEyOSA_EUlSB_E_EEPKS3_SE_,comdat
	.hidden	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE4itemC2IZNS3_7emplaceIZNS1_15create_currencyERKNS1_6createEEUlRT_E_EENS3_14const_iteratorEyOSA_EUlSB_E_EEPKS3_SE_
	.weak	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE4itemC2IZNS3_7emplaceIZNS1_15create_currencyERKNS1_6createEEUlRT_E_EENS3_14const_iteratorEyOSA_EUlSB_E_EEPKS3_SE_
	.type	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE4itemC2IZNS3_7emplaceIZNS1_15create_currencyERKNS1_6createEEUlRT_E_EENS3_14const_iteratorEyOSA_EUlSB_E_EEPKS3_SE_,@function
_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE4itemC2IZNS3_7emplaceIZNS1_15create_currencyERKNS1_6createEEUlRT_E_EENS3_14const_iteratorEyOSA_EUlSB_E_EEPKS3_SE_:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i64, i32, i32, i32
	i32.const	$push37=, 0
	i32.const	$push34=, 0
	i32.load	$push35=, __stack_pointer($pop34)
	i32.const	$push36=, 64
	i32.sub 	$push55=, $pop35, $pop36
	tee_local	$push54=, $7=, $pop55
	i32.store	__stack_pointer($pop37), $pop54
	i32.call	$5=, _ZN5eosio8currency14currency_statsC2Ev@FUNCTION, $0
	i32.store	48($0), $1
	i32.load	$push53=, 4($2)
	tee_local	$push52=, $1=, $pop53
	i32.load	$push0=, 0($pop52)
	i32.const	$push51=, 16
	i32.add 	$push1=, $pop0, $pop51
	i64.load	$push2=, 0($pop1)
	i64.store	8($0), $pop2
	i32.load	$3=, 0($2)
	i32.load	$push50=, 0($1)
	tee_local	$push49=, $6=, $pop50
	i64.load	$push3=, 8($pop49)
	i64.store	16($0), $pop3
	i32.const	$push4=, 24
	i32.add 	$push5=, $0, $pop4
	i32.const	$push48=, 16
	i32.add 	$push6=, $6, $pop48
	i64.load	$push7=, 0($pop6)
	i64.store	0($pop5), $pop7
	i32.load	$push8=, 0($1)
	i64.load	$push9=, 0($pop8)
	i64.store	32($0), $pop9
	i32.load	$push10=, 0($1)
	i32.load8_u	$push11=, 24($pop10)
	i32.const	$push12=, 0
	i32.ne  	$push13=, $pop11, $pop12
	i32.store8	40($0), $pop13
	i32.load	$push14=, 0($1)
	i32.load8_u	$push15=, 25($pop14)
	i32.const	$push47=, 0
	i32.ne  	$push16=, $pop15, $pop47
	i32.store8	41($0), $pop16
	i32.load	$push17=, 0($1)
	i32.load8_u	$push18=, 26($pop17)
	i32.const	$push46=, 0
	i32.ne  	$push19=, $pop18, $pop46
	i32.store8	42($0), $pop19
	i32.const	$push20=, 45
	i32.add 	$push21=, $7, $pop20
	i32.store	56($7), $pop21
	i32.store	52($7), $7
	i32.store	48($7), $7
	i32.const	$push41=, 48
	i32.add 	$push42=, $7, $pop41
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency14currency_statsE@FUNCTION, $pop42, $5
	i64.load	$push24=, 8($3)
	i64.const	$push27=, -4157508551318700032
	i32.load	$push25=, 8($2)
	i64.load	$push26=, 0($pop25)
	i64.load	$push22=, 8($0)
	i64.const	$push23=, 8
	i64.shr_u	$push45=, $pop22, $pop23
	tee_local	$push44=, $4=, $pop45
	i32.const	$push43=, 45
	i32.call	$push28=, db_store_i64@FUNCTION, $pop24, $pop27, $pop26, $pop44, $7, $pop43
	i32.store	52($0), $pop28
	block   	
	i64.load	$push29=, 16($3)
	i64.lt_u	$push30=, $4, $pop29
	br_if   	0, $pop30
	i32.const	$push56=, 16
	i32.add 	$push33=, $3, $pop56
	i64.const	$push31=, 1
	i64.add 	$push32=, $4, $pop31
	i64.store	0($pop33), $pop32
.LBB87_2:
	end_block
	i32.const	$push40=, 0
	i32.const	$push38=, 64
	i32.add 	$push39=, $7, $pop38
	i32.store	__stack_pointer($pop40), $pop39
	copy_local	$push57=, $0
	.endfunc
.Lfunc_end87:
	.size	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE4itemC2IZNS3_7emplaceIZNS1_15create_currencyERKNS1_6createEEUlRT_E_EENS3_14const_iteratorEyOSA_EUlSB_E_EEPKS3_SE_, .Lfunc_end87-_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE4itemC2IZNS3_7emplaceIZNS1_15create_currencyERKNS1_6createEEUlRT_E_EENS3_14const_iteratorEyOSA_EUlSB_E_EEPKS3_SE_

	.text
	.hidden	_ZN5eosio8exchange4lendEyNS_11symbol_typeENS_14extended_assetE
	.globl	_ZN5eosio8exchange4lendEyNS_11symbol_typeENS_14extended_assetE
	.type	_ZN5eosio8exchange4lendEyNS_11symbol_typeENS_14extended_assetE,@function
_ZN5eosio8exchange4lendEyNS_11symbol_typeENS_14extended_assetE:
	.param  	i32, i64, i64, i32
	.local  	i64, i64, i64, i32, i32, i32
	i32.const	$push94=, 0
	i32.const	$push91=, 0
	i32.load	$push92=, __stack_pointer($pop91)
	i32.const	$push93=, 464
	i32.sub 	$push107=, $pop92, $pop93
	tee_local	$push106=, $9=, $pop107
	i32.store	__stack_pointer($pop94), $pop106
	call    	require_auth@FUNCTION, $1
	i32.const	$8=, 0
	block   	
	i64.load	$push105=, 0($3)
	tee_local	$push104=, $4=, $pop105
	i64.const	$push0=, 4611686018427387903
	i64.add 	$push1=, $pop104, $pop0
	i64.const	$push2=, 9223372036854775806
	i64.gt_u	$push3=, $pop1, $pop2
	br_if   	0, $pop3
	i64.load	$push4=, 8($3)
	i64.const	$push108=, 8
	i64.shr_u	$6=, $pop4, $pop108
	i32.const	$7=, 0
.LBB88_2:
	block   	
	loop    	
	i32.wrap/i64	$push5=, $6
	i32.const	$push111=, 24
	i32.shl 	$push6=, $pop5, $pop111
	i32.const	$push110=, -1073741825
	i32.add 	$push7=, $pop6, $pop110
	i32.const	$push109=, 452984830
	i32.gt_u	$push8=, $pop7, $pop109
	br_if   	1, $pop8
	block   	
	i64.const	$push116=, 8
	i64.shr_u	$push115=, $6, $pop116
	tee_local	$push114=, $6=, $pop115
	i64.const	$push113=, 255
	i64.and 	$push9=, $pop114, $pop113
	i64.const	$push112=, 0
	i64.ne  	$push10=, $pop9, $pop112
	br_if   	0, $pop10
.LBB88_4:
	loop    	
	i64.const	$push121=, 8
	i64.shr_u	$push120=, $6, $pop121
	tee_local	$push119=, $6=, $pop120
	i64.const	$push118=, 255
	i64.and 	$push11=, $pop119, $pop118
	i64.const	$push117=, 0
	i64.ne  	$push12=, $pop11, $pop117
	br_if   	3, $pop12
	i32.const	$push125=, 1
	i32.add 	$push124=, $7, $pop125
	tee_local	$push123=, $7=, $pop124
	i32.const	$push122=, 7
	i32.lt_s	$push13=, $pop123, $pop122
	br_if   	0, $pop13
.LBB88_6:
	end_loop
	end_block
	i32.const	$8=, 1
	i32.const	$push129=, 1
	i32.add 	$push128=, $7, $pop129
	tee_local	$push127=, $7=, $pop128
	i32.const	$push126=, 7
	i32.lt_s	$push14=, $pop127, $pop126
	br_if   	0, $pop14
	br      	2
.LBB88_7:
	end_loop
	end_block
	i32.const	$8=, 0
.LBB88_8:
	end_block
	i32.const	$push15=, .L.str.18
	call    	eosio_assert@FUNCTION, $8, $pop15
	i64.const	$push16=, 0
	i64.gt_s	$push17=, $4, $pop16
	i32.const	$push18=, .L.str.58
	call    	eosio_assert@FUNCTION, $pop17, $pop18
	i64.const	$push19=, 8
	i64.shr_u	$push20=, $2, $pop19
	i64.store	8($9), $pop20
	i64.load	$6=, 0($0)
	i32.const	$push21=, 16
	i32.add 	$push22=, $9, $pop21
	i32.call	$7=, _ZN5eosio14exchange_stateC2Ev@FUNCTION, $pop22
	i32.const	$push23=, 264
	i32.add 	$push24=, $9, $pop23
	i64.const	$push25=, -1
	i64.store	0($pop24), $pop25
	i32.const	$push26=, 272
	i32.add 	$push27=, $9, $pop26
	i64.const	$push160=, 0
	i64.store	0($pop27), $pop160
	i32.const	$push28=, 280
	i32.add 	$push29=, $9, $pop28
	i32.const	$push159=, 0
	i32.store	0($pop29), $pop159
	i32.const	$push30=, 256
	i32.add 	$push31=, $9, $pop30
	i64.load	$push158=, 8($9)
	tee_local	$push157=, $2=, $pop158
	i64.store	0($pop31), $pop157
	i64.store	248($9), $6
	i64.store	288($9), $6
	i32.const	$push34=, 296
	i32.add 	$push35=, $9, $pop34
	i64.const	$push32=, 4
	i64.shl 	$push156=, $2, $pop32
	tee_local	$push155=, $4=, $pop156
	i64.const	$push33=, 1
	i64.or  	$push154=, $pop155, $pop33
	tee_local	$push153=, $5=, $pop154
	i64.store	0($pop35), $pop153
	i32.const	$push36=, 304
	i32.add 	$push37=, $9, $pop36
	i64.const	$push152=, -1
	i64.store	0($pop37), $pop152
	i32.const	$push38=, 312
	i32.add 	$push39=, $9, $pop38
	i32.const	$push151=, 0
	i32.store	0($pop39), $pop151
	i32.const	$push40=, 316
	i32.add 	$push41=, $9, $pop40
	i32.const	$push150=, 0
	i32.store	0($pop41), $pop150
	i32.const	$push42=, 320
	i32.add 	$push43=, $9, $pop42
	i32.const	$push149=, 0
	i32.store	0($pop43), $pop149
	i32.const	$push44=, 324
	i32.add 	$push45=, $9, $pop44
	i32.const	$push148=, 0
	i32.store8	0($pop45), $pop148
	i64.store	328($9), $6
	i32.const	$push47=, 336
	i32.add 	$push48=, $9, $pop47
	i64.const	$push46=, 2
	i64.or  	$push147=, $4, $pop46
	tee_local	$push146=, $4=, $pop147
	i64.store	0($pop48), $pop146
	i32.const	$push49=, 344
	i32.add 	$push50=, $9, $pop49
	i64.const	$push145=, -1
	i64.store	0($pop50), $pop145
	i32.const	$push51=, 352
	i32.add 	$push52=, $9, $pop51
	i32.const	$push144=, 0
	i32.store	0($pop52), $pop144
	i32.const	$push53=, 356
	i32.add 	$push54=, $9, $pop53
	i32.const	$push143=, 0
	i32.store	0($pop54), $pop143
	i32.const	$push55=, 360
	i32.add 	$push56=, $9, $pop55
	i32.const	$push142=, 0
	i32.store	0($pop56), $pop142
	i32.const	$push57=, 364
	i32.add 	$push58=, $9, $pop57
	i32.const	$push141=, 0
	i32.store8	0($pop58), $pop141
	i64.store	368($9), $6
	i32.const	$push59=, 376
	i32.add 	$push60=, $9, $pop59
	i64.store	0($pop60), $5
	i32.const	$push61=, 384
	i32.add 	$push62=, $9, $pop61
	i64.const	$push140=, -1
	i64.store	0($pop62), $pop140
	i32.const	$push63=, 392
	i32.add 	$push64=, $9, $pop63
	i32.const	$push139=, 0
	i32.store	0($pop64), $pop139
	i32.const	$push65=, 396
	i32.add 	$push66=, $9, $pop65
	i32.const	$push138=, 0
	i32.store	0($pop66), $pop138
	i32.const	$push67=, 400
	i32.add 	$push68=, $9, $pop67
	i32.const	$push137=, 0
	i32.store	0($pop68), $pop137
	i64.store	408($9), $6
	i32.const	$push69=, 416
	i32.add 	$push70=, $9, $pop69
	i64.store	0($pop70), $4
	i32.const	$push71=, 424
	i32.add 	$push72=, $9, $pop71
	i64.const	$push136=, -1
	i64.store	0($pop72), $pop136
	i32.const	$push73=, 432
	i32.add 	$push74=, $9, $pop73
	i32.const	$push135=, 0
	i32.store	0($pop74), $pop135
	i32.const	$push75=, 436
	i32.add 	$push76=, $9, $pop75
	i32.const	$push134=, 0
	i32.store	0($pop76), $pop134
	i32.const	$push77=, 440
	i32.add 	$push78=, $9, $pop77
	i32.const	$push133=, 0
	i32.store	0($pop78), $pop133
	i32.const	$push79=, 16
	i32.add 	$push80=, $0, $pop79
	i32.store	448($9), $pop80
	i32.const	$push83=, 452
	i32.add 	$push84=, $9, $pop83
	i32.const	$push81=, 248
	i32.add 	$push82=, $9, $pop81
	call    	_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE4findEy@FUNCTION, $pop84, $pop82, $2
	i32.const	$push85=, 456
	i32.add 	$push132=, $9, $pop85
	tee_local	$push131=, $8=, $pop132
	i32.load	$push86=, 0($pop131)
	i32.const	$push130=, 0
	i32.ne  	$push87=, $pop86, $pop130
	i32.const	$push88=, .L.str.4
	call    	eosio_assert@FUNCTION, $pop87, $pop88
	i32.load	$push89=, 0($8)
	i32.const	$push90=, 232
	i32.call	$drop=, memcpy@FUNCTION, $7, $pop89, $pop90
	i32.const	$push98=, 8
	i32.add 	$push99=, $9, $pop98
	call    	_ZN5eosio12market_state4lendEyRKNS_14extended_assetE@FUNCTION, $pop99, $1, $3
	i32.const	$push100=, 8
	i32.add 	$push101=, $9, $pop100
	call    	_ZN5eosio12market_state4saveEv@FUNCTION, $pop101
	i32.const	$push102=, 8
	i32.add 	$push103=, $9, $pop102
	i32.call	$drop=, _ZN5eosio12market_stateD2Ev@FUNCTION, $pop103
	i32.const	$push97=, 0
	i32.const	$push95=, 464
	i32.add 	$push96=, $9, $pop95
	i32.store	__stack_pointer($pop97), $pop96
	.endfunc
.Lfunc_end88:
	.size	_ZN5eosio8exchange4lendEyNS_11symbol_typeENS_14extended_assetE, .Lfunc_end88-_ZN5eosio8exchange4lendEyNS_11symbol_typeENS_14extended_assetE

	.hidden	_ZN5eosio8exchange6unlendEyNS_11symbol_typeEdNS_15extended_symbolE
	.globl	_ZN5eosio8exchange6unlendEyNS_11symbol_typeEdNS_15extended_symbolE
	.type	_ZN5eosio8exchange6unlendEyNS_11symbol_typeEdNS_15extended_symbolE,@function
_ZN5eosio8exchange6unlendEyNS_11symbol_typeEdNS_15extended_symbolE:
	.param  	i32, i64, i64, f64, i32
	.local  	i32, i64, i64, i64, i32
	i32.const	$push80=, 0
	i32.const	$push77=, 0
	i32.load	$push78=, __stack_pointer($pop77)
	i32.const	$push79=, 464
	i32.sub 	$push120=, $pop78, $pop79
	tee_local	$push119=, $9=, $pop120
	i32.store	__stack_pointer($pop80), $pop119
	call    	require_auth@FUNCTION, $1
	f64.const	$push0=, 0x0p0
	f64.gt  	$push1=, $3, $pop0
	i32.const	$push2=, .L.str.59
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.const	$push3=, 8
	i64.shr_u	$push4=, $2, $pop3
	i64.store	8($9), $pop4
	i64.load	$2=, 0($0)
	i32.const	$push5=, 16
	i32.add 	$push6=, $9, $pop5
	i32.call	$5=, _ZN5eosio14exchange_stateC2Ev@FUNCTION, $pop6
	i32.const	$push7=, 264
	i32.add 	$push8=, $9, $pop7
	i64.const	$push9=, -1
	i64.store	0($pop8), $pop9
	i32.const	$push10=, 272
	i32.add 	$push11=, $9, $pop10
	i64.const	$push12=, 0
	i64.store	0($pop11), $pop12
	i32.const	$push13=, 280
	i32.add 	$push14=, $9, $pop13
	i32.const	$push15=, 0
	i32.store	0($pop14), $pop15
	i32.const	$push16=, 256
	i32.add 	$push17=, $9, $pop16
	i64.load	$push118=, 8($9)
	tee_local	$push117=, $6=, $pop118
	i64.store	0($pop17), $pop117
	i64.store	248($9), $2
	i64.store	288($9), $2
	i32.const	$push20=, 296
	i32.add 	$push21=, $9, $pop20
	i64.const	$push18=, 4
	i64.shl 	$push116=, $6, $pop18
	tee_local	$push115=, $7=, $pop116
	i64.const	$push19=, 1
	i64.or  	$push114=, $pop115, $pop19
	tee_local	$push113=, $8=, $pop114
	i64.store	0($pop21), $pop113
	i32.const	$push22=, 304
	i32.add 	$push23=, $9, $pop22
	i64.const	$push112=, -1
	i64.store	0($pop23), $pop112
	i32.const	$push24=, 312
	i32.add 	$push25=, $9, $pop24
	i32.const	$push111=, 0
	i32.store	0($pop25), $pop111
	i32.const	$push26=, 316
	i32.add 	$push27=, $9, $pop26
	i32.const	$push110=, 0
	i32.store	0($pop27), $pop110
	i32.const	$push28=, 320
	i32.add 	$push29=, $9, $pop28
	i32.const	$push109=, 0
	i32.store	0($pop29), $pop109
	i32.const	$push30=, 324
	i32.add 	$push31=, $9, $pop30
	i32.const	$push108=, 0
	i32.store8	0($pop31), $pop108
	i64.store	328($9), $2
	i32.const	$push33=, 336
	i32.add 	$push34=, $9, $pop33
	i64.const	$push32=, 2
	i64.or  	$push107=, $7, $pop32
	tee_local	$push106=, $7=, $pop107
	i64.store	0($pop34), $pop106
	i32.const	$push35=, 344
	i32.add 	$push36=, $9, $pop35
	i64.const	$push105=, -1
	i64.store	0($pop36), $pop105
	i32.const	$push37=, 352
	i32.add 	$push38=, $9, $pop37
	i32.const	$push104=, 0
	i32.store	0($pop38), $pop104
	i32.const	$push39=, 356
	i32.add 	$push40=, $9, $pop39
	i32.const	$push103=, 0
	i32.store	0($pop40), $pop103
	i32.const	$push41=, 360
	i32.add 	$push42=, $9, $pop41
	i32.const	$push102=, 0
	i32.store	0($pop42), $pop102
	i32.const	$push43=, 364
	i32.add 	$push44=, $9, $pop43
	i32.const	$push101=, 0
	i32.store8	0($pop44), $pop101
	i64.store	368($9), $2
	i32.const	$push45=, 376
	i32.add 	$push46=, $9, $pop45
	i64.store	0($pop46), $8
	i32.const	$push47=, 384
	i32.add 	$push48=, $9, $pop47
	i64.const	$push100=, -1
	i64.store	0($pop48), $pop100
	i32.const	$push49=, 392
	i32.add 	$push50=, $9, $pop49
	i32.const	$push99=, 0
	i32.store	0($pop50), $pop99
	i32.const	$push51=, 396
	i32.add 	$push52=, $9, $pop51
	i32.const	$push98=, 0
	i32.store	0($pop52), $pop98
	i32.const	$push53=, 400
	i32.add 	$push54=, $9, $pop53
	i32.const	$push97=, 0
	i32.store	0($pop54), $pop97
	i64.store	408($9), $2
	i32.const	$push55=, 416
	i32.add 	$push56=, $9, $pop55
	i64.store	0($pop56), $7
	i32.const	$push57=, 424
	i32.add 	$push58=, $9, $pop57
	i64.const	$push96=, -1
	i64.store	0($pop58), $pop96
	i32.const	$push59=, 432
	i32.add 	$push60=, $9, $pop59
	i32.const	$push95=, 0
	i32.store	0($pop60), $pop95
	i32.const	$push61=, 436
	i32.add 	$push62=, $9, $pop61
	i32.const	$push94=, 0
	i32.store	0($pop62), $pop94
	i32.const	$push63=, 440
	i32.add 	$push64=, $9, $pop63
	i32.const	$push93=, 0
	i32.store	0($pop64), $pop93
	i32.const	$push65=, 16
	i32.add 	$push66=, $0, $pop65
	i32.store	448($9), $pop66
	i32.const	$push69=, 452
	i32.add 	$push70=, $9, $pop69
	i32.const	$push67=, 248
	i32.add 	$push68=, $9, $pop67
	call    	_ZNK5eosio11multi_indexILy10497615196363685888ENS_14exchange_stateEJEE4findEy@FUNCTION, $pop70, $pop68, $6
	i32.const	$push71=, 456
	i32.add 	$push92=, $9, $pop71
	tee_local	$push91=, $0=, $pop92
	i32.load	$push72=, 0($pop91)
	i32.const	$push90=, 0
	i32.ne  	$push73=, $pop72, $pop90
	i32.const	$push74=, .L.str.4
	call    	eosio_assert@FUNCTION, $pop73, $pop74
	i32.load	$push75=, 0($0)
	i32.const	$push76=, 232
	i32.call	$drop=, memcpy@FUNCTION, $5, $pop75, $pop76
	i32.const	$push84=, 8
	i32.add 	$push85=, $9, $pop84
	call    	_ZN5eosio12market_state6unlendEydRKNS_15extended_symbolE@FUNCTION, $pop85, $1, $3, $4
	i32.const	$push86=, 8
	i32.add 	$push87=, $9, $pop86
	call    	_ZN5eosio12market_state4saveEv@FUNCTION, $pop87
	i32.const	$push88=, 8
	i32.add 	$push89=, $9, $pop88
	i32.call	$drop=, _ZN5eosio12market_stateD2Ev@FUNCTION, $pop89
	i32.const	$push83=, 0
	i32.const	$push81=, 464
	i32.add 	$push82=, $9, $pop81
	i32.store	__stack_pointer($pop83), $pop82
	.endfunc
.Lfunc_end89:
	.size	_ZN5eosio8exchange6unlendEyNS_11symbol_typeEdNS_15extended_symbolE, .Lfunc_end89-_ZN5eosio8exchange6unlendEyNS_11symbol_typeEdNS_15extended_symbolE

	.hidden	_ZN5eosio8exchange2onERKNS_8currency8transferEy
	.globl	_ZN5eosio8exchange2onERKNS_8currency8transferEy
	.type	_ZN5eosio8exchange2onERKNS_8currency8transferEy,@function
_ZN5eosio8exchange2onERKNS_8currency8transferEy:
	.param  	i32, i32, i64
	.local  	i64, i64, i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push61=, 0
	i32.const	$push58=, 0
	i32.load	$push59=, __stack_pointer($pop58)
	i32.const	$push60=, 48
	i32.sub 	$push68=, $pop59, $pop60
	tee_local	$push67=, $12=, $pop68
	i32.store	__stack_pointer($pop61), $pop67
	block   	
	i64.load	$push66=, 0($0)
	tee_local	$push65=, $8=, $pop66
	i64.ne  	$push0=, $pop65, $2
	br_if   	0, $pop0
	i32.const	$push1=, 8
	i32.add 	$push2=, $0, $pop1
	call    	_ZN5eosio8currency2onERKNS0_8transferE@FUNCTION, $pop2, $1
	i64.load	$8=, 0($0)
.LBB90_2:
	end_block
	block   	
	i64.load	$push3=, 8($1)
	i64.ne  	$push4=, $pop3, $8
	br_if   	0, $pop4
	i32.const	$push71=, 24
	i32.add 	$push9=, $1, $pop71
	i64.load	$4=, 0($pop9)
	i32.const	$10=, 0
	block   	
	i64.load	$push70=, 16($1)
	tee_local	$push69=, $3=, $pop70
	i64.const	$push5=, 4611686018427387903
	i64.add 	$push6=, $pop69, $pop5
	i64.const	$push7=, 9223372036854775806
	i64.gt_u	$push8=, $pop6, $pop7
	br_if   	0, $pop8
	i64.const	$push72=, 8
	i64.shr_u	$8=, $4, $pop72
	i32.const	$9=, 0
.LBB90_5:
	block   	
	loop    	
	i32.wrap/i64	$push10=, $8
	i32.const	$push75=, 24
	i32.shl 	$push11=, $pop10, $pop75
	i32.const	$push74=, -1073741825
	i32.add 	$push12=, $pop11, $pop74
	i32.const	$push73=, 452984830
	i32.gt_u	$push13=, $pop12, $pop73
	br_if   	1, $pop13
	block   	
	i64.const	$push80=, 8
	i64.shr_u	$push79=, $8, $pop80
	tee_local	$push78=, $8=, $pop79
	i64.const	$push77=, 255
	i64.and 	$push14=, $pop78, $pop77
	i64.const	$push76=, 0
	i64.ne  	$push15=, $pop14, $pop76
	br_if   	0, $pop15
.LBB90_7:
	loop    	
	i64.const	$push85=, 8
	i64.shr_u	$push84=, $8, $pop85
	tee_local	$push83=, $8=, $pop84
	i64.const	$push82=, 255
	i64.and 	$push16=, $pop83, $pop82
	i64.const	$push81=, 0
	i64.ne  	$push17=, $pop16, $pop81
	br_if   	3, $pop17
	i32.const	$push89=, 1
	i32.add 	$push88=, $9, $pop89
	tee_local	$push87=, $9=, $pop88
	i32.const	$push86=, 7
	i32.lt_s	$push18=, $pop87, $pop86
	br_if   	0, $pop18
.LBB90_9:
	end_loop
	end_block
	i32.const	$10=, 1
	i32.const	$push93=, 1
	i32.add 	$push92=, $9, $pop93
	tee_local	$push91=, $9=, $pop92
	i32.const	$push90=, 7
	i32.lt_s	$push19=, $pop91, $pop90
	br_if   	0, $pop19
	br      	2
.LBB90_10:
	end_loop
	end_block
	i32.const	$10=, 0
.LBB90_11:
	end_block
	i32.const	$push20=, .L.str.60
	call    	eosio_assert@FUNCTION, $10, $pop20
	i64.const	$push21=, 0
	i64.ne  	$push22=, $3, $pop21
	i32.const	$push23=, .L.str.61
	call    	eosio_assert@FUNCTION, $pop22, $pop23
	block   	
	block   	
	block   	
	i64.const	$push24=, 1
	i64.lt_s	$push25=, $3, $pop24
	br_if   	0, $pop25
	i32.const	$push40=, 1
	i32.const	$push39=, .L.str.62
	call    	eosio_assert@FUNCTION, $pop40, $pop39
	i32.const	$push41=, 36
	i32.add 	$11=, $1, $pop41
	i32.const	$push42=, 32
	i32.add 	$10=, $1, $pop42
	br      	1
.LBB90_13:
	end_block
	i32.const	$9=, 1
	i32.const	$push32=, 32
	i32.add 	$10=, $1, $pop32
	i32.const	$6=, 0
	block   	
	i32.const	$push102=, .L.str.22
	i32.call	$push101=, strlen@FUNCTION, $pop102
	tee_local	$push100=, $5=, $pop101
	i32.const	$push28=, 36
	i32.add 	$push99=, $1, $pop28
	tee_local	$push98=, $11=, $pop99
	i32.load	$push29=, 0($pop98)
	i32.load8_u	$push97=, 32($1)
	tee_local	$push96=, $7=, $pop97
	i32.const	$push95=, 1
	i32.shr_u	$push27=, $pop96, $pop95
	i32.const	$push94=, 1
	i32.and 	$push26=, $7, $pop94
	i32.select	$push30=, $pop29, $pop27, $pop26
	i32.ne  	$push31=, $pop100, $pop30
	br_if   	0, $pop31
	i32.const	$push34=, 0
	i32.const	$push33=, -1
	i32.const	$push103=, .L.str.22
	i32.call	$push35=, _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj@FUNCTION, $10, $pop34, $pop33, $pop103, $5
	i32.eqz 	$6=, $pop35
.LBB90_15:
	end_block
	i32.const	$push36=, .L.str.62
	call    	eosio_assert@FUNCTION, $6, $pop36
	i64.const	$push37=, 0
	i64.lt_s	$push38=, $3, $pop37
	br_if   	1, $pop38
.LBB90_16:
	end_block
	i32.const	$9=, 0
	i32.const	$push109=, .L.str.19
	i32.call	$push108=, strlen@FUNCTION, $pop109
	tee_local	$push107=, $6=, $pop108
	i32.load	$push46=, 0($11)
	i32.load8_u	$push106=, 0($10)
	tee_local	$push105=, $11=, $pop106
	i32.const	$push43=, 1
	i32.shr_u	$push45=, $pop105, $pop43
	i32.const	$push104=, 1
	i32.and 	$push44=, $11, $pop104
	i32.select	$push47=, $pop46, $pop45, $pop44
	i32.ne  	$push48=, $pop107, $pop47
	br_if   	0, $pop48
	i32.const	$push50=, 0
	i32.const	$push49=, -1
	i32.const	$push110=, .L.str.19
	i32.call	$push51=, _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj@FUNCTION, $10, $pop50, $pop49, $pop110, $6
	i32.eqz 	$9=, $pop51
.LBB90_18:
	end_block
	i32.const	$push52=, .L.str.63
	call    	eosio_assert@FUNCTION, $9, $pop52
	i64.store	32($12), $4
	i64.load	$8=, 0($1)
	i32.const	$push53=, 8
	i32.add 	$push54=, $12, $pop53
	i64.store	0($pop54), $4
	i64.store	40($12), $2
	i32.const	$push55=, 16
	i32.add 	$push56=, $12, $pop55
	i64.store	0($pop56), $2
	i64.store	24($12), $3
	i64.store	0($12), $3
	i32.const	$push111=, 16
	i32.add 	$push57=, $0, $pop111
	call    	_ZN5eosio17exchange_accounts14adjust_balanceEyNS_14extended_assetERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE@FUNCTION, $pop57, $8, $12, $9
.LBB90_19:
	end_block
	i32.const	$push64=, 0
	i32.const	$push62=, 48
	i32.add 	$push63=, $12, $pop62
	i32.store	__stack_pointer($pop64), $pop63
	.endfunc
.Lfunc_end90:
	.size	_ZN5eosio8exchange2onERKNS_8currency8transferEy, .Lfunc_end90-_ZN5eosio8exchange2onERKNS_8currency8transferEy

	.section	.text._ZN5eosio8currency2onERKNS0_8transferE,"axG",@progbits,_ZN5eosio8currency2onERKNS0_8transferE,comdat
	.hidden	_ZN5eosio8currency2onERKNS0_8transferE
	.weak	_ZN5eosio8currency2onERKNS0_8transferE
	.type	_ZN5eosio8currency2onERKNS0_8transferE,@function
_ZN5eosio8currency2onERKNS0_8transferE:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i64, i64, i32, i32, i32
	i32.const	$push58=, 0
	i32.const	$push55=, 0
	i32.load	$push56=, __stack_pointer($pop55)
	i32.const	$push57=, 112
	i32.sub 	$push91=, $pop56, $pop57
	tee_local	$push90=, $11=, $pop91
	i32.store	__stack_pointer($pop58), $pop90
	i64.load	$push0=, 0($1)
	call    	require_auth@FUNCTION, $pop0
	i32.const	$push89=, 24
	i32.add 	$push88=, $1, $pop89
	tee_local	$push87=, $10=, $pop88
	i64.load	$8=, 0($pop87)
	i32.const	$9=, 0
	i32.const	$push1=, 104
	i32.add 	$push2=, $11, $pop1
	i32.const	$push86=, 0
	i32.store	0($pop2), $pop86
	i64.const	$push3=, -1
	i64.store	88($11), $pop3
	i64.const	$push85=, 0
	i64.store	96($11), $pop85
	i64.load	$push4=, 0($0)
	i64.store	72($11), $pop4
	i64.const	$push84=, 8
	i64.shr_u	$push83=, $8, $pop84
	tee_local	$push82=, $8=, $pop83
	i64.store	80($11), $pop82
	i32.const	$push62=, 72
	i32.add 	$push63=, $11, $pop62
	i32.const	$push5=, .L.str.80
	i32.call	$2=, _ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE3getEyPKc@FUNCTION, $pop63, $8, $pop5
	i64.load	$push6=, 8($1)
	call    	require_recipient@FUNCTION, $pop6
	i32.const	$push7=, 16
	i32.add 	$3=, $1, $pop7
	block   	
	i64.load	$push8=, 16($1)
	i64.const	$push9=, 4611686018427387903
	i64.add 	$push10=, $pop8, $pop9
	i64.const	$push11=, 9223372036854775806
	i64.gt_u	$push12=, $pop10, $pop11
	br_if   	0, $pop12
	i64.load	$push13=, 0($10)
	i64.const	$push92=, 8
	i64.shr_u	$8=, $pop13, $pop92
	i32.const	$10=, 0
.LBB91_2:
	block   	
	loop    	
	i32.wrap/i64	$push14=, $8
	i32.const	$push95=, 24
	i32.shl 	$push15=, $pop14, $pop95
	i32.const	$push94=, -1073741825
	i32.add 	$push16=, $pop15, $pop94
	i32.const	$push93=, 452984830
	i32.gt_u	$push17=, $pop16, $pop93
	br_if   	1, $pop17
	block   	
	i64.const	$push100=, 8
	i64.shr_u	$push99=, $8, $pop100
	tee_local	$push98=, $8=, $pop99
	i64.const	$push97=, 255
	i64.and 	$push18=, $pop98, $pop97
	i64.const	$push96=, 0
	i64.ne  	$push19=, $pop18, $pop96
	br_if   	0, $pop19
.LBB91_4:
	loop    	
	i64.const	$push105=, 8
	i64.shr_u	$push104=, $8, $pop105
	tee_local	$push103=, $8=, $pop104
	i64.const	$push102=, 255
	i64.and 	$push20=, $pop103, $pop102
	i64.const	$push101=, 0
	i64.ne  	$push21=, $pop20, $pop101
	br_if   	3, $pop21
	i32.const	$push109=, 1
	i32.add 	$push108=, $10, $pop109
	tee_local	$push107=, $10=, $pop108
	i32.const	$push106=, 7
	i32.lt_s	$push22=, $pop107, $pop106
	br_if   	0, $pop22
.LBB91_6:
	end_loop
	end_block
	i32.const	$9=, 1
	i32.const	$push113=, 1
	i32.add 	$push112=, $10, $pop113
	tee_local	$push111=, $10=, $pop112
	i32.const	$push110=, 7
	i32.lt_s	$push23=, $pop111, $pop110
	br_if   	0, $pop23
	br      	2
.LBB91_7:
	end_loop
	end_block
	i32.const	$9=, 0
.LBB91_8:
	end_block
	i32.const	$push24=, .L.str.18
	call    	eosio_assert@FUNCTION, $9, $pop24
	i64.load	$push25=, 0($3)
	i64.const	$push136=, 0
	i64.gt_s	$push26=, $pop25, $pop136
	i32.const	$push27=, .L.str.92
	call    	eosio_assert@FUNCTION, $pop26, $pop27
	i32.const	$push64=, 56
	i32.add 	$push65=, $11, $pop64
	i32.const	$push28=, 12
	i32.add 	$push135=, $pop65, $pop28
	tee_local	$push134=, $10=, $pop135
	i32.const	$push133=, 12
	i32.add 	$push132=, $3, $pop133
	tee_local	$push131=, $9=, $pop132
	i32.load	$push29=, 0($pop131)
	i32.store	0($pop134), $pop29
	i32.const	$push66=, 56
	i32.add 	$push67=, $11, $pop66
	i32.const	$push30=, 8
	i32.add 	$push130=, $pop67, $pop30
	tee_local	$push129=, $5=, $pop130
	i32.const	$push128=, 8
	i32.add 	$push127=, $3, $pop128
	tee_local	$push126=, $4=, $pop127
	i32.load	$push31=, 0($pop126)
	i32.store	0($pop129), $pop31
	i32.const	$push32=, 4
	i32.add 	$push125=, $3, $pop32
	tee_local	$push124=, $6=, $pop125
	i32.load	$push33=, 0($pop124)
	i32.store	60($11), $pop33
	i32.load	$push34=, 0($3)
	i32.store	56($11), $pop34
	i64.load	$8=, 0($1)
	i32.const	$push68=, 24
	i32.add 	$push69=, $11, $pop68
	i32.const	$push123=, 12
	i32.add 	$push35=, $pop69, $pop123
	i32.load	$push36=, 0($10)
	i32.store	0($pop35), $pop36
	i32.const	$push70=, 24
	i32.add 	$push71=, $11, $pop70
	i32.const	$push122=, 8
	i32.add 	$push37=, $pop71, $pop122
	i32.load	$push38=, 0($5)
	i32.store	0($pop37), $pop38
	i32.load	$push39=, 60($11)
	i32.store	28($11), $pop39
	i32.load	$push40=, 56($11)
	i32.store	24($11), $pop40
	i32.const	$push72=, 24
	i32.add 	$push73=, $11, $pop72
	call    	_ZN5eosio8currency11sub_balanceEyNS_5assetERKNS0_14currency_statsE@FUNCTION, $0, $8, $pop73, $2
	i32.const	$push74=, 40
	i32.add 	$push75=, $11, $pop74
	i32.const	$push121=, 12
	i32.add 	$push42=, $pop75, $pop121
	i32.load	$push41=, 0($9)
	i32.store	0($pop42), $pop41
	i32.const	$push76=, 40
	i32.add 	$push77=, $11, $pop76
	i32.const	$push120=, 8
	i32.add 	$push119=, $pop77, $pop120
	tee_local	$push118=, $10=, $pop119
	i32.load	$push43=, 0($4)
	i32.store	0($pop118), $pop43
	i32.load	$push44=, 0($6)
	i32.store	44($11), $pop44
	i32.load	$push45=, 0($3)
	i32.store	40($11), $pop45
	i32.const	$push117=, 8
	i32.add 	$push46=, $1, $pop117
	i64.load	$8=, 0($pop46)
	i64.load	$7=, 0($1)
	i32.const	$push78=, 8
	i32.add 	$push79=, $11, $pop78
	i32.const	$push116=, 8
	i32.add 	$push47=, $pop79, $pop116
	i64.load	$push48=, 0($10)
	i64.store	0($pop47), $pop48
	i64.load	$push49=, 40($11)
	i64.store	8($11), $pop49
	i32.const	$push80=, 8
	i32.add 	$push81=, $11, $pop80
	call    	_ZN5eosio8currency11add_balanceEyNS_5assetERKNS0_14currency_statsEy@FUNCTION, $0, $8, $pop81, $2, $7
	block   	
	i32.load	$push115=, 96($11)
	tee_local	$push114=, $3=, $pop115
	i32.eqz 	$push145=, $pop114
	br_if   	0, $pop145
	block   	
	block   	
	i32.const	$push50=, 100
	i32.add 	$push140=, $11, $pop50
	tee_local	$push139=, $9=, $pop140
	i32.load	$push138=, 0($pop139)
	tee_local	$push137=, $10=, $pop138
	i32.eq  	$push51=, $pop137, $3
	br_if   	0, $pop51
.LBB91_11:
	loop    	
	i32.const	$push144=, -24
	i32.add 	$push143=, $10, $pop144
	tee_local	$push142=, $10=, $pop143
	i32.load	$1=, 0($pop142)
	i32.const	$push141=, 0
	i32.store	0($10), $pop141
	block   	
	i32.eqz 	$push146=, $1
	br_if   	0, $pop146
	call    	_ZdlPv@FUNCTION, $1
.LBB91_13:
	end_block
	i32.ne  	$push52=, $3, $10
	br_if   	0, $pop52
	end_loop
	i32.const	$push53=, 96
	i32.add 	$push54=, $11, $pop53
	i32.load	$10=, 0($pop54)
	br      	1
.LBB91_15:
	end_block
	copy_local	$10=, $3
.LBB91_16:
	end_block
	i32.store	0($9), $3
	call    	_ZdlPv@FUNCTION, $10
.LBB91_17:
	end_block
	i32.const	$push61=, 0
	i32.const	$push59=, 112
	i32.add 	$push60=, $11, $pop59
	i32.store	__stack_pointer($pop61), $pop60
	.endfunc
.Lfunc_end91:
	.size	_ZN5eosio8currency2onERKNS0_8transferE, .Lfunc_end91-_ZN5eosio8currency2onERKNS0_8transferE

	.section	.text._ZN5eosio8currency11sub_balanceEyNS_5assetERKNS0_14currency_statsE,"axG",@progbits,_ZN5eosio8currency11sub_balanceEyNS_5assetERKNS0_14currency_statsE,comdat
	.hidden	_ZN5eosio8currency11sub_balanceEyNS_5assetERKNS0_14currency_statsE
	.weak	_ZN5eosio8currency11sub_balanceEyNS_5assetERKNS0_14currency_statsE
	.type	_ZN5eosio8currency11sub_balanceEyNS_5assetERKNS0_14currency_statsE,@function
_ZN5eosio8currency11sub_balanceEyNS_5assetERKNS0_14currency_statsE:
	.param  	i32, i64, i32, i32
	.local  	i32, i32, i32
	i32.const	$push44=, 0
	i32.const	$push41=, 0
	i32.load	$push42=, __stack_pointer($pop41)
	i32.const	$push43=, 48
	i32.sub 	$push55=, $pop42, $pop43
	tee_local	$push54=, $6=, $pop55
	i32.store	__stack_pointer($pop44), $pop54
	i32.const	$push0=, 40
	i32.add 	$push1=, $6, $pop0
	i32.const	$push2=, 0
	i32.store	0($pop1), $pop2
	i64.store	16($6), $1
	i64.const	$push3=, -1
	i64.store	24($6), $pop3
	i64.const	$push4=, 0
	i64.store	32($6), $pop4
	i64.load	$push5=, 0($0)
	i64.store	8($6), $pop5
	i32.const	$push48=, 8
	i32.add 	$push49=, $6, $pop48
	i64.load	$push6=, 8($2)
	i64.const	$push7=, 8
	i64.shr_u	$push8=, $pop6, $pop7
	i32.const	$push9=, .L.str.80
	i32.call	$push53=, _ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE3getEyPKc@FUNCTION, $pop49, $pop8, $pop9
	tee_local	$push52=, $0=, $pop53
	i64.load	$push10=, 0($pop52)
	i64.load	$push11=, 0($2)
	i64.ge_s	$push12=, $pop10, $pop11
	i32.const	$push13=, .L.str.93
	call    	eosio_assert@FUNCTION, $pop12, $pop13
	block   	
	block   	
	i32.call	$push14=, has_auth@FUNCTION, $1
	i32.eqz 	$push66=, $pop14
	br_if   	0, $pop66
	i32.const	$5=, 1
	i32.const	$4=, 1
	block   	
	i32.load8_u	$push21=, 40($3)
	i32.eqz 	$push67=, $pop21
	br_if   	0, $pop67
	i32.load8_u	$push22=, 16($0)
	i32.const	$push23=, 1
	i32.xor 	$4=, $pop22, $pop23
.LBB92_3:
	end_block
	i32.const	$push24=, .L.str.94
	call    	eosio_assert@FUNCTION, $4, $pop24
	block   	
	i32.const	$push25=, 40
	i32.add 	$push26=, $3, $pop25
	i32.load8_u	$push27=, 0($pop26)
	i32.eqz 	$push68=, $pop27
	br_if   	0, $pop68
	i32.load8_u	$push28=, 43($3)
	i32.const	$push29=, 1
	i32.xor 	$5=, $pop28, $pop29
.LBB92_5:
	end_block
	i32.const	$push30=, .L.str.95
	call    	eosio_assert@FUNCTION, $5, $pop30
	i32.load8_u	$push32=, 17($0)
	i32.const	$push33=, 1
	i32.load8_u	$push31=, 44($3)
	i32.select	$push34=, $pop32, $pop33, $pop31
	i32.const	$push35=, .L.str.96
	call    	eosio_assert@FUNCTION, $pop34, $pop35
	br      	1
.LBB92_6:
	end_block
	block   	
	i64.load	$push15=, 32($3)
	i32.call	$push16=, has_auth@FUNCTION, $pop15
	i32.eqz 	$push69=, $pop16
	br_if   	0, $pop69
	i32.load8_u	$push19=, 41($3)
	i32.const	$push20=, .L.str.97
	call    	eosio_assert@FUNCTION, $pop19, $pop20
	br      	1
.LBB92_8:
	end_block
	i32.const	$push18=, 0
	i32.const	$push17=, .L.str.98
	call    	eosio_assert@FUNCTION, $pop18, $pop17
.LBB92_9:
	end_block
	i32.store	0($6), $2
	i32.const	$push50=, 8
	i32.add 	$push51=, $6, $pop50
	call    	_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE6modifyIZNS1_11sub_balanceEyNS_5assetERKNS1_14currency_statsEEUlRT_E_EEvRKS2_yOS9_@FUNCTION, $pop51, $0, $1, $6
	block   	
	i32.load	$push57=, 32($6)
	tee_local	$push56=, $0=, $pop57
	i32.eqz 	$push70=, $pop56
	br_if   	0, $pop70
	block   	
	block   	
	i32.const	$push36=, 36
	i32.add 	$push61=, $6, $pop36
	tee_local	$push60=, $5=, $pop61
	i32.load	$push59=, 0($pop60)
	tee_local	$push58=, $2=, $pop59
	i32.eq  	$push37=, $pop58, $0
	br_if   	0, $pop37
.LBB92_12:
	loop    	
	i32.const	$push65=, -24
	i32.add 	$push64=, $2, $pop65
	tee_local	$push63=, $2=, $pop64
	i32.load	$3=, 0($pop63)
	i32.const	$push62=, 0
	i32.store	0($2), $pop62
	block   	
	i32.eqz 	$push71=, $3
	br_if   	0, $pop71
	call    	_ZdlPv@FUNCTION, $3
.LBB92_14:
	end_block
	i32.ne  	$push38=, $0, $2
	br_if   	0, $pop38
	end_loop
	i32.const	$push39=, 32
	i32.add 	$push40=, $6, $pop39
	i32.load	$2=, 0($pop40)
	br      	1
.LBB92_16:
	end_block
	copy_local	$2=, $0
.LBB92_17:
	end_block
	i32.store	0($5), $0
	call    	_ZdlPv@FUNCTION, $2
.LBB92_18:
	end_block
	i32.const	$push47=, 0
	i32.const	$push45=, 48
	i32.add 	$push46=, $6, $pop45
	i32.store	__stack_pointer($pop47), $pop46
	.endfunc
.Lfunc_end92:
	.size	_ZN5eosio8currency11sub_balanceEyNS_5assetERKNS0_14currency_statsE, .Lfunc_end92-_ZN5eosio8currency11sub_balanceEyNS_5assetERKNS0_14currency_statsE

	.section	.text._ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE3getEyPKc,"axG",@progbits,_ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE3getEyPKc,comdat
	.hidden	_ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE3getEyPKc
	.weak	_ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE3getEyPKc
	.type	_ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE3getEyPKc,@function
_ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE3getEyPKc:
	.param  	i32, i64, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	block   	
	i32.const	$push0=, 28
	i32.add 	$push1=, $0, $pop0
	i32.load	$push30=, 0($pop1)
	tee_local	$push29=, $7=, $pop30
	i32.load	$push28=, 24($0)
	tee_local	$push27=, $3=, $pop28
	i32.eq  	$push2=, $pop29, $pop27
	br_if   	0, $pop2
	i32.const	$push31=, -24
	i32.add 	$6=, $7, $pop31
	i32.const	$push3=, 0
	i32.sub 	$4=, $pop3, $3
.LBB93_2:
	loop    	
	i32.load	$push4=, 0($6)
	i64.load	$push5=, 8($pop4)
	i64.const	$push32=, 8
	i64.shr_u	$push6=, $pop5, $pop32
	i64.eq  	$push7=, $pop6, $1
	br_if   	1, $pop7
	copy_local	$7=, $6
	i32.const	$push36=, -24
	i32.add 	$push35=, $6, $pop36
	tee_local	$push34=, $5=, $pop35
	copy_local	$6=, $pop34
	i32.add 	$push8=, $5, $4
	i32.const	$push33=, -24
	i32.ne  	$push9=, $pop8, $pop33
	br_if   	0, $pop9
.LBB93_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push10=, $7, $3
	br_if   	0, $pop10
	i32.const	$push11=, -24
	i32.add 	$push12=, $7, $pop11
	i32.load	$push38=, 0($pop12)
	tee_local	$push37=, $6=, $pop38
	i32.const	$push13=, 20
	i32.add 	$push14=, $pop37, $pop13
	i32.load	$push15=, 0($pop14)
	i32.eq  	$push16=, $pop15, $0
	i32.const	$push17=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop16, $pop17
	br      	1
.LBB93_6:
	end_block
	i32.const	$6=, 0
	i64.load	$push19=, 0($0)
	i64.load	$push18=, 8($0)
	i64.const	$push20=, 3607749779137757184
	i32.call	$push41=, db_find_i64@FUNCTION, $pop19, $pop18, $pop20, $1
	tee_local	$push40=, $5=, $pop41
	i32.const	$push39=, 0
	i32.lt_s	$push21=, $pop40, $pop39
	br_if   	0, $pop21
	i32.call	$push43=, _ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE31load_object_by_primary_iteratorEl@FUNCTION, $0, $5
	tee_local	$push42=, $6=, $pop43
	i32.load	$push22=, 20($pop42)
	i32.eq  	$push23=, $pop22, $0
	i32.const	$push24=, .L.str.81
	call    	eosio_assert@FUNCTION, $pop23, $pop24
.LBB93_8:
	end_block
	i32.const	$push25=, 0
	i32.ne  	$push26=, $6, $pop25
	call    	eosio_assert@FUNCTION, $pop26, $2
	copy_local	$push44=, $6
	.endfunc
.Lfunc_end93:
	.size	_ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE3getEyPKc, .Lfunc_end93-_ZNK5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE3getEyPKc

	.section	.text._ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE6modifyIZNS1_11sub_balanceEyNS_5assetERKNS1_14currency_statsEEUlRT_E_EEvRKS2_yOS9_,"axG",@progbits,_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE6modifyIZNS1_11sub_balanceEyNS_5assetERKNS1_14currency_statsEEUlRT_E_EEvRKS2_yOS9_,comdat
	.hidden	_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE6modifyIZNS1_11sub_balanceEyNS_5assetERKNS1_14currency_statsEEUlRT_E_EEvRKS2_yOS9_
	.weak	_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE6modifyIZNS1_11sub_balanceEyNS_5assetERKNS1_14currency_statsEEUlRT_E_EEvRKS2_yOS9_
	.type	_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE6modifyIZNS1_11sub_balanceEyNS_5assetERKNS1_14currency_statsEEUlRT_E_EEvRKS2_yOS9_,@function
_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE6modifyIZNS1_11sub_balanceEyNS_5assetERKNS1_14currency_statsEEUlRT_E_EEvRKS2_yOS9_:
	.param  	i32, i32, i64, i32
	.local  	i64, i32
	i32.const	$push35=, 0
	i32.const	$push32=, 0
	i32.load	$push33=, __stack_pointer($pop32)
	i32.const	$push34=, 32
	i32.sub 	$push59=, $pop33, $pop34
	tee_local	$push58=, $5=, $pop59
	i32.store	__stack_pointer($pop35), $pop58
	i32.const	$push0=, 20
	i32.add 	$push1=, $1, $pop0
	i32.load	$push2=, 0($pop1)
	i32.eq  	$push3=, $pop2, $0
	i32.const	$push4=, .L.str.84
	call    	eosio_assert@FUNCTION, $pop3, $pop4
	i64.load	$push5=, 0($0)
	i64.call	$push6=, current_receiver@FUNCTION
	i64.eq  	$push7=, $pop5, $pop6
	i32.const	$push8=, .L.str.85
	call    	eosio_assert@FUNCTION, $pop7, $pop8
	i64.load	$push9=, 0($1)
	i32.load	$push10=, 0($3)
	i64.load	$push11=, 0($pop10)
	i64.sub 	$push12=, $pop9, $pop11
	i64.store	0($1), $pop12
	i64.load	$4=, 8($1)
	i32.const	$push14=, 1
	i32.const	$push13=, .L.str.86
	call    	eosio_assert@FUNCTION, $pop14, $pop13
	i32.const	$push57=, 1
	i32.const	$push15=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop57, $pop15
	i32.const	$push16=, 8
	i32.call	$drop=, memcpy@FUNCTION, $5, $1, $pop16
	i32.const	$push56=, 1
	i32.const	$push55=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop56, $pop55
	i32.const	$push54=, 8
	i32.or  	$push18=, $5, $pop54
	i32.const	$push53=, 8
	i32.add 	$push17=, $1, $pop53
	i32.const	$push52=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop18, $pop17, $pop52
	i32.load8_u	$push19=, 16($1)
	i32.store8	31($5), $pop19
	i32.const	$push51=, 1
	i32.const	$push50=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop51, $pop50
	i32.const	$push49=, 16
	i32.add 	$push20=, $5, $pop49
	i32.const	$push39=, 31
	i32.add 	$push40=, $5, $pop39
	i32.const	$push48=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop20, $pop40, $pop48
	i32.load8_u	$push21=, 17($1)
	i32.store8	31($5), $pop21
	i32.const	$push47=, 1
	i32.const	$push46=, .L.str.79
	call    	eosio_assert@FUNCTION, $pop47, $pop46
	i32.const	$push22=, 17
	i32.add 	$push23=, $5, $pop22
	i32.const	$push41=, 31
	i32.add 	$push42=, $5, $pop41
	i32.const	$push45=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop23, $pop42, $pop45
	i32.load	$push24=, 24($1)
	i32.const	$push25=, 18
	call    	db_update_i64@FUNCTION, $pop24, $2, $5, $pop25
	block   	
	i64.const	$push26=, 8
	i64.shr_u	$push44=, $4, $pop26
	tee_local	$push43=, $2=, $pop44
	i64.load	$push27=, 16($0)
	i64.lt_u	$push28=, $pop43, $pop27
	br_if   	0, $pop28
	i32.const	$push60=, 16
	i32.add 	$push31=, $0, $pop60
	i64.const	$push29=, 1
	i64.add 	$push30=, $2, $pop29
	i64.store	0($pop31), $pop30
.LBB94_2:
	end_block
	i32.const	$push38=, 0
	i32.const	$push36=, 32
	i32.add 	$push37=, $5, $pop36
	i32.store	__stack_pointer($pop38), $pop37
	.endfunc
.Lfunc_end94:
	.size	_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE6modifyIZNS1_11sub_balanceEyNS_5assetERKNS1_14currency_statsEEUlRT_E_EEvRKS2_yOS9_, .Lfunc_end94-_ZN5eosio11multi_indexILy3607749779137757184ENS_8currency7accountEJEE6modifyIZNS1_11sub_balanceEyNS_5assetERKNS1_14currency_statsEEUlRT_E_EEvRKS2_yOS9_

	.text
	.hidden	_ZN5eosio8exchange5applyEyy
	.globl	_ZN5eosio8exchange5applyEyy
	.type	_ZN5eosio8exchange5applyEyy,@function
_ZN5eosio8exchange5applyEyy:
	.param  	i32, i64, i64
	.local  	i32, i32, i64, i64, i64, i64, i32
	i32.const	$push65=, 0
	i32.const	$push62=, 0
	i32.load	$push63=, __stack_pointer($pop62)
	i32.const	$push64=, 160
	i32.sub 	$push96=, $pop63, $pop64
	tee_local	$push95=, $9=, $pop96
	i32.store	__stack_pointer($pop65), $pop95
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.64
	i64.const	$7=, 0
.LBB95_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push97=, 7
	i64.gt_u	$push0=, $6, $pop97
	br_if   	0, $pop0
	i32.load8_s	$push102=, 0($4)
	tee_local	$push101=, $3=, $pop102
	i32.const	$push100=, -97
	i32.add 	$push2=, $pop101, $pop100
	i32.const	$push99=, 255
	i32.and 	$push3=, $pop2, $pop99
	i32.const	$push98=, 25
	i32.gt_u	$push4=, $pop3, $pop98
	br_if   	1, $pop4
	i32.const	$push103=, 165
	i32.add 	$3=, $3, $pop103
	br      	2
.LBB95_4:
	end_block
	i64.const	$8=, 0
	i64.const	$push104=, 11
	i64.le_u	$push1=, $6, $pop104
	br_if   	2, $pop1
	br      	3
.LBB95_5:
	end_block
	i32.const	$push109=, 208
	i32.add 	$push5=, $3, $pop109
	i32.const	$push108=, 0
	i32.const	$push107=, -49
	i32.add 	$push6=, $3, $pop107
	i32.const	$push106=, 255
	i32.and 	$push7=, $pop6, $pop106
	i32.const	$push105=, 5
	i32.lt_u	$push8=, $pop7, $pop105
	i32.select	$3=, $pop5, $pop108, $pop8
.LBB95_6:
	end_block
	i64.extend_u/i32	$push9=, $3
	i64.const	$push111=, 56
	i64.shl 	$push10=, $pop9, $pop111
	i64.const	$push110=, 56
	i64.shr_s	$8=, $pop10, $pop110
.LBB95_7:
	end_block
	i64.const	$push113=, 31
	i64.and 	$push12=, $8, $pop113
	i64.const	$push112=, 4294967295
	i64.and 	$push11=, $5, $pop112
	i64.shl 	$8=, $pop12, $pop11
.LBB95_8:
	end_block
	i32.const	$push119=, 1
	i32.add 	$4=, $4, $pop119
	i64.const	$push118=, 1
	i64.add 	$6=, $6, $pop118
	i64.or  	$7=, $8, $7
	i64.const	$push117=, -5
	i64.add 	$push116=, $5, $pop117
	tee_local	$push115=, $5=, $pop116
	i64.const	$push114=, -6
	i64.ne  	$push13=, $pop115, $pop114
	br_if   	0, $pop13
	end_loop
	block   	
	block   	
	i64.ne  	$push14=, $7, $2
	br_if   	0, $pop14
	i32.const	$push69=, 48
	i32.add 	$push70=, $9, $pop69
	call    	_ZN5eosio18unpack_action_dataINS_8currency8transferEEET_v@FUNCTION, $pop70
	i32.const	$push71=, 48
	i32.add 	$push72=, $9, $pop71
	call    	_ZN5eosio8exchange2onERKNS_8currency8transferEy@FUNCTION, $0, $pop72, $1
	i32.load8_u	$push57=, 80($9)
	i32.const	$push56=, 1
	i32.and 	$push58=, $pop57, $pop56
	i32.eqz 	$push120=, $pop58
	br_if   	1, $pop120
	i32.const	$push59=, 88
	i32.add 	$push60=, $9, $pop59
	i32.load	$push61=, 0($pop60)
	call    	_ZdlPv@FUNCTION, $pop61
	br      	1
.LBB95_12:
	end_block
	i64.load	$push15=, 0($0)
	i64.ne  	$push16=, $pop15, $1
	br_if   	0, $pop16
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push17=, -2039333636196532225
	i64.gt_s	$push18=, $2, $pop17
	br_if   	0, $pop18
	i64.const	$push29=, -3106734271092490241
	i64.gt_s	$push30=, $2, $pop29
	br_if   	1, $pop30
	i64.const	$push35=, -8455912920667127808
	i64.eq  	$push36=, $2, $pop35
	br_if   	3, $pop36
	i64.const	$push37=, -3617352573452812288
	i64.ne  	$push38=, $2, $pop37
	br_if   	7, $pop38
	i32.const	$push75=, 48
	i32.add 	$push76=, $9, $pop75
	call    	_ZN5eosio18unpack_action_dataINS_8exchange5tradeEEET_v@FUNCTION, $pop76
	i32.const	$push77=, 48
	i32.add 	$push78=, $9, $pop77
	call    	_ZN5eosio8exchange2onERKNS0_5tradeE@FUNCTION, $0, $pop78
	br      	8
.LBB95_18:
	end_block
	i64.const	$push19=, 5031766168059248639
	i64.gt_s	$push20=, $2, $pop19
	br_if   	1, $pop20
	i64.const	$push25=, -2039333636196532224
	i64.eq  	$push26=, $2, $pop25
	br_if   	3, $pop26
	i64.const	$push27=, 4987362516454843904
	i64.ne  	$push28=, $2, $pop27
	br_if   	6, $pop28
	i32.const	$push87=, 48
	i32.add 	$push88=, $9, $pop87
	call    	_ZN5eosio18unpack_action_dataINS_8exchange11covermarginEEET_v@FUNCTION, $pop88
	i32.const	$push89=, 48
	i32.add 	$push90=, $9, $pop89
	call    	_ZN5eosio8exchange2onERKNS0_11covermarginE@FUNCTION, $0, $pop90
	br      	7
.LBB95_22:
	end_block
	i64.const	$push31=, -3106734271092490240
	i64.eq  	$push32=, $2, $pop31
	br_if   	3, $pop32
	i64.const	$push33=, -3070210634466459648
	i64.ne  	$push34=, $2, $pop33
	br_if   	5, $pop34
	i32.const	$push81=, 48
	i32.add 	$push82=, $9, $pop81
	call    	_ZN5eosio18unpack_action_dataINS_8exchange8upmarginEEET_v@FUNCTION, $pop82
	i32.const	$push83=, 48
	i32.add 	$push84=, $9, $pop83
	call    	_ZN5eosio8exchange2onERKNS0_8upmarginE@FUNCTION, $0, $pop84
	br      	6
.LBB95_25:
	end_block
	i64.const	$push21=, 5380477996647841792
	i64.eq  	$push22=, $2, $pop21
	br_if   	3, $pop22
	i64.const	$push23=, 5031766168059248640
	i64.ne  	$push24=, $2, $pop23
	br_if   	4, $pop24
	i32.const	$push51=, 0
	i32.store	156($9), $pop51
	i32.const	$push52=, _ZN5eosio8exchange7createxEyNS_5assetEmNS_14extended_assetES2_@FUNCTION
	i32.store	152($9), $pop52
	i64.load	$push53=, 152($9)
	i64.store	8($9):p2align=2, $pop53
	i32.const	$push93=, 8
	i32.add 	$push94=, $9, $pop93
	i32.call	$drop=, _ZN5eosio14execute_actionINS_8exchangeES1_JyNS_5assetEmNS_14extended_assetES3_EEEbPT_MT0_FvDpT1_E@FUNCTION, $0, $pop94
	br      	4
.LBB95_28:
	end_block
	i32.const	$push42=, 0
	i32.store	132($9), $pop42
	i32.const	$push43=, _ZN5eosio8exchange4lendEyNS_11symbol_typeENS_14extended_assetE@FUNCTION
	i32.store	128($9), $pop43
	i64.load	$push44=, 128($9)
	i64.store	32($9):p2align=2, $pop44
	i32.const	$push73=, 32
	i32.add 	$push74=, $9, $pop73
	i32.call	$drop=, _ZN5eosio14execute_actionINS_8exchangeES1_JyNS_11symbol_typeENS_14extended_assetEEEEbPT_MT0_FvDpT1_E@FUNCTION, $0, $pop74
	br      	3
.LBB95_29:
	end_block
	i32.const	$push45=, 0
	i32.store	140($9), $pop45
	i32.const	$push46=, _ZN5eosio8exchange8withdrawEyNS_14extended_assetE@FUNCTION
	i32.store	136($9), $pop46
	i64.load	$push47=, 136($9)
	i64.store	24($9):p2align=2, $pop47
	i32.const	$push85=, 24
	i32.add 	$push86=, $9, $pop85
	i32.call	$drop=, _ZN5eosio14execute_actionINS_8exchangeES1_JyNS_14extended_assetEEEEbPT_MT0_FvDpT1_E@FUNCTION, $0, $pop86
	br      	2
.LBB95_30:
	end_block
	i32.const	$push39=, 0
	i32.store	124($9), $pop39
	i32.const	$push40=, _ZN5eosio8exchange6unlendEyNS_11symbol_typeEdNS_15extended_symbolE@FUNCTION
	i32.store	120($9), $pop40
	i64.load	$push41=, 120($9)
	i64.store	40($9):p2align=2, $pop41
	i32.const	$push79=, 40
	i32.add 	$push80=, $9, $pop79
	i32.call	$drop=, _ZN5eosio14execute_actionINS_8exchangeES1_JyNS_11symbol_typeEdNS_15extended_symbolEEEEbPT_MT0_FvDpT1_E@FUNCTION, $0, $pop80
	br      	1
.LBB95_31:
	end_block
	i32.const	$push48=, 0
	i32.store	148($9), $pop48
	i32.const	$push49=, _ZN5eosio8exchange7depositEyNS_14extended_assetE@FUNCTION
	i32.store	144($9), $pop49
	i64.load	$push50=, 144($9)
	i64.store	16($9):p2align=2, $pop50
	i32.const	$push91=, 16
	i32.add 	$push92=, $9, $pop91
	i32.call	$drop=, _ZN5eosio14execute_actionINS_8exchangeES1_JyNS_14extended_assetEEEEbPT_MT0_FvDpT1_E@FUNCTION, $0, $pop92
.LBB95_32:
	end_block
	i32.const	$push54=, 8
	i32.add 	$push55=, $0, $pop54
	i32.call	$drop=, _ZN5eosio8currency5applyEyy@FUNCTION, $pop55, $1, $2
.LBB95_33:
	end_block
	i32.const	$push68=, 0
	i32.const	$push66=, 160
	i32.add 	$push67=, $9, $pop66
	i32.store	__stack_pointer($pop68), $pop67
	.endfunc
.Lfunc_end95:
	.size	_ZN5eosio8exchange5applyEyy, .Lfunc_end95-_ZN5eosio8exchange5applyEyy

	.section	.text._ZN5eosio18unpack_action_dataINS_8currency8transferEEET_v,"axG",@progbits,_ZN5eosio18unpack_action_dataINS_8currency8transferEEET_v,comdat
	.hidden	_ZN5eosio18unpack_action_dataINS_8currency8transferEEET_v
	.weak	_ZN5eosio18unpack_action_dataINS_8currency8transferEEET_v
	.type	_ZN5eosio18unpack_action_dataINS_8currency8transferEEET_v,@function
_ZN5eosio18unpack_action_dataINS_8currency8transferEEET_v:
	.param  	i32
	.local  	i32, i32, i64, i32, i32, i32
	i32.const	$push26=, 0
	i32.load	$push27=, __stack_pointer($pop26)
	i32.const	$push28=, 16
	i32.sub 	$push37=, $pop27, $pop28
	tee_local	$push36=, $4=, $pop37
	copy_local	$6=, $pop36
	i32.const	$push29=, 0
	i32.store	__stack_pointer($pop29), $4
	block   	
	block   	
	i32.call	$push35=, action_data_size@FUNCTION
	tee_local	$push34=, $1=, $pop35
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $pop34, $pop0
	br_if   	0, $pop1
	i32.call	$2=, malloc@FUNCTION, $1
	br      	1
.LBB96_2:
	end_block
	i32.const	$push25=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push39=, $4, $pop5
	tee_local	$push38=, $2=, $pop39
	copy_local	$push33=, $pop38
	i32.store	__stack_pointer($pop25), $pop33
.LBB96_3:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $2, $1
	i32.const	$push42=, 24
	i32.add 	$push6=, $0, $pop42
	i64.const	$push7=, 1398362884
	i64.store	0($pop6), $pop7
	i64.const	$push41=, 0
	i64.store	16($0), $pop41
	i32.const	$push40=, 1
	i32.const	$push8=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop40, $pop8
	i64.const	$3=, 5462355
	i32.const	$4=, 0
.LBB96_4:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push9=, $3
	i32.const	$push45=, 24
	i32.shl 	$push10=, $pop9, $pop45
	i32.const	$push44=, -1073741825
	i32.add 	$push11=, $pop10, $pop44
	i32.const	$push43=, 452984830
	i32.gt_u	$push12=, $pop11, $pop43
	br_if   	1, $pop12
	block   	
	i64.const	$push50=, 8
	i64.shr_u	$push49=, $3, $pop50
	tee_local	$push48=, $3=, $pop49
	i64.const	$push47=, 255
	i64.and 	$push13=, $pop48, $pop47
	i64.const	$push46=, 0
	i64.ne  	$push14=, $pop13, $pop46
	br_if   	0, $pop14
.LBB96_6:
	loop    	
	i64.const	$push55=, 8
	i64.shr_u	$push54=, $3, $pop55
	tee_local	$push53=, $3=, $pop54
	i64.const	$push52=, 255
	i64.and 	$push15=, $pop53, $pop52
	i64.const	$push51=, 0
	i64.ne  	$push16=, $pop15, $pop51
	br_if   	3, $pop16
	i32.const	$push59=, 1
	i32.add 	$push58=, $4, $pop59
	tee_local	$push57=, $4=, $pop58
	i32.const	$push56=, 7
	i32.lt_s	$push17=, $pop57, $pop56
	br_if   	0, $pop17
.LBB96_8:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push63=, 1
	i32.add 	$push62=, $4, $pop63
	tee_local	$push61=, $4=, $pop62
	i32.const	$push60=, 7
	i32.lt_s	$push18=, $pop61, $pop60
	br_if   	0, $pop18
	br      	2
.LBB96_9:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB96_10:
	end_block
	i32.const	$push19=, .L.str.66
	call    	eosio_assert@FUNCTION, $5, $pop19
	i32.const	$push20=, 40
	i32.add 	$push21=, $0, $pop20
	i32.const	$push22=, 0
	i32.store	0($pop21), $pop22
	i64.const	$push23=, 0
	i64.store	32($0):p2align=2, $pop23
	i32.store	4($6), $2
	i32.store	0($6), $2
	i32.add 	$push24=, $2, $1
	i32.store	8($6), $pop24
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency8transferE@FUNCTION, $6, $0
	i32.const	$push32=, 0
	i32.const	$push30=, 16
	i32.add 	$push31=, $6, $pop30
	i32.store	__stack_pointer($pop32), $pop31
	.endfunc
.Lfunc_end96:
	.size	_ZN5eosio18unpack_action_dataINS_8currency8transferEEET_v, .Lfunc_end96-_ZN5eosio18unpack_action_dataINS_8currency8transferEEET_v

	.section	.text._ZN5eosio14execute_actionINS_8exchangeES1_JyNS_5assetEmNS_14extended_assetES3_EEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_5assetEmNS_14extended_assetES3_EEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_5assetEmNS_14extended_assetES3_EEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_5assetEmNS_14extended_assetES3_EEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_5assetEmNS_14extended_assetES3_EEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_5assetEmNS_14extended_assetES3_EEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i32, i32, i32, i32, i32, i32, i32
	i32.const	$push75=, 0
	i32.load	$push76=, __stack_pointer($pop75)
	i32.const	$push77=, 336
	i32.sub 	$push140=, $pop76, $pop77
	tee_local	$push139=, $8=, $pop140
	copy_local	$10=, $pop139
	i32.const	$push78=, 0
	i32.store	__stack_pointer($pop78), $8
	i32.load	$2=, 4($1)
	i32.load	$9=, 0($1)
	block   	
	block   	
	block   	
	block   	
	i32.call	$push138=, action_data_size@FUNCTION
	tee_local	$push137=, $1=, $pop138
	i32.eqz 	$push186=, $pop137
	br_if   	0, $pop186
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $1, $pop0
	br_if   	1, $pop1
	i32.call	$8=, malloc@FUNCTION, $1
	br      	2
.LBB97_3:
	end_block
	i32.const	$8=, 0
	br      	2
.LBB97_4:
	end_block
	i32.const	$push74=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push142=, $8, $pop5
	tee_local	$push141=, $8=, $pop142
	copy_local	$push136=, $pop141
	i32.store	__stack_pointer($pop74), $pop136
.LBB97_5:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $8, $1
.LBB97_6:
	end_block
	i32.const	$push82=, 64
	i32.add 	$push83=, $10, $pop82
	call    	_ZN5eosio6unpackINSt3__15tupleIJyNS_5assetEmNS_14extended_assetES4_EEEEET_PKcj@FUNCTION, $pop83, $8, $1
	block   	
	i32.const	$push6=, 513
	i32.lt_u	$push7=, $1, $pop6
	br_if   	0, $pop7
	call    	free@FUNCTION, $8
.LBB97_8:
	end_block
	i32.const	$push84=, 192
	i32.add 	$push85=, $10, $pop84
	i32.const	$push8=, 8
	i32.add 	$push162=, $pop85, $pop8
	tee_local	$push161=, $1=, $pop162
	i32.const	$push86=, 64
	i32.add 	$push87=, $10, $pop86
	i32.const	$push9=, 16
	i32.add 	$push10=, $pop87, $pop9
	i64.load	$push11=, 0($pop10)
	i64.store	0($pop161), $pop11
	i64.load	$3=, 64($10)
	i64.load	$push12=, 72($10)
	i64.store	192($10), $pop12
	i32.load	$8=, 88($10)
	i32.const	$push88=, 168
	i32.add 	$push89=, $10, $pop88
	i32.const	$push160=, 16
	i32.add 	$push159=, $pop89, $pop160
	tee_local	$push158=, $4=, $pop159
	i32.const	$push13=, 112
	i32.add 	$push14=, $10, $pop13
	i64.load	$push15=, 0($pop14)
	i64.store	0($pop158), $pop15
	i32.const	$push90=, 168
	i32.add 	$push91=, $10, $pop90
	i32.const	$push157=, 8
	i32.add 	$push156=, $pop91, $pop157
	tee_local	$push155=, $5=, $pop156
	i32.const	$push16=, 104
	i32.add 	$push17=, $10, $pop16
	i64.load	$push18=, 0($pop17)
	i64.store	0($pop155), $pop18
	i64.load	$push19=, 96($10)
	i64.store	168($10), $pop19
	i32.const	$push92=, 144
	i32.add 	$push93=, $10, $pop92
	i32.const	$push154=, 16
	i32.add 	$push153=, $pop93, $pop154
	tee_local	$push152=, $6=, $pop153
	i32.const	$push20=, 136
	i32.add 	$push21=, $10, $pop20
	i64.load	$push22=, 0($pop21)
	i64.store	0($pop152), $pop22
	i32.const	$push94=, 144
	i32.add 	$push95=, $10, $pop94
	i32.const	$push151=, 8
	i32.add 	$push150=, $pop95, $pop151
	tee_local	$push149=, $7=, $pop150
	i32.const	$push23=, 128
	i32.add 	$push24=, $10, $pop23
	i64.load	$push25=, 0($pop24)
	i64.store	0($pop149), $pop25
	i64.load	$push26=, 120($10)
	i64.store	144($10), $pop26
	i32.const	$push96=, 248
	i32.add 	$push97=, $10, $pop96
	i32.const	$push148=, 16
	i32.add 	$push27=, $pop97, $pop148
	i64.load	$push28=, 0($6)
	i64.store	0($pop27), $pop28
	i32.const	$push98=, 248
	i32.add 	$push99=, $10, $pop98
	i32.const	$push147=, 8
	i32.add 	$push29=, $pop99, $pop147
	i64.load	$push30=, 0($7)
	i64.store	0($pop29), $pop30
	i32.const	$push100=, 224
	i32.add 	$push101=, $10, $pop100
	i32.const	$push146=, 16
	i32.add 	$push31=, $pop101, $pop146
	i64.load	$push32=, 0($4)
	i64.store	0($pop31), $pop32
	i32.const	$push102=, 224
	i32.add 	$push103=, $10, $pop102
	i32.const	$push145=, 8
	i32.add 	$push33=, $pop103, $pop145
	i64.load	$push34=, 0($5)
	i64.store	0($pop33), $pop34
	i64.load	$push35=, 144($10)
	i64.store	248($10), $pop35
	i64.load	$push36=, 168($10)
	i64.store	224($10), $pop36
	i32.const	$push104=, 208
	i32.add 	$push105=, $10, $pop104
	i32.const	$push144=, 8
	i32.add 	$push37=, $pop105, $pop144
	i64.load	$push38=, 0($1)
	i64.store	0($pop37), $pop38
	i64.load	$push39=, 192($10)
	i64.store	208($10), $pop39
	i32.const	$push40=, 1
	i32.shr_s	$push41=, $2, $pop40
	i32.add 	$1=, $0, $pop41
	block   	
	i32.const	$push143=, 1
	i32.and 	$push42=, $2, $pop143
	i32.eqz 	$push187=, $pop42
	br_if   	0, $pop187
	i32.load	$push43=, 0($1)
	i32.add 	$push44=, $pop43, $9
	i32.load	$9=, 0($pop44)
.LBB97_10:
	end_block
	i32.const	$push106=, 320
	i32.add 	$push107=, $10, $pop106
	i32.const	$push45=, 8
	i32.add 	$push185=, $pop107, $pop45
	tee_local	$push184=, $2=, $pop185
	i32.const	$push108=, 208
	i32.add 	$push109=, $10, $pop108
	i32.const	$push183=, 8
	i32.add 	$push46=, $pop109, $pop183
	i64.load	$push47=, 0($pop46)
	i64.store	0($pop184), $pop47
	i32.const	$push110=, 296
	i32.add 	$push111=, $10, $pop110
	i32.const	$push48=, 16
	i32.add 	$push182=, $pop111, $pop48
	tee_local	$push181=, $0=, $pop182
	i32.const	$push112=, 224
	i32.add 	$push113=, $10, $pop112
	i32.const	$push180=, 16
	i32.add 	$push49=, $pop113, $pop180
	i64.load	$push50=, 0($pop49)
	i64.store	0($pop181), $pop50
	i32.const	$push114=, 296
	i32.add 	$push115=, $10, $pop114
	i32.const	$push179=, 8
	i32.add 	$push178=, $pop115, $pop179
	tee_local	$push177=, $4=, $pop178
	i32.const	$push116=, 224
	i32.add 	$push117=, $10, $pop116
	i32.const	$push176=, 8
	i32.add 	$push51=, $pop117, $pop176
	i64.load	$push52=, 0($pop51)
	i64.store	0($pop177), $pop52
	i64.load	$push53=, 208($10)
	i64.store	320($10), $pop53
	i64.load	$push54=, 224($10)
	i64.store	296($10), $pop54
	i32.const	$push118=, 272
	i32.add 	$push119=, $10, $pop118
	i32.const	$push175=, 16
	i32.add 	$push174=, $pop119, $pop175
	tee_local	$push173=, $5=, $pop174
	i32.const	$push120=, 248
	i32.add 	$push121=, $10, $pop120
	i32.const	$push172=, 16
	i32.add 	$push55=, $pop121, $pop172
	i64.load	$push56=, 0($pop55)
	i64.store	0($pop173), $pop56
	i32.const	$push122=, 272
	i32.add 	$push123=, $10, $pop122
	i32.const	$push171=, 8
	i32.add 	$push170=, $pop123, $pop171
	tee_local	$push169=, $6=, $pop170
	i32.const	$push124=, 248
	i32.add 	$push125=, $10, $pop124
	i32.const	$push168=, 8
	i32.add 	$push57=, $pop125, $pop168
	i64.load	$push58=, 0($pop57)
	i64.store	0($pop169), $pop58
	i64.load	$push59=, 248($10)
	i64.store	272($10), $pop59
	i32.const	$push126=, 48
	i32.add 	$push127=, $10, $pop126
	i32.const	$push167=, 8
	i32.add 	$push60=, $pop127, $pop167
	i64.load	$push61=, 0($2)
	i64.store	0($pop60), $pop61
	i64.load	$push62=, 320($10)
	i64.store	48($10), $pop62
	i32.const	$push128=, 24
	i32.add 	$push129=, $10, $pop128
	i32.const	$push166=, 16
	i32.add 	$push63=, $pop129, $pop166
	i64.load	$push64=, 0($0)
	i64.store	0($pop63), $pop64
	i32.const	$push130=, 24
	i32.add 	$push131=, $10, $pop130
	i32.const	$push165=, 8
	i32.add 	$push65=, $pop131, $pop165
	i64.load	$push66=, 0($4)
	i64.store	0($pop65), $pop66
	i64.load	$push67=, 296($10)
	i64.store	24($10), $pop67
	i32.const	$push164=, 16
	i32.add 	$push68=, $10, $pop164
	i64.load	$push69=, 0($5)
	i64.store	0($pop68), $pop69
	i32.const	$push163=, 8
	i32.add 	$push70=, $10, $pop163
	i64.load	$push71=, 0($6)
	i64.store	0($pop70), $pop71
	i64.load	$push72=, 272($10)
	i64.store	0($10), $pop72
	i32.const	$push132=, 48
	i32.add 	$push133=, $10, $pop132
	i32.const	$push134=, 24
	i32.add 	$push135=, $10, $pop134
	call_indirect	$1, $3, $pop133, $8, $pop135, $10, $9
	i32.const	$push81=, 0
	i32.const	$push79=, 336
	i32.add 	$push80=, $10, $pop79
	i32.store	__stack_pointer($pop81), $pop80
	i32.const	$push73=, 1
	.endfunc
.Lfunc_end97:
	.size	_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_5assetEmNS_14extended_assetES3_EEEbPT_MT0_FvDpT1_E, .Lfunc_end97-_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_5assetEmNS_14extended_assetES3_EEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio14execute_actionINS_8exchangeES1_JyNS_14extended_assetEEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_14extended_assetEEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_14extended_assetEEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_14extended_assetEEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_14extended_assetEEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_14extended_assetEEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i64, i32, i64, i32, i32, i32
	i32.const	$push60=, 0
	i32.load	$push61=, __stack_pointer($pop60)
	i32.const	$push62=, 128
	i32.sub 	$push95=, $pop61, $pop62
	tee_local	$push94=, $9=, $pop95
	copy_local	$11=, $pop94
	i32.const	$push63=, 0
	i32.store	__stack_pointer($pop63), $9
	i32.load	$2=, 4($1)
	i32.load	$10=, 0($1)
	i32.const	$1=, 0
	i32.const	$7=, 0
	block   	
	i32.call	$push93=, action_data_size@FUNCTION
	tee_local	$push92=, $3=, $pop93
	i32.eqz 	$push165=, $pop92
	br_if   	0, $pop165
	block   	
	block   	
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $3, $pop0
	br_if   	0, $pop1
	i32.call	$7=, malloc@FUNCTION, $3
	br      	1
.LBB98_3:
	end_block
	i32.const	$push59=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $3, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push97=, $9, $pop5
	tee_local	$push96=, $7=, $pop97
	copy_local	$push91=, $pop96
	i32.store	__stack_pointer($pop59), $pop91
.LBB98_4:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $7, $3
.LBB98_5:
	end_block
	i32.const	$push67=, 24
	i32.add 	$push68=, $11, $pop67
	i32.const	$push104=, 24
	i32.add 	$push103=, $pop68, $pop104
	tee_local	$push102=, $4=, $pop103
	i64.const	$push101=, 0
	i64.store	0($pop102), $pop101
	i32.const	$push6=, 40
	i32.add 	$push7=, $11, $pop6
	i64.const	$push8=, 1398362884
	i64.store	0($pop7), $pop8
	i64.const	$push100=, 0
	i64.store	24($11), $pop100
	i64.const	$push99=, 0
	i64.store	32($11), $pop99
	i32.const	$push98=, 1
	i32.const	$push9=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop98, $pop9
	i64.const	$8=, 5462355
.LBB98_6:
	block   	
	loop    	
	i32.const	$9=, 0
	i32.wrap/i64	$push10=, $8
	i32.const	$push107=, 24
	i32.shl 	$push11=, $pop10, $pop107
	i32.const	$push106=, -1073741825
	i32.add 	$push12=, $pop11, $pop106
	i32.const	$push105=, 452984830
	i32.gt_u	$push13=, $pop12, $pop105
	br_if   	1, $pop13
	block   	
	i64.const	$push112=, 8
	i64.shr_u	$push111=, $8, $pop112
	tee_local	$push110=, $8=, $pop111
	i64.const	$push109=, 255
	i64.and 	$push14=, $pop110, $pop109
	i64.const	$push108=, 0
	i64.ne  	$push15=, $pop14, $pop108
	br_if   	0, $pop15
.LBB98_8:
	loop    	
	i64.const	$push117=, 8
	i64.shr_u	$push116=, $8, $pop117
	tee_local	$push115=, $8=, $pop116
	i64.const	$push114=, 255
	i64.and 	$push16=, $pop115, $pop114
	i64.const	$push113=, 0
	i64.ne  	$push17=, $pop16, $pop113
	br_if   	3, $pop17
	i32.const	$push121=, 1
	i32.add 	$push120=, $1, $pop121
	tee_local	$push119=, $1=, $pop120
	i32.const	$push118=, 7
	i32.lt_s	$push18=, $pop119, $pop118
	br_if   	0, $pop18
.LBB98_10:
	end_loop
	end_block
	i32.const	$9=, 1
	i32.const	$push125=, 1
	i32.add 	$push124=, $1, $pop125
	tee_local	$push123=, $1=, $pop124
	i32.const	$push122=, 7
	i32.lt_s	$push19=, $pop123, $pop122
	br_if   	0, $pop19
.LBB98_11:
	end_loop
	end_block
	i32.const	$push20=, .L.str.66
	call    	eosio_assert@FUNCTION, $9, $pop20
	i32.const	$push21=, 7
	i32.gt_u	$push22=, $3, $pop21
	i32.const	$push23=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop22, $pop23
	i32.const	$push69=, 24
	i32.add 	$push70=, $11, $pop69
	i32.const	$push143=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop70, $7, $pop143
	i32.const	$push24=, -8
	i32.and 	$push142=, $3, $pop24
	tee_local	$push141=, $9=, $pop142
	i32.const	$push140=, 8
	i32.ne  	$push25=, $pop141, $pop140
	i32.const	$push139=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop25, $pop139
	i32.const	$push71=, 24
	i32.add 	$push72=, $11, $pop71
	i32.const	$push138=, 8
	i32.add 	$push137=, $pop72, $pop138
	tee_local	$push136=, $1=, $pop137
	i32.const	$push135=, 8
	i32.add 	$push26=, $7, $pop135
	i32.const	$push134=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop136, $pop26, $pop134
	i32.const	$push133=, 16
	i32.ne  	$push27=, $9, $pop133
	i32.const	$push132=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop27, $pop132
	i32.const	$push73=, 24
	i32.add 	$push74=, $11, $pop73
	i32.const	$push131=, 16
	i32.add 	$push29=, $pop74, $pop131
	i32.const	$push130=, 16
	i32.add 	$push28=, $7, $pop130
	i32.const	$push129=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop29, $pop28, $pop129
	i32.const	$push30=, 24
	i32.ne  	$push31=, $9, $pop30
	i32.const	$push128=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop31, $pop128
	i32.const	$push127=, 24
	i32.add 	$push32=, $7, $pop127
	i32.const	$push126=, 8
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop32, $pop126
	block   	
	i32.const	$push33=, 513
	i32.lt_u	$push34=, $3, $pop33
	br_if   	0, $pop34
	call    	free@FUNCTION, $7
.LBB98_13:
	end_block
	i32.const	$push75=, 56
	i32.add 	$push76=, $11, $pop75
	i32.const	$push154=, 16
	i32.add 	$push153=, $pop76, $pop154
	tee_local	$push152=, $9=, $pop153
	i32.const	$push151=, 16
	i32.add 	$push35=, $1, $pop151
	i64.load	$push36=, 0($pop35)
	i64.store	0($pop152), $pop36
	i32.const	$push77=, 56
	i32.add 	$push78=, $11, $pop77
	i32.const	$push150=, 8
	i32.add 	$push149=, $pop78, $pop150
	tee_local	$push148=, $7=, $pop149
	i32.const	$push147=, 8
	i32.add 	$push37=, $1, $pop147
	i64.load	$push38=, 0($pop37)
	i64.store	0($pop148), $pop38
	i64.load	$8=, 24($11)
	i64.load	$push39=, 0($1)
	i64.store	56($11), $pop39
	i32.const	$push79=, 80
	i32.add 	$push80=, $11, $pop79
	i32.const	$push146=, 16
	i32.add 	$push40=, $pop80, $pop146
	i64.load	$push41=, 0($9)
	i64.store	0($pop40), $pop41
	i32.const	$push81=, 80
	i32.add 	$push82=, $11, $pop81
	i32.const	$push145=, 8
	i32.add 	$push42=, $pop82, $pop145
	i64.load	$push43=, 0($7)
	i64.store	0($pop42), $pop43
	i64.load	$push44=, 56($11)
	i64.store	80($11), $pop44
	i32.const	$push45=, 1
	i32.shr_s	$push46=, $2, $pop45
	i32.add 	$1=, $0, $pop46
	block   	
	i32.const	$push144=, 1
	i32.and 	$push47=, $2, $pop144
	i32.eqz 	$push166=, $pop47
	br_if   	0, $pop166
	i32.load	$push48=, 0($1)
	i32.add 	$push49=, $pop48, $10
	i32.load	$10=, 0($pop49)
.LBB98_15:
	end_block
	i32.const	$push83=, 104
	i32.add 	$push84=, $11, $pop83
	i32.const	$push50=, 16
	i32.add 	$push51=, $pop84, $pop50
	i32.const	$push85=, 80
	i32.add 	$push86=, $11, $pop85
	i32.const	$push164=, 16
	i32.add 	$push52=, $pop86, $pop164
	i64.load	$push163=, 0($pop52)
	tee_local	$push162=, $5=, $pop163
	i64.store	0($pop51), $pop162
	i32.const	$push87=, 104
	i32.add 	$push88=, $11, $pop87
	i32.const	$push53=, 8
	i32.add 	$push54=, $pop88, $pop53
	i32.const	$push89=, 80
	i32.add 	$push90=, $11, $pop89
	i32.const	$push161=, 8
	i32.add 	$push55=, $pop90, $pop161
	i64.load	$push160=, 0($pop55)
	tee_local	$push159=, $6=, $pop160
	i64.store	0($pop54), $pop159
	i32.const	$push158=, 16
	i32.add 	$push56=, $11, $pop158
	i64.store	0($pop56), $5
	i32.const	$push157=, 8
	i32.add 	$push57=, $11, $pop157
	i64.store	0($pop57), $6
	i64.load	$push156=, 80($11)
	tee_local	$push155=, $5=, $pop156
	i64.store	104($11), $pop155
	i64.store	0($11), $5
	call_indirect	$1, $8, $11, $10
	i32.const	$push66=, 0
	i32.const	$push64=, 128
	i32.add 	$push65=, $11, $pop64
	i32.store	__stack_pointer($pop66), $pop65
	i32.const	$push58=, 1
	.endfunc
.Lfunc_end98:
	.size	_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_14extended_assetEEEEbPT_MT0_FvDpT1_E, .Lfunc_end98-_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_14extended_assetEEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio14execute_actionINS_8exchangeES1_JyNS_11symbol_typeENS_14extended_assetEEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_11symbol_typeENS_14extended_assetEEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_11symbol_typeENS_14extended_assetEEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_11symbol_typeENS_14extended_assetEEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_11symbol_typeENS_14extended_assetEEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_11symbol_typeENS_14extended_assetEEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i64, i64, i64, i32, i32, i32
	i32.const	$push49=, 0
	i32.load	$push50=, __stack_pointer($pop49)
	i32.const	$push51=, 144
	i32.sub 	$push88=, $pop50, $pop51
	tee_local	$push87=, $7=, $pop88
	copy_local	$9=, $pop87
	i32.const	$push52=, 0
	i32.store	__stack_pointer($pop52), $7
	i32.load	$2=, 4($1)
	i32.load	$8=, 0($1)
	block   	
	block   	
	block   	
	block   	
	i32.call	$push86=, action_data_size@FUNCTION
	tee_local	$push85=, $1=, $pop86
	i32.eqz 	$push109=, $pop85
	br_if   	0, $pop109
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $1, $pop0
	br_if   	1, $pop1
	i32.call	$7=, malloc@FUNCTION, $1
	br      	2
.LBB99_3:
	end_block
	i32.const	$7=, 0
	br      	2
.LBB99_4:
	end_block
	i32.const	$push48=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push90=, $7, $pop5
	tee_local	$push89=, $7=, $pop90
	copy_local	$push84=, $pop89
	i32.store	__stack_pointer($pop48), $pop84
.LBB99_5:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $7, $1
.LBB99_6:
	end_block
	i32.const	$push56=, 32
	i32.add 	$push57=, $9, $pop56
	call    	_ZN5eosio6unpackINSt3__15tupleIJyNS_11symbol_typeENS_14extended_assetEEEEEET_PKcj@FUNCTION, $pop57, $7, $1
	block   	
	i32.const	$push6=, 513
	i32.lt_u	$push7=, $1, $pop6
	br_if   	0, $pop7
	call    	free@FUNCTION, $7
.LBB99_8:
	end_block
	i32.const	$push58=, 72
	i32.add 	$push59=, $9, $pop58
	i32.const	$push8=, 20
	i32.add 	$push9=, $pop59, $pop8
	i32.const	$push10=, 68
	i32.add 	$push11=, $9, $pop10
	i32.load	$push12=, 0($pop11)
	i32.store	0($pop9), $pop12
	i32.const	$push60=, 72
	i32.add 	$push61=, $9, $pop60
	i32.const	$push13=, 16
	i32.add 	$push98=, $pop61, $pop13
	tee_local	$push97=, $1=, $pop98
	i32.const	$push14=, 64
	i32.add 	$push15=, $9, $pop14
	i32.load	$push16=, 0($pop15)
	i32.store	0($pop97), $pop16
	i64.load	$4=, 40($9)
	i32.const	$push17=, 84
	i32.add 	$push18=, $9, $pop17
	i32.const	$push19=, 60
	i32.add 	$push20=, $9, $pop19
	i32.load	$push21=, 0($pop20)
	i32.store	0($pop18), $pop21
	i32.const	$push62=, 72
	i32.add 	$push63=, $9, $pop62
	i32.const	$push22=, 8
	i32.add 	$push96=, $pop63, $pop22
	tee_local	$push95=, $7=, $pop96
	i32.const	$push23=, 56
	i32.add 	$push24=, $9, $pop23
	i32.load	$push25=, 0($pop24)
	i32.store	0($pop95), $pop25
	i64.load	$3=, 32($9)
	i32.load	$push26=, 48($9)
	i32.store	72($9), $pop26
	i32.const	$push64=, 32
	i32.add 	$push65=, $9, $pop64
	i32.const	$push94=, 20
	i32.add 	$push27=, $pop65, $pop94
	i32.load	$push28=, 0($pop27)
	i32.store	76($9), $pop28
	i32.const	$push66=, 96
	i32.add 	$push67=, $9, $pop66
	i32.const	$push93=, 16
	i32.add 	$push29=, $pop67, $pop93
	i64.load	$push30=, 0($1)
	i64.store	0($pop29), $pop30
	i32.const	$push68=, 96
	i32.add 	$push69=, $9, $pop68
	i32.const	$push92=, 8
	i32.add 	$push31=, $pop69, $pop92
	i64.load	$push32=, 0($7)
	i64.store	0($pop31), $pop32
	i64.load	$push33=, 72($9)
	i64.store	96($9), $pop33
	i32.const	$push34=, 1
	i32.shr_s	$push35=, $2, $pop34
	i32.add 	$1=, $0, $pop35
	block   	
	i32.const	$push91=, 1
	i32.and 	$push36=, $2, $pop91
	i32.eqz 	$push110=, $pop36
	br_if   	0, $pop110
	i32.load	$push37=, 0($1)
	i32.add 	$push38=, $pop37, $8
	i32.load	$8=, 0($pop38)
.LBB99_10:
	end_block
	i32.const	$push70=, 120
	i32.add 	$push71=, $9, $pop70
	i32.const	$push39=, 16
	i32.add 	$push40=, $pop71, $pop39
	i32.const	$push72=, 96
	i32.add 	$push73=, $9, $pop72
	i32.const	$push108=, 16
	i32.add 	$push41=, $pop73, $pop108
	i64.load	$push107=, 0($pop41)
	tee_local	$push106=, $5=, $pop107
	i64.store	0($pop40), $pop106
	i32.const	$push74=, 120
	i32.add 	$push75=, $9, $pop74
	i32.const	$push42=, 8
	i32.add 	$push43=, $pop75, $pop42
	i32.const	$push76=, 96
	i32.add 	$push77=, $9, $pop76
	i32.const	$push105=, 8
	i32.add 	$push44=, $pop77, $pop105
	i64.load	$push104=, 0($pop44)
	tee_local	$push103=, $6=, $pop104
	i64.store	0($pop43), $pop103
	i32.const	$push78=, 8
	i32.add 	$push79=, $9, $pop78
	i32.const	$push102=, 16
	i32.add 	$push45=, $pop79, $pop102
	i64.store	0($pop45), $5
	i32.const	$push80=, 8
	i32.add 	$push81=, $9, $pop80
	i32.const	$push101=, 8
	i32.add 	$push46=, $pop81, $pop101
	i64.store	0($pop46), $6
	i64.load	$push100=, 96($9)
	tee_local	$push99=, $5=, $pop100
	i64.store	120($9), $pop99
	i64.store	8($9), $5
	i32.const	$push82=, 8
	i32.add 	$push83=, $9, $pop82
	call_indirect	$1, $3, $4, $pop83, $8
	i32.const	$push55=, 0
	i32.const	$push53=, 144
	i32.add 	$push54=, $9, $pop53
	i32.store	__stack_pointer($pop55), $pop54
	i32.const	$push47=, 1
	.endfunc
.Lfunc_end99:
	.size	_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_11symbol_typeENS_14extended_assetEEEEbPT_MT0_FvDpT1_E, .Lfunc_end99-_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_11symbol_typeENS_14extended_assetEEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio14execute_actionINS_8exchangeES1_JyNS_11symbol_typeEdNS_15extended_symbolEEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_11symbol_typeEdNS_15extended_symbolEEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_11symbol_typeEdNS_15extended_symbolEEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_11symbol_typeEdNS_15extended_symbolEEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_11symbol_typeEdNS_15extended_symbolEEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_11symbol_typeEdNS_15extended_symbolEEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i64, i64, f64, i64, i32, i32, i32
	i32.const	$push38=, 0
	i32.load	$push39=, __stack_pointer($pop38)
	i32.const	$push40=, 112
	i32.sub 	$push69=, $pop39, $pop40
	tee_local	$push68=, $10=, $pop69
	copy_local	$9=, $pop68
	i32.const	$push41=, 0
	i32.store	__stack_pointer($pop41), $10
	i32.load	$2=, 4($1)
	i32.load	$8=, 0($1)
	block   	
	block   	
	block   	
	block   	
	i32.call	$push67=, action_data_size@FUNCTION
	tee_local	$push66=, $3=, $pop67
	i32.eqz 	$push87=, $pop66
	br_if   	0, $pop87
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $3, $pop0
	br_if   	1, $pop1
	i32.call	$1=, malloc@FUNCTION, $3
	br      	2
.LBB100_3:
	end_block
	i32.const	$1=, 0
	br      	2
.LBB100_4:
	end_block
	i32.const	$push37=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $3, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push71=, $10, $pop5
	tee_local	$push70=, $1=, $pop71
	copy_local	$push65=, $pop70
	i32.store	__stack_pointer($pop37), $pop65
.LBB100_5:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $1, $3
.LBB100_6:
	end_block
	i32.const	$push6=, 56
	i32.add 	$push76=, $9, $pop6
	tee_local	$push75=, $10=, $pop76
	i64.const	$push7=, 0
	i64.store	0($pop75), $pop7
	i64.const	$push74=, 0
	i64.store	40($9), $pop74
	i64.const	$push73=, 0
	i64.store	24($9), $pop73
	i64.const	$push72=, 0
	i64.store	48($9), $pop72
	i32.store	100($9), $1
	i32.store	96($9), $1
	i32.add 	$push8=, $1, $3
	i32.store	104($9), $pop8
	i32.const	$push45=, 96
	i32.add 	$push46=, $9, $pop45
	i32.store	64($9), $pop46
	i32.const	$push47=, 24
	i32.add 	$push48=, $9, $pop47
	i32.store	80($9), $pop48
	i32.const	$push49=, 80
	i32.add 	$push50=, $9, $pop49
	i32.const	$push51=, 64
	i32.add 	$push52=, $9, $pop51
	call    	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio11symbol_typeEdNS8_15extended_symbolEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_dSA_EEERT_SJ_RNS7_IJDpT0_EEEEUlSJ_E_EEvRKSI_RKT0_@FUNCTION, $pop50, $pop52
	block   	
	i32.const	$push9=, 513
	i32.lt_u	$push10=, $3, $pop9
	br_if   	0, $pop10
	call    	free@FUNCTION, $1
.LBB100_8:
	end_block
	i64.load	$5=, 32($9)
	i32.const	$push11=, 76
	i32.add 	$push12=, $9, $pop11
	i32.const	$push13=, 60
	i32.add 	$push14=, $9, $pop13
	i32.load	$push15=, 0($pop14)
	i32.store	0($pop12), $pop15
	i32.const	$push53=, 64
	i32.add 	$push54=, $9, $pop53
	i32.const	$push16=, 8
	i32.add 	$push80=, $pop54, $pop16
	tee_local	$push79=, $1=, $pop80
	i32.load	$push17=, 0($10)
	i32.store	0($pop79), $pop17
	i64.load	$4=, 24($9)
	i32.load	$push18=, 48($9)
	i32.store	64($9), $pop18
	i32.const	$push19=, 52
	i32.add 	$push20=, $9, $pop19
	i32.load	$push21=, 0($pop20)
	i32.store	68($9), $pop21
	i32.const	$push22=, 40
	i32.add 	$push23=, $9, $pop22
	f64.load	$6=, 0($pop23)
	i32.const	$push55=, 80
	i32.add 	$push56=, $9, $pop55
	i32.const	$push78=, 8
	i32.add 	$push24=, $pop56, $pop78
	i64.load	$push25=, 0($1)
	i64.store	0($pop24), $pop25
	i64.load	$push26=, 64($9)
	i64.store	80($9), $pop26
	i32.const	$push27=, 1
	i32.shr_s	$push28=, $2, $pop27
	i32.add 	$1=, $0, $pop28
	block   	
	i32.const	$push77=, 1
	i32.and 	$push29=, $2, $pop77
	i32.eqz 	$push88=, $pop29
	br_if   	0, $pop88
	i32.load	$push30=, 0($1)
	i32.add 	$push31=, $pop30, $8
	i32.load	$8=, 0($pop31)
.LBB100_10:
	end_block
	i32.const	$push57=, 96
	i32.add 	$push58=, $9, $pop57
	i32.const	$push32=, 8
	i32.add 	$push33=, $pop58, $pop32
	i32.const	$push59=, 80
	i32.add 	$push60=, $9, $pop59
	i32.const	$push86=, 8
	i32.add 	$push34=, $pop60, $pop86
	i64.load	$push85=, 0($pop34)
	tee_local	$push84=, $7=, $pop85
	i64.store	0($pop33), $pop84
	i32.const	$push61=, 8
	i32.add 	$push62=, $9, $pop61
	i32.const	$push83=, 8
	i32.add 	$push35=, $pop62, $pop83
	i64.store	0($pop35), $7
	i64.load	$push82=, 80($9)
	tee_local	$push81=, $7=, $pop82
	i64.store	96($9), $pop81
	i64.store	8($9), $7
	i32.const	$push63=, 8
	i32.add 	$push64=, $9, $pop63
	call_indirect	$1, $4, $5, $6, $pop64, $8
	i32.const	$push44=, 0
	i32.const	$push42=, 112
	i32.add 	$push43=, $9, $pop42
	i32.store	__stack_pointer($pop44), $pop43
	i32.const	$push36=, 1
	.endfunc
.Lfunc_end100:
	.size	_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_11symbol_typeEdNS_15extended_symbolEEEEbPT_MT0_FvDpT1_E, .Lfunc_end100-_ZN5eosio14execute_actionINS_8exchangeES1_JyNS_11symbol_typeEdNS_15extended_symbolEEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio18unpack_action_dataINS_8exchange5tradeEEET_v,"axG",@progbits,_ZN5eosio18unpack_action_dataINS_8exchange5tradeEEET_v,comdat
	.hidden	_ZN5eosio18unpack_action_dataINS_8exchange5tradeEEET_v
	.weak	_ZN5eosio18unpack_action_dataINS_8exchange5tradeEEET_v
	.type	_ZN5eosio18unpack_action_dataINS_8exchange5tradeEEET_v,@function
_ZN5eosio18unpack_action_dataINS_8exchange5tradeEEET_v:
	.param  	i32
	.local  	i32, i32, i32, i32
	i32.const	$push18=, 0
	i32.load	$push19=, __stack_pointer($pop18)
	i32.const	$push20=, 48
	i32.sub 	$push33=, $pop19, $pop20
	tee_local	$push32=, $2=, $pop33
	copy_local	$4=, $pop32
	i32.const	$push21=, 0
	i32.store	__stack_pointer($pop21), $2
	block   	
	block   	
	i32.call	$push31=, action_data_size@FUNCTION
	tee_local	$push30=, $1=, $pop31
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $pop30, $pop0
	br_if   	0, $pop1
	i32.call	$3=, malloc@FUNCTION, $1
	br      	1
.LBB101_2:
	end_block
	i32.const	$push17=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push35=, $2, $pop5
	tee_local	$push34=, $3=, $pop35
	copy_local	$push29=, $pop34
	i32.store	__stack_pointer($pop17), $pop29
.LBB101_3:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $3, $1
	i32.call	$2=, _ZN5eosio8exchange5tradeC2Ev@FUNCTION, $0
	i32.store	4($4), $3
	i32.store	0($4), $3
	i32.add 	$push6=, $3, $1
	i32.store	8($4), $pop6
	i32.store	16($4), $4
	i32.const	$push7=, 8
	i32.add 	$push8=, $2, $pop7
	i32.store	28($4), $pop8
	i32.store	24($4), $2
	i32.const	$push9=, 16
	i32.add 	$push10=, $2, $pop9
	i32.store	32($4), $pop10
	i32.const	$push11=, 40
	i32.add 	$push12=, $2, $pop11
	i32.store	36($4), $pop12
	i32.const	$push13=, 64
	i32.add 	$push14=, $2, $pop13
	i32.store	40($4), $pop14
	i32.const	$push15=, 68
	i32.add 	$push16=, $2, $pop15
	i32.store	44($4), $pop16
	i32.const	$push25=, 24
	i32.add 	$push26=, $4, $pop25
	i32.const	$push27=, 16
	i32.add 	$push28=, $4, $pop27
	call    	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio11symbol_typeERNS6_14extended_assetESA_RmRhEEEZNS6_rsINS6_10datastreamIPKcEENS6_8exchange5tradeELPv0EEERT_SN_RT0_EUlSN_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSN_OSO_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE@FUNCTION, $pop26, $pop28
	i32.const	$push24=, 0
	i32.const	$push22=, 48
	i32.add 	$push23=, $4, $pop22
	i32.store	__stack_pointer($pop24), $pop23
	.endfunc
.Lfunc_end101:
	.size	_ZN5eosio18unpack_action_dataINS_8exchange5tradeEEET_v, .Lfunc_end101-_ZN5eosio18unpack_action_dataINS_8exchange5tradeEEET_v

	.section	.text._ZN5eosio18unpack_action_dataINS_8exchange8upmarginEEET_v,"axG",@progbits,_ZN5eosio18unpack_action_dataINS_8exchange8upmarginEEET_v,comdat
	.hidden	_ZN5eosio18unpack_action_dataINS_8exchange8upmarginEEET_v
	.weak	_ZN5eosio18unpack_action_dataINS_8exchange8upmarginEEET_v
	.type	_ZN5eosio18unpack_action_dataINS_8exchange8upmarginEEET_v,@function
_ZN5eosio18unpack_action_dataINS_8exchange8upmarginEEET_v:
	.param  	i32
	.local  	i32, i32, i32
	i32.const	$push14=, 0
	i32.load	$push15=, __stack_pointer($pop14)
	i32.const	$push16=, 48
	i32.sub 	$push31=, $pop15, $pop16
	tee_local	$push30=, $2=, $pop31
	copy_local	$3=, $pop30
	i32.const	$push17=, 0
	i32.store	__stack_pointer($pop17), $2
	block   	
	block   	
	i32.call	$push29=, action_data_size@FUNCTION
	tee_local	$push28=, $1=, $pop29
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $pop28, $pop0
	br_if   	0, $pop1
	i32.call	$2=, malloc@FUNCTION, $1
	br      	1
.LBB102_2:
	end_block
	i32.const	$push13=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push33=, $2, $pop5
	tee_local	$push32=, $2=, $pop33
	copy_local	$push27=, $pop32
	i32.store	__stack_pointer($pop13), $pop27
.LBB102_3:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $2, $1
	i32.call	$0=, _ZN5eosio8exchange8upmarginC2Ev@FUNCTION, $0
	i32.store	12($3), $2
	i32.store	8($3), $2
	i32.add 	$push6=, $2, $1
	i32.store	16($3), $pop6
	i32.const	$push21=, 8
	i32.add 	$push22=, $3, $pop21
	i32.store	24($3), $pop22
	i32.const	$push7=, 8
	i32.add 	$push8=, $0, $pop7
	i32.store	36($3), $pop8
	i32.store	32($3), $0
	i32.const	$push9=, 16
	i32.add 	$push10=, $0, $pop9
	i32.store	40($3), $pop10
	i32.const	$push11=, 40
	i32.add 	$push12=, $0, $pop11
	i32.store	44($3), $pop12
	i32.const	$push23=, 32
	i32.add 	$push24=, $3, $pop23
	i32.const	$push25=, 24
	i32.add 	$push26=, $3, $pop25
	call    	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio11symbol_typeERNS6_14extended_assetESA_EEEZNS6_rsINS6_10datastreamIPKcEENS6_8exchange8upmarginELPv0EEERT_SL_RT0_EUlSL_E_JLj0ELj1ELj2ELj3EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENSQ_17integral_constantIbLb0EEE@FUNCTION, $pop24, $pop26
	i32.const	$push20=, 0
	i32.const	$push18=, 48
	i32.add 	$push19=, $3, $pop18
	i32.store	__stack_pointer($pop20), $pop19
	.endfunc
.Lfunc_end102:
	.size	_ZN5eosio18unpack_action_dataINS_8exchange8upmarginEEET_v, .Lfunc_end102-_ZN5eosio18unpack_action_dataINS_8exchange8upmarginEEET_v

	.section	.text._ZN5eosio18unpack_action_dataINS_8exchange11covermarginEEET_v,"axG",@progbits,_ZN5eosio18unpack_action_dataINS_8exchange11covermarginEEET_v,comdat
	.hidden	_ZN5eosio18unpack_action_dataINS_8exchange11covermarginEEET_v
	.weak	_ZN5eosio18unpack_action_dataINS_8exchange11covermarginEEET_v
	.type	_ZN5eosio18unpack_action_dataINS_8exchange11covermarginEEET_v,@function
_ZN5eosio18unpack_action_dataINS_8exchange11covermarginEEET_v:
	.param  	i32
	.local  	i32, i32, i32
	i32.const	$push7=, 0
	i32.load	$push13=, __stack_pointer($pop7)
	tee_local	$push12=, $2=, $pop13
	copy_local	$3=, $pop12
	block   	
	block   	
	i32.call	$push11=, action_data_size@FUNCTION
	tee_local	$push10=, $1=, $pop11
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $pop10, $pop0
	br_if   	0, $pop1
	i32.call	$2=, malloc@FUNCTION, $1
	br      	1
.LBB103_2:
	end_block
	i32.const	$push6=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push15=, $2, $pop5
	tee_local	$push14=, $2=, $pop15
	copy_local	$push9=, $pop14
	i32.store	__stack_pointer($pop6), $pop9
.LBB103_3:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $2, $1
	call    	_ZN5eosio6unpackINS_8exchange11covermarginEEET_PKcj@FUNCTION, $0, $2, $1
	i32.const	$push8=, 0
	i32.store	__stack_pointer($pop8), $3
	.endfunc
.Lfunc_end103:
	.size	_ZN5eosio18unpack_action_dataINS_8exchange11covermarginEEET_v, .Lfunc_end103-_ZN5eosio18unpack_action_dataINS_8exchange11covermarginEEET_v

	.section	.text._ZN5eosio8currency5applyEyy,"axG",@progbits,_ZN5eosio8currency5applyEyy,comdat
	.hidden	_ZN5eosio8currency5applyEyy
	.weak	_ZN5eosio8currency5applyEyy
	.type	_ZN5eosio8currency5applyEyy,@function
_ZN5eosio8currency5applyEyy:
	.param  	i32, i64, i64
	.result 	i32
	.local  	i32, i32
	i32.const	$push25=, 0
	i32.const	$push22=, 0
	i32.load	$push23=, __stack_pointer($pop22)
	i32.const	$push24=, 48
	i32.sub 	$push30=, $pop23, $pop24
	tee_local	$push29=, $4=, $pop30
	i32.store	__stack_pointer($pop25), $pop29
	i32.const	$3=, 0
	block   	
	i64.load	$push0=, 0($0)
	i64.ne  	$push1=, $pop0, $1
	br_if   	0, $pop1
	block   	
	block   	
	i64.const	$push2=, -3617168760277827584
	i64.eq  	$push3=, $2, $pop2
	br_if   	0, $pop3
	i64.const	$push4=, 5031766152489992192
	i64.eq  	$push5=, $2, $pop4
	br_if   	1, $pop5
	i64.const	$push6=, 8516769789752901632
	i64.ne  	$push7=, $2, $pop6
	br_if   	2, $pop7
	i32.const	$push16=, .L.str.99
	call    	prints@FUNCTION, $pop16
	call    	_ZN5eosio18unpack_action_dataINS_8currency5issueEEET_v@FUNCTION, $4
	call    	_ZN5eosio8currency2onERKNS0_5issueE@FUNCTION, $0, $4
	i32.const	$3=, 1
	i32.load8_u	$push17=, 24($4)
	i32.const	$push31=, 1
	i32.and 	$push18=, $pop17, $pop31
	i32.eqz 	$push33=, $pop18
	br_if   	2, $pop33
	i32.const	$push19=, 32
	i32.add 	$push20=, $4, $pop19
	i32.load	$push21=, 0($pop20)
	call    	_ZdlPv@FUNCTION, $pop21
	br      	2
.LBB104_6:
	end_block
	i32.const	$push10=, .L.str.100
	call    	prints@FUNCTION, $pop10
	call    	_ZN5eosio18unpack_action_dataINS_8currency8transferEEET_v@FUNCTION, $4
	call    	_ZN5eosio8currency2onERKNS0_8transferE@FUNCTION, $0, $4
	i32.const	$3=, 1
	i32.load8_u	$push11=, 32($4)
	i32.const	$push32=, 1
	i32.and 	$push12=, $pop11, $pop32
	i32.eqz 	$push34=, $pop12
	br_if   	1, $pop34
	i32.const	$push13=, 40
	i32.add 	$push14=, $4, $pop13
	i32.load	$push15=, 0($pop14)
	call    	_ZdlPv@FUNCTION, $pop15
	br      	1
.LBB104_8:
	end_block
	i32.const	$push8=, .L.str.101
	call    	prints@FUNCTION, $pop8
	call    	_ZN5eosio18unpack_action_dataINS_8currency6createEEET_v@FUNCTION, $4
	i64.load	$push9=, 0($4)
	call    	require_auth@FUNCTION, $pop9
	call    	_ZN5eosio8currency15create_currencyERKNS0_6createE@FUNCTION, $0, $4
	i32.const	$3=, 1
.LBB104_9:
	end_block
	i32.const	$push28=, 0
	i32.const	$push26=, 48
	i32.add 	$push27=, $4, $pop26
	i32.store	__stack_pointer($pop28), $pop27
	copy_local	$push35=, $3
	.endfunc
.Lfunc_end104:
	.size	_ZN5eosio8currency5applyEyy, .Lfunc_end104-_ZN5eosio8currency5applyEyy

	.section	.text._ZN5eosio18unpack_action_dataINS_8currency5issueEEET_v,"axG",@progbits,_ZN5eosio18unpack_action_dataINS_8currency5issueEEET_v,comdat
	.hidden	_ZN5eosio18unpack_action_dataINS_8currency5issueEEET_v
	.weak	_ZN5eosio18unpack_action_dataINS_8currency5issueEEET_v
	.type	_ZN5eosio18unpack_action_dataINS_8currency5issueEEET_v,@function
_ZN5eosio18unpack_action_dataINS_8currency5issueEEET_v:
	.param  	i32
	.local  	i32, i32, i64, i32, i32, i32
	i32.const	$push40=, 0
	i32.load	$push41=, __stack_pointer($pop40)
	i32.const	$push42=, 16
	i32.sub 	$push51=, $pop41, $pop42
	tee_local	$push50=, $4=, $pop51
	copy_local	$6=, $pop50
	i32.const	$push43=, 0
	i32.store	__stack_pointer($pop43), $4
	block   	
	block   	
	i32.call	$push49=, action_data_size@FUNCTION
	tee_local	$push48=, $1=, $pop49
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $pop48, $pop0
	br_if   	0, $pop1
	i32.call	$2=, malloc@FUNCTION, $1
	br      	1
.LBB105_2:
	end_block
	i32.const	$push39=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push53=, $4, $pop5
	tee_local	$push52=, $2=, $pop53
	copy_local	$push47=, $pop52
	i32.store	__stack_pointer($pop39), $pop47
.LBB105_3:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $2, $1
	i32.const	$push6=, 16
	i32.add 	$push7=, $0, $pop6
	i64.const	$push8=, 1398362884
	i64.store	0($pop7), $pop8
	i64.const	$push55=, 0
	i64.store	8($0), $pop55
	i32.const	$push54=, 1
	i32.const	$push9=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop54, $pop9
	i64.const	$3=, 5462355
	i32.const	$4=, 0
.LBB105_4:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push10=, $3
	i32.const	$push58=, 24
	i32.shl 	$push11=, $pop10, $pop58
	i32.const	$push57=, -1073741825
	i32.add 	$push12=, $pop11, $pop57
	i32.const	$push56=, 452984830
	i32.gt_u	$push13=, $pop12, $pop56
	br_if   	1, $pop13
	block   	
	i64.const	$push63=, 8
	i64.shr_u	$push62=, $3, $pop63
	tee_local	$push61=, $3=, $pop62
	i64.const	$push60=, 255
	i64.and 	$push14=, $pop61, $pop60
	i64.const	$push59=, 0
	i64.ne  	$push15=, $pop14, $pop59
	br_if   	0, $pop15
.LBB105_6:
	loop    	
	i64.const	$push68=, 8
	i64.shr_u	$push67=, $3, $pop68
	tee_local	$push66=, $3=, $pop67
	i64.const	$push65=, 255
	i64.and 	$push16=, $pop66, $pop65
	i64.const	$push64=, 0
	i64.ne  	$push17=, $pop16, $pop64
	br_if   	3, $pop17
	i32.const	$push72=, 1
	i32.add 	$push71=, $4, $pop72
	tee_local	$push70=, $4=, $pop71
	i32.const	$push69=, 7
	i32.lt_s	$push18=, $pop70, $pop69
	br_if   	0, $pop18
.LBB105_8:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push76=, 1
	i32.add 	$push75=, $4, $pop76
	tee_local	$push74=, $4=, $pop75
	i32.const	$push73=, 7
	i32.lt_s	$push19=, $pop74, $pop73
	br_if   	0, $pop19
	br      	2
.LBB105_9:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB105_10:
	end_block
	i32.const	$push20=, .L.str.66
	call    	eosio_assert@FUNCTION, $5, $pop20
	i32.const	$push21=, 32
	i32.add 	$push22=, $0, $pop21
	i32.const	$push23=, 0
	i32.store	0($pop22), $pop23
	i64.const	$push24=, 0
	i64.store	24($0):p2align=2, $pop24
	i32.store	0($6), $2
	i32.add 	$push92=, $2, $1
	tee_local	$push91=, $4=, $pop92
	i32.store	8($6), $pop91
	i32.const	$push25=, 7
	i32.gt_u	$push26=, $1, $pop25
	i32.const	$push27=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop26, $pop27
	i32.const	$push28=, 8
	i32.call	$drop=, memcpy@FUNCTION, $0, $2, $pop28
	i32.const	$push90=, 8
	i32.add 	$push89=, $2, $pop90
	tee_local	$push88=, $5=, $pop89
	i32.sub 	$push29=, $4, $pop88
	i32.const	$push87=, 7
	i32.gt_u	$push30=, $pop29, $pop87
	i32.const	$push86=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop30, $pop86
	i32.const	$push85=, 8
	i32.add 	$push31=, $0, $pop85
	i32.const	$push84=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop31, $5, $pop84
	i32.const	$push32=, 16
	i32.add 	$push83=, $2, $pop32
	tee_local	$push82=, $5=, $pop83
	i32.sub 	$push33=, $4, $pop82
	i32.const	$push81=, 7
	i32.gt_u	$push34=, $pop33, $pop81
	i32.const	$push80=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop34, $pop80
	i32.const	$push79=, 16
	i32.add 	$push35=, $0, $pop79
	i32.const	$push78=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop35, $5, $pop78
	i32.const	$push36=, 24
	i32.add 	$push37=, $2, $pop36
	i32.store	4($6), $pop37
	i32.const	$push77=, 24
	i32.add 	$push38=, $0, $pop77
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $6, $pop38
	i32.const	$push46=, 0
	i32.const	$push44=, 16
	i32.add 	$push45=, $6, $pop44
	i32.store	__stack_pointer($pop46), $pop45
	.endfunc
.Lfunc_end105:
	.size	_ZN5eosio18unpack_action_dataINS_8currency5issueEEET_v, .Lfunc_end105-_ZN5eosio18unpack_action_dataINS_8currency5issueEEET_v

	.section	.text._ZN5eosio8currency2onERKNS0_5issueE,"axG",@progbits,_ZN5eosio8currency2onERKNS0_5issueE,comdat
	.hidden	_ZN5eosio8currency2onERKNS0_5issueE
	.weak	_ZN5eosio8currency2onERKNS0_5issueE
	.type	_ZN5eosio8currency2onERKNS0_5issueE,@function
_ZN5eosio8currency2onERKNS0_5issueE:
	.param  	i32, i32
	.local  	i32, i64, i64, i32, i32, i64, i64, i64, i64, i32, i32
	i32.const	$push72=, 0
	i32.const	$push69=, 0
	i32.load	$push70=, __stack_pointer($pop69)
	i32.const	$push71=, 128
	i32.sub 	$push110=, $pop70, $pop71
	tee_local	$push109=, $12=, $pop110
	i32.store	__stack_pointer($pop72), $pop109
	i32.const	$push0=, 16
	i32.add 	$push108=, $1, $pop0
	tee_local	$push107=, $11=, $pop108
	i64.load	$8=, 0($pop107)
	i32.const	$6=, 0
	i32.const	$push76=, 88
	i32.add 	$push77=, $12, $pop76
	i32.const	$push106=, 32
	i32.add 	$push1=, $pop77, $pop106
	i32.const	$push105=, 0
	i32.store	0($pop1), $pop105
	i64.const	$push2=, -1
	i64.store	104($12), $pop2
	i64.const	$push104=, 0
	i64.store	112($12), $pop104
	i64.load	$push3=, 0($0)
	i64.store	88($12), $pop3
	i64.const	$push103=, 8
	i64.shr_u	$push102=, $8, $pop103
	tee_local	$push101=, $8=, $pop102
	i64.store	96($12), $pop101
	i32.const	$push78=, 88
	i32.add 	$push79=, $12, $pop78
	i32.const	$push4=, .L.str.80
	i32.call	$push100=, _ZNK5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE3getEyPKc@FUNCTION, $pop79, $8, $pop4
	tee_local	$push99=, $2=, $pop100
	i64.load	$push5=, 32($pop99)
	call    	require_auth@FUNCTION, $pop5
	i32.const	$push98=, 8
	i32.add 	$5=, $1, $pop98
	block   	
	i64.load	$push6=, 8($1)
	i64.const	$push7=, 4611686018427387903
	i64.add 	$push8=, $pop6, $pop7
	i64.const	$push9=, 9223372036854775806
	i64.gt_u	$push10=, $pop8, $pop9
	br_if   	0, $pop10
	i64.load	$push11=, 0($11)
	i64.const	$push111=, 8
	i64.shr_u	$8=, $pop11, $pop111
	i32.const	$11=, 0
.LBB106_2:
	block   	
	loop    	
	i32.wrap/i64	$push12=, $8
	i32.const	$push114=, 24
	i32.shl 	$push13=, $pop12, $pop114
	i32.const	$push113=, -1073741825
	i32.add 	$push14=, $pop13, $pop113
	i32.const	$push112=, 452984830
	i32.gt_u	$push15=, $pop14, $pop112
	br_if   	1, $pop15
	block   	
	i64.const	$push119=, 8
	i64.shr_u	$push118=, $8, $pop119
	tee_local	$push117=, $8=, $pop118
	i64.const	$push116=, 255
	i64.and 	$push16=, $pop117, $pop116
	i64.const	$push115=, 0
	i64.ne  	$push17=, $pop16, $pop115
	br_if   	0, $pop17
.LBB106_4:
	loop    	
	i64.const	$push124=, 8
	i64.shr_u	$push123=, $8, $pop124
	tee_local	$push122=, $8=, $pop123
	i64.const	$push121=, 255
	i64.and 	$push18=, $pop122, $pop121
	i64.const	$push120=, 0
	i64.ne  	$push19=, $pop18, $pop120
	br_if   	3, $pop19
	i32.const	$push128=, 1
	i32.add 	$push127=, $11, $pop128
	tee_local	$push126=, $11=, $pop127
	i32.const	$push125=, 7
	i32.lt_s	$push20=, $pop126, $pop125
	br_if   	0, $pop20
.LBB106_6:
	end_loop
	end_block
	i32.const	$6=, 1
	i32.const	$push132=, 1
	i32.add 	$push131=, $11, $pop132
	tee_local	$push130=, $11=, $pop131
	i32.const	$push129=, 7
	i32.lt_s	$push21=, $pop130, $pop129
	br_if   	0, $pop21
	br      	2
.LBB106_7:
	end_loop
	end_block
	i32.const	$6=, 0
.LBB106_8:
	end_block
	i32.const	$push22=, .L.str.18
	call    	eosio_assert@FUNCTION, $6, $pop22
	i64.load	$push23=, 0($5)
	i64.const	$push146=, 0
	i64.gt_s	$push24=, $pop23, $pop146
	i32.const	$push25=, .L.str.102
	call    	eosio_assert@FUNCTION, $pop24, $pop25
	i32.store	80($12), $1
	i32.const	$push80=, 88
	i32.add 	$push81=, $12, $pop80
	i64.const	$push145=, 0
	i32.const	$push82=, 80
	i32.add 	$push83=, $12, $pop82
	call    	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE6modifyIZNS1_2onERKNS1_5issueEEUlRT_E_EEvRKS2_yOS8_@FUNCTION, $pop81, $2, $pop145, $pop83
	i32.const	$push144=, 32
	i32.add 	$push143=, $2, $pop144
	tee_local	$push142=, $11=, $pop143
	i64.load	$8=, 0($pop142)
	i32.const	$push84=, 64
	i32.add 	$push85=, $12, $pop84
	i32.const	$push141=, 8
	i32.add 	$push140=, $pop85, $pop141
	tee_local	$push139=, $6=, $pop140
	i32.const	$push138=, 8
	i32.add 	$push26=, $5, $pop138
	i64.load	$push27=, 0($pop26)
	i64.store	0($pop139), $pop27
	i64.load	$push28=, 0($5)
	i64.store	64($12), $pop28
	i32.const	$push86=, 16
	i32.add 	$push87=, $12, $pop86
	i32.const	$push137=, 8
	i32.add 	$push29=, $pop87, $pop137
	i64.load	$push30=, 0($6)
	i64.store	0($pop29), $pop30
	i32.load	$push31=, 64($12)
	i32.store	16($12), $pop31
	i32.load	$push32=, 68($12)
	i32.store	20($12), $pop32
	i32.const	$push88=, 16
	i32.add 	$push89=, $12, $pop88
	call    	_ZN5eosio8currency11add_balanceEyNS_5assetERKNS0_14currency_statsEy@FUNCTION, $0, $8, $pop89, $2, $8
	block   	
	i64.load	$push136=, 0($1)
	tee_local	$push135=, $3=, $pop136
	i64.load	$push134=, 0($11)
	tee_local	$push133=, $4=, $pop134
	i64.eq  	$push33=, $pop135, $pop133
	br_if   	0, $pop33
	i32.const	$push90=, 48
	i32.add 	$push91=, $12, $pop90
	i32.const	$push34=, 8
	i32.add 	$push37=, $pop91, $pop34
	i32.const	$push147=, 8
	i32.add 	$push35=, $5, $pop147
	i64.load	$push36=, 0($pop35)
	i64.store	0($pop37), $pop36
	i64.load	$push38=, 0($5)
	i64.store	48($12), $pop38
	i32.const	$push92=, 32
	i32.add 	$push93=, $12, $pop92
	i32.const	$push39=, 24
	i32.add 	$push40=, $1, $pop39
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop93, $pop40
	i64.const	$8=, 0
	i64.const	$7=, 59
	i32.const	$11=, .L.str.20
	i64.const	$9=, 0
.LBB106_10:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push148=, 5
	i64.gt_u	$push41=, $8, $pop148
	br_if   	0, $pop41
	i32.load8_s	$push153=, 0($11)
	tee_local	$push152=, $1=, $pop153
	i32.const	$push151=, -97
	i32.add 	$push43=, $pop152, $pop151
	i32.const	$push150=, 255
	i32.and 	$push44=, $pop43, $pop150
	i32.const	$push149=, 25
	i32.gt_u	$push45=, $pop44, $pop149
	br_if   	1, $pop45
	i32.const	$push154=, 165
	i32.add 	$1=, $1, $pop154
	br      	2
.LBB106_13:
	end_block
	i64.const	$10=, 0
	i64.const	$push155=, 11
	i64.le_u	$push42=, $8, $pop155
	br_if   	2, $pop42
	br      	3
.LBB106_14:
	end_block
	i32.const	$push160=, 208
	i32.add 	$push46=, $1, $pop160
	i32.const	$push159=, 0
	i32.const	$push158=, -49
	i32.add 	$push47=, $1, $pop158
	i32.const	$push157=, 255
	i32.and 	$push48=, $pop47, $pop157
	i32.const	$push156=, 5
	i32.lt_u	$push49=, $pop48, $pop156
	i32.select	$1=, $pop46, $pop159, $pop49
.LBB106_15:
	end_block
	i64.extend_u/i32	$push50=, $1
	i64.const	$push162=, 56
	i64.shl 	$push51=, $pop50, $pop162
	i64.const	$push161=, 56
	i64.shr_s	$10=, $pop51, $pop161
.LBB106_16:
	end_block
	i64.const	$push164=, 31
	i64.and 	$push53=, $10, $pop164
	i64.const	$push163=, 4294967295
	i64.and 	$push52=, $7, $pop163
	i64.shl 	$10=, $pop53, $pop52
.LBB106_17:
	end_block
	i32.const	$push170=, 1
	i32.add 	$11=, $11, $pop170
	i64.const	$push169=, 1
	i64.add 	$8=, $8, $pop169
	i64.or  	$9=, $10, $9
	i64.const	$push168=, -5
	i64.add 	$push167=, $7, $pop168
	tee_local	$push166=, $7=, $pop167
	i64.const	$push165=, -6
	i64.ne  	$push54=, $pop166, $pop165
	br_if   	0, $pop54
	end_loop
	i32.const	$push55=, 8
	i32.add 	$push56=, $12, $pop55
	i32.const	$push94=, 48
	i32.add 	$push95=, $12, $pop94
	i32.const	$push171=, 8
	i32.add 	$push57=, $pop95, $pop171
	i64.load	$push58=, 0($pop57)
	i64.store	0($pop56), $pop58
	i64.load	$push59=, 48($12)
	i64.store	0($12), $pop59
	i32.const	$push96=, 32
	i32.add 	$push97=, $12, $pop96
	call    	_ZN5eosio8currency15inline_transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy@FUNCTION, $0, $4, $3, $12, $pop97, $9
	i32.load8_u	$push61=, 32($12)
	i32.const	$push60=, 1
	i32.and 	$push62=, $pop61, $pop60
	i32.eqz 	$push182=, $pop62
	br_if   	0, $pop182
	i32.load	$push63=, 40($12)
	call    	_ZdlPv@FUNCTION, $pop63
.LBB106_20:
	end_block
	block   	
	i32.load	$push173=, 112($12)
	tee_local	$push172=, $5=, $pop173
	i32.eqz 	$push183=, $pop172
	br_if   	0, $pop183
	block   	
	block   	
	i32.const	$push64=, 116
	i32.add 	$push177=, $12, $pop64
	tee_local	$push176=, $6=, $pop177
	i32.load	$push175=, 0($pop176)
	tee_local	$push174=, $11=, $pop175
	i32.eq  	$push65=, $pop174, $5
	br_if   	0, $pop65
.LBB106_23:
	loop    	
	i32.const	$push181=, -24
	i32.add 	$push180=, $11, $pop181
	tee_local	$push179=, $11=, $pop180
	i32.load	$1=, 0($pop179)
	i32.const	$push178=, 0
	i32.store	0($11), $pop178
	block   	
	i32.eqz 	$push184=, $1
	br_if   	0, $pop184
	call    	_ZdlPv@FUNCTION, $1
.LBB106_25:
	end_block
	i32.ne  	$push66=, $5, $11
	br_if   	0, $pop66
	end_loop
	i32.const	$push67=, 112
	i32.add 	$push68=, $12, $pop67
	i32.load	$11=, 0($pop68)
	br      	1
.LBB106_27:
	end_block
	copy_local	$11=, $5
.LBB106_28:
	end_block
	i32.store	0($6), $5
	call    	_ZdlPv@FUNCTION, $11
.LBB106_29:
	end_block
	i32.const	$push75=, 0
	i32.const	$push73=, 128
	i32.add 	$push74=, $12, $pop73
	i32.store	__stack_pointer($pop75), $pop74
	.endfunc
.Lfunc_end106:
	.size	_ZN5eosio8currency2onERKNS0_5issueE, .Lfunc_end106-_ZN5eosio8currency2onERKNS0_5issueE

	.section	.text._ZN5eosio18unpack_action_dataINS_8currency6createEEET_v,"axG",@progbits,_ZN5eosio18unpack_action_dataINS_8currency6createEEET_v,comdat
	.hidden	_ZN5eosio18unpack_action_dataINS_8currency6createEEET_v
	.weak	_ZN5eosio18unpack_action_dataINS_8currency6createEEET_v
	.type	_ZN5eosio18unpack_action_dataINS_8currency6createEEET_v,@function
_ZN5eosio18unpack_action_dataINS_8currency6createEEET_v:
	.param  	i32
	.local  	i32, i32, i64, i32, i32, i32
	i32.const	$push25=, 0
	i32.load	$push26=, __stack_pointer($pop25)
	i32.const	$push27=, 16
	i32.sub 	$push36=, $pop26, $pop27
	tee_local	$push35=, $4=, $pop36
	copy_local	$6=, $pop35
	i32.const	$push28=, 0
	i32.store	__stack_pointer($pop28), $4
	block   	
	block   	
	i32.call	$push34=, action_data_size@FUNCTION
	tee_local	$push33=, $1=, $pop34
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $pop33, $pop0
	br_if   	0, $pop1
	i32.call	$2=, malloc@FUNCTION, $1
	br      	1
.LBB107_2:
	end_block
	i32.const	$push24=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push38=, $4, $pop5
	tee_local	$push37=, $2=, $pop38
	copy_local	$push32=, $pop37
	i32.store	__stack_pointer($pop24), $pop32
.LBB107_3:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $2, $1
	i32.const	$push6=, 16
	i32.add 	$push7=, $0, $pop6
	i64.const	$push8=, 1398362884
	i64.store	0($pop7), $pop8
	i64.const	$push40=, 0
	i64.store	8($0), $pop40
	i32.const	$push39=, 1
	i32.const	$push9=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop39, $pop9
	i64.const	$3=, 5462355
	i32.const	$4=, 0
.LBB107_4:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push10=, $3
	i32.const	$push43=, 24
	i32.shl 	$push11=, $pop10, $pop43
	i32.const	$push42=, -1073741825
	i32.add 	$push12=, $pop11, $pop42
	i32.const	$push41=, 452984830
	i32.gt_u	$push13=, $pop12, $pop41
	br_if   	1, $pop13
	block   	
	i64.const	$push48=, 8
	i64.shr_u	$push47=, $3, $pop48
	tee_local	$push46=, $3=, $pop47
	i64.const	$push45=, 255
	i64.and 	$push14=, $pop46, $pop45
	i64.const	$push44=, 0
	i64.ne  	$push15=, $pop14, $pop44
	br_if   	0, $pop15
.LBB107_6:
	loop    	
	i64.const	$push53=, 8
	i64.shr_u	$push52=, $3, $pop53
	tee_local	$push51=, $3=, $pop52
	i64.const	$push50=, 255
	i64.and 	$push16=, $pop51, $pop50
	i64.const	$push49=, 0
	i64.ne  	$push17=, $pop16, $pop49
	br_if   	3, $pop17
	i32.const	$push57=, 1
	i32.add 	$push56=, $4, $pop57
	tee_local	$push55=, $4=, $pop56
	i32.const	$push54=, 7
	i32.lt_s	$push18=, $pop55, $pop54
	br_if   	0, $pop18
.LBB107_8:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push61=, 1
	i32.add 	$push60=, $4, $pop61
	tee_local	$push59=, $4=, $pop60
	i32.const	$push58=, 7
	i32.lt_s	$push19=, $pop59, $pop58
	br_if   	0, $pop19
	br      	2
.LBB107_9:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB107_10:
	end_block
	i32.const	$push20=, .L.str.66
	call    	eosio_assert@FUNCTION, $5, $pop20
	i32.const	$push21=, 1
	i32.store8	26($0), $pop21
	i32.const	$push22=, 257
	i32.store16	24($0), $pop22
	i32.store	4($6), $2
	i32.store	0($6), $2
	i32.add 	$push23=, $2, $1
	i32.store	8($6), $pop23
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency6createE@FUNCTION, $6, $0
	i32.const	$push31=, 0
	i32.const	$push29=, 16
	i32.add 	$push30=, $6, $pop29
	i32.store	__stack_pointer($pop31), $pop30
	.endfunc
.Lfunc_end107:
	.size	_ZN5eosio18unpack_action_dataINS_8currency6createEEET_v, .Lfunc_end107-_ZN5eosio18unpack_action_dataINS_8currency6createEEET_v

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency6createE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency6createE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency6createE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency6createE
	.type	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency6createE,@function
_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency6createE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push69=, 8
	i32.add 	$push68=, $pop8, $pop69
	tee_local	$push67=, $2=, $pop68
	i32.store	4($0), $pop67
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push66=, 7
	i32.gt_u	$push11=, $pop10, $pop66
	i32.const	$push65=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop11, $pop65
	i32.const	$push64=, 8
	i32.add 	$push12=, $1, $pop64
	i32.load	$push13=, 4($0)
	i32.const	$push63=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop13, $pop63
	i32.load	$push14=, 4($0)
	i32.const	$push62=, 8
	i32.add 	$push61=, $pop14, $pop62
	tee_local	$push60=, $2=, $pop61
	i32.store	4($0), $pop60
	i32.load	$push15=, 8($0)
	i32.sub 	$push16=, $pop15, $2
	i32.const	$push59=, 7
	i32.gt_u	$push17=, $pop16, $pop59
	i32.const	$push58=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop17, $pop58
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.load	$push20=, 4($0)
	i32.const	$push57=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop19, $pop20, $pop57
	i32.load	$push21=, 4($0)
	i32.const	$push56=, 8
	i32.add 	$push55=, $pop21, $pop56
	tee_local	$push54=, $2=, $pop55
	i32.store	4($0), $pop54
	i32.load	$push22=, 8($0)
	i32.ne  	$push23=, $pop22, $2
	i32.const	$push53=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop23, $pop53
	i32.const	$push24=, 24
	i32.add 	$push25=, $1, $pop24
	i32.load	$push26=, 4($0)
	i32.const	$push27=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop25, $pop26, $pop27
	i32.load	$push28=, 4($0)
	i32.const	$push52=, 1
	i32.add 	$push51=, $pop28, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.store	4($0), $pop50
	i32.load	$push29=, 8($0)
	i32.ne  	$push30=, $pop29, $2
	i32.const	$push49=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop30, $pop49
	i32.const	$push31=, 25
	i32.add 	$push32=, $1, $pop31
	i32.load	$push33=, 4($0)
	i32.const	$push48=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop32, $pop33, $pop48
	i32.load	$push34=, 4($0)
	i32.const	$push47=, 1
	i32.add 	$push46=, $pop34, $pop47
	tee_local	$push45=, $2=, $pop46
	i32.store	4($0), $pop45
	i32.load	$push35=, 8($0)
	i32.ne  	$push36=, $pop35, $2
	i32.const	$push44=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop36, $pop44
	i32.const	$push37=, 26
	i32.add 	$push38=, $1, $pop37
	i32.load	$push39=, 4($0)
	i32.const	$push43=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop38, $pop39, $pop43
	i32.load	$push40=, 4($0)
	i32.const	$push42=, 1
	i32.add 	$push41=, $pop40, $pop42
	i32.store	4($0), $pop41
	copy_local	$push70=, $0
	.endfunc
.Lfunc_end108:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency6createE, .Lfunc_end108-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency6createE

	.section	.text._ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE6modifyIZNS1_2onERKNS1_5issueEEUlRT_E_EEvRKS2_yOS8_,"axG",@progbits,_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE6modifyIZNS1_2onERKNS1_5issueEEUlRT_E_EEvRKS2_yOS8_,comdat
	.hidden	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE6modifyIZNS1_2onERKNS1_5issueEEUlRT_E_EEvRKS2_yOS8_
	.weak	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE6modifyIZNS1_2onERKNS1_5issueEEUlRT_E_EEvRKS2_yOS8_
	.type	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE6modifyIZNS1_2onERKNS1_5issueEEUlRT_E_EEvRKS2_yOS8_,@function
_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE6modifyIZNS1_2onERKNS1_5issueEEUlRT_E_EEvRKS2_yOS8_:
	.param  	i32, i32, i64, i32
	.local  	i64, i32
	i32.const	$push26=, 0
	i32.const	$push23=, 0
	i32.load	$push24=, __stack_pointer($pop23)
	i32.const	$push25=, 64
	i32.sub 	$push36=, $pop24, $pop25
	tee_local	$push35=, $5=, $pop36
	i32.store	__stack_pointer($pop26), $pop35
	i32.load	$push0=, 48($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.84
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.85
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	i64.load	$push7=, 0($1)
	i32.load	$push8=, 0($3)
	i64.load	$push9=, 8($pop8)
	i64.add 	$push10=, $pop7, $pop9
	i64.store	0($1), $pop10
	i64.load	$4=, 8($1)
	i32.const	$push12=, 1
	i32.const	$push11=, .L.str.86
	call    	eosio_assert@FUNCTION, $pop12, $pop11
	i32.const	$push13=, 45
	i32.add 	$push14=, $5, $pop13
	i32.store	56($5), $pop14
	i32.store	52($5), $5
	i32.store	48($5), $5
	i32.const	$push30=, 48
	i32.add 	$push31=, $5, $pop30
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency14currency_statsE@FUNCTION, $pop31, $1
	i32.load	$push15=, 52($1)
	i32.const	$push34=, 45
	call    	db_update_i64@FUNCTION, $pop15, $2, $5, $pop34
	block   	
	i64.const	$push16=, 8
	i64.shr_u	$push33=, $4, $pop16
	tee_local	$push32=, $2=, $pop33
	i64.load	$push17=, 16($0)
	i64.lt_u	$push18=, $pop32, $pop17
	br_if   	0, $pop18
	i32.const	$push21=, 16
	i32.add 	$push22=, $0, $pop21
	i64.const	$push19=, 1
	i64.add 	$push20=, $2, $pop19
	i64.store	0($pop22), $pop20
.LBB109_2:
	end_block
	i32.const	$push29=, 0
	i32.const	$push27=, 64
	i32.add 	$push28=, $5, $pop27
	i32.store	__stack_pointer($pop29), $pop28
	.endfunc
.Lfunc_end109:
	.size	_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE6modifyIZNS1_2onERKNS1_5issueEEUlRT_E_EEvRKS2_yOS8_, .Lfunc_end109-_ZN5eosio11multi_indexILy14289235522390851584ENS_8currency14currency_statsEJEE6modifyIZNS1_2onERKNS1_5issueEEUlRT_E_EEvRKS2_yOS8_

	.section	.text._ZN5eosio8currency15inline_transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy,"axG",@progbits,_ZN5eosio8currency15inline_transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy,comdat
	.hidden	_ZN5eosio8currency15inline_transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy
	.weak	_ZN5eosio8currency15inline_transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy
	.type	_ZN5eosio8currency15inline_transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy,@function
_ZN5eosio8currency15inline_transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy:
	.param  	i32, i64, i64, i32, i32, i64
	.local  	i64, i32, i64, i64, i64, i64, i32
	i32.const	$push65=, 0
	i32.const	$push62=, 0
	i32.load	$push63=, __stack_pointer($pop62)
	i32.const	$push64=, 112
	i32.sub 	$push98=, $pop63, $pop64
	tee_local	$push97=, $12=, $pop98
	i32.store	__stack_pointer($pop65), $pop97
	i64.load	$6=, 0($0)
	i64.const	$9=, 0
	i64.const	$8=, 59
	i32.const	$0=, .L.str.64
	i64.const	$10=, 0
.LBB110_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push99=, 7
	i64.gt_u	$push0=, $9, $pop99
	br_if   	0, $pop0
	i32.load8_s	$push104=, 0($0)
	tee_local	$push103=, $7=, $pop104
	i32.const	$push102=, -97
	i32.add 	$push2=, $pop103, $pop102
	i32.const	$push101=, 255
	i32.and 	$push3=, $pop2, $pop101
	i32.const	$push100=, 25
	i32.gt_u	$push4=, $pop3, $pop100
	br_if   	1, $pop4
	i32.const	$push105=, 165
	i32.add 	$7=, $7, $pop105
	br      	2
.LBB110_4:
	end_block
	i64.const	$11=, 0
	i64.const	$push106=, 11
	i64.le_u	$push1=, $9, $pop106
	br_if   	2, $pop1
	br      	3
.LBB110_5:
	end_block
	i32.const	$push111=, 208
	i32.add 	$push5=, $7, $pop111
	i32.const	$push110=, 0
	i32.const	$push109=, -49
	i32.add 	$push6=, $7, $pop109
	i32.const	$push108=, 255
	i32.and 	$push7=, $pop6, $pop108
	i32.const	$push107=, 5
	i32.lt_u	$push8=, $pop7, $pop107
	i32.select	$7=, $pop5, $pop110, $pop8
.LBB110_6:
	end_block
	i64.extend_u/i32	$push9=, $7
	i64.const	$push113=, 56
	i64.shl 	$push10=, $pop9, $pop113
	i64.const	$push112=, 56
	i64.shr_s	$11=, $pop10, $pop112
.LBB110_7:
	end_block
	i64.const	$push115=, 31
	i64.and 	$push12=, $11, $pop115
	i64.const	$push114=, 4294967295
	i64.and 	$push11=, $8, $pop114
	i64.shl 	$11=, $pop12, $pop11
.LBB110_8:
	end_block
	i32.const	$push121=, 1
	i32.add 	$0=, $0, $pop121
	i64.const	$push120=, 1
	i64.add 	$9=, $9, $pop120
	i64.or  	$10=, $11, $10
	i64.const	$push119=, -5
	i64.add 	$push118=, $8, $pop119
	tee_local	$push117=, $8=, $pop118
	i64.const	$push116=, -6
	i64.ne  	$push13=, $pop117, $pop116
	br_if   	0, $pop13
	end_loop
	i32.const	$push69=, 8
	i32.add 	$push70=, $12, $pop69
	i32.const	$push17=, 28
	i32.add 	$push18=, $pop70, $pop17
	i32.const	$push14=, 12
	i32.add 	$push15=, $3, $pop14
	i32.load	$push16=, 0($pop15)
	i32.store	0($pop18), $pop16
	i32.const	$push71=, 8
	i32.add 	$push72=, $12, $pop71
	i32.const	$push22=, 24
	i32.add 	$push23=, $pop72, $pop22
	i32.const	$push19=, 8
	i32.add 	$push20=, $3, $pop19
	i32.load	$push21=, 0($pop20)
	i32.store	0($pop23), $pop21
	i32.const	$push73=, 8
	i32.add 	$push74=, $12, $pop73
	i32.const	$push27=, 20
	i32.add 	$push28=, $pop74, $pop27
	i32.const	$push24=, 4
	i32.add 	$push25=, $3, $pop24
	i32.load	$push26=, 0($pop25)
	i32.store	0($pop28), $pop26
	i64.store	16($12), $2
	i64.store	8($12), $1
	i32.load	$push29=, 0($3)
	i32.store	24($12), $pop29
	i32.const	$push75=, 8
	i32.add 	$push76=, $12, $pop75
	i32.const	$push30=, 32
	i32.add 	$push31=, $pop76, $pop30
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop31, $4
	i64.store	64($12), $10
	i64.store	56($12), $6
	i32.const	$push32=, 16
	i32.call	$push140=, _Znwj@FUNCTION, $pop32
	tee_local	$push139=, $0=, $pop140
	i64.store	0($pop139), $1
	i64.store	8($0), $5
	i32.const	$push77=, 56
	i32.add 	$push78=, $12, $pop77
	i32.const	$push138=, 32
	i32.add 	$push33=, $pop78, $pop138
	i32.const	$push34=, 0
	i32.store	0($pop33), $pop34
	i32.const	$push79=, 56
	i32.add 	$push80=, $12, $pop79
	i32.const	$push137=, 24
	i32.add 	$push35=, $pop80, $pop137
	i32.const	$push136=, 16
	i32.add 	$push135=, $0, $pop136
	tee_local	$push134=, $7=, $pop135
	i32.store	0($pop35), $pop134
	i32.const	$push81=, 56
	i32.add 	$push82=, $12, $pop81
	i32.const	$push133=, 20
	i32.add 	$push36=, $pop82, $pop133
	i32.store	0($pop36), $7
	i32.store	72($12), $0
	i32.const	$push132=, 0
	i32.store	84($12), $pop132
	i32.const	$push83=, 56
	i32.add 	$push84=, $12, $pop83
	i32.const	$push37=, 36
	i32.add 	$push38=, $pop84, $pop37
	i32.const	$push131=, 0
	i32.store	0($pop38), $pop131
	i32.const	$push85=, 8
	i32.add 	$push86=, $12, $pop85
	i32.const	$push130=, 36
	i32.add 	$push41=, $pop86, $pop130
	i32.load	$push42=, 0($pop41)
	i32.load8_u	$push129=, 40($12)
	tee_local	$push128=, $0=, $pop129
	i32.const	$push127=, 1
	i32.shr_u	$push40=, $pop128, $pop127
	i32.const	$push126=, 1
	i32.and 	$push39=, $0, $pop126
	i32.select	$push125=, $pop42, $pop40, $pop39
	tee_local	$push124=, $7=, $pop125
	i32.const	$push123=, 32
	i32.add 	$0=, $pop124, $pop123
	i64.extend_u/i32	$9=, $7
	i32.const	$push87=, 56
	i32.add 	$push88=, $12, $pop87
	i32.const	$push122=, 28
	i32.add 	$7=, $pop88, $pop122
.LBB110_10:
	loop    	
	i32.const	$push145=, 1
	i32.add 	$0=, $0, $pop145
	i64.const	$push144=, 7
	i64.shr_u	$push143=, $9, $pop144
	tee_local	$push142=, $9=, $pop143
	i64.const	$push141=, 0
	i64.ne  	$push43=, $pop142, $pop141
	br_if   	0, $pop43
	end_loop
	block   	
	block   	
	i32.eqz 	$push154=, $0
	br_if   	0, $pop154
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $7, $0
	i32.const	$push44=, 88
	i32.add 	$push45=, $12, $pop44
	i32.load	$7=, 0($pop45)
	i32.const	$push46=, 84
	i32.add 	$push47=, $12, $pop46
	i32.load	$0=, 0($pop47)
	br      	1
.LBB110_13:
	end_block
	i32.const	$7=, 0
	i32.const	$0=, 0
.LBB110_14:
	end_block
	i32.store	100($12), $0
	i32.store	96($12), $0
	i32.store	104($12), $7
	i32.const	$push89=, 96
	i32.add 	$push90=, $12, $pop89
	i32.const	$push91=, 8
	i32.add 	$push92=, $12, $pop91
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_8currency8transferE@FUNCTION, $pop90, $pop92
	block   	
	i32.const	$push48=, 40
	i32.add 	$push49=, $12, $pop48
	i32.load8_u	$push50=, 0($pop49)
	i32.const	$push51=, 1
	i32.and 	$push52=, $pop50, $pop51
	i32.eqz 	$push155=, $pop52
	br_if   	0, $pop155
	i32.const	$push53=, 48
	i32.add 	$push54=, $12, $pop53
	i32.load	$push55=, 0($pop54)
	call    	_ZdlPv@FUNCTION, $pop55
.LBB110_16:
	end_block
	i32.const	$push93=, 8
	i32.add 	$push94=, $12, $pop93
	i32.const	$push95=, 56
	i32.add 	$push96=, $12, $pop95
	call    	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop94, $pop96
	i32.load	$push149=, 8($12)
	tee_local	$push148=, $0=, $pop149
	i32.load	$push56=, 12($12)
	i32.sub 	$push57=, $pop56, $0
	call    	send_inline@FUNCTION, $pop148, $pop57
	block   	
	i32.load	$push147=, 8($12)
	tee_local	$push146=, $0=, $pop147
	i32.eqz 	$push156=, $pop146
	br_if   	0, $pop156
	i32.store	12($12), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB110_18:
	end_block
	block   	
	i32.load	$push151=, 84($12)
	tee_local	$push150=, $0=, $pop151
	i32.eqz 	$push157=, $pop150
	br_if   	0, $pop157
	i32.const	$push58=, 88
	i32.add 	$push59=, $12, $pop58
	i32.store	0($pop59), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB110_20:
	end_block
	block   	
	i32.load	$push153=, 72($12)
	tee_local	$push152=, $0=, $pop153
	i32.eqz 	$push158=, $pop152
	br_if   	0, $pop158
	i32.const	$push60=, 76
	i32.add 	$push61=, $12, $pop60
	i32.store	0($pop61), $0
	call    	_ZdlPv@FUNCTION, $0
.LBB110_22:
	end_block
	i32.const	$push68=, 0
	i32.const	$push66=, 112
	i32.add 	$push67=, $12, $pop66
	i32.store	__stack_pointer($pop68), $pop67
	.endfunc
.Lfunc_end110:
	.size	_ZN5eosio8currency15inline_transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy, .Lfunc_end110-_ZN5eosio8currency15inline_transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEy

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
	.type	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE,@function
_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE:
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
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE@FUNCTION, $0, $pop43
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
.LBB111_3:
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
.LBB111_6:
	end_block
	i32.load	$push28=, 8($1)
	i32.const	$push29=, 0
	i32.store8	0($pop28), $pop29
	i32.const	$push57=, 0
	i32.store	4($1), $pop57
	i32.const	$push30=, 8
	i32.add 	$4=, $1, $pop30
.LBB111_7:
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
.LBB111_8:
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
.LBB111_9:
	end_block
	copy_local	$3=, $2
	copy_local	$5=, $6
.LBB111_10:
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
.LBB111_12:
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
.LBB111_14:
	end_block
	i32.load	$push18=, 8($1)
	i32.const	$push71=, 0
	i32.store8	0($pop18), $pop71
	i32.const	$push70=, 0
	i32.store	4($1), $pop70
.LBB111_15:
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
.LBB111_16:
	end_block
	i32.store	20($7), $4
	call    	_ZdlPv@FUNCTION, $4
.LBB111_17:
	end_block
	i32.const	$push41=, 0
	i32.const	$push39=, 32
	i32.add 	$push40=, $7, $pop39
	i32.store	__stack_pointer($pop41), $pop40
	return  	$0
.LBB111_18:
	end_block
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $7
	unreachable
	.endfunc
.Lfunc_end111:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE, .Lfunc_end111-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE

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
.LBB112_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $5, $pop1
	i32.const	$push37=, .L.str.103
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
.LBB112_4:
	end_block
	i32.ge_u	$push9=, $3, $2
	br_if   	0, $pop9
	i32.const	$push10=, 4
	i32.add 	$push11=, $1, $pop10
	i32.add 	$push48=, $4, $3
	tee_local	$push47=, $7=, $pop48
	i32.store	0($pop11), $pop47
.LBB112_6:
	end_block
	i32.const	$push16=, 8
	i32.add 	$push17=, $0, $pop16
	i32.load	$push18=, 0($pop17)
	i32.sub 	$push19=, $pop18, $5
	i32.sub 	$push52=, $7, $4
	tee_local	$push51=, $5=, $pop52
	i32.ge_u	$push20=, $pop19, $pop51
	i32.const	$push21=, .L.str.83
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
.Lfunc_end112:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE, .Lfunc_end112-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE

	.section	.text._ZN5eosio6unpackINS_8exchange11covermarginEEET_PKcj,"axG",@progbits,_ZN5eosio6unpackINS_8exchange11covermarginEEET_PKcj,comdat
	.hidden	_ZN5eosio6unpackINS_8exchange11covermarginEEET_PKcj
	.weak	_ZN5eosio6unpackINS_8exchange11covermarginEEET_PKcj
	.type	_ZN5eosio6unpackINS_8exchange11covermarginEEET_PKcj,@function
_ZN5eosio6unpackINS_8exchange11covermarginEEET_PKcj:
	.param  	i32, i32, i32
	.local  	i64, i32, i32
	i64.const	$push36=, 0
	i64.store	16($0), $pop36
	i32.const	$push35=, 24
	i32.add 	$push0=, $0, $pop35
	i64.const	$push1=, 1398362884
	i64.store	0($pop0), $pop1
	i32.const	$push34=, 1
	i32.const	$push2=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop34, $pop2
	i64.const	$3=, 5462355
	i32.const	$4=, 0
.LBB113_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push3=, $3
	i32.const	$push39=, 24
	i32.shl 	$push4=, $pop3, $pop39
	i32.const	$push38=, -1073741825
	i32.add 	$push5=, $pop4, $pop38
	i32.const	$push37=, 452984830
	i32.gt_u	$push6=, $pop5, $pop37
	br_if   	1, $pop6
	block   	
	i64.const	$push44=, 8
	i64.shr_u	$push43=, $3, $pop44
	tee_local	$push42=, $3=, $pop43
	i64.const	$push41=, 255
	i64.and 	$push7=, $pop42, $pop41
	i64.const	$push40=, 0
	i64.ne  	$push8=, $pop7, $pop40
	br_if   	0, $pop8
.LBB113_3:
	loop    	
	i64.const	$push49=, 8
	i64.shr_u	$push48=, $3, $pop49
	tee_local	$push47=, $3=, $pop48
	i64.const	$push46=, 255
	i64.and 	$push9=, $pop47, $pop46
	i64.const	$push45=, 0
	i64.ne  	$push10=, $pop9, $pop45
	br_if   	3, $pop10
	i32.const	$push53=, 1
	i32.add 	$push52=, $4, $pop53
	tee_local	$push51=, $4=, $pop52
	i32.const	$push50=, 7
	i32.lt_s	$push11=, $pop51, $pop50
	br_if   	0, $pop11
.LBB113_5:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push57=, 1
	i32.add 	$push56=, $4, $pop57
	tee_local	$push55=, $4=, $pop56
	i32.const	$push54=, 7
	i32.lt_s	$push12=, $pop55, $pop54
	br_if   	0, $pop12
	br      	2
.LBB113_6:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB113_7:
	end_block
	i32.const	$push13=, .L.str.66
	call    	eosio_assert@FUNCTION, $5, $pop13
	i32.const	$push14=, 7
	i32.gt_u	$push15=, $2, $pop14
	i32.const	$push16=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	i32.const	$push17=, 8
	i32.call	$drop=, memcpy@FUNCTION, $0, $1, $pop17
	i32.const	$push18=, -8
	i32.and 	$push76=, $2, $pop18
	tee_local	$push75=, $4=, $pop76
	i32.const	$push74=, 8
	i32.ne  	$push19=, $pop75, $pop74
	i32.const	$push73=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop19, $pop73
	i32.const	$push72=, 8
	i32.add 	$push21=, $0, $pop72
	i32.const	$push71=, 8
	i32.add 	$push20=, $1, $pop71
	i32.const	$push70=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop21, $pop20, $pop70
	i32.const	$push22=, 16
	i32.ne  	$push23=, $4, $pop22
	i32.const	$push69=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop23, $pop69
	i32.const	$push68=, 16
	i32.add 	$push25=, $0, $pop68
	i32.const	$push67=, 16
	i32.add 	$push24=, $1, $pop67
	i32.const	$push66=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop25, $pop24, $pop66
	i32.const	$push26=, 24
	i32.ne  	$push27=, $4, $pop26
	i32.const	$push65=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop27, $pop65
	i32.const	$push64=, 24
	i32.add 	$push29=, $0, $pop64
	i32.const	$push63=, 24
	i32.add 	$push28=, $1, $pop63
	i32.const	$push62=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop29, $pop28, $pop62
	i32.const	$push30=, 32
	i32.ne  	$push31=, $4, $pop30
	i32.const	$push61=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop31, $pop61
	i32.const	$push60=, 32
	i32.add 	$push33=, $0, $pop60
	i32.const	$push59=, 32
	i32.add 	$push32=, $1, $pop59
	i32.const	$push58=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop33, $pop32, $pop58
	.endfunc
.Lfunc_end113:
	.size	_ZN5eosio6unpackINS_8exchange11covermarginEEET_PKcj, .Lfunc_end113-_ZN5eosio6unpackINS_8exchange11covermarginEEET_PKcj

	.section	.text._ZN5eosio8exchange8upmarginC2Ev,"axG",@progbits,_ZN5eosio8exchange8upmarginC2Ev,comdat
	.hidden	_ZN5eosio8exchange8upmarginC2Ev
	.weak	_ZN5eosio8exchange8upmarginC2Ev
	.type	_ZN5eosio8exchange8upmarginC2Ev,@function
_ZN5eosio8exchange8upmarginC2Ev:
	.param  	i32
	.result 	i32
	.local  	i64, i32, i32
	i64.const	$push34=, 0
	i64.store	16($0), $pop34
	i32.const	$push33=, 24
	i32.add 	$push32=, $0, $pop33
	tee_local	$push31=, $2=, $pop32
	i64.const	$push0=, 1398362884
	i64.store	0($pop31), $pop0
	i32.const	$push30=, 1
	i32.const	$push1=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop30, $pop1
	i64.load	$push2=, 0($2)
	i64.const	$push29=, 8
	i64.shr_u	$1=, $pop2, $pop29
	i32.const	$2=, 0
.LBB114_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push3=, $1
	i32.const	$push37=, 24
	i32.shl 	$push4=, $pop3, $pop37
	i32.const	$push36=, -1073741825
	i32.add 	$push5=, $pop4, $pop36
	i32.const	$push35=, 452984830
	i32.gt_u	$push6=, $pop5, $pop35
	br_if   	1, $pop6
	block   	
	i64.const	$push42=, 8
	i64.shr_u	$push41=, $1, $pop42
	tee_local	$push40=, $1=, $pop41
	i64.const	$push39=, 255
	i64.and 	$push7=, $pop40, $pop39
	i64.const	$push38=, 0
	i64.ne  	$push8=, $pop7, $pop38
	br_if   	0, $pop8
.LBB114_3:
	loop    	
	i64.const	$push47=, 8
	i64.shr_u	$push46=, $1, $pop47
	tee_local	$push45=, $1=, $pop46
	i64.const	$push44=, 255
	i64.and 	$push9=, $pop45, $pop44
	i64.const	$push43=, 0
	i64.ne  	$push10=, $pop9, $pop43
	br_if   	3, $pop10
	i32.const	$push51=, 1
	i32.add 	$push50=, $2, $pop51
	tee_local	$push49=, $2=, $pop50
	i32.const	$push48=, 7
	i32.lt_s	$push11=, $pop49, $pop48
	br_if   	0, $pop11
.LBB114_5:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push55=, 1
	i32.add 	$push54=, $2, $pop55
	tee_local	$push53=, $2=, $pop54
	i32.const	$push52=, 7
	i32.lt_s	$push12=, $pop53, $pop52
	br_if   	0, $pop12
	br      	2
.LBB114_6:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB114_7:
	end_block
	i32.const	$push13=, .L.str.66
	call    	eosio_assert@FUNCTION, $3, $pop13
	i32.const	$push14=, 48
	i32.add 	$push60=, $0, $pop14
	tee_local	$push59=, $2=, $pop60
	i64.const	$push15=, 1398362884
	i64.store	0($pop59), $pop15
	i64.const	$push58=, 0
	i64.store	40($0), $pop58
	i32.const	$push57=, 1
	i32.const	$push16=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop57, $pop16
	i64.load	$push17=, 0($2)
	i64.const	$push56=, 8
	i64.shr_u	$1=, $pop17, $pop56
	i32.const	$2=, 0
.LBB114_8:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push18=, $1
	i32.const	$push63=, 24
	i32.shl 	$push19=, $pop18, $pop63
	i32.const	$push62=, -1073741825
	i32.add 	$push20=, $pop19, $pop62
	i32.const	$push61=, 452984830
	i32.gt_u	$push21=, $pop20, $pop61
	br_if   	1, $pop21
	block   	
	i64.const	$push68=, 8
	i64.shr_u	$push67=, $1, $pop68
	tee_local	$push66=, $1=, $pop67
	i64.const	$push65=, 255
	i64.and 	$push22=, $pop66, $pop65
	i64.const	$push64=, 0
	i64.ne  	$push23=, $pop22, $pop64
	br_if   	0, $pop23
.LBB114_10:
	loop    	
	i64.const	$push73=, 8
	i64.shr_u	$push72=, $1, $pop73
	tee_local	$push71=, $1=, $pop72
	i64.const	$push70=, 255
	i64.and 	$push24=, $pop71, $pop70
	i64.const	$push69=, 0
	i64.ne  	$push25=, $pop24, $pop69
	br_if   	3, $pop25
	i32.const	$push77=, 1
	i32.add 	$push76=, $2, $pop77
	tee_local	$push75=, $2=, $pop76
	i32.const	$push74=, 7
	i32.lt_s	$push26=, $pop75, $pop74
	br_if   	0, $pop26
.LBB114_12:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push81=, 1
	i32.add 	$push80=, $2, $pop81
	tee_local	$push79=, $2=, $pop80
	i32.const	$push78=, 7
	i32.lt_s	$push27=, $pop79, $pop78
	br_if   	0, $pop27
	br      	2
.LBB114_13:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB114_14:
	end_block
	i32.const	$push28=, .L.str.66
	call    	eosio_assert@FUNCTION, $3, $pop28
	copy_local	$push82=, $0
	.endfunc
.Lfunc_end114:
	.size	_ZN5eosio8exchange8upmarginC2Ev, .Lfunc_end114-_ZN5eosio8exchange8upmarginC2Ev

	.section	.text._ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio11symbol_typeERNS6_14extended_assetESA_EEEZNS6_rsINS6_10datastreamIPKcEENS6_8exchange8upmarginELPv0EEERT_SL_RT0_EUlSL_E_JLj0ELj1ELj2ELj3EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENSQ_17integral_constantIbLb0EEE,"axG",@progbits,_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio11symbol_typeERNS6_14extended_assetESA_EEEZNS6_rsINS6_10datastreamIPKcEENS6_8exchange8upmarginELPv0EEERT_SL_RT0_EUlSL_E_JLj0ELj1ELj2ELj3EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENSQ_17integral_constantIbLb0EEE,comdat
	.hidden	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio11symbol_typeERNS6_14extended_assetESA_EEEZNS6_rsINS6_10datastreamIPKcEENS6_8exchange8upmarginELPv0EEERT_SL_RT0_EUlSL_E_JLj0ELj1ELj2ELj3EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENSQ_17integral_constantIbLb0EEE
	.weak	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio11symbol_typeERNS6_14extended_assetESA_EEEZNS6_rsINS6_10datastreamIPKcEENS6_8exchange8upmarginELPv0EEERT_SL_RT0_EUlSL_E_JLj0ELj1ELj2ELj3EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENSQ_17integral_constantIbLb0EEE
	.type	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio11symbol_typeERNS6_14extended_assetESA_EEEZNS6_rsINS6_10datastreamIPKcEENS6_8exchange8upmarginELPv0EEERT_SL_RT0_EUlSL_E_JLj0ELj1ELj2ELj3EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENSQ_17integral_constantIbLb0EEE,@function
_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio11symbol_typeERNS6_14extended_assetESA_EEEZNS6_rsINS6_10datastreamIPKcEENS6_8exchange8upmarginELPv0EEERT_SL_RT0_EUlSL_E_JLj0ELj1ELj2ELj3EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENSQ_17integral_constantIbLb0EEE:
	.param  	i32, i32
	.local  	i32, i32, i32
	i32.load	$3=, 0($0)
	i32.load	$push103=, 0($1)
	tee_local	$push102=, $2=, $pop103
	i32.load	$push1=, 8($pop102)
	i32.load	$push0=, 4($2)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($2)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop6, $pop7
	i32.load	$push8=, 4($2)
	i32.const	$push101=, 8
	i32.add 	$push9=, $pop8, $pop101
	i32.store	4($2), $pop9
	i32.load	$3=, 4($0)
	i32.load	$push100=, 0($1)
	tee_local	$push99=, $2=, $pop100
	i32.load	$push11=, 8($pop99)
	i32.load	$push10=, 4($2)
	i32.sub 	$push12=, $pop11, $pop10
	i32.const	$push98=, 7
	i32.gt_u	$push13=, $pop12, $pop98
	i32.const	$push97=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop13, $pop97
	i32.load	$push14=, 4($2)
	i32.const	$push96=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop14, $pop96
	i32.load	$push15=, 4($2)
	i32.const	$push95=, 8
	i32.add 	$push16=, $pop15, $pop95
	i32.store	4($2), $pop16
	i32.load	$3=, 8($0)
	i32.load	$push94=, 0($1)
	tee_local	$push93=, $2=, $pop94
	i32.load	$push18=, 8($pop93)
	i32.load	$push17=, 4($2)
	i32.sub 	$push19=, $pop18, $pop17
	i32.const	$push92=, 7
	i32.gt_u	$push20=, $pop19, $pop92
	i32.const	$push91=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop20, $pop91
	i32.load	$push21=, 4($2)
	i32.const	$push90=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop21, $pop90
	i32.load	$push22=, 4($2)
	i32.const	$push89=, 8
	i32.add 	$push88=, $pop22, $pop89
	tee_local	$push87=, $4=, $pop88
	i32.store	4($2), $pop87
	i32.load	$push23=, 8($2)
	i32.sub 	$push24=, $pop23, $4
	i32.const	$push86=, 7
	i32.gt_u	$push25=, $pop24, $pop86
	i32.const	$push85=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop25, $pop85
	i32.const	$push84=, 8
	i32.add 	$push26=, $3, $pop84
	i32.load	$push27=, 4($2)
	i32.const	$push83=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop26, $pop27, $pop83
	i32.load	$push28=, 4($2)
	i32.const	$push82=, 8
	i32.add 	$push81=, $pop28, $pop82
	tee_local	$push80=, $4=, $pop81
	i32.store	4($2), $pop80
	i32.load	$push29=, 8($2)
	i32.sub 	$push30=, $pop29, $4
	i32.const	$push79=, 7
	i32.gt_u	$push31=, $pop30, $pop79
	i32.const	$push78=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop31, $pop78
	i32.const	$push32=, 16
	i32.add 	$push33=, $3, $pop32
	i32.load	$push34=, 4($2)
	i32.const	$push77=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop33, $pop34, $pop77
	i32.load	$push35=, 4($2)
	i32.const	$push76=, 8
	i32.add 	$push36=, $pop35, $pop76
	i32.store	4($2), $pop36
	i32.load	$0=, 12($0)
	i32.load	$push75=, 0($1)
	tee_local	$push74=, $2=, $pop75
	i32.load	$push38=, 8($pop74)
	i32.load	$push37=, 4($2)
	i32.sub 	$push39=, $pop38, $pop37
	i32.const	$push73=, 7
	i32.gt_u	$push40=, $pop39, $pop73
	i32.const	$push72=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop40, $pop72
	i32.load	$push41=, 4($2)
	i32.const	$push71=, 8
	i32.call	$drop=, memcpy@FUNCTION, $0, $pop41, $pop71
	i32.load	$push42=, 4($2)
	i32.const	$push70=, 8
	i32.add 	$push69=, $pop42, $pop70
	tee_local	$push68=, $1=, $pop69
	i32.store	4($2), $pop68
	i32.load	$push43=, 8($2)
	i32.sub 	$push44=, $pop43, $1
	i32.const	$push67=, 7
	i32.gt_u	$push45=, $pop44, $pop67
	i32.const	$push66=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop45, $pop66
	i32.const	$push65=, 8
	i32.add 	$push46=, $0, $pop65
	i32.load	$push47=, 4($2)
	i32.const	$push64=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop46, $pop47, $pop64
	i32.load	$push48=, 4($2)
	i32.const	$push63=, 8
	i32.add 	$push62=, $pop48, $pop63
	tee_local	$push61=, $1=, $pop62
	i32.store	4($2), $pop61
	i32.load	$push49=, 8($2)
	i32.sub 	$push50=, $pop49, $1
	i32.const	$push60=, 7
	i32.gt_u	$push51=, $pop50, $pop60
	i32.const	$push59=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop51, $pop59
	i32.const	$push58=, 16
	i32.add 	$push52=, $0, $pop58
	i32.load	$push53=, 4($2)
	i32.const	$push57=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop52, $pop53, $pop57
	i32.load	$push54=, 4($2)
	i32.const	$push56=, 8
	i32.add 	$push55=, $pop54, $pop56
	i32.store	4($2), $pop55
	.endfunc
.Lfunc_end115:
	.size	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio11symbol_typeERNS6_14extended_assetESA_EEEZNS6_rsINS6_10datastreamIPKcEENS6_8exchange8upmarginELPv0EEERT_SL_RT0_EUlSL_E_JLj0ELj1ELj2ELj3EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENSQ_17integral_constantIbLb0EEE, .Lfunc_end115-_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio11symbol_typeERNS6_14extended_assetESA_EEEZNS6_rsINS6_10datastreamIPKcEENS6_8exchange8upmarginELPv0EEERT_SL_RT0_EUlSL_E_JLj0ELj1ELj2ELj3EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENSQ_17integral_constantIbLb0EEE

	.section	.text._ZN5eosio8exchange5tradeC2Ev,"axG",@progbits,_ZN5eosio8exchange5tradeC2Ev,comdat
	.hidden	_ZN5eosio8exchange5tradeC2Ev
	.weak	_ZN5eosio8exchange5tradeC2Ev
	.type	_ZN5eosio8exchange5tradeC2Ev,@function
_ZN5eosio8exchange5tradeC2Ev:
	.param  	i32
	.result 	i32
	.local  	i64, i32, i32
	i64.const	$push36=, 0
	i64.store	16($0), $pop36
	i32.const	$push35=, 24
	i32.add 	$push34=, $0, $pop35
	tee_local	$push33=, $2=, $pop34
	i64.const	$push0=, 1398362884
	i64.store	0($pop33), $pop0
	i32.const	$push32=, 1
	i32.const	$push1=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop32, $pop1
	i64.load	$push2=, 0($2)
	i64.const	$push31=, 8
	i64.shr_u	$1=, $pop2, $pop31
	i32.const	$2=, 0
.LBB116_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push3=, $1
	i32.const	$push39=, 24
	i32.shl 	$push4=, $pop3, $pop39
	i32.const	$push38=, -1073741825
	i32.add 	$push5=, $pop4, $pop38
	i32.const	$push37=, 452984830
	i32.gt_u	$push6=, $pop5, $pop37
	br_if   	1, $pop6
	block   	
	i64.const	$push44=, 8
	i64.shr_u	$push43=, $1, $pop44
	tee_local	$push42=, $1=, $pop43
	i64.const	$push41=, 255
	i64.and 	$push7=, $pop42, $pop41
	i64.const	$push40=, 0
	i64.ne  	$push8=, $pop7, $pop40
	br_if   	0, $pop8
.LBB116_3:
	loop    	
	i64.const	$push49=, 8
	i64.shr_u	$push48=, $1, $pop49
	tee_local	$push47=, $1=, $pop48
	i64.const	$push46=, 255
	i64.and 	$push9=, $pop47, $pop46
	i64.const	$push45=, 0
	i64.ne  	$push10=, $pop9, $pop45
	br_if   	3, $pop10
	i32.const	$push53=, 1
	i32.add 	$push52=, $2, $pop53
	tee_local	$push51=, $2=, $pop52
	i32.const	$push50=, 7
	i32.lt_s	$push11=, $pop51, $pop50
	br_if   	0, $pop11
.LBB116_5:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push57=, 1
	i32.add 	$push56=, $2, $pop57
	tee_local	$push55=, $2=, $pop56
	i32.const	$push54=, 7
	i32.lt_s	$push12=, $pop55, $pop54
	br_if   	0, $pop12
	br      	2
.LBB116_6:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB116_7:
	end_block
	i32.const	$push13=, .L.str.66
	call    	eosio_assert@FUNCTION, $3, $pop13
	i32.const	$push14=, 48
	i32.add 	$push62=, $0, $pop14
	tee_local	$push61=, $2=, $pop62
	i64.const	$push15=, 1398362884
	i64.store	0($pop61), $pop15
	i64.const	$push60=, 0
	i64.store	40($0), $pop60
	i32.const	$push59=, 1
	i32.const	$push16=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop59, $pop16
	i64.load	$push17=, 0($2)
	i64.const	$push58=, 8
	i64.shr_u	$1=, $pop17, $pop58
	i32.const	$2=, 0
.LBB116_8:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push18=, $1
	i32.const	$push65=, 24
	i32.shl 	$push19=, $pop18, $pop65
	i32.const	$push64=, -1073741825
	i32.add 	$push20=, $pop19, $pop64
	i32.const	$push63=, 452984830
	i32.gt_u	$push21=, $pop20, $pop63
	br_if   	1, $pop21
	block   	
	i64.const	$push70=, 8
	i64.shr_u	$push69=, $1, $pop70
	tee_local	$push68=, $1=, $pop69
	i64.const	$push67=, 255
	i64.and 	$push22=, $pop68, $pop67
	i64.const	$push66=, 0
	i64.ne  	$push23=, $pop22, $pop66
	br_if   	0, $pop23
.LBB116_10:
	loop    	
	i64.const	$push75=, 8
	i64.shr_u	$push74=, $1, $pop75
	tee_local	$push73=, $1=, $pop74
	i64.const	$push72=, 255
	i64.and 	$push24=, $pop73, $pop72
	i64.const	$push71=, 0
	i64.ne  	$push25=, $pop24, $pop71
	br_if   	3, $pop25
	i32.const	$push79=, 1
	i32.add 	$push78=, $2, $pop79
	tee_local	$push77=, $2=, $pop78
	i32.const	$push76=, 7
	i32.lt_s	$push26=, $pop77, $pop76
	br_if   	0, $pop26
.LBB116_12:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push83=, 1
	i32.add 	$push82=, $2, $pop83
	tee_local	$push81=, $2=, $pop82
	i32.const	$push80=, 7
	i32.lt_s	$push27=, $pop81, $pop80
	br_if   	0, $pop27
	br      	2
.LBB116_13:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB116_14:
	end_block
	i32.const	$push28=, .L.str.66
	call    	eosio_assert@FUNCTION, $3, $pop28
	i32.const	$push29=, 1
	i32.store8	68($0), $pop29
	i32.const	$push30=, 0
	i32.store	64($0), $pop30
	copy_local	$push84=, $0
	.endfunc
.Lfunc_end116:
	.size	_ZN5eosio8exchange5tradeC2Ev, .Lfunc_end116-_ZN5eosio8exchange5tradeC2Ev

	.section	.text._ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio11symbol_typeERNS6_14extended_assetESA_RmRhEEEZNS6_rsINS6_10datastreamIPKcEENS6_8exchange5tradeELPv0EEERT_SN_RT0_EUlSN_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSN_OSO_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE,"axG",@progbits,_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio11symbol_typeERNS6_14extended_assetESA_RmRhEEEZNS6_rsINS6_10datastreamIPKcEENS6_8exchange5tradeELPv0EEERT_SN_RT0_EUlSN_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSN_OSO_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE,comdat
	.hidden	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio11symbol_typeERNS6_14extended_assetESA_RmRhEEEZNS6_rsINS6_10datastreamIPKcEENS6_8exchange5tradeELPv0EEERT_SN_RT0_EUlSN_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSN_OSO_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE
	.weak	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio11symbol_typeERNS6_14extended_assetESA_RmRhEEEZNS6_rsINS6_10datastreamIPKcEENS6_8exchange5tradeELPv0EEERT_SN_RT0_EUlSN_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSN_OSO_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE
	.type	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio11symbol_typeERNS6_14extended_assetESA_RmRhEEEZNS6_rsINS6_10datastreamIPKcEENS6_8exchange5tradeELPv0EEERT_SN_RT0_EUlSN_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSN_OSO_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE,@function
_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio11symbol_typeERNS6_14extended_assetESA_RmRhEEEZNS6_rsINS6_10datastreamIPKcEENS6_8exchange5tradeELPv0EEERT_SN_RT0_EUlSN_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSN_OSO_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE:
	.param  	i32, i32
	.local  	i32, i32, i32
	i32.load	$3=, 0($0)
	i32.load	$push127=, 0($1)
	tee_local	$push126=, $2=, $pop127
	i32.load	$push1=, 8($pop126)
	i32.load	$push0=, 4($2)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($2)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop6, $pop7
	i32.load	$push8=, 4($2)
	i32.const	$push125=, 8
	i32.add 	$push9=, $pop8, $pop125
	i32.store	4($2), $pop9
	i32.load	$3=, 4($0)
	i32.load	$push124=, 0($1)
	tee_local	$push123=, $2=, $pop124
	i32.load	$push11=, 8($pop123)
	i32.load	$push10=, 4($2)
	i32.sub 	$push12=, $pop11, $pop10
	i32.const	$push122=, 7
	i32.gt_u	$push13=, $pop12, $pop122
	i32.const	$push121=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop13, $pop121
	i32.load	$push14=, 4($2)
	i32.const	$push120=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop14, $pop120
	i32.load	$push15=, 4($2)
	i32.const	$push119=, 8
	i32.add 	$push16=, $pop15, $pop119
	i32.store	4($2), $pop16
	i32.load	$3=, 8($0)
	i32.load	$push118=, 0($1)
	tee_local	$push117=, $2=, $pop118
	i32.load	$push18=, 8($pop117)
	i32.load	$push17=, 4($2)
	i32.sub 	$push19=, $pop18, $pop17
	i32.const	$push116=, 7
	i32.gt_u	$push20=, $pop19, $pop116
	i32.const	$push115=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop20, $pop115
	i32.load	$push21=, 4($2)
	i32.const	$push114=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop21, $pop114
	i32.load	$push22=, 4($2)
	i32.const	$push113=, 8
	i32.add 	$push112=, $pop22, $pop113
	tee_local	$push111=, $4=, $pop112
	i32.store	4($2), $pop111
	i32.load	$push23=, 8($2)
	i32.sub 	$push24=, $pop23, $4
	i32.const	$push110=, 7
	i32.gt_u	$push25=, $pop24, $pop110
	i32.const	$push109=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop25, $pop109
	i32.const	$push108=, 8
	i32.add 	$push26=, $3, $pop108
	i32.load	$push27=, 4($2)
	i32.const	$push107=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop26, $pop27, $pop107
	i32.load	$push28=, 4($2)
	i32.const	$push106=, 8
	i32.add 	$push105=, $pop28, $pop106
	tee_local	$push104=, $4=, $pop105
	i32.store	4($2), $pop104
	i32.load	$push29=, 8($2)
	i32.sub 	$push30=, $pop29, $4
	i32.const	$push103=, 7
	i32.gt_u	$push31=, $pop30, $pop103
	i32.const	$push102=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop31, $pop102
	i32.const	$push32=, 16
	i32.add 	$push33=, $3, $pop32
	i32.load	$push34=, 4($2)
	i32.const	$push101=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop33, $pop34, $pop101
	i32.load	$push35=, 4($2)
	i32.const	$push100=, 8
	i32.add 	$push36=, $pop35, $pop100
	i32.store	4($2), $pop36
	i32.load	$3=, 12($0)
	i32.load	$push99=, 0($1)
	tee_local	$push98=, $2=, $pop99
	i32.load	$push38=, 8($pop98)
	i32.load	$push37=, 4($2)
	i32.sub 	$push39=, $pop38, $pop37
	i32.const	$push97=, 7
	i32.gt_u	$push40=, $pop39, $pop97
	i32.const	$push96=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop40, $pop96
	i32.load	$push41=, 4($2)
	i32.const	$push95=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop41, $pop95
	i32.load	$push42=, 4($2)
	i32.const	$push94=, 8
	i32.add 	$push93=, $pop42, $pop94
	tee_local	$push92=, $4=, $pop93
	i32.store	4($2), $pop92
	i32.load	$push43=, 8($2)
	i32.sub 	$push44=, $pop43, $4
	i32.const	$push91=, 7
	i32.gt_u	$push45=, $pop44, $pop91
	i32.const	$push90=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop45, $pop90
	i32.const	$push89=, 8
	i32.add 	$push46=, $3, $pop89
	i32.load	$push47=, 4($2)
	i32.const	$push88=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop46, $pop47, $pop88
	i32.load	$push48=, 4($2)
	i32.const	$push87=, 8
	i32.add 	$push86=, $pop48, $pop87
	tee_local	$push85=, $4=, $pop86
	i32.store	4($2), $pop85
	i32.load	$push49=, 8($2)
	i32.sub 	$push50=, $pop49, $4
	i32.const	$push84=, 7
	i32.gt_u	$push51=, $pop50, $pop84
	i32.const	$push83=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop51, $pop83
	i32.const	$push82=, 16
	i32.add 	$push52=, $3, $pop82
	i32.load	$push53=, 4($2)
	i32.const	$push81=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop52, $pop53, $pop81
	i32.load	$push54=, 4($2)
	i32.const	$push80=, 8
	i32.add 	$push55=, $pop54, $pop80
	i32.store	4($2), $pop55
	i32.load	$3=, 16($0)
	i32.load	$push79=, 0($1)
	tee_local	$push78=, $2=, $pop79
	i32.load	$push57=, 8($pop78)
	i32.load	$push56=, 4($2)
	i32.sub 	$push58=, $pop57, $pop56
	i32.const	$push59=, 3
	i32.gt_u	$push60=, $pop58, $pop59
	i32.const	$push77=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop60, $pop77
	i32.load	$push61=, 4($2)
	i32.const	$push62=, 4
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop61, $pop62
	i32.load	$push63=, 4($2)
	i32.const	$push76=, 4
	i32.add 	$push64=, $pop63, $pop76
	i32.store	4($2), $pop64
	i32.load	$0=, 20($0)
	i32.load	$push75=, 0($1)
	tee_local	$push74=, $2=, $pop75
	i32.load	$push66=, 8($pop74)
	i32.load	$push65=, 4($2)
	i32.ne  	$push67=, $pop66, $pop65
	i32.const	$push73=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop67, $pop73
	i32.load	$push68=, 4($2)
	i32.const	$push69=, 1
	i32.call	$drop=, memcpy@FUNCTION, $0, $pop68, $pop69
	i32.load	$push70=, 4($2)
	i32.const	$push72=, 1
	i32.add 	$push71=, $pop70, $pop72
	i32.store	4($2), $pop71
	.endfunc
.Lfunc_end117:
	.size	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio11symbol_typeERNS6_14extended_assetESA_RmRhEEEZNS6_rsINS6_10datastreamIPKcEENS6_8exchange5tradeELPv0EEERT_SN_RT0_EUlSN_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSN_OSO_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE, .Lfunc_end117-_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio11symbol_typeERNS6_14extended_assetESA_RmRhEEEZNS6_rsINS6_10datastreamIPKcEENS6_8exchange5tradeELPv0EEERT_SN_RT0_EUlSN_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSN_OSO_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE

	.section	.text._ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio11symbol_typeEdNS8_15extended_symbolEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_dSA_EEERT_SJ_RNS7_IJDpT0_EEEEUlSJ_E_EEvRKSI_RKT0_,"axG",@progbits,_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio11symbol_typeEdNS8_15extended_symbolEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_dSA_EEERT_SJ_RNS7_IJDpT0_EEEEUlSJ_E_EEvRKSI_RKT0_,comdat
	.hidden	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio11symbol_typeEdNS8_15extended_symbolEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_dSA_EEERT_SJ_RNS7_IJDpT0_EEEEUlSJ_E_EEvRKSI_RKT0_
	.weak	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio11symbol_typeEdNS8_15extended_symbolEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_dSA_EEERT_SJ_RNS7_IJDpT0_EEEEUlSJ_E_EEvRKSI_RKT0_
	.type	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio11symbol_typeEdNS8_15extended_symbolEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_dSA_EEERT_SJ_RNS7_IJDpT0_EEEEUlSJ_E_EEvRKSI_RKT0_,@function
_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio11symbol_typeEdNS8_15extended_symbolEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_dSA_EEERT_SJ_RNS7_IJDpT0_EEEEUlSJ_E_EEvRKSI_RKT0_:
	.param  	i32, i32
	.local  	i32, i32
	i32.load	$3=, 0($0)
	i32.load	$push70=, 0($1)
	tee_local	$push69=, $2=, $pop70
	i32.load	$push1=, 8($pop69)
	i32.load	$push0=, 4($2)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($2)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop6, $pop7
	i32.load	$push8=, 4($2)
	i32.const	$push68=, 8
	i32.add 	$push9=, $pop8, $pop68
	i32.store	4($2), $pop9
	i32.load	$2=, 0($0)
	i32.load	$push67=, 0($1)
	tee_local	$push66=, $0=, $pop67
	i32.load	$push11=, 8($pop66)
	i32.load	$push10=, 4($0)
	i32.sub 	$push12=, $pop11, $pop10
	i32.const	$push65=, 7
	i32.gt_u	$push13=, $pop12, $pop65
	i32.const	$push64=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop13, $pop64
	i32.const	$push63=, 8
	i32.add 	$push14=, $2, $pop63
	i32.load	$push15=, 4($0)
	i32.const	$push62=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop14, $pop15, $pop62
	i32.load	$push16=, 4($0)
	i32.const	$push61=, 8
	i32.add 	$push17=, $pop16, $pop61
	i32.store	4($0), $pop17
	i32.load	$push60=, 0($1)
	tee_local	$push59=, $0=, $pop60
	i32.load	$push19=, 8($pop59)
	i32.load	$push18=, 4($0)
	i32.sub 	$push20=, $pop19, $pop18
	i32.const	$push58=, 7
	i32.gt_u	$push21=, $pop20, $pop58
	i32.const	$push57=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop21, $pop57
	i32.const	$push22=, 16
	i32.add 	$push23=, $2, $pop22
	i32.load	$push24=, 4($0)
	i32.const	$push56=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop23, $pop24, $pop56
	i32.load	$push25=, 4($0)
	i32.const	$push55=, 8
	i32.add 	$push26=, $pop25, $pop55
	i32.store	4($0), $pop26
	i32.load	$push54=, 0($1)
	tee_local	$push53=, $1=, $pop54
	i32.load	$push28=, 8($pop53)
	i32.load	$push27=, 4($1)
	i32.sub 	$push29=, $pop28, $pop27
	i32.const	$push52=, 7
	i32.gt_u	$push30=, $pop29, $pop52
	i32.const	$push51=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop30, $pop51
	i32.const	$push31=, 24
	i32.add 	$push32=, $2, $pop31
	i32.load	$push33=, 4($1)
	i32.const	$push50=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop32, $pop33, $pop50
	i32.load	$push34=, 4($1)
	i32.const	$push49=, 8
	i32.add 	$push48=, $pop34, $pop49
	tee_local	$push47=, $0=, $pop48
	i32.store	4($1), $pop47
	i32.load	$push35=, 8($1)
	i32.sub 	$push36=, $pop35, $0
	i32.const	$push46=, 7
	i32.gt_u	$push37=, $pop36, $pop46
	i32.const	$push45=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop37, $pop45
	i32.const	$push38=, 32
	i32.add 	$push39=, $2, $pop38
	i32.load	$push40=, 4($1)
	i32.const	$push44=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop39, $pop40, $pop44
	i32.load	$push41=, 4($1)
	i32.const	$push43=, 8
	i32.add 	$push42=, $pop41, $pop43
	i32.store	4($1), $pop42
	.endfunc
.Lfunc_end118:
	.size	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio11symbol_typeEdNS8_15extended_symbolEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_dSA_EEERT_SJ_RNS7_IJDpT0_EEEEUlSJ_E_EEvRKSI_RKT0_, .Lfunc_end118-_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio11symbol_typeEdNS8_15extended_symbolEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_dSA_EEERT_SJ_RNS7_IJDpT0_EEEEUlSJ_E_EEvRKSI_RKT0_

	.section	.text._ZN5eosio6unpackINSt3__15tupleIJyNS_11symbol_typeENS_14extended_assetEEEEEET_PKcj,"axG",@progbits,_ZN5eosio6unpackINSt3__15tupleIJyNS_11symbol_typeENS_14extended_assetEEEEEET_PKcj,comdat
	.hidden	_ZN5eosio6unpackINSt3__15tupleIJyNS_11symbol_typeENS_14extended_assetEEEEEET_PKcj
	.weak	_ZN5eosio6unpackINSt3__15tupleIJyNS_11symbol_typeENS_14extended_assetEEEEEET_PKcj
	.type	_ZN5eosio6unpackINSt3__15tupleIJyNS_11symbol_typeENS_14extended_assetEEEEEET_PKcj,@function
_ZN5eosio6unpackINSt3__15tupleIJyNS_11symbol_typeENS_14extended_assetEEEEEET_PKcj:
	.param  	i32, i32, i32
	.local  	i32, i64, i32, i32
	i64.const	$push40=, 0
	i64.store	0($0), $pop40
	i64.const	$push39=, 0
	i64.store	16($0), $pop39
	i32.const	$push0=, 32
	i32.add 	$push38=, $0, $pop0
	tee_local	$push37=, $3=, $pop38
	i64.const	$push36=, 0
	i64.store	0($pop37), $pop36
	i32.const	$push35=, 24
	i32.add 	$push1=, $0, $pop35
	i64.const	$push2=, 1398362884
	i64.store	0($pop1), $pop2
	i32.const	$push34=, 1
	i32.const	$push3=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop34, $pop3
	i64.const	$4=, 5462355
	i32.const	$5=, 0
.LBB119_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push4=, $4
	i32.const	$push43=, 24
	i32.shl 	$push5=, $pop4, $pop43
	i32.const	$push42=, -1073741825
	i32.add 	$push6=, $pop5, $pop42
	i32.const	$push41=, 452984830
	i32.gt_u	$push7=, $pop6, $pop41
	br_if   	1, $pop7
	block   	
	i64.const	$push48=, 8
	i64.shr_u	$push47=, $4, $pop48
	tee_local	$push46=, $4=, $pop47
	i64.const	$push45=, 255
	i64.and 	$push8=, $pop46, $pop45
	i64.const	$push44=, 0
	i64.ne  	$push9=, $pop8, $pop44
	br_if   	0, $pop9
.LBB119_3:
	loop    	
	i64.const	$push53=, 8
	i64.shr_u	$push52=, $4, $pop53
	tee_local	$push51=, $4=, $pop52
	i64.const	$push50=, 255
	i64.and 	$push10=, $pop51, $pop50
	i64.const	$push49=, 0
	i64.ne  	$push11=, $pop10, $pop49
	br_if   	3, $pop11
	i32.const	$push57=, 1
	i32.add 	$push56=, $5, $pop57
	tee_local	$push55=, $5=, $pop56
	i32.const	$push54=, 7
	i32.lt_s	$push12=, $pop55, $pop54
	br_if   	0, $pop12
.LBB119_5:
	end_loop
	end_block
	i32.const	$6=, 1
	i32.const	$push61=, 1
	i32.add 	$push60=, $5, $pop61
	tee_local	$push59=, $5=, $pop60
	i32.const	$push58=, 7
	i32.lt_s	$push13=, $pop59, $pop58
	br_if   	0, $pop13
	br      	2
.LBB119_6:
	end_loop
	end_block
	i32.const	$6=, 0
.LBB119_7:
	end_block
	i32.const	$push14=, .L.str.66
	call    	eosio_assert@FUNCTION, $6, $pop14
	i32.const	$push15=, 7
	i32.gt_u	$push16=, $2, $pop15
	i32.const	$push17=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop16, $pop17
	i32.const	$push18=, 8
	i32.call	$drop=, memcpy@FUNCTION, $0, $1, $pop18
	i32.const	$push19=, -8
	i32.and 	$push79=, $2, $pop19
	tee_local	$push78=, $5=, $pop79
	i32.const	$push77=, 8
	i32.ne  	$push20=, $pop78, $pop77
	i32.const	$push76=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop20, $pop76
	i32.const	$push75=, 8
	i32.add 	$push22=, $0, $pop75
	i32.const	$push74=, 8
	i32.add 	$push21=, $1, $pop74
	i32.const	$push73=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop22, $pop21, $pop73
	i32.const	$push23=, 16
	i32.ne  	$push24=, $5, $pop23
	i32.const	$push72=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop24, $pop72
	i32.const	$push71=, 16
	i32.add 	$push26=, $0, $pop71
	i32.const	$push70=, 16
	i32.add 	$push25=, $1, $pop70
	i32.const	$push69=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop26, $pop25, $pop69
	i32.const	$push27=, 24
	i32.ne  	$push28=, $5, $pop27
	i32.const	$push68=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop28, $pop68
	i32.const	$push67=, 24
	i32.add 	$push30=, $0, $pop67
	i32.const	$push66=, 24
	i32.add 	$push29=, $1, $pop66
	i32.const	$push65=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop30, $pop29, $pop65
	i32.const	$push31=, 32
	i32.ne  	$push32=, $5, $pop31
	i32.const	$push64=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop32, $pop64
	i32.const	$push63=, 32
	i32.add 	$push33=, $1, $pop63
	i32.const	$push62=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop33, $pop62
	.endfunc
.Lfunc_end119:
	.size	_ZN5eosio6unpackINSt3__15tupleIJyNS_11symbol_typeENS_14extended_assetEEEEEET_PKcj, .Lfunc_end119-_ZN5eosio6unpackINSt3__15tupleIJyNS_11symbol_typeENS_14extended_assetEEEEEET_PKcj

	.section	.text._ZN5eosio6unpackINSt3__15tupleIJyNS_5assetEmNS_14extended_assetES4_EEEEET_PKcj,"axG",@progbits,_ZN5eosio6unpackINSt3__15tupleIJyNS_5assetEmNS_14extended_assetES4_EEEEET_PKcj,comdat
	.hidden	_ZN5eosio6unpackINSt3__15tupleIJyNS_5assetEmNS_14extended_assetES4_EEEEET_PKcj
	.weak	_ZN5eosio6unpackINSt3__15tupleIJyNS_5assetEmNS_14extended_assetES4_EEEEET_PKcj
	.type	_ZN5eosio6unpackINSt3__15tupleIJyNS_5assetEmNS_14extended_assetES4_EEEEET_PKcj,@function
_ZN5eosio6unpackINSt3__15tupleIJyNS_5assetEmNS_14extended_assetES4_EEEEET_PKcj:
	.param  	i32, i32, i32
	.local  	i64, i32, i32, i32
	i32.const	$push54=, 0
	i32.const	$push51=, 0
	i32.load	$push52=, __stack_pointer($pop51)
	i32.const	$push53=, 32
	i32.sub 	$push66=, $pop52, $pop53
	tee_local	$push65=, $6=, $pop66
	i32.store	__stack_pointer($pop54), $pop65
	i64.const	$push64=, 0
	i64.store	8($0), $pop64
	i64.const	$push63=, 0
	i64.store	0($0), $pop63
	i32.const	$push0=, 16
	i32.add 	$push1=, $0, $pop0
	i64.const	$push2=, 1398362884
	i64.store	0($pop1), $pop2
	i32.const	$push62=, 1
	i32.const	$push3=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop62, $pop3
	i64.const	$3=, 5462355
	i32.const	$4=, 0
.LBB120_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push4=, $3
	i32.const	$push69=, 24
	i32.shl 	$push5=, $pop4, $pop69
	i32.const	$push68=, -1073741825
	i32.add 	$push6=, $pop5, $pop68
	i32.const	$push67=, 452984830
	i32.gt_u	$push7=, $pop6, $pop67
	br_if   	1, $pop7
	block   	
	i64.const	$push74=, 8
	i64.shr_u	$push73=, $3, $pop74
	tee_local	$push72=, $3=, $pop73
	i64.const	$push71=, 255
	i64.and 	$push8=, $pop72, $pop71
	i64.const	$push70=, 0
	i64.ne  	$push9=, $pop8, $pop70
	br_if   	0, $pop9
.LBB120_3:
	loop    	
	i64.const	$push79=, 8
	i64.shr_u	$push78=, $3, $pop79
	tee_local	$push77=, $3=, $pop78
	i64.const	$push76=, 255
	i64.and 	$push10=, $pop77, $pop76
	i64.const	$push75=, 0
	i64.ne  	$push11=, $pop10, $pop75
	br_if   	3, $pop11
	i32.const	$push83=, 1
	i32.add 	$push82=, $4, $pop83
	tee_local	$push81=, $4=, $pop82
	i32.const	$push80=, 7
	i32.lt_s	$push12=, $pop81, $pop80
	br_if   	0, $pop12
.LBB120_5:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push87=, 1
	i32.add 	$push86=, $4, $pop87
	tee_local	$push85=, $4=, $pop86
	i32.const	$push84=, 7
	i32.lt_s	$push13=, $pop85, $pop84
	br_if   	0, $pop13
	br      	2
.LBB120_6:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB120_7:
	end_block
	i32.const	$push15=, .L.str.66
	call    	eosio_assert@FUNCTION, $5, $pop15
	i32.const	$push16=, 48
	i32.add 	$push17=, $0, $pop16
	i64.const	$push90=, 0
	i64.store	0($pop17), $pop90
	i32.const	$push14=, 0
	i32.store	24($0), $pop14
	i64.const	$push89=, 0
	i64.store	32($0), $pop89
	i32.const	$push18=, 40
	i32.add 	$push19=, $0, $pop18
	i64.const	$push20=, 1398362884
	i64.store	0($pop19), $pop20
	i32.const	$push88=, 1
	i32.const	$push21=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop88, $pop21
	i64.const	$3=, 5462355
	i32.const	$4=, 0
.LBB120_8:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push22=, $3
	i32.const	$push93=, 24
	i32.shl 	$push23=, $pop22, $pop93
	i32.const	$push92=, -1073741825
	i32.add 	$push24=, $pop23, $pop92
	i32.const	$push91=, 452984830
	i32.gt_u	$push25=, $pop24, $pop91
	br_if   	1, $pop25
	block   	
	i64.const	$push98=, 8
	i64.shr_u	$push97=, $3, $pop98
	tee_local	$push96=, $3=, $pop97
	i64.const	$push95=, 255
	i64.and 	$push26=, $pop96, $pop95
	i64.const	$push94=, 0
	i64.ne  	$push27=, $pop26, $pop94
	br_if   	0, $pop27
.LBB120_10:
	loop    	
	i64.const	$push103=, 8
	i64.shr_u	$push102=, $3, $pop103
	tee_local	$push101=, $3=, $pop102
	i64.const	$push100=, 255
	i64.and 	$push28=, $pop101, $pop100
	i64.const	$push99=, 0
	i64.ne  	$push29=, $pop28, $pop99
	br_if   	3, $pop29
	i32.const	$push107=, 1
	i32.add 	$push106=, $4, $pop107
	tee_local	$push105=, $4=, $pop106
	i32.const	$push104=, 7
	i32.lt_s	$push30=, $pop105, $pop104
	br_if   	0, $pop30
.LBB120_12:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push111=, 1
	i32.add 	$push110=, $4, $pop111
	tee_local	$push109=, $4=, $pop110
	i32.const	$push108=, 7
	i32.lt_s	$push31=, $pop109, $pop108
	br_if   	0, $pop31
	br      	2
.LBB120_13:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB120_14:
	end_block
	i32.const	$push32=, .L.str.66
	call    	eosio_assert@FUNCTION, $5, $pop32
	i64.const	$push114=, 0
	i64.store	56($0), $pop114
	i32.const	$push33=, 72
	i32.add 	$push34=, $0, $pop33
	i64.const	$push113=, 0
	i64.store	0($pop34), $pop113
	i32.const	$push35=, 64
	i32.add 	$push36=, $0, $pop35
	i64.const	$push37=, 1398362884
	i64.store	0($pop36), $pop37
	i32.const	$push112=, 1
	i32.const	$push38=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop112, $pop38
	i64.const	$3=, 5462355
	i32.const	$4=, 0
.LBB120_15:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push39=, $3
	i32.const	$push117=, 24
	i32.shl 	$push40=, $pop39, $pop117
	i32.const	$push116=, -1073741825
	i32.add 	$push41=, $pop40, $pop116
	i32.const	$push115=, 452984830
	i32.gt_u	$push42=, $pop41, $pop115
	br_if   	1, $pop42
	block   	
	i64.const	$push122=, 8
	i64.shr_u	$push121=, $3, $pop122
	tee_local	$push120=, $3=, $pop121
	i64.const	$push119=, 255
	i64.and 	$push43=, $pop120, $pop119
	i64.const	$push118=, 0
	i64.ne  	$push44=, $pop43, $pop118
	br_if   	0, $pop44
.LBB120_17:
	loop    	
	i64.const	$push127=, 8
	i64.shr_u	$push126=, $3, $pop127
	tee_local	$push125=, $3=, $pop126
	i64.const	$push124=, 255
	i64.and 	$push45=, $pop125, $pop124
	i64.const	$push123=, 0
	i64.ne  	$push46=, $pop45, $pop123
	br_if   	3, $pop46
	i32.const	$push131=, 1
	i32.add 	$push130=, $4, $pop131
	tee_local	$push129=, $4=, $pop130
	i32.const	$push128=, 7
	i32.lt_s	$push47=, $pop129, $pop128
	br_if   	0, $pop47
.LBB120_19:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push135=, 1
	i32.add 	$push134=, $4, $pop135
	tee_local	$push133=, $4=, $pop134
	i32.const	$push132=, 7
	i32.lt_s	$push48=, $pop133, $pop132
	br_if   	0, $pop48
	br      	2
.LBB120_20:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB120_21:
	end_block
	i32.const	$push49=, .L.str.66
	call    	eosio_assert@FUNCTION, $5, $pop49
	i32.store	4($6), $1
	i32.store	0($6), $1
	i32.add 	$push50=, $1, $2
	i32.store	8($6), $pop50
	i32.store	16($6), $6
	i32.store	24($6), $0
	i32.const	$push58=, 24
	i32.add 	$push59=, $6, $pop58
	i32.const	$push60=, 16
	i32.add 	$push61=, $6, $pop60
	call    	_ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio5assetEmNS8_14extended_assetESA_EEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_mSA_SA_EEERT_SJ_RNS7_IJDpT0_EEEEUlSJ_E_EEvRKSI_RKT0_@FUNCTION, $pop59, $pop61
	i32.const	$push57=, 0
	i32.const	$push55=, 32
	i32.add 	$push56=, $6, $pop55
	i32.store	__stack_pointer($pop57), $pop56
	.endfunc
.Lfunc_end120:
	.size	_ZN5eosio6unpackINSt3__15tupleIJyNS_5assetEmNS_14extended_assetES4_EEEEET_PKcj, .Lfunc_end120-_ZN5eosio6unpackINSt3__15tupleIJyNS_5assetEmNS_14extended_assetES4_EEEEET_PKcj

	.section	.text._ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio5assetEmNS8_14extended_assetESA_EEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_mSA_SA_EEERT_SJ_RNS7_IJDpT0_EEEEUlSJ_E_EEvRKSI_RKT0_,"axG",@progbits,_ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio5assetEmNS8_14extended_assetESA_EEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_mSA_SA_EEERT_SJ_RNS7_IJDpT0_EEEEUlSJ_E_EEvRKSI_RKT0_,comdat
	.hidden	_ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio5assetEmNS8_14extended_assetESA_EEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_mSA_SA_EEERT_SJ_RNS7_IJDpT0_EEEEUlSJ_E_EEvRKSI_RKT0_
	.weak	_ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio5assetEmNS8_14extended_assetESA_EEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_mSA_SA_EEERT_SJ_RNS7_IJDpT0_EEEEUlSJ_E_EEvRKSI_RKT0_
	.type	_ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio5assetEmNS8_14extended_assetESA_EEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_mSA_SA_EEERT_SJ_RNS7_IJDpT0_EEEEUlSJ_E_EEvRKSI_RKT0_,@function
_ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio5assetEmNS8_14extended_assetESA_EEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_mSA_SA_EEERT_SJ_RNS7_IJDpT0_EEEEUlSJ_E_EEvRKSI_RKT0_:
	.param  	i32, i32
	.local  	i32, i32
	i32.load	$2=, 0($0)
	i32.load	$push137=, 0($1)
	tee_local	$push136=, $3=, $pop137
	i32.load	$push1=, 8($pop136)
	i32.load	$push0=, 4($3)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($3)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $2, $pop6, $pop7
	i32.load	$push8=, 4($3)
	i32.const	$push135=, 8
	i32.add 	$push9=, $pop8, $pop135
	i32.store	4($3), $pop9
	i32.load	$0=, 0($0)
	i32.load	$push134=, 0($1)
	tee_local	$push133=, $3=, $pop134
	i32.load	$push11=, 8($pop133)
	i32.load	$push10=, 4($3)
	i32.sub 	$push12=, $pop11, $pop10
	i32.const	$push132=, 7
	i32.gt_u	$push13=, $pop12, $pop132
	i32.const	$push131=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop13, $pop131
	i32.const	$push130=, 8
	i32.add 	$push14=, $0, $pop130
	i32.load	$push15=, 4($3)
	i32.const	$push129=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop14, $pop15, $pop129
	i32.load	$push16=, 4($3)
	i32.const	$push128=, 8
	i32.add 	$push127=, $pop16, $pop128
	tee_local	$push126=, $2=, $pop127
	i32.store	4($3), $pop126
	i32.load	$push17=, 8($3)
	i32.sub 	$push18=, $pop17, $2
	i32.const	$push125=, 7
	i32.gt_u	$push19=, $pop18, $pop125
	i32.const	$push124=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop19, $pop124
	i32.const	$push20=, 16
	i32.add 	$push21=, $0, $pop20
	i32.load	$push22=, 4($3)
	i32.const	$push123=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop21, $pop22, $pop123
	i32.load	$push23=, 4($3)
	i32.const	$push122=, 8
	i32.add 	$push24=, $pop23, $pop122
	i32.store	4($3), $pop24
	i32.load	$push121=, 0($1)
	tee_local	$push120=, $3=, $pop121
	i32.load	$push26=, 8($pop120)
	i32.load	$push25=, 4($3)
	i32.sub 	$push27=, $pop26, $pop25
	i32.const	$push28=, 3
	i32.gt_u	$push29=, $pop27, $pop28
	i32.const	$push119=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop29, $pop119
	i32.const	$push30=, 24
	i32.add 	$push31=, $0, $pop30
	i32.load	$push32=, 4($3)
	i32.const	$push33=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop31, $pop32, $pop33
	i32.load	$push34=, 4($3)
	i32.const	$push118=, 4
	i32.add 	$push35=, $pop34, $pop118
	i32.store	4($3), $pop35
	i32.load	$push117=, 0($1)
	tee_local	$push116=, $3=, $pop117
	i32.load	$push37=, 8($pop116)
	i32.load	$push36=, 4($3)
	i32.sub 	$push38=, $pop37, $pop36
	i32.const	$push115=, 7
	i32.gt_u	$push39=, $pop38, $pop115
	i32.const	$push114=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop39, $pop114
	i32.const	$push40=, 32
	i32.add 	$push41=, $0, $pop40
	i32.load	$push42=, 4($3)
	i32.const	$push113=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop41, $pop42, $pop113
	i32.load	$push43=, 4($3)
	i32.const	$push112=, 8
	i32.add 	$push111=, $pop43, $pop112
	tee_local	$push110=, $2=, $pop111
	i32.store	4($3), $pop110
	i32.load	$push44=, 8($3)
	i32.sub 	$push45=, $pop44, $2
	i32.const	$push109=, 7
	i32.gt_u	$push46=, $pop45, $pop109
	i32.const	$push108=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop46, $pop108
	i32.const	$push47=, 40
	i32.add 	$push48=, $0, $pop47
	i32.load	$push49=, 4($3)
	i32.const	$push107=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop48, $pop49, $pop107
	i32.load	$push50=, 4($3)
	i32.const	$push106=, 8
	i32.add 	$push105=, $pop50, $pop106
	tee_local	$push104=, $2=, $pop105
	i32.store	4($3), $pop104
	i32.load	$push51=, 8($3)
	i32.sub 	$push52=, $pop51, $2
	i32.const	$push103=, 7
	i32.gt_u	$push53=, $pop52, $pop103
	i32.const	$push102=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop53, $pop102
	i32.const	$push54=, 48
	i32.add 	$push55=, $0, $pop54
	i32.load	$push56=, 4($3)
	i32.const	$push101=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop55, $pop56, $pop101
	i32.load	$push57=, 4($3)
	i32.const	$push100=, 8
	i32.add 	$push58=, $pop57, $pop100
	i32.store	4($3), $pop58
	i32.load	$push99=, 0($1)
	tee_local	$push98=, $3=, $pop99
	i32.load	$push60=, 8($pop98)
	i32.load	$push59=, 4($3)
	i32.sub 	$push61=, $pop60, $pop59
	i32.const	$push97=, 7
	i32.gt_u	$push62=, $pop61, $pop97
	i32.const	$push96=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop62, $pop96
	i32.const	$push63=, 56
	i32.add 	$push64=, $0, $pop63
	i32.load	$push65=, 4($3)
	i32.const	$push95=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop64, $pop65, $pop95
	i32.load	$push66=, 4($3)
	i32.const	$push94=, 8
	i32.add 	$push93=, $pop66, $pop94
	tee_local	$push92=, $1=, $pop93
	i32.store	4($3), $pop92
	i32.load	$push67=, 8($3)
	i32.sub 	$push68=, $pop67, $1
	i32.const	$push91=, 7
	i32.gt_u	$push69=, $pop68, $pop91
	i32.const	$push90=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop69, $pop90
	i32.const	$push70=, 64
	i32.add 	$push71=, $0, $pop70
	i32.load	$push72=, 4($3)
	i32.const	$push89=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop71, $pop72, $pop89
	i32.load	$push73=, 4($3)
	i32.const	$push88=, 8
	i32.add 	$push87=, $pop73, $pop88
	tee_local	$push86=, $1=, $pop87
	i32.store	4($3), $pop86
	i32.load	$push74=, 8($3)
	i32.sub 	$push75=, $pop74, $1
	i32.const	$push85=, 7
	i32.gt_u	$push76=, $pop75, $pop85
	i32.const	$push84=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop76, $pop84
	i32.const	$push77=, 72
	i32.add 	$push78=, $0, $pop77
	i32.load	$push79=, 4($3)
	i32.const	$push83=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop78, $pop79, $pop83
	i32.load	$push80=, 4($3)
	i32.const	$push82=, 8
	i32.add 	$push81=, $pop80, $pop82
	i32.store	4($3), $pop81
	.endfunc
.Lfunc_end121:
	.size	_ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio5assetEmNS8_14extended_assetESA_EEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_mSA_SA_EEERT_SJ_RNS7_IJDpT0_EEEEUlSJ_E_EEvRKSI_RKT0_, .Lfunc_end121-_ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyN5eosio5assetEmNS8_14extended_assetESA_EEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyS9_mSA_SA_EEERT_SJ_RNS7_IJDpT0_EEEEUlSJ_E_EEvRKSI_RKT0_

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency8transferE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency8transferE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency8transferE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency8transferE
	.type	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency8transferE,@function
_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency8transferE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push52=, 8
	i32.add 	$push51=, $pop8, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.store	4($0), $pop50
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push49=, 7
	i32.gt_u	$push11=, $pop10, $pop49
	i32.const	$push48=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop11, $pop48
	i32.const	$push47=, 8
	i32.add 	$push12=, $1, $pop47
	i32.load	$push13=, 4($0)
	i32.const	$push46=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop13, $pop46
	i32.load	$push14=, 4($0)
	i32.const	$push45=, 8
	i32.add 	$push44=, $pop14, $pop45
	tee_local	$push43=, $2=, $pop44
	i32.store	4($0), $pop43
	i32.load	$push15=, 8($0)
	i32.sub 	$push16=, $pop15, $2
	i32.const	$push42=, 7
	i32.gt_u	$push17=, $pop16, $pop42
	i32.const	$push41=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop17, $pop41
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.load	$push20=, 4($0)
	i32.const	$push40=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop19, $pop20, $pop40
	i32.load	$push21=, 4($0)
	i32.const	$push39=, 8
	i32.add 	$push38=, $pop21, $pop39
	tee_local	$push37=, $2=, $pop38
	i32.store	4($0), $pop37
	i32.load	$push22=, 8($0)
	i32.sub 	$push23=, $pop22, $2
	i32.const	$push36=, 7
	i32.gt_u	$push24=, $pop23, $pop36
	i32.const	$push35=, .L.str.83
	call    	eosio_assert@FUNCTION, $pop24, $pop35
	i32.const	$push25=, 24
	i32.add 	$push26=, $1, $pop25
	i32.load	$push27=, 4($0)
	i32.const	$push34=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop26, $pop27, $pop34
	i32.load	$push28=, 4($0)
	i32.const	$push33=, 8
	i32.add 	$push29=, $pop28, $pop33
	i32.store	4($0), $pop29
	i32.const	$push30=, 32
	i32.add 	$push31=, $1, $pop30
	i32.call	$push32=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $0, $pop31
	.endfunc
.Lfunc_end122:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency8transferE, .Lfunc_end122-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNS_8currency8transferE

	.text
	.hidden	apply
	.globl	apply
	.type	apply,@function
apply:
	.param  	i64, i64, i64
	.local  	i32
	i32.const	$push9=, 0
	i32.const	$push6=, 0
	i32.load	$push7=, __stack_pointer($pop6)
	i32.const	$push8=, 48
	i32.sub 	$push14=, $pop7, $pop8
	tee_local	$push13=, $3=, $pop14
	i32.store	__stack_pointer($pop9), $pop13
	i32.const	$push0=, 32
	i32.add 	$push1=, $3, $pop0
	i64.const	$push2=, 0
	i64.store	0($pop1), $pop2
	i32.const	$push3=, 40
	i32.add 	$push4=, $3, $pop3
	i32.const	$push5=, 0
	i32.store	0($pop4), $pop5
	i64.store	16($3), $0
	i64.store	8($3), $0
	i64.store	24($3), $0
	i32.const	$push10=, 8
	i32.add 	$push11=, $3, $pop10
	call    	_ZN5eosio8exchange5applyEyy@FUNCTION, $pop11, $1, $2
	i32.const	$push12=, 0
	call    	eosio_exit@FUNCTION, $pop12
	unreachable
	.endfunc
.Lfunc_end123:
	.size	apply, .Lfunc_end123-apply

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
.LBB124_1:
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
.LBB124_3:
	end_loop
	end_block
	copy_local	$push12=, $0
	.endfunc
.Lfunc_end124:
	.size	_Znwj, .Lfunc_end124-_Znwj

	.weak	_ZdlPv
	.type	_ZdlPv,@function
_ZdlPv:
	.param  	i32
	block   	
	i32.eqz 	$push0=, $0
	br_if   	0, $pop0
	call    	free@FUNCTION, $0
.LBB125_2:
	end_block
	.endfunc
.Lfunc_end125:
	.size	_ZdlPv, .Lfunc_end125-_ZdlPv

	.section	.text._ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,comdat
	.hidden	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
	.weak	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
	.type	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end126:
	.size	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv, .Lfunc_end126-_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv

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
.LBB127_3:
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
.LBB127_5:
	end_block
	i32.load	$3=, 4($0)
.LBB127_6:
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
.LBB127_8:
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
.LBB127_11:
	end_block
	i32.const	$push42=, 1
	i32.add 	$push22=, $4, $pop42
	i32.call	$1=, _Znwj@FUNCTION, $pop22
	block   	
	i32.gt_u	$push21=, $4, $2
	br_if   	0, $pop21
	i32.eqz 	$push53=, $1
	br_if   	2, $pop53
.LBB127_13:
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
.LBB127_15:
	end_block
	i32.load	$2=, 8($0)
	i32.const	$6=, 1
	i32.const	$7=, 1
.LBB127_16:
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
.LBB127_18:
	end_block
	i32.load	$5=, 4($0)
.LBB127_19:
	end_block
	block   	
	i32.const	$push27=, 1
	i32.add 	$push50=, $5, $pop27
	tee_local	$push49=, $5=, $pop50
	i32.eqz 	$push54=, $pop49
	br_if   	0, $pop54
	i32.call	$drop=, memcpy@FUNCTION, $1, $2, $5
.LBB127_21:
	end_block
	block   	
	i32.eqz 	$push55=, $6
	br_if   	0, $pop55
	call    	_ZdlPv@FUNCTION, $2
.LBB127_23:
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
.LBB127_25:
	end_block
	i32.const	$push28=, 1
	i32.shl 	$push29=, $3, $pop28
	i32.store8	0($0), $pop29
.LBB127_26:
	end_block
	return
.LBB127_27:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end127:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj, .Lfunc_end127-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj

	.section	.text._ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj,"axG",@progbits,_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj,comdat
	.hidden	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj
	.weak	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj
	.type	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj,@function
_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj:
	.param  	i32, i32, i32, i32, i32
	.result 	i32
	.local  	i32, i32
	block   	
	block   	
	i32.load8_u	$push13=, 0($0)
	tee_local	$push12=, $6=, $pop13
	i32.const	$push11=, 1
	i32.and 	$push10=, $pop12, $pop11
	tee_local	$push9=, $5=, $pop10
	br_if   	0, $pop9
	i32.const	$push14=, 1
	i32.shr_u	$6=, $6, $pop14
	br      	1
.LBB128_2:
	end_block
	i32.load	$6=, 4($0)
.LBB128_3:
	end_block
	block   	
	i32.const	$push0=, -1
	i32.eq  	$push1=, $4, $pop0
	br_if   	0, $pop1
	i32.lt_u	$push2=, $6, $1
	br_if   	0, $pop2
	i32.sub 	$push16=, $6, $1
	tee_local	$push15=, $6=, $pop16
	i32.lt_u	$push3=, $6, $2
	i32.select	$6=, $pop15, $2, $pop3
	block   	
	block   	
	br_if   	0, $5
	i32.const	$push4=, 1
	i32.add 	$0=, $0, $pop4
	br      	1
.LBB128_7:
	end_block
	i32.load	$0=, 8($0)
.LBB128_8:
	end_block
	block   	
	i32.gt_u	$push20=, $6, $4
	tee_local	$push19=, $5=, $pop20
	i32.select	$push18=, $4, $6, $pop19
	tee_local	$push17=, $2=, $pop18
	i32.eqz 	$push23=, $pop17
	br_if   	0, $pop23
	i32.add 	$push5=, $0, $1
	i32.call	$push22=, memcmp@FUNCTION, $pop5, $3, $2
	tee_local	$push21=, $1=, $pop22
	i32.eqz 	$push24=, $pop21
	br_if   	0, $pop24
	return  	$1
.LBB128_11:
	end_block
	i32.const	$push7=, -1
	i32.lt_u	$push6=, $6, $4
	i32.select	$push8=, $pop7, $5, $pop6
	return  	$pop8
.LBB128_12:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end128:
	.size	_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj, .Lfunc_end128-_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj

	.section	.text._ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,comdat
	.hidden	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.weak	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.type	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end129:
	.size	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv, .Lfunc_end129-_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv

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
.LBB130_2:
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
.LBB130_5:
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
.LBB130_6:
	end_block
	i32.call	$drop=, memcpy@FUNCTION, $1, $2, $3
.LBB130_7:
	end_block
	i32.add 	$push16=, $1, $3
	i32.const	$push17=, 0
	i32.store8	0($pop16), $pop17
	return  	$0
.LBB130_8:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end130:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_, .Lfunc_end130-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_

	.text
	.hidden	pow
	.globl	pow
	.type	pow,@function
pow:
	.param  	f64, f64
	.result 	f64
	.local  	i32, i32, i64, i32, i32, i32, i32, i32, f64, i64, f64, f64, f64, f64, f64, f64, f64, i32, f64, f64
	f64.const	$21=, 0x1p0
	block   	
	i64.reinterpret/f64	$push380=, $1
	tee_local	$push379=, $4=, $pop380
	i64.const	$push378=, 32
	i64.shr_u	$push1=, $pop379, $pop378
	i32.wrap/i64	$push377=, $pop1
	tee_local	$push376=, $5=, $pop377
	i32.const	$push375=, 2147483647
	i32.and 	$push374=, $pop376, $pop375
	tee_local	$push373=, $8=, $pop374
	i32.wrap/i64	$push372=, $4
	tee_local	$push371=, $6=, $pop372
	i32.or  	$push2=, $pop373, $pop371
	i32.eqz 	$push527=, $pop2
	br_if   	0, $pop527
	i64.reinterpret/f64	$push385=, $0
	tee_local	$push384=, $11=, $pop385
	i64.const	$push383=, 32
	i64.shr_u	$push0=, $pop384, $pop383
	i32.wrap/i64	$2=, $pop0
	block   	
	i32.wrap/i64	$push382=, $11
	tee_local	$push381=, $3=, $pop382
	br_if   	0, $pop381
	i32.const	$push3=, 1072693248
	i32.eq  	$push4=, $2, $pop3
	br_if   	1, $pop4
.LBB131_3:
	end_block
	block   	
	block   	
	i32.const	$push389=, 2147483647
	i32.and 	$push388=, $2, $pop389
	tee_local	$push387=, $7=, $pop388
	i32.const	$push386=, 2146435072
	i32.gt_u	$push5=, $pop387, $pop386
	br_if   	0, $pop5
	i32.const	$push7=, 0
	i32.ne  	$push8=, $3, $pop7
	i32.const	$push390=, 2146435072
	i32.eq  	$push6=, $7, $pop390
	i32.and 	$push9=, $pop8, $pop6
	br_if   	0, $pop9
	i32.const	$push10=, 2146435072
	i32.gt_u	$push11=, $8, $pop10
	br_if   	0, $pop11
	i32.eqz 	$push528=, $6
	br_if   	1, $pop528
	i32.const	$push12=, 2146435072
	i32.ne  	$push13=, $8, $pop12
	br_if   	1, $pop13
.LBB131_8:
	end_block
	f64.add 	$push370=, $0, $1
	return  	$pop370
.LBB131_9:
	end_block
	i32.const	$19=, 0
	block   	
	block   	
	block   	
	block   	
	i32.const	$push14=, -1
	i32.gt_s	$push15=, $2, $pop14
	br_if   	0, $pop15
	i32.const	$19=, 2
	i32.const	$push16=, 1128267775
	i32.gt_u	$push17=, $8, $pop16
	br_if   	0, $pop17
	i32.const	$19=, 0
	i32.const	$push18=, 1072693248
	i32.lt_u	$push19=, $8, $pop18
	br_if   	0, $pop19
	i32.const	$push20=, 20
	i32.shr_u	$push392=, $8, $pop20
	tee_local	$push391=, $9=, $pop392
	i32.const	$push21=, -1023
	i32.add 	$push22=, $pop391, $pop21
	i32.const	$push23=, 21
	i32.lt_s	$push24=, $pop22, $pop23
	br_if   	1, $pop24
	i32.const	$push38=, 2
	i32.const	$push33=, 1075
	i32.sub 	$push396=, $pop33, $9
	tee_local	$push395=, $19=, $pop396
	i32.shr_u	$push394=, $6, $pop395
	tee_local	$push393=, $9=, $pop394
	i32.const	$push36=, 1
	i32.and 	$push37=, $pop393, $pop36
	i32.sub 	$push39=, $pop38, $pop37
	i32.const	$push40=, 0
	i32.shl 	$push34=, $9, $19
	i32.eq  	$push35=, $pop34, $6
	i32.select	$19=, $pop39, $pop40, $pop35
.LBB131_14:
	end_block
	i32.eqz 	$push529=, $6
	br_if   	1, $pop529
	br      	2
.LBB131_15:
	end_block
	i32.const	$19=, 0
	br_if   	1, $6
	i32.const	$push30=, 2
	i32.const	$push25=, 1043
	i32.sub 	$push477=, $pop25, $9
	tee_local	$push476=, $6=, $pop477
	i32.shr_u	$push475=, $8, $pop476
	tee_local	$push474=, $19=, $pop475
	i32.const	$push28=, 1
	i32.and 	$push29=, $pop474, $pop28
	i32.sub 	$push31=, $pop30, $pop29
	i32.const	$push32=, 0
	i32.shl 	$push26=, $19, $6
	i32.eq  	$push27=, $pop26, $8
	i32.select	$19=, $pop31, $pop32, $pop27
.LBB131_17:
	end_block
	block   	
	block   	
	block   	
	block   	
	i32.const	$push41=, 2146435072
	i32.ne  	$push42=, $8, $pop41
	br_if   	0, $pop42
	i32.const	$push338=, -1072693248
	i32.add 	$push339=, $7, $pop338
	i32.or  	$push340=, $pop339, $3
	i32.eqz 	$push530=, $pop340
	br_if   	5, $pop530
	i32.const	$push341=, 1072693248
	i32.lt_u	$push342=, $7, $pop341
	br_if   	1, $pop342
	f64.const	$push349=, 0x0p0
	i32.const	$push347=, -1
	i32.gt_s	$push348=, $5, $pop347
	f64.select	$push368=, $1, $pop349, $pop348
	return  	$pop368
.LBB131_21:
	end_block
	block   	
	i32.const	$push43=, 1072693248
	i32.ne  	$push44=, $8, $pop43
	br_if   	0, $pop44
	i32.const	$push335=, -1
	i32.le_s	$push336=, $5, $pop335
	br_if   	3, $pop336
	copy_local	$push353=, $0
	return  	$pop353
.LBB131_24:
	end_block
	i32.const	$push45=, 1073741824
	i32.ne  	$push46=, $5, $pop45
	br_if   	1, $pop46
	f64.mul 	$push365=, $0, $0
	return  	$pop365
.LBB131_26:
	end_block
	f64.const	$push346=, 0x0p0
	f64.neg 	$push345=, $1
	i32.const	$push343=, -1
	i32.gt_s	$push344=, $5, $pop343
	f64.select	$push367=, $pop346, $pop345, $pop344
	return  	$pop367
.LBB131_27:
	end_block
	i32.const	$push47=, 0
	i32.lt_s	$push48=, $2, $pop47
	br_if   	1, $pop48
	i32.const	$push49=, 1071644672
	i32.ne  	$push50=, $5, $pop49
	br_if   	1, $pop50
	f64.call	$push364=, sqrt@FUNCTION, $0
	return  	$pop364
.LBB131_30:
	end_block
	f64.const	$push337=, 0x1p0
	f64.div 	$push366=, $pop337, $0
	return  	$pop366
.LBB131_31:
	end_block
	f64.call	$21=, fabs@FUNCTION, $0
	block   	
	block   	
	block   	
	block   	
	block   	
	br_if   	0, $3
	i32.eqz 	$push531=, $7
	br_if   	1, $pop531
	i32.const	$push52=, 1073741824
	i32.or  	$push51=, $7, $pop52
	i32.const	$push53=, 2146435072
	i32.eq  	$push54=, $pop51, $pop53
	br_if   	1, $pop54
.LBB131_34:
	end_block
	f64.const	$10=, 0x1p0
	i32.const	$push55=, -1
	i32.gt_s	$push56=, $2, $pop55
	br_if   	3, $pop56
	i32.const	$push57=, 1
	i32.eq  	$push58=, $19, $pop57
	br_if   	1, $pop58
	br_if   	3, $19
	f64.sub 	$push401=, $0, $0
	tee_local	$push400=, $1=, $pop401
	f64.div 	$push362=, $pop400, $1
	return  	$pop362
.LBB131_38:
	end_block
	f64.const	$push324=, 0x1p0
	f64.div 	$push325=, $pop324, $21
	i32.const	$push322=, 0
	i32.lt_s	$push323=, $5, $pop322
	f64.select	$21=, $pop325, $21, $pop323
	i32.const	$push326=, -1
	i32.gt_s	$push327=, $2, $pop326
	br_if   	3, $pop327
	i32.const	$push328=, -1072693248
	i32.add 	$push329=, $7, $pop328
	i32.or  	$push330=, $19, $pop329
	i32.eqz 	$push532=, $pop330
	br_if   	1, $pop532
	f64.neg 	$push333=, $21
	i32.const	$push331=, 1
	i32.eq  	$push332=, $19, $pop331
	f64.select	$push334=, $pop333, $21, $pop332
	return  	$pop334
.LBB131_41:
	end_block
	f64.const	$10=, -0x1p0
	br      	1
.LBB131_42:
	end_block
	f64.sub 	$push525=, $21, $21
	tee_local	$push524=, $1=, $pop525
	f64.div 	$push363=, $pop524, $1
	return  	$pop363
.LBB131_43:
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
	i32.const	$push59=, 1105199105
	i32.lt_u	$push60=, $8, $pop59
	br_if   	0, $pop60
	i32.const	$push163=, 1139802113
	i32.lt_u	$push164=, $8, $pop163
	br_if   	1, $pop164
	i32.const	$push312=, 1072693247
	i32.gt_u	$push313=, $7, $pop312
	br_if   	4, $pop313
	f64.const	$push321=, infinity
	f64.const	$push320=, 0x0p0
	i32.const	$push318=, 0
	i32.lt_s	$push319=, $5, $pop318
	f64.select	$push361=, $pop321, $pop320, $pop319
	return  	$pop361
.LBB131_47:
	end_block
	i32.const	$8=, 0
	i32.const	$push397=, 1048575
	i32.gt_u	$push61=, $7, $pop397
	br_if   	1, $pop61
	f64.const	$push62=, 0x1p53
	f64.mul 	$push399=, $21, $pop62
	tee_local	$push398=, $21=, $pop399
	i64.reinterpret/f64	$push63=, $pop398
	i64.const	$push64=, 32
	i64.shr_u	$push65=, $pop63, $pop64
	i32.wrap/i64	$7=, $pop65
	i32.const	$5=, -53
	br      	2
.LBB131_49:
	end_block
	i32.const	$push165=, 1072693246
	i32.gt_u	$push166=, $7, $pop165
	br_if   	3, $pop166
	f64.const	$push310=, 0x1.7e43c8800759cp996
	f64.const	$push309=, 0x1.56e1fc2f8f359p-997
	i32.const	$push307=, 0
	i32.lt_s	$push308=, $5, $pop307
	f64.select	$push403=, $pop310, $pop309, $pop308
	tee_local	$push402=, $1=, $pop403
	f64.mul 	$push311=, $1, $10
	f64.mul 	$push359=, $pop402, $pop311
	return  	$pop359
.LBB131_51:
	end_block
	i32.const	$5=, 0
.LBB131_52:
	end_block
	i32.const	$push406=, 1048575
	i32.and 	$push405=, $7, $pop406
	tee_local	$push404=, $6=, $pop405
	i32.const	$push66=, 1072693248
	i32.or  	$2=, $pop404, $pop66
	i32.const	$push67=, 20
	i32.shr_s	$push68=, $7, $pop67
	i32.add 	$push69=, $pop68, $5
	i32.const	$push70=, -1023
	i32.add 	$5=, $pop69, $pop70
	i32.const	$push71=, 235663
	i32.lt_u	$push72=, $6, $pop71
	br_if   	3, $pop72
	i32.const	$push73=, 767610
	i32.ge_u	$push74=, $6, $pop73
	br_if   	2, $pop74
	i32.const	$8=, 1
	br      	3
.LBB131_55:
	end_block
	f64.const	$push317=, infinity
	f64.const	$push316=, 0x0p0
	i32.const	$push314=, 0
	i32.gt_s	$push315=, $5, $pop314
	f64.select	$push360=, $pop317, $pop316, $pop315
	return  	$pop360
.LBB131_56:
	end_block
	i32.const	$push167=, 1072693249
	i32.lt_u	$push168=, $7, $pop167
	br_if   	2, $pop168
	f64.const	$push305=, 0x1.7e43c8800759cp996
	f64.const	$push304=, 0x1.56e1fc2f8f359p-997
	i32.const	$push302=, 0
	i32.gt_s	$push303=, $5, $pop302
	f64.select	$push408=, $pop305, $pop304, $pop303
	tee_local	$push407=, $1=, $pop408
	f64.mul 	$push306=, $1, $10
	f64.mul 	$push358=, $pop407, $pop306
	return  	$pop358
.LBB131_58:
	end_block
	i32.const	$push75=, -1048576
	i32.add 	$2=, $2, $pop75
	i32.const	$push76=, 1
	i32.add 	$5=, $5, $pop76
.LBB131_59:
	end_block
	f64.convert_s/i32	$push454=, $5
	tee_local	$push453=, $20=, $pop454
	i32.const	$push84=, 3
	i32.shl 	$push452=, $8, $pop84
	tee_local	$push451=, $6=, $pop452
	i32.const	$push155=, dp_h
	i32.add 	$push156=, $pop451, $pop155
	f64.load	$push450=, 0($pop156)
	tee_local	$push449=, $18=, $pop450
	i64.extend_u/i32	$push80=, $2
	i64.const	$push81=, 32
	i64.shl 	$push82=, $pop80, $pop81
	i64.reinterpret/f64	$push77=, $21
	i64.const	$push78=, 4294967295
	i64.and 	$push79=, $pop77, $pop78
	i64.or  	$push83=, $pop82, $pop79
	f64.reinterpret/i64	$push448=, $pop83
	tee_local	$push447=, $12=, $pop448
	i32.const	$push85=, bp
	i32.add 	$push86=, $6, $pop85
	f64.load	$push446=, 0($pop86)
	tee_local	$push445=, $13=, $pop446
	f64.sub 	$push444=, $pop447, $pop445
	tee_local	$push443=, $14=, $pop444
	f64.const	$push88=, 0x1p0
	f64.add 	$push87=, $13, $12
	f64.div 	$push442=, $pop88, $pop87
	tee_local	$push441=, $15=, $pop442
	f64.mul 	$push440=, $pop443, $pop441
	tee_local	$push439=, $21=, $pop440
	i64.reinterpret/f64	$push89=, $pop439
	i64.const	$push90=, -4294967296
	i64.and 	$push91=, $pop89, $pop90
	f64.reinterpret/i64	$push438=, $pop91
	tee_local	$push437=, $0=, $pop438
	f64.mul 	$push436=, $0, $0
	tee_local	$push435=, $17=, $pop436
	f64.const	$push129=, 0x1.8p1
	f64.add 	$push130=, $pop435, $pop129
	f64.add 	$push92=, $21, $0
	i32.const	$push95=, 1
	i32.shr_s	$push96=, $2, $pop95
	i32.const	$push97=, 536870912
	i32.or  	$push98=, $pop96, $pop97
	i32.const	$push93=, 18
	i32.shl 	$push94=, $8, $pop93
	i32.add 	$push99=, $pop98, $pop94
	i32.const	$push100=, 524288
	i32.add 	$push101=, $pop99, $pop100
	i64.extend_u/i32	$push102=, $pop101
	i64.const	$push434=, 32
	i64.shl 	$push103=, $pop102, $pop434
	f64.reinterpret/i64	$push433=, $pop103
	tee_local	$push432=, $16=, $pop433
	f64.mul 	$push107=, $0, $pop432
	f64.sub 	$push108=, $14, $pop107
	f64.sub 	$push104=, $16, $13
	f64.sub 	$push105=, $12, $pop104
	f64.mul 	$push106=, $0, $pop105
	f64.sub 	$push109=, $pop108, $pop106
	f64.mul 	$push431=, $15, $pop109
	tee_local	$push430=, $12=, $pop431
	f64.mul 	$push110=, $pop92, $pop430
	f64.mul 	$push429=, $21, $21
	tee_local	$push428=, $0=, $pop429
	f64.mul 	$push127=, $pop428, $0
	f64.const	$push111=, 0x1.a7e284a454eefp-3
	f64.mul 	$push112=, $0, $pop111
	f64.const	$push113=, 0x1.d864a93c9db65p-3
	f64.add 	$push114=, $pop112, $pop113
	f64.mul 	$push115=, $0, $pop114
	f64.const	$push116=, 0x1.17460a91d4101p-2
	f64.add 	$push117=, $pop115, $pop116
	f64.mul 	$push118=, $0, $pop117
	f64.const	$push119=, 0x1.55555518f264dp-2
	f64.add 	$push120=, $pop118, $pop119
	f64.mul 	$push121=, $0, $pop120
	f64.const	$push122=, 0x1.b6db6db6fabffp-2
	f64.add 	$push123=, $pop121, $pop122
	f64.mul 	$push124=, $0, $pop123
	f64.const	$push125=, 0x1.3333333333303p-1
	f64.add 	$push126=, $pop124, $pop125
	f64.mul 	$push128=, $pop127, $pop126
	f64.add 	$push427=, $pop110, $pop128
	tee_local	$push426=, $13=, $pop427
	f64.add 	$push131=, $pop130, $pop426
	i64.reinterpret/f64	$push132=, $pop131
	i64.const	$push425=, -4294967296
	i64.and 	$push133=, $pop132, $pop425
	f64.reinterpret/i64	$push424=, $pop133
	tee_local	$push423=, $0=, $pop424
	f64.mul 	$push422=, $pop437, $pop423
	tee_local	$push421=, $14=, $pop422
	f64.mul 	$push139=, $12, $0
	f64.const	$push134=, -0x1.8p1
	f64.add 	$push135=, $0, $pop134
	f64.sub 	$push136=, $pop135, $17
	f64.sub 	$push137=, $13, $pop136
	f64.mul 	$push138=, $21, $pop137
	f64.add 	$push420=, $pop139, $pop138
	tee_local	$push419=, $21=, $pop420
	f64.add 	$push140=, $pop421, $pop419
	i64.reinterpret/f64	$push141=, $pop140
	i64.const	$push418=, -4294967296
	i64.and 	$push142=, $pop141, $pop418
	f64.reinterpret/i64	$push417=, $pop142
	tee_local	$push416=, $0=, $pop417
	f64.const	$push153=, 0x1.ec709ep-1
	f64.mul 	$push415=, $pop416, $pop153
	tee_local	$push414=, $12=, $pop415
	i32.const	$push150=, dp_l
	i32.add 	$push151=, $6, $pop150
	f64.load	$push152=, 0($pop151)
	f64.sub 	$push143=, $0, $14
	f64.sub 	$push144=, $21, $pop143
	f64.const	$push145=, 0x1.ec709dc3a03fdp-1
	f64.mul 	$push146=, $pop144, $pop145
	f64.const	$push147=, -0x1.e2fe0145b01f5p-28
	f64.mul 	$push148=, $0, $pop147
	f64.add 	$push149=, $pop146, $pop148
	f64.add 	$push413=, $pop152, $pop149
	tee_local	$push412=, $13=, $pop413
	f64.add 	$push154=, $pop414, $pop412
	f64.add 	$push157=, $pop449, $pop154
	f64.add 	$push158=, $pop453, $pop157
	i64.reinterpret/f64	$push159=, $pop158
	i64.const	$push411=, -4294967296
	i64.and 	$push160=, $pop159, $pop411
	f64.reinterpret/i64	$push410=, $pop160
	tee_local	$push409=, $0=, $pop410
	f64.sub 	$push161=, $pop409, $20
	f64.sub 	$push162=, $pop161, $18
	f64.sub 	$20=, $pop162, $12
	br      	1
.LBB131_60:
	end_block
	f64.const	$push169=, -0x1p0
	f64.add 	$push485=, $21, $pop169
	tee_local	$push484=, $0=, $pop485
	f64.const	$push183=, 0x1.715476p0
	f64.mul 	$push483=, $pop484, $pop183
	tee_local	$push482=, $21=, $pop483
	f64.const	$push181=, 0x1.4ae0bf85ddf44p-26
	f64.mul 	$push182=, $0, $pop181
	f64.mul 	$push177=, $0, $0
	f64.const	$push175=, 0x1p-1
	f64.const	$push170=, -0x1p-2
	f64.mul 	$push171=, $0, $pop170
	f64.const	$push172=, 0x1.5555555555555p-2
	f64.add 	$push173=, $pop171, $pop172
	f64.mul 	$push174=, $0, $pop173
	f64.sub 	$push176=, $pop175, $pop174
	f64.mul 	$push178=, $pop177, $pop176
	f64.const	$push179=, -0x1.71547652b82fep0
	f64.mul 	$push180=, $pop178, $pop179
	f64.add 	$push481=, $pop182, $pop180
	tee_local	$push480=, $13=, $pop481
	f64.add 	$push184=, $pop482, $pop480
	i64.reinterpret/f64	$push185=, $pop184
	i64.const	$push186=, -4294967296
	i64.and 	$push187=, $pop185, $pop186
	f64.reinterpret/i64	$push479=, $pop187
	tee_local	$push478=, $0=, $pop479
	f64.sub 	$20=, $pop478, $21
.LBB131_61:
	end_block
	i64.const	$push190=, -4294967296
	i64.and 	$push191=, $4, $pop190
	f64.reinterpret/i64	$push466=, $pop191
	tee_local	$push465=, $12=, $pop466
	f64.mul 	$push464=, $pop465, $0
	tee_local	$push463=, $21=, $pop464
	f64.sub 	$push192=, $1, $12
	f64.mul 	$push193=, $pop192, $0
	f64.sub 	$push188=, $13, $20
	f64.mul 	$push189=, $pop188, $1
	f64.add 	$push462=, $pop193, $pop189
	tee_local	$push461=, $1=, $pop462
	f64.add 	$push460=, $pop463, $pop461
	tee_local	$push459=, $0=, $pop460
	i64.reinterpret/f64	$push458=, $pop459
	tee_local	$push457=, $4=, $pop458
	i32.wrap/i64	$8=, $pop457
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push194=, 32
	i64.shr_u	$push195=, $4, $pop194
	i32.wrap/i64	$push456=, $pop195
	tee_local	$push455=, $2=, $pop456
	i32.const	$push196=, 1083179008
	i32.lt_s	$push197=, $pop455, $pop196
	br_if   	0, $pop197
	i32.const	$push214=, -1083179008
	i32.add 	$push215=, $2, $pop214
	i32.or  	$push216=, $pop215, $8
	i32.eqz 	$push533=, $pop216
	br_if   	1, $pop533
	f64.const	$push217=, 0x1.7e43c8800759cp996
	f64.mul 	$push218=, $10, $pop217
	f64.const	$push467=, 0x1.7e43c8800759cp996
	f64.mul 	$push357=, $pop218, $pop467
	return  	$pop357
.LBB131_64:
	end_block
	i32.const	$push198=, 2147482624
	i32.and 	$push199=, $2, $pop198
	i32.const	$push200=, 1083231232
	i32.lt_u	$push201=, $pop199, $pop200
	br_if   	2, $pop201
	i32.const	$push202=, 1064252416
	i32.add 	$push203=, $2, $pop202
	i32.or  	$push204=, $pop203, $8
	i32.eqz 	$push534=, $pop204
	br_if   	1, $pop534
	f64.const	$push205=, 0x1.56e1fc2f8f359p-997
	f64.mul 	$push206=, $10, $pop205
	f64.const	$push468=, 0x1.56e1fc2f8f359p-997
	f64.mul 	$push355=, $pop206, $pop468
	return  	$pop355
.LBB131_67:
	end_block
	f64.const	$push219=, 0x1.71547652b82fep-54
	f64.add 	$push472=, $1, $pop219
	tee_local	$push471=, $12=, $pop472
	f64.sub 	$push470=, $0, $21
	tee_local	$push469=, $0=, $pop470
	f64.le  	$push220=, $pop471, $pop469
	f64.ne  	$push222=, $12, $12
	f64.ne  	$push221=, $0, $0
	i32.or  	$push223=, $pop222, $pop221
	i32.or  	$push224=, $pop220, $pop223
	br_if   	1, $pop224
	f64.const	$push300=, 0x1.7e43c8800759cp996
	f64.mul 	$push301=, $10, $pop300
	f64.const	$push473=, 0x1.7e43c8800759cp996
	f64.mul 	$push356=, $pop301, $pop473
	return  	$pop356
.LBB131_69:
	end_block
	f64.sub 	$push487=, $0, $21
	tee_local	$push486=, $0=, $pop487
	f64.gt  	$push207=, $1, $pop486
	f64.ne  	$push209=, $1, $1
	f64.ne  	$push208=, $0, $0
	i32.or  	$push210=, $pop209, $pop208
	i32.or  	$push211=, $pop207, $pop210
	i32.eqz 	$push535=, $pop211
	br_if   	1, $pop535
.LBB131_70:
	end_block
	block   	
	block   	
	i32.const	$push225=, 2147483647
	i32.and 	$push489=, $2, $pop225
	tee_local	$push488=, $8=, $pop489
	i32.const	$push226=, 1071644673
	i32.lt_u	$push227=, $pop488, $pop226
	br_if   	0, $pop227
	i32.const	$push241=, 0
	i32.const	$push232=, 1048576
	i32.const	$push228=, 20
	i32.shr_u	$push229=, $8, $pop228
	i32.const	$push230=, -1022
	i32.add 	$push231=, $pop229, $pop230
	i32.shr_u	$push233=, $pop232, $pop231
	i32.add 	$push499=, $pop233, $2
	tee_local	$push498=, $8=, $pop499
	i32.const	$push234=, 1048575
	i32.and 	$push235=, $pop498, $pop234
	i32.const	$push497=, 1048576
	i32.or  	$push236=, $pop235, $pop497
	i32.const	$push239=, 1043
	i32.const	$push496=, 20
	i32.shr_u	$push237=, $8, $pop496
	i32.const	$push238=, 2047
	i32.and 	$push495=, $pop237, $pop238
	tee_local	$push494=, $6=, $pop495
	i32.sub 	$push240=, $pop239, $pop494
	i32.shr_u	$push493=, $pop236, $pop240
	tee_local	$push492=, $5=, $pop493
	i32.sub 	$push242=, $pop241, $pop492
	i32.const	$push491=, 0
	i32.lt_s	$push243=, $2, $pop491
	i32.select	$2=, $pop242, $5, $pop243
	i32.const	$push490=, 1048575
	i32.const	$push244=, -1023
	i32.add 	$push245=, $6, $pop244
	i32.shr_u	$push246=, $pop490, $pop245
	i32.const	$push247=, -1
	i32.xor 	$push248=, $pop246, $pop247
	i32.and 	$push249=, $8, $pop248
	i64.extend_u/i32	$push250=, $pop249
	i64.const	$push251=, 32
	i64.shl 	$push252=, $pop250, $pop251
	f64.reinterpret/i64	$push253=, $pop252
	f64.sub 	$21=, $21, $pop253
	br      	1
.LBB131_72:
	end_block
	i32.const	$2=, 0
.LBB131_73:
	end_block
	block   	
	f64.const	$push288=, 0x1p0
	f64.add 	$push254=, $1, $21
	i64.reinterpret/f64	$push255=, $pop254
	i64.const	$push256=, -4294967296
	i64.and 	$push257=, $pop255, $pop256
	f64.reinterpret/i64	$push522=, $pop257
	tee_local	$push521=, $0=, $pop522
	f64.const	$push264=, 0x1.62e43p-1
	f64.mul 	$push520=, $pop521, $pop264
	tee_local	$push519=, $12=, $pop520
	f64.sub 	$push260=, $0, $21
	f64.sub 	$push261=, $1, $pop260
	f64.const	$push262=, 0x1.62e42fefa39efp-1
	f64.mul 	$push263=, $pop261, $pop262
	f64.const	$push258=, -0x1.05c610ca86c39p-29
	f64.mul 	$push259=, $0, $pop258
	f64.add 	$push518=, $pop263, $pop259
	tee_local	$push517=, $21=, $pop518
	f64.add 	$push516=, $pop519, $pop517
	tee_local	$push515=, $1=, $pop516
	f64.mul 	$push514=, $1, $1
	tee_local	$push513=, $0=, $pop514
	f64.const	$push268=, 0x1.6376972bea4dp-25
	f64.mul 	$push269=, $0, $pop268
	f64.const	$push270=, -0x1.bbd41c5d26bf1p-20
	f64.add 	$push271=, $pop269, $pop270
	f64.mul 	$push272=, $0, $pop271
	f64.const	$push273=, 0x1.1566aaf25de2cp-14
	f64.add 	$push274=, $pop272, $pop273
	f64.mul 	$push275=, $0, $pop274
	f64.const	$push276=, -0x1.6c16c16bebd93p-9
	f64.add 	$push277=, $pop275, $pop276
	f64.mul 	$push278=, $0, $pop277
	f64.const	$push279=, 0x1.555555555553ep-3
	f64.add 	$push280=, $pop278, $pop279
	f64.mul 	$push281=, $pop513, $pop280
	f64.sub 	$push512=, $1, $pop281
	tee_local	$push511=, $0=, $pop512
	f64.mul 	$push284=, $pop515, $pop511
	f64.const	$push282=, -0x1p1
	f64.add 	$push283=, $0, $pop282
	f64.div 	$push285=, $pop284, $pop283
	f64.sub 	$push265=, $1, $12
	f64.sub 	$push510=, $21, $pop265
	tee_local	$push509=, $0=, $pop510
	f64.mul 	$push266=, $1, $0
	f64.add 	$push267=, $pop509, $pop266
	f64.sub 	$push286=, $pop285, $pop267
	f64.sub 	$push287=, $pop286, $1
	f64.sub 	$push508=, $pop288, $pop287
	tee_local	$push507=, $1=, $pop508
	i64.reinterpret/f64	$push506=, $pop507
	tee_local	$push505=, $4=, $pop506
	i64.const	$push504=, 32
	i64.shr_u	$push289=, $pop505, $pop504
	i32.wrap/i64	$push290=, $pop289
	i32.const	$push291=, 20
	i32.shl 	$push292=, $2, $pop291
	i32.add 	$push503=, $pop290, $pop292
	tee_local	$push502=, $8=, $pop503
	i32.const	$push501=, 20
	i32.shr_s	$push293=, $pop502, $pop501
	i32.const	$push500=, 0
	i32.le_s	$push294=, $pop293, $pop500
	br_if   	0, $pop294
	i64.extend_u/i32	$push297=, $8
	i64.const	$push523=, 32
	i64.shl 	$push298=, $pop297, $pop523
	i64.const	$push295=, 4294967295
	i64.and 	$push296=, $4, $pop295
	i64.or  	$push299=, $pop298, $pop296
	f64.reinterpret/i64	$push350=, $pop299
	f64.mul 	$push352=, $10, $pop350
	return  	$pop352
.LBB131_75:
	end_block
	f64.call	$push351=, scalbn@FUNCTION, $1, $2
	f64.mul 	$push369=, $10, $pop351
	return  	$pop369
.LBB131_76:
	end_block
	f64.const	$push212=, 0x1.56e1fc2f8f359p-997
	f64.mul 	$push213=, $10, $pop212
	f64.const	$push526=, 0x1.56e1fc2f8f359p-997
	f64.mul 	$push354=, $pop213, $pop526
	return  	$pop354
.LBB131_77:
	end_block
	copy_local	$push536=, $21
	.endfunc
.Lfunc_end131:
	.size	pow, .Lfunc_end131-pow

	.hidden	sqrt
	.globl	sqrt
	.type	sqrt,@function
sqrt:
	.param  	f64
	.result 	f64
	.local  	i64, i32, i32, i32, i32, i32, i32, i32, i32, i32
	block   	
	i64.reinterpret/f64	$push73=, $0
	tee_local	$push72=, $1=, $pop73
	i64.const	$push0=, 32
	i64.shr_u	$push1=, $pop72, $pop0
	i32.wrap/i64	$push71=, $pop1
	tee_local	$push70=, $7=, $pop71
	i32.const	$push2=, 2146435072
	i32.and 	$push3=, $pop70, $pop2
	i32.const	$push69=, 2146435072
	i32.ne  	$push4=, $pop3, $pop69
	br_if   	0, $pop4
	f64.mul 	$push67=, $0, $0
	f64.add 	$push74=, $pop67, $0
	return  	$pop74
.LBB132_2:
	end_block
	i32.wrap/i64	$2=, $1
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push5=, 0
	i32.le_s	$push6=, $7, $pop5
	br_if   	0, $pop6
	i64.const	$push7=, 52
	i64.shr_u	$push8=, $1, $pop7
	i32.wrap/i64	$push76=, $pop8
	tee_local	$push75=, $8=, $pop76
	br_if   	2, $pop75
	i32.const	$8=, 1
	copy_local	$9=, $2
	br      	1
.LBB132_5:
	end_block
	i32.const	$push9=, 2147483647
	i32.and 	$push10=, $7, $pop9
	i32.or  	$push11=, $pop10, $2
	i32.eqz 	$push120=, $pop11
	br_if   	2, $pop120
	i32.const	$push12=, 0
	i32.lt_s	$push13=, $7, $pop12
	br_if   	3, $pop13
	i32.const	$8=, 1
.LBB132_8:
	loop    	
	i32.const	$push81=, -21
	i32.add 	$8=, $8, $pop81
	i32.const	$push80=, 11
	i32.shr_u	$7=, $2, $pop80
	i32.const	$push79=, 21
	i32.shl 	$push78=, $2, $pop79
	tee_local	$push77=, $9=, $pop78
	copy_local	$2=, $pop77
	i32.eqz 	$push121=, $7
	br_if   	0, $pop121
.LBB132_9:
	end_loop
	end_block
	i32.const	$5=, 0
	block   	
	i32.const	$push82=, 1048576
	i32.and 	$push14=, $7, $pop82
	br_if   	0, $pop14
	i32.const	$5=, 0
.LBB132_11:
	loop    	
	i32.const	$push87=, 1
	i32.add 	$5=, $5, $pop87
	i32.const	$push86=, 1
	i32.shl 	$push85=, $7, $pop86
	tee_local	$push84=, $7=, $pop85
	i32.const	$push83=, 1048576
	i32.and 	$push15=, $pop84, $pop83
	i32.eqz 	$push122=, $pop15
	br_if   	0, $pop122
.LBB132_12:
	end_loop
	end_block
	i32.shl 	$2=, $9, $5
	i32.sub 	$8=, $8, $5
	i32.const	$push16=, 32
	i32.sub 	$push17=, $pop16, $5
	i32.shr_u	$push18=, $9, $pop17
	i32.or  	$7=, $pop18, $7
.LBB132_13:
	end_block
	i32.const	$push19=, 1048575
	i32.and 	$push20=, $7, $pop19
	i32.const	$push21=, 1048576
	i32.or  	$7=, $pop20, $pop21
	block   	
	i32.const	$push22=, -1023
	i32.add 	$push90=, $8, $pop22
	tee_local	$push89=, $10=, $pop90
	i32.const	$push88=, 1
	i32.and 	$push23=, $pop89, $pop88
	i32.eqz 	$push123=, $pop23
	br_if   	0, $pop123
	i32.const	$push92=, 1
	i32.shl 	$push26=, $7, $pop92
	i32.const	$push24=, 31
	i32.shr_u	$push25=, $2, $pop24
	i32.or  	$7=, $pop26, $pop25
	i32.const	$push91=, 1
	i32.shl 	$2=, $2, $pop91
.LBB132_15:
	end_block
	i32.const	$push28=, 31
	i32.shr_u	$push29=, $2, $pop28
	i32.const	$push94=, 1
	i32.shl 	$push27=, $7, $pop94
	i32.or  	$7=, $pop29, $pop27
	i32.const	$push93=, 1
	i32.shl 	$5=, $2, $pop93
	i32.const	$4=, 0
	i32.const	$9=, 2097152
	i32.const	$8=, 0
.LBB132_16:
	loop    	
	copy_local	$6=, $5
	block   	
	i32.add 	$push96=, $9, $8
	tee_local	$push95=, $5=, $pop96
	i32.lt_s	$push30=, $7, $pop95
	br_if   	0, $pop30
	i32.add 	$4=, $9, $4
	i32.sub 	$7=, $7, $5
	i32.add 	$8=, $5, $9
.LBB132_18:
	end_block
	i32.const	$push103=, 1
	i32.shl 	$push31=, $7, $pop103
	i32.const	$push102=, 30
	i32.shr_u	$push32=, $2, $pop102
	i32.const	$push101=, 1
	i32.and 	$push33=, $pop32, $pop101
	i32.or  	$7=, $pop31, $pop33
	i32.const	$push100=, 1
	i32.shl 	$5=, $6, $pop100
	copy_local	$2=, $6
	i32.const	$push99=, 1
	i32.shr_u	$push98=, $9, $pop99
	tee_local	$push97=, $9=, $pop98
	br_if   	0, $pop97
	end_loop
	i32.const	$push104=, 1
	i32.shr_u	$3=, $10, $pop104
	i32.const	$9=, -2147483648
	i32.const	$10=, 0
	i32.const	$2=, 0
.LBB132_20:
	loop    	
	i32.add 	$6=, $2, $9
	block   	
	block   	
	i32.gt_s	$push34=, $7, $8
	br_if   	0, $pop34
	i32.ne  	$push35=, $7, $8
	br_if   	1, $pop35
	i32.lt_u	$push36=, $5, $6
	br_if   	1, $pop36
.LBB132_23:
	end_block
	i32.sub 	$push39=, $7, $8
	i32.const	$push110=, -1
	i32.const	$push109=, 0
	i32.lt_u	$push37=, $5, $6
	i32.select	$push38=, $pop110, $pop109, $pop37
	i32.add 	$7=, $pop39, $pop38
	i32.const	$push108=, 0
	i32.lt_s	$push40=, $6, $pop108
	i32.add 	$push107=, $6, $9
	tee_local	$push106=, $2=, $pop107
	i32.const	$push105=, -1
	i32.gt_s	$push41=, $pop106, $pop105
	i32.and 	$push42=, $pop40, $pop41
	i32.add 	$8=, $pop42, $8
	i32.add 	$10=, $10, $9
	i32.sub 	$5=, $5, $6
.LBB132_24:
	end_block
	i32.const	$push116=, 31
	i32.shr_u	$push44=, $5, $pop116
	i32.const	$push115=, 1
	i32.shl 	$push43=, $7, $pop115
	i32.or  	$7=, $pop44, $pop43
	i32.const	$push114=, 1
	i32.shl 	$5=, $5, $pop114
	i32.const	$push113=, 1
	i32.shr_u	$push112=, $9, $pop113
	tee_local	$push111=, $9=, $pop112
	br_if   	0, $pop111
	end_loop
	block   	
	i32.or  	$push45=, $5, $7
	i32.eqz 	$push124=, $pop45
	br_if   	0, $pop124
	block   	
	i32.const	$push46=, -1
	i32.eq  	$push47=, $10, $pop46
	br_if   	0, $pop47
	i32.const	$push48=, 1
	i32.and 	$push49=, $10, $pop48
	i32.add 	$10=, $pop49, $10
	br      	1
.LBB132_28:
	end_block
	i32.const	$push50=, 1
	i32.add 	$4=, $4, $pop50
	i32.const	$10=, 0
.LBB132_29:
	end_block
	i32.const	$push53=, 20
	i32.shl 	$push54=, $3, $pop53
	i32.const	$push51=, 1
	i32.shr_s	$push52=, $4, $pop51
	i32.add 	$push55=, $pop54, $pop52
	i32.const	$push56=, 1071644672
	i32.add 	$push57=, $pop55, $pop56
	i64.extend_u/i32	$push58=, $pop57
	i64.const	$push59=, 32
	i64.shl 	$push60=, $pop58, $pop59
	i32.const	$push117=, 1
	i32.shr_u	$push63=, $10, $pop117
	i32.const	$push61=, 31
	i32.shl 	$push62=, $4, $pop61
	i32.or  	$push64=, $pop63, $pop62
	i64.extend_u/i32	$push65=, $pop64
	i64.or  	$push66=, $pop60, $pop65
	f64.reinterpret/i64	$0=, $pop66
.LBB132_30:
	end_block
	return  	$0
.LBB132_31:
	end_block
	f64.sub 	$push119=, $0, $0
	tee_local	$push118=, $0=, $pop119
	f64.div 	$push68=, $pop118, $0
	.endfunc
.Lfunc_end132:
	.size	sqrt, .Lfunc_end132-sqrt

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
.Lfunc_end133:
	.size	fabs, .Lfunc_end133-fabs

	.hidden	scalbn
	.globl	scalbn
	.type	scalbn,@function
scalbn:
	.param  	f64, i32
	.result 	f64
	.local  	i32
	block   	
	block   	
	block   	
	block   	
	i32.const	$push19=, 1024
	i32.lt_s	$push0=, $1, $pop19
	br_if   	0, $pop0
	f64.const	$push23=, 0x1p1023
	f64.mul 	$0=, $0, $pop23
	i32.const	$push7=, -1023
	i32.add 	$push22=, $1, $pop7
	tee_local	$push21=, $2=, $pop22
	i32.const	$push20=, 1024
	i32.lt_s	$push8=, $pop21, $pop20
	br_if   	1, $pop8
	i32.const	$push9=, -2046
	i32.add 	$push27=, $1, $pop9
	tee_local	$push26=, $1=, $pop27
	i32.const	$push10=, 1023
	i32.const	$push25=, 1023
	i32.lt_s	$push11=, $1, $pop25
	i32.select	$1=, $pop26, $pop10, $pop11
	f64.const	$push24=, 0x1p1023
	f64.mul 	$0=, $0, $pop24
	br      	3
.LBB134_3:
	end_block
	i32.const	$push28=, -1023
	i32.gt_s	$push1=, $1, $pop28
	br_if   	2, $pop1
	f64.const	$push32=, 0x1p-969
	f64.mul 	$0=, $0, $pop32
	i32.const	$push2=, 969
	i32.add 	$push31=, $1, $pop2
	tee_local	$push30=, $2=, $pop31
	i32.const	$push29=, -1023
	i32.gt_s	$push3=, $pop30, $pop29
	br_if   	1, $pop3
	i32.const	$push4=, 1938
	i32.add 	$push36=, $1, $pop4
	tee_local	$push35=, $1=, $pop36
	i32.const	$push5=, -1022
	i32.const	$push34=, -1022
	i32.gt_s	$push6=, $1, $pop34
	i32.select	$1=, $pop35, $pop5, $pop6
	f64.const	$push33=, 0x1p-969
	f64.mul 	$0=, $0, $pop33
	br      	2
.LBB134_6:
	end_block
	copy_local	$1=, $2
	br      	1
.LBB134_7:
	end_block
	copy_local	$1=, $2
.LBB134_8:
	end_block
	i32.const	$push12=, 1023
	i32.add 	$push13=, $1, $pop12
	i64.extend_u/i32	$push14=, $pop13
	i64.const	$push15=, 52
	i64.shl 	$push16=, $pop14, $pop15
	f64.reinterpret/i64	$push17=, $pop16
	f64.mul 	$push18=, $0, $pop17
	.endfunc
.Lfunc_end134:
	.size	scalbn, .Lfunc_end134-scalbn

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
.LBB135_2:
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
.LBB135_4:
	end_loop
	end_block
	i32.sub 	$5=, $3, $4
.LBB135_5:
	end_block
	copy_local	$push11=, $5
	.endfunc
.Lfunc_end135:
	.size	memcmp, .Lfunc_end135-memcmp

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
.LBB136_2:
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
.LBB136_4:
	end_loop
	end_block
	i32.const	$push3=, -4
	i32.add 	$2=, $2, $pop3
.LBB136_5:
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
.LBB136_8:
	loop    	
	i32.const	$push27=, 1
	i32.add 	$push26=, $2, $pop27
	tee_local	$push25=, $2=, $pop26
	i32.load8_u	$push10=, 0($pop25)
	br_if   	0, $pop10
.LBB136_9:
	end_loop
	end_block
	i32.sub 	$push11=, $2, $0
	.endfunc
.Lfunc_end136:
	.size	strlen, .Lfunc_end136-strlen

	.hidden	malloc
	.globl	malloc
	.type	malloc,@function
malloc:
	.param  	i32
	.result 	i32
	i32.const	$push0=, _ZN5eosio11memory_heapE
	i32.call	$push1=, _ZN5eosio14memory_manager6mallocEm@FUNCTION, $pop0, $0
	.endfunc
.Lfunc_end137:
	.size	malloc, .Lfunc_end137-malloc

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
.LBB138_3:
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
.LBB138_7:
	end_block
	i32.const	$push72=, 4
	i32.add 	$10=, $2, $pop72
.LBB138_8:
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
.LBB138_10:
	end_block
	i32.call	$push86=, _ZN5eosio14memory_manager16next_active_heapEv@FUNCTION, $0
	tee_local	$push85=, $1=, $pop86
	br_if   	0, $pop85
.LBB138_11:
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
.LBB138_12:
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
	i32.const	$push93=, .L.str.1.23
	call    	eosio_assert@FUNCTION, $pop31, $pop93
	i32.const	$push92=, 8196
	i32.add 	$push32=, $1, $pop92
	i32.load	$push91=, 0($pop32)
	tee_local	$push90=, $6=, $pop91
	i32.const	$push89=, 4
	i32.add 	$13=, $pop90, $pop89
.LBB138_13:
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
.LBB138_15:
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
.LBB138_18:
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
.LBB138_20:
	end_block
	i32.ge_u	$push49=, $1, $2
	br_if   	4, $pop49
.LBB138_21:
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
.LBB138_23:
	end_loop
	end_block
	return  	$1
.LBB138_24:
	end_block
	i32.load	$push50=, 0($8)
	i32.const	$push51=, -2147483648
	i32.or  	$push52=, $pop50, $pop51
	i32.store	0($8), $pop52
	return  	$13
.LBB138_25:
	end_block
	i32.const	$push61=, 0
	.endfunc
.Lfunc_end138:
	.size	_ZN5eosio14memory_manager6mallocEm, .Lfunc_end138-_ZN5eosio14memory_manager6mallocEm

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
.LBB139_2:
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
.LBB139_3:
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
.LBB139_6:
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
.LBB139_9:
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
.LBB139_13:
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
.LBB139_17:
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
.LBB139_18:
	end_block
	return  	$8
.LBB139_19:
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
.LBB139_21:
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
.LBB139_22:
	end_block
	i32.add 	$push71=, $8, $7
	i32.store	0($2), $pop71
	copy_local	$push158=, $2
	.endfunc
.Lfunc_end139:
	.size	_ZN5eosio14memory_manager16next_active_heapEv, .Lfunc_end139-_ZN5eosio14memory_manager16next_active_heapEv

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
.LBB140_3:
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
.LBB140_6:
	end_block
	i32.const	$push25=, 12
	i32.add 	$push24=, $3, $pop25
	tee_local	$push23=, $3=, $pop24
	i32.lt_u	$push14=, $pop23, $1
	br_if   	0, $pop14
.LBB140_7:
	end_loop
	end_block
	return
.LBB140_8:
	end_block
	i32.const	$push10=, -4
	i32.add 	$push27=, $0, $pop10
	tee_local	$push26=, $3=, $pop27
	i32.load	$push11=, 0($3)
	i32.const	$push12=, 2147483647
	i32.and 	$push13=, $pop11, $pop12
	i32.store	0($pop26), $pop13
	.endfunc
.Lfunc_end140:
	.size	free, .Lfunc_end140-free

	.type	.L.str.65,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.65:
	.asciz	"magnitude of asset amount must be less than 2^62"
	.size	.L.str.65, 49

	.type	.L.str.66,@object
.L.str.66:
	.asciz	"invalid symbol name"
	.size	.L.str.66, 20

	.type	.L.str,@object
.L.str:
	.asciz	"unexpected asset contract input"
	.size	.L.str, 32

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"unexpected asset symbol input"
	.size	.L.str.1, 30

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"invalid sell"
	.size	.L.str.2, 13

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"invalid conversion"
	.size	.L.str.3, 19

	.type	.L.str.81,@object
.L.str.81:
	.asciz	"object passed to iterator_to is not in multi_index"
	.size	.L.str.81, 51

	.type	.L.str.89,@object
.L.str.89:
	.asciz	"cannot create objects in table of another contract"
	.size	.L.str.89, 51

	.type	.L.str.90,@object
.L.str.90:
	.asciz	"cannot pass end iterator to modify"
	.size	.L.str.90, 35

	.type	.L.str.84,@object
.L.str.84:
	.asciz	"object passed to modify is not in multi_index"
	.size	.L.str.84, 46

	.type	.L.str.85,@object
.L.str.85:
	.asciz	"cannot modify objects in table of another contract"
	.size	.L.str.85, 51

	.type	.L.str.106,@object
.L.str.106:
	.asciz	"overdrawn balance 2"
	.size	.L.str.106, 20

	.type	.L.str.86,@object
.L.str.86:
	.asciz	"updater cannot change primary key when modifying an object"
	.size	.L.str.86, 59

	.type	.L.str.79,@object
.L.str.79:
	.asciz	"write"
	.size	.L.str.79, 6

	.type	.L.str.105,@object
.L.str.105:
	.asciz	"overdrawn balance 1"
	.size	.L.str.105, 20

	.type	.L.str.82,@object
.L.str.82:
	.asciz	"error reading iterator"
	.size	.L.str.82, 23

	.type	.L.str.83,@object
.L.str.83:
	.asciz	"read"
	.size	.L.str.83, 5

	.type	.L.str.103,@object
.L.str.103:
	.asciz	"get"
	.size	.L.str.103, 4

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"unknown market"
	.size	.L.str.4, 15

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"programmer error: insufficient collateral to cover"
	.size	.L.str.5, 51

	.type	.L.str.68,@object
.L.str.68:
	.asciz	"type mismatch"
	.size	.L.str.68, 14

	.type	.L.str.69,@object
.L.str.69:
	.asciz	"attempt to subtract asset with different symbol"
	.size	.L.str.69, 48

	.type	.L.str.70,@object
.L.str.70:
	.asciz	"subtraction underflow"
	.size	.L.str.70, 22

	.type	.L.str.71,@object
.L.str.71:
	.asciz	"subtraction overflow"
	.size	.L.str.71, 21

	.type	.L.str.107,@object
.L.str.107:
	.asciz	"cannot pass end iterator to erase"
	.size	.L.str.107, 34

	.type	.L.str.109,@object
.L.str.109:
	.asciz	"object passed to erase is not in multi_index"
	.size	.L.str.109, 45

	.type	.L.str.110,@object
.L.str.110:
	.asciz	"cannot erase objects in table of another contract"
	.size	.L.str.110, 50

	.type	.L.str.111,@object
.L.str.111:
	.asciz	"attempt to remove object that was not in multi_index"
	.size	.L.str.111, 53

	.type	.L.str.108,@object
.L.str.108:
	.asciz	"cannot increment end iterator"
	.size	.L.str.108, 30

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"unable to lend to this market"
	.size	.L.str.6, 30

	.type	.L.str.74,@object
.L.str.74:
	.asciz	"underflow"
	.size	.L.str.74, 10

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"cannot unlend negative balance"
	.size	.L.str.7, 31

	.type	.L.str.8,@object
.L.str.8:
	.asciz	"sym: "
	.size	.L.str.8, 6

	.type	.L.str.112,@object
.L.str.112:
	.asciz	"@"
	.size	.L.str.112, 2

	.type	.L.str.72,@object
.L.str.72:
	.asciz	"unlend: "
	.size	.L.str.72, 9

	.type	.L.str.73,@object
.L.str.73:
	.asciz	" existing interest_shares:  "
	.size	.L.str.73, 29

	.type	.L.str.29,@object
.L.str.29:
	.asciz	"\n"
	.size	.L.str.29, 2

	.type	.L.str.113,@object
.L.str.113:
	.asciz	","
	.size	.L.str.113, 2

	.type	.L.str.9,@object
.L.str.9:
	.asciz	"invalid debt asset"
	.size	.L.str.9, 19

	.type	.L.str.10,@object
.L.str.10:
	.asciz	"no known margin position"
	.size	.L.str.10, 25

	.type	.L.str.11,@object
.L.str.11:
	.asciz	"attempt to cover more than user has"
	.size	.L.str.11, 36

	.type	.L.str.12,@object
.L.str.12:
	.asciz	"unable to cover debt"
	.size	.L.str.12, 21

	.type	.L.str.13,@object
.L.str.13:
	.asciz	"cannot borrow neg"
	.size	.L.str.13, 18

	.type	.L.str.14,@object
.L.str.14:
	.asciz	"cannot have neg collat"
	.size	.L.str.14, 23

	.type	.L.str.15,@object
.L.str.15:
	.asciz	"user failed to claim all collateral"
	.size	.L.str.15, 36

	.type	.L.str.75,@object
.L.str.75:
	.asciz	"attempt to add asset with different symbol"
	.size	.L.str.75, 43

	.type	.L.str.76,@object
.L.str.76:
	.asciz	"addition underflow"
	.size	.L.str.76, 19

	.type	.L.str.77,@object
.L.str.77:
	.asciz	"addition overflow"
	.size	.L.str.77, 18

	.type	.L.str.16,@object
.L.str.16:
	.asciz	"insufficient funds availalbe to borrow"
	.size	.L.str.16, 39

	.type	.L.str.17,@object
.L.str.17:
	.asciz	"this update would trigger a margin call"
	.size	.L.str.17, 40

	.type	.L.str.18,@object
.L.str.18:
	.asciz	"invalid quantity"
	.size	.L.str.18, 17

	.type	.L.str.19,@object
.L.str.19:
	.asciz	"deposit"
	.size	.L.str.19, 8

	.type	.L.str.20,@object
.L.str.20:
	.asciz	"active"
	.size	.L.str.20, 7

	.type	.L.str.64,@object
.L.str.64:
	.asciz	"transfer"
	.size	.L.str.64, 9

	.type	.L.str.21,@object
.L.str.21:
	.asciz	"cannot withdraw negative balance"
	.size	.L.str.21, 33

	.type	.L.str.22,@object
.L.str.22:
	.asciz	"withdraw"
	.size	.L.str.22, 9

	.type	.L.str.23,@object
.L.str.23:
	.asciz	"invalid sell amount"
	.size	.L.str.23, 20

	.type	.L.str.24,@object
.L.str.24:
	.asciz	"sell amount must be positive"
	.size	.L.str.24, 29

	.type	.L.str.25,@object
.L.str.25:
	.asciz	"invalid min receive amount"
	.size	.L.str.25, 27

	.type	.L.str.26,@object
.L.str.26:
	.asciz	"min receive amount cannot be negative"
	.size	.L.str.26, 38

	.type	.L.str.27,@object
.L.str.27:
	.asciz	"   "
	.size	.L.str.27, 4

	.type	.L.str.28,@object
.L.str.28:
	.asciz	"  =>  "
	.size	.L.str.28, 7

	.type	.L.str.30,@object
.L.str.30:
	.asciz	"unable to fill"
	.size	.L.str.30, 15

	.type	.L.str.31,@object
.L.str.31:
	.asciz	"sold"
	.size	.L.str.31, 5

	.type	.L.str.32,@object
.L.str.32:
	.asciz	"received"
	.size	.L.str.32, 9

	.type	.L.str.33,@object
.L.str.33:
	.skip	1
	.size	.L.str.33, 1

	.type	.L.str.80,@object
.L.str.80:
	.asciz	"unable to find key"
	.size	.L.str.80, 19

	.type	.L.str.87,@object
.L.str.87:
	.asciz	"can only transfer to white listed accounts"
	.size	.L.str.87, 43

	.type	.L.str.88,@object
.L.str.88:
	.asciz	"receiver requires whitelist by issuer"
	.size	.L.str.88, 38

	.type	.L.str.114,@object
.L.str.114:
	.asciz	"."
	.size	.L.str.114, 2

	.type	.L.str.115,@object
.L.str.115:
	.asciz	" "
	.size	.L.str.115, 2

	.type	.L.str.34,@object
.L.str.34:
	.asciz	"invalid borrow delta"
	.size	.L.str.34, 21

	.type	.L.str.35,@object
.L.str.35:
	.asciz	"invalid collateral delta"
	.size	.L.str.35, 25

	.type	.L.str.36,@object
.L.str.36:
	.asciz	"no effect"
	.size	.L.str.36, 10

	.type	.L.str.37,@object
.L.str.37:
	.asciz	"invalid args"
	.size	.L.str.37, 13

	.type	.L.str.38,@object
.L.str.38:
	.asciz	"invalid asset for market"
	.size	.L.str.38, 25

	.type	.L.str.39,@object
.L.str.39:
	.asciz	"borrowed"
	.size	.L.str.39, 9

	.type	.L.str.40,@object
.L.str.40:
	.asciz	"collateral"
	.size	.L.str.40, 11

	.type	.L.str.41,@object
.L.str.41:
	.asciz	"invalid cover amount"
	.size	.L.str.41, 21

	.type	.L.str.42,@object
.L.str.42:
	.asciz	"cover amount must be positive"
	.size	.L.str.42, 30

	.type	.L.str.43,@object
.L.str.43:
	.asciz	"invalid initial supply"
	.size	.L.str.43, 23

	.type	.L.str.44,@object
.L.str.44:
	.asciz	"initial supply must be positive"
	.size	.L.str.44, 32

	.type	.L.str.45,@object
.L.str.45:
	.asciz	"invalid base deposit"
	.size	.L.str.45, 21

	.type	.L.str.46,@object
.L.str.46:
	.asciz	"base deposit must be positive"
	.size	.L.str.46, 30

	.type	.L.str.47,@object
.L.str.47:
	.asciz	"invalid quote deposit"
	.size	.L.str.47, 22

	.type	.L.str.48,@object
.L.str.48:
	.asciz	"quote deposit must be positive"
	.size	.L.str.48, 31

	.type	.L.str.49,@object
.L.str.49:
	.asciz	"must exchange between two different currencies"
	.size	.L.str.49, 47

	.type	.L.str.50,@object
.L.str.50:
	.asciz	"base: "
	.size	.L.str.50, 7

	.type	.L.str.51,@object
.L.str.51:
	.asciz	"quote: "
	.size	.L.str.51, 8

	.type	.L.str.52,@object
.L.str.52:
	.asciz	"marketid: "
	.size	.L.str.52, 11

	.type	.L.str.53,@object
.L.str.53:
	.asciz	" \n "
	.size	.L.str.53, 4

	.type	.L.str.54,@object
.L.str.54:
	.asciz	"market already exists"
	.size	.L.str.54, 22

	.type	.L.str.55,@object
.L.str.55:
	.asciz	"initial exchange tokens"
	.size	.L.str.55, 24

	.type	.L.str.56,@object
.L.str.56:
	.asciz	"new exchange issue"
	.size	.L.str.56, 19

	.type	.L.str.57,@object
.L.str.57:
	.asciz	"new exchange deposit"
	.size	.L.str.57, 21

	.type	.L.str.91,@object
.L.str.91:
	.asciz	"token with symbol already exists"
	.size	.L.str.91, 33

	.type	.L.str.58,@object
.L.str.58:
	.asciz	"must lend a positive amount"
	.size	.L.str.58, 28

	.type	.L.str.59,@object
.L.str.59:
	.asciz	"must unlend a positive amount"
	.size	.L.str.59, 30

	.type	.L.str.60,@object
.L.str.60:
	.asciz	"invalid quantity in transfer"
	.size	.L.str.60, 29

	.type	.L.str.61,@object
.L.str.61:
	.asciz	"zero quantity is disallowed in transfer"
	.size	.L.str.61, 40

	.type	.L.str.62,@object
.L.str.62:
	.asciz	"withdrew tokens without withdraw in memo"
	.size	.L.str.62, 41

	.type	.L.str.63,@object
.L.str.63:
	.asciz	"received tokens without deposit in memo"
	.size	.L.str.63, 40

	.type	.L.str.92,@object
.L.str.92:
	.asciz	"must transfer positive quantity"
	.size	.L.str.92, 32

	.type	.L.str.93,@object
.L.str.93:
	.asciz	"overdrawn balance"
	.size	.L.str.93, 18

	.type	.L.str.94,@object
.L.str.94:
	.asciz	"account is frozen by issuer"
	.size	.L.str.94, 28

	.type	.L.str.95,@object
.L.str.95:
	.asciz	"all transfers are frozen by issuer"
	.size	.L.str.95, 35

	.type	.L.str.96,@object
.L.str.96:
	.asciz	"account is not white listed"
	.size	.L.str.96, 28

	.type	.L.str.97,@object
.L.str.97:
	.asciz	"issuer may not recall token"
	.size	.L.str.97, 28

	.type	.L.str.98,@object
.L.str.98:
	.asciz	"insufficient authority"
	.size	.L.str.98, 23

	.type	.L.str.99,@object
.L.str.99:
	.asciz	"issue\n"
	.size	.L.str.99, 7

	.type	.L.str.100,@object
.L.str.100:
	.asciz	"transfer\n"
	.size	.L.str.100, 10

	.type	.L.str.101,@object
.L.str.101:
	.asciz	"create\n"
	.size	.L.str.101, 8

	.type	.L.str.102,@object
.L.str.102:
	.asciz	"must issue positive quantity"
	.size	.L.str.102, 29

	.type	_ZStL13__new_handler,@object
	.lcomm	_ZStL13__new_handler,4,2
	.type	bp,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
bp:
	.int64	4607182418800017408
	.int64	4609434218613702656
	.size	bp, 16

	.type	dp_l,@object
	.p2align	4
dp_l:
	.int64	0
	.int64	4489242115478376454
	.size	dp_l, 16

	.type	dp_h,@object
	.p2align	4
dp_h:
	.int64	0
	.int64	4603444093224222720
	.size	dp_h, 16

	.hidden	_ZN5eosio11memory_heapE
	.type	_ZN5eosio11memory_heapE,@object
	.bss
	.globl	_ZN5eosio11memory_heapE
	.p2align	2
_ZN5eosio11memory_heapE:
	.skip	8396
	.size	_ZN5eosio11memory_heapE, 8396

	.type	.L.str.1.23,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1.23:
	.asciz	"malloc_from_freed was designed to only be called after _heap was completely allocated"
	.size	.L.str.1.23, 86

	.type	_ZZ4sbrkjE11initialized,@object
	.lcomm	_ZZ4sbrkjE11initialized,1
	.type	_ZZ4sbrkjE10sbrk_bytes,@object
	.lcomm	_ZZ4sbrkjE10sbrk_bytes,4,2

	.globl	_ZN5eosio12market_stateC1EyNS_11symbol_typeERNS_17exchange_accountsE
	.type	_ZN5eosio12market_stateC1EyNS_11symbol_typeERNS_17exchange_accountsE,@function
	.hidden	_ZN5eosio12market_stateC1EyNS_11symbol_typeERNS_17exchange_accountsE
_ZN5eosio12market_stateC1EyNS_11symbol_typeERNS_17exchange_accountsE = _ZN5eosio12market_stateC2EyNS_11symbol_typeERNS_17exchange_accountsE@FUNCTION
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
	.functype	eosio_assert, void, i32, i32
	.functype	db_find_i64, i32, i64, i64, i64, i64
	.functype	current_receiver, i64
	.functype	memcpy, i32, i32, i32, i32
	.functype	db_update_i64, void, i32, i64, i32, i32
	.functype	abort, void
	.functype	db_store_i64, i32, i64, i64, i64, i64, i32, i32
	.functype	db_get_i64, i32, i32, i32, i32
	.functype	db_remove_i64, void, i32
	.functype	db_idx64_find_primary, i32, i64, i64, i64, i32, i64
	.functype	db_idx64_remove, void, i32
	.functype	db_idx64_next, i32, i32, i32
	.functype	db_idx64_lowerbound, i32, i64, i64, i64, i32, i32
	.functype	prints, void, i32
	.functype	printn, void, i64
	.functype	printdf, void, f64
	.functype	printui, void, i64
	.functype	prints_l, void, i32, i32
	.functype	db_next_i64, i32, i32, i32
	.functype	db_lowerbound_i64, i32, i64, i64, i64, i64
	.functype	db_idx64_update, void, i32, i64, i32
	.functype	db_idx64_store, i32, i64, i64, i64, i64, i32
	.functype	send_inline, void, i32, i32
	.functype	require_auth, void, i64
	.functype	printi, void, i64
	.functype	require_recipient, void, i64
	.functype	has_auth, i32, i64
	.functype	action_data_size, i32
	.functype	read_action_data, i32, i32, i32
	.functype	eosio_exit, void, i32
