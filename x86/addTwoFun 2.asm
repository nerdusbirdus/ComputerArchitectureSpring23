pushq %rbp
movq %rsp, %rbp
movl %edi, -4(%rbp)
movl %edi, -8(%rbp)
movl -4(%rbp), %edx 
movl -8(%rbp), %eax
addl %edx, %eax
popq %rbp
retq
