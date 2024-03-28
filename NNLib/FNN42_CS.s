	.file	"FNN42_CS.c"

 # rs6000/powerpc options: -msdata=sysv -G 8
 # GNU C (GCC) version 4.6.0 (powerpc-750-linux-gnu)
 #	compiled by GNU C version 4.5.2, GMP version 5.0.1, MPFR version 2.4.1, MPC version 0.8.1
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: 
 # -I C:\Program Files\RTDS\RSCAD FX 2.0\BIN\CMODEL_SOURCE\BLTIN_GCC
 # -I C:\Program Files\RTDS\RSCAD FX 2.0\BIN\CMODEL_SOURCE\SHARED_CODE
 # -iprefix c:\program files\rtds\rscad fx 2.0\bin\mingw-cross\bin\../lib/gcc/powerpc-750-linux-gnu/4.6.0/
 # -D__unix__ -D__gnu_linux__ -D__linux__ -Asystem=linux -Asystem=unix
 # -Asystem=posix
 # C:\Users\Bara\Documents\RSCAD\RTDS_USER_FX\BIN\CMODEL_SOURCE\FNN42_CS.c
 # -mregnames -msdata=sysv -mtoc
 # -auxbase-strip C:\Users\Bara\Documents\RSCAD\RTDS_USER_FX\BIN\CMODEL_SOURCE\FNN42_CS.s
 # -O2 -Werror=implicit-function-declaration -Wno-error=main -std=c99
 # -ffixed-r5 -fno-jump-tables -fomit-frame-pointer -fno-section-anchors
 # -fverbose-asm -fno-builtin-sincos
 # options enabled:  -fauto-inc-dec -fbranch-count-reg -fcaller-saves
 # -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
 # -fcrossjumping -fcse-follow-jumps -fdefer-pop
 # -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
 # -fearly-inlining -feliminate-unused-debug-types
 # -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
 # -fgcse-lm -fguess-branch-probability -fident -fif-conversion
 # -fif-conversion2 -findirect-inlining -finline
 # -finline-functions-called-once -finline-small-functions -fipa-cp
 # -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
 # -fira-share-save-slots -fira-share-spill-slots -fivopts
 # -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
 # -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
 # -foptimize-register-move -foptimize-sibling-calls -fpartial-inlining
 # -fpeephole -fpeephole2 -fprefetch-loop-arrays -freg-struct-return
 # -fregmove -freorder-blocks -freorder-functions -frerun-cse-after-loop
 # -fsched-critical-path-heuristic -fsched-dep-count-heuristic
 # -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
 # -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
 # -fsched-stalled-insns-dep -fschedule-insns -fschedule-insns2
 # -fshow-column -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
 # -fstrict-aliasing -fstrict-overflow -fstrict-volatile-bitfields
 # -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
 # -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-copy-prop
 # -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
 # -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
 # -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
 # -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
 # -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
 # -ftree-sra -ftree-switch-conversion -ftree-ter -ftree-vect-loop-version
 # -ftree-vrp -funit-at-a-time -fverbose-asm -fzero-initialized-in-bss -m32
 # -maix-struct-return -malign-branch-targets -malways-hint -mbig
 # -mbig-endian -mblock-move-inline-limit= -mbss-plt -mfp-in-toc -mfriz
 # -mgen-cell-microcode -mglibc -mhard-float -mminimal-toc -mnew-mnemonics
 # -mpowerpc -msched-groups -msched-prolog -mtls-markers -mupdate
 # -mvectorize-builtins -mvsx-scalar-double

 # Compiler executable checksum: ef178d0e8295de2fcbfae800a9b9fd3e

#APP
	.section ".text"
	.align 2
	b .main
#NO_APP
	.section	.text.unlikely,"ax",@progbits
	.align 2
	.type	calcNewArray1, @function
calcNewArray1:
	stwu %r1,-32(%r1)	 #,,
	mflr %r0	 #,
	cmpwi %cr7,%r4,0	 #, tmp390, N
	stw %r0,36(%r1)	 #,
	xoris %r0,%r5,0x8000	 #, tmp263,,
	stw %r31,28(%r1)	 #,
	mr %r31,%r1	 #,
	stw %r0,12(%r31)	 #, tmp263
	lis %r0,0x4330	 # tmp257,
	stw %r0,8(%r31)	 #, tmp257
	slwi %r0,%r4,4	 # tmp265, N,
	lwz %r9,0(%r1)	 #, tmp271
	subfic %r0,%r0,-16	 # tmp272, tmp265,
	stw %r30,24(%r1)	 #,
	slwi %r30,%r4,3	 # D.3585, N,
	stw %r29,20(%r1)	 #,
	stwux %r9,%r1,%r0	 # tmp271,, tmp272
	lis %r9,.LC1@ha	 # tmp260,
	addi %r0,%r4,1	 #, N,
	lfs %f0,.LC1@l(%r9)	 #, tmp258
	mtctr %r0	 # tmp388,
	li %r9,0	 # ivtmp.249,
	lfd %f13,8(%r31)	 #, tmp262
	addi %r10,%r1,23	 # tmp273,,
	rlwinm %r10,%r10,0,0,27	 # dLoss_dW3.39, tmp273,
	fsub %f0,%f13,%f0	 # D.2984, tmp262, tmp258
	fdiv %f1,%f1,%f0	 # dLoss_da3, idloss, D.2984
	fdiv %f0,%f2,%f0	 # dLoss_da32, iqloss, D.2984
	bge+ %cr7,.L2	 #
	li %r7,1	 #,
	mtctr %r7	 # tmp388,
	b .L2	 #
.L3:
	lfdx %f13,%r3,%r9	 # MEM[base: a1_34(D), index: ivtmp.249_65, offset: 0B], D.2996
	fmul %f12,%f13,%f1	 # tmp276, D.2996, dLoss_da3
	fmul %f13,%f13,%f0	 # tmp279, D.2996, dLoss_da32
	stfdx %f12,%r10,%r9	 # MEM[base: dLoss_dW3.39_30, index: ivtmp.249_65, offset: 0B], tmp276
	stfdx %f13,%r11,%r9	 # MEM[base: D.3673_114, index: ivtmp.249_65, offset: 0B], tmp279
	addi %r9,%r9,8	 # ivtmp.249, ivtmp.249,
.L2:
	add %r11,%r10,%r30	 # tmp278, dLoss_dW3.39, D.3585
	bdnz .L3	 #
	addi %r0,%r30,30	 # tmp282, D.3585,
	lwz %r9,0(%r1)	 #, tmp286
	cmpwi %cr7,%r4,0	 #, tmp387, N
	rlwinm %r0,%r0,0,0,27	 # tmp284, tmp282,
	lis %r11,.LC3@ha	 # tmp371,
	neg %r0,%r0	 # tmp287, tmp284
	stwux %r9,%r1,%r0	 # tmp286,, tmp287
	addi %r0,%r4,1	 #, N,
	li %r9,0	 # ivtmp.232,
	mtctr %r0	 # tmp385,
	addi %r12,%r1,23	 # tmp288,,
	rlwinm %r12,%r12,0,0,27	 # da1_dz1.43, tmp288,
	bge+ %cr7,.L4	 #
	li %r7,1	 #,
	mtctr %r7	 # tmp385,
	b .L4	 #
.L5:
	lfdx %f13,%r3,%r9	 # MEM[base: a1_34(D), index: ivtmp.232_108, offset: 0B], D.3011
	lfs %f12,.LC3@l(%r11)	 #, tmp293
	fneg %f11,%f13	 # tmp291, D.3011
	fmadd %f13,%f11,%f13,%f12	 # tmp292, tmp291, D.3011, tmp293
	stfdx %f13,%r12,%r9	 # MEM[base: da1_dz1.43_59, index: ivtmp.232_108, offset: 0B], tmp292
	addi %r9,%r9,8	 # ivtmp.232, ivtmp.232,
.L4:
	bdnz .L5	 #
	lwz %r9,0(%r1)	 #, tmp304
	slwi %r0,%r4,5	 # tmp298, N,
	cmpwi %cr7,%r4,0	 #, tmp384, N
	subfic %r0,%r0,-16	 # tmp305, tmp298,
	lis %r11,backprop11_U@ha	 # tmp320,
	stwux %r9,%r1,%r0	 # tmp304,, tmp305
	addi %r0,%r30,30	 # tmp310, D.3585,
	lis %r7,W3-8@ha	 # tmp327,
	rlwinm %r0,%r0,0,0,27	 # tmp312, tmp310,
	la %r7,W3-8@l(%r7)	 # ivtmp.193,, tmp327
	lfd %f9,backprop11_U@l(%r11)	 # backprop11_U.x1, D.3038
	neg %r0,%r0	 # tmp315, tmp312
	slwi %r29,%r4,2	 # D.3014, N,
	addi %r8,%r1,23	 # tmp306,,
	stwux %r9,%r1,%r0	 # tmp314,, tmp315
	la %r9,backprop11_U@l(%r11)	 # tmp319,, tmp320
	rlwinm %r8,%r8,0,0,27	 # dLoss_dW1.45, tmp306,
	addi %r0,%r4,1	 #, N,
	lfd %f8,8(%r9)	 # backprop11_U.x2, D.3041
	lfd %f7,16(%r9)	 # backprop11_U.x3, D.3044
	addi %r6,%r7,96	 # ivtmp.202, ivtmp.193,
	li %r11,0	 # k,
	mtctr %r0	 # tmp382,
	addi %r3,%r1,23	 # tmp316,,
	lfd %f6,24(%r9)	 # backprop11_U.x4, D.3047
	mr %r9,%r8	 # ivtmp.217, dLoss_dW1.45
	rlwinm %r3,%r3,0,0,27	 # dLoss_db1.48, tmp316,
	bge+ %cr7,.L6	 #
	li %r0,1	 #,
	mtctr %r0	 # tmp382,
	b .L6	 #
.L7:
	lfdu %f13,8(%r6)	 # MEM[(real_T[24] *)D.3626_41], MEM[(real_T[24] *)D.3626_41]
	addi %r11,%r11,1	 # k, k,
	lfdu %f11,8(%r7)	 # MEM[(real_T[24] *)D.3625_98], MEM[(real_T[24] *)D.3625_98]
	lfdx %f12,%r12,%r0	 # MEM[base: da1_dz1.43_59, index: D.3628_211, offset: 0B], MEM[base: da1_dz1.43_59, index: D.3628_211, offset: 0B]
	fmul %f13,%f0,%f13	 # tmp330, dLoss_da32, MEM[(real_T[24] *)D.3626_41]
	fmadd %f13,%f11,%f1,%f13	 # tmp332, MEM[(real_T[24] *)D.3625_98], dLoss_da3, tmp330
	fmul %f13,%f13,%f12	 # D.3037, tmp332, MEM[base: da1_dz1.43_59, index: D.3628_211, offset: 0B]
	fmul %f10,%f13,%f9	 # tmp335, D.3037, D.3038
	fmul %f11,%f13,%f8	 # tmp336, D.3037, D.3041
	fmul %f12,%f13,%f7	 # tmp337, D.3037, D.3044
	fmul %f13,%f13,%f6	 # tmp338, D.3037, D.3047
	stfd %f10,0(%r9)	 # MEM[(double[0:D.3016] *)D.3629_212], tmp335
	stfd %f11,8(%r9)	 # MEM[(double[0:D.3016] *)D.3629_212 + 8B], tmp336
	stfd %f12,16(%r9)	 # MEM[(double[0:D.3016] *)D.3629_212 + 16B], tmp337
	stfd %f13,24(%r9)	 # MEM[(double[0:D.3016] *)D.3629_212 + 24B], tmp338
	addi %r9,%r9,32	 # ivtmp.217, ivtmp.217,
