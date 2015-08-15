---
title: Complex Symbolization (2.3)
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
\newcommand{\BC}{\bigwedge}
\newcommand{\UC}{\lfloor}

# What is This?

This is a supplement to section 2.3 of the Logic Text. You should read
that *before* you read this. Section 2.3 discusses some principles useful for
symbolizing complex sentences involving 'and', 'or', and 'if and only if'.

# Principles and Examples

Each of the following principles is taken verbatim from Chapter 2, Section 3.

## First Principle

> "When any of these expressions occurs between sentences, it gives rise
> to a conjunction, disjunction, or biconditional. The constituents of
> the conjunction, disjunction, or biconditional are symbolizations of
> sentences immediately to the left and to the right of 'and', 'or', or
> 'if and only if'."

Examples:

$$\mbox{It is raining but it is not snowing.}$$

Here 'but' is another way of saying 'and'. It has a sentence, 'it is raining', immediately to its left, and another sentence, 'it is not snowing', immediately to its right. So, applying our principle, we treat these two sentences at the two conjuncts:

$$\fbox{It is raining}\Land\fbox{it is not snowing}$$

And so, symbolizing the two conjucts, we get:

$$R\Land\Lneg S$$

Now consider,

$$\mbox{It is not raining unless it is snowing}$$

Remember that 'unless' is another way of saying 'or'. Here 'unless' is immediately surrounded on both sides by complete sentences, so

$$\fbox{it is not raining}\Lor\fbox{it is snowing}$$

And so,

$$\Lneg R\Lor S$$

What about the sentence

$$\mbox{It is raining or it is snowing and it is not raining}$$

Here we have two connectives, 'or' and 'and'. Is the 'or' immediately surrounded by complete sentences? If so, what are they?

<div class='answers'>

This was a trick question. Applying our principle, we can see that there is only one complete sentence immediately to the left of the 'or':

$$\fbox{It is raining}\mbox{or it is snowing and it is not raining}$$

But to the right, there are two candidates---two complete sentences, each immediately to the right of the 'or':

$$\fbox{It is raining}\mbox{or}\fbox{it is snowing}\ \mbox{and it is not raining}$$
$$\fbox{It is raining}\mbox{or}\fbox{it is snowing and it is not raining}$$

Our principle does not tell us which of these two sentences is the right disjunct. But it does allow us to rule out one candidate:

$$\fbox{It is raining}\mbox{or it is snowing and} \fbox{it is not raining}$$

'it is not raining' is a complete sentence, and it is to the right of the 'or', but it is not *immediately* to its right, and so cannot be the right disjunct.

The same problem arises for the 'and'. What are the possible left conjuncts for 'and', given our principle?

</div>

<div class='answers'>

$$\fbox{It is raining or it is snowing}\ \mbox{and}\fbox{it is not raining}$$
$$\mbox{It is raining or} \fbox{it is snowing}\ \mbox{and}\fbox{it is not raining}$$

As before, one candidate is ruled out:

$$\fbox{It is raining} \mbox{or it is snowing and}\fbox{it is not raining}$$

'It is raining' does not occur *immediately* to the left of the 'and', and so cannot be the left conjunct.

So we are left unable to parse the sentence: it is ambiguous between two readings, one of which takes the 'or' to be the main connective:

$$\fbox{It is raining}\ \mbox{or}\ \fbox{it is snowing and it is not raining}$$

The other takes the 'and' to be the main connective:

$$\fbox{It is raining or it is snowing}\ \mbox{and}\ \fbox{it is not raining}$$

</div>


## Second Principle: Commas

As in Chapter 1, commas indicate the bigger break. You can use commas to disambiguate

$$\mbox{It is raining or it is snowing and it is not raining}$$

How?

<div class='answers'>

If you want the 'or' to be the main connective, put a comma right before it:

$$\mbox{It is raining, or it is snowing and it is not raining}$$
$$\fbox{It is raining}\ \mbox{or}\ \fbox{it is snowing and it is not raining}$$

