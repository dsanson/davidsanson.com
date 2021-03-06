---
title: Negations and Conditionals (1.1 and 1.2)
author: David Sanson
section: supplement
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


# Conditionals and Negations

Chapter 1 introduces a fragment of **Sentential Logic**, focusing just on the
logic of 'if' and 'not'. The rest of Sentential Logic---including the logic of
'and', 'or', and 'if and only if'---is introduced in Chapter 2. We start with
just this fragment to keep things simple.

You just read the first two sections of Chapter 1. The first section
introduces a new symbolic notation---two new symbols, '$\Lneg$' and
'$\Lif$'---together with some rules for combining those symbols
with **sentence letters**---capital letters $P$ through $Z$---and
parentheses to produce **symbolic sentences**.

The second section explains what the new symbols mean. '$\Lneg$' is the
negation sign, and we use it to symbolize 'it is not the case that'.
'$\Lif$' is the conditional sign, and we use it to symbolize
'if...then...'.

In this supplement, I am going to work through the same material in a
slightly different order. I begin with a review of how we use the
negation sign and the conditional sign to symbolize negations and
conditionals, and end with a review of the rules for combining our new
symbols together to create well-formed symbolic sentences.


# Negations 

We will use the sentence letters---capital letters $P$ through $Z$---to
represent simple sentences. This is an arbitrary choice: other logic textbooks
might use other letters, or lowercase letters.[^letters] We will use '$\Lneg$' to
symbolize negation. This is again an arbitrary choice. Some textbooks
use '$\neg$' instead.

[^letters]: We are saving capital letters $A$ through $O$ for later, when we will
    use them to represent predicates, like '\_\_\_\_ is a cow'. And we are
    saving lowercase letters for later, when we will use them to represent
    names and variables.

<!-- add image of empty fridge
-->

A negation is a sentence that is true just in case the sentence it negates is
false. So, for example, suppose we are at a party, and you ask for a beer, and
I say,

-  There are some beers in the refrigerator.

You go look, but you don't find any beer. So you say,

-  There are not any beers in the refrigerator.

At this point, we would probably send somebody on a beer run. But maybe
the party is a logic party, so we decide to translate our exchange
into symbols instead.

We can represent my sentence with a single sentence letter,

-   $R$: There are some beers in the refrigerator.

Your sentence is the **negation** of my sentence. What you said was true
just case what I said was false, and vice versa. So, using our negation
sign, we can represent your sentence as,

-   $\Lneg R$: It is not the case that there are some beers in the 
    refrigerator.

Here are some other examples of sentences and their negations, together with appropriate symbolizations:


| $S$: Snow is white
| $\Lneg S$: Snow is not white                                         
| $T$: Frozen is the greatest musical of all time
| $\Lneg T$: Frozen isn't the greatest musical of all time
| $R$: The NSA respects the rights of US citizens
| $\Lneg R$: The NSA fails to respect the rights of US citizens 


As these examples show, in English we tend to express negations by
including a 'not' somewhere in the middle of the sentence, but we can
also use contractions or expressions like 'fails to'.

<!--
    add image of something Canadian
-->

Not all sentences that involve negativity are negations. Consider:

1.   Canada is the best!
2.   Canada is the worst!

\(2) is not the negation of (1), because (2) is not true just in case (1)
is false. Maybe Canada is neither the best nor the worst, but just
so-so. The negation of (1) is a sentence that is true just in case (1)
is false, like (3):

3.   Canada is not the best.

<!--
comment: picture of cupcake
-->


Not all sentences that differ just by a 'not' are negations. Consider:

1.   I want to eat a cupcake.
2.   I want to not eat a cupcake.

\(2) is not the negation of (1). For (2) to be true, I must want to avoid
eating cupcakes, but maybe (1) is false because I am simply indifferent
to cupcakes. The negation of (1), then, is

3.   I don't want to eat a cupcake.

So, let's work through some examples.

Suppose $Z$ stands for 'The level of zooplankton in the Great Lakes is dangerously high.' What English sentence does $\Lneg Z$ symbolize?

<div class="answers">
It symbolizes the sentence, 'The level of zooplankton in the Great Lakes is not dangerously high', or, equivalently,
'It is not the case that the level of zooplankton in the Great Lakes is dangerously high.'
</div>

What English sentence expresses the negation of 'Satan is evil'?

<div class="answers">

'Satan is good' is not the negation of 'Satan is evil': something can fail to
be evil without being good.
The negation of 'Satan is evil' is 'Satan is not evil', or 'Satan fails to be evil', or 'It is not the case that Satan is evil'.

