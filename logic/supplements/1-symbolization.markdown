---
author: David Sanson
section: supplement
title: Symbolization (1.3)
...

What is This?
=============

This is a supplement to section 1.3 of the Logic Text. You should read
that *before* you read this.

Symbolization
=============

Symbolization is the process of taking a sentence in English, like

-   If it rains, then it pours.

and producing a corresponding symbolic sentence, like

$$R{\mathbin{\rightarrow}}P$$

To do this, we first need to introduce a **scheme of
abbreviation**---that is, a key saying what English sentences our
sentence letters are meant to abbreviate. So, in the example above, the
scheme of abbreviation was:

<p class="centered">
$P$: It pours. $R$: It rains.
</p>
Given this scheme of abbreviation, we can also symbolize,

-   It is not the case that it rains.

as

-   ${\mathord{\sim}}R$

And we can symbolize,

-   It rains if it pours,

as

-   $P{\mathbin{\rightarrow}}R$

Test Your Understanding
-----------------------

I.  Suppose you wanted to symbolize the sentence, 'If the wolves are
    exterminated, the deer population explodes.' What sentences would
    you need to have in your scheme of abbreviation?

<div class="answers">

The two atomic sentences are 'The wolves are exterminated' and 'The deer
population explodes'. So the scheme of abbreviation might look like
this:

<p class="centered">
$W$: The wolves are exterminated. $P$: The deer population explodes.
</p>
and the sentence would be symbolized as:

-   $W{\mathbin{\rightarrow}}P$

The choice of which sentence letters to use to symbolize the atomic
English sentences is arbitrary. I could have instead chosen this scheme
of abbreviation:

<p class="centered">
$P$: The wolves are exterminated. $Q$: The deer population explodes.
</p>
and symbolized the sentence as:

-   $P{\mathbin{\rightarrow}}Q$

</div>

Sources of ${\mathord{\sim}}$
=============================

Inside the box on p. 7 of Section 1.3, you can find a summary of sources
of negation in English. The three sources are: 'fail to', 'not', and 'it
is not the case that'. When you see one of these in an English sentence,
you know that the sentence includes a negation.

So,

-   The deer population does not explode.
-   The deer population fails to explode.
-   It is not the case that the deer population explodes.

Are all ways of expressing the negation of 'The deer population
explodes', that is,

-   ${\mathord{\sim}}P$

In the sentence,

-   If the wolves are not exterminated, the deer population will fail to
    explode.

we see both a 'not' and a 'fail to', so we know that it includes two
negations. But how do we know where to put them?

Again, the box on p. 7 has a useful tip:

<div class="boxed">

'not' and 'fail to' yield a negation that applies to the smallest
sentence that they are a part of.

</div>

Let's think about how to apply this tip to our sentence. The 'not'
occurs as a part of two sentences. First, it occurs as a part of the
entire conditional,

-   If the wolves are **not** exterminated, the deer population will
    fail to explode.

But, also, it occurs as a part of the antecedent, which is a complete
sentence contained inside the entire conditional,

-   If *the wolves are **not** exterminated*, the deer population will
    fail to explode.

The antecedent is the smaller of these two sentences, so, according to
the tip, the negation applies to it. For the same reason, the 'fails to'
applies to the consequent,

-   If the wolves are not exterminated, *the deer population will **fail
    to** explode*.

So we should symbolize the sentence this way:

-   $({\mathord{\sim}}W {\mathbin{\rightarrow}}{\mathord{\sim}}P)$

'It is not the case' works a bit differently. It applies to a complete
sentence that immediately follows it. So, in

-   If **it is not the case that** *the wolves are exterminated*, then
    the deer population will fail to explode.

the 'it is not the case that' applies to 'the wolves are exterminated'.
That is because 'the wolves are exterminated' is the only complete
sentence that immediately follows 'it is not the case that'. For
example, 'the wolves are exterminated, then the deer population will
fail to explode' is not a complete sentence, but only a fragment of a
sentence. So this would symbolized as,

-   $({\mathord{\sim}}W{\mathbin{\rightarrow}}P)$

Compare that sentence to this sentence:

-   **It is not the case that** if the wolves are exterminated, then the
    deer population will fail to explode,

What complete sentence immediately follows 'it is not the case that'?
'If the wolves are exterminated' is not a complete sentence, but a
fragment, because of that unresolved 'if'. 'If the wolves are
exterminated, then the deer population will fail to explode' is a
complete sentence. So the negation applies to the entire conditional:

-   ${\mathord{\sim}}(W{\mathbin{\rightarrow}}P)$

Test Your Understanding
-----------------------

Symbolize the following sentences, using an appropriate scheme of
abbrevation:

1.  It is not the case that dogs are color blind.
2.  If dogs are color blind, then dogs fail to see green.
3.  If dogs are not color blind, then it is not the case that dogs are
    color blind.
