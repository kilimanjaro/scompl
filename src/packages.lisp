(defpackage #:x86-64
  (:use :cl)
  (:shadow #:deref)
  (:export
   #:imm
   #:reg
   #:deref
   #:var
   #:label
   
   #:addq
   #:subq
   #:negq
   #:movq
   #:pushq
   #:popq
   #:retq
   #:callq
   #:jmp
   
   #:basic-block
   #:basic-block-info
   #:basic-block-globalp
   #:basic-block-label
   #:basic-block-instrs
   
   #:program
   #:program-info
   #:program-blocks
   
   #:print-assembly
   #:print-program
   
   #:assemble-and-run))

(defpackage #:scompl
  (:use :cl)
  (:export
   #:uniquify
   #:remove-complex-operands
   #:explicate-control

   #:interpret
   #:interpret-cvar
   
   #:parse-program
   #:print-program))