</div>

How would you symbolize, 'It is not the case that the levels of
zooplankton in the Great Lakes are not dangerously high'?

<div class="answers">

There are two 'nots' here. So the natural way to
symbolize this is as $\Lneg\Lneg Z$, which is the negation of
$\Lneg Z$.

$Z$ and $\Lneg\Lneg Z$ stand in an interesting logical relationship.
$Z$ is true just in case its negation, $\Lneg Z$, is false. And
$\Lneg Z$ is false just in case *its* negation, $\Lneg\Lneg Z$,
is true. So $Z$ is true just in case $\Lneg\Lneg Z$ is true. In other words,
they are *logically equivalent*.

</div>

Suppose $P$ represents the sentence 'Petunia is a purple pig'. What are three
ways of expressing, in English, $\Lneg P$?

<div class='answers'>

'Petunia is not a purple pig,' 'Petunia fails to be a purple pig,' 'It is not
the case that Petunia is a purple pig,' 'Petunia isn't a purple pig.' Or even,
'It is not the case that Petunia fails to not be a purple pig,' which is
logically equivalent.

</div>

# Conditionals

<!--
    comment: picture of popcorn
-->

We use the conditional sign, '$\Lif$', to represent conditionals, that is,
if...then... statements. This is again an arbitrary choice. Some textbooks use
'$\supset$' instead.

A **conditional** is an if...then... statement, like

@a.   If you eat all the popcorn, then I will be sad.

The **antecedent** of the conditional is the "if" part, so, in this case,

-   $P$: You eat all the popcorn.

The **consequent** is the "then" part, so,

-   $S$: I will be sad.

This terminology is important, because it gives us a precise way to
refer to the different parts of a conditional. 

'Ante' means before. Hence 'ante up' in poker, and the antebellum period,
before the Civil War. 

We can represent (@a) as

@b.   $(P\Lif S)$

Now suppose I want to deny (@a): my happiness does not depend on your eating habits! I can do this by expressing the negation of the conditional,

@c.  $\Lneg(P\Lif S)$

or, in English,

@d.  It is not the case that if you eat all the popcorn, then I will be sad.

The parentheses are important. Consider yet another way my happiness and
your eating habits might be related: maybe my happiness *does* depend on
your eating habits, but not in the way that (@a) suggests. Maybe I
*want* you to eat all the popcorn, and if you don't, I am going to be
sad. That is,

@e.  If you don't eat all the popcorn, then I will be sad.

\(@e) is a conditional. Its antecedent is,

-   $\Lneg P$: You don't eat all the popcorn,

and its consequent is,

-   $S$: I will be sad.

So we can symbolize (@e) as,

@f.  $(\Lneg P\Lif S)$

Study the difference between (@c) and (@f), and the corresponding difference
between (@d) and (@e). In (@c), the negation sign
is inside the parentheses. In (@f), it is outside. Can you see how that
captures the difference between (@d)---the negation of the
conditional---and (@e)---a conditional with a negation as its
antecedent? If we didn't have parentheses, we could not capture this
distinction.

So, what is the antecedent of this conditional: 'If you can't love the one you want, love the one you're with'?

<div class="answers">
The antecedent is 'You can't love the one you want'.
</div>

What is the consequent of this conditional: $((P\Lif Q)\Lif R)$

<div class="answers">
The consequent is $R$. The antecedent is $(P\Lif Q)$. Do you see how the parentheses help guide you here?
</div>


# Ambiguity

Sentences in English can be *ambiguous*---that is, they can have
multiple distinct interpretations. Sometimes this is because the
sentence contains a word that is ambiguous, as in

-   Meet me down at the bank.

Are we meeting at a financial institution, or beside the river?

But sometimes, the ambiguity has to do with the structure of the
sentence. Consider the following ambiguous newspaper headlines:

![Students Cook and Serve Grandparents](/images/grandparents.jpg "Picture of
newspaper headline")

-   Dr. Ruth to Talk about Sex with Newspaper Editors
-   Squad Helps Dog Bite Victim
-   Stolen Painting Found by Tree
-   Enraged Cow Injures Farmer with Ax

Each of these sentences can be interpreted in two different ways, and the
truth or falsehood of the sentence depends on how you interpret it.

We don't want this sort of ambiguity in our symbolic language. Parentheses are
the tool we use to avoid it.

The sentence, 'If you are in the class you should do the reading if you want to succeed', is ambiguous. What are the two readings?

<div class="answers">

Here is one reading: 'If you are in the class, then (you should do the reading
if you want to succeed)'. 

