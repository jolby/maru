# Maru's compiler

## Overview

Maru, the language, is implemented as an evaluator (aka an interpreter, a
VM). But Maru is also self-hosting, which means that the
implementation language of this evaluator is also Maru... although only
a subset of the full language.

The compiler can compile a list of named definitions (an *environment*) to the
target language; i.e. to the language of the foundational platform
that was chosen to build the Maru VM on top of (e.g. x86 machine code,
LLVM, libc, the Linux kernel, etc).

This subset of Maru is basically a list of the following toplevel
definitions (see `compile-definition`):

 - `<long>`s

 - `<expr>`s; i.e. toplevel first-class functions (without variable
   capturing, the compiler does not support closures yet)

 - `<selector>`s; i.e. functions that dispatch on the type of their
   first parameter (they are used for streams, but i'm considering to
   maybe remove/replace them once full closures are supported by the
   compiler.)

Lambda's have a code body in `encode`ed form (see below), which can in
turn contain the following elements (see `compile`):

 - `<long>` literals, compiled to word sized integers

 - `()`, i.e. nil, which is compiled to the integer zero

 - `<variable>` objects; i.e. resolved variable references

 - `<pair>`s; i.e. cons cells that can form a tree of lisp call forms

 - `<string>` literals; they are compiled into full <string> objects,
   but in the read-only segment instead of the heap

 - `<expr>`s; i.e. first class functions

This seems rather limited at first sight, but keep in mind that the
meta level that is assembling this environment can use the full Maru
language (as brought to life by the Maru evaluator that is hosting the
bootstrap process).

The two compiler backends currently emit text files. Therefore, for now, a
C toolchain is required for a full cycle of bootstrap even on x86. With the addition
of an IA-32 assembler that directly outputs machine code this requirement
can be eliminated; i.e. there's no inherent external dependency on the C
infrastructure in the codebase.

## Compile-time phases: `expand` and `encode`

Maru's compile-time has two phases: `expand` and `encode`. The former
is a usual lisp macroexpand, from sexp forms to sexp forms, i.e. no
surprises there.

The `encode` phase makes sure that all variable references in the
expanded code get resolved to either full <variable> objects, or to
some primitives (i.e. a `let` symbol will be resolved to the `<fixed>`
that is stored in the global variable called `let`, which in turn
contains the code that implements the semantics of `let` at evaluation
time).

This results in a code representation that is rather fast to evaluate,
because each variable is preassigned a fixed index at compile time,
that is then used at runtime to index an execution context to get hold
of the value.

When the code is being evaluated, then this context is a `<context>`
object that holds an `<array>` of places. Global variable values are
stored directly in the `value` slot of `<variable>` objects.

When the code is being compiled, then the `value` slot of `<variable>`
objects is used to store the CPU stack offset that is assigned as the
place that holds the variable's value when the compiled code is
executed. Global variables are placed at fixed memory addresses.

TODO: it would be nice to merge the anomaly between the treatment of
global and local variables. Aren't global variables simply the
captured variables of an imaginary extra lambda that encapsulates all
the toplevel definitions? IOW, a for a lambda a captured variable is
basically a global=external=outside variable.

This could come together with the introduction of nested local
`define`s, too.

## Compilation of types

Maru is dinamically typed, and currently there's no static
typechecking in its compilation. This will hopefully change.

Unsurprisingly, types are represented in the target by their *type
id*'s, i.e. by word sized integers. The `<undefined>` type doesn't
necessarily need to be assigned the zero type id, but its single valid
value is the zero word in the target, and `()`, aka `false` in the
evaluator.

TODO: Much needs to be worked out regarding the level-shifting of
types. Currently, the very same `boot.l` needs to be loaded when we
want to use our `eval.exe` that was used while compiling it -- at
least regarding the types defined in the chaing of files that get
loaded. Ideally, the compiler should emit enough this-and-that that
the `eval.exe` recreates all the type related heap objects as part of
its startup code. This could either be done by the usual way of having
a separate exe and a heap image file, or by emitting objects into the
static space, or having also a dynamic space that is relocated into
the heap at startup.

## Knowledge base

 - [stack red-zone](https://en.wikipedia.org/wiki/Red_zone_%28computing%29)
 - [x86 position indepenedent code](https://www.technovelty.org/c/position-independent-code-and-x86-64-libraries.html)
 - [GCC and Bare Metal Programming](https://cs107e.github.io/guides/gcc/)