.L6:
	slwi %r0,%r11,3	 # tmp329, k,
	bdnz .L7	 #
	lis %r9,backprop11_U+56@ha	 # tmp340,
	lfd %f11,b31@sdarel(%r13)	 # b31, b31
	lis %r11,W3@ha	 # tmp348,
	lfd %f13,backprop11_U+56@l(%r9)	 # backprop11_U.Lr, alpha
	la %r11,W3@l(%r11)	 # ivtmp.182,, tmp348
	addi %r0,%r11,192	 # D.3587, ivtmp.182,
	fneg %f12,%f13	 # tmp342, alpha
	fmadd %f1,%f12,%f1,%f11	 # tmp343, tmp342, dLoss_da3, b31
	lfd %f11,b32@sdarel(%r13)	 # b32, b32
	fmadd %f0,%f12,%f0,%f11	 # tmp346, tmp342, dLoss_da32, b32
	stfd %f1,b31@sdarel(%r13)	 # b31, tmp343
	stfd %f0,b32@sdarel(%r13)	 # b32, tmp346
	b .L8	 #
.L9:
	lfdx %f0,%r10,%r9	 # MEM[base: D.3571_119, index: ivtmp.169_122, offset: 0B], MEM[base: D.3571_119, index: ivtmp.169_122, offset: 0B]
	lfdx %f12,%r11,%r9	 # MEM[base: D.3568_42, index: ivtmp.169_122, offset: 0B], MEM[base: D.3568_42, index: ivtmp.169_122, offset: 0B]
	fneg %f0,%f0	 # tmp349, MEM[base: D.3571_119, index: ivtmp.169_122, offset: 0B]
	fmadd %f0,%f0,%f13,%f12	 # tmp351, tmp349, alpha, MEM[base: D.3568_42, index: ivtmp.169_122, offset: 0B]
	stfdx %f0,%r11,%r9	 # MEM[base: D.3568_42, index: ivtmp.169_122, offset: 0B], tmp351
	addi %r9,%r9,8	 # ivtmp.169, ivtmp.169,
.L11:
	bdnz .L9	 #
	addi %r11,%r11,96	 # ivtmp.182, ivtmp.182,
	add %r10,%r10,%r30	 # ivtmp.184, ivtmp.184, D.3585
	cmpw %cr7,%r11,%r0	 # D.3587, tmp354, ivtmp.182
	bne- %cr7,.L8	 #
	cmpwi %cr7,%r29,0	 #, tmp378, D.3014
	lis %r11,W1-8@ha	 # tmp355,
	addi %r29,%r29,1	 #, D.3014,
	la %r11,W1-8@l(%r11)	 # ivtmp.144,, tmp355
	li %r9,0	 # i,
	mtctr %r29	 # tmp376,
	bge+ %cr7,.L10	 #
	li %r7,1	 #,
	mtctr %r7	 # tmp376,
	b .L10	 #
.L8:
	cmpwi %cr7,%r4,0	 #, tmp381, N
	addi %r7,%r4,1	 #, N,
	li %r9,0	 # ivtmp.169,
	mtctr %r7	 # tmp379,
	bge+ %cr7,.L11	 #
	li %r7,1	 #,
	mtctr %r7	 # tmp379,
	b .L11	 #
.L12:
	lfdx %f0,%r8,%r0	 # MEM[base: dLoss_dW1.45_86, index: D.3548_198, offset: 0B], MEM[base: dLoss_dW1.45_86, index: D.3548_198, offset: 0B]
	addi %r9,%r9,1	 # i, i,
	lfdu %f12,8(%r11)	 # MEM[(real_T[48] *)D.3546_127], MEM[(real_T[48] *)D.3546_127]
	fneg %f0,%f0	 # tmp357, MEM[base: dLoss_dW1.45_86, index: D.3548_198, offset: 0B]
	fmadd %f0,%f0,%f13,%f12	 # tmp359, tmp357, alpha, MEM[(real_T[48] *)D.3546_127]
	stfd %f0,0(%r11)	 # MEM[(real_T[48] *)D.3546_127], tmp359
.L10:
	slwi %r0,%r9,3	 # tmp356, i,
	bdnz .L12	 #
	cmpwi %cr7,%r4,0	 #, tmp375, N
	lis %r11,b1-8@ha	 # tmp362,
	addi %r4,%r4,1	 #, N,
	la %r11,b1-8@l(%r11)	 # ivtmp.120,, tmp362
	li %r9,0	 # i,
	mtctr %r4	 # tmp373,
	bge+ %cr7,.L13	 #
	li %r0,1	 #,
	mtctr %r0	 # tmp373,
	b .L13	 #
.L14:
	lfdx %f0,%r3,%r0	 # MEM[base: dLoss_db1.48_100, index: D.3521_140, offset: 0B], MEM[base: dLoss_db1.48_100, index: D.3521_140, offset: 0B]
	addi %r9,%r9,1	 # i, i,
	lfdu %f12,8(%r11)	 # MEM[(real_T[12] *)D.3519_170], MEM[(real_T[12] *)D.3519_170]
	fneg %f0,%f0	 # tmp364, MEM[base: dLoss_db1.48_100, index: D.3521_140, offset: 0B]
	fmadd %f0,%f0,%f13,%f12	 # tmp366, tmp364, alpha, MEM[(real_T[12] *)D.3519_170]
	stfd %f0,0(%r11)	 # MEM[(real_T[12] *)D.3519_170], tmp366
.L13:
	slwi %r0,%r9,3	 # tmp363, i,
	bdnz .L14	 #
	addi %r11,%r31,32	 #,,
	lwz %r0,4(%r11)	 #,
	lwz %r29,-12(%r11)	 #,
	mtlr %r0	 #,
	lwz %r30,-8(%r11)	 #,
	lwz %r31,-4(%r11)	 #,
	mr %r1,%r11	 #,
	blr	 #
	.size	calcNewArray1, .-calcNewArray1
	.section	".text"
	.align 2
	.type	calcNewArray.isra.0, @function
calcNewArray.isra.0:
	stwu %r1,-80(%r1)	 #,,
	mflr %r0	 #,
	xoris %r7,%r7,0x8000	 #, tmp483, bn,
	cmpwi %cr6,%r6,0	 #, tmp793, N2
	stw %r0,84(%r1)	 #,
	lis %r0,0x4330	 # tmp477,
	stw %r31,76(%r1)	 #,
	mr %r31,%r1	 #,
	stw %r0,8(%r31)	 #, tmp477
	slwi %r0,%r6,4	 # tmp485, N2,
	lwz %r9,0(%r1)	 #, tmp491
	subfic %r0,%r0,-16	 # tmp492, tmp485,
	stw %r7,12(%r31)	 #, tmp483
	stw %r18,24(%r1)	 #,
	stw %r27,60(%r1)	 #,
	mr %r27,%r5	 # N, N
	stw %r17,20(%r1)	 #,
	stw %r19,28(%r1)	 #,
	stw %r20,32(%r1)	 #,
	stw %r21,36(%r1)	 #,
	stw %r22,40(%r1)	 #,
	stw %r23,44(%r1)	 #,
	stw %r24,48(%r1)	 #,
	stw %r25,52(%r1)	 #,
	stw %r26,56(%r1)	 #,
	stw %r28,64(%r1)	 #,
	stw %r29,68(%r1)	 #,
	stw %r30,72(%r1)	 #,
	stwux %r9,%r1,%r0	 # tmp491,, tmp492
	lis %r9,.LC1@ha	 # tmp480,
	lfd %f13,8(%r31)	 #, tmp482
	lfs %f0,.LC1@l(%r9)	 #, tmp478
	addi %r0,%r1,23	 # tmp493,,
	rlwinm %r18,%r0,0,0,27	 # dLoss_dW3.56, tmp493,
	fsub %f0,%f13,%f0	 # D.3477, tmp482, tmp478
	fdiv %f1,%f1,%f0	 # dLoss_da3, idloss, D.3477
	fdiv %f0,%f2,%f0	 # dLoss_da32, iqloss, D.3477
	ble- %cr6,.L23	 #
	addi %r10,%r3,-8	 # ivtmp.585, a2,
	mtctr %r6	 # N2, N2
	addi %r9,%r18,-8	 # ivtmp.592, dLoss_dW3.56,
	mr %r7,%r10	 # ivtmp.585, ivtmp.585
	slwi %r8,%r6,3	 # D.3904, N2,
.L24:
	lfdu %f13,8(%r7)	 # MEM[(real_T *)D.4112_560], D.3471
	fmul %f12,%f1,%f13	 # tmp497, dLoss_da3, D.3471
	fmul %f13,%f0,%f13	 # tmp499, dLoss_da32, D.3471
	stfdu %f12,8(%r9)	 # MEM[(double[0:D.3078] *)D.4113_561], tmp497
	stfdx %f13,%r9,%r8	 # MEM[base: D.4113_561, index: D.4116_564, offset: 0B], tmp499
	bdnz .L24	 #
	addi %r30,%r8,30	 # tmp785, D.3904,
	lwz %r9,0(%r1)	 #, tmp507
	rlwinm %r0,%r30,0,0,27	 # tmp505, tmp785,
	neg %r0,%r0	 # tmp508, tmp505
	stwux %r9,%r1,%r0	 # tmp507,, tmp508
	lis %r9,W3-8@ha	 # tmp512,
	la %r9,W3-8@l(%r9)	 # ivtmp.567,, tmp512
	add %r0,%r9,%r8	 # D.4095, ivtmp.567, D.3904
	addi %r7,%r1,23	 # tmp509,,
	rlwinm %r7,%r7,0,0,27	 # dLoss_da2.60, tmp509,
	addi %r11,%r7,-8	 # ivtmp.580, dLoss_da2.60,
