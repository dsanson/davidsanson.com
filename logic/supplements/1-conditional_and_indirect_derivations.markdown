---
author: David Sanson
title: Conditional and Indirect Derivations (1.6 and 1.7)
...

What is This?
=============

This is a supplement to sections 1.6 and 1.7 of the Logic Text. You
should read those *before* you read this.

Three Kinds of Derivation
=========================

Our system of derivation includes three different kinds of
derivation---that is, three different ways of boxing and canceling.

**Direct Derivation** (**DD**): box and cancel by deriving the sentence
that is on the show line.

<!--
~~~{.derivation}
!Show    <input class="copyMe P sym slot" type="text" >
          \ \ ⋮         
          \ \ <input class="copyMe P sym slot" type="text" >
                                  & dd 
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum"></span><span class="dform"><span
class="dshow canceled">Show</span><input class="copyMe P sym slot" type="text" ></span><span
class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum"></span><span class="dform">   ⋮ </span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform">
  <input class="copyMe P sym slot" type="text" ></span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform"></span><span
class="djust">dd </span>
</p>

</div>

</div>

**Conditional Derivation** (**CD**): box and cancel by *deriving the
consequent* of the conditional on the show line. You are also allowed to
*assume the antecedent* of the conditional on the show line.

<!--
~~~{.derivation}
!Show    <input class="copyMe P sym slot" type="text" > $\Lif$ <input class="copyMe Q sym slot" type="text" >
          \ \ <input class="copyMe P sym slot" type="text" >                 & ass cd
          \ \ ⋮                      
          \ \ <input class="copyMe Q sym slot" type="text" >              
                                    & cd 
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum"></span><span class="dform"><span
class="dshow canceled">Show</span><input class="copyMe P sym slot" type="text" >
${\mathbin{\rightarrow}}$
<input class="copyMe Q sym slot" type="text" ></span><span
class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum"></span><span class="dform">
  <input class="copyMe P sym slot" type="text" ></span><span
class="djust">ass cd</span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform">   ⋮ </span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform">
  <input class="copyMe Q sym slot" type="text" > </span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform"></span><span
class="djust">cd </span>
</p>

</div>

</div>

**Indirect Derivation** (**ID**): box and cancel by *deriving a
contradiction*. You are also allowed to *assume the negation* of the
sentence on the show line.[^1]

<!--
~~~{.derivation}
!Show    <input class="copyMe P sym slot" type="text" >
          \ \ $\Lneg$ <input class="copyMe P sym slot" type="text" >                 & ass id
          \ \ ⋮                      
          \ \ <input class="copyMe Q sym slot" type="text" >
          \ \ $\Lneg$ <input class="copyMe Q sym slot" type="text" > 
                                         & id 
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum"></span><span class="dform"><span
class="dshow canceled">Show</span><input class="copyMe P sym slot" type="text" ></span><span
class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum"></span><span class="dform">   ${\mathord{\sim}}$
<input class="copyMe P sym slot" type="text" ></span><span
class="djust">ass id</span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform">   ⋮ </span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform">
  <input class="copyMe Q sym slot" type="text" ></span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform">   ${\mathord{\sim}}$
<input class="copyMe Q sym slot" type="text" > </span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform"></span><span
class="djust">id </span>
</p>

</div>

</div>

Each of these forms of derivation models a natural form of reasoning.

Conditional Derivation
======================

Here is an example of the sort of reasoning we can model using
**Conditional Derivation**:

-   If the wolves are hunted to extinction, the deer population will
    explode.
-   If the deer population explodes, the vegetation will be overgrazed.
-   If the vegetation is overgrazed, forest fires will become more
    common.
-   Therefore, if the wolves are hunted to extinction, forest fires will
    become more common.

Here is a scheme of abbreviation:

  ----- ------------------------------------- ----- ------------------------------
  $W$   The wolves are hunted to extinction   $V$   The vegetation is overgrazed
  $P$   The deer population explodes          $R$   Forest fires become common
  ----- ------------------------------------- ----- ------------------------------

Before reading on, try, on a piece of paper, to symbolize each sentence
of the argument, using this scheme.

<div class="answers">

Here is the argument, symbolized:

$\ \ W{\mathbin{\rightarrow}}P$\
$\ \ P{\mathbin{\rightarrow}}V$\
$\ \ V{\mathbin{\rightarrow}}R$\
${\therefore\ }W{\mathbin{\rightarrow}}R$