Here is the other reading: '(If you are in the class, then you should do the reading) if you want to succeed'.

If we let 'Y' stand for 'You are in the class', 'R' for 'You should do the reading', and 'S' for 'You want to succeed', then we can symbolize the first reading as:

$$(Y\Lif (S\Lif R))$$

And we can symbolize the second reading as:

$$(S\Lif (Y\Lif R))$$

</div>


# Formal Syntax

The discussion so far has provided an informal introduction to our symbolic
language. But part of the point of logic is to be as clear and rigorous as
possible. So we will now provide the formal syntax for the language.

The symbols of our new language are:

-   the **connectives**: the **negation sign**, $\Lneg$, and the
    **conditional sign**, $\Lif$[^con]
-   the left and right parentheses
-   the **sentence letters**: $P$ through $Z$[^sub]

[^con]: Most "connectives" can be thought of as connecting two sentences to form a third, in the way that the $\Lif$ connects $P$ and $Q$ to form $(P\Lif Q)$. The negation sign doesn't do this, so it is a bit awkward to call it a "connective", but logicians can be awkward sometimes.

[^sub]: Officially, we also allow numerical subscripts, so $P_{1}$ is also a sentence letter. This is because, officially, we want to be able to symbolize more than 11 distinct sentences at a time.

<div class='cor'>

The **symbolic sentences** of our language are built up out of these
symbols, according to the following rules:

1.   Every sentence letter is a symbolic sentence.
2.   If <input class="copyMe P sym slot" type="text" > is a symbolic sentence, so is $\Lneg$ <input class="copyMe P sym slot" type="text" >.
3.   If <input class="copyMe P sym slot" type="text" > and <input class="copyMe Q sym slot" type="text" > are both symbolic sentences, so is $($ <input class="copyMe P sym slot" type="text" > $\Lif$ <input class="copyMe Q sym slot" type="text" > $)$.