.L25:
	addi %r9,%r9,8	 # ivtmp.567, ivtmp.567,
	lfd %f13,96(%r9)	 # MEM[(real_T[24] *)D.4088_547 + 96B], MEM[(real_T[24] *)D.4088_547 + 96B]
	cmpw %cr7,%r9,%r0	 # D.4095, tmp521, ivtmp.567
	lfd %f12,0(%r9)	 # MEM[(real_T[24] *)D.4088_547], MEM[(real_T[24] *)D.4088_547]
	fmul %f13,%f0,%f13	 # tmp517, dLoss_da32, MEM[(real_T[24] *)D.4088_547 + 96B]
	fmadd %f13,%f1,%f12,%f13	 # tmp519, dLoss_da3, MEM[(real_T[24] *)D.4088_547], tmp517
	stfdu %f13,8(%r11)	 # MEM[(double[0:D.3093] *)D.4090_549], tmp519
	bne+ %cr7,.L25	 #
	lwz %r9,0(%r1)	 #, tmp528
	rlwinm %r0,%r30,0,0,27	 # tmp526, tmp785,
	lis %r26,.LC3@ha	 # tmp788,
	mtctr %r6	 # N2, N2
	neg %r0,%r0	 # tmp529, tmp526
	la %r26,.LC3@l(%r26)	 # tmp790,, tmp788
	stwux %r9,%r1,%r0	 # tmp528,, tmp529
	lfs %f11,0(%r26)	 #, tmp816
	addi %r11,%r1,23	 # tmp530,,
	rlwinm %r11,%r11,0,0,27	 # da2_dz2.63, tmp530,
	addi %r9,%r11,-8	 # ivtmp.563, da2_dz2.63,
.L26:
	lfdu %f13,8(%r10)	 # MEM[(real_T *)D.4068_541], D.3456
	fneg %f12,%f13	 # tmp533, D.3456
	fmadd %f13,%f12,%f13,%f11	 # tmp534, tmp533, D.3456, tmp816
	stfdu %f13,8(%r9)	 # MEM[(double[0:D.3107] *)D.4069_542], tmp534
	bdnz .L26	 #
	lwz %r9,0(%r1)	 #, tmp546
	rlwinm %r0,%r30,0,0,27	 # tmp544, tmp785,
	mtctr %r6	 # N2, N2
	neg %r0,%r0	 # tmp547, tmp544
	stwux %r9,%r1,%r0	 # tmp546,, tmp547
	li %r9,0	 # ivtmp.539,
	addi %r23,%r1,23	 # tmp548,,
	rlwinm %r23,%r23,0,0,27	 # dLoss_dz2.67, tmp548,
.L27:
	lfdx %f12,%r7,%r9	 # MEM[base: dLoss_da2.60_31, index: ivtmp.539_457, offset: 0B], MEM[base: dLoss_da2.60_31, index: ivtmp.539_457, offset: 0B]
	lfdx %f13,%r11,%r9	 # MEM[base: da2_dz2.63_43, index: ivtmp.539_457, offset: 0B], MEM[base: da2_dz2.63_43, index: ivtmp.539_457, offset: 0B]
	fmul %f13,%f12,%f13	 # tmp553, MEM[base: dLoss_da2.60_31, index: ivtmp.539_457, offset: 0B], MEM[base: da2_dz2.63_43, index: ivtmp.539_457, offset: 0B]
	stfdx %f13,%r23,%r9	 # MEM[base: dLoss_dz2.67_55, index: ivtmp.539_457, offset: 0B], tmp553
	addi %r9,%r9,8	 # ivtmp.539, ivtmp.539,
	bdnz .L27	 #
	mullw %r0,%r6,%r27	 # tmp556, N2, N
	lwz %r9,0(%r1)	 #, tmp563
	cmpwi %cr1,%r27,0	 #, tmp792, N
	lis %r7,W3@ha	 # tmp568,
	la %r7,W3@l(%r7)	 # ivtmp.528,, tmp568
	li %r30,-1	 # ivtmp.533,
	li %r10,0	 # k,
	slwi %r0,%r0,3	 # tmp557, tmp556,
	addic %r0,%r0,30	 # tmp559, tmp557,
	rlwinm %r0,%r0,0,0,27	 # tmp561, tmp559,
	neg %r0,%r0	 # tmp564, tmp561
	stwux %r9,%r1,%r0	 # tmp563,, tmp564
	addi %r24,%r1,23	 # tmp565,,
	rlwinm %r24,%r24,0,0,27	 # dLoss_dW2.68, tmp565,
.L28:
	ble- %cr1,.L31	 #
	slwi %r0,%r10,3	 # tmp575, k,
	lfd %f12,96(%r7)	 # MEM[(real_T[24] *)D.4033_533 + 96B], MEM[(real_T[24] *)D.4033_533 + 96B]
	slwi %r9,%r30,3	 # tmp582, ivtmp.533,
	mtctr %r27	 # N, N
	lfdx %f13,%r3,%r0	 # MEM[base: a2_17(D), index: D.4036_536, offset: 0B], pretmp.378
	addi %r11,%r4,-8	 # ivtmp.520, a1,
	add %r9,%r24,%r9	 # ivtmp.524, dLoss_dW2.68, tmp582
	lfs %f10,0(%r26)	 #, tmp576
	fmul %f12,%f0,%f12	 # pretmp.375, dLoss_da32, MEM[(real_T[24] *)D.4033_533 + 96B]
	lfd %f11,0(%r7)	 # MEM[(real_T[24] *)D.4033_533], MEM[(real_T[24] *)D.4033_533]
	fneg %f9,%f13	 # D.4118, pretmp.378
	fmadd %f12,%f1,%f11,%f12	 # tmp580, dLoss_da3, MEM[(real_T[24] *)D.4033_533], pretmp.375
	fmadd %f13,%f9,%f13,%f10	 # pretmp.378, D.4118, pretmp.378, tmp576
	fmul %f12,%f12,%f13	 # pretmp.378, tmp580, pretmp.378
.L29:
	lfdu %f13,8(%r11)	 # MEM[(real_T *)D.4022_530], MEM[(real_T *)D.4022_530]
	fmul %f13,%f13,%f12	 # tmp570, MEM[(real_T *)D.4022_530], pretmp.378
	stfdu %f13,8(%r9)	 # MEM[(double[0:D.3132] *)D.4023_531], tmp570
	bdnz .L29	 #
.L31:
	addi %r10,%r10,1	 # k, k,
	addi %r7,%r7,8	 # ivtmp.528, ivtmp.528,
	cmpw %cr7,%r10,%r6	 # N2, tmp572, k
	addi %r30,%r30,12	 # ivtmp.533, ivtmp.533,
	bne+ %cr7,.L28	 #
	slwi %r7,%r27,3	 # D.3315, N,
	lwz %r9,0(%r1)	 #, tmp588
	addi %r10,%r7,30	 # tmp787, D.3315,
	rlwinm %r0,%r10,0,0,27	 # tmp586, tmp787,
	neg %r0,%r0	 # tmp589, tmp586
	stwux %r9,%r1,%r0	 # tmp588,, tmp589
	addi %r28,%r1,23	 # tmp590,,
	rlwinm %r28,%r28,0,0,27	 # da1_dz1.73, tmp590,
	ble- %cr1,.L32	 #
.L70:
	lis %r26,.LC3@ha	 # tmp788,
	addi %r28,%r28,-8	 # ivtmp.490, da1_dz1.73,
	mtctr %r27	 # N, N
	la %r26,.LC3@l(%r26)	 # tmp790,, tmp788
	addi %r11,%r4,-8	 # ivtmp.509, a1,
	lfs %f11,0(%r26)	 #, tmp813
	mr %r9,%r28	 # ivtmp.516, ivtmp.490
.L33:
	lfdu %f13,8(%r11)	 # MEM[(real_T *)D.4007_521], D.3423
	fneg %f12,%f13	 # tmp594, D.3423
	fmadd %f13,%f12,%f13,%f11	 # tmp595, tmp594, D.3423, tmp813
	stfdu %f13,8(%r9)	 # MEM[(double[0:D.3160] *)D.4008_522], tmp595
	bdnz .L33	 #
	lwz %r9,0(%r1)	 #, tmp608
	slwi %r0,%r27,5	 # tmp602, N,
	lis %r11,W3-8@ha	 # tmp807,
	subfic %r0,%r0,-16	 # tmp609, tmp602,
	lis %r25,.LC4@ha	 # tmp789,
	stwux %r9,%r1,%r0	 # tmp608,, tmp609
	rlwinm %r0,%r10,0,0,27	 # tmp616, tmp787,
	lis %r19,W2@ha	 # tmp809,
	neg %r0,%r0	 # tmp619, tmp616
	slwi %r20,%r27,2	 # D.3420, N,
	li %r30,0	 # k,
	la %r25,.LC4@l(%r25)	 # tmp791,, tmp789
	addi %r21,%r1,23	 # tmp610,,
	stwux %r9,%r1,%r0	 # tmp618,, tmp619
	lis %r9,backprop11_U@ha	 # tmp784,
	la %r17,backprop11_U@l(%r9)	 # tmp786,, tmp784
	lfd %f4,backprop11_U@l(%r9)	 # backprop11_U.x1, pretmp.356
	rlwinm %r21,%r21,0,0,27	 # dLoss_dW1.75, tmp610,
	lfd %f5,8(%r17)	 # backprop11_U.x2, pretmp.359
	la %r0,W3-8@l(%r11)	 # ivtmp.473,, tmp807
	mr %r12,%r21	 # ivtmp.495, dLoss_dW1.75
	addi %r22,%r1,23	 # tmp620,,
	lfd %f6,16(%r17)	 # backprop11_U.x3, pretmp.361
	la %r19,W2@l(%r19)	 # tmp810,, tmp809
	lfd %f7,24(%r17)	 # backprop11_U.x4, pretmp.363
	rlwinm %r22,%r22,0,0,27	 # dLoss_db1.78, tmp620,
	add %r4,%r0,%r8	 # D.3965, ivtmp.473, D.3904
	addi %r29,%r22,-8	 # ivtmp.502, dLoss_db1.78,
.L34:
	ble- %cr6,.L52	 #
	lfd %f12,0(%r25)	 #, tmp
	slwi %r11,%r30,3	 # tmp652, k,
	mr %r9,%r0	 # ivtmp.473, ivtmp.473
	lfs %f8,0(%r26)	 #, tmp806
	addi %r10,%r3,-8	 # ivtmp.482, a2,
	add %r11,%r11,%r19	 # ivtmp.484, tmp652, tmp810
