---
author: David Sanson
course: 112
instructor: David Sanson
title: 'Derivations without Derived Rules (2.5)'
...

Strategic Hints
===============

You can find strategic hints for constructing derivations throughout
chapter 2. They are set off in boxes. See the top of p. 15 for an
example.

There are also two places in the chapter where several several strategic
hints are collected together: p. 33 and pp. 43-44.

You can also find strategic hints in the "Strategic Advice" document,
available via the "Advice" button at the bottom of the derivation
module.

These are all good resources. But they all presuppose the use of derived
rules, and we have not yet introduced derived rules. With that in mind,
below you will find collected strategic advice for completing chapter 2
derivations without the help of derived rules.

Two Questions
=============

All the hints are organized around a sharp distinction between two
questions that you can ask yourself at any stage of constructing a
derivation:

-   What sentence or sentences do I **need to get**?
    -   The answer to this question is dictated by what sentence is on
        your show line, and what justification (DD, CD, or ID) you plan
        to use for boxing and canceling.
-   What sentences are **available** for me to **use**?
    -   These will be the premises and the sentences on available
        lines---lines above the line you are working on that are not
        boxed and are not uncanceled show lines.

Advice for Constructing Ch 2 Derivations Without Derived Rules
==============================================================

Here is the advice:

1.  Never enter a show line for a sentence you already *have* on an
    available line or as a premise. This will not get you anywhere.

2.  Before beginning the derivation, try to think it through: can you
    see why, if the premises were true, the conclusion would have to be
    true too?

3.  Enter show lines related to what you need to *get* **before**
    entering show lines related what you need to *use*.

4.  Strategies for **getting** what you need:

    a.  If you need a conjunction,
        ${\mathbin{◻}}{\mathbin{\wedge}}{\mathbin{○}}$, derive each
        conjunct separately, then used ADJ to join them together (you
        may find the 'show conj' show command useful)
    b.  If you need a disjunction,
        ${\mathbin{◻}}{\mathbin{\vee}}{\mathbin{○}}$
        -   derive one of the disjuncts and use ADD (but this won't
            always be possible)
        -   enter it on a show line, assume
            ${\mathbin{\sim}}{\mathbin{◻}}{\mathbin{\vee}}{\mathbin{○}}$,
            and complete an indirect derivation

    c.  If you need a conditional,
        ${\mathbin{◻}}{\mathbin{\rightarrow}}{\mathbin{○}}$, enter it on
        a show line, assume ${\mathbin{◻}}$, and complete a conditional
        derivation (you may find the 'show cons' show command useful)
    d.  If you need a biconditional,
        ${\mathbin{◻}}{\mathbin{\leftrightarrow}}{\mathbin{○}}$, derive
        each conditional separately, then use CB to join them together
        (you may find the 'show cond' show command useful)
    e.  If you need an atomic sentence, $P$, or a negation
        ${\mathbin{\sim}}{\mathbin{◻}}$, and it is not obvious how to
        derive it directly, enter it on a show line, take your
        assumption, and complete an indirect derivation.

5.  Strategies for **using** what you have:

    a.  To use a conjunction,
        ${\mathbin{◻}}{\mathbin{\wedge}}{\mathbin{○}}$, use S to get
        both conjuncts.
    b.  To use a disjunction,
        ${\mathbin{◻}}{\mathbin{\vee}}{\mathbin{○}}$, derive the
        negation of one of the disjuncts, and use MTP (you may find the
        'show negdisj' show command useful)
    c.  To use a conditional,
        ${\mathbin{◻}}{\mathbin{\rightarrow}}{\mathbin{○}}$, derive the
        antecedent and use MP, or derive the negation of the consequent
        and use MT (you may find the 'show ant' or 'show negcons'
        commands useful)
    d.  To use a biconditional,
        ${\mathbin{◻}}{\mathbin{\leftrightarrow}}{\mathbin{○}}$, use BC
        to get both conditionals.
    e.  To use a negation, ${\mathbin{\sim}}{\mathbin{◻}}$ (so, for
        example,
        ${\mathbin{\sim}}({\mathbin{◻}}{\mathbin{\rightarrow}}{\mathbin{○}})$,
        ${\mathbin{\sim}}({\mathbin{◻}}{\mathbin{\wedge}}{\mathbin{○}})$,
        ${\mathbin{\sim}}({\mathbin{◻}}{\mathbin{\vee}}{\mathbin{○}})$,
        ${\mathbin{\sim}}({\mathbin{◻}}{\mathbin{\leftrightarrow}}{\mathbin{○}})$),
        try to show its unnegation (you may find the 'show unneg'
        command useful)

6.  Sometimes you need to get a contradiction, but it is not clear what
    contradiction you should try to get, and you've exhausted all the
    strategies for using what you have. As a last ditch strategy,

    -   Enter a show line for one of the sentence letters in the
        derivation, or the negation of one of the sentence letters. Take
        your assumption for indirect derivation. If you succeed at
        boxing and canceling, next try to show the negation of that same
        sentence letter.
