---
title: Symbolization (1.3)
author: David Sanson
...


\newcommand{\BX}{\mathord{◻}}
\newcommand{\CI}{\mathord{○}}
\newcommand{\ERGO}{\therefore\ }
\newcommand{\PERG}{\phantom{\therefore}\ }
\newcommand{\Land}{\mathord{\wedge}}
\newcommand{\Lor}{\mathord{\vee}}
\newcommand{\Liff}{\mathord{\leftrightarrow}}
\newcommand{\Lneg}{\mathord{\sim}}
\newcommand{\Lif}{\mathbin{\rightarrow}}

# What is This?

This is a supplement to section 1.3 of the Logic Text. You should read that *before* you read this.

# Symbolization

Symbolization is the process of taking a sentence in English, like

-   If it rains, then it pours,

and producing a corresponding symbolic sentence, like

-   $R\Lif P$

To do this, we first need to introduce a **scheme of abbreviation**---that is, a key saying what English sentences our sentence letters are meant to abbreviate. So, in the example above, the scheme of abbreviation was:

$P$
:   It pours.

$R$
:   It rains.

Given this scheme of abbreviation, we can also symbolize,

-   It is not the case that it rains,

as 

-   $\Lneg R$

And we can symbolize,

-   It rains if it pours,

as

-   $P\Lif R$

## Test Your Understanding

I.  Suppose you wanted to symbolize the sentence, 'If the wolves are
    exterminated, the deer population explodes.' What sentences would you need
    to have in your scheme of abbreviation?

<div class="answers">

The two atomic sentences are 'The wolves are exterminated' and 'The deer population explodes'. So the scheme of abbreviation might look like this:

$W$
:   The wolves are exterminated.

$P$
:   The deer population explodes.

and the sentence would be symbolized as:

-   $W\Lif P$

The choice of which sentence letters to use to symbolize the atomic English sentences is arbitrary. I could have instead chosen this scheme of abbreviation:

$P$
:   The wolves are exterminated.

$Q$
:   The deer population explodes.

and symbolized the sentence as:

-   $P\Lif Q$

</div>

# Sources of $\Lneg$

Inside the box on p. 7 of Section 1.3, you can find a summary of sources of negation in English. The three sources are: 'fail to', 'not', and 'it is not the case that'. When you see one of these in an English sentence, you know that the sentence includes a negation.

So,

-   The deer population does not explode.
-   The deer population fails to explode.
-   It is not the case that the deer population explodes.

Are all ways of expressing the negation of 'The deer population explodes', that is,

-   $\Lneg P$

In the sentence,

-   If the wolves are not exterminated, the deer population will fail to
    explode.

we see both a 'not' and a 'fail to', so we know that it includes two negations. But how do we know where to put them?

Again, the box on p. 7 has a useful tip:

-   'not' and 'fail to' yield a negation that applies to the smallest sentence
    that they are a part of.

Let's think about how to apply this tip to our sentence. The 'not' occurs as a part of two sentences. First, it occurs as a part of the entire conditional,

-   If the wolves are not exterminated, the deer population will fail to
    explode.

But, also, it occurs as a part of the antecedent:

-   The wolves are not exterminated.

Since the antecedent is the smaller of the two sentences, the negation applies
to it. For the same reason, the 'fails to' applies to the consequent. So we
should symbolize the sentence this way:

-   $(\Lneg W \Lif \Lneg P)$

'It is not the case' works a bit differently. It applies to a complete
sentence that immediately follows it. So, in

-   If it is not the case that the wolves are exterminated, then the deer
    population will fail to explode.

the 'it is not the case that' applies to 'the wolves are exterminated'. That
is because 'the wolves are exterminated' is the only complete sentence that
immediately follows 'it is not the case that'. For example, 'the wolves are
exterminated, then the deer population will fail to explode' is not a complete
sentence, but only a fragment of a sentence.

Compare that sentence to this sentence:

-   It is not the case that if the wolves are exterminated, then the deer
    population will fail to explode,

What complete sentence immediately follows 'it is not the case that'? 'if the
wolves are exterminated' is not a complete sentence. 'if the wolves are
exterminated, then the deer population will fail to explode' is. So the
negation applies to the entire conditional:

-   $\Lneg(W\Lif P)$

## Test Your Understanding