4.  It is not the case that if dogs fail to see green, then dogs are
    color blind.

<div class="answers">

First we need a scheme of abbreviation. I will use the following (but if
you used different letters---as long as they were between P and
Z---that's okay too):

-   $P$: Dogs are color blind. $R$: Dogs see green.

So, relative to this scheme,

1.  ${\mathord{\sim}}P$
2.  $P{\mathbin{\rightarrow}}{\mathord{\sim}}R$
3.  ${\mathord{\sim}}P{\mathbin{\rightarrow}}{\mathord{\sim}}P$
4.  ${\mathord{\sim}}({\mathord{\sim}}R{\mathbin{\rightarrow}}P)$

</div>

Sources of Conditionals
=======================

Inside the box on p. 8, you can find a summary of sources of the
conditional in English. The three sources are 'if', 'then', and 'only
if'. Reread the information in that box now.

Test Your Understanding
-----------------------

I.  Explain the difference between 'if' and 'only if'.

<div class="answers">

'**if**' always introduces the antecedent of a conditional *unless*
there is an 'only' in front of it. '**only if**' always introduces the
consequent of a conditional. (If you are still fuzzy on these words,
'antecedent' and 'consequent', now is a good time to review what they
mean.)

So,

-   If P, Q

gets symbolized as

-   $P{\mathbin{\rightarrow}}Q$,

because 'if' introduces the antecedent. And

-   P if Q

gets symbolized as

-   $Q{\mathbin{\rightarrow}}P$,

because 'if' introduces the antecedent. Notice that the *order in which
atomic sentences occur* in a molecular sentence of English is not a good
guide to the order in which they occur in the corresponding symbolic
sentence.

When 'only' is put in front of 'if', this behavior is inverted: 'only
if' always introduces the consequent. So,

-   P only if Q

is

-   $P{\mathbin{\rightarrow}}Q$

and

-   Only if P, Q

is

-   $Q{\mathbin{\rightarrow}}P$

</div>

II. Symbolize the following sentences, then click on the box to check
    your answers.

    1.  I am happy if you hear me whistle.
    2.  I am happy only if you hear me whistle.
    3.  I am not happy if you fail to hear me whistle.
    4.  If I am not happy, you don't hear me whistle.
    5.  Only if I am happy do you hear me whistle.
    6.  It is not the case that I am happy if you hear me whistle

<div class="answers">

-   $Y$: I am happy. $W$: You hear me whistle.

1.  $W{\mathbin{\rightarrow}}Y$
2.  $Y{\mathbin{\rightarrow}}W$
3.  ${\mathord{\sim}}W{\mathbin{\rightarrow}}{\mathord{\sim}}Y$
4.  ${\mathord{\sim}}Y{\mathbin{\rightarrow}}{\mathord{\sim}}W$
5.  $W{\mathbin{\rightarrow}}Y$

Sentence 6 is ambiguous. 'It is not the case that' attaches to a
complete sentence that immediately follows it. But there are two
complete sentences that immediately follow 'it is not the case that' in
(6):

-   I am happy
-   I am happy if you hear me whistle

So, on one reading, the negation attaches just to 'I am happy', so

-   $W{\mathbin{\rightarrow}}{\mathord{\sim}}Y$

And, on another reading, (6) is the negation of a conditional:

-   ${\mathord{\sim}}(W{\mathbin{\rightarrow}}Y)$

</div>

Commas
======

On p. 9, the text introduces an important convention governing the use
of commas. Reread it now.

Test Your understanding
-----------------------

I.  Symbolize the following sentences. If they are ambiguous, how could
    you use commas to disambiguate them?

    1.  If the corn doesn't grow, then we will starve if winter comes.
    2.  If the corn grows if winter comes, we won't starve.
    3.  It is not the case that we will starve if the corn grows.

<div class="answers">

-   $P$: The corn grows. $S$: We will starve. $W$: Winter comes.

1.  ${\mathord{\sim}}P {\mathbin{\rightarrow}}(W {\mathbin{\rightarrow}}S)$

Without the comma, the sentence would be ambiguous, and could instead be
read as a conditional with 'Winter comes' as its antecedent.

2.  $(W{\mathbin{\rightarrow}}P){\mathbin{\rightarrow}}{\mathord{\sim}}S$

Again, without the comma, it would be ambiguous, and could instead be
read as a conditional with 'if winter comes, we won't starve' as its
antecedent.

3.  This one is ambiguous. It could be the negation of a conditional:

-   It is not the case that [we will starve if the corn grows].
-   ${\mathord{\sim}}(P{\mathbin{\rightarrow}}S)$

Or it could be a conditional with a negation in the consequent:

-   [It is not the case that we will starve] if the corn grows.
-   $(P{\mathbin{\rightarrow}}{\mathord{\sim}}S)$

We can force the second reading using a comma:

-   It is not the case that we will starve, if the corn grows.

</div>