If you want the 'and' to be the main connective, put the comma right before it:

$$\mbox{It is raining or it is snowing, and it is not raining}$$
$$\fbox{It is raining or it is snowing}\ \mbox{and}\ \fbox{it is not raining}$$

</div>

Here is another ambiguous sentence:

$$\mbox{Roses are red and violets are blue unless colors are an illusion}$$

What are the two readings, and how would you use commas to force one rather than the other?

<div class='answers'>

The two readings are:

$$\fbox{Roses are red}\ \mbox{and}\ \fbox{violets are blue unless colors are an illusion}$$
$$\fbox{Roses are red and violets are blue}\ \mbox{unless}\ \fbox{colors are an illusion}$$

To force the first reading, and make 'and' the main connective, place a comma before the 'and':

$$\mbox{Roses are red, and violets are blue unless colors are an illusion.}$$
$$R\Land(V\Lor U)$$

To force the second reading, and make 'unless' the main connective, place a comma before the 'unless':

$$\mbox{Roses are red and violets are blue, unless colors are an illusion}$$
$$(R\Land V)\Lor U$$

</div>

Here are four more examples. Each is ambiguous. Each can be disambiguated using commas. How?

$$\mbox{Randy runs but Wendy walks if Teresa tumbles.}$$

<div class='answers'>

-    $R\Land(T\Lif W)$: Randy runs, but Wendy walks if Teresa tumbles.
-    $T\Lif(R\Land W)$: Randy runs but Wendy walks, if Teresa tumbles.

</div>

$$\mbox{Randy runs if Wendy walks if Teresa tumbles.}$$

<div class='answers'>

-   $T\Lif(W\Lif R)$: Randy runs, if Wendy walks if Teresa tumbles.
-   $(T\Lif W)\Lif R$: Randy runs if Wendy walks, if Teresa tumbles.

</div>

$$\mbox{Randy runs only if Wendy walks or Teresa tumbles.}$$

<div class="answers">

-  $R\Lif(W\Lor T)$: Randy runs, only if Wendy walks or Teresa tumbles.
-  $(R\Lif W)\Lor T$: Randy runs only if Wendy walks, or Teresa tumbles.

</div>