I.  Symbolize the following sentences, using an appropriate scheme of
    abbrevation:

    1.  It is not the case that dogs are color blind.
    2.  If dogs are color blind, then dogs fail to see green.
    3.  If dogs are not color blind, then it is not the case that dogs
        are color blind.
    4.  It is not the case that if dogs fail to see green, then dogs are
        color blind.

<div class="answers">

First we need a scheme of abbreviation. I will use the following (but if you
used different letters---as long as they were between P and Z---that's okay too):

$P$
:   Dogs are color blind.

$R$
:   Dogs see green.

So, relative to this scheme,

1.   $\Lneg P$
2.   $P\Lif \Lneg R$
3.   $\Lneg P\Lif \Lneg P$
4.   $\Lneg(\Lneg R\Lif P)$

</div>

# Sources of Conditionals

Inside the box on p. 8, you can find a summary of sources of the conditional in English. The three sources are 'if', 'then', and 'only if'. Reread the information in that box now.

## Test Your Understanding

I.   Explain the difference between 'if' and 'only if'.

<div class="answers">

'if' always introduces the antecedent of a conditional *unless* there is an 'only' in front of it. 'only if' always introduces the consequent of a conditional. (If you are still fuzzy on these words, 'antecedent' and 'consequent', now is a good time to review what they mean.)

So,

-   If P, Q

gets symbolized as

-   $P\Lif Q$,

because 'if' introduces the antecedent. And

-   P if Q

gets symbolized as

-   $Q\Lif P$,

because 'if' introduces the antecedent. Notice that the *order in which atomic sentences occur* in a molecular sentence of English is not a good guide to the order in which they occur in the corresponding symbolic sentence.

When 'only' is put in front of 'if', this behavior is inverted: 'only if' always introduces the consequent. So,

-   P only if Q

is

-   $P\Lif Q$

and

-   Only if P, Q

is

-   $Q\Lif P$

</div>

II.   Symbolize the following sentences, then click on the box to check your answers.

    1.   I am happy if you hear me whistle.
    2.   I am happy only if you hear me whistle.
    3.   I am not happy if you fail to hear me whistle.
    4.   If I am not happy, you don't hear me whistle.
    5.   Only if I am happy do you hear me whistle.
    6.   It is not the case that I am happy if you hear me whistle

<div class="answers">

$Y$
:   I am happy

$W$
:   You hear me whistle

1.   $W\Lif Y$
2.   $Y\Lif W$
3.   $\Lneg W\Lif\Lneg Y$
4.   $\Lneg Y\Lif\Lneg W$
5.   $W\Lif Y$

Sentence 6 is ambiguous. 'It is not the case that' attaches to a complete
sentence that immediately follows it. But there are two complete sentences
that immediately follow 'it is not the case that' in (6):

-   I am happy
-   I am happy if you hear me whistle

So, on one reading, the negation attaches just to 'I am happy', so

-   $W\Lif\Lneg Y$

And, on another reading, (6) is the negation of a conditional:

-   $\Lneg(W\Lif Y)$

</div>

# Commas

On p. 9, the text introduces an important convention governing the use of commas. Reread it now.

## Test Your understanding

I.   Symbolize the following sentences. If they are ambiguous, how could you use commas to disambiguate them?

    1.   If the corn doesn't grow, then we will starve if winter comes.
    2.   If the corn grows if winter comes, we won't starve.
    3.   It is not the case that we will starve if the corn grows.

<div class="answers">

P
:   The corn grows
S
:   We will starve
W
:   Winter comes

1.  $\Lneg P \Lif (W \Lif S)$

Without the comma, the sentence would be ambiguous, and could instead be read as a conditional with 'Winter comes' as its antecedent.

2.  $(W\Lif P)\Lif \Lneg S$

Again, without the comma, it would be ambiguous, and could instead be read as a conditional with 'if winter comes, we won't starve' as its antecedent.

3.  This one is ambiguous. It could be the negation of a conditional:

-   It is not the case that \[we will starve if the corn grows\].
-   $\Lneg(P\Lif S)$

Or it could be a conditional with a negation in the consequent:

-   \[It is not the case that we will starve\] if the corn grows.
-   $(P\Lif\Lneg S)$

We can force the second reading using a comma:

-   It is not the case that we will starve, if the corn grows.

</div>