.L35:
	addi %r9,%r9,8	 # ivtmp.473, ivtmp.473,
	lfdu %f13,8(%r10)	 # MEM[(real_T *)D.3959_500], D.3408
	lfdx %f10,%r9,%r8	 # MEM[base: D.3955_496, index: D.3962_503, offset: 0B], MEM[base: D.3955_496, index: D.3962_503, offset: 0B]
	cmpw %cr7,%r9,%r4	 # D.3965, tmp643, ivtmp.473
	lfd %f11,0(%r9)	 # MEM[(real_T[24] *)D.3955_496], MEM[(real_T[24] *)D.3955_496]
	fneg %f9,%f13	 # tmp635, D.3408
	fmul %f10,%f0,%f10	 # tmp631, dLoss_da32, MEM[base: D.3955_496, index: D.3962_503, offset: 0B]
	fmadd %f13,%f9,%f13,%f8	 # tmp636, tmp635, D.3408, tmp806
	fmadd %f10,%f1,%f11,%f10	 # tmp633, dLoss_da3, MEM[(real_T[24] *)D.3955_496], tmp631
	lfd %f11,0(%r11)	 # MEM[(real_T[144] *)D.3960_501], MEM[(real_T[144] *)D.3960_501]
	addi %r11,%r11,96	 # ivtmp.484, ivtmp.484,
	fmul %f13,%f10,%f13	 # tmp641, tmp633, tmp636
	fmadd %f12,%f13,%f11,%f12	 # tmp, tmp641, MEM[(real_T[144] *)D.3960_501], tmp
	bne+ %cr7,.L35	 #
	lfdu %f13,8(%r28)	 # MEM[(double[0:D.3160] *)D.3988_511], MEM[(double[0:D.3160] *)D.3988_511]
	addi %r30,%r30,1	 # k, k,
	cmpw %cr7,%r30,%r27	 # N, tmp649, k
	fmul %f12,%f12,%f13	 # D.3398, tmp, MEM[(double[0:D.3160] *)D.3988_511]
	fmul %f9,%f12,%f4	 # tmp645, D.3398, pretmp.356
	stfdu %f12,8(%r29)	 # MEM[(double[0:D.3182] *)D.3993_516], D.3398
	fmul %f10,%f12,%f5	 # tmp646, D.3398, pretmp.359
	fmul %f11,%f12,%f6	 # tmp647, D.3398, pretmp.361
	fmul %f13,%f12,%f7	 # tmp648, D.3398, pretmp.363
	stfd %f9,0(%r12)	 # MEM[(double[0:D.3174] *)D.3989_512], tmp645
	stfd %f10,8(%r12)	 # MEM[(double[0:D.3174] *)D.3989_512 + 8B], tmp646
	stfd %f11,16(%r12)	 # MEM[(double[0:D.3174] *)D.3989_512 + 16B], tmp647
	stfd %f13,24(%r12)	 # MEM[(double[0:D.3174] *)D.3989_512 + 24B], tmp648
	addi %r12,%r12,32	 # ivtmp.495, ivtmp.495,
	bne+ %cr7,.L34	 #
.L36:
	lfd %f10,56(%r17)	 # backprop11_U.Lr, alpha
	lis %r9,W3@ha	 # tmp801,
	mr %r10,%r18	 # ivtmp.466, dLoss_dW3.56
	li %r4,-1	 # ivtmp.468,
	la %r0,W3@l(%r9)	 # tmp802,, tmp801
	fneg %f11,%f10	 # tmp804, alpha
.L38:
	ble- %cr6,.L41	 #
	slwi %r11,%r4,3	 # tmp667, ivtmp.468,
	li %r9,0	 # ivtmp.454,
	add %r11,%r11,%r0	 # ivtmp.453, tmp667, tmp802
.L39:
	lfdx %f12,%r10,%r9	 # MEM[base: D.3922_487, index: ivtmp.454_473, offset: 0B], MEM[base: D.3922_487, index: ivtmp.454_473, offset: 0B]
	addi %r9,%r9,8	 # ivtmp.454, ivtmp.454,
	lfdu %f13,8(%r11)	 # MEM[(real_T[24] *)D.3919_484], MEM[(real_T[24] *)D.3919_484]
	cmpw %cr7,%r8,%r9	 # ivtmp.454, tmp664, D.3904
	fmadd %f13,%f11,%f12,%f13	 # tmp661, tmp804, MEM[base: D.3922_487, index: ivtmp.454_473, offset: 0B], MEM[(real_T[24] *)D.3919_484]
	stfd %f13,0(%r11)	 # MEM[(real_T[24] *)D.3919_484], tmp661
	bne+ %cr7,.L39	 #
.L41:
	cmpwi %cr7,%r4,11	 #, tmp665, ivtmp.468
	add %r10,%r10,%r8	 # ivtmp.466, ivtmp.466, D.3904
	addi %r4,%r4,12	 # ivtmp.468, ivtmp.468,
	bne- %cr7,.L38	 #
	lfd %f13,b31@sdarel(%r13)	 # b31, b31
	fneg %f1,%f1	 # tmp670, dLoss_da3
	lfd %f12,b32@sdarel(%r13)	 # b32, b32
	fneg %f0,%f0	 # tmp673, dLoss_da32
	fmadd %f13,%f1,%f10,%f13	 # tmp671, tmp670, alpha, b31
	fmadd %f0,%f0,%f10,%f12	 # tmp674, tmp673, alpha, b32
	stfd %f13,b31@sdarel(%r13)	 # b31, tmp671
	stfd %f0,b32@sdarel(%r13)	 # b32, tmp674
	ble- %cr6,.L42	 #
	fneg %f12,%f10	 # tmp794, alpha
	lis %r11,W2@ha	 # tmp677,
	mr %r10,%r24	 # ivtmp.448, dLoss_dW2.68
	la %r11,W2@l(%r11)	 # ivtmp.446,, tmp677
	li %r4,0	 # k,
.L43:
	ble- %cr1,.L46	 #
	li %r9,0	 # ivtmp.437,
.L44:
	lfdx %f0,%r11,%r9	 # MEM[base: D.3888_471, index: ivtmp.437_53, offset: 0B], MEM[base: D.3888_471, index: ivtmp.437_53, offset: 0B]
	lfdx %f13,%r10,%r9	 # MEM[base: D.3891_474, index: ivtmp.437_53, offset: 0B], MEM[base: D.3891_474, index: ivtmp.437_53, offset: 0B]
	fmadd %f0,%f12,%f13,%f0	 # tmp679, tmp794, MEM[base: D.3891_474, index: ivtmp.437_53, offset: 0B], MEM[base: D.3888_471, index: ivtmp.437_53, offset: 0B]
	stfdx %f0,%r11,%r9	 # MEM[base: D.3888_471, index: ivtmp.437_53, offset: 0B], tmp679
	addi %r9,%r9,8	 # ivtmp.437, ivtmp.437,
	cmpw %cr7,%r7,%r9	 # ivtmp.437, tmp682, D.3315
	bne+ %cr7,.L44	 #
.L46:
	addi %r4,%r4,1	 # k, k,
	addi %r11,%r11,96	 # ivtmp.446, ivtmp.446,
	cmpw %cr7,%r4,%r6	 # N2, tmp683, k
	add %r10,%r10,%r8	 # ivtmp.448, ivtmp.448, D.3904
	bne+ %cr7,.L43	 #
	lis %r9,b2-8@ha	 # tmp685,
	addi %r23,%r23,-8	 # ivtmp.428, dLoss_dz2.67,
	la %r9,b2-8@l(%r9)	 # ivtmp.419,, tmp685
	add %r8,%r8,%r9	 # D.3874, D.3904, ivtmp.419
.L47:
	lfdu %f0,8(%r9)	 # MEM[(real_T[12] *)D.3867_432], MEM[(real_T[12] *)D.3867_432]
	lfdu %f13,8(%r23)	 # MEM[(double[0:D.3121] *)D.3868_429], MEM[(double[0:D.3121] *)D.3868_429]
	cmpw %cr7,%r9,%r8	 # D.3874, tmp693, ivtmp.419
	fmadd %f0,%f12,%f13,%f0	 # tmp690, tmp794, MEM[(double[0:D.3121] *)D.3868_429], MEM[(real_T[12] *)D.3867_432]
	stfd %f0,0(%r9)	 # MEM[(real_T[12] *)D.3867_432], tmp690
	bne+ %cr7,.L47	 #
.L42:
	cmpwi %cr7,%r20,0	 #, tmp694, D.3420
	ble- %cr7,.L48	 #
	slwi %r10,%r20,3	 # tmp818, D.3420,
	fneg %f12,%f10	 # tmp794, alpha
	lis %r9,W1-8@ha	 # tmp695,
	addi %r10,%r10,-8	 # tmp819, tmp818,
	la %r9,W1-8@l(%r9)	 # ivtmp.402,, tmp695
	srwi %r10,%r10,3	 # tmp820, tmp819,
	addi %r11,%r21,-8	 # ivtmp.408, dLoss_dW1.75,
	addi %r10,%r10,1	 #, tmp820,
	mtctr %r10	 # tmp817,
.L49:
	lfdu %f0,8(%r9)	 # MEM[(real_T[48] *)D.3842_427], MEM[(real_T[48] *)D.3842_427]
	lfdu %f13,8(%r11)	 # MEM[(double[0:D.3174] *)D.3843_424], MEM[(double[0:D.3174] *)D.3843_424]
	fmadd %f0,%f12,%f13,%f0	 # tmp701, tmp794, MEM[(double[0:D.3174] *)D.3843_424], MEM[(real_T[48] *)D.3842_427]
	stfd %f0,0(%r9)	 # MEM[(real_T[48] *)D.3842_427], tmp701
	bdnz .L49	 #
.L48:
	ble- %cr1,.L22	 #
	lis %r9,b1-8@ha	 # tmp706,
	fneg %f12,%f10	 # tmp794, alpha
	addi %r22,%r22,-8	 # ivtmp.394, dLoss_db1.78,
	la %r9,b1-8@l(%r9)	 # ivtmp.385,, tmp706
	add %r7,%r7,%r9	 # D.3824, D.3315, ivtmp.385
.L51:
	lfdu %f0,8(%r9)	 # MEM[(real_T[12] *)D.3817_444], MEM[(real_T[12] *)D.3817_444]
	lfdu %f13,8(%r22)	 # MEM[(double[0:D.3182] *)D.3818_443], MEM[(double[0:D.3182] *)D.3818_443]
	cmpw %cr7,%r9,%r7	 # D.3824, tmp714, ivtmp.385
	fmadd %f0,%f12,%f13,%f0	 # tmp711, tmp794, MEM[(double[0:D.3182] *)D.3818_443], MEM[(real_T[12] *)D.3817_444]
	stfd %f0,0(%r9)	 # MEM[(real_T[12] *)D.3817_444], tmp711
	bne+ %cr7,.L51	 #
.L22:
	addi %r11,%r31,80	 #,,
	lwz %r0,4(%r11)	 #,
	lwz %r17,-60(%r11)	 #,
	mtlr %r0	 #,
	lwz %r18,-56(%r11)	 #,
	lwz %r19,-52(%r11)	 #,
	lwz %r20,-48(%r11)	 #,
	lwz %r21,-44(%r11)	 #,
	lwz %r22,-40(%r11)	 #,
	lwz %r23,-36(%r11)	 #,
	lwz %r24,-32(%r11)	 #,
	lwz %r25,-28(%r11)	 #,
	lwz %r26,-24(%r11)	 #,
	lwz %r27,-20(%r11)	 #,
	lwz %r28,-16(%r11)	 #,
	lwz %r29,-12(%r11)	 #,
	lwz %r30,-8(%r11)	 #,
	lwz %r31,-4(%r11)	 #,
	mr %r1,%r11	 #,
	blr	 #