$$\mbox{Wendy walks unless Randy runs but Teresa doesn't tumble.}$$

<div class='answers'>

-   $W\Lor(R\Land\Lneg T)$: Wendy walks, unless Randy runs but Teresa
    doesn't tumble.
-   $(W\Lor R)\Land\Lneg T$: Wendy walks unless Randy runs, but Teresa
    doesn't tumble.

</div>

## Third Principle: 'Either' and 'Both'

> "When 'either' occurs with 'or', the symbolization of the expression
> enclosed between 'either' and 'or' is a disjunct. Likewise, When
> 'both' occurs with 'and', the symbolization of the expression enclosed
> between 'both' and 'and' is a conjunct."

These complement the corresponding principle for 'if...then': when 'if' occurs with 'then', the symbolization of the expression between the 'if' and the 'then' is an antecedent.

Consider the ambiguous sentence:

$$\mbox{It is raining and it is not snowing or it is snowing.}$$

You can use commas to disambiguate it:

$$\mbox{It is raining, and it is not snowing or it is snowing.}$$
$$\mbox{It is raining and it is not snowing, or it is snowing.}$$

But you can also use 'either' to force the second reading: 

$$\mbox{Either it is raining and it is not snowing or it is snowing.}

Our principle tells us that the sentence that occurs between 'either' and 'or' must be a disjunct:

$$\mbox{Either}\ \fbox{it is raining and it is not snowing}\ \mbox{or it is snowing}$$

So only the second reading, 

$$\mbox{It is raining and it is not snowing, or it is snowing.}$$

is possible. How would you symbolize that?

<div class='answers'>

$$(R\Land\Lneg S)\Lor S$$

</div>

The following sentence is not ambiguous:

$$\mbox{Both penguins are birds or dinosaurs and TRexes are birds}$$

How should it be symbolized?

<div class='answers'>

The sentence between 'both' and 'and' must be a conjunct, so

$$\mbox{Both}\ \fbox{penguins are birds or dinosaurs}\ \mbox{and}\ \fbox{TRexes are birds}$$
$$\fbox{penguins are birds or dinosaurs}\ \Land\ \fbox{TRexes are birds}$$
$$(\fbox{penguins are birds}\ \mbox{or}\ \fbox{penguins are dinosaurs})\ \Land\ \fbox{TRexes are birds}$$
$$(P\Lor R)\Land T$$

</div>

## Fourth Principle: Neither Nor

> "'neither <input class="copyMe P sym slot" type="text"> nor
> <input class="copyMe Q sym slot" type="text">' is equivalent to 'not
> (either <input class="copyMe P sym slot" type="text"> or
> <input class="copyMe Q sym slot" type="text">)'."

It is also equivalent to $\Lneg$ <input class="copyMe P sym slot" type="text"> $\Land\Lneg$ <input class="copyMe Q sym slot" type="text">. Perhaps the easiest 
way to see this is to consider some truth tables:

<div class="tt2sl">

   $\BX$   $\CI$   Neither $\BX$ nor $\CI$   $\BX\Lor\CI$   $\Lneg(\BX\Lor\CI)$   $\Lneg\BX\Land\Lneg\CI$
  ------- ------- ------------------------- -------------- --------------------- -------------------------
     T       T                F                   T                  F                       F
     T       F                F                   T                  F                       F
     F       T                F                   T                  F                       F
     F       F                T                   F                  T                       T

</div>

The 'Neither...nor' column is filled out by considering our intuitions about what it takes for a 'Neither...nor' claim to be true.
Intuitively, its true only when both the component sentences are false, and so only on the fourth row of the table.

The next column over shows the truth table for the disjunction. Note
that it is the exact opposite of the truth table we want for
'Neither...nor'.

The next column, then, shows the truth table for the negation of the disjunction, which matches our intuitive table for 'Neither...nor'.

The last column shows that this is equivalent to the truth table for "both not $\BX$ and not $\CI$."

So, provide two equivalent symbolizations for each of the following sentences.

$$\mbox{Neither dogs nor cats are dinosaurs}$$

<div class='answers'>

Let $P$ stand for 'dogs are dinosaurs' and $Q$ for 'cats are dinosaurs'.

We can symbolize this sentence as the negation of the disjunction:

$$\Lneg(P\Lor Q)$$

or we can symbolize it as the conjunction of two negations:

$$\Lneg P\Land\Lneg Q$$

</div>

$$\mbox{It is neither raining nor snowing.}$$

<div class='answers'>

$$\Lneg(R\Lor S)$$
$$\Lneg R\Land\Lneg S$$

</div>

## Fifth Principle: Complex Subjects and Predicates

> "Sometimes 'and' or 'or' occurs inside a simple sentence, where only
> the subject is conjoined or disjoined, and there is a single
> predicate, or only the predicate is conjoined or disjoined, and there
> is a single subject. If you fill in a copy of the shared part, you
> will get a synonymous sentence that we already know how to symbolize."

For example, in

$$\mbox{Penguins and Quail are birds}$$

the 'and' does not join two complete sentences. Note that to its left, we have just a noun, not a sentence,

$$\fbox{Penguins}\ \mbox{and Quail are birds}$$

What is 'and' doing here? It is joining the two nouns, 'Penguins' and 'Quail', into a single subject. But this sentence is synonymous with

$$\fbox{Penguins are birds}\ \mbox{and}\ \fbox{Quail are birds}$$

And we know how to symbolize this, by our first principle, as

$$P\Land Q$$

The same trick works for 

$$\mbox{Penguins are birds or dinosaurs}$$

Again, the 'or' does not join two complete sentences, because 'dinosaurs' is not a sentence:

$$\mbox{Penguins are birds or}\ \fbox{dinosaurs}$$

But it is synonymous with

$$\fbox{Penguins are birds}\ \mbox{or}\ \fbox{Penguins are dinosaurs}$$

which we can symbolize by the first principle.

For each of the following, find the synonymous sentence and symbolize:

$$\mbox{Penguins or TRexes are birds}$$

<div class='answers'>

$$\fbox{Penguins are birds}\ \mbox{or}\ \fbox{TRexes are birds}$$
$$P\Land T$$

</div>

$$\mbox{Penguins but not TRexes are birds}$$

<div class='answers'>

$$\fbox{Penguins are birds}\ \mbox{but}\ \fbox{TRexes are not birds}$$
$$P\Land\Lneg T$$

</div>

$$\mbox{Penguins are birds but not dinosaurs}$$

<div class='answers'>

$$\fbox{Penguins are birds}\ \mbox{but}\ \fbox{Penguins are not dinosaurs}$$
$$P\Land\Lneg R$$

</div>

$$\mbox{Either penguins and TRexes are birds or penguins are dinosaurs}$$

<div class="answers">

$$\mbox{Either}\ \fbox{penguins and TRexes are birds}\ \mbox{or}\ \fbox{penguins are dinosaurs}$$

The left disjunct is synonymous with:

$$\fbox{Penguins are birds}\ \mbox{and}\ \fbox{TRexes are birds}$$

So the whole sentence is:

$$(P\Land T)\Lor R$$

</div>

## Sixth Principle

> "When connectives occur inside otherwise simple sentences, the
symbolizations of the sentences form a unit."

This is similar to the principle governing 'not': when it occurs inside
a sentence, next to the verb, it negates the smallest sentence it is a
part of.

Consider the ambiguous sentence:

$$\mbox{Bill is an excellent adventurer and Ted is an excellent adventurer unless Ted is lazy.}$$

This sentence is ambiguous. Is it,

$$\fbox{Bill is an excellent adventurer}\mbox{, and}\ \fbox{Ted is an excellent adventurer unless Ted is lazy}$$
$$R\Land(T\Lor Z)$$

or is it,

$$\fbox{Bill is an excellent adventurer and Ted is an excellent adventurer}\mbox{, unless}\ \fbox{Ted is lazy}$$
$$(R\Land T)\Lor Z$$

Commas give us one way to disambiguate. But we can also disambiguate by taking advantage of this sixth principle. Consider:

$$\mbox{Bill and Ted are excellent adventurers unless Ted is lazy}$$

Here 'and' occurs inside a simple sentence, 'Bill and Ted are excellent adventurers'. So, by our principle, this forms a unit:

$$\fbox{Bill and Ted are excellent adventurers}\ \mbox{unless Ted is lazy}$$

That unit is synonymous, by our fifth principle, with

$$\fbox{Bill is an excellent adventurer}\ \mbox{and}\ \fbox{Ted is an excellent adventurer}$$

So the sentence is unambiguously,

$$(R\Land T)\Lor Z$$

How should we symbolize the following:

$$\mbox{Roses and Violets are edible unless all flowers are poisonous}$$

<div class='answers'>

$$\fbox{Roses and Violets are edible}\ \mbox{or}\ \fbox{all flowers are poisonous}$$
$$(R\Land V)\Lor P$$

</div>

25. Krampus but not Santa Claus is evil if the stories are true.

<div class='answers'>

Let $P$ stand for 'Krampus is evil', $S$ for 'Santa Claus is evil', and $T$ stand for 'The stories are true'.

$$\fbox{Krampus but not Santa Claus is evil}\ \mbox{if}\ \fbox{the stories are true}$$

'if' always introduces an antecedent, so this is equivalent to:

$$\fbox{the stories are true}\ \Lif\ \fbox{Krampus but not Santa Claus is evil}$$

which is

$$\fbox{the stories are true}\ \Lif\ \fbox{Krampus is evil but Santa Claus is not evil}$$

and so,

$$\fbox{the stories are true}\ \Lif(\ \fbox{Krampus is evil}\ \Land\ \fbox{Santa Claus is not evil}\ )$$
$$T\Lif(P\Land\Lneg S)$$

</div>