<input class="copyMe P sym slot" type="text" > and <input class="copyMe Q sym slot" type="text" > are here being used as placeholders for any string
of symbols. So, for example, according to the second clause, *if*
$\Lif\Lneg((PZQR\Lif$ is a symbolic sentence,
$\Lneg\Lif((PZQR\Lif$ is too.

</div>

This is a *recursive* definition. That means you can apply the clauses
of the definition to generate some symbolic sentences, and then apply
them again to the sentences you just generated to generate yet more
symbolic sentences, and then apply them again to the sentences you just
generated to generate yet more symbolic sentences, and so on. 

The first clause provides us with a foundation of simple symbolic
sentences---we call them the **atomic sentences**. For example,
according to the first clause,

-   $P$ and $Q$ a both symbolic sentences, because they are sentence letters.

The second two clauses allow us to generate more complex sentences out
of simpler sentences. We call these complex sentences **molecular
sentences**.

So, for example, according to the second clause, if $P$ a symbolic
sentence, so is $\Lneg P$. And we've already established that $P$ is a
symbolic sentence, so

-   $\Lneg P$ is a symbolic sentence. 

And, again, according to the second clause, if $\Lneg P$ is a symbolic sentence, so is
$\Lneg\Lneg P$. So

-   $\Lneg\Lneg P$ is a symbolic sentence.

In this way, we can quickly generate infinitely many symbolic sentences
just by repeated application of the second clause.

The same is true of the third clause. Since both $P$ and $Q$ are symbolic sentences, so is

-   $(P\Lif Q)$

And since $P$ and $(P\Lif Q)$ are symbolic sentences, so are both

-   $(P\Lif (P\Lif Q))$
-   $((P\Lif Q)\Lif P)$

and since these both are, so is

-   $((P\Lif (P\Lif Q))\Lif ((P\Lif Q)\Lif P))$,

and so on.

Why isn't $A$ a symbolic sentence?

<div class="answers">

$A$ is not a symbolic sentence because it isn't one of the sentence letters. The sentence letters are uppercase letters, $P$ through $Z$.

</div>

$\Lneg(Q\Lif P)$ is a symbolic sentence. Can you see how it is generated?

<div class='answers'>

First, by clause (1), $P$ and $Q$ are both symbolic sentences.

And, by clause (3), if they both are, then $(Q\Lif P)$ is too.

Finally, by clause (2), if $(Q\Lif P)$ is, so is $\Lneg(Q\Lif P)$.

</div>

$((P\Lif\Lneg Q)\Lif R)$ is a symbolic sentence. Can you generate this
sentence by repeated application of the three clauses of our recursive
definition?

<div class="answers">

By clause (1), $P$ and $Q$ are both symbolic sentences.

By clause (2), since $Q$ is, so is $\Lneg Q$. 

So, by clause (3), $(P\Lif\Lneg Q)$ is too. 

$R$ is a symbolic sentence by clause (1), so $((P\Lif\Lneg Q)\Lif R)$ is a symbolic
sentence by the clause (3).

</div>

# Main Connectives

The **main connective** of a symbolic sentence is the connective that
governs the whole sentence. If you think about how the sentence was
built up, by successive applications of the three clauses of the
definition, the main connective is the **last connective added**.
For example, in $\Lneg\Lneg P$, the main connective is the first '$\Lneg$', which was added to '$\Lneg P$' in accordance with clause (2).

So, what is the main connective in $\Lneg(P\Lif Q)$?

<div class='answers'>

The main connective is the $\Lneg$, which was added to $(P\Lif Q)$ by clause (2).

</div>

What is the main connective in $(\Lneg P\Lif \Lneg Q)$?

<div class='answers'>

The main connective is the $\Lif$, which was added between $\Lneg P$ and $\Lneg Q$ by clause (3).

</div>

What is the main connective in $(P\Lif (Q\Lif R))$?

<div class="answers">

The main connective is the first '$\Lif$', which was added between $P$ and $(Q\Lif R)$, by clause (3).

</div>

# Parsing

It is useful to have a way of representing the syntactic structure of
sentence. We can do this by using a syntactic tree---a tree that shows how the
sentence was generated from atomic sentences, by successive application of the
clauses of the recursive definition.

For example, we can parse $(P\rightarrow Q)$ as follows:

\begin{tikzpicture} 
   \tikzset{every tree node/.style={align=center,anchor=north}} 
   \Tree [ .$(P\rightarrow Q)$ {$P$} {$Q$} ]
\end{tikzpicture}


## Informal Notation

Parentheses are *really* important! Without them, our symbolic sentences
would be ambiguous. But they can make our sentences cluttered and hard
to read. So we allow ourselves to write sentences in an **informal
notation**, which means we get to leave some of the parentheses out.

But informal notation does not mean anything goes. We have strict rules
concerning when parentheses can be omitted. For now, we only have one
rule:

-   If the symbolic sentence, in official notation, begins with a left
    parenthesis and ends with a right parenthesis, you can omit those
    parentheses.

So, a sentence like $(P\Lif Q)$ can be written as $P\Lif Q$. But you
cannot omit any of the parentheses from a sentence like
$\Lneg(P\Lif Q)$, because it does not begin with a parenthesis---it
begins with a negation sign.

Also, please note that there is no convention or rule---formal or
informal---that lets you *add* parentheses willy-nilly. $(P\Lif Q)$ is a
symbolic sentence; $((P\Lif Q))$ is not.

Is $(P)$ a sentence in official notation, informal notation, or is it not well-formed?

<div class="answers">
$P$ is a sentence letter. So $P$ is a well-formed symbolic sentence in
official notation. But no clause of our definition allows you to add
parentheses around a sentence letter. So '$(P)$' is not a sentence in
official notation.

It is also not a sentence in informal notation: we don't have a rule for
informal notation that allows us write *extra* parentheses around a
sentence in official notation.
</div>

Is $P\Lif \Lneg\Lneg Z$ a sentence in official notation, informal notation, or is it not well-formed?

<div class="answers">
It is in informal notation. $(P\Lif\Lneg\Lneg Z)$ is a well-formed sentence in official notation. Our rule for informal notation allows us
to drop the outermost parentheses.
</div>

$\Lneg (P\Lif Q)$ is a sentence in official notation. Can we drop any of the parentheses, if we want to write it in informal notation?

<div class="answers">
No, we cannot. The sentence does not begin with a parenthesis. It begins with a negation sign. Our rule for dropping parentheses only applies to
sentences that begin and end with parentheses.
</div>


$\Lneg P\Lif Q$ is a sentence in informal notation. How is it written in official notation?

<div class="answers">

In official notation, is it $(\Lneg P\Lif Q)$. Note that the omitted
parentheses surround the entire sentence, including the negation sign at
the beginning.

</div>

Suppose a sentence contains 3 occurrences of $\Lif$, and is written in official notation. How many pairs of parentheses does it contain?

<div class="answers">

It contains 3 pairs of parentheses: every time you join two sentences together to form a conditional by clause (3), you must also add a pair of parentheses around the entire sentence.

</div>