.L52:
	lfdu %f13,8(%r28)	 # MEM[(double[0:D.3160] *)D.3988_511], MEM[(double[0:D.3160] *)D.3988_511]
	addi %r30,%r30,1	 # k, k,
	lfd %f12,0(%r25)	 #, tmp
	cmpw %cr7,%r30,%r27	 # N, tmp649, k
	fmul %f12,%f12,%f13	 # D.3398, tmp, MEM[(double[0:D.3160] *)D.3988_511]
	fmul %f9,%f12,%f4	 # tmp645, D.3398, pretmp.356
	stfdu %f12,8(%r29)	 # MEM[(double[0:D.3182] *)D.3993_516], D.3398
	fmul %f10,%f12,%f5	 # tmp646, D.3398, pretmp.359
	fmul %f11,%f12,%f6	 # tmp647, D.3398, pretmp.361
	fmul %f13,%f12,%f7	 # tmp648, D.3398, pretmp.363
	stfd %f9,0(%r12)	 # MEM[(double[0:D.3174] *)D.3989_512], tmp645
	stfd %f10,8(%r12)	 # MEM[(double[0:D.3174] *)D.3989_512 + 8B], tmp646
	stfd %f11,16(%r12)	 # MEM[(double[0:D.3174] *)D.3989_512 + 16B], tmp647
	stfd %f13,24(%r12)	 # MEM[(double[0:D.3174] *)D.3989_512 + 24B], tmp648
	addi %r12,%r12,32	 # ivtmp.495, ivtmp.495,
	bne+ %cr7,.L34	 #
	b .L36	 #
.L23:
	slwi %r8,%r6,3	 # D.3904, N2,
	lwz %r9,0(%r1)	 #, tmp721
	slwi %r7,%r27,3	 # D.3315, N,
	addi %r0,%r8,30	 # tmp717, D.3904,
	addi %r10,%r7,30	 # tmp787, D.3315,
	rlwinm %r0,%r0,0,0,27	 # tmp719, tmp717,
	cmpwi %cr1,%r5,0	 #, tmp792,
	neg %r0,%r0	 # tmp722, tmp719
	stwux %r9,%r1,%r0	 # tmp721,, tmp722
	mullw %r9,%r6,%r5	 # tmp749, N2,
	lwz %r11,0(%r1)	 #, tmp732
	slwi %r9,%r9,3	 # tmp750, tmp749,
	stwux %r11,%r1,%r0	 # tmp732,, tmp722
	addi %r9,%r9,30	 # tmp752, tmp750,
	rlwinm %r9,%r9,0,0,27	 # tmp754, tmp752,
	stwux %r11,%r1,%r0	 # tmp743,, tmp722
	neg %r0,%r9	 # tmp757, tmp754
	addi %r23,%r1,23	 # tmp745,,
	stwux %r11,%r1,%r0	 # tmp756,, tmp757
	rlwinm %r0,%r10,0,0,27	 # tmp586, tmp787,
	neg %r0,%r0	 # tmp589, tmp586
	rlwinm %r23,%r23,0,0,27	 # dLoss_dz2.67, tmp745,
	lwz %r9,0(%r1)	 #, tmp588
	addi %r24,%r1,23	 # tmp758,,
	rlwinm %r24,%r24,0,0,27	 # dLoss_dW2.68, tmp758,
	stwux %r9,%r1,%r0	 # tmp588,, tmp589
	addi %r28,%r1,23	 # tmp590,,
	rlwinm %r28,%r28,0,0,27	 # da1_dz1.73, tmp590,
	bgt+ %cr1,.L70	 #
.L32:
	lwz %r11,0(%r1)	 #, tmp768
	slwi %r9,%r27,5	 # tmp762, N,
	lis %r17,backprop11_U@ha	 # tmp799,
	subfic %r9,%r9,-16	 # tmp769, tmp762,
	la %r17,backprop11_U@l(%r17)	 # tmp786,, tmp799
	stwux %r11,%r1,%r9	 # tmp768,, tmp769
	lis %r9,W3@ha	 # tmp801,
	slwi %r20,%r27,2	 # D.3420, N,
	lfd %f10,56(%r17)	 # backprop11_U.Lr, alpha
	mr %r10,%r18	 # ivtmp.466, dLoss_dW3.56
	li %r4,-1	 # ivtmp.468,
	addi %r21,%r1,23	 # tmp770,,
	stwux %r11,%r1,%r0	 # tmp778,, tmp589
	la %r0,W3@l(%r9)	 # tmp802,, tmp801
	rlwinm %r21,%r21,0,0,27	 # dLoss_dW1.75, tmp770,
	fneg %f11,%f10	 # tmp804, alpha
	addi %r22,%r1,23	 # tmp780,,
	rlwinm %r22,%r22,0,0,27	 # dLoss_db1.78, tmp780,
	b .L38	 #
	.size	calcNewArray.isra.0, .-calcNewArray.isra.0
	.align 2
	.globl backprop11_step
	.type	backprop11_step, @function
backprop11_step:
	stwu %r1,-160(%r1)	 #,,
	lis %r9,backprop11_U@ha	 # tmp327,
	mflr %r0	 #,
	mfcr %r12	 #
	stw %r22,80(%r1)	 #,
	la %r22,backprop11_U@l(%r9)	 # tmp513,, tmp327
	lfd %f12,40(%r22)	 # backprop11_U.u1, backprop11_U.u1
	stw %r31,116(%r1)	 #,
	mr %r31,%r1	 #,
	stw %r29,108(%r1)	 #,
	fctiwz %f12,%f12	 # tmp329, backprop11_U.u1
	stw %r25,92(%r1)	 #,
	stw %r0,164(%r1)	 #,
	lwz %r11,0(%r1)	 #, tmp345
	stfd %f12,8(%r31)	 #, tmp329
	lfd %f13,32(%r22)	 # backprop11_U.L, backprop11_U.L
	stfd %f27,120(%r1)	 #,
	lwz %r29,12(%r31)	 #, N
	stw %r16,56(%r1)	 #,
	fctiwz %f13,%f13	 # tmp335, backprop11_U.L
	slwi %r25,%r29,3	 # D.2880, N,
	stw %r20,72(%r1)	 #,
	cmpwi %cr4,%r29,0	 #, tmp505, N
	addi %r0,%r25,30	 # tmp341, D.2880,
	stw %r21,76(%r1)	 #,
	rlwinm %r0,%r0,0,0,27	 # tmp343, tmp341,
	stw %r23,84(%r1)	 #,
	neg %r0,%r0	 # tmp346, tmp343
	stw %r27,100(%r1)	 #,
	stw %r30,112(%r1)	 #,
	stfd %f28,128(%r1)	 #,
	stfd %f29,136(%r1)	 #,
	stfd %f30,144(%r1)	 #,
	stfd %f31,152(%r1)	 #,
	stw %r17,60(%r1)	 #,
	stw %r18,64(%r1)	 #,
	stw %r19,68(%r1)	 #,
	stw %r24,88(%r1)	 #,
	stw %r26,96(%r1)	 #,
	stw %r28,104(%r1)	 #,
	stw %r12,52(%r1)	 #,
	stwux %r11,%r1,%r0	 # tmp345,, tmp346
	lfd %f0,96(%r22)	 # backprop11_U.b, backprop11_U.b
	stfd %f13,16(%r31)	 #, tmp335
	lwz %r11,0(%r1)	 #, tmp355
	addi %r27,%r1,23	 # tmp347,,
	fctiwz %f0,%f0	 # tmp339, backprop11_U.b
	rlwinm %r27,%r27,0,0,27	 # a1.20, tmp347,
	stwux %r11,%r1,%r0	 # tmp355,, tmp346
	lfd %f27,48(%r22)	 # backprop11_U.u2, D.2871
	stfd %f0,24(%r31)	 #, tmp339
	lwz %r11,0(%r1)	 #, tmp365
	addi %r23,%r1,23	 # tmp357,,
	lwz %r20,20(%r31)	 #, Ly
	rlwinm %r23,%r23,0,0,27	 # z1.23, tmp357,
	stwux %r11,%r1,%r0	 # tmp365,, tmp346
	lwz %r30,28(%r31)	 #, batch
	addi %r21,%r1,23	 # tmp367,,
	stwux %r11,%r1,%r0	 # tmp375,, tmp346
	rlwinm %r21,%r21,0,0,27	 # a2.26, tmp367,
	addi %r16,%r1,23	 # tmp377,,
	rlwinm %r16,%r16,0,0,27	 # z2.29, tmp377,
	ble- %cr4,.L72	 #
	lfd %f28,backprop11_U@l(%r9)	 # backprop11_U.x1, pretmp.626
	lis %r26,W1@ha	 # tmp389,
	lis %r24,b1@ha	 # tmp510,
	lfd %f29,8(%r22)	 # backprop11_U.x2, pretmp.629
	la %r26,W1@l(%r26)	 # ivtmp.696,, tmp389
	li %r28,0	 # ivtmp.704,
	lfd %f30,16(%r22)	 # backprop11_U.x3, pretmp.631
	la %r24,b1@l(%r24)	 # tmp506,, tmp510
	lfd %f31,24(%r22)	 # backprop11_U.x4, pretmp.633
.L73:
	lfd %f0,8(%r26)	 # MEM[(real_T[48] *)D.4267_166 + 8B], MEM[(real_T[48] *)D.4267_166 + 8B]
	lfd %f13,0(%r26)	 # MEM[(real_T[48] *)D.4267_166], MEM[(real_T[48] *)D.4267_166]
	lfd %f11,16(%r26)	 # MEM[(real_T[48] *)D.4267_166 + 16B], MEM[(real_T[48] *)D.4267_166 + 16B]
	fmul %f0,%f29,%f0	 # tmp390, pretmp.629, MEM[(real_T[48] *)D.4267_166 + 8B]
	lfd %f12,24(%r26)	 # MEM[(real_T[48] *)D.4267_166 + 24B], MEM[(real_T[48] *)D.4267_166 + 24B]
	addi %r26,%r26,32	 # ivtmp.696, ivtmp.696,
	fmadd %f13,%f13,%f28,%f0	 # tmp392, MEM[(real_T[48] *)D.4267_166], pretmp.626, tmp390
	lfdx %f0,%r24,%r28	 # MEM[symbol: b1, index: ivtmp.704_307, offset: 0B], MEM[symbol: b1, index: ivtmp.704_307, offset: 0B]
	fmadd %f13,%f11,%f30,%f13	 # tmp394, MEM[(real_T[48] *)D.4267_166 + 16B], pretmp.631, tmp392
	fmadd %f13,%f12,%f31,%f13	 # tmp396, MEM[(real_T[48] *)D.4267_166 + 24B], pretmp.633, tmp394
	fadd %f0,%f13,%f0	 # D.2926, tmp396, MEM[symbol: b1, index: ivtmp.704_307, offset: 0B]
	stfdx %f0,%r23,%r28	 # MEM[base: z1.23_46, index: ivtmp.704_307, offset: 0B], D.2926
	fmr %f1,%f0	 #, D.2926
	bl tanh	 #
	stfdx %f1,%r27,%r28	 # MEM[base: a1.20_32, index: ivtmp.704_307, offset: 0B],
	addi %r28,%r28,8	 # ivtmp.704, ivtmp.704,
	cmpw %cr7,%r25,%r28	 # ivtmp.704, tmp401, D.2880
	bne+ %cr7,.L73	 #
