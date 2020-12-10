#lang at-exp racket

(provide js-pic)

(require racket/runtime-path)

(define-runtime-path
  get-pic.js "get-pic.js")

(define (js-pic input-url output-file)
  (system 
    @~a{ node @get-pic.js @input-url @output-file }))

(module+ 
  main

  (js-pic "http://localhost:8000/index.html" (build-path (current-directory) "test2.png" ))
  )
