	.text
	.file	"board_functions.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_ZStL8__ioinit(%rip), %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	leaq	_ZStL8__ioinit(%rip), %rsi
	leaq	__dso_handle(%rip), %rdx
	callq	__cxa_atexit@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN5Board9AddPiece_Eim          # -- Begin function _ZN5Board9AddPiece_Eim
	.p2align	4, 0x90
	.type	_ZN5Board9AddPiece_Eim,@function
_ZN5Board9AddPiece_Eim:                 # @_ZN5Board9AddPiece_Eim
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rcx
	andq	-24(%rbp), %rcx
	cmpq	$0, %rcx
	setne	%r8b
	xorb	$-1, %r8b
	testb	$1, %r8b
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jne	.LBB1_1
	jmp	.LBB1_2
.LBB1_1:
	jmp	.LBB1_3
.LBB1_2:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$9, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board9AddPiece_Eim(%rip), %rcx
	callq	__assert_fail@PLT
.LBB1_3:
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	-32(%rbp), %rdx                 # 8-byte Reload
	orq	(%rdx,%rcx,8), %rax
	movq	%rax, (%rdx,%rcx,8)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_ZN5Board9AddPiece_Eim, .Lfunc_end1-_ZN5Board9AddPiece_Eim
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5Board12RemovePiece_Eim      # -- Begin function _ZN5Board12RemovePiece_Eim
	.p2align	4, 0x90
	.type	_ZN5Board12RemovePiece_Eim,@function
_ZN5Board12RemovePiece_Eim:             # @_ZN5Board12RemovePiece_Eim
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rcx
	andq	-24(%rbp), %rcx
	cmpq	$0, %rcx
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	je	.LBB2_2
# %bb.1:
	jmp	.LBB2_3
.LBB2_2:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$18, %edx
	leaq	.L__PRETTY_FUNCTION__._ZN5Board12RemovePiece_Eim(%rip), %rcx
	callq	__assert_fail@PLT
.LBB2_3:
	movq	-24(%rbp), %rax
	xorq	$-1, %rax
	movslq	-12(%rbp), %rcx
	movq	-32(%rbp), %rdx                 # 8-byte Reload
	andq	(%rdx,%rcx,8), %rax
	movq	%rax, (%rdx,%rcx,8)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_ZN5Board12RemovePiece_Eim, .Lfunc_end2-_ZN5Board12RemovePiece_Eim
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5Board12SetEpSquare_Ei       # -- Begin function _ZN5Board12SetEpSquare_Ei
	.p2align	4, 0x90
	.type	_ZN5Board12SetEpSquare_Ei,@function