</div>

If we try to construct a direct derivation, we meet a dead end:

<!--
~~~{.derivation}
1.   Show  $W\Lif R$
2.         $W\Lif P$                     & pr
3.         $P\Lif V$                     & pr
4.         $V\Lif R$                     & pr
5.         ?????
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow">Show</span>$W{\mathbin{\rightarrow}}R$</span><span
class="djust"></span>
</p>
<div class="der">

<p class="dline">
<span class="dnum">2</span><span
class="dform">$W{\mathbin{\rightarrow}}P$</span><span
class="djust">pr</span>
</p>
<p class="dline">
<span class="dnum">3</span><span
class="dform">$P{\mathbin{\rightarrow}}V$</span><span
class="djust">pr</span>
</p>
<p class="dline">
<span class="dnum">4</span><span
class="dform">$V{\mathbin{\rightarrow}}R$</span><span
class="djust">pr</span>
</p>
<p class="dline">
<span class="dnum">5</span><span class="dform">?????</span><span
class="djust"></span>
</p>

</div>

</div>

What moves can we make on line (5)? We can apply DNI to one of the
premises, but that won't get us anywhere. Neither will R. We don't have
what we need to apply MP or MT.

How might we reason from the premises to the conclusion, informally?

> **Assume for the sake of argument, that the wolves *are* hunted to
> extinction.** From that assumption, and our first premise, it follows,
> by MP, that the deer population will explode. And from that, and our
> second premise, it follows that the vegetation will be overgrazed. And
> from that, and our third premise, it follows that forest fires will
> become common. So, **on the assumption that\* wolves are hunted to
> extinction, forest fires become common**.

A bit more formally,

<div class="boxed">

**Show**: If the wolves are hunted to extinction, then forest fires will
become common.

**Proof**:

1.  The wolves are hunted to extinction (assume for the sake of
    argument)
2.  If the deer population explodes, the vegetation will be overgrazed
    (premise)
3.  So, the vegetation will be overgrazed (from (1) and (2) by Modus
    Ponens)
4.  If the vegetation is overgrazed, forest fires will become more
    common (premise)
5.  So, forest fires will become more common (from (3) and (4) by Modus
    Ponens)

This shows that if (1) is granted, then (5) follows, and so establishes
the truth of the conditional.

</div>

We can represent this exact form of reasoning as a derivation. The first
step, after entering the show line, is to make the assumption, for the
sake of argument, that the antecedent true:

<!--
~~~{.derivation}
1.   Show  $W\Lif R$              
2.         $W$                     &     ASS CD 
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow">Show</span>$W{\mathbin{\rightarrow}}R$ </span><span
class="djust"></span>
</p>
<div class="der">

<p class="dline">
<span class="dnum">2</span><span class="dform">$W$</span><span
class="djust">ASS CD </span>
</p>

</div>

</div>

Here, 'ASS CD' is short for 'Assume, for the sake of a Conditional
Derivation'. We can then use that assumption, together with our
premises, to derive the *consequent*, $R$:

<!--
~~~{.derivation}
1.   Show  $W\Lif R$              
2.         $W$                     &      ASS CD
3.         $W\Lif P$               &      PR
4.         $P$                     &      2,3 MP
5.         $P\Lif V$               &      PR
6.         $V$                     &      5,6 MP
7.         $V\Lif R$               &      PR
8.         $R$                     &      6,7 MP
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow">Show</span>$W{\mathbin{\rightarrow}}R$ </span><span
class="djust"></span>
</p>
<div class="der">

<p class="dline">
<span class="dnum">2</span><span class="dform">$W$</span><span
class="djust">ASS CD</span>
</p>
<p class="dline">
<span class="dnum">3</span><span
class="dform">$W{\mathbin{\rightarrow}}P$</span><span
class="djust">PR</span>
</p>
<p class="dline">
<span class="dnum">4</span><span class="dform">$P$</span><span
class="djust">2,3 MP</span>
</p>
<p class="dline">
<span class="dnum">5</span><span
class="dform">$P{\mathbin{\rightarrow}}V$</span><span
class="djust">PR</span>
</p>
<p class="dline">
<span class="dnum">6</span><span class="dform">$V$</span><span
class="djust">5,6 MP</span>
</p>
<p class="dline">
<span class="dnum">7</span><span
class="dform">$V{\mathbin{\rightarrow}}R$</span><span
class="djust">PR</span>
</p>
<p class="dline">
<span class="dnum">8</span><span class="dform">$R$</span><span
class="djust">6,7 MP</span>
</p>

