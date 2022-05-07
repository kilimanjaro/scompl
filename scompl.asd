(asdf:defsystem #:scompl
  :depends-on (#:trivia)
  :in-order-to ((asdf:test-op (asdf:test-op #:scompl-tests)))
  :pathname "src/"
  :serial t
  :components ((:file "packages")
	       (:file "interpret")
	       (:module "langs"
		:serial t
		:components ((:file "lint")
			     (:file "lvar")
			     (:file "cvar")))
	       (:module "passes"
		:serial t
		:components ((:file "uniquify")
			     (:file "remove-complex-operands")
			     (:file "explicate-control")))
	       (:file "parser")
	       (:file "assembler")))