_ZN5Board12SetEpSquare_Ei:              # @_ZN5Board12SetEpSquare_Ei
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	movl	%ecx, 112(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_ZN5Board12SetEpSquare_Ei, .Lfunc_end3-_ZN5Board12SetEpSquare_Ei
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5Board18SetCastlingRights_Eiii # -- Begin function _ZN5Board18SetCastlingRights_Eiii
	.p2align	4, 0x90
	.type	_ZN5Board18SetCastlingRights_Eiii,@function
_ZN5Board18SetCastlingRights_Eiii:      # @_ZN5Board18SetCastlingRights_Eiii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	addq	$96, %rdi
	addq	$44, %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNK5board6castle6Rights3getEii@PLT
	cmpl	-20(%rbp), %eax
	jne	.LBB4_2
# %bb.1:
	jmp	.LBB4_3
.LBB4_2:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$96, %rax
	addq	$44, %rax
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	%rax, %rdi
	callq	_ZN5board6castle6Rights3SetEiii@PLT
.LBB4_3:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_ZN5Board18SetCastlingRights_Eiii, .Lfunc_end4-_ZN5Board18SetCastlingRights_Eiii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5Board8SetTurn_Ei            # -- Begin function _ZN5Board8SetTurn_Ei
	.p2align	4, 0x90
	.type	_ZN5Board8SetTurn_Ei,@function
_ZN5Board8SetTurn_Ei:                   # @_ZN5Board8SetTurn_Ei
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	movl	%ecx, 100(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_ZN5Board8SetTurn_Ei, .Lfunc_end5-_ZN5Board8SetTurn_Ei
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5Board12LoadPositionEPiiiN5board6castle6RightsEii # -- Begin function _ZN5Board12LoadPositionEPiiiN5board6castle6RightsEii
	.p2align	4, 0x90
	.type	_ZN5Board12LoadPositionEPiiiN5board6castle6RightsEii,@function
_ZN5Board12LoadPositionEPiiiN5board6castle6RightsEii: # @_ZN5Board12LoadPositionEPiiiN5board6castle6RightsEii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1200, %rsp                     # imm = 0x4B0
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%fs:40, %r11
	movq	%r11, -8(%rbp)
	movq	%r8, -24(%rbp)
	movq	%r9, -16(%rbp)
	movq	%rdi, -1120(%rbp)
	movq	%rsi, -1128(%rbp)
	movl	%edx, -1132(%rbp)
	movl	%ecx, -1136(%rbp)
	movq	-1120(%rbp), %rsi
	movq	_ZL42CLASSICAL_KINGSIDE_ROOK_STARTING_LOCATIONS(%rip), %rdi
	movq	%rdi, 1256(%rsi)
	movq	_ZL42CLASSICAL_KINGSIDE_ROOK_STARTING_LOCATIONS+8(%rip), %rdi
	movq	%rdi, 1264(%rsi)
	movq	_ZL43CLASSICAL_QUEENSIDE_ROOK_STARTING_LOCATIONS(%rip), %rdi
	movq	%rdi, 1240(%rsi)
	movq	_ZL43CLASSICAL_QUEENSIDE_ROOK_STARTING_LOCATIONS+8(%rip), %rdi
	movq	%rdi, 1248(%rsi)
	movq	_ZL33CLASSICAL_KING_STARTING_LOCATIONS(%rip), %rdi
	movq	%rdi, 1224(%rsi)
	movq	_ZL33CLASSICAL_KING_STARTING_LOCATIONS+8(%rip), %rdi
	movq	%rdi, 1232(%rsi)
	leaq	-1112(%rbp), %rdi
	movl	%eax, -1152(%rbp)               # 4-byte Spill
	movl	%r10d, -1156(%rbp)              # 4-byte Spill
	movq	%rsi, -1168(%rbp)               # 8-byte Spill
	callq	_ZN5board5StateC2Ev
	movq	-1168(%rbp), %rsi               # 8-byte Reload
	addq	$96, %rsi
	leaq	-1112(%rbp), %rdi
	movq	%rdi, -1176(%rbp)               # 8-byte Spill
	movq	%rsi, %rdi
	movq	-1176(%rbp), %rsi               # 8-byte Reload
	movl	$1088, %edx                     # imm = 0x440
	callq	memcpy@PLT
	movq	-1168(%rbp), %rdx               # 8-byte Reload
	movb	$0, 1220(%rdx)
	addq	$1184, %rdx                     # imm = 0x4A0
	movq	%rdx, %rdi
	callq	_ZN5board10StateStack5ClearEv
	movq	-1168(%rbp), %rdx               # 8-byte Reload
	movl	$5, 1216(%rdx)
	movl	$0, -1140(%rbp)
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$12, -1140(%rbp)
	jge	.LBB6_4
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movslq	-1140(%rbp), %rax
	movq	-1168(%rbp), %rcx               # 8-byte Reload
	movq	$0, (%rcx,%rax,8)
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	movl	-1140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1140(%rbp)
	jmp	.LBB6_1
.LBB6_4:
	movl	$0, -1144(%rbp)
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$64, -1144(%rbp)
	jge	.LBB6_10
# %bb.6:                                #   in Loop: Header=BB6_5 Depth=1
	movq	-1128(%rbp), %rax
	movslq	-1144(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movl	%edx, -1148(%rbp)
	cmpl	$-1, -1148(%rbp)
	je	.LBB6_8
# %bb.7:                                #   in Loop: Header=BB6_5 Depth=1
	movl	-1148(%rbp), %esi
	movl	-1144(%rbp), %edi
	movl	%esi, -1180(%rbp)               # 4-byte Spill
	callq	_Z13u64FromSquarei
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	movl	-1180(%rbp), %esi               # 4-byte Reload
	movq	%rax, %rdx
	callq	_ZN5Board9AddPiece_Eim
.LBB6_8:                                #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_9
.LBB6_9:                                #   in Loop: Header=BB6_5 Depth=1
	movl	-1144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1144(%rbp)
	jmp	.LBB6_5
.LBB6_10:
	movl	-1132(%rbp), %esi
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	callq	_ZN5Board8SetTurn_Ei
	movl	-1136(%rbp), %esi
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	callq	_ZN5Board12SetEpSquare_Ei
	xorl	%eax, %eax
	leaq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_ZNK5board6castle6Rights3getEii@PLT
	xorl	%ecx, %ecx
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	%eax, %ecx
	callq	_ZN5Board18SetCastlingRights_Eiii
	xorl	%esi, %esi
	leaq	-24(%rbp), %rdi
	movl	$2, %edx
	callq	_ZNK5board6castle6Rights3getEii@PLT
	xorl	%esi, %esi
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	movl	$2, %edx
	movl	%eax, %ecx
	callq	_ZN5Board18SetCastlingRights_Eiii
	xorl	%edx, %edx
	leaq	-24(%rbp), %rdi
	movl	$1, %esi
	callq	_ZNK5board6castle6Rights3getEii@PLT
	xorl	%edx, %edx
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	movl	$1, %esi
	movl	%eax, %ecx
	callq	_ZN5Board18SetCastlingRights_Eiii
	leaq	-24(%rbp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	_ZNK5board6castle6Rights3getEii@PLT
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	movl	$1, %esi
	movl	$2, %edx
	movl	%eax, %ecx
	callq	_ZN5Board18SetCastlingRights_Eiii
	movl	24(%rbp), %eax
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	movl	%eax, 108(%rdi)
	movl	16(%rbp), %eax
	movl	%eax, 104(%rdi)
	callq	_ZN5Board20GeneratePseudoLegal_Ev@PLT
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	addq	$96, %rdi
	addq	$576, %rdi                      # imm = 0x240
	movl	-1132(%rbp), %eax
	movq	%rdi, -1192(%rbp)               # 8-byte Spill
	movl	%eax, %edi
	callq	_ZN5piece8get_kingEi
	movslq	%eax, %r8
	movq	-1168(%rbp), %r9                # 8-byte Reload
	movq	(%r9,%r8,8), %rdi
	callq	_Z11u64ToSquarem
	movslq	%eax, %rsi
	movq	-1192(%rbp), %rdi               # 8-byte Reload
	callq	_ZNSt5arrayImLm64EEixEm
	movq	(%rax), %rax
	movl	-1132(%rbp), %edi
	movq	%rax, -1200(%rbp)               # 8-byte Spill
	callq	_Z13oppositeColori
	movq	-1168(%rbp), %rdi               # 8-byte Reload
	movl	%eax, %esi
	callq	_ZNK5Board9occupancyEi@PLT
	movq	-1200(%rbp), %rdi               # 8-byte Reload
	andq	%rax, %rdi
	cmpq	$0, %rdi
	je	.LBB6_12
# %bb.11:
	movq	-1168(%rbp), %rax               # 8-byte Reload
	movb	$1, 136(%rax)
.LBB6_12:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB6_14
# %bb.13:
	addq	$1200, %rsp                     # imm = 0x4B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_14:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end6:
	.size	_ZN5Board12LoadPositionEPiiiN5board6castle6RightsEii, .Lfunc_end6-_ZN5Board12LoadPositionEPiiiN5board6castle6RightsEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5board5StateC2Ev,"axG",@progbits,_ZN5board5StateC2Ev,comdat
	.weak	_ZN5board5StateC2Ev             # -- Begin function _ZN5board5StateC2Ev
	.p2align	4, 0x90
	.type	_ZN5board5StateC2Ev,@function
_ZN5board5StateC2Ev:                    # @_ZN5board5StateC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$42, %rcx
	movq	%rcx, %rdi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZN5CMoveC2Ev
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$44, %rax
	movq	%rax, %rdi
	callq	_ZN5board6castle6RightsC1Ev@PLT
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	$0, 8(%rax)
	movl	$0, (%rax)
	movl	$0, 12(%rax)
	movl	$-1, 16(%rax)
	movb	$0, 40(%rax)
	movb	$0, 41(%rax)
	movl	$0, 4(%rax)
	movl	$-1, 20(%rax)
	movl	$-1, 24(%rax)
	callq	_ZN5CMove8NullMoveEv
	movw	%ax, -16(%rbp)
	movw	-16(%rbp), %ax
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movw	%ax, 42(%rcx)
	movq	$0, 32(%rcx)
	movq	%fs:40, %rdx
	movq	-8(%rbp), %rsi
	cmpq	%rsi, %rdx
	jne	.LBB7_2
# %bb.1:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB7_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end7:
	.size	_ZN5board5StateC2Ev, .Lfunc_end7-_ZN5board5StateC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5board10StateStack5ClearEv,"axG",@progbits,_ZN5board10StateStack5ClearEv,comdat
	.weak	_ZN5board10StateStack5ClearEv   # -- Begin function _ZN5board10StateStack5ClearEv
	.p2align	4, 0x90
	.type	_ZN5board10StateStack5ClearEv,@function
_ZN5board10StateStack5ClearEv:          # @_ZN5board10StateStack5ClearEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	addq	$8, %rax
	movq	%rax, %rdi
	callq	_ZNSt6vectorIN5board5StateESaIS1_EE5clearEv
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	_ZN5board10StateStack5ClearEv, .Lfunc_end8-_ZN5board10StateStack5ClearEv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z13u64FromSquarei,"axG",@progbits,_Z13u64FromSquarei,comdat
	.weak	_Z13u64FromSquarei              # -- Begin function _Z13u64FromSquarei
	.p2align	4, 0x90
	.type	_Z13u64FromSquarei,@function
_Z13u64FromSquarei:                     # @_Z13u64FromSquarei
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	_Z13isValidSquarei
	testb	$1, %al
	jne	.LBB9_1
	jmp	.LBB9_2
.LBB9_1:
	jmp	.LBB9_3
.LBB9_2:
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	$121, %edx
	leaq	.L__PRETTY_FUNCTION__._Z13u64FromSquarei(%rip), %rcx
	callq	__assert_fail@PLT
.LBB9_3:
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
                                        # kill: def $cl killed $rcx
	movl	$1, %edx
	shlq	%cl, %rdx
	movq	%rdx, %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	_Z13u64FromSquarei, .Lfunc_end9-_Z13u64FromSquarei
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5arrayImLm64EEixEm,"axG",@progbits,_ZNSt5arrayImLm64EEixEm,comdat
	.weak	_ZNSt5arrayImLm64EEixEm         # -- Begin function _ZNSt5arrayImLm64EEixEm
	.p2align	4, 0x90
	.type	_ZNSt5arrayImLm64EEixEm,@function
_ZNSt5arrayImLm64EEixEm:                # @_ZNSt5arrayImLm64EEixEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	_ZNSt5arrayImLm64EEixEm, .Lfunc_end10-_ZNSt5arrayImLm64EEixEm
	.cfi_endproc
                                        # -- End function
	.section	.text._Z11u64ToSquarem,"axG",@progbits,_Z11u64ToSquarem,comdat
	.weak	_Z11u64ToSquarem                # -- Begin function _Z11u64ToSquarem
	.p2align	4, 0x90
	.type	_Z11u64ToSquarem,@function
_Z11u64ToSquarem:                       # @_Z11u64ToSquarem
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB11_2
# %bb.1:
	jmp	.LBB11_3
.LBB11_2:
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	$130, %edx
	leaq	.L__PRETTY_FUNCTION__._Z11u64ToSquarem(%rip), %rcx
	callq	__assert_fail@PLT
.LBB11_3:
	movq	-8(%rbp), %rdi
	callq	_Z14bitscanForwardm
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	_Z11u64ToSquarem, .Lfunc_end11-_Z11u64ToSquarem
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5piece8get_kingEi,"axG",@progbits,_ZN5piece8get_kingEi,comdat
	.weak	_ZN5piece8get_kingEi            # -- Begin function _ZN5piece8get_kingEi
	.p2align	4, 0x90
	.type	_ZN5piece8get_kingEi,@function
_ZN5piece8get_kingEi:                   # @_ZN5piece8get_kingEi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$10, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	_ZN5piece8get_kingEi, .Lfunc_end12-_ZN5piece8get_kingEi
	.cfi_endproc
                                        # -- End function
	.section	.text._Z13oppositeColori,"axG",@progbits,_Z13oppositeColori,comdat
	.weak	_Z13oppositeColori              # -- Begin function _Z13oppositeColori
	.p2align	4, 0x90
	.type	_Z13oppositeColori,@function
_Z13oppositeColori:                     # @_Z13oppositeColori
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	xorl	$1, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	_Z13oppositeColori, .Lfunc_end13-_Z13oppositeColori
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN5Board5ResetEv               # -- Begin function _ZN5Board5ResetEv
	.p2align	4, 0x90
	.type	_ZN5Board5ResetEv,@function
_ZN5Board5ResetEv:                      # @_ZN5Board5ResetEv
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rax
	movq	%rdi, -80(%rbp)                 # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	callq	_ZNSaIcEC1Ev@PLT
.Ltmp0:
	leaq	.L.str.3(%rip), %rsi
	leaq	-40(%rbp), %rdi
	movq	-88(%rbp), %rdx                 # 8-byte Reload
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.Ltmp1:
	jmp	.LBB14_1
.LBB14_1:
.Ltmp3:
	leaq	-40(%rbp), %rsi
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.Ltmp4:
	jmp	.LBB14_2
.LBB14_2:
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB14_8
# %bb.3:
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB14_4:
	.cfi_def_cfa %rbp, 16
.Ltmp2:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -64(%rbp)
	movl	%edx, -68(%rbp)
	jmp	.LBB14_6
.LBB14_5:
.Ltmp5:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -64(%rbp)
	movl	%edx, -68(%rbp)
	leaq	-40(%rbp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.LBB14_6:
	leaq	-48(%rbp), %rdi
	callq	_ZNSaIcED1Ev@PLT
# %bb.7:
	movq	-64(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.LBB14_8:
	callq	__stack_chk_fail@PLT
.Lfunc_end14:
	.size	_ZN5Board5ResetEv, .Lfunc_end14-_ZN5Board5ResetEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table14:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end14-.Ltmp4            #   Call between .Ltmp4 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.text
	.globl	_ZN5BoardC2Ev                   # -- Begin function _ZN5BoardC2Ev
	.p2align	4, 0x90
	.type	_ZN5BoardC2Ev,@function
_ZN5BoardC2Ev:                          # @_ZN5BoardC2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZN5board5StateC2Ev
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$1184, %rax                     # imm = 0x4A0
	movq	%rax, %rdi
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	callq	_ZN5board10StateStackC2Ev
.Ltmp6:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN5Board5ResetEv
.Ltmp7:
	jmp	.LBB15_1
.LBB15_1:
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB15_2:
	.cfi_def_cfa %rbp, 16
.Ltmp8:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN5board10StateStackD2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end15:
	.size	_ZN5BoardC2Ev, .Lfunc_end15-_ZN5BoardC2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table15:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp6-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Lfunc_end15-.Ltmp7            #   Call between .Ltmp7 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2
                                        # -- End function
	.section	.text._ZN5board10StateStackC2Ev,"axG",@progbits,_ZN5board10StateStackC2Ev,comdat
	.weak	_ZN5board10StateStackC2Ev       # -- Begin function _ZN5board10StateStackC2Ev
	.p2align	4, 0x90
	.type	_ZN5board10StateStackC2Ev,@function
_ZN5board10StateStackC2Ev:              # @_ZN5board10StateStackC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, %rdi
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	callq	_ZNSt6vectorIN5board5StateESaIS1_EEC2Ev
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	$0, (%rax)
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	_ZN5board10StateStackC2Ev, .Lfunc_end16-_ZN5board10StateStackC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5board10StateStackD2Ev,"axG",@progbits,_ZN5board10StateStackD2Ev,comdat
	.weak	_ZN5board10StateStackD2Ev       # -- Begin function _ZN5board10StateStackD2Ev
	.p2align	4, 0x90
	.type	_ZN5board10StateStackD2Ev,@function
_ZN5board10StateStackD2Ev:              # @_ZN5board10StateStackD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	_ZN5board10StateStackD2Ev, .Lfunc_end17-_ZN5board10StateStackD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5CMoveC2Ev,"axG",@progbits,_ZN5CMoveC2Ev,comdat
	.weak	_ZN5CMoveC2Ev                   # -- Begin function _ZN5CMoveC2Ev
	.p2align	4, 0x90
	.type	_ZN5CMoveC2Ev,@function
_ZN5CMoveC2Ev:                          # @_ZN5CMoveC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movw	$0, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	_ZN5CMoveC2Ev, .Lfunc_end18-_ZN5CMoveC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5CMove8NullMoveEv,"axG",@progbits,_ZN5CMove8NullMoveEv,comdat
	.weak	_ZN5CMove8NullMoveEv            # -- Begin function _ZN5CMove8NullMoveEv
	.p2align	4, 0x90
	.type	_ZN5CMove8NullMoveEv,@function
_ZN5CMove8NullMoveEv:                   # @_ZN5CMove8NullMoveEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdi
	callq	_ZN5CMoveC2Ev
	movw	-16(%rbp), %ax
	movq	%fs:40, %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movw	%ax, -18(%rbp)                  # 2-byte Spill
	jne	.LBB19_2
# %bb.1:
	movw	-18(%rbp), %ax                  # 2-byte Reload
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB19_2:
	.cfi_def_cfa %rbp, 16
	callq	__stack_chk_fail@PLT
.Lfunc_end19:
	.size	_ZN5CMove8NullMoveEv, .Lfunc_end19-_ZN5CMove8NullMoveEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EE5clearEv,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EE5clearEv,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EE5clearEv # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EE5clearEv
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EE5clearEv,@function
_ZNSt6vectorIN5board5StateESaIS1_EE5clearEv: # @_ZNSt6vectorIN5board5StateESaIS1_EE5clearEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rax, %rdi
	callq	_ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end20:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EE5clearEv, .Lfunc_end20-_ZNSt6vectorIN5board5StateESaIS1_EE5clearEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_ # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_,@function
_ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_: # @_ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	%rcx, %rax
	cqto
	movl	$1088, %ecx                     # imm = 0x440
	idivq	%rcx
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB21_3
# %bb.1:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rsi
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
.Ltmp9:
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
.Ltmp10:
	jmp	.LBB21_2
.LBB21_2:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, 8(%rcx)
.LBB21_3:
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB21_4:
	.cfi_def_cfa %rbp, 16
.Ltmp11:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, %rdi
	movl	%edx, -52(%rbp)                 # 4-byte Spill
	callq	__clang_call_terminate
.Lfunc_end21:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_, .Lfunc_end21-_ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table21:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp9-.Lfunc_begin2           # >> Call Site 1 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin2          #     jumps to .Ltmp11
	.byte	1                               #   On action: 1
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.section	.text._ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E # -- Begin function _ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E,@function
_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E: # @_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt8_DestroyIPN5board5StateEEvT_S3_
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end22:
	.size	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E, .Lfunc_end22-_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv # -- Begin function _ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv, .Lfunc_end23-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch@PLT
	movq	%rax, (%rsp)                    # 8-byte Spill
	callq	_ZSt9terminatev@PLT
.Lfunc_end24:
	.size	__clang_call_terminate, .Lfunc_end24-__clang_call_terminate
                                        # -- End function
	.section	.text._ZSt8_DestroyIPN5board5StateEEvT_S3_,"axG",@progbits,_ZSt8_DestroyIPN5board5StateEEvT_S3_,comdat
	.weak	_ZSt8_DestroyIPN5board5StateEEvT_S3_ # -- Begin function _ZSt8_DestroyIPN5board5StateEEvT_S3_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPN5board5StateEEvT_S3_,@function
_ZSt8_DestroyIPN5board5StateEEvT_S3_:   # @_ZSt8_DestroyIPN5board5StateEEvT_S3_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	_ZSt8_DestroyIPN5board5StateEEvT_S3_, .Lfunc_end25-_ZSt8_DestroyIPN5board5StateEEvT_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_ # -- Begin function _ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_
	.p2align	4, 0x90
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_,@function
_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end26:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_, .Lfunc_end26-_ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z13isValidSquarei,"axG",@progbits,_Z13isValidSquarei,comdat
	.weak	_Z13isValidSquarei              # -- Begin function _Z13isValidSquarei
	.p2align	4, 0x90
	.type	_Z13isValidSquarei,@function
_Z13isValidSquarei:                     # @_Z13isValidSquarei
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	movb	%al, -5(%rbp)                   # 1-byte Spill
	jl	.LBB27_2
# %bb.1:
	cmpl	$64, -4(%rbp)
	setl	%al
	movb	%al, -5(%rbp)                   # 1-byte Spill
.LBB27_2:
	movb	-5(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end27:
	.size	_Z13isValidSquarei, .Lfunc_end27-_Z13isValidSquarei
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14bitscanForwardm,"axG",@progbits,_Z14bitscanForwardm,comdat
	.weak	_Z14bitscanForwardm             # -- Begin function _Z14bitscanForwardm
	.p2align	4, 0x90
	.type	_Z14bitscanForwardm,@function
_Z14bitscanForwardm:                    # @_Z14bitscanForwardm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdx
	bsfq	%rdx, %rsi
	addq	$1, %rsi
	cmpq	$0, %rdx
	cmoveq	%rcx, %rsi
                                        # kill: def $esi killed $esi killed $rsi
	subl	$1, %esi
	movl	%esi, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end28:
	.size	_Z14bitscanForwardm, .Lfunc_end28-_Z14bitscanForwardm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EEC2Ev,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EEC2Ev,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EEC2Ev # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EEC2Ev,@function
_ZNSt6vectorIN5board5StateESaIS1_EEC2Ev: # @_ZNSt6vectorIN5board5StateESaIS1_EEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end29:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EEC2Ev, .Lfunc_end29-_ZNSt6vectorIN5board5StateESaIS1_EEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev # -- Begin function _ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev,@function
_ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev: # @_ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end30:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev, .Lfunc_end30-_ZNSt12_Vector_baseIN5board5StateESaIS1_EEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev # -- Begin function _ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev,@function
_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev: # @_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	callq	_ZNSaIN5board5StateEEC2Ev
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end31:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev, .Lfunc_end31-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIN5board5StateEEC2Ev,"axG",@progbits,_ZNSaIN5board5StateEEC2Ev,comdat
	.weak	_ZNSaIN5board5StateEEC2Ev       # -- Begin function _ZNSaIN5board5StateEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSaIN5board5StateEEC2Ev,@function
_ZNSaIN5board5StateEEC2Ev:              # @_ZNSaIN5board5StateEEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end32:
	.size	_ZNSaIN5board5StateEEC2Ev, .Lfunc_end32-_ZNSaIN5board5StateEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev,comdat
	.weak	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev # -- Begin function _ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev,@function
_ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev: # @_ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end33:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev, .Lfunc_end33-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE17_Vector_impl_dataC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev: # @_ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end34:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev, .Lfunc_end34-_ZN9__gnu_cxx13new_allocatorIN5board5StateEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN5board5StateESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIN5board5StateESaIS1_EED2Ev,comdat
	.weak	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev # -- Begin function _ZNSt6vectorIN5board5StateESaIS1_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev,@function
_ZNSt6vectorIN5board5StateESaIS1_EED2Ev: # @_ZNSt6vectorIN5board5StateESaIS1_EED2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	%rsi, -48(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
.Ltmp12:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
.Ltmp13:
	jmp	.LBB35_1
.LBB35_1:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB35_2:
	.cfi_def_cfa %rbp, 16
.Ltmp14:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end35:
	.size	_ZNSt6vectorIN5board5StateESaIS1_EED2Ev, .Lfunc_end35-_ZNSt6vectorIN5board5StateESaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table35:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp12-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin3          #     jumps to .Ltmp14
	.byte	1                               #   On action: 1
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev # -- Begin function _ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev,@function
_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev: # @_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	16(%rax), %rdx
	subq	%rcx, %rdx
	sarq	$6, %rdx
	movabsq	$-1085102592571150095, %rsi     # imm = 0xF0F0F0F0F0F0F0F1
	imulq	%rsi, %rdx
.Ltmp15:
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
.Ltmp16:
	jmp	.LBB36_1
.LBB36_1:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB36_2:
	.cfi_def_cfa %rbp, 16
.Ltmp17:
                                        # kill: def $edx killed $edx killed $rdx
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end36:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev, .Lfunc_end36-_ZNSt12_Vector_baseIN5board5StateESaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table36:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp15-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin4          #     jumps to .Ltmp17
	.byte	1                               #   On action: 1
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m,"axG",@progbits,_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m,comdat
	.weak	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m # -- Begin function _ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m,@function
_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m: # @_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, -16(%rbp)
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	je	.LBB37_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
.LBB37_2:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end37:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m, .Lfunc_end37-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev # -- Begin function _ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ZNSaIN5board5StateEED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end38:
	.size	_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev, .Lfunc_end38-_ZNSt12_Vector_baseIN5board5StateESaIS1_EE12_Vector_implD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m # -- Begin function _ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m,@function
_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m: # @_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end39:
	.size	_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m, .Lfunc_end39-_ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m # -- Begin function _ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m,@function
_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m: # @_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	_ZdlPv@PLT
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end40:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m, .Lfunc_end40-_ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIN5board5StateEED2Ev,"axG",@progbits,_ZNSaIN5board5StateEED2Ev,comdat
	.weak	_ZNSaIN5board5StateEED2Ev       # -- Begin function _ZNSaIN5board5StateEED2Ev
	.p2align	4, 0x90
	.type	_ZNSaIN5board5StateEED2Ev,@function
_ZNSaIN5board5StateEED2Ev:              # @_ZNSaIN5board5StateEED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end41:
	.size	_ZNSaIN5board5StateEED2Ev, .Lfunc_end41-_ZNSaIN5board5StateEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev,@function
_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev: # @_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end42:
	.size	_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev, .Lfunc_end42-_ZN9__gnu_cxx13new_allocatorIN5board5StateEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm,"axG",@progbits,_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm,comdat
	.weak	_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm # -- Begin function _ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.p2align	4, 0x90
	.type	_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm,@function
_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm: # @_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end43:
	.size	_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm, .Lfunc_end43-_ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_board_functions.cpp
	.type	_GLOBAL__sub_I_board_functions.cpp,@function
_GLOBAL__sub_I_board_functions.cpp:     # @_GLOBAL__sub_I_board_functions.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end44:
	.size	_GLOBAL__sub_I_board_functions.cpp, .Lfunc_end44-_GLOBAL__sub_I_board_functions.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"!(bitboard_[piece] & location)"
	.size	.L.str, 31

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"src/chess/board_functions.cpp"
	.size	.L.str.1, 30

	.type	.L__PRETTY_FUNCTION__._ZN5Board9AddPiece_Eim,@object # @__PRETTY_FUNCTION__._ZN5Board9AddPiece_Eim
.L__PRETTY_FUNCTION__._ZN5Board9AddPiece_Eim:
	.asciz	"void Board::AddPiece_(int, uint64_t)"
	.size	.L__PRETTY_FUNCTION__._ZN5Board9AddPiece_Eim, 37

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"bitboard_[piece] & location"
	.size	.L.str.2, 28

	.type	.L__PRETTY_FUNCTION__._ZN5Board12RemovePiece_Eim,@object # @__PRETTY_FUNCTION__._ZN5Board12RemovePiece_Eim
.L__PRETTY_FUNCTION__._ZN5Board12RemovePiece_Eim:
	.asciz	"void Board::RemovePiece_(int, uint64_t)"
	.size	.L__PRETTY_FUNCTION__._ZN5Board12RemovePiece_Eim, 40

	.type	_ZL42CLASSICAL_KINGSIDE_ROOK_STARTING_LOCATIONS,@object # @_ZL42CLASSICAL_KINGSIDE_ROOK_STARTING_LOCATIONS
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL42CLASSICAL_KINGSIDE_ROOK_STARTING_LOCATIONS:
	.quad	128                             # 0x80
	.quad	-9223372036854775808            # 0x8000000000000000
	.size	_ZL42CLASSICAL_KINGSIDE_ROOK_STARTING_LOCATIONS, 16

	.type	_ZL43CLASSICAL_QUEENSIDE_ROOK_STARTING_LOCATIONS,@object # @_ZL43CLASSICAL_QUEENSIDE_ROOK_STARTING_LOCATIONS
	.p2align	4
_ZL43CLASSICAL_QUEENSIDE_ROOK_STARTING_LOCATIONS:
	.quad	1                               # 0x1
	.quad	72057594037927936               # 0x100000000000000
	.size	_ZL43CLASSICAL_QUEENSIDE_ROOK_STARTING_LOCATIONS, 16

	.type	_ZL33CLASSICAL_KING_STARTING_LOCATIONS,@object # @_ZL33CLASSICAL_KING_STARTING_LOCATIONS
	.p2align	4
_ZL33CLASSICAL_KING_STARTING_LOCATIONS:
	.quad	16                              # 0x10
	.quad	1152921504606846976             # 0x1000000000000000
	.size	_ZL33CLASSICAL_KING_STARTING_LOCATIONS, 16

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1"
	.size	.L.str.3, 57

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"isValidSquare(s)"
	.size	.L.str.4, 17

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"include/misc/bits.hpp"
	.size	.L.str.5, 22

	.type	.L__PRETTY_FUNCTION__._Z13u64FromSquarei,@object # @__PRETTY_FUNCTION__._Z13u64FromSquarei
.L__PRETTY_FUNCTION__._Z13u64FromSquarei:
	.asciz	"uint64_t u64FromSquare(int)"
	.size	.L__PRETTY_FUNCTION__._Z13u64FromSquarei, 28

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"x != 0"
	.size	.L.str.6, 7

	.type	.L__PRETTY_FUNCTION__._Z11u64ToSquarem,@object # @__PRETTY_FUNCTION__._Z11u64ToSquarem
.L__PRETTY_FUNCTION__._Z11u64ToSquarem:
	.asciz	"int u64ToSquare(uint64_t)"
	.size	.L__PRETTY_FUNCTION__._Z11u64ToSquarem, 26

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_board_functions.cpp
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.globl	_ZN5BoardC1Ev
	.type	_ZN5BoardC1Ev,@function
.set _ZN5BoardC1Ev, _ZN5BoardC2Ev
	.ident	"clang version 11.0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _ZN5Board9AddPiece_Eim
	.addrsig_sym __assert_fail
	.addrsig_sym _ZN5Board12SetEpSquare_Ei
	.addrsig_sym _ZN5Board18SetCastlingRights_Eiii
	.addrsig_sym _ZNK5board6castle6Rights3getEii
	.addrsig_sym _ZN5board6castle6Rights3SetEiii
	.addrsig_sym _ZN5Board8SetTurn_Ei
	.addrsig_sym _ZN5board10StateStack5ClearEv
	.addrsig_sym _Z13u64FromSquarei
	.addrsig_sym _ZN5Board20GeneratePseudoLegal_Ev
	.addrsig_sym _ZNSt5arrayImLm64EEixEm
	.addrsig_sym _Z11u64ToSquarem
	.addrsig_sym _ZN5piece8get_kingEi
	.addrsig_sym _ZNK5Board9occupancyEi
	.addrsig_sym _Z13oppositeColori
	.addrsig_sym _ZN5Board5ResetEv
	.addrsig_sym _ZN5Board12LoadPositionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZN5CMove8NullMoveEv
	.addrsig_sym _ZNSt6vectorIN5board5StateESaIS1_EE5clearEv
	.addrsig_sym _ZNSt6vectorIN5board5StateESaIS1_EE15_M_erase_at_endEPS1_
	.addrsig_sym _ZSt8_DestroyIPN5board5StateES1_EvT_S3_RSaIT0_E
	.addrsig_sym _ZNSt12_Vector_baseIN5board5StateESaIS1_EE19_M_get_Tp_allocatorEv
	.addrsig_sym __clang_call_terminate
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _ZSt8_DestroyIPN5board5StateEEvT_S3_
	.addrsig_sym _ZNSt12_Destroy_auxILb1EE9__destroyIPN5board5StateEEEvT_S5_
	.addrsig_sym _Z13isValidSquarei
	.addrsig_sym _Z14bitscanForwardm
	.addrsig_sym _ZNSt12_Vector_baseIN5board5StateESaIS1_EE13_M_deallocateEPS1_m
	.addrsig_sym _ZNSt16allocator_traitsISaIN5board5StateEEE10deallocateERS2_PS1_m
	.addrsig_sym _ZN9__gnu_cxx13new_allocatorIN5board5StateEE10deallocateEPS2_m
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZNSt14__array_traitsImLm64EE6_S_refERA64_Kmm
	.addrsig_sym _GLOBAL__sub_I_board_functions.cpp
	.addrsig_sym __stack_chk_fail
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZL42CLASSICAL_KINGSIDE_ROOK_STARTING_LOCATIONS
	.addrsig_sym _ZL43CLASSICAL_QUEENSIDE_ROOK_STARTING_LOCATIONS
	.addrsig_sym _ZL33CLASSICAL_KING_STARTING_LOCATIONS
