;;! target = "x86_64"
;;! test = "winch"

(module
    (func (result i32)
	(i32.const 10)
	(i32.const 20)
	(i32.sub)
    )
)
;; wasm[0]::function[0]:
;;       pushq   %rbp
;;       movq    %rsp, %rbp
;;       movq    8(%rdi), %r11
;;       movq    0x10(%r11), %r11
;;       addq    $0x10, %r11
;;       cmpq    %rsp, %r11
;;       ja      0x42
;;   1c: movq    %rdi, %r14
;;       subq    $0x10, %rsp
;;       movq    %rdi, 8(%rsp)
;;       movq    %rsi, (%rsp)
;;       movl    $0xa, %eax
;;       subl    $0x14, %eax
;;       addq    $0x10, %rsp
;;       popq    %rbp
;;       retq
;;   42: ud2
