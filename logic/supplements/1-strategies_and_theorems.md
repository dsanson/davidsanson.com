---
title: Strategies and Theorems (1.10, 1.11, and 1.12)
author: David Sanson
...


\newcommand{\BX}{\mathord{◻}}
\newcommand{\CI}{\mathord{○}}
\newcommand{\ERGO}{\therefore\ }
\newcommand{\PERG}{\phantom{\therefore}\ }
\newcommand{\Erg}{\therefore\ }
\newcommand{\Erp}{\phantom{\therefore}\ }
\newcommand{\Land}{\mathord{\wedge}}
\newcommand{\Lor}{\mathord{\vee}}
\newcommand{\Liff}{\mathord{\leftrightarrow}}
\newcommand{\Lneg}{\mathord{\sim}}
\newcommand{\Lif}{\mathbin{\rightarrow}}

# What is This?

This is a supplement to sections 1.10, 1.11, and 1.12 of the Logic Text. You
should read those *before* you read this.

# Outline

Section 1.10 reviews some strategies for solving derivations. Section 1.11 introduces the concept of a **theorem**. Section 1.12 describes how you can *use* theorems that you have already proven.

# Strategies

Section 1.10 presents some useful strategies for working through derivations. You should also look at the "Advice" document, available from with the Derivation Module in the Logic Software.

![Advice Button](http://files.davidsanson.com/logic2010/advice_button.png)

Here is my summary of the advice:

A.  Begin by trying to think through the derivation on scratch paper,
    constructing an outline and writing down obvious consequences.
B.  If the show line is a conditional, use CD; otherwise, use DD if it
    is obvious how, or use ID.
C.  To use available lines:
    -   conditionals: apply MP or MT if you can
        -   if you don't have the antecedent, try showing it
        -   if you don't have the negation of the consequent, try
            showing it.
    -   negations of conditionals: try showing the unnegation.
    
Tip (A) is just basic good advice. It applies to writing essays. It also applies to constructing derivations. Try to think it through. Use scratch paper to help: it is easier to brainstorm and sketch out ideas on paper than it is to do it all in your head, or try to do it in the software.

Every derivation is about trying to *show* some conclusion, given some *premises*. So you always have to ask yourself two questions:

-   What do I need to show and how am I going to show it?
-   What is available to use and how am I going to use it?

Tip (B) addresses the first question. Tip (C) addresses the second question. 

# Theorems

A **theorem** is a sentence that can be derived without assuming any premises. Theorems are **logical truths**: sentences that are true no matter what, in virtue of their logical form.

Examples include:

T1
:   $P\Lif P$

No matter what we plug in for $P$, T1 is true:

-   If Obama is President, then Obama is President.
-   If Romney is President, then Romney is President.
-   If the Moon is made of green cheese, then the Moon is made of green cheese.

Another is,

T2
:   $Q\Lif(P\Lif Q)$

Again, no matter what we plug in for $P$ and $Q$, T2 is true:

-   If Obama is President, then Obama is President if it is raining.
-   If it is raining, then it is raining if Obama is President.
-   If I do not like green eggs and ham, then I do not like them if I am
    on a train.

Deriving theorems can seem daunting, because you don't get to start with any premises. But you do get to make assumptions, either for CD or ID. So just try to derive them using the same techniques you have already learned.

# Using Theorems

Here is a cool thing: once you have derived a theorem (and saved your work in the software), you can then *use* that theorem in other derivations.

To use a theorem, right down an **instance** of that theorem---that is, a sentence that has the same logical form as the theorem---and write down the name of the theorem as justification. For example, 

---  -----------------------------------------------------  ---- 
5.   $W\Lif W$                                              T1
6.   $(P\Lif Q)\Lif (P\Lif Q)$                              T1
7.   $\Lneg(P\Lif\Lneg Q)\Lif \Lneg(P\Lif\Lneg Q)$          T1
---  -----------------------------------------------------  ---- 

You can also do this on the midterm, if you'd like.