.L72:
	cmpwi %cr7,%r20,1	 #, tmp402, Ly
	ble- %cr7,.L74	 #
	fctiwz %f27,%f27	 # tmp403, D.2871
	lis %r20,.LC4@ha	 # tmp512,
	lfd %f30,.LC4@l(%r20)	 #, preOutput2
	stfd %f27,32(%r31)	 #, tmp403
	fmr %f29,%f30	 # preOutput, preOutput2
	lwz %r28,36(%r31)	 #, N2
	cmpwi %cr7,%r28,0	 #, tmp404, N2
	ble- %cr7,.L75	 #
	fmr %f29,%f30	 # preOutput, preOutput2
	lis %r23,W3-8@ha	 # tmp405,
	lis %r26,W2@ha	 # tmp406,
	lis %r19,b2@ha	 # tmp511,
	la %r23,W3-8@l(%r23)	 # ivtmp.674,, tmp405
	la %r26,W2@l(%r26)	 # ivtmp.692,, tmp406
	slwi %r17,%r28,3	 # D.4242, N2,
	li %r24,0	 # ivtmp.669,
	la %r18,.LC4@l(%r20)	 # tmp509,, tmp512
	la %r19,b2@l(%r19)	 # tmp507,, tmp511
.L76:
	lfd %f0,0(%r18)	 #, tmp
	ble- %cr4,.L82	 #
	li %r9,0	 # ivtmp.658,
.L81:
	lfdx %f12,%r26,%r9	 # MEM[base: D.4207_308, index: ivtmp.658_110, offset: 0B], MEM[base: D.4207_308, index: ivtmp.658_110, offset: 0B]
	lfdx %f13,%r27,%r9	 # MEM[base: a1.20_32, index: ivtmp.658_110, offset: 0B], MEM[base: a1.20_32, index: ivtmp.658_110, offset: 0B]
	addi %r9,%r9,8	 # ivtmp.658, ivtmp.658,
	cmpw %cr7,%r25,%r9	 # ivtmp.658, tmp457, D.2880
	fmadd %f0,%f12,%f13,%f0	 # tmp, MEM[base: D.4207_308, index: ivtmp.658_110, offset: 0B], MEM[base: a1.20_32, index: ivtmp.658_110, offset: 0B], tmp
	bne+ %cr7,.L81	 #
.L82:
	lfdx %f31,%r19,%r24	 # MEM[symbol: b2, index: ivtmp.669_87, offset: 0B], MEM[symbol: b2, index: ivtmp.669_87, offset: 0B]
	addi %r26,%r26,96	 # ivtmp.692, ivtmp.692,
	fadd %f31,%f0,%f31	 # D.2973, tmp, MEM[symbol: b2, index: ivtmp.669_87, offset: 0B]
	fmr %f1,%f31	 #, D.2973
	bl tanh	 #
	lfdu %f13,8(%r23)	 # MEM[(real_T[24] *)D.4239_316], MEM[(real_T[24] *)D.4239_316]
	stfdx %f31,%r16,%r24	 # MEM[base: z2.29_74, index: ivtmp.669_87, offset: 0B], D.2973
	stfdx %f1,%r21,%r24	 # MEM[base: a2.26_60, index: ivtmp.669_87, offset: 0B], D.2974
	addi %r24,%r24,8	 # ivtmp.669, ivtmp.669,
	cmpw %cr7,%r24,%r17	 # D.4242, tmp463, ivtmp.669
	lfd %f0,96(%r23)	 # MEM[(real_T[24] *)D.4239_316 + 96B], MEM[(real_T[24] *)D.4239_316 + 96B]
	fmadd %f29,%f1,%f13,%f29	 # preOutput, D.2974, MEM[(real_T[24] *)D.4239_316], preOutput
	fmadd %f30,%f1,%f0,%f30	 # preOutput2, D.2974, MEM[(real_T[24] *)D.4239_316 + 96B], preOutput2
	bne+ %cr7,.L76	 #
.L75:
	lfd %f0,56(%r22)	 # backprop11_U.Lr, backprop11_U.Lr
	lis %r9,backprop11_Y@ha	 # tmp467,
	lfd %f31,.LC4@l(%r20)	 #, tmp473
	la %r11,backprop11_Y@l(%r9)	 # tmp466,, tmp467
	fcmpu %cr7,%f0,%f31	 # tmp477, backprop11_U.Lr, tmp473
	lfd %f0,b31@sdarel(%r13)	 # b31, b31
	fadd %f29,%f29,%f0	 # D.2938, preOutput, b31
	lfd %f0,b32@sdarel(%r13)	 # b32, b32
	fadd %f30,%f30,%f0	 # D.2940, preOutput2, b32
	stfd %f29,8(%r11)	 # backprop11_Y.d, D.2938
	stfd %f30,backprop11_Y@l(%r9)	 # backprop11_Y.q, D.2940
	bng- %cr7,.L71	 #
	lfd %f0,72(%r22)	 # backprop11_U.iq, backprop11_U.iq
	lfd %f1,80(%r22)	 # backprop11_U.idL, backprop11_U.idL
	lfd %f13,64(%r22)	 # backprop11_U.id, backprop11_U.id
	fsub %f30,%f30,%f0	 # tmp493, D.2940, backprop11_U.iq
	lfd %f2,88(%r22)	 # backprop11_U.iqL, backprop11_U.iqL
	lfd %f0,idloss@sdarel(%r13)	 # idloss, idloss
	fadd %f1,%f1,%f1	 # tmp481, backprop11_U.idL, backprop11_U.idL
	fsub %f29,%f29,%f13	 # tmp484, D.2938, backprop11_U.id
	lwz %r0,bn@sdarel(%r13)	 # bn, bn
	fadd %f2,%f2,%f2	 # tmp490, backprop11_U.iqL, backprop11_U.iqL
	addic %r0,%r0,1	 # bn.37, bn,
	fmadd %f1,%f1,%f29,%f0	 # idloss.33, tmp481, tmp484, idloss
	lfd %f0,iqloss@sdarel(%r13)	 # iqloss, iqloss
	cmpw %cr7,%r30,%r0	 # bn.37, tmp497, batch
	stw %r0,bn@sdarel(%r13)	 # bn, bn.37
	fmadd %f2,%f2,%f30,%f0	 # iqloss.35, tmp490, tmp493, iqloss
	stfd %f1,idloss@sdarel(%r13)	 # idloss, idloss.33
	stfd %f2,iqloss@sdarel(%r13)	 # iqloss, iqloss.35
	beq- %cr7,.L92	 #
.L71:
	addi %r11,%r31,160	 #,,
	lwz %r0,4(%r11)	 #,
	lwz %r12,-108(%r11)	 #,
	mtlr %r0	 #,
	lwz %r16,-104(%r11)	 #,
	lwz %r17,-100(%r11)	 #,
	mtcrf 8,%r12	 #,
	lwz %r18,-96(%r11)	 #,
	lwz %r19,-92(%r11)	 #,
	lwz %r20,-88(%r11)	 #,
	lwz %r21,-84(%r11)	 #,
	lwz %r22,-80(%r11)	 #,
	lwz %r23,-76(%r11)	 #,
	lwz %r24,-72(%r11)	 #,
	lwz %r25,-68(%r11)	 #,
	lwz %r26,-64(%r11)	 #,
	lwz %r27,-60(%r11)	 #,
	lwz %r28,-56(%r11)	 #,
	lwz %r29,-52(%r11)	 #,
	lwz %r30,-48(%r11)	 #,
	lwz %r31,-44(%r11)	 #,
	lfd %f27,-40(%r11)	 #,
	lfd %f28,-32(%r11)	 #,
	lfd %f29,-24(%r11)	 #,
	lfd %f30,-16(%r11)	 #,
	lfd %f31,-8(%r11)	 #,
	mr %r1,%r11	 #,
	blr	 #
.L74:
	lis %r20,.LC4@ha	 # tmp512,
	lfd %f0,.LC4@l(%r20)	 #, preOutput2
	ble- %cr4,.L85	 #
	lis %r9,W3-8@ha	 # tmp408,
	fmr %f13,%f0	 # preOutput, preOutput2
	addi %r11,%r27,-8	 # ivtmp.643, a1.20,
	la %r9,W3-8@l(%r9)	 # ivtmp.645,, tmp408
	add %r25,%r25,%r9	 # D.4193, D.2880, ivtmp.645
.L78:
	lfdu %f10,8(%r9)	 # MEM[(real_T[24] *)D.4187_286], MEM[(real_T[24] *)D.4187_286]
	lfdu %f12,8(%r11)	 # MEM[(real_T[0:D.2876] *)D.4186_287], D.2931
	cmpw %cr7,%r9,%r25	 # D.4193, tmp414, ivtmp.645
	lfd %f11,96(%r9)	 # MEM[(real_T[24] *)D.4187_286 + 96B], MEM[(real_T[24] *)D.4187_286 + 96B]
	fmadd %f13,%f12,%f10,%f13	 # preOutput, D.2931, MEM[(real_T[24] *)D.4187_286], preOutput
	fmadd %f0,%f12,%f11,%f0	 # preOutput2, D.2931, MEM[(real_T[24] *)D.4187_286 + 96B], preOutput2
	bne+ %cr7,.L78	 #