</div>

</div>

This derivation demonstrates that *if* $W$ is assumed, *then* $R$
follows. And that is what we are trying to show:
$W{\mathbin{\rightarrow}}R$. So we box and cancel by **Conditional
Derivation** (**CD**), pointing to line 8, where we successfully derived
the consequent:

<!--
~~~{.derivation}

1.   !Show  $W\Lif R$              
2.          $W$                    &      ASS CD
3.          $W\Lif P$              &      PR
4.          $P$                    &      2,3 MP
5.          $P\Lif V$              &      PR
6.          $V$                    &      5,6 MP
7.          $V\Lif R$              &      PR
8.          $R$                    &      6,7 MP
9.                                 &      8 CD
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>$W{\mathbin{\rightarrow}}R$
</span><span class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span class="dform">$W$</span><span
class="djust">ASS CD</span>
</p>
<p class="dline">
<span class="dnum">3</span><span
class="dform">$W{\mathbin{\rightarrow}}P$</span><span
class="djust">PR</span>
</p>
<p class="dline">
<span class="dnum">4</span><span class="dform">$P$</span><span
class="djust">2,3 MP</span>
</p>
<p class="dline">
<span class="dnum">5</span><span
class="dform">$P{\mathbin{\rightarrow}}V$</span><span
class="djust">PR</span>
</p>
<p class="dline">
<span class="dnum">6</span><span class="dform">$V$</span><span
class="djust">5,6 MP</span>
</p>
<p class="dline">
<span class="dnum">7</span><span
class="dform">$V{\mathbin{\rightarrow}}R$</span><span
class="djust">PR</span>
</p>
<p class="dline">
<span class="dnum">8</span><span class="dform">$R$</span><span
class="djust">6,7 MP</span>
</p>
<p class="dline">
<span class="dnum">9</span><span class="dform"></span><span
class="djust">8 CD</span>
</p>

</div>

</div>

So that is what a **Conditional Derivation** looks like. Go back up to
the top of this page, and the schematic presentation of CD. Can you see
how this derivation fits that pattern?

<div class="answers">

Try plugging $W$ into the box and $R$ into the circle.

</div>

Please, if you have not already, go do the exercises in the Logic Text,
at the end of section 1.6. The answers are provided at the end of the
chapter, so you can check your work. If you get wrong answer and don't
understand why it is wrong, reread section 1.6 and this supplement with
an eye to figuring out what you missed.

The following derivation is wrong. Why?

<!--
~~~{.derivation}
1.   !Show  $P\Lif R$         &     
2.          $R$               &           ASS CD
3.          $R\Lif P$         &           PR
4.          $P$               &           2,3 MP
9.                            &           4 CD
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>$P{\mathbin{\rightarrow}}R$</span><span
class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span class="dform">$R$</span><span
class="djust">ASS CD</span>
</p>
<p class="dline">
<span class="dnum">3</span><span
class="dform">$R{\mathbin{\rightarrow}}P$</span><span
class="djust">PR</span>
</p>
<p class="dline">
<span class="dnum">4</span><span class="dform">$P$</span><span
class="djust">2,3 MP</span>
</p>
<p class="dline">
<span class="dnum">9</span><span class="dform"></span><span
class="djust">4 CD</span>
</p>

</div>

</div>

<div class="answers">

The sentence on line (2) is not the antecedent of the conditional on the
Show line, and the sentence on line (4) is not the consequent. To derive
the conditional by CD, you need to show that, if we assume the
*antecedent*, we can derive the *consequent*. You can't do it the other
way around.

</div>

Translate the bad derivation just given into English, using the
following scheme of abbreviation:

  ----- ---------------------------
  $R$   Romney is President
  $P$   A Republican is President
  ----- ---------------------------

Why is this form of reasoning invalid?

<div class="answers">

Here is the derivation, in English:

<!--
~~~{.derivation}
1.  !Show  If a Republican is President, then Romney is President  
2.         Romney is President & ass cd
3.         If Romney is President, then a Republican is President   & pr
4.         A Republican is President                                & 2 3 mp
5.                                                                  & 4 cd
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>If a Republican is President, then
Romney is President </span><span class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span class="dform">Romney is
President</span><span class="djust">ass cd</span>
</p>
<p class="dline">
<span class="dnum">3</span><span class="dform">If Romney is President,
then a Republican is President</span><span class="djust">pr</span>
</p>
<p class="dline">
<span class="dnum">4</span><span class="dform">A Republican is
President</span><span class="djust">2 3 mp</span>
</p>
<p class="dline">
<span class="dnum">5</span><span class="dform"></span><span
class="djust">4 cd</span>
</p>

</div>

</div>

If we were allowed to do this, we could infer from the premise,

-   If Romney is President, then a Republican is.

to the conclusion,

-   If a Republican is President, then Romney is.

But that is not a valid inference! Some other Republican could be
President.

</div>

Conditional Derivation is a powerful tool! You should use it when you
can. You can use it whenever the show line is a conditional.

<div class="boxed">

**Strategic Advice**: If the **show line** is a conditional, try to
construct a **conditional derivation**.

</div>

Indirect Derivation
===================

