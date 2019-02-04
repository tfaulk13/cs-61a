(define-macro (def func bindings body)
    `(list define func bindings (lambda (,bindings) (,body)))
    (print func)
)