.L77:
	lfd %f12,56(%r22)	 # backprop11_U.Lr, backprop11_U.Lr
	lis %r9,backprop11_Y@ha	 # tmp417,
	lfd %f31,.LC4@l(%r20)	 #, tmp423
	la %r11,backprop11_Y@l(%r9)	 # tmp416,, tmp417
	fcmpu %cr7,%f12,%f31	 # tmp427, backprop11_U.Lr, tmp423
	lfd %f12,b31@sdarel(%r13)	 # b31, b31
	fadd %f13,%f13,%f12	 # D.2938, preOutput, b31
	lfd %f12,b32@sdarel(%r13)	 # b32, b32
	fadd %f0,%f0,%f12	 # D.2940, preOutput2, b32
	stfd %f13,8(%r11)	 # backprop11_Y.d, D.2938
	stfd %f0,backprop11_Y@l(%r9)	 # backprop11_Y.q, D.2940
	bng- %cr7,.L71	 #
	lfd %f12,72(%r22)	 # backprop11_U.iq, backprop11_U.iq
	lfd %f1,80(%r22)	 # backprop11_U.idL, backprop11_U.idL
	lfd %f11,64(%r22)	 # backprop11_U.id, backprop11_U.id
	fsub %f0,%f0,%f12	 # tmp443, D.2940, backprop11_U.iq
	lfd %f2,88(%r22)	 # backprop11_U.iqL, backprop11_U.iqL
	lfd %f12,idloss@sdarel(%r13)	 # idloss, idloss
	fadd %f1,%f1,%f1	 # tmp431, backprop11_U.idL, backprop11_U.idL
	fsub %f13,%f13,%f11	 # tmp434, D.2938, backprop11_U.id
	lwz %r0,bn@sdarel(%r13)	 # bn, bn
	fadd %f2,%f2,%f2	 # tmp440, backprop11_U.iqL, backprop11_U.iqL
	addic %r0,%r0,1	 # bn.37, bn,
	fmadd %f1,%f1,%f13,%f12	 # idloss.33, tmp431, tmp434, idloss
	lfd %f13,iqloss@sdarel(%r13)	 # iqloss, iqloss
	cmpw %cr7,%r30,%r0	 # bn.37, tmp447, batch
	stw %r0,bn@sdarel(%r13)	 # bn, bn.37
	fmadd %f2,%f2,%f0,%f13	 # iqloss.35, tmp440, tmp443, iqloss
	stfd %f1,idloss@sdarel(%r13)	 # idloss, idloss.33
	stfd %f2,iqloss@sdarel(%r13)	 # iqloss, iqloss.35
	bne+ %cr7,.L71	 #
	mr %r3,%r27	 #, a1.20
	mr %r4,%r29	 #, N
	mr %r5,%r30	 #, batch
	bl calcNewArray1	 #
	li %r0,0	 # tmp448,
	stfd %f31,idloss@sdarel(%r13)	 # idloss, tmp423
	stw %r0,bn@sdarel(%r13)	 # bn, tmp448
	stfd %f31,iqloss@sdarel(%r13)	 # iqloss, tmp423
	b .L71	 #
.L92:
	mr %r3,%r21	 #, a2.26
	mr %r4,%r27	 #, a1.20
	mr %r5,%r29	 #, N
	mr %r6,%r28	 #, N2
	mr %r7,%r30	 #, batch
	bl calcNewArray.isra.0	 #
	li %r0,0	 # tmp498,
	stfd %f31,idloss@sdarel(%r13)	 # idloss, tmp473
	stw %r0,bn@sdarel(%r13)	 # bn, tmp498
	stfd %f31,iqloss@sdarel(%r13)	 # iqloss, tmp473
	b .L71	 #
.L85:
	fmr %f13,%f0	 # preOutput, preOutput2
	b .L77	 #
	.size	backprop11_step, .-backprop11_step
	.align 2
	.globl backprop11_terminate
	.type	backprop11_terminate, @function
backprop11_terminate:
	blr	 #
	.size	backprop11_terminate, .-backprop11_terminate
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC5:
	.string	"Overrun"
	.section	".text"
	.align 2
	.globl rt_OneStep
	.type	rt_OneStep, @function
rt_OneStep:
	stwu %r1,-16(%r1)	 #,,
	mflr %r0	 #,
	stw %r31,12(%r1)	 #,
	lwz %r31,OverrunFlag@sdarel(%r13)	 # OverrunFlag, OverrunFlag
	stw %r0,20(%r1)	 #,
	cmpwi %cr7,%r31,0	 #, tmp123, OverrunFlag
	beq- %cr7,.L95	 #
	lis %r9,.LC5@ha	 # tmp125,
	lwz %r31,12(%r1)	 #,
	la %r0,.LC5@l(%r9)	 # tmp124,, tmp125
	lwz %r9,backprop11_M@sdarel(%r13)	 # backprop11_M, backprop11_M.17
	stw %r0,0(%r9)	 # backprop11_M.17_2->errorStatus, tmp124
	lwz %r0,20(%r1)	 #,
	addi %r1,%r1,16	 #,,
	mtlr %r0	 #,
	blr	 #
.L95:
	li %r0,1	 # tmp126,
	stw %r0,OverrunFlag@sdarel(%r13)	 # OverrunFlag, tmp126
	bl backprop11_step	 #
	lwz %r0,20(%r1)	 #,
	stw %r31,OverrunFlag@sdarel(%r13)	 # OverrunFlag, OverrunFlag
	mtlr %r0	 #,
	lwz %r31,12(%r1)	 #,
	addi %r1,%r1,16	 #,,
	blr	 #
	.size	rt_OneStep, .-rt_OneStep
	.align 2
	.globl backprop11_initialize
	.type	backprop11_initialize, @function
backprop11_initialize:
	blr	 #
	.size	backprop11_initialize, .-backprop11_initialize
	.section	.text.startup,"ax",@progbits
	.align 2
	.globl main
	.type	main, @function
main:
	stwu %r1,-16(%r1)	 #,,
	mflr %r0	 #,
	lis %r11,backprop11_U@ha	 # tmp153,
	lwz %r9,b@sdarel(%r13)	 # b, b
	lwz %r10,iqL@sdarel(%r13)	 # iqL, iqL
	stw %r0,20(%r1)	 #,
	lfd %f0,0(%r9)	 # *b.0_2, D.2832
	la %r9,backprop11_U@l(%r11)	 # tmp152,, tmp153
	stfd %f0,96(%r9)	 # backprop11_U.b, D.2832
	lfd %f0,0(%r10)	 # *iqL.1_4, D.2834
	lwz %r10,idL@sdarel(%r13)	 # idL, idL
	stfd %f0,88(%r9)	 # backprop11_U.iqL, D.2834
	lfd %f0,0(%r10)	 # *idL.2_6, D.2836
	lwz %r10,iq@sdarel(%r13)	 # iq, iq
	stfd %f0,80(%r9)	 # backprop11_U.idL, D.2836
	lfd %f0,0(%r10)	 # *iq.3_8, D.2838
	lwz %r10,id@sdarel(%r13)	 # id, id
	stfd %f0,72(%r9)	 # backprop11_U.iq, D.2838
	lfd %f0,0(%r10)	 # *id.4_10, D.2840
	lwz %r10,Lr@sdarel(%r13)	 # Lr, Lr
	stfd %f0,64(%r9)	 # backprop11_U.id, D.2840
	lfd %f0,0(%r10)	 # *Lr.5_12, D.2842
	lwz %r10,u2@sdarel(%r13)	 # u2, u2
	stfd %f0,56(%r9)	 # backprop11_U.Lr, D.2842
	lfd %f0,0(%r10)	 # *u2.6_14, D.2844
	lwz %r10,u1@sdarel(%r13)	 # u1, u1
	stfd %f0,48(%r9)	 # backprop11_U.u2, D.2844
	lfd %f0,0(%r10)	 # *u1.7_16, D.2846
	lwz %r10,L@sdarel(%r13)	 # L, L
	stfd %f0,40(%r9)	 # backprop11_U.u1, D.2846
	lfd %f0,0(%r10)	 # *L.8_18, D.2848
	lwz %r10,x4@sdarel(%r13)	 # x4, x4
	stfd %f0,32(%r9)	 # backprop11_U.L, D.2848
	lfd %f0,0(%r10)	 # *x4.9_20, D.2850
	lwz %r10,x3@sdarel(%r13)	 # x3, x3
	stfd %f0,24(%r9)	 # backprop11_U.x4, D.2850
	lfd %f0,0(%r10)	 # *x3.10_22, D.2852
	stfd %f0,16(%r9)	 # backprop11_U.x3, D.2852
	lwz %r10,x2@sdarel(%r13)	 # x2, x2
	lwz %r0,firstTimeStep@sdarel(%r13)	 # firstTimeStep, firstTimeStep
	lfd %f0,0(%r10)	 # *x2.11_24, D.2854
	cmpwi %cr7,%r0,1	 #, tmp191, firstTimeStep
	stfd %f0,8(%r9)	 # backprop11_U.x2, D.2854
	lwz %r9,x1@sdarel(%r13)	 # x1, x1
	lfd %f0,0(%r9)	 # *x1.12_26, D.2856
	stfd %f0,backprop11_U@l(%r11)	 # backprop11_U.x1, D.2856
	beq- %cr7,.L101	 #
	bl rt_OneStep	 #
.L100:
	lis %r9,backprop11_Y@ha	 # tmp195,
	lwz %r0,20(%r1)	 #,
	addi %r1,%r1,16	 #,,
	la %r11,backprop11_Y@l(%r9)	 # tmp194,, tmp195
	lfd %f0,8(%r11)	 # backprop11_Y.d, D.2862
	mtlr %r0	 #,
	lwz %r11,d@sdarel(%r13)	 # d, d
	stfd %f0,0(%r11)	 # *d.14_29, D.2862
	lfd %f0,backprop11_Y@l(%r9)	 # backprop11_Y.q, D.2864
	lwz %r9,q@sdarel(%r13)	 # q, q
	stfd %f0,0(%r9)	 # *q.15_31, D.2864
	blr	 #
.L101:
	la %r0,backprop11_M_@sdarel(%r13)	 # tmp192,
	stw %r0,backprop11_M@sdarel(%r13)	 # backprop11_M, tmp192
	li %r0,0	 # tmp193,
	stw %r0,firstTimeStep@sdarel(%r13)	 # firstTimeStep, tmp193
	b .L100	 #
	.size	main, .-main
	.globl iqloss
	.section	".sbss","aw",@nobits
	.align 3
iqloss:
	.zero	8
	.size	iqloss, 8
	.type	iqloss, @object
	.globl idloss
	.align 3
idloss:
	.zero	8
	.size	idloss, 8
	.type	idloss, @object
	.globl bn
	.align 2
bn:
	.zero	4
	.size	bn, 4
	.type	bn, @object
	.globl b32
	.align 3
b32:
	.zero	8
	.size	b32, 8
	.type	b32, @object
	.globl b31
	.align 3
b31:
	.zero	8
	.size	b31, 8
	.type	b31, @object
	.globl b2
	.section	".data"
	.align 3
	.type	b2, @object
	.size	b2, 96
b2:
	.long	0
	.long	0
	.long	-2147483648
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.long	-2147483648
	.long	0
	.long	-2147483648
	.long	0
	.globl b1
	.align 3
	.type	b1, @object
	.size	b1, 96
b1:
	.long	0
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.globl W3
	.align 3
	.type	W3, @object
	.size	W3, 192