Section 1.7 introduces **Indirect Derivation** (**ID**). **ID** models a
powerful form of reasoning, common in mathematics and philosophy, that
is often called *reductio ad absurdum* (Latin for "reduce to
absurdity").

Let's begin by considering two real examples of arguments by reductio,
one from philosophy and one from mathematics, and one toy example.

First Example: the Euthyphro
----------------------------

Here is an example drawn from Plato's dialogue, *The Euthyphro*:

> Euthyphro: What is loved by the gods is pious, and what is not loved
> by the gods is impious.\
> [...]\
> Socrates: Haven't we also said that the gods quarrel and differ with
> one another, and that there's mutual hostility among them?\
> Euthyphro: Indeed, we did say that.\
> [...]\
> Socrates: Then the same things, it seems, are both hated and loved by
> the gods [...]\
> Euthyphro: It seems that way.\
> Socrates: So, on your account, Euthyphro, the same things would be
> both pious and impious.\
> Euthyphro: Apparently.

What is going on here? Euthyphro proposes a definition or account of
piety:

> $P$: What is loved by the gods is pious, and what is not loved by the
> gods is impious.

Socrates wants to show that this is wrong. So,

<div class="boxed">

**Show**: ${\mathord{\sim}}P$: It is not the case that what is loved by
the gods is pious and what is not loved by the gods is impious.

**Proof**:

1.  Suppose, for reductio, that $P$ is true.
2.  The gods often disagree and quarrel (premise).
3.  Gods disagree and quarrel only if the same things are both hated by
    some gods and loved by other gods (premise).
4.  So the same things are both hated by some gods and loved by other
    gods (from (2) and (3))
5.  So the same things are both pious and impious (from (1) and (4)).

But (5) is a contradiction, and so false: the same thing cannot both be
pious and not pious.

Assuming our reasoning from (1), (2) and (3) to (5) is valid, and given
that (5) is false, it follows that at least one of (1), (2), or (3) is
false. Since (2) and (3) are granted as premises, it follows that (1) is
false, and so that ${\mathord{\sim}}P$ is true.

</div>

This is a complicated argument. I urge you to go read the *Euthyphro*
yourself, and see whether or not you think that Socrates's reasoning is
valid. But here we are just interested in the structure of the
reasoning. Can you make it fit the scheme for ID?

<div class="cor">


<!--
~~~{.derivation}
!Show    $\Lneg$ <input class="copyMe P sym slot" type="text" >
          \ \ <input class="copyMe P sym slot" type="text" >                 & ass id
          \ \ ⋮                      
          \ \ <input class="copyMe Q sym slot" type="text" >
          \ \ $\Lneg$ <input class="copyMe Q sym slot" type="text" > 
                                         & id 
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum"></span><span class="dform"><span
class="dshow canceled">Show</span>${\mathord{\sim}}$
<input class="copyMe P sym slot" type="text" ></span><span
class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum"></span><span class="dform">
  <input class="copyMe P sym slot" type="text" ></span><span
class="djust">ass id</span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform">   ⋮ </span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform">
  <input class="copyMe Q sym slot" type="text" ></span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform">   ${\mathord{\sim}}$
<input class="copyMe Q sym slot" type="text" > </span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform"></span><span
class="djust">id </span>
</p>

</div>

</div>

As a first step, plug Euthphryo's proposal, $P$, into
<input class="copyMe P sym slot" type="text" >. What should we plug into
<input class="copyMe Q sym slot" type="text" >? This is tricky. We need
two sentences, one the negation of the other, that together capture line
(5) of the argument. We can approximate this if we suppose that $x$ is
something that some gods love and some gods hate, and let $T$ stand for
'$x$ is pious'.

Second Example: Euclid's Theorem
--------------------------------

Here is another famous argument by reductio: Euclid's proof that there
are infinitely many prime numbers.

<div class="boxed">

**Show**: There are infinitely many prime numbers

**Proof**:

1.  Suppose, for reductio, that there are only finitely many primes.
2.  If there are only finitely many primes, then for some finite $n$, we
    list all the primes as $p_1$ through $p_n$.
3.  $p_1$ through $p_n$ are all the primes.
4.  Let $P = (p_1 \times p_2 \times ... p_n) + 1$
5.  $P$ is not a multiple of any of $p_1$ ... $p_n$: for any $k$ between
    1 and $n$, $\frac{P}{p_k}$ leaves a remainder of 1.
6.  So the prime factors of P are not on the list.
7.  So $p_1$ through $p_n$ are not all the primes.

But (7) contradicts (3). So the assumption we made for reductio must be
false: there are not finitely many primes.

</div>

A rigorous presentation of Euclid's proof would require a careful
defense of (5). But here I just want you to think about the structure of
the proof: to show that there are infinitely many prime numbers, Euclid
argues that the opposite assumption leads to a contradiction. Can you
fit this into our schema for ID?

Third Example: Hawk and Dove
----------------------------

Here is a toy example that lends itself to easy representation in our
logic.

Suppose Hawk says,

> If we invaded Iraq, then we brought stability to the Middle East.

Dove replies with the following argument:

>  We invaded Iraq.\
>  We did not bring stability to the Middle East.\
>  ${\therefore\ }$ It is not the case that if we invaded Iraq, then we
> brought\
>    stability to the Middle East.

Hawk, let's suppose, asks Dove to explain why (3) follows from (1) and
(2). Dove says:

> Assume you are right, and it is true that if we invaded, then we
> brought stability. Given that we invaded, it follows from your
> assumption that we brought stability. But we didn't bring stability.
> So your assumption leads to a contradiction, and must be rejected.

How do we represent Dove's line of reasoning?

<div class="boxed">

**Show**: It is not the case that if we invaded Iraq, then we brought
stability to the Middle East.

**Proof**:

Suppose otherwise:

1.  If we invaded Iraq, then we brought stability to the Middle East.
2.  We invaded Iraq (premise).
3.  We did not bring stability to the Middle East (premise).
4.  We brought stability to the Middle East (1 2 by Modus Ponens)

\(3) and (4) are a contradiction: one of them must be false. So either
one of our premises must be false or Hawk's claim must be false. So,
assuming the premises are true, Hawk's claim is false.

</div>

We can represent this same line of reasoning as a derivation. First, we
can symbolize Dove's argument:

  $Q$\
  ${\mathord{\sim}}S$\
${\therefore\ }{\mathord{\sim}}(Q{\mathbin{\rightarrow}}S)$

Now, we set up the derivation,

<!--
~~~{.derivation}
1.  Show  $\Lneg(Q\Lif S)$      & "show conc"
2.    $Q\Lif S$                   & ass id
3.    $Q$                       & pr
4.    $\Lneg S$                 & pr
5.    $S$                       & 2 3 mp
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow">Show</span>${\mathord{\sim}}(Q{\mathbin{\rightarrow}}S)$</span><span
class="djust"></span>
</p>
<div class="der">

<p class="dline">
<span class="dnum">2</span><span
class="dform">$Q{\mathbin{\rightarrow}}S$</span><span class="djust">ass
id</span>
</p>
<p class="dline">
<span class="dnum">3</span><span class="dform">$Q$</span><span
class="djust">pr</span>
</p>
<p class="dline">
<span class="dnum">4</span><span
class="dform">${\mathord{\sim}}S$</span><span class="djust">pr</span>
</p>
<p class="dline">
<span class="dnum">5</span><span class="dform">$S$</span><span
class="djust">2 3 mp</span>
</p>

</div>

</div>

On line (1), Dove states the conclusion to be shown. On line (2), Dove
assumes the opposite---the justification is 'ass id' which stands for
'assume for indirect derivation'. On lines (3) and (4), Dove brings down
the premises. On line (5), Dove derives $S$ from (2) and (3).

Lines (4) and (5) are a contradiction. So Dove can box and cancel by
**indirect derivation** (**id**), referencing the two lines that
contradict each other:

<!--
~~~{.derivation}
1.  !Show  $\Lneg(Q\Lif S)$      & "show conc"
2.    $Q\Lif S$                   & ass id
3.    $Q$                       & pr
4.    $\Lneg S$                 & pr
5.    $S$                       & 2 3 mp
6.                              & 4 5 id
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>${\mathord{\sim}}(Q{\mathbin{\rightarrow}}S)$</span><span
class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span
class="dform">$Q{\mathbin{\rightarrow}}S$</span><span class="djust">ass
id</span>
</p>
<p class="dline">
<span class="dnum">3</span><span class="dform">$Q$</span><span
class="djust">pr</span>
</p>
<p class="dline">
<span class="dnum">4</span><span
class="dform">${\mathord{\sim}}S$</span><span class="djust">pr</span>
</p>
<p class="dline">
<span class="dnum">5</span><span class="dform">$S$</span><span
class="djust">2 3 mp</span>
</p>
<p class="dline">
<span class="dnum">6</span><span class="dform"></span><span
class="djust">4 5 id</span>
</p>

</div>

</div>

Contradictions
--------------

Note that 'contradiction' is a technical term, and it has a precise
syntactic meaning:

<div class="boxed">

A **contradiction** is two lines, one the negation of the other.

-   If <input class="copyMe P sym slot" type="text" > is a sentence,
    then the pair of sentences,
    <input class="copyMe P sym slot" type="text" > and
    ${\mathord{\sim}}$<input class="copyMe P sym slot" type="text" >,
    are a contradiction.

</div>

So, using this definition, which of these sentence pairs, when
symbolized, are contradictions and which are not?

a.  It is raining. It is not raining.
b.  Some gods hate me. Some gods love me.
c.  I am pious. I am not pious.
d.  I am happy. I am unhappy.
e.  The ball is red. The ball is purple.

<div class="answers">

a.  This is a contradiction. We can symbolize the two sentences as $R$
    and ${\mathord{\sim}}R$.

b.  This is not a contradiction: both sentences can be true together. We
    might symbolize the pair as $P$ and $Q$.

c.  This is a contradiction. We might symbolize it as $P$ and
    ${\mathord{\sim}}P$.

d.  This is one is unclear. Can the same person be both happy and
    unhappy at the same time? If so, this is not a contradiction. But if
    being unhappy just means "not being happy", then this is a
    contradiction.

e.  This is not a contradiction, even though both sentences cannot be
    true at the same time (assuming we are talking about the same ball
    in both sentences).

</div>

Again, which of these pairs of symbolic sentences are contradictions and
which are not?

a.  $P$ . ${\mathord{\sim}}P$
b.  $P$ . ${\mathord{\sim}}{\mathord{\sim}}P$
c.  $P$ . ${\mathord{\sim}}{\mathord{\sim}}{\mathord{\sim}}P$
d.  ${\mathord{\sim}}P{\mathbin{\rightarrow}}Q$ .
    $P{\mathbin{\rightarrow}}Q$

<div class="answers">

a.  Yes, this is a contradiction.
b.  No, this is not a contradiction. Try fitting it into the pattern we
    used to define contradictions.\
c.  No, this is not a contradiction. Try fitting it into the pattern. If
    you put $P$ in the box, its contradiction is ${\mathord{\sim}}P$,
    not ${\mathord{\sim}}{\mathord{\sim}}{\mathord{\sim}}P$.
d.  This is not a contradiction. The first sentence is in informal
    notation. In official notation, it looks like this:
    $({\mathord{\sim}}P{\mathbin{\rightarrow}}Q)$, which makes it clear
    that it is not the negation of the second sentence.

</div>

What Next?
==========

Go the Logic Software, and complete the homework assignment.

[^1]: If the show line is a negation, you can assume its unnegation
    instead.