W3:
	.long	1069765592
	.long	-2068060426
	.long	-1075566752
	.long	1634314084
	.long	1068655302
	.long	-191128106
	.long	-1078108710
	.long	-57647395
	.long	1071819295
	.long	-1908752186
	.long	1071768670
	.long	-7025879
	.long	-1077993497
	.long	-53216363
	.long	-1075689828
	.long	1725133744
	.long	1067636721
	.long	-286246857
	.long	1066416700
	.long	1005613335
	.long	-1077609709
	.long	104992365
	.long	-1077468476
	.long	2065278661
	.long	1069765592
	.long	-2068060426
	.long	-1075566752
	.long	1634314084
	.long	1068655302
	.long	-191128106
	.long	-1078108710
	.long	-57647395
	.long	1071819295
	.long	-1908752186
	.long	1071768670
	.long	-7025879
	.long	-1077993497
	.long	-53216363
	.long	-1075689828
	.long	1725133744
	.long	1067636721
	.long	-286246857
	.long	1066416700
	.long	1005613335
	.long	-1077609709
	.long	104992365
	.long	-1077468476
	.long	2065278661
	.globl W2
	.align 3
	.type	W2, @object
	.size	W2, 1152
W2:
	.long	-1075945015
	.long	-12776325
	.long	-1076404904
	.long	-2139836545
	.long	-1076810079
	.long	2115273455
	.long	1070657561
	.long	-2096570762
	.long	1070965898
	.long	-104618531
	.long	-1075965076
	.long	-2082354077
	.long	-1076791578
	.long	2076867514
	.long	1070813297
	.long	2093283222
	.long	-1078575044
	.long	88004911
	.long	1069891010
	.long	40791881
	.long	1070673294
	.long	-2087653723
	.long	1068609115
	.long	-210710408
	.long	1065637263
	.long	-1451179427
	.long	1071139143
	.long	1907267845
	.long	-1077642529
	.long	64750240
	.long	-1079989185
	.long	-462322649
	.long	1070977663
	.long	-7036874
	.long	-1077800347
	.long	124497702
	.long	-1077675514
	.long	7674591
	.long	-1076783220
	.long	2032117390
	.long	-1076364935
	.long	2115713260
	.long	1068497492
	.long	428325750
	.long	-1077388752
	.long	-118406407
	.long	-1076867094
	.long	-1904299164
	.long	-1078048689
	.long	-85322102
	.long	1069543087
	.long	-159561127
	.long	-1076456290
	.long	-2011831401
	.long	1070871962
	.long	-2128599536
	.long	1071280309
	.long	157395090
	.long	-1079670641
	.long	-603939747
	.long	-1076006552
	.long	-1920461985
	.long	1068926696
	.long	287368359
	.long	-1076681388
	.long	37075532
	.long	1069889370
	.long	-174459510
	.long	-1076078084
	.long	-2140232369
	.long	1071388410
	.long	-2098692820
	.long	-1078999556
	.long	589734057
	.long	-1079943524
	.long	396571854
	.long	1069694121
	.long	-9609732
	.long	-1080814977
	.long	-547468830
	.long	-1076540995
	.long	44717138
	.long	-1077026055
	.long	152425297
	.long	-1081481297
	.long	-49785887
	.long	-1077250515
	.long	49115184
	.long	1069417918
	.long	84464483
	.long	1069685364
	.long	169016927
	.long	1070781931
	.long	60396174
	.long	-1076182870
	.long	2140859090
	.long	1070162995
	.long	90566773
	.long	1069985249
	.long	-83408952
	.long	-1075976345
	.long	32292657
	.long	-1077656101
	.long	9906600
	.long	-1076651843
	.long	-59087755
	.long	-1077166626
	.long	-213909987
	.long	-1077009372
	.long	-128126090
	.long	-1076059141
	.long	-2016724228
	.long	-1075933621
	.long	-216163986
	.long	-1077133647
	.long	4035208
	.long	1070288344
	.long	-69588091
	.long	1069768667
	.long	116867091
	.long	1069856506
	.long	-27036991
	.long	1068717488
	.long	181023594
	.long	1070986946
	.long	2132150958
	.long	1071300853
	.long	2115757240
	.long	1069597703
	.long	8015440
	.long	-1076738398
	.long	-57031668
	.long	1070020541
	.long	95382634
	.long	-1076410764
	.long	-2088071537
	.long	1069429380
	.long	196988503
	.long	-1080668577
	.long	-547116986
	.long	-1075998606
	.long	-11467906
	.long	-1076430974
	.long	-2097373406
	.long	-1082975647
	.long	1429178199
	.long	1067640555
	.long	-589470174
	.long	1068829699
	.long	-280111582
	.long	1071355608
	.long	-1986432682
	.long	1067538956
	.long	268676661
	.long	1070444821
	.long	-141683068
	.long	1070331085
	.long	109280461
	.long	-1076494445
	.long	-14293651
	.long	1069794697
	.long	-135921627
	.long	1070500280
	.long	-69236247
	.long	-1077104268
	.long	14205690
	.long	-1077422776
	.long	100539343
	.long	1069533468
	.long	321980985
	.long	-1076614039
	.long	2146851429
	.long	1068848095
	.long	-67202151
	.long	1069424496
	.long	131061786
	.long	1069991240
	.long	145575340
	.long	-1079544536
	.long	539992151
	.long	-1077810418
	.long	7586630
	.long	1071592361
	.long	257450648
	.long	-1077825942
	.long	-143673184
	.long	-1076379101
	.long	-60912944
	.long	1071041648
	.long	-2038769436
	.long	-1078533149
	.long	-358572732
	.long	-1076584178
	.long	-2097505347
	.long	-1076783156
	.long	-79307774
	.long	-1076807974
	.long	-218088131
	.long	1069891946
	.long	44574201
	.long	1070419226
	.long	-78054330
	.long	1069083045
	.long	-160154864
	.long	-1079837800
	.long	291062718
	.long	1071234925
	.long	2117252576
	.long	-1076435964
	.long	12622393
	.long	-1086132217
	.long	965030361
	.long	-1076374001
	.long	5112729
	.long	1071566156
	.long	-2076372733
	.long	1069165926
	.long	347203782
	.long	-1076663683
	.long	-2113151397
	.long	-1076585589
	.long	190930194
	.long	-1076341711
	.long	78626077
	.long	-1080505760
	.long	184717953
	.long	1071624370
	.long	71930051
	.long	1070896763
	.long	-2113833095
	.long	-1078861824
	.long	90071993
	.long	1071470137
	.long	2102343198
	.long	1069639933
	.long	-262453426
	.long	1071570357
	.long	2102387179
	.long	-1076622448
	.long	18119952
	.long	1068607045
	.long	-94360088
	.long	1070848633
	.long	-20340965
	.long	-1076953167
	.long	-60363188
	.long	1068397840
	.long	576847780
	.long	-1076241901
	.long	1909246966
	.long	-1076264260
	.long	126004033
	.long	-1080208657
	.long	-1139797734
	.long	-1082611233
	.long	-489414616
	.long	1069626216
	.long	207147991
	.long	1068669526
	.long	34942480
	.long	-1078908284
	.long	219506501
	.long	1069710853
	.long	-3584408
	.long	1070377464
	.long	-137493929
	.long	-1076207883
	.long	49730911
	.long	1070982004
	.long	53612187
	.long	-1076628271
	.long	-2090149614
	.long	1070287003
	.long	-81935607
	.long	1066841759
	.long	-1178324621
	.long	1069613454
	.long	169434742
	.long	1070684425
	.long	-2037285095
	.long	-1076542855
	.long	18724683
	.long	1068368203
	.long	-629932202
	.long	1069944412
	.long	-92150070
	.long	-1077446148
	.long	83079099
	.globl W1
	.align 3
	.type	W1, @object
	.size	W1, 384
W1:
	.long	-1076178601
	.long	-513252028
	.long	-1075726810
	.long	-842390834
	.long	1071192369
	.long	2136208156
	.long	-1076994575
	.long	-122991371
	.long	-1076311509
	.long	1557139362
	.long	-1077914037
	.long	2074701476
	.long	-1075652893
	.long	1901330482
	.long	-1076463173
	.long	32776442
	.long	-1078200256
	.long	-287467315
	.long	-1077885733
	.long	2084377178
	.long	-1077506185
	.long	-2118011239
	.long	1068388584
	.long	619508832
	.long	-1076178601
	.long	-513252028
	.long	-1075726810
	.long	-842390834
	.long	1071192369
	.long	2136208156
	.long	-1076994575
	.long	-122991371
	.long	-1076311509
	.long	1557139362
	.long	-1077914037
	.long	2074701476
	.long	-1075652893
	.long	1901330482
	.long	-1076463173
	.long	32776442
	.long	-1078200256
	.long	-287467315
	.long	-1077885733
	.long	2084377178
	.long	-1077506185
	.long	-2118011239
	.long	1068388584
	.long	619508832
	.long	1071305047
	.long	-513252028
	.long	-1075726810
	.long	-842390834
	.long	1071192369
	.long	2136208156
	.long	-1076994575
	.long	-122991371
	.long	-1076311509
	.long	1557139362
	.long	-1077914037
	.long	2074701476
	.long	-1075652893
	.long	1901330482
	.long	-1076463173
	.long	32776442
	.long	-1078200256
	.long	-287467315
	.long	-1077885733
	.long	2084377178
	.long	-1077506185
	.long	-2118011239
	.long	1068388584
	.long	619508832
	.long	1071305047
	.long	-513252028
	.long	-1075726810
	.long	-842390834
	.long	1071192369
	.long	2136208156
	.long	-1076994575
	.long	-122991371
	.long	-1076311509
	.long	1557139362
	.long	-1077914037
	.long	2074701476
	.long	-1075652893
	.long	1901330482
	.long	-1076463173
	.long	32776442
	.long	-1078200256
	.long	-287467315
	.long	-1077885733
	.long	2084377178
	.long	-1077506185
	.long	-2118011239
	.long	1068388584
	.long	619508832
	.comm	backprop11_M,4,4
	.comm	backprop11_Y,16,8
	.comm	backprop11_U,104,8
	.comm	q,4,4
	.comm	d,4,4
	.comm	x1,4,4
	.comm	x2,4,4
	.comm	x3,4,4
	.comm	x4,4,4
	.comm	L,4,4
	.comm	u1,4,4
	.comm	u2,4,4
	.comm	Lr,4,4
	.comm	id,4,4
	.comm	iq,4,4
	.comm	idL,4,4
	.comm	iqL,4,4
	.comm	b,4,4
	.comm	numOutputs,4,4
	.comm	numInputs,4,4
	.globl OverrunFlag
	.section	".sbss","aw",@nobits
	.align 2
OverrunFlag:
	.zero	4
	.size	OverrunFlag, 4
	.type	OverrunFlag, @object
	.globl firstTimeStep
	.section	.sdata,"aw",@progbits
	.align 2
	.type	firstTimeStep, @object
	.size	firstTimeStep, 4
firstTimeStep:
	.long	1
	.comm	dt,8,8
	.section	".sbss","aw",@nobits
	.align 2
backprop11_M_:
	.zero	4
	.size	backprop11_M_, 4
	.type	backprop11_M_, @object
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.long	1501560836
	.align 2
.LC3:
	.long	1065353216
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC4:
	.long	0
	.long	0
	.ident	"GCC: (GNU) 4.6.0"
	.gnu_attribute 4, 1
	.section	.note.GNU-stack,"",@progbits
